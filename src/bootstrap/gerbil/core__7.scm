(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 100))
(begin
  (define |gerbil/core$<MOP>$<MOP:2>[1]#_g41167_|
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
      (lambda _$args20330_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info::t|
               _$args20330_)))
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
      (lambda _$args20326_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
               _$args20326_)))
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
      (lambda _$args20322_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#extended-struct-info::t|
               _$args20322_)))
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
      (lambda _$args20318_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
               _$args20318_)))
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
      (lambda _$args20314_
        (apply make-struct-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-exhibitor::t|
               _$args20314_)))
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
      (lambda _$args20310_
        (apply make-struct-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
               _$args20310_)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-slots|
      (make-struct-field-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-slots-set!|
      (make-struct-field-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__%|
      (lambda (_stx20284_ _is?20286_)
        (if (gx#identifier? _stx20284_)
            (let ((_e2028720289_ (gx#syntax-local-value _stx20284_ false)))
              (if _e2028720289_
                  (let ((_e20293_ _e2028720289_))
                    (if (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info?|
                         _e20293_)
                        (_is?20286_ _e20293_)
                        '#f))
                  '#f))
            '#f)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__0|
      (lambda (_stx20300_)
        (let ((_is?20303_ true))
          (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__%|
           _stx20300_
           _is?20303_))))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
      (lambda _g41153_
        (let ((_g41152_ (length _g41153_)))
          (cond ((##fx= _g41152_ 1)
                 (apply |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__0|
                        _g41153_))
                ((##fx= _g41152_ 2)
                 (apply |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__%|
                        _g41153_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                  _g41153_))))))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
      (lambda (_stx20280_)
        (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__%|
         _stx20280_
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info?|)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-class-info?|
      (lambda (_stx20277_)
        (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__%|
         _stx20277_
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info?|)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
      (lambda (_id20271_)
        (if _id20271_
            (let ((_info20274_ (gx#syntax-local-value _id20271_)))
              (if (|gerbil/core$<MOP>$<MOP:2>[1]#extended-runtime-type-info?|
                   _info20274_)
                  (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor|
                   _info20274_)
                  '#f))
            '#f)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::apply-macro-expander|
      (lambda (_self20036_ _stx20038_)
        (let* ((_g2004020060_
                (lambda (_g2004120056_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2004120056_)))
               (_g2003920267_
                (lambda (_g2004120064_)
                  (if (gx#stx-pair? _g2004120064_)
                      (let ((_e2004320067_ (gx#syntax-e _g2004120064_)))
                        (let ((_hd2004420071_ (##car _e2004320067_))
                              (_tl2004520074_ (##cdr _e2004320067_)))
                          (if (gx#stx-pair/null? _tl2004520074_)
                              (let ((_g41154_
                                     (gx#syntax-split-splice
                                      _tl2004520074_
                                      '0)))
                                (begin
                                  (let ((_g41155_
                                         (if (##values? _g41154_)
                                             (##vector-length _g41154_)
                                             1)))
                                    (if (not (##fx= _g41155_ 2))
                                        (error "Context expects 2 values"
                                               _g41155_)))
                                  (let ((_target2004620077_
                                         (##vector-ref _g41154_ 0))
                                        (_tl2004820080_
                                         (##vector-ref _g41154_ 1)))
                                    (if (gx#stx-null? _tl2004820080_)
                                        (letrec ((_loop2004920083_
                                                  (lambda (_hd2004720087_
                                                           _arg2005320090_)
                                                    (if (gx#stx-pair?
                                                         _hd2004720087_)
                                                        (let ((_e2005020093_
                                                               (gx#syntax-e
                                                                _hd2004720087_)))
                                                          (let ((_lp-hd2005120097_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2005020093_))
                        (_lp-tl2005220100_ (##cdr _e2005020093_)))
                    (_loop2004920083_
                     _lp-tl2005220100_
                     (cons _lp-hd2005120097_ _arg2005320090_))))
                (let ((_arg2005420103_ (reverse _arg2005320090_)))
                  ((lambda (_L20107_)
                     (let* ((_g2012320154_
                             (lambda (_g2012420150_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g2012420150_)))
                            (_g2012220263_
                             (lambda (_g2012420158_)
                               (if (gx#stx-pair? _g2012420158_)
                                   (let ((_e2013120161_
                                          (gx#syntax-e _g2012420158_)))
                                     (let ((_hd2013220165_
                                            (##car _e2013120161_))
                                           (_tl2013320168_
                                            (##cdr _e2013120161_)))
                                       (if (gx#stx-pair? _tl2013320168_)
                                           (let ((_e2013420171_
                                                  (gx#syntax-e
                                                   _tl2013320168_)))
                                             (let ((_hd2013520175_
                                                    (##car _e2013420171_))
                                                   (_tl2013620178_
                                                    (##cdr _e2013420171_)))
                                               (if (gx#stx-pair?
                                                    _tl2013620178_)
                                                   (let ((_e2013720181_
                                                          (gx#syntax-e
                                                           _tl2013620178_)))
                                                     (let ((_hd2013820185_
                                                            (##car _e2013720181_))
                                                           (_tl2013920188_
                                                            (##cdr _e2013720181_)))
                                                       (if (gx#stx-pair?
                                                            _tl2013920188_)
                                                           (let ((_e2014020191_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl2013920188_)))
                     (let ((_hd2014120195_ (##car _e2014020191_))
                           (_tl2014220198_ (##cdr _e2014020191_)))
                       (if (gx#stx-pair? _tl2014220198_)
                           (let ((_e2014320201_ (gx#syntax-e _tl2014220198_)))
                             (let ((_hd2014420205_ (##car _e2014320201_))
                                   (_tl2014520208_ (##cdr _e2014320201_)))
                               (if (gx#stx-pair? _tl2014520208_)
                                   (let ((_e2014620211_
                                          (gx#syntax-e _tl2014520208_)))
                                     (let ((_hd2014720215_
                                            (##car _e2014620211_))
                                           (_tl2014820218_
                                            (##cdr _e2014620211_)))
                                       (if (gx#stx-null? _tl2014820218_)
                                           ((lambda (_L20221_
                                                     _L20223_
                                                     _L20224_
                                                     _L20225_
                                                     _L20226_
                                                     _L20227_)
                                              (let ()
                                                (cons _L20225_
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g2025420257_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2025520260_)
                         (cons _g2025420257_ _g2025520260_))
                       '()
                       _L20107_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _hd2014720215_
                                            _hd2014420205_
                                            _hd2014120195_
                                            _hd2013820185_
                                            _hd2013520175_
                                            _hd2013220165_)
                                           (_g2012320154_ _g2012420158_))))
                                   (_g2012320154_ _g2012420158_))))
                           (_g2012320154_ _g2012420158_))))
                   (_g2012320154_ _g2012420158_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2012320154_
                                                    _g2012420158_))))
                                           (_g2012320154_ _g2012420158_))))
                                   (_g2012320154_ _g2012420158_)))))
                       (_g2012220263_
                        (|gerbil/core$<MOP>$<MOP:2>[1]#expander-type-identifiers|
                         _self20036_))))
                   _arg2005420103_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop2004920083_
                                           _target2004620077_
                                           '()))
                                        (_g2004020060_ _g2004120064_)))))
                              (_g2004020060_ _g2004120064_))))
                      (_g2004020060_ _g2004120064_)))))
          (_g2003920267_ _stx20038_))))
    (bind-method!
     |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|
     'apply-macro-expander
     |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::apply-macro-expander|)
    (define |gerbil/core$<MOP>$<MOP:2>[1]#typedef-body?|
      (lambda (_stx20027_)
        (letrec ((_body-opt?20030_
                  (lambda (_key20033_)
                    (memq (gx#stx-e _key20033_)
                          '(id:
                            name:
                            constructor:
                            transparent:
                            final:
                            plist:
                            unchecked:
                            print:
                            equal:)))))
          (gx#stx-plist? _stx20027_ _body-opt?20030_))))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
      (lambda (_stx18855_
               _id18857_
               _super-ref18858_
               _els18859_
               _body18860_
               _struct?18861_)
        (letrec* ((_wrap18863_
                   (lambda (_e-stx20024_)
                     (gx#stx-wrap-source
                      _e-stx20024_
                      (gx#stx-source _stx18855_))))
                  (_make-id18865_
                   (if (uninterned-symbol? (gx#stx-e _id18857_))
                       (lambda _g41156_ (gx#genident _id18857_))
                       (lambda _args20021_
                         (apply gx#stx-identifier _id18857_ _args20021_)))))
          (begin
            (gx#check-duplicate-identifiers _els18859_ _stx18855_)
            (let* ((_name18867_ (symbol->string (gx#stx-e _id18857_)))
                   (_super18870_
                    (if _struct?18861_
                        (if _super-ref18858_
                            (gx#syntax-local-value _super-ref18858_)
                            '#f)
                        (map gx#syntax-local-value _super-ref18858_)))
                   (_g1887318881_
                    (lambda (_g1887418877_)
                      (gx#raise-syntax-error '#f '"Bad syntax" _g1887418877_)))
                   (_g1887220015_
                    (lambda (_g1887418885_)
                      ((lambda (_L18888_)
                         (let ()
                           (let* ((_g1890418912_
                                   (lambda (_g1890518908_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1890518908_)))
                                  (_g1890320011_
                                   (lambda (_g1890518916_)
                                     ((lambda (_L18919_)
                                        (let ()
                                          (let* ((_g1893218940_
                                                  (lambda (_g1893318936_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1893318936_)))
                                                 (_g1893120007_
                                                  (lambda (_g1893318944_)
                                                    ((lambda (_L18947_)
                                                       (let ()
                                                         (let* ((_g1896018968_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1896118964_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1896118964_)))
                        (_g1895920003_
                         (lambda (_g1896118972_)
                           ((lambda (_L18975_)
                              (let ()
                                (let* ((_g1898818996_
                                        (lambda (_g1898918992_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g1898918992_)))
                                       (_g1898719999_
                                        (lambda (_g1898919000_)
                                          ((lambda (_L19003_)
                                             (let ()
                                               (let* ((_g1901619024_
                                                       (lambda (_g1901719020_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1901719020_)))
                                                      (_g1901519995_
                                                       (lambda (_g1901719028_)
                                                         ((lambda (_L19031_)
                                                            (let ()
                                                              (let* ((_g1904419061_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g1904519057_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1904519057_)))
                             (_g1904319991_
                              (lambda (_g1904519065_)
                                (if (gx#stx-pair/null? _g1904519065_)
                                    (let ((_g41157_
                                           (gx#syntax-split-splice
                                            _g1904519065_
                                            '0)))
                                      (begin
                                        (let ((_g41158_
                                               (if (##values? _g41157_)
                                                   (##vector-length _g41157_)
                                                   1)))
                                          (if (not (##fx= _g41158_ 2))
                                              (error "Context expects 2 values"
                                                     _g41158_)))
                                        (let ((_target1904719068_
                                               (##vector-ref _g41157_ 0))
                                              (_tl1904919071_
                                               (##vector-ref _g41157_ 1)))
                                          (if (gx#stx-null? _tl1904919071_)
                                              (letrec ((_loop1905019074_
                                                        (lambda (_hd1904819078_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _attr1905419081_)
                  (if (gx#stx-pair? _hd1904819078_)
                      (let ((_e1905119084_ (gx#syntax-e _hd1904819078_)))
                        (let ((_lp-hd1905219088_ (##car _e1905119084_))
                              (_lp-tl1905319091_ (##cdr _e1905119084_)))
                          (_loop1905019074_
                           _lp-tl1905319091_
                           (cons _lp-hd1905219088_ _attr1905419081_))))
                      (let ((_attr1905519094_ (reverse _attr1905419081_)))
                        ((lambda (_L19098_)
                           (let ()
                             (let* ((_g1911519132_
                                     (lambda (_g1911619128_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1911619128_)))
                                    (_g1911419982_
                                     (lambda (_g1911619136_)
                                       (if (gx#stx-pair/null? _g1911619136_)
                                           (let ((_g41159_
                                                  (gx#syntax-split-splice
                                                   _g1911619136_
                                                   '0)))
                                             (begin
                                               (let ((_g41160_
                                                      (if (##values? _g41159_)
                                                          (##vector-length
                                                           _g41159_)
                                                          1)))
                                                 (if (not (##fx= _g41160_ 2))
                                                     (error "Context expects 2 values"
                                                            _g41160_)))
                                               (let ((_target1911819139_
                                                      (##vector-ref
                                                       _g41159_
                                                       0))
                                                     (_tl1912019142_
                                                      (##vector-ref
                                                       _g41159_
                                                       1)))
                                                 (if (gx#stx-null?
                                                      _tl1912019142_)
                                                     (letrec ((_loop1912119145_
                                                               (lambda (_hd1911919149_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _getf1912519152_)
                         (if (gx#stx-pair? _hd1911919149_)
                             (let ((_e1912219155_
                                    (gx#syntax-e _hd1911919149_)))
                               (let ((_lp-hd1912319159_ (##car _e1912219155_))
                                     (_lp-tl1912419162_ (##cdr _e1912219155_)))
                                 (_loop1912119145_
                                  _lp-tl1912419162_
                                  (cons _lp-hd1912319159_ _getf1912519152_))))
                             (let ((_getf1912619165_
                                    (reverse _getf1912519152_)))
                               ((lambda (_L19169_)
                                  (let ()
                                    (let* ((_g1918619203_
                                            (lambda (_g1918719199_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g1918719199_)))
                                           (_g1918519973_
                                            (lambda (_g1918719207_)
                                              (if (gx#stx-pair/null?
                                                   _g1918719207_)
                                                  (let ((_g41161_
                                                         (gx#syntax-split-splice
                                                          _g1918719207_
                                                          '0)))
                                                    (begin
                                                      (let ((_g41162_
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g41161_)
                         (##vector-length _g41161_)
                         1)))
                (if (not (##fx= _g41162_ 2))
                    (error "Context expects 2 values" _g41162_)))
              (let ((_target1918919210_ (##vector-ref _g41161_ 0))
                    (_tl1919119213_ (##vector-ref _g41161_ 1)))
                (if (gx#stx-null? _tl1919119213_)
                    (letrec ((_loop1919219216_
                              (lambda (_hd1919019220_ _setf1919619223_)
                                (if (gx#stx-pair? _hd1919019220_)
                                    (let ((_e1919319226_
                                           (gx#syntax-e _hd1919019220_)))
                                      (let ((_lp-hd1919419230_
                                             (##car _e1919319226_))
                                            (_lp-tl1919519233_
                                             (##cdr _e1919319226_)))
                                        (_loop1919219216_
                                         _lp-tl1919519233_
                                         (cons _lp-hd1919419230_
                                               _setf1919619223_))))
                                    (let ((_setf1919719236_
                                           (reverse _setf1919619223_)))
                                      ((lambda (_L19240_)
                                         (let ()
                                           (let* ((_type-attr19285_
                                                   (if (gx#stx-null?
                                                        _els18859_)
                                                       '()
                                                       (if _struct?18861_
                                                           (cons 'fields:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (begin
                                 (gx#syntax-check-splice-targets
                                  _L19240_
                                  _L19169_
                                  _L19098_)
                                 (foldr (lambda (_g1925619261_
                                                 _g1925719264_
                                                 _g1925819266_
                                                 _g1925919268_)
                                          (cons (cons _g1925819266_
                                                      (cons _g1925719264_
                                                            (cons _g1925619261_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1925919268_))
                                        '()
                                        _L19240_
                                        _L19169_
                                        _L19098_))
                               '()))
                   (cons 'slots:
                         (cons (begin
                                 (gx#syntax-check-splice-targets
                                  _L19240_
                                  _L19169_
                                  _L19098_)
                                 (foldr (lambda (_g1927019275_
                                                 _g1927119278_
                                                 _g1927219280_
                                                 _g1927319282_)
                                          (cons (cons _g1927219280_
                                                      (cons _g1927119278_
                                                            (cons _g1927019275_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1927319282_))
                                        '()
                                        _L19240_
                                        _L19169_
                                        _L19098_))
                               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_type-name19292_
                                                   (cons 'name:
                                                         (cons (let ((_$e19288_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-getq 'name: _body18860_)))
                         (if _$e19288_ _$e19288_ _id18857_))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_type-id19307_
                                                   (let ((_$e19303_
                                                          (let ((_e1929419296_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-getq 'id: _body18860_)))
                    (if _e1929419296_
                        (let ((_e19300_ _e1929419296_))
                          (cons 'id: (cons _e19300_ '())))
                        '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e19303_
                                                         _$e19303_
                                                         '())))
                                                  (_type-ctor19322_
                                                   (let ((_$e19318_
                                                          (let ((_e1930919311_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-getq 'constructor: _body18860_)))
                    (if _e1930919311_
                        (let ((_e19315_ _e1930919311_))
                          (cons 'constructor: (cons _e19315_ '())))
                        '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e19318_
                                                         _$e19318_
                                                         '())))
                                                  (_plist19366_
                                                   (let* ((_plist19329_
                                                           (let ((_$e19325_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-getq 'plist: _body18860_)))
                     (if _$e19325_ _$e19325_ '())))
                  (_plist19332_
                   (if (gx#stx-e (gx#stx-getq 'transparent: _body18860_))
                       (cons (cons 'transparent: '#t) _plist19329_)
                       _plist19329_))
                  (_plist19335_
                   (if (gx#stx-e (gx#stx-getq 'final: _body18860_))
                       (cons (cons 'final: '#t) _plist19332_)
                       _plist19332_))
                  (_plist19348_
                   (let ((_$e19338_
                          (gx#stx-e (gx#stx-getq 'print: _body18860_))))
                     (if _$e19338_
                         ((lambda (_print19342_)
                            (let ((_print19345_
                                   (if (eq? _print19342_ '#t)
                                       _els18859_
                                       _print19342_)))
                              (cons (cons 'print: _print19345_) _plist19335_)))
                          _$e19338_)
                         _plist19335_)))
                  (_plist19361_
                   (let ((_$e19351_
                          (gx#stx-e (gx#stx-getq 'equal: _body18860_))))
                     (if _$e19351_
                         ((lambda (_equal19355_)
                            (let ((_equal19358_
                                   (if (eq? _equal19355_ '#t)
                                       _els18859_
                                       _equal19355_)))
                              (cons (cons 'equal: _equal19358_) _plist19348_)))
                          _$e19351_)
                         _plist19348_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _plist19361_))
                                                  (_type-plist19406_
                                                   (if (null? _plist19366_)
                                                       _plist19366_
                                                       (let* ((_g1936919377_
                                                               (lambda (_g1937019373_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1937019373_)))
                      (_g1936819402_
                       (lambda (_g1937019381_)
                         ((lambda (_L19384_)
                            (let ()
                              (cons 'plist:
                                    (cons (cons (gx#datum->syntax '#f 'quote)
                                                (cons _L19384_ '()))
                                          '()))))
                          _g1937019381_))))
                 (_g1936819402_ _plist19366_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_type-unchecked19421_
                                                   (let ((_$e19417_
                                                          (let ((_e1940819410_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-getq 'unchecked: _body18860_)))
                    (if _e1940819410_
                        (let ((_e19414_ _e1940819410_))
                          (cons 'unchecked: (cons _e19414_ '())))
                        '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e19417_
                                                         _$e19417_
                                                         '())))
                                                  (_g1942419441_
                                                   (lambda (_g1942519437_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1942519437_)))
                                                  (_g1942319969_
                                                   (lambda (_g1942519445_)
                                                     (if (gx#stx-pair/null?
                                                          _g1942519445_)
                                                         (let ((_g41163_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1942519445_
                         '0)))
                   (begin
                     (let ((_g41164_
                            (if (##values? _g41163_)
                                (##vector-length _g41163_)
                                1)))
                       (if (not (##fx= _g41164_ 2))
                           (error "Context expects 2 values" _g41164_)))
                     (let ((_target1942719448_ (##vector-ref _g41163_ 0))
                           (_tl1942919451_ (##vector-ref _g41163_ 1)))
                       (if (gx#stx-null? _tl1942919451_)
                           (letrec ((_loop1943019454_
                                     (lambda (_hd1942819458_
                                              _type-body1943419461_)
                                       (if (gx#stx-pair? _hd1942819458_)
                                           (let ((_e1943119464_
                                                  (gx#syntax-e
                                                   _hd1942819458_)))
                                             (let ((_lp-hd1943219468_
                                                    (##car _e1943119464_))
                                                   (_lp-tl1943319471_
                                                    (##cdr _e1943119464_)))
                                               (_loop1943019454_
                                                _lp-tl1943319471_
                                                (cons _lp-hd1943219468_
                                                      _type-body1943419461_))))
                                           (let ((_type-body1943519474_
                                                  (reverse _type-body1943419461_)))
                                             ((lambda (_L19478_)
                                                (let ()
                                                  (let* ((_g1949519503_
                                                          (lambda (_g1949619499_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g1949619499_)))
                                                         (_g1949419957_
                                                          (lambda (_g1949619507_)
                                                            ((lambda (_L19510_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let* ((_g1952319531_
                                 (lambda (_g1952419527_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1952419527_)))
                                (_g1952219953_
                                 (lambda (_g1952419535_)
                                   ((lambda (_L19538_)
                                      (let ()
                                        (let* ((_g1955119559_
                                                (lambda (_g1955219555_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1955219555_)))
                                               (_g1955019867_
                                                (lambda (_g1955219563_)
                                                  ((lambda (_L19566_)
                                                     (let ()
                                                       (let* ((_g1957919587_
                                                               (lambda (_g1958019583_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1958019583_)))
                      (_g1957819863_
                       (lambda (_g1958019591_)
                         ((lambda (_L19594_)
                            (let ()
                              (let* ((_g1960719615_
                                      (lambda (_g1960819611_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1960819611_)))
                                     (_g1960619859_
                                      (lambda (_g1960819619_)
                                        ((lambda (_L19622_)
                                           (let ()
                                             (let* ((_g1963519643_
                                                     (lambda (_g1963619639_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1963619639_)))
                                                    (_g1963419817_
                                                     (lambda (_g1963619647_)
                                                       ((lambda (_L19650_)
                                                          (let ()
                                                            (let* ((_g1966319671_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g1966419667_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1966419667_)))
                           (_g1966219813_
                            (lambda (_g1966419675_)
                              ((lambda (_L19678_)
                                 (let ()
                                   (let* ((_g1969119699_
                                           (lambda (_g1969219695_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1969219695_)))
                                          (_g1969019809_
                                           (lambda (_g1969219703_)
                                             ((lambda (_L19706_)
                                                (let ()
                                                  (let* ((_g1971919727_
                                                          (lambda (_g1972019723_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g1972019723_)))
                                                         (_g1971819805_
                                                          (lambda (_g1972019731_)
                                                            ((lambda (_L19734_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let* ((_g1974719755_
                                 (lambda (_g1974819751_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1974819751_)))
                                (_g1974619777_
                                 (lambda (_g1974819759_)
                                   ((lambda (_L19762_)
                                      (let ()
                                        (let ()
                                          (_wrap18863_
                                           (cons (gx#datum->syntax '#f 'begin)
                                                 (cons _L19510_
                                                       (cons _L19762_
                                                             '())))))))
                                    _g1974819759_))))
                           (_g1974619777_
                            (_wrap18863_
                             (cons (gx#datum->syntax '#f 'defsyntax)
                                   (cons _L18919_
                                         (cons (cons _L19538_
                                                     (cons 'runtime-identifier:
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _L18947_ '()))
                         (cons 'expander-identifiers:
                               (cons (cons (gx#datum->syntax '#f '@list)
                                           (cons _L19566_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote-syntax)
                                                             (cons _L18947_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                           (cons _L18975_ '()))
                     (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                 (cons _L19003_ '()))
                           (cons (cons (gx#datum->syntax '#f '@list)
                                       (begin
                                         '#!void
                                         (foldr (lambda (_g1978019787_
                                                         _g1978119790_)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote-syntax)
                                                              (cons _g1978019787_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _g1978119790_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()
                                                _L19169_)))
                                 (cons (cons (gx#datum->syntax '#f '@list)
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g1978219793_
                                                               _g1978319796_)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote-syntax)
                            (cons _g1978219793_ '()))
                      _g1978319796_))
              '()
              _L19240_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons 'type-exhibitor:
                                           (cons (cons _L19594_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'quote)
                           (cons _L19622_ '()))
                     (cons _L19650_
                           (cons (cons (gx#datum->syntax '#f 'quote)
                                       (cons _L19678_ '()))
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _L19706_ '()))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _L19734_ '()))
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'quote)
                                                         (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#!void
                         (foldr (lambda (_g1978419799_ _g1978519802_)
                                  (cons _g1978419799_ _g1978519802_))
                                '()
                                _L19098_))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))))
                     _g1972019731_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1971819805_
                                                     _plist19366_))))
                                              _g1969219703_))))
                                     (_g1969019809_
                                      (if (not (null? _type-ctor19322_))
                                          (cadr _type-ctor19322_)
                                          '#f)))))
                               _g1966419675_))))
                      (_g1966219813_ (cadr _type-name19292_)))))
                _g1963619647_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1963419817_
                                                (let ((_quote-e19856_
                                                       (lambda (_x-ref19821_)
                                                         (if _x-ref19821_
                                                             (let* ((_g1982419832_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1982519828_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1982519828_)))
                            (_g1982319852_
                             (lambda (_g1982519836_)
                               ((lambda (_L19839_)
                                  (let ()
                                    (cons (gx#datum->syntax '#f 'quote-syntax)
                                          (cons _L19839_ '()))))
                                _g1982519836_))))
                       (_g1982319852_ _x-ref19821_))
                     '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if _struct?18861_
                                                      (_quote-e19856_
                                                       _super-ref18858_)
                                                      (cons 'list
                                                            (map _quote-e19856_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _super-ref18858_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _g1960819619_))))
                                (_g1960619859_
                                 (if (not (null? _type-id19307_))
                                     (cadr _type-id19307_)
                                     '#f)))))
                          _g1958019591_))))
                 (_g1957819863_
                  (if _struct?18861_
                      (gx#datum->syntax '#f 'make-runtime-struct-exhibitor)
                      (gx#datum->syntax '#f 'make-runtime-class-exhibitor))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g1955219563_))))
                                          (_g1955019867_
                                           (if _struct?18861_
                                               (if _super18870_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'quote-syntax)
                                                         (cons _L19031_ '()))
                                                   '#f)
                                               (let* ((_g1987119888_
                                                       (lambda (_g1987219884_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1987219884_)))
                                                      (_g1987019949_
                                                       (lambda (_g1987219892_)
                                                         (if (gx#stx-pair/null?
                                                              _g1987219892_)
                                                             (let ((_g41165_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _g1987219892_ '0)))
                       (begin
                         (let ((_g41166_
                                (if (##values? _g41165_)
                                    (##vector-length _g41165_)
                                    1)))
                           (if (not (##fx= _g41166_ 2))
                               (error "Context expects 2 values" _g41166_)))
                         (let ((_target1987419895_ (##vector-ref _g41165_ 0))
                               (_tl1987619898_ (##vector-ref _g41165_ 1)))
                           (if (gx#stx-null? _tl1987619898_)
                               (letrec ((_loop1987719901_
                                         (lambda (_hd1987519905_
                                                  _super-id1988119908_)
                                           (if (gx#stx-pair? _hd1987519905_)
                                               (let ((_e1987819911_
                                                      (gx#syntax-e
                                                       _hd1987519905_)))
                                                 (let ((_lp-hd1987919915_
                                                        (##car _e1987819911_))
                                                       (_lp-tl1988019918_
                                                        (##cdr _e1987819911_)))
                                                   (_loop1987719901_
                                                    _lp-tl1988019918_
                                                    (cons _lp-hd1987919915_
                                                          _super-id1988119908_))))
                                               (let ((_super-id1988219921_
                                                      (reverse _super-id1988119908_)))
                                                 ((lambda (_L19925_)
                                                    (let ()
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             '@list)
                                                            (begin
                                                              '#!void
                                                              (foldr (lambda (_g1994019943_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g1994119946_)
                               (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                           (cons _g1994019943_ '()))
                                     _g1994119946_))
                             '()
                             _L19925_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _super-id1988219921_))))))
                                 (_loop1987719901_ _target1987419895_ '()))
                               (_g1987119888_ _g1987219892_)))))
                     (_g1987119888_ _g1987219892_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1987019949_ _L19031_)))))))
                                    _g1952419535_))))
                           (_g1952219953_
                            (if _struct?18861_
                                (gx#datum->syntax
                                 '#f
                                 'make-extended-struct-info)
                                (gx#datum->syntax
                                 '#f
                                 'make-extended-class-info))))))
                     _g1949619507_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1949419957_
                                                     (_wrap18863_
                                                      (cons _L18888_
                                                            (cons _L18947_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L19031_
                                (cons _L18975_
                                      (cons _L19003_
                                            (begin
                                              '#!void
                                              (foldr (lambda (_g1996019963_
                                                              _g1996119966_)
                                                       (cons _g1996019963_
                                                             _g1996119966_))
                                                     '()
                                                     _L19478_))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _type-body1943519474_))))))
                             (_loop1943019454_ _target1942719448_ '()))
                           (_g1942419441_ _g1942519445_)))))
                 (_g1942419441_ _g1942519445_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1942319969_
                                              (foldr cons
                                                     (foldr cons
                                                            (foldr cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (foldr cons
                                  (foldr cons
                                         _type-unchecked19421_
                                         _type-plist19406_)
                                  _type-ctor19322_)
                           _type-name19292_)
                    _type-id19307_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _type-attr19285_)))))
                                       _setf1919719236_))))))
                      (_loop1919219216_ _target1918919210_ '()))
                    (_g1918619203_ _g1918719207_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1918619203_
                                                   _g1918719207_)))))
                                      (_g1918519973_
                                       (gx#stx-map
                                        (lambda (_g1997619978_)
                                          (_make-id18865_
                                           _name18867_
                                           '"-"
                                           _g1997619978_
                                           '"-set!"))
                                        _els18859_)))))
                                _getf1912619165_))))))
               (_loop1912119145_ _target1911819139_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1911519132_
                                                      _g1911619136_)))))
                                           (_g1911519132_ _g1911619136_)))))
                               (_g1911419982_
                                (gx#stx-map
                                 (lambda (_g1998519987_)
                                   (_make-id18865_
                                    _name18867_
                                    '"-"
                                    _g1998519987_))
                                 _els18859_)))))
                         _attr1905519094_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop1905019074_
                                                 _target1904719068_
                                                 '()))
                                              (_g1904419061_ _g1904519065_)))))
                                    (_g1904419061_ _g1904519065_)))))
                        (_g1904319991_ _els18859_))))
                  _g1901719028_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1901519995_
                                                  (if _struct?18861_
                                                      (if _super18870_
                                                          (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                                           _super18870_)
                                                          '#f)
                                                      (map |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                                           _super18870_))))))
                                           _g1898919000_))))
                                  (_g1898719999_
                                   (_make-id18865_ _name18867_ '"?")))))
                            _g1896118972_))))
                   (_g1895920003_ (_make-id18865_ '"make-" _name18867_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1893318944_))))
                                            (_g1893120007_
                                             (_make-id18865_
                                              _name18867_
                                              '"::t")))))
                                      _g1890518916_))))
                             (_g1890320011_ _id18857_))))
                       _g1887418885_))))
              (_g1887220015_
               (if _struct?18861_
                   (gx#datum->syntax '#f 'defstruct-type)
                   (gx#datum->syntax '#f 'defclass-type))))))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#defstruct|
      (lambda (_stx20343_)
        (letrec ((_generate20346_
                  (lambda (_hd20430_ _fields20432_ _body20433_)
                    (let* ((___stx3809638097_ _hd20430_)
                           (_g2043620451_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3809638097_))))
                      (let ((___kont3809938100_
                             (lambda (_L20489_ _L20491_)
                               (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                _stx20343_
                                _L20491_
                                _L20489_
                                _fields20432_
                                _body20433_
                                '#t)))
                            (___kont3810138102_
                             (lambda ()
                               (if (gx#identifier? _hd20430_)
                                   (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                    _stx20343_
                                    _hd20430_
                                    '#f
                                    _fields20432_
                                    _body20433_
                                    '#t)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _stx20343_
                                    _hd20430_)))))
                        (let ((___match3811738118_
                               (lambda (_e2044020469_
                                        _hd2044120473_
                                        _tl2044220476_
                                        _e2044320479_
                                        _hd2044420483_
                                        _tl2044520486_)
                                 (let ((_L20489_ _hd2044420483_)
                                       (_L20491_ _hd2044120473_))
                                   (if (if (gx#identifier? _L20491_)
                                           (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
                                            _L20489_)
                                           '#f)
                                       (___kont3809938100_ _L20489_ _L20491_)
                                       (___kont3810138102_))))))
                          (if (gx#stx-pair? ___stx3809638097_)
                              (let ((_e2044020469_
                                     (gx#syntax-e ___stx3809638097_)))
                                (let ((_tl2044220476_ (##cdr _e2044020469_))
                                      (_hd2044120473_ (##car _e2044020469_)))
                                  (if (gx#stx-pair? _tl2044220476_)
                                      (let ((_e2044320479_
                                             (gx#syntax-e _tl2044220476_)))
                                        (let ((_tl2044520486_
                                               (##cdr _e2044320479_))
                                              (_hd2044420483_
                                               (##car _e2044320479_)))
                                          (if (gx#stx-null? _tl2044520486_)
                                              (___match3811738118_
                                               _e2044020469_
                                               _hd2044120473_
                                               _tl2044220476_
                                               _e2044320479_
                                               _hd2044420483_
                                               _tl2044520486_)
                                              (___kont3810138102_))))
                                      (___kont3810138102_))))
                              (___kont3810138102_))))))))
          (let* ((_g2034920368_
                  (lambda (_g2035020364_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2035020364_)))
                 (_g2034820426_
                  (lambda (_g2035020372_)
                    (if (gx#stx-pair? _g2035020372_)
                        (let ((_e2035420375_ (gx#syntax-e _g2035020372_)))
                          (let ((_hd2035520379_ (##car _e2035420375_))
                                (_tl2035620382_ (##cdr _e2035420375_)))
                            (if (gx#stx-pair? _tl2035620382_)
                                (let ((_e2035720385_
                                       (gx#syntax-e _tl2035620382_)))
                                  (let ((_hd2035820389_ (##car _e2035720385_))
                                        (_tl2035920392_ (##cdr _e2035720385_)))
                                    (if (gx#stx-pair? _tl2035920392_)
                                        (let ((_e2036020395_
                                               (gx#syntax-e _tl2035920392_)))
                                          (let ((_hd2036120399_
                                                 (##car _e2036020395_))
                                                (_tl2036220402_
                                                 (##cdr _e2036020395_)))
                                            ((lambda (_L20405_
                                                      _L20407_
                                                      _L20408_)
                                               (if (if (gx#identifier-list?
                                                        _L20407_)
                                                       (|gerbil/core$<MOP>$<MOP:2>[1]#typedef-body?|
                                                        _L20405_)
                                                       '#f)
                                                   (_generate20346_
                                                    _L20408_
                                                    _L20407_
                                                    _L20405_)
                                                   (_g2034920368_
                                                    _g2035020372_)))
                                             _tl2036220402_
                                             _hd2036120399_
                                             _hd2035820389_)))
                                        (_g2034920368_ _g2035020372_))))
                                (_g2034920368_ _g2035020372_))))
                        (_g2034920368_ _g2035020372_)))))
            (_g2034820426_ _stx20343_)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#defclass|
      (lambda (_stx20510_)
        (letrec ((_generate20513_
                  (lambda (_hd20597_ _slots20599_ _body20600_)
                    (let* ((___stx3812038121_ _hd20597_)
                           (_g2060320615_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3812038121_))))
                      (let ((___kont3812338124_
                             (lambda (_L20643_ _L20645_)
                               (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                _stx20510_
                                _L20645_
                                (gx#syntax->list _L20643_)
                                _slots20599_
                                _body20600_
                                '#f)))
                            (___kont3812538126_
                             (lambda ()
                               (if (gx#identifier? _hd20597_)
                                   (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                    _stx20510_
                                    _hd20597_
                                    '()
                                    _slots20599_
                                    _body20600_
                                    '#f)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _stx20510_
                                    _hd20597_)))))
                        (let ((___match3813338134_
                               (lambda (_e2060720633_
                                        _hd2060820637_
                                        _tl2060920640_)
                                 (let ((_L20643_ _tl2060920640_)
                                       (_L20645_ _hd2060820637_))
                                   (if (if (gx#stx-list? _L20643_)
                                           (gx#stx-andmap
                                            |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                                            _L20643_)
                                           '#f)
                                       (___kont3812338124_ _L20643_ _L20645_)
                                       (___kont3812538126_))))))
                          (if (gx#stx-pair? ___stx3812038121_)
                              (let ((_e2060720633_
                                     (gx#syntax-e ___stx3812038121_)))
                                (let ((_tl2060920640_ (##cdr _e2060720633_))
                                      (_hd2060820637_ (##car _e2060720633_)))
                                  (___match3813338134_
                                   _e2060720633_
                                   _hd2060820637_
                                   _tl2060920640_)))
                              (___kont3812538126_))))))))
          (let* ((_g2051620535_
                  (lambda (_g2051720531_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2051720531_)))
                 (_g2051520593_
                  (lambda (_g2051720539_)
                    (if (gx#stx-pair? _g2051720539_)
                        (let ((_e2052120542_ (gx#syntax-e _g2051720539_)))
                          (let ((_hd2052220546_ (##car _e2052120542_))
                                (_tl2052320549_ (##cdr _e2052120542_)))
                            (if (gx#stx-pair? _tl2052320549_)
                                (let ((_e2052420552_
                                       (gx#syntax-e _tl2052320549_)))
                                  (let ((_hd2052520556_ (##car _e2052420552_))
                                        (_tl2052620559_ (##cdr _e2052420552_)))
                                    (if (gx#stx-pair? _tl2052620559_)
                                        (let ((_e2052720562_
                                               (gx#syntax-e _tl2052620559_)))
                                          (let ((_hd2052820566_
                                                 (##car _e2052720562_))
                                                (_tl2052920569_
                                                 (##cdr _e2052720562_)))
                                            ((lambda (_L20572_
                                                      _L20574_
                                                      _L20575_)
                                               (if (if (gx#identifier-list?
                                                        _L20574_)
                                                       (|gerbil/core$<MOP>$<MOP:2>[1]#typedef-body?|
                                                        _L20572_)
                                                       '#f)
                                                   (_generate20513_
                                                    _L20575_
                                                    _L20574_
                                                    _L20572_)
                                                   (_g2051620535_
                                                    _g2051720539_)))
                                             _tl2052920569_
                                             _hd2052820566_
                                             _hd2052520556_)))
                                        (_g2051620535_ _g2051720539_))))
                                (_g2051620535_ _g2051720539_))))
                        (_g2051620535_ _g2051720539_)))))
            (_g2051520593_ _stx20510_)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#defmethod|
      (lambda (_stx20662_)
        (letrec ((_wrap20665_
                  (lambda (_e-stx21002_)
                    (gx#stx-wrap-source
                     _e-stx21002_
                     (gx#stx-source _stx20662_))))
                 (_method-opt?20667_
                  (lambda (_x20999_) (memq (gx#stx-e _x20999_) '(rebind:)))))
          (let* ((_g2066920698_
                  (lambda (_g2067020694_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2067020694_)))
                 (_g2066820995_
                  (lambda (_g2067020702_)
                    (if (gx#stx-pair? _g2067020702_)
                        (let ((_e2067520705_ (gx#syntax-e _g2067020702_)))
                          (let ((_hd2067620709_ (##car _e2067520705_))
                                (_tl2067720712_ (##cdr _e2067520705_)))
                            (if (gx#stx-pair? _tl2067720712_)
                                (let ((_e2067820715_
                                       (gx#syntax-e _tl2067720712_)))
                                  (let ((_hd2067920719_ (##car _e2067820715_))
                                        (_tl2068020722_ (##cdr _e2067820715_)))
                                    (if (gx#stx-pair? _hd2067920719_)
                                        (let ((_e2068120725_
                                               (gx#syntax-e _hd2067920719_)))
                                          (let ((_hd2068220729_
                                                 (##car _e2068120725_))
                                                (_tl2068320732_
                                                 (##cdr _e2068120725_)))
                                            (if (gx#identifier? _hd2068220729_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core$<MOP>$<MOP:2>[1]#_g41167_|
                                                     _hd2068220729_)
                                                    (if (gx#stx-pair?
                                                         _tl2068320732_)
                                                        (let ((_e2068420735_
                                                               (gx#syntax-e
                                                                _tl2068320732_)))
                                                          (let ((_hd2068520739_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2068420735_))
                        (_tl2068620742_ (##cdr _e2068420735_)))
                    (if (gx#stx-pair? _tl2068620742_)
                        (let ((_e2068720745_ (gx#syntax-e _tl2068620742_)))
                          (let ((_hd2068820749_ (##car _e2068720745_))
                                (_tl2068920752_ (##cdr _e2068720745_)))
                            (if (gx#stx-null? _tl2068920752_)
                                (if (gx#stx-pair? _tl2068020722_)
                                    (let ((_e2069020755_
                                           (gx#syntax-e _tl2068020722_)))
                                      (let ((_hd2069120759_
                                             (##car _e2069020755_))
                                            (_tl2069220762_
                                             (##cdr _e2069020755_)))
                                        ((lambda (_L20765_
                                                  _L20767_
                                                  _L20768_
                                                  _L20769_)
                                           (if (if (gx#identifier? _L20769_)
                                                   (if (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__0|
                                                        _L20768_)
                                                       (gx#stx-plist?
                                                        _L20765_
                                                        _method-opt?20667_)
                                                       '#f)
                                                   '#f)
                                               (let* ((_klass20794_
                                                       (gx#syntax-local-value
                                                        _L20768_))
                                                      (_rebind?20797_
                                                       (if (gx#stx-e
                                                            (gx#stx-getq
                                                             'rebind:
                                                             _L20765_))
                                                           '#t
                                                           '#f))
                                                      (_g2080020808_
                                                       (lambda (_g2080120804_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g2080120804_)))
                                                      (_g2079920991_
                                                       (lambda (_g2080120812_)
                                                         ((lambda (_L20815_)
                                                            (let ()
                                                              (let* ((_g2082920837_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2083020833_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2083020833_)))
                             (_g2082820987_
                              (lambda (_g2083020841_)
                                ((lambda (_L20844_)
                                   (let ()
                                     (let* ((_g2085720865_
                                             (lambda (_g2085820861_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2085820861_)))
                                            (_g2085620983_
                                             (lambda (_g2085820869_)
                                               ((lambda (_L20872_)
                                                  (let ()
                                                    (let* ((_g2088520893_
                                                            (lambda (_g2088620889_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g2088620889_)))
                                                           (_g2088420979_
                                                            (lambda (_g2088620897_)
                                                              ((lambda (_L20900_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2091320921_
                                   (lambda (_g2091420917_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2091420917_)))
                                  (_g2091220975_
                                   (lambda (_g2091420925_)
                                     ((lambda (_L20928_)
                                        (let ()
                                          (let* ((_g2094120949_
                                                  (lambda (_g2094220945_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g2094220945_)))
                                                 (_g2094020971_
                                                  (lambda (_g2094220953_)
                                                    ((lambda (_L20956_)
                                                       (let ()
                                                         (let ()
                                                           (_wrap20665_
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'begin)
                          (cons _L20900_ (cons _L20956_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2094220953_))))
                                            (_g2094020971_
                                             (_wrap20665_
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'bind-method!)
                                                    (cons _L20815_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons _L20769_ '()))
                        (cons _L20844_ (cons _L20928_ '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g2091420925_))))
                             (_g2091220975_ _rebind?20797_))))
                       _g2088620897_))))
              (_g2088420979_
               (_wrap20665_
                (cons (gx#datum->syntax '#f 'def)
                      (cons _L20844_
                            (cons (cons (gx#datum->syntax '#f 'let-syntax)
                                        (cons (cons (cons _L20872_
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
                                                            (cons _L20815_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'obj)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _L20769_ '()))
                                      (cons (gx#datum->syntax '#f 'arg)
                                            (cons (gx#datum->syntax '#f '...)
                                                  '()))))))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons _L20767_ '())))
                                  '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2085820869_))))
                                       (_g2085620983_
                                        (gx#stx-identifier
                                         _L20769_
                                         '@next-method)))))
                                 _g2083020841_))))
                        (_g2082820987_
                         (gx#stx-identifier
                          _L20769_
                          _L20768_
                          '"::"
                          _L20769_)))))
                  _g2080120812_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2079920991_
                                                  (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                                   _klass20794_)))
                                               (if (not (gx#identifier?
                                                         _L20769_))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; expected method identifier"
                                                    _stx20662_
                                                    _L20769_)
                                                   (if (not (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__0|
                                                             _L20768_))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; expected type identifier"
                                                        _stx20662_
                                                        _L20768_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; illegal method options"
                                                        _stx20662_)))))
                                         _tl2069220762_
                                         _hd2069120759_
                                         _hd2068820749_
                                         _hd2068520739_)))
                                    (_g2066920698_ _g2067020702_))
                                (_g2066920698_ _g2067020702_))))
                        (_g2066920698_ _g2067020702_))))
                (_g2066920698_ _g2067020702_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2066920698_
                                                     _g2067020702_))
                                                (_g2066920698_
                                                 _g2067020702_))))
                                        (_g2066920698_ _g2067020702_))))
                                (_g2066920698_ _g2067020702_))))
                        (_g2066920698_ _g2067020702_)))))
            (_g2066820995_ _stx20662_)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@method|
      (lambda (_$stx21005_)
        (let* ((___stx3813638137_ _$stx21005_)
               (_g2101021059_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3813638137_))))
          (let ((___kont3813938140_
                 (lambda (_L21225_ _L21227_ _L21228_)
                   (cons (gx#datum->syntax '#f 'apply)
                         (cons (gx#datum->syntax '#f 'call-method)
                               (cons _L21227_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _L21228_ '()))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '@list)
                                                       (begin
                                                         '#!void
                                                         (foldr (lambda (_g2125521258_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g2125621261_)
                          (cons _g2125521258_ _g2125621261_))
                        '()
                        _L21225_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (___kont3814338144_
                 (lambda (_L21126_ _L21128_ _L21129_)
                   (cons (gx#datum->syntax '#f 'call-method)
                         (cons _L21128_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _L21129_ '()))
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g2114921152_
                                                       _g2115021155_)
                                                (cons _g2114921152_
                                                      _g2115021155_))
                                              '()
                                              _L21126_))))))))
            (let* ((___match3819938200_
                    (lambda (_e2103621066_
                             _hd2103721070_
                             _tl2103821073_
                             _e2103921076_
                             _hd2104021080_
                             _tl2104121083_
                             _e2104221086_
                             _hd2104321090_
                             _tl2104421093_
                             ___splice3814538146_
                             _target2104521096_
                             _tl2104721099_)
                      (letrec ((_loop2104821102_
                                (lambda (_hd2104621106_ _arg2105221109_)
                                  (if (gx#stx-pair? _hd2104621106_)
                                      (let ((_e2104921112_
                                             (gx#syntax-e _hd2104621106_)))
                                        (let ((_lp-tl2105121119_
                                               (##cdr _e2104921112_))
                                              (_lp-hd2105021116_
                                               (##car _e2104921112_)))
                                          (_loop2104821102_
                                           _lp-tl2105121119_
                                           (cons _lp-hd2105021116_
                                                 _arg2105221109_))))
                                      (let ((_arg2105321122_
                                             (reverse _arg2105221109_)))
                                        (let ((_L21126_ _arg2105321122_)
                                              (_L21128_ _hd2104321090_)
                                              (_L21129_ _hd2104021080_))
                                          (if (gx#identifier? _L21129_)
                                              (___kont3814338144_
                                               _L21126_
                                               _L21128_
                                               _L21129_)
                                              (_g2101021059_))))))))
                        (_loop2104821102_ _target2104521096_ '()))))
                   (___match3817338174_
                    (lambda (_e2101521165_
                             _hd2101621169_
                             _tl2101721172_
                             _e2101821175_
                             _hd2101921179_
                             _tl2102021182_
                             _e2102121185_
                             _hd2102221189_
                             _tl2102321192_
                             ___splice3814138142_
                             _target2102421195_
                             _tl2102621198_)
                      (letrec ((_loop2102721201_
                                (lambda (_hd2102521205_ _arg2103121208_)
                                  (if (gx#stx-pair? _hd2102521205_)
                                      (let ((_e2102821211_
                                             (gx#syntax-e _hd2102521205_)))
                                        (let ((_lp-tl2103021218_
                                               (##cdr _e2102821211_))
                                              (_lp-hd2102921215_
                                               (##car _e2102821211_)))
                                          (_loop2102721201_
                                           _lp-tl2103021218_
                                           (cons _lp-hd2102921215_
                                                 _arg2103121208_))))
                                      (let ((_arg2103221221_
                                             (reverse _arg2103121208_)))
                                        (let ((_L21225_ _arg2103221221_)
                                              (_L21227_ _hd2102221189_)
                                              (_L21228_ _hd2101921179_))
                                          (if (if (gx#identifier? _L21228_)
                                                  (gx#stx-ormap
                                                   gx#ellipsis?
                                                   (begin
                                                     '#!void
                                                     (foldr (lambda (_g2124721250_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g2124821253_)
                      (cons _g2124721250_ _g2124821253_))
                    '()
                    _L21225_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '#f)
                                              (___kont3813938140_
                                               _L21225_
                                               _L21227_
                                               _L21228_)
                                              (___match3819938200_
                                               _e2101521165_
                                               _hd2101621169_
                                               _tl2101721172_
                                               _e2101821175_
                                               _hd2101921179_
                                               _tl2102021182_
                                               _e2102121185_
                                               _hd2102221189_
                                               _tl2102321192_
                                               ___splice3814138142_
                                               _target2102421195_
                                               _tl2102621198_))))))))
                        (_loop2102721201_ _target2102421195_ '())))))
              (if (gx#stx-pair? ___stx3813638137_)
                  (let ((_e2101521165_ (gx#syntax-e ___stx3813638137_)))
                    (let ((_tl2101721172_ (##cdr _e2101521165_))
                          (_hd2101621169_ (##car _e2101521165_)))
                      (if (gx#stx-pair? _tl2101721172_)
                          (let ((_e2101821175_ (gx#syntax-e _tl2101721172_)))
                            (let ((_tl2102021182_ (##cdr _e2101821175_))
                                  (_hd2101921179_ (##car _e2101821175_)))
                              (if (gx#stx-pair? _tl2102021182_)
                                  (let ((_e2102121185_
                                         (gx#syntax-e _tl2102021182_)))
                                    (let ((_tl2102321192_
                                           (##cdr _e2102121185_))
                                          (_hd2102221189_
                                           (##car _e2102121185_)))
                                      (if (gx#stx-pair/null? _tl2102321192_)
                                          (let ((___splice3814138142_
                                                 (gx#syntax-split-splice
                                                  _tl2102321192_
                                                  '0)))
                                            (let ((_tl2102621198_
                                                   (##vector-ref
                                                    ___splice3814138142_
                                                    '1))
                                                  (_target2102421195_
                                                   (##vector-ref
                                                    ___splice3814138142_
                                                    '0)))
                                              (if (gx#stx-null? _tl2102621198_)
                                                  (___match3817338174_
                                                   _e2101521165_
                                                   _hd2101621169_
                                                   _tl2101721172_
                                                   _e2101821175_
                                                   _hd2101921179_
                                                   _tl2102021182_
                                                   _e2102121185_
                                                   _hd2102221189_
                                                   _tl2102321192_
                                                   ___splice3814138142_
                                                   _target2102421195_
                                                   _tl2102621198_)
                                                  (_g2101021059_))))
                                          (_g2101021059_))))
                                  (_g2101021059_))))
                          (_g2101021059_))))
                  (_g2101021059_)))))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@|
      (lambda (_$stx21270_)
        (let* ((___stx3820238203_ _$stx21270_)
               (_g2127521315_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3820238203_))))
          (let ((___kont3820538206_
                 (lambda (_L21453_ _L21455_)
                   (cons (gx#datum->syntax '#f 'slot-ref)
                         (cons _L21455_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _L21453_ '()))
                                     '())))))
                (___kont3820738208_
                 (lambda (_L21382_ _L21384_ _L21385_ _L21386_)
                   (cons _L21386_
                         (cons (cons _L21386_
                                     (cons _L21385_ (cons _L21384_ '())))
                               (begin
                                 '#!void
                                 (foldr (lambda (_g2140721410_ _g2140821413_)
                                          (cons _g2140721410_ _g2140821413_))
                                        '()
                                        _L21382_)))))))
            (let* ((___match3825738258_
                    (lambda (_e2129221322_
                             _hd2129321326_
                             _tl2129421329_
                             _e2129521332_
                             _hd2129621336_
                             _tl2129721339_
                             _e2129821342_
                             _hd2129921346_
                             _tl2130021349_
                             ___splice3820938210_
                             _target2130121352_
                             _tl2130321355_)
                      (letrec ((_loop2130421358_
                                (lambda (_hd2130221362_ _rest2130821365_)
                                  (if (gx#stx-pair? _hd2130221362_)
                                      (let ((_e2130521368_
                                             (gx#syntax-e _hd2130221362_)))
                                        (let ((_lp-tl2130721375_
                                               (##cdr _e2130521368_))
                                              (_lp-hd2130621372_
                                               (##car _e2130521368_)))
                                          (_loop2130421358_
                                           _lp-tl2130721375_
                                           (cons _lp-hd2130621372_
                                                 _rest2130821365_))))
                                      (let ((_rest2130921378_
                                             (reverse _rest2130821365_)))
                                        (___kont3820738208_
                                         _rest2130921378_
                                         _hd2129921346_
                                         _hd2129621336_
                                         _hd2129321326_))))))
                        (_loop2130421358_ _target2130121352_ '()))))
                   (___match3823138232_
                    (lambda (_e2127921423_
                             _hd2128021427_
                             _tl2128121430_
                             _e2128221433_
                             _hd2128321437_
                             _tl2128421440_
                             _e2128521443_
                             _hd2128621447_
                             _tl2128721450_)
                      (let ((_L21453_ _hd2128621447_)
                            (_L21455_ _hd2128321437_))
                        (if (gx#identifier? _L21453_)
                            (___kont3820538206_ _L21453_ _L21455_)
                            (if (gx#stx-pair/null? _tl2128721450_)
                                (let ((___splice3820938210_
                                       (gx#syntax-split-splice
                                        _tl2128721450_
                                        '0)))
                                  (let ((_tl2130321355_
                                         (##vector-ref
                                          ___splice3820938210_
                                          '1))
                                        (_target2130121352_
                                         (##vector-ref
                                          ___splice3820938210_
                                          '0)))
                                    (if (gx#stx-null? _tl2130321355_)
                                        (___match3825738258_
                                         _e2127921423_
                                         _hd2128021427_
                                         _tl2128121430_
                                         _e2128221433_
                                         _hd2128321437_
                                         _tl2128421440_
                                         _e2128521443_
                                         _hd2128621447_
                                         _tl2128721450_
                                         ___splice3820938210_
                                         _target2130121352_
                                         _tl2130321355_)
                                        (_g2127521315_))))
                                (_g2127521315_)))))))
              (if (gx#stx-pair? ___stx3820238203_)
                  (let ((_e2127921423_ (gx#syntax-e ___stx3820238203_)))
                    (let ((_tl2128121430_ (##cdr _e2127921423_))
                          (_hd2128021427_ (##car _e2127921423_)))
                      (if (gx#stx-pair? _tl2128121430_)
                          (let ((_e2128221433_ (gx#syntax-e _tl2128121430_)))
                            (let ((_tl2128421440_ (##cdr _e2128221433_))
                                  (_hd2128321437_ (##car _e2128221433_)))
                              (if (gx#stx-pair? _tl2128421440_)
                                  (let ((_e2128521443_
                                         (gx#syntax-e _tl2128421440_)))
                                    (let ((_tl2128721450_
                                           (##cdr _e2128521443_))
                                          (_hd2128621447_
                                           (##car _e2128521443_)))
                                      (if (gx#stx-null? _tl2128721450_)
                                          (___match3823138232_
                                           _e2127921423_
                                           _hd2128021427_
                                           _tl2128121430_
                                           _e2128221433_
                                           _hd2128321437_
                                           _tl2128421440_
                                           _e2128521443_
                                           _hd2128621447_
                                           _tl2128721450_)
                                          (if (gx#stx-pair/null?
                                               _tl2128721450_)
                                              (let ((___splice3820938210_
                                                     (gx#syntax-split-splice
                                                      _tl2128721450_
                                                      '0)))
                                                (let ((_tl2130321355_
                                                       (##vector-ref
                                                        ___splice3820938210_
                                                        '1))
                                                      (_target2130121352_
                                                       (##vector-ref
                                                        ___splice3820938210_
                                                        '0)))
                                                  (if (gx#stx-null?
                                                       _tl2130321355_)
                                                      (___match3825738258_
                                                       _e2127921423_
                                                       _hd2128021427_
                                                       _tl2128121430_
                                                       _e2128221433_
                                                       _hd2128321437_
                                                       _tl2128421440_
                                                       _e2128521443_
                                                       _hd2128621447_
                                                       _tl2128721450_
                                                       ___splice3820938210_
                                                       _target2130121352_
                                                       _tl2130321355_)
                                                      (_g2127521315_))))
                                              (_g2127521315_)))))
                                  (_g2127521315_))))
                          (_g2127521315_))))
                  (_g2127521315_)))))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@-set!|
      (lambda (_$stx21475_)
        (let* ((___stx3826038261_ _$stx21475_)
               (_g2148021532_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3826038261_))))
          (let ((___kont3826338264_
                 (lambda (_L21708_ _L21710_ _L21711_)
                   (cons (gx#datum->syntax '#f 'slot-set!)
                         (cons _L21711_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _L21710_ '()))
                                     (cons _L21708_ '()))))))
                (___kont3826538266_
                 (lambda (_L21619_
                          _L21621_
                          _L21622_
                          _L21623_
                          _L21624_
                          _L21625_)
                   (cons _L21625_
                         (cons (cons (gx#datum->syntax '#f '@)
                                     (cons _L21624_
                                           (cons _L21623_
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2165221655_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2165321658_)
                    (cons _g2165221655_ _g2165321658_))
                  '()
                  _L21622_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _L21621_ (cons _L21619_ '())))))))
            (let* ((___match3833538336_
                    (lambda (_e2150321539_
                             _hd2150421543_
                             _tl2150521546_
                             _e2150621549_
                             _hd2150721553_
                             _tl2150821556_
                             _e2150921559_
                             _hd2151021563_
                             _tl2151121566_
                             ___splice3826738268_
                             _target2151221569_
                             _tl2151421572_
                             _e2152121575_
                             _hd2152221579_
                             _tl2152321582_
                             _e2152421585_
                             _hd2152521589_
                             _tl2152621592_)
                      (letrec ((_loop2151521595_
                                (lambda (_hd2151321599_ _path2151921602_)
                                  (if (gx#stx-pair? _hd2151321599_)
                                      (let ((_e2151621605_
                                             (gx#syntax-e _hd2151321599_)))
                                        (let ((_lp-tl2151821612_
                                               (##cdr _e2151621605_))
                                              (_lp-hd2151721609_
                                               (##car _e2151621605_)))
                                          (_loop2151521595_
                                           _lp-tl2151821612_
                                           (cons _lp-hd2151721609_
                                                 _path2151921602_))))
                                      (let ((_path2152021615_
                                             (reverse _path2151921602_)))
                                        (___kont3826538266_
                                         _hd2152521589_
                                         _hd2152221579_
                                         _path2152021615_
                                         _hd2151021563_
                                         _hd2150721553_
                                         _hd2150421543_))))))
                        (_loop2151521595_ _target2151221569_ '()))))
                   (___match3829538296_
                    (lambda (_e2148521668_
                             _hd2148621672_
                             _tl2148721675_
                             _e2148821678_
                             _hd2148921682_
                             _tl2149021685_
                             _e2149121688_
                             _hd2149221692_
                             _tl2149321695_
                             _e2149421698_
                             _hd2149521702_
                             _tl2149621705_)
                      (let ((_L21708_ _hd2149521702_)
                            (_L21710_ _hd2149221692_)
                            (_L21711_ _hd2148921682_))
                        (if (gx#identifier? _L21710_)
                            (___kont3826338264_ _L21708_ _L21710_ _L21711_)
                            (if (gx#stx-pair/null? _tl2149321695_)
                                (if (fx>= (gx#stx-length _tl2149321695_) '2)
                                    (let ((___splice3826738268_
                                           (gx#syntax-split-splice
                                            _tl2149321695_
                                            '2)))
                                      (let ((_tl2151421572_
                                             (##vector-ref
                                              ___splice3826738268_
                                              '1))
                                            (_target2151221569_
                                             (##vector-ref
                                              ___splice3826738268_
                                              '0)))
                                        (if (gx#stx-pair? _tl2151421572_)
                                            (let ((_e2152121575_
                                                   (gx#syntax-e
                                                    _tl2151421572_)))
                                              (let ((_tl2152321582_
                                                     (##cdr _e2152121575_))
                                                    (_hd2152221579_
                                                     (##car _e2152121575_)))
                                                (if (gx#stx-pair?
                                                     _tl2152321582_)
                                                    (let ((_e2152421585_
                                                           (gx#syntax-e
                                                            _tl2152321582_)))
                                                      (let ((_tl2152621592_
                                                             (##cdr _e2152421585_))
                                                            (_hd2152521589_
                                                             (##car _e2152421585_)))
                                                        (if (gx#stx-null?
                                                             _tl2152621592_)
                                                            (___match3833538336_
                                                             _e2148521668_
                                                             _hd2148621672_
                                                             _tl2148721675_
                                                             _e2148821678_
                                                             _hd2148921682_
                                                             _tl2149021685_
                                                             _e2149121688_
                                                             _hd2149221692_
                                                             _tl2149321695_
                                                             ___splice3826738268_
                                                             _target2151221569_
                                                             _tl2151421572_
                                                             _e2152121575_
                                                             _hd2152221579_
                                                             _tl2152321582_
                                                             _e2152421585_
                                                             _hd2152521589_
                                                             _tl2152621592_)
                                                            (_g2148021532_))))
                                                    (_g2148021532_))))
                                            (_g2148021532_))))
                                    (_g2148021532_))
                                (_g2148021532_)))))))
              (if (gx#stx-pair? ___stx3826038261_)
                  (let ((_e2148521668_ (gx#syntax-e ___stx3826038261_)))
                    (let ((_tl2148721675_ (##cdr _e2148521668_))
                          (_hd2148621672_ (##car _e2148521668_)))
                      (if (gx#stx-pair? _tl2148721675_)
                          (let ((_e2148821678_ (gx#syntax-e _tl2148721675_)))
                            (let ((_tl2149021685_ (##cdr _e2148821678_))
                                  (_hd2148921682_ (##car _e2148821678_)))
                              (if (gx#stx-pair? _tl2149021685_)
                                  (let ((_e2149121688_
                                         (gx#syntax-e _tl2149021685_)))
                                    (let ((_tl2149321695_
                                           (##cdr _e2149121688_))
                                          (_hd2149221692_
                                           (##car _e2149121688_)))
                                      (if (gx#stx-pair? _tl2149321695_)
                                          (let ((_e2149421698_
                                                 (gx#syntax-e _tl2149321695_)))
                                            (let ((_tl2149621705_
                                                   (##cdr _e2149421698_))
                                                  (_hd2149521702_
                                                   (##car _e2149421698_)))
                                              (if (gx#stx-null? _tl2149621705_)
                                                  (___match3829538296_
                                                   _e2148521668_
                                                   _hd2148621672_
                                                   _tl2148721675_
                                                   _e2148821678_
                                                   _hd2148921682_
                                                   _tl2149021685_
                                                   _e2149121688_
                                                   _hd2149221692_
                                                   _tl2149321695_
                                                   _e2149421698_
                                                   _hd2149521702_
                                                   _tl2149621705_)
                                                  (if (gx#stx-pair/null?
                                                       _tl2149321695_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2149321695_)
                        '2)
                  (let ((___splice3826738268_
                         (gx#syntax-split-splice _tl2149321695_ '2)))
                    (let ((_tl2151421572_
                           (##vector-ref ___splice3826738268_ '1))
                          (_target2151221569_
                           (##vector-ref ___splice3826738268_ '0)))
                      (if (gx#stx-pair? _tl2151421572_)
                          (let ((_e2152121575_ (gx#syntax-e _tl2151421572_)))
                            (let ((_tl2152321582_ (##cdr _e2152121575_))
                                  (_hd2152221579_ (##car _e2152121575_)))
                              (if (gx#stx-pair? _tl2152321582_)
                                  (let ((_e2152421585_
                                         (gx#syntax-e _tl2152321582_)))
                                    (let ((_tl2152621592_
                                           (##cdr _e2152421585_))
                                          (_hd2152521589_
                                           (##car _e2152421585_)))
                                      (if (gx#stx-null? _tl2152621592_)
                                          (___match3833538336_
                                           _e2148521668_
                                           _hd2148621672_
                                           _tl2148721675_
                                           _e2148821678_
                                           _hd2148921682_
                                           _tl2149021685_
                                           _e2149121688_
                                           _hd2149221692_
                                           _tl2149321695_
                                           ___splice3826738268_
                                           _target2151221569_
                                           _tl2151421572_
                                           _e2152121575_
                                           _hd2152221579_
                                           _tl2152321582_
                                           _e2152421585_
                                           _hd2152521589_
                                           _tl2152621592_)
                                          (_g2148021532_))))
                                  (_g2148021532_))))
                          (_g2148021532_))))
                  (_g2148021532_))
              (_g2148021532_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _tl2149321695_)
                                              (if (fx>= (gx#stx-length
                                                         _tl2149321695_)
                                                        '2)
                                                  (let ((___splice3826738268_
                                                         (gx#syntax-split-splice
                                                          _tl2149321695_
                                                          '2)))
                                                    (let ((_tl2151421572_
                                                           (##vector-ref
                                                            ___splice3826738268_
                                                            '1))
                                                          (_target2151221569_
                                                           (##vector-ref
                                                            ___splice3826738268_
                                                            '0)))
                                                      (if (gx#stx-pair?
                                                           _tl2151421572_)
                                                          (let ((_e2152121575_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2151421572_)))
                    (let ((_tl2152321582_ (##cdr _e2152121575_))
                          (_hd2152221579_ (##car _e2152121575_)))
                      (if (gx#stx-pair? _tl2152321582_)
                          (let ((_e2152421585_ (gx#syntax-e _tl2152321582_)))
                            (let ((_tl2152621592_ (##cdr _e2152421585_))
                                  (_hd2152521589_ (##car _e2152421585_)))
                              (if (gx#stx-null? _tl2152621592_)
                                  (___match3833538336_
                                   _e2148521668_
                                   _hd2148621672_
                                   _tl2148721675_
                                   _e2148821678_
                                   _hd2148921682_
                                   _tl2149021685_
                                   _e2149121688_
                                   _hd2149221692_
                                   _tl2149321695_
                                   ___splice3826738268_
                                   _target2151221569_
                                   _tl2151421572_
                                   _e2152121575_
                                   _hd2152221579_
                                   _tl2152321582_
                                   _e2152421585_
                                   _hd2152521589_
                                   _tl2152621592_)
                                  (_g2148021532_))))
                          (_g2148021532_))))
                  (_g2148021532_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2148021532_))
                                              (_g2148021532_)))))
                                  (_g2148021532_))))
                          (_g2148021532_))))
                  (_g2148021532_)))))))))
