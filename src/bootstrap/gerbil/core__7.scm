(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<MOP>$<MOP:2>[1]#_g41349_|
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
      (lambda _$args20421_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info::t|
               _$args20421_)))
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
      (lambda _$args20417_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
               _$args20417_)))
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
      (lambda _$args20413_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#extended-struct-info::t|
               _$args20413_)))
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
      (lambda _$args20409_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
               _$args20409_)))
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
      (lambda _$args20405_
        (apply make-struct-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-exhibitor::t|
               _$args20405_)))
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
      (lambda _$args20401_
        (apply make-struct-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
               _$args20401_)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-slots|
      (make-struct-field-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-slots-set!|
      (make-struct-field-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__%|
      (lambda (_stx20375_ _is?20377_)
        (if (gx#identifier? _stx20375_)
            (let ((_e2037820380_ (gx#syntax-local-value _stx20375_ false)))
              (if _e2037820380_
                  (let ((_e20384_ _e2037820380_))
                    (if (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info?|
                         _e20384_)
                        (_is?20377_ _e20384_)
                        '#f))
                  '#f))
            '#f)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__0|
      (lambda (_stx20391_)
        (let ((_is?20394_ true))
          (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__%|
           _stx20391_
           _is?20394_))))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
      (lambda _g41335_
        (let ((_g41334_ (length _g41335_)))
          (cond ((##fx= _g41334_ 1)
                 (apply |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__0|
                        _g41335_))
                ((##fx= _g41334_ 2)
                 (apply |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__%|
                        _g41335_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                  _g41335_))))))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
      (lambda (_stx20371_)
        (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__%|
         _stx20371_
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info?|)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-class-info?|
      (lambda (_stx20368_)
        (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__%|
         _stx20368_
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info?|)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
      (lambda (_id20362_)
        (if _id20362_
            (let ((_info20365_ (gx#syntax-local-value _id20362_)))
              (if (|gerbil/core$<MOP>$<MOP:2>[1]#extended-runtime-type-info?|
                   _info20365_)
                  (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor|
                   _info20365_)
                  '#f))
            '#f)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::apply-macro-expander|
      (lambda (_self20127_ _stx20129_)
        (let* ((_g2013120151_
                (lambda (_g2013220147_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2013220147_)))
               (_g2013020358_
                (lambda (_g2013220155_)
                  (if (gx#stx-pair? _g2013220155_)
                      (let ((_e2013420158_ (gx#syntax-e _g2013220155_)))
                        (let ((_hd2013520162_ (##car _e2013420158_))
                              (_tl2013620165_ (##cdr _e2013420158_)))
                          (if (gx#stx-pair/null? _tl2013620165_)
                              (let ((_g41336_
                                     (gx#syntax-split-splice
                                      _tl2013620165_
                                      '0)))
                                (begin
                                  (let ((_g41337_
                                         (if (##values? _g41336_)
                                             (##vector-length _g41336_)
                                             1)))
                                    (if (not (##fx= _g41337_ 2))
                                        (error "Context expects 2 values"
                                               _g41337_)))
                                  (let ((_target2013720168_
                                         (##vector-ref _g41336_ 0))
                                        (_tl2013920171_
                                         (##vector-ref _g41336_ 1)))
                                    (if (gx#stx-null? _tl2013920171_)
                                        (letrec ((_loop2014020174_
                                                  (lambda (_hd2013820178_
                                                           _arg2014420181_)
                                                    (if (gx#stx-pair?
                                                         _hd2013820178_)
                                                        (let ((_e2014120184_
                                                               (gx#syntax-e
                                                                _hd2013820178_)))
                                                          (let ((_lp-hd2014220188_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2014120184_))
                        (_lp-tl2014320191_ (##cdr _e2014120184_)))
                    (_loop2014020174_
                     _lp-tl2014320191_
                     (cons _lp-hd2014220188_ _arg2014420181_))))
                (let ((_arg2014520194_ (reverse _arg2014420181_)))
                  ((lambda (_L20198_)
                     (let* ((_g2021420245_
                             (lambda (_g2021520241_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g2021520241_)))
                            (_g2021320354_
                             (lambda (_g2021520249_)
                               (if (gx#stx-pair? _g2021520249_)
                                   (let ((_e2022220252_
                                          (gx#syntax-e _g2021520249_)))
                                     (let ((_hd2022320256_
                                            (##car _e2022220252_))
                                           (_tl2022420259_
                                            (##cdr _e2022220252_)))
                                       (if (gx#stx-pair? _tl2022420259_)
                                           (let ((_e2022520262_
                                                  (gx#syntax-e
                                                   _tl2022420259_)))
                                             (let ((_hd2022620266_
                                                    (##car _e2022520262_))
                                                   (_tl2022720269_
                                                    (##cdr _e2022520262_)))
                                               (if (gx#stx-pair?
                                                    _tl2022720269_)
                                                   (let ((_e2022820272_
                                                          (gx#syntax-e
                                                           _tl2022720269_)))
                                                     (let ((_hd2022920276_
                                                            (##car _e2022820272_))
                                                           (_tl2023020279_
                                                            (##cdr _e2022820272_)))
                                                       (if (gx#stx-pair?
                                                            _tl2023020279_)
                                                           (let ((_e2023120282_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl2023020279_)))
                     (let ((_hd2023220286_ (##car _e2023120282_))
                           (_tl2023320289_ (##cdr _e2023120282_)))
                       (if (gx#stx-pair? _tl2023320289_)
                           (let ((_e2023420292_ (gx#syntax-e _tl2023320289_)))
                             (let ((_hd2023520296_ (##car _e2023420292_))
                                   (_tl2023620299_ (##cdr _e2023420292_)))
                               (if (gx#stx-pair? _tl2023620299_)
                                   (let ((_e2023720302_
                                          (gx#syntax-e _tl2023620299_)))
                                     (let ((_hd2023820306_
                                            (##car _e2023720302_))
                                           (_tl2023920309_
                                            (##cdr _e2023720302_)))
                                       (if (gx#stx-null? _tl2023920309_)
                                           ((lambda (_L20312_
                                                     _L20314_
                                                     _L20315_
                                                     _L20316_
                                                     _L20317_
                                                     _L20318_)
                                              (let ()
                                                (cons _L20316_
                                                      (foldr (lambda (_g2034520348_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2034620351_)
                       (cons _g2034520348_ _g2034620351_))
                     '()
                     _L20198_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _hd2023820306_
                                            _hd2023520296_
                                            _hd2023220286_
                                            _hd2022920276_
                                            _hd2022620266_
                                            _hd2022320256_)
                                           (_g2021420245_ _g2021520249_))))
                                   (_g2021420245_ _g2021520249_))))
                           (_g2021420245_ _g2021520249_))))
                   (_g2021420245_ _g2021520249_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2021420245_
                                                    _g2021520249_))))
                                           (_g2021420245_ _g2021520249_))))
                                   (_g2021420245_ _g2021520249_)))))
                       (_g2021320354_
                        (|gerbil/core$<MOP>$<MOP:2>[1]#expander-type-identifiers|
                         _self20127_))))
                   _arg2014520194_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop2014020174_
                                           _target2013720168_
                                           '()))
                                        (_g2013120151_ _g2013220155_)))))
                              (_g2013120151_ _g2013220155_))))
                      (_g2013120151_ _g2013220155_)))))
          (_g2013020358_ _stx20129_))))
    (bind-method!
     |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|
     'apply-macro-expander
     |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::apply-macro-expander|)
    (define |gerbil/core$<MOP>$<MOP:2>[1]#typedef-body?|
      (lambda (_stx20118_)
        (letrec ((_body-opt?20121_
                  (lambda (_key20124_)
                    (memq (gx#stx-e _key20124_)
                          '(id:
                            name:
                            constructor:
                            transparent:
                            final:
                            plist:
                            unchecked:
                            print:
                            equal:)))))
          (gx#stx-plist? _stx20118_ _body-opt?20121_))))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
      (lambda (_stx18946_
               _id18948_
               _super-ref18949_
               _els18950_
               _body18951_
               _struct?18952_)
        (letrec* ((_wrap18954_
                   (lambda (_e-stx20115_)
                     (gx#stx-wrap-source
                      _e-stx20115_
                      (gx#stx-source _stx18946_))))
                  (_make-id18956_
                   (if (uninterned-symbol? (gx#stx-e _id18948_))
                       (lambda _g41338_ (gx#genident _id18948_))
                       (lambda _args20112_
                         (apply gx#stx-identifier _id18948_ _args20112_)))))
          (gx#check-duplicate-identifiers _els18950_ _stx18946_)
          (let* ((_name18958_ (symbol->string (gx#stx-e _id18948_)))
                 (_super18961_
                  (if _struct?18952_
                      (if _super-ref18949_
                          (gx#syntax-local-value _super-ref18949_)
                          '#f)
                      (map gx#syntax-local-value _super-ref18949_)))
                 (_g1896418972_
                  (lambda (_g1896518968_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1896518968_)))
                 (_g1896320106_
                  (lambda (_g1896518976_)
                    ((lambda (_L18979_)
                       (let ()
                         (let* ((_g1899519003_
                                 (lambda (_g1899618999_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1899618999_)))
                                (_g1899420102_
                                 (lambda (_g1899619007_)
                                   ((lambda (_L19010_)
                                      (let ()
                                        (let* ((_g1902319031_
                                                (lambda (_g1902419027_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1902419027_)))
                                               (_g1902220098_
                                                (lambda (_g1902419035_)
                                                  ((lambda (_L19038_)
                                                     (let ()
                                                       (let* ((_g1905119059_
                                                               (lambda (_g1905219055_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1905219055_)))
                      (_g1905020094_
                       (lambda (_g1905219063_)
                         ((lambda (_L19066_)
                            (let ()
                              (let* ((_g1907919087_
                                      (lambda (_g1908019083_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1908019083_)))
                                     (_g1907820090_
                                      (lambda (_g1908019091_)
                                        ((lambda (_L19094_)
                                           (let ()
                                             (let* ((_g1910719115_
                                                     (lambda (_g1910819111_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1910819111_)))
                                                    (_g1910620086_
                                                     (lambda (_g1910819119_)
                                                       ((lambda (_L19122_)
                                                          (let ()
                                                            (let* ((_g1913519152_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g1913619148_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1913619148_)))
                           (_g1913420082_
                            (lambda (_g1913619156_)
                              (if (gx#stx-pair/null? _g1913619156_)
                                  (let ((_g41339_
                                         (gx#syntax-split-splice
                                          _g1913619156_
                                          '0)))
                                    (begin
                                      (let ((_g41340_
                                             (if (##values? _g41339_)
                                                 (##vector-length _g41339_)
                                                 1)))
                                        (if (not (##fx= _g41340_ 2))
                                            (error "Context expects 2 values"
                                                   _g41340_)))
                                      (let ((_target1913819159_
                                             (##vector-ref _g41339_ 0))
                                            (_tl1914019162_
                                             (##vector-ref _g41339_ 1)))
                                        (if (gx#stx-null? _tl1914019162_)
                                            (letrec ((_loop1914119165_
                                                      (lambda (_hd1913919169_
                                                               _attr1914519172_)
                                                        (if (gx#stx-pair?
                                                             _hd1913919169_)
                                                            (let ((_e1914219175_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd1913919169_)))
                      (let ((_lp-hd1914319179_ (##car _e1914219175_))
                            (_lp-tl1914419182_ (##cdr _e1914219175_)))
                        (_loop1914119165_
                         _lp-tl1914419182_
                         (cons _lp-hd1914319179_ _attr1914519172_))))
                    (let ((_attr1914619185_ (reverse _attr1914519172_)))
                      ((lambda (_L19189_)
                         (let ()
                           (let* ((_g1920619223_
                                   (lambda (_g1920719219_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1920719219_)))
                                  (_g1920520073_
                                   (lambda (_g1920719227_)
                                     (if (gx#stx-pair/null? _g1920719227_)
                                         (let ((_g41341_
                                                (gx#syntax-split-splice
                                                 _g1920719227_
                                                 '0)))
                                           (begin
                                             (let ((_g41342_
                                                    (if (##values? _g41341_)
                                                        (##vector-length
                                                         _g41341_)
                                                        1)))
                                               (if (not (##fx= _g41342_ 2))
                                                   (error "Context expects 2 values"
                                                          _g41342_)))
                                             (let ((_target1920919230_
                                                    (##vector-ref _g41341_ 0))
                                                   (_tl1921119233_
                                                    (##vector-ref _g41341_ 1)))
                                               (if (gx#stx-null?
                                                    _tl1921119233_)
                                                   (letrec ((_loop1921219236_
                                                             (lambda (_hd1921019240_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _getf1921619243_)
                       (if (gx#stx-pair? _hd1921019240_)
                           (let ((_e1921319246_ (gx#syntax-e _hd1921019240_)))
                             (let ((_lp-hd1921419250_ (##car _e1921319246_))
                                   (_lp-tl1921519253_ (##cdr _e1921319246_)))
                               (_loop1921219236_
                                _lp-tl1921519253_
                                (cons _lp-hd1921419250_ _getf1921619243_))))
                           (let ((_getf1921719256_ (reverse _getf1921619243_)))
                             ((lambda (_L19260_)
                                (let ()
                                  (let* ((_g1927719294_
                                          (lambda (_g1927819290_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g1927819290_)))
                                         (_g1927620064_
                                          (lambda (_g1927819298_)
                                            (if (gx#stx-pair/null?
                                                 _g1927819298_)
                                                (let ((_g41343_
                                                       (gx#syntax-split-splice
                                                        _g1927819298_
                                                        '0)))
                                                  (begin
                                                    (let ((_g41344_
                                                           (if (##values?
                                                                _g41343_)
                                                               (##vector-length
                                                                _g41343_)
                                                               1)))
                                                      (if (not (##fx= _g41344_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                  (error "Context expects 2 values" _g41344_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1928019301_
                                                           (##vector-ref
                                                            _g41343_
                                                            0))
                                                          (_tl1928219304_
                                                           (##vector-ref
                                                            _g41343_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl1928219304_)
                                                          (letrec ((_loop1928319307_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1928119311_ _setf1928719314_)
                              (if (gx#stx-pair? _hd1928119311_)
                                  (let ((_e1928419317_
                                         (gx#syntax-e _hd1928119311_)))
                                    (let ((_lp-hd1928519321_
                                           (##car _e1928419317_))
                                          (_lp-tl1928619324_
                                           (##cdr _e1928419317_)))
                                      (_loop1928319307_
                                       _lp-tl1928619324_
                                       (cons _lp-hd1928519321_
                                             _setf1928719314_))))
                                  (let ((_setf1928819327_
                                         (reverse _setf1928719314_)))
                                    ((lambda (_L19331_)
                                       (let ()
                                         (let* ((_type-attr19376_
                                                 (if (gx#stx-null? _els18950_)
                                                     '()
                                                     (if _struct?18952_
                                                         (cons 'fields:
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#syntax-check-splice-targets
                                _L19331_
                                _L19260_
                                _L19189_)
                               (foldr (lambda (_g1934719352_
                                               _g1934819355_
                                               _g1934919357_
                                               _g1935019359_)
                                        (cons (cons _g1934919357_
                                                    (cons _g1934819355_
                                                          (cons _g1934719352_
                                                                '())))
                                              _g1935019359_))
                                      '()
                                      _L19331_
                                      _L19260_
                                      _L19189_))
                             '()))
                 (cons 'slots:
                       (cons (begin
                               (gx#syntax-check-splice-targets
                                _L19331_
                                _L19260_
                                _L19189_)
                               (foldr (lambda (_g1936119366_
                                               _g1936219369_
                                               _g1936319371_
                                               _g1936419373_)
                                        (cons (cons _g1936319371_
                                                    (cons _g1936219369_
                                                          (cons _g1936119366_
                                                                '())))
                                              _g1936419373_))
                                      '()
                                      _L19331_
                                      _L19260_
                                      _L19189_))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_type-name19383_
                                                 (cons 'name:
                                                       (cons (let ((_$e19379_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-getq 'name: _body18951_)))
                       (if _$e19379_ _$e19379_ _id18948_))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_type-id19398_
                                                 (let ((_$e19394_
                                                        (let ((_e1938519387_
                                                               (gx#stx-getq
                                                                'id:
                                                                _body18951_)))
                                                          (if _e1938519387_
                                                              (let ((_e19391_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _e1938519387_))
                        (cons 'id: (cons _e19391_ '())))
                      '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e19394_
                                                       _$e19394_
                                                       '())))
                                                (_type-ctor19413_
                                                 (let ((_$e19409_
                                                        (let ((_e1940019402_
                                                               (gx#stx-getq
                                                                'constructor:
                                                                _body18951_)))
                                                          (if _e1940019402_
                                                              (let ((_e19406_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _e1940019402_))
                        (cons 'constructor: (cons _e19406_ '())))
                      '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e19409_
                                                       _$e19409_
                                                       '())))
                                                (_plist19457_
                                                 (let* ((_plist19420_
                                                         (let ((_$e19416_
                                                                (gx#stx-getq
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'plist:
                         _body18951_)))
                   (if _$e19416_ _$e19416_ '())))
                (_plist19423_
                 (if (gx#stx-e (gx#stx-getq 'transparent: _body18951_))
                     (cons (cons 'transparent: '#t) _plist19420_)
                     _plist19420_))
                (_plist19426_
                 (if (gx#stx-e (gx#stx-getq 'final: _body18951_))
                     (cons (cons 'final: '#t) _plist19423_)
                     _plist19423_))
                (_plist19439_
                 (let ((_$e19429_
                        (gx#stx-e (gx#stx-getq 'print: _body18951_))))
                   (if _$e19429_
                       ((lambda (_print19433_)
                          (let ((_print19436_
                                 (if (eq? _print19433_ '#t)
                                     _els18950_
                                     _print19433_)))
                            (cons (cons 'print: _print19436_) _plist19426_)))
                        _$e19429_)
                       _plist19426_)))
                (_plist19452_
                 (let ((_$e19442_
                        (gx#stx-e (gx#stx-getq 'equal: _body18951_))))
                   (if _$e19442_
                       ((lambda (_equal19446_)
                          (let ((_equal19449_
                                 (if (eq? _equal19446_ '#t)
                                     _els18950_
                                     _equal19446_)))
                            (cons (cons 'equal: _equal19449_) _plist19439_)))
                        _$e19442_)
                       _plist19439_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _plist19452_))
                                                (_type-plist19497_
                                                 (if (null? _plist19457_)
                                                     _plist19457_
                                                     (let* ((_g1946019468_
                                                             (lambda (_g1946119464_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1946119464_)))
                                                            (_g1945919493_
                                                             (lambda (_g1946119472_)
                                                               ((lambda (_L19475_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (cons 'plist:
                                  (cons (cons (gx#datum->syntax '#f 'quote)
                                              (cons _L19475_ '()))
                                        '()))))
                        _g1946119472_))))
               (_g1945919493_ _plist19457_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_type-unchecked19512_
                                                 (let ((_$e19508_
                                                        (let ((_e1949919501_
                                                               (gx#stx-getq
                                                                'unchecked:
                                                                _body18951_)))
                                                          (if _e1949919501_
                                                              (let ((_e19505_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _e1949919501_))
                        (cons 'unchecked: (cons _e19505_ '())))
                      '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e19508_
                                                       _$e19508_
                                                       '())))
                                                (_g1951519532_
                                                 (lambda (_g1951619528_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1951619528_)))
                                                (_g1951420060_
                                                 (lambda (_g1951619536_)
                                                   (if (gx#stx-pair/null?
                                                        _g1951619536_)
                                                       (let ((_g41345_
                                                              (gx#syntax-split-splice
                                                               _g1951619536_
                                                               '0)))
                                                         (begin
                                                           (let ((_g41346_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##values? _g41345_)
                              (##vector-length _g41345_)
                              1)))
                     (if (not (##fx= _g41346_ 2))
                         (error "Context expects 2 values" _g41346_)))
                   (let ((_target1951819539_ (##vector-ref _g41345_ 0))
                         (_tl1952019542_ (##vector-ref _g41345_ 1)))
                     (if (gx#stx-null? _tl1952019542_)
                         (letrec ((_loop1952119545_
                                   (lambda (_hd1951919549_
                                            _type-body1952519552_)
                                     (if (gx#stx-pair? _hd1951919549_)
                                         (let ((_e1952219555_
                                                (gx#syntax-e _hd1951919549_)))
                                           (let ((_lp-hd1952319559_
                                                  (##car _e1952219555_))
                                                 (_lp-tl1952419562_
                                                  (##cdr _e1952219555_)))
                                             (_loop1952119545_
                                              _lp-tl1952419562_
                                              (cons _lp-hd1952319559_
                                                    _type-body1952519552_))))
                                         (let ((_type-body1952619565_
                                                (reverse _type-body1952519552_)))
                                           ((lambda (_L19569_)
                                              (let ()
                                                (let* ((_g1958619594_
                                                        (lambda (_g1958719590_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g1958719590_)))
                                                       (_g1958520048_
                                                        (lambda (_g1958719598_)
                                                          ((lambda (_L19601_)
                                                             (let ()
                                                               (let* ((_g1961419622_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g1961519618_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1961519618_)))
                              (_g1961320044_
                               (lambda (_g1961519626_)
                                 ((lambda (_L19629_)
                                    (let ()
                                      (let* ((_g1964219650_
                                              (lambda (_g1964319646_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _g1964319646_)))
                                             (_g1964119958_
                                              (lambda (_g1964319654_)
                                                ((lambda (_L19657_)
                                                   (let ()
                                                     (let* ((_g1967019678_
                                                             (lambda (_g1967119674_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1967119674_)))
                                                            (_g1966919954_
                                                             (lambda (_g1967119682_)
                                                               ((lambda (_L19685_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let* ((_g1969819706_
                                    (lambda (_g1969919702_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       _g1969919702_)))
                                   (_g1969719950_
                                    (lambda (_g1969919710_)
                                      ((lambda (_L19713_)
                                         (let ()
                                           (let* ((_g1972619734_
                                                   (lambda (_g1972719730_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1972719730_)))
                                                  (_g1972519908_
                                                   (lambda (_g1972719738_)
                                                     ((lambda (_L19741_)
                                                        (let ()
                                                          (let* ((_g1975419762_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g1975519758_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1975519758_)))
                         (_g1975319904_
                          (lambda (_g1975519766_)
                            ((lambda (_L19769_)
                               (let ()
                                 (let* ((_g1978219790_
                                         (lambda (_g1978319786_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g1978319786_)))
                                        (_g1978119900_
                                         (lambda (_g1978319794_)
                                           ((lambda (_L19797_)
                                              (let ()
                                                (let* ((_g1981019818_
                                                        (lambda (_g1981119814_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g1981119814_)))
                                                       (_g1980919896_
                                                        (lambda (_g1981119822_)
                                                          ((lambda (_L19825_)
                                                             (let ()
                                                               (let* ((_g1983819846_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g1983919842_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1983919842_)))
                              (_g1983719868_
                               (lambda (_g1983919850_)
                                 ((lambda (_L19853_)
                                    (let ()
                                      (let ()
                                        (_wrap18954_
                                         (cons (gx#datum->syntax '#f 'begin)
                                               (cons _L19601_
                                                     (cons _L19853_ '())))))))
                                  _g1983919850_))))
                         (_g1983719868_
                          (_wrap18954_
                           (cons (gx#datum->syntax '#f 'defsyntax)
                                 (cons _L19010_
                                       (cons (cons _L19629_
                                                   (cons 'runtime-identifier:
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'quote-syntax)
                             (cons _L19038_ '()))
                       (cons 'expander-identifiers:
                             (cons (cons (gx#datum->syntax '#f '@list)
                                         (cons _L19657_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote-syntax)
                                                           (cons _L19038_ '()))
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote-syntax)
                         (cons _L19066_ '()))
                   (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                               (cons _L19094_ '()))
                         (cons (cons (gx#datum->syntax '#f '@list)
                                     (foldr (lambda (_g1987119878_
                                                     _g1987219881_)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'quote-syntax)
                                                          (cons _g1987119878_
                                                                '()))
                                                    _g1987219881_))
                                            '()
                                            _L19260_))
                               (cons (cons (gx#datum->syntax '#f '@list)
                                           (foldr (lambda (_g1987319884_
                                                           _g1987419887_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote-syntax)
                        (cons _g1987319884_ '()))
                  _g1987419887_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()
                                                  _L19331_))
                                     '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (cons 'type-exhibitor:
                                         (cons (cons _L19685_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L19713_ '()))
                   (cons _L19741_
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _L19769_ '()))
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _L19797_ '()))
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _L19825_ '()))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'quote)
                                                       (cons (foldr (lambda (_g1987519890_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1987619893_)
                              (cons _g1987519890_ _g1987619893_))
                            '()
                            _L19189_)
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))))))))
                   _g1981119822_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1980919896_
                                                   _plist19457_))))
                                            _g1978319794_))))
                                   (_g1978119900_
                                    (if (not (null? _type-ctor19413_))
                                        (cadr _type-ctor19413_)
                                        '#f)))))
                             _g1975519766_))))
                    (_g1975319904_ (cadr _type-name19383_)))))
              _g1972719738_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1972519908_
                                              (let ((_quote-e19947_
                                                     (lambda (_x-ref19912_)
                                                       (if _x-ref19912_
                                                           (let* ((_g1991519923_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g1991619919_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1991619919_)))
                          (_g1991419943_
                           (lambda (_g1991619927_)
                             ((lambda (_L19930_)
                                (let ()
                                  (cons (gx#datum->syntax '#f 'quote-syntax)
                                        (cons _L19930_ '()))))
                              _g1991619927_))))
                     (_g1991419943_ _x-ref19912_))
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if _struct?18952_
                                                    (_quote-e19947_
                                                     _super-ref18949_)
                                                    (cons 'list
                                                          (map _quote-e19947_
                                                               _super-ref18949_))))))))
                                       _g1969919710_))))
                              (_g1969719950_
                               (if (not (null? _type-id19398_))
                                   (cadr _type-id19398_)
                                   '#f)))))
                        _g1967119682_))))
               (_g1966919954_
                (if _struct?18952_
                    (gx#datum->syntax '#f 'make-runtime-struct-exhibitor)
                    (gx#datum->syntax '#f 'make-runtime-class-exhibitor))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _g1964319654_))))
                                        (_g1964119958_
                                         (if _struct?18952_
                                             (if _super18961_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'quote-syntax)
                                                       (cons _L19122_ '()))
                                                 '#f)
                                             (let* ((_g1996219979_
                                                     (lambda (_g1996319975_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1996319975_)))
                                                    (_g1996120040_
                                                     (lambda (_g1996319983_)
                                                       (if (gx#stx-pair/null?
                                                            _g1996319983_)
                                                           (let ((_g41347_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _g1996319983_ '0)))
                     (begin
                       (let ((_g41348_
                              (if (##values? _g41347_)
                                  (##vector-length _g41347_)
                                  1)))
                         (if (not (##fx= _g41348_ 2))
                             (error "Context expects 2 values" _g41348_)))
                       (let ((_target1996519986_ (##vector-ref _g41347_ 0))
                             (_tl1996719989_ (##vector-ref _g41347_ 1)))
                         (if (gx#stx-null? _tl1996719989_)
                             (letrec ((_loop1996819992_
                                       (lambda (_hd1996619996_
                                                _super-id1997219999_)
                                         (if (gx#stx-pair? _hd1996619996_)
                                             (let ((_e1996920002_
                                                    (gx#syntax-e
                                                     _hd1996619996_)))
                                               (let ((_lp-hd1997020006_
                                                      (##car _e1996920002_))
                                                     (_lp-tl1997120009_
                                                      (##cdr _e1996920002_)))
                                                 (_loop1996819992_
                                                  _lp-tl1997120009_
                                                  (cons _lp-hd1997020006_
                                                        _super-id1997219999_))))
                                             (let ((_super-id1997320012_
                                                    (reverse _super-id1997219999_)))
                                               ((lambda (_L20016_)
                                                  (let ()
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           '@list)
                                                          (foldr (lambda (_g2003120034_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g2003220037_)
                           (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                       (cons _g2003120034_ '()))
                                 _g2003220037_))
                         '()
                         _L20016_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _super-id1997320012_))))))
                               (_loop1996819992_ _target1996519986_ '()))
                             (_g1996219979_ _g1996319983_)))))
                   (_g1996219979_ _g1996319983_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1996120040_ _L19122_)))))))
                                  _g1961519626_))))
                         (_g1961320044_
                          (if _struct?18952_
                              (gx#datum->syntax '#f 'make-extended-struct-info)
                              (gx#datum->syntax
                               '#f
                               'make-extended-class-info))))))
                   _g1958719598_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1958520048_
                                                   (_wrap18954_
                                                    (cons _L18979_
                                                          (cons _L19038_
                                                                (cons _L19122_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _L19066_
                                    (cons _L19094_
                                          (foldr (lambda (_g2005120054_
                                                          _g2005220057_)
                                                   (cons _g2005120054_
                                                         _g2005220057_))
                                                 '()
                                                 _L19569_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _type-body1952619565_))))))
                           (_loop1952119545_ _target1951819539_ '()))
                         (_g1951519532_ _g1951619536_)))))
               (_g1951519532_ _g1951619536_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g1951420060_
                                            (foldr cons
                                                   (foldr cons
                                                          (foldr cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr cons
                                (foldr cons
                                       _type-unchecked19512_
                                       _type-plist19497_)
                                _type-ctor19413_)
                         _type-name19383_)
                  _type-id19398_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _type-attr19376_)))))
                                     _setf1928819327_))))))
                    (_loop1928319307_ _target1928019301_ '()))
                  (_g1927719294_ _g1927819298_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1927719294_
                                                 _g1927819298_)))))
                                    (_g1927620064_
                                     (gx#stx-map
                                      (lambda (_g2006720069_)
                                        (_make-id18956_
                                         _name18958_
                                         '"-"
                                         _g2006720069_
                                         '"-set!"))
                                      _els18950_)))))
                              _getf1921719256_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1921219236_
                                                      _target1920919230_
                                                      '()))
                                                   (_g1920619223_
                                                    _g1920719227_)))))
                                         (_g1920619223_ _g1920719227_)))))
                             (_g1920520073_
                              (gx#stx-map
                               (lambda (_g2007620078_)
                                 (_make-id18956_
                                  _name18958_
                                  '"-"
                                  _g2007620078_))
                               _els18950_)))))
                       _attr1914619185_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop1914119165_
                                               _target1913819159_
                                               '()))
                                            (_g1913519152_ _g1913619156_)))))
                                  (_g1913519152_ _g1913619156_)))))
                      (_g1913420082_ _els18950_))))
                _g1910819119_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1910620086_
                                                (if _struct?18952_
                                                    (if _super18961_
                                                        (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                                         _super18961_)
                                                        '#f)
                                                    (map |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                                         _super18961_))))))
                                         _g1908019091_))))
                                (_g1907820090_
                                 (_make-id18956_ _name18958_ '"?")))))
                          _g1905219063_))))
                 (_g1905020094_ (_make-id18956_ '"make-" _name18958_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g1902419035_))))
                                          (_g1902220098_
                                           (_make-id18956_
                                            _name18958_
                                            '"::t")))))
                                    _g1899619007_))))
                           (_g1899420102_ _id18948_))))
                     _g1896518976_))))
            (_g1896320106_
             (if _struct?18952_
                 (gx#datum->syntax '#f 'defstruct-type)
                 (gx#datum->syntax '#f 'defclass-type)))))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#defstruct|
      (lambda (_stx20434_)
        (letrec ((_generate20437_
                  (lambda (_hd20521_ _fields20523_ _body20524_)
                    (let* ((___stx3827838279_ _hd20521_)
                           (_g2052720542_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3827838279_))))
                      (let ((___kont3828138282_
                             (lambda (_L20580_ _L20582_)
                               (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                _stx20434_
                                _L20582_
                                _L20580_
                                _fields20523_
                                _body20524_
                                '#t)))
                            (___kont3828338284_
                             (lambda ()
                               (if (gx#identifier? _hd20521_)
                                   (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                    _stx20434_
                                    _hd20521_
                                    '#f
                                    _fields20523_
                                    _body20524_
                                    '#t)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _stx20434_
                                    _hd20521_)))))
                        (let ((___match3829938300_
                               (lambda (_e2053120560_
                                        _hd2053220564_
                                        _tl2053320567_
                                        _e2053420570_
                                        _hd2053520574_
                                        _tl2053620577_)
                                 (let ((_L20580_ _hd2053520574_)
                                       (_L20582_ _hd2053220564_))
                                   (if (and (gx#identifier? _L20582_)
                                            (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
                                             _L20580_))
                                       (___kont3828138282_ _L20580_ _L20582_)
                                       (___kont3828338284_))))))
                          (if (gx#stx-pair? ___stx3827838279_)
                              (let ((_e2053120560_
                                     (gx#syntax-e ___stx3827838279_)))
                                (let ((_tl2053320567_ (##cdr _e2053120560_))
                                      (_hd2053220564_ (##car _e2053120560_)))
                                  (if (gx#stx-pair? _tl2053320567_)
                                      (let ((_e2053420570_
                                             (gx#syntax-e _tl2053320567_)))
                                        (let ((_tl2053620577_
                                               (##cdr _e2053420570_))
                                              (_hd2053520574_
                                               (##car _e2053420570_)))
                                          (if (gx#stx-null? _tl2053620577_)
                                              (___match3829938300_
                                               _e2053120560_
                                               _hd2053220564_
                                               _tl2053320567_
                                               _e2053420570_
                                               _hd2053520574_
                                               _tl2053620577_)
                                              (___kont3828338284_))))
                                      (___kont3828338284_))))
                              (___kont3828338284_))))))))
          (let* ((_g2044020459_
                  (lambda (_g2044120455_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2044120455_)))
                 (_g2043920517_
                  (lambda (_g2044120463_)
                    (if (gx#stx-pair? _g2044120463_)
                        (let ((_e2044520466_ (gx#syntax-e _g2044120463_)))
                          (let ((_hd2044620470_ (##car _e2044520466_))
                                (_tl2044720473_ (##cdr _e2044520466_)))
                            (if (gx#stx-pair? _tl2044720473_)
                                (let ((_e2044820476_
                                       (gx#syntax-e _tl2044720473_)))
                                  (let ((_hd2044920480_ (##car _e2044820476_))
                                        (_tl2045020483_ (##cdr _e2044820476_)))
                                    (if (gx#stx-pair? _tl2045020483_)
                                        (let ((_e2045120486_
                                               (gx#syntax-e _tl2045020483_)))
                                          (let ((_hd2045220490_
                                                 (##car _e2045120486_))
                                                (_tl2045320493_
                                                 (##cdr _e2045120486_)))
                                            ((lambda (_L20496_
                                                      _L20498_
                                                      _L20499_)
                                               (if (and (gx#identifier-list?
                                                         _L20498_)
                                                        (|gerbil/core$<MOP>$<MOP:2>[1]#typedef-body?|
                                                         _L20496_))
                                                   (_generate20437_
                                                    _L20499_
                                                    _L20498_
                                                    _L20496_)
                                                   (_g2044020459_
                                                    _g2044120463_)))
                                             _tl2045320493_
                                             _hd2045220490_
                                             _hd2044920480_)))
                                        (_g2044020459_ _g2044120463_))))
                                (_g2044020459_ _g2044120463_))))
                        (_g2044020459_ _g2044120463_)))))
            (_g2043920517_ _stx20434_)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#defclass|
      (lambda (_stx20601_)
        (letrec ((_generate20604_
                  (lambda (_hd20688_ _slots20690_ _body20691_)
                    (let* ((___stx3830238303_ _hd20688_)
                           (_g2069420706_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3830238303_))))
                      (let ((___kont3830538306_
                             (lambda (_L20734_ _L20736_)
                               (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                _stx20601_
                                _L20736_
                                (gx#syntax->list _L20734_)
                                _slots20690_
                                _body20691_
                                '#f)))
                            (___kont3830738308_
                             (lambda ()
                               (if (gx#identifier? _hd20688_)
                                   (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                    _stx20601_
                                    _hd20688_
                                    '()
                                    _slots20690_
                                    _body20691_
                                    '#f)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _stx20601_
                                    _hd20688_)))))
                        (let ((___match3831538316_
                               (lambda (_e2069820724_
                                        _hd2069920728_
                                        _tl2070020731_)
                                 (let ((_L20734_ _tl2070020731_)
                                       (_L20736_ _hd2069920728_))
                                   (if (and (gx#stx-list? _L20734_)
                                            (gx#stx-andmap
                                             |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                                             _L20734_))
                                       (___kont3830538306_ _L20734_ _L20736_)
                                       (___kont3830738308_))))))
                          (if (gx#stx-pair? ___stx3830238303_)
                              (let ((_e2069820724_
                                     (gx#syntax-e ___stx3830238303_)))
                                (let ((_tl2070020731_ (##cdr _e2069820724_))
                                      (_hd2069920728_ (##car _e2069820724_)))
                                  (___match3831538316_
                                   _e2069820724_
                                   _hd2069920728_
                                   _tl2070020731_)))
                              (___kont3830738308_))))))))
          (let* ((_g2060720626_
                  (lambda (_g2060820622_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2060820622_)))
                 (_g2060620684_
                  (lambda (_g2060820630_)
                    (if (gx#stx-pair? _g2060820630_)
                        (let ((_e2061220633_ (gx#syntax-e _g2060820630_)))
                          (let ((_hd2061320637_ (##car _e2061220633_))
                                (_tl2061420640_ (##cdr _e2061220633_)))
                            (if (gx#stx-pair? _tl2061420640_)
                                (let ((_e2061520643_
                                       (gx#syntax-e _tl2061420640_)))
                                  (let ((_hd2061620647_ (##car _e2061520643_))
                                        (_tl2061720650_ (##cdr _e2061520643_)))
                                    (if (gx#stx-pair? _tl2061720650_)
                                        (let ((_e2061820653_
                                               (gx#syntax-e _tl2061720650_)))
                                          (let ((_hd2061920657_
                                                 (##car _e2061820653_))
                                                (_tl2062020660_
                                                 (##cdr _e2061820653_)))
                                            ((lambda (_L20663_
                                                      _L20665_
                                                      _L20666_)
                                               (if (and (gx#identifier-list?
                                                         _L20665_)
                                                        (|gerbil/core$<MOP>$<MOP:2>[1]#typedef-body?|
                                                         _L20663_))
                                                   (_generate20604_
                                                    _L20666_
                                                    _L20665_
                                                    _L20663_)
                                                   (_g2060720626_
                                                    _g2060820630_)))
                                             _tl2062020660_
                                             _hd2061920657_
                                             _hd2061620647_)))
                                        (_g2060720626_ _g2060820630_))))
                                (_g2060720626_ _g2060820630_))))
                        (_g2060720626_ _g2060820630_)))))
            (_g2060620684_ _stx20601_)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#defmethod|
      (lambda (_stx20753_)
        (letrec ((_wrap20756_
                  (lambda (_e-stx21093_)
                    (gx#stx-wrap-source
                     _e-stx21093_
                     (gx#stx-source _stx20753_))))
                 (_method-opt?20758_
                  (lambda (_x21090_) (memq (gx#stx-e _x21090_) '(rebind:)))))
          (let* ((_g2076020789_
                  (lambda (_g2076120785_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2076120785_)))
                 (_g2075921086_
                  (lambda (_g2076120793_)
                    (if (gx#stx-pair? _g2076120793_)
                        (let ((_e2076620796_ (gx#syntax-e _g2076120793_)))
                          (let ((_hd2076720800_ (##car _e2076620796_))
                                (_tl2076820803_ (##cdr _e2076620796_)))
                            (if (gx#stx-pair? _tl2076820803_)
                                (let ((_e2076920806_
                                       (gx#syntax-e _tl2076820803_)))
                                  (let ((_hd2077020810_ (##car _e2076920806_))
                                        (_tl2077120813_ (##cdr _e2076920806_)))
                                    (if (gx#stx-pair? _hd2077020810_)
                                        (let ((_e2077220816_
                                               (gx#syntax-e _hd2077020810_)))
                                          (let ((_hd2077320820_
                                                 (##car _e2077220816_))
                                                (_tl2077420823_
                                                 (##cdr _e2077220816_)))
                                            (if (gx#identifier? _hd2077320820_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core$<MOP>$<MOP:2>[1]#_g41349_|
                                                     _hd2077320820_)
                                                    (if (gx#stx-pair?
                                                         _tl2077420823_)
                                                        (let ((_e2077520826_
                                                               (gx#syntax-e
                                                                _tl2077420823_)))
                                                          (let ((_hd2077620830_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2077520826_))
                        (_tl2077720833_ (##cdr _e2077520826_)))
                    (if (gx#stx-pair? _tl2077720833_)
                        (let ((_e2077820836_ (gx#syntax-e _tl2077720833_)))
                          (let ((_hd2077920840_ (##car _e2077820836_))
                                (_tl2078020843_ (##cdr _e2077820836_)))
                            (if (gx#stx-null? _tl2078020843_)
                                (if (gx#stx-pair? _tl2077120813_)
                                    (let ((_e2078120846_
                                           (gx#syntax-e _tl2077120813_)))
                                      (let ((_hd2078220850_
                                             (##car _e2078120846_))
                                            (_tl2078320853_
                                             (##cdr _e2078120846_)))
                                        ((lambda (_L20856_
                                                  _L20858_
                                                  _L20859_
                                                  _L20860_)
                                           (if (and (gx#identifier? _L20860_)
                                                    (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__0|
                                                     _L20859_)
                                                    (gx#stx-plist?
                                                     _L20856_
                                                     _method-opt?20758_))
                                               (let* ((_klass20885_
                                                       (gx#syntax-local-value
                                                        _L20859_))
                                                      (_rebind?20888_
                                                       (if (gx#stx-e
                                                            (gx#stx-getq
                                                             'rebind:
                                                             _L20856_))
                                                           '#t
                                                           '#f))
                                                      (_g2089120899_
                                                       (lambda (_g2089220895_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g2089220895_)))
                                                      (_g2089021082_
                                                       (lambda (_g2089220903_)
                                                         ((lambda (_L20906_)
                                                            (let ()
                                                              (let* ((_g2092020928_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2092120924_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2092120924_)))
                             (_g2091921078_
                              (lambda (_g2092120932_)
                                ((lambda (_L20935_)
                                   (let ()
                                     (let* ((_g2094820956_
                                             (lambda (_g2094920952_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2094920952_)))
                                            (_g2094721074_
                                             (lambda (_g2094920960_)
                                               ((lambda (_L20963_)
                                                  (let ()
                                                    (let* ((_g2097620984_
                                                            (lambda (_g2097720980_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g2097720980_)))
                                                           (_g2097521070_
                                                            (lambda (_g2097720988_)
                                                              ((lambda (_L20991_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2100421012_
                                   (lambda (_g2100521008_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2100521008_)))
                                  (_g2100321066_
                                   (lambda (_g2100521016_)
                                     ((lambda (_L21019_)
                                        (let ()
                                          (let* ((_g2103221040_
                                                  (lambda (_g2103321036_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g2103321036_)))
                                                 (_g2103121062_
                                                  (lambda (_g2103321044_)
                                                    ((lambda (_L21047_)
                                                       (let ()
                                                         (let ()
                                                           (_wrap20756_
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'begin)
                          (cons _L20991_ (cons _L21047_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2103321044_))))
                                            (_g2103121062_
                                             (_wrap20756_
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'bind-method!)
                                                    (cons _L20906_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons _L20860_ '()))
                        (cons _L20935_ (cons _L21019_ '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g2100521016_))))
                             (_g2100321066_ _rebind?20888_))))
                       _g2097720988_))))
              (_g2097521070_
               (_wrap20756_
                (cons (gx#datum->syntax '#f 'def)
                      (cons _L20935_
                            (cons (cons (gx#datum->syntax '#f 'let-syntax)
                                        (cons (cons (cons _L20963_
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
                                                            (cons _L20906_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'obj)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _L20860_ '()))
                                      (cons (gx#datum->syntax '#f 'arg)
                                            (cons (gx#datum->syntax '#f '...)
                                                  '()))))))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons _L20858_ '())))
                                  '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2094920960_))))
                                       (_g2094721074_
                                        (gx#stx-identifier
                                         _L20860_
                                         '@next-method)))))
                                 _g2092120932_))))
                        (_g2091921078_
                         (gx#stx-identifier
                          _L20860_
                          _L20859_
                          '"::"
                          _L20860_)))))
                  _g2089220903_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2089021082_
                                                  (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                                   _klass20885_)))
                                               (if (not (gx#identifier?
                                                         _L20860_))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; expected method identifier"
                                                    _stx20753_
                                                    _L20860_)
                                                   (if (not (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__0|
                                                             _L20859_))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; expected type identifier"
                                                        _stx20753_
                                                        _L20859_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; illegal method options"
                                                        _stx20753_)))))
                                         _tl2078320853_
                                         _hd2078220850_
                                         _hd2077920840_
                                         _hd2077620830_)))
                                    (_g2076020789_ _g2076120793_))
                                (_g2076020789_ _g2076120793_))))
                        (_g2076020789_ _g2076120793_))))
                (_g2076020789_ _g2076120793_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2076020789_
                                                     _g2076120793_))
                                                (_g2076020789_
                                                 _g2076120793_))))
                                        (_g2076020789_ _g2076120793_))))
                                (_g2076020789_ _g2076120793_))))
                        (_g2076020789_ _g2076120793_)))))
            (_g2075921086_ _stx20753_)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@method|
      (lambda (_$stx21096_)
        (let* ((___stx3831838319_ _$stx21096_)
               (_g2110121150_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3831838319_))))
          (let ((___kont3832138322_
                 (lambda (_L21316_ _L21318_ _L21319_)
                   (cons (gx#datum->syntax '#f 'apply)
                         (cons (gx#datum->syntax '#f 'call-method)
                               (cons _L21318_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _L21319_ '()))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '@list)
                                                       (foldr (lambda (_g2134621349_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2134721352_)
                        (cons _g2134621349_ _g2134721352_))
                      '()
                      _L21316_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (___kont3832538326_
                 (lambda (_L21217_ _L21219_ _L21220_)
                   (cons (gx#datum->syntax '#f 'call-method)
                         (cons _L21219_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _L21220_ '()))
                                     (foldr (lambda (_g2124021243_
                                                     _g2124121246_)
                                              (cons _g2124021243_
                                                    _g2124121246_))
                                            '()
                                            _L21217_)))))))
            (let* ((___match3838138382_
                    (lambda (_e2112721157_
                             _hd2112821161_
                             _tl2112921164_
                             _e2113021167_
                             _hd2113121171_
                             _tl2113221174_
                             _e2113321177_
                             _hd2113421181_
                             _tl2113521184_
                             ___splice3832738328_
                             _target2113621187_
                             _tl2113821190_)
                      (letrec ((_loop2113921193_
                                (lambda (_hd2113721197_ _arg2114321200_)
                                  (if (gx#stx-pair? _hd2113721197_)
                                      (let ((_e2114021203_
                                             (gx#syntax-e _hd2113721197_)))
                                        (let ((_lp-tl2114221210_
                                               (##cdr _e2114021203_))
                                              (_lp-hd2114121207_
                                               (##car _e2114021203_)))
                                          (_loop2113921193_
                                           _lp-tl2114221210_
                                           (cons _lp-hd2114121207_
                                                 _arg2114321200_))))
                                      (let ((_arg2114421213_
                                             (reverse _arg2114321200_)))
                                        (let ((_L21217_ _arg2114421213_)
                                              (_L21219_ _hd2113421181_)
                                              (_L21220_ _hd2113121171_))
                                          (if (gx#identifier? _L21220_)
                                              (___kont3832538326_
                                               _L21217_
                                               _L21219_
                                               _L21220_)
                                              (_g2110121150_))))))))
                        (_loop2113921193_ _target2113621187_ '()))))
                   (___match3835538356_
                    (lambda (_e2110621256_
                             _hd2110721260_
                             _tl2110821263_
                             _e2110921266_
                             _hd2111021270_
                             _tl2111121273_
                             _e2111221276_
                             _hd2111321280_
                             _tl2111421283_
                             ___splice3832338324_
                             _target2111521286_
                             _tl2111721289_)
                      (letrec ((_loop2111821292_
                                (lambda (_hd2111621296_ _arg2112221299_)
                                  (if (gx#stx-pair? _hd2111621296_)
                                      (let ((_e2111921302_
                                             (gx#syntax-e _hd2111621296_)))
                                        (let ((_lp-tl2112121309_
                                               (##cdr _e2111921302_))
                                              (_lp-hd2112021306_
                                               (##car _e2111921302_)))
                                          (_loop2111821292_
                                           _lp-tl2112121309_
                                           (cons _lp-hd2112021306_
                                                 _arg2112221299_))))
                                      (let ((_arg2112321312_
                                             (reverse _arg2112221299_)))
                                        (let ((_L21316_ _arg2112321312_)
                                              (_L21318_ _hd2111321280_)
                                              (_L21319_ _hd2111021270_))
                                          (if (and (gx#identifier? _L21319_)
                                                   (gx#stx-ormap
                                                    gx#ellipsis?
                                                    (foldr (lambda (_g2133821341_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2133921344_)
                     (cons _g2133821341_ _g2133921344_))
                   '()
                   _L21316_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont3832138322_
                                               _L21316_
                                               _L21318_
                                               _L21319_)
                                              (___match3838138382_
                                               _e2110621256_
                                               _hd2110721260_
                                               _tl2110821263_
                                               _e2110921266_
                                               _hd2111021270_
                                               _tl2111121273_
                                               _e2111221276_
                                               _hd2111321280_
                                               _tl2111421283_
                                               ___splice3832338324_
                                               _target2111521286_
                                               _tl2111721289_))))))))
                        (_loop2111821292_ _target2111521286_ '())))))
              (if (gx#stx-pair? ___stx3831838319_)
                  (let ((_e2110621256_ (gx#syntax-e ___stx3831838319_)))
                    (let ((_tl2110821263_ (##cdr _e2110621256_))
                          (_hd2110721260_ (##car _e2110621256_)))
                      (if (gx#stx-pair? _tl2110821263_)
                          (let ((_e2110921266_ (gx#syntax-e _tl2110821263_)))
                            (let ((_tl2111121273_ (##cdr _e2110921266_))
                                  (_hd2111021270_ (##car _e2110921266_)))
                              (if (gx#stx-pair? _tl2111121273_)
                                  (let ((_e2111221276_
                                         (gx#syntax-e _tl2111121273_)))
                                    (let ((_tl2111421283_
                                           (##cdr _e2111221276_))
                                          (_hd2111321280_
                                           (##car _e2111221276_)))
                                      (if (gx#stx-pair/null? _tl2111421283_)
                                          (let ((___splice3832338324_
                                                 (gx#syntax-split-splice
                                                  _tl2111421283_
                                                  '0)))
                                            (let ((_tl2111721289_
                                                   (##vector-ref
                                                    ___splice3832338324_
                                                    '1))
                                                  (_target2111521286_
                                                   (##vector-ref
                                                    ___splice3832338324_
                                                    '0)))
                                              (if (gx#stx-null? _tl2111721289_)
                                                  (___match3835538356_
                                                   _e2110621256_
                                                   _hd2110721260_
                                                   _tl2110821263_
                                                   _e2110921266_
                                                   _hd2111021270_
                                                   _tl2111121273_
                                                   _e2111221276_
                                                   _hd2111321280_
                                                   _tl2111421283_
                                                   ___splice3832338324_
                                                   _target2111521286_
                                                   _tl2111721289_)
                                                  (_g2110121150_))))
                                          (_g2110121150_))))
                                  (_g2110121150_))))
                          (_g2110121150_))))
                  (_g2110121150_)))))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@|
      (lambda (_$stx21361_)
        (let* ((___stx3838438385_ _$stx21361_)
               (_g2136621406_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3838438385_))))
          (let ((___kont3838738388_
                 (lambda (_L21544_ _L21546_)
                   (cons (gx#datum->syntax '#f 'slot-ref)
                         (cons _L21546_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _L21544_ '()))
                                     '())))))
                (___kont3838938390_
                 (lambda (_L21473_ _L21475_ _L21476_ _L21477_)
                   (cons _L21477_
                         (cons (cons _L21477_
                                     (cons _L21476_ (cons _L21475_ '())))
                               (foldr (lambda (_g2149821501_ _g2149921504_)
                                        (cons _g2149821501_ _g2149921504_))
                                      '()
                                      _L21473_))))))
            (let* ((___match3843938440_
                    (lambda (_e2138321413_
                             _hd2138421417_
                             _tl2138521420_
                             _e2138621423_
                             _hd2138721427_
                             _tl2138821430_
                             _e2138921433_
                             _hd2139021437_
                             _tl2139121440_
                             ___splice3839138392_
                             _target2139221443_
                             _tl2139421446_)
                      (letrec ((_loop2139521449_
                                (lambda (_hd2139321453_ _rest2139921456_)
                                  (if (gx#stx-pair? _hd2139321453_)
                                      (let ((_e2139621459_
                                             (gx#syntax-e _hd2139321453_)))
                                        (let ((_lp-tl2139821466_
                                               (##cdr _e2139621459_))
                                              (_lp-hd2139721463_
                                               (##car _e2139621459_)))
                                          (_loop2139521449_
                                           _lp-tl2139821466_
                                           (cons _lp-hd2139721463_
                                                 _rest2139921456_))))
                                      (let ((_rest2140021469_
                                             (reverse _rest2139921456_)))
                                        (___kont3838938390_
                                         _rest2140021469_
                                         _hd2139021437_
                                         _hd2138721427_
                                         _hd2138421417_))))))
                        (_loop2139521449_ _target2139221443_ '()))))
                   (___match3841338414_
                    (lambda (_e2137021514_
                             _hd2137121518_
                             _tl2137221521_
                             _e2137321524_
                             _hd2137421528_
                             _tl2137521531_
                             _e2137621534_
                             _hd2137721538_
                             _tl2137821541_)
                      (let ((_L21544_ _hd2137721538_)
                            (_L21546_ _hd2137421528_))
                        (if (gx#identifier? _L21544_)
                            (___kont3838738388_ _L21544_ _L21546_)
                            (if (gx#stx-pair/null? _tl2137821541_)
                                (let ((___splice3839138392_
                                       (gx#syntax-split-splice
                                        _tl2137821541_
                                        '0)))
                                  (let ((_tl2139421446_
                                         (##vector-ref
                                          ___splice3839138392_
                                          '1))
                                        (_target2139221443_
                                         (##vector-ref
                                          ___splice3839138392_
                                          '0)))
                                    (if (gx#stx-null? _tl2139421446_)
                                        (___match3843938440_
                                         _e2137021514_
                                         _hd2137121518_
                                         _tl2137221521_
                                         _e2137321524_
                                         _hd2137421528_
                                         _tl2137521531_
                                         _e2137621534_
                                         _hd2137721538_
                                         _tl2137821541_
                                         ___splice3839138392_
                                         _target2139221443_
                                         _tl2139421446_)
                                        (_g2136621406_))))
                                (_g2136621406_)))))))
              (if (gx#stx-pair? ___stx3838438385_)
                  (let ((_e2137021514_ (gx#syntax-e ___stx3838438385_)))
                    (let ((_tl2137221521_ (##cdr _e2137021514_))
                          (_hd2137121518_ (##car _e2137021514_)))
                      (if (gx#stx-pair? _tl2137221521_)
                          (let ((_e2137321524_ (gx#syntax-e _tl2137221521_)))
                            (let ((_tl2137521531_ (##cdr _e2137321524_))
                                  (_hd2137421528_ (##car _e2137321524_)))
                              (if (gx#stx-pair? _tl2137521531_)
                                  (let ((_e2137621534_
                                         (gx#syntax-e _tl2137521531_)))
                                    (let ((_tl2137821541_
                                           (##cdr _e2137621534_))
                                          (_hd2137721538_
                                           (##car _e2137621534_)))
                                      (if (gx#stx-null? _tl2137821541_)
                                          (___match3841338414_
                                           _e2137021514_
                                           _hd2137121518_
                                           _tl2137221521_
                                           _e2137321524_
                                           _hd2137421528_
                                           _tl2137521531_
                                           _e2137621534_
                                           _hd2137721538_
                                           _tl2137821541_)
                                          (if (gx#stx-pair/null?
                                               _tl2137821541_)
                                              (let ((___splice3839138392_
                                                     (gx#syntax-split-splice
                                                      _tl2137821541_
                                                      '0)))
                                                (let ((_tl2139421446_
                                                       (##vector-ref
                                                        ___splice3839138392_
                                                        '1))
                                                      (_target2139221443_
                                                       (##vector-ref
                                                        ___splice3839138392_
                                                        '0)))
                                                  (if (gx#stx-null?
                                                       _tl2139421446_)
                                                      (___match3843938440_
                                                       _e2137021514_
                                                       _hd2137121518_
                                                       _tl2137221521_
                                                       _e2137321524_
                                                       _hd2137421528_
                                                       _tl2137521531_
                                                       _e2137621534_
                                                       _hd2137721538_
                                                       _tl2137821541_
                                                       ___splice3839138392_
                                                       _target2139221443_
                                                       _tl2139421446_)
                                                      (_g2136621406_))))
                                              (_g2136621406_)))))
                                  (_g2136621406_))))
                          (_g2136621406_))))
                  (_g2136621406_)))))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@-set!|
      (lambda (_$stx21566_)
        (let* ((___stx3844238443_ _$stx21566_)
               (_g2157121623_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3844238443_))))
          (let ((___kont3844538446_
                 (lambda (_L21799_ _L21801_ _L21802_)
                   (cons (gx#datum->syntax '#f 'slot-set!)
                         (cons _L21802_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _L21801_ '()))
                                     (cons _L21799_ '()))))))
                (___kont3844738448_
                 (lambda (_L21710_
                          _L21712_
                          _L21713_
                          _L21714_
                          _L21715_
                          _L21716_)
                   (cons _L21716_
                         (cons (cons (gx#datum->syntax '#f '@)
                                     (cons _L21715_
                                           (cons _L21714_
                                                 (foldr (lambda (_g2174321746_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2174421749_)
                  (cons _g2174321746_ _g2174421749_))
                '()
                _L21713_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _L21712_ (cons _L21710_ '())))))))
            (let* ((___match3851738518_
                    (lambda (_e2159421630_
                             _hd2159521634_
                             _tl2159621637_
                             _e2159721640_
                             _hd2159821644_
                             _tl2159921647_
                             _e2160021650_
                             _hd2160121654_
                             _tl2160221657_
                             ___splice3844938450_
                             _target2160321660_
                             _tl2160521663_
                             _e2161221666_
                             _hd2161321670_
                             _tl2161421673_
                             _e2161521676_
                             _hd2161621680_
                             _tl2161721683_)
                      (letrec ((_loop2160621686_
                                (lambda (_hd2160421690_ _path2161021693_)
                                  (if (gx#stx-pair? _hd2160421690_)
                                      (let ((_e2160721696_
                                             (gx#syntax-e _hd2160421690_)))
                                        (let ((_lp-tl2160921703_
                                               (##cdr _e2160721696_))
                                              (_lp-hd2160821700_
                                               (##car _e2160721696_)))
                                          (_loop2160621686_
                                           _lp-tl2160921703_
                                           (cons _lp-hd2160821700_
                                                 _path2161021693_))))
                                      (let ((_path2161121706_
                                             (reverse _path2161021693_)))
                                        (___kont3844738448_
                                         _hd2161621680_
                                         _hd2161321670_
                                         _path2161121706_
                                         _hd2160121654_
                                         _hd2159821644_
                                         _hd2159521634_))))))
                        (_loop2160621686_ _target2160321660_ '()))))
                   (___match3847738478_
                    (lambda (_e2157621759_
                             _hd2157721763_
                             _tl2157821766_
                             _e2157921769_
                             _hd2158021773_
                             _tl2158121776_
                             _e2158221779_
                             _hd2158321783_
                             _tl2158421786_
                             _e2158521789_
                             _hd2158621793_
                             _tl2158721796_)
                      (let ((_L21799_ _hd2158621793_)
                            (_L21801_ _hd2158321783_)
                            (_L21802_ _hd2158021773_))
                        (if (gx#identifier? _L21801_)
                            (___kont3844538446_ _L21799_ _L21801_ _L21802_)
                            (if (gx#stx-pair/null? _tl2158421786_)
                                (if (fx>= (gx#stx-length _tl2158421786_) '2)
                                    (let ((___splice3844938450_
                                           (gx#syntax-split-splice
                                            _tl2158421786_
                                            '2)))
                                      (let ((_tl2160521663_
                                             (##vector-ref
                                              ___splice3844938450_
                                              '1))
                                            (_target2160321660_
                                             (##vector-ref
                                              ___splice3844938450_
                                              '0)))
                                        (if (gx#stx-pair? _tl2160521663_)
                                            (let ((_e2161221666_
                                                   (gx#syntax-e
                                                    _tl2160521663_)))
                                              (let ((_tl2161421673_
                                                     (##cdr _e2161221666_))
                                                    (_hd2161321670_
                                                     (##car _e2161221666_)))
                                                (if (gx#stx-pair?
                                                     _tl2161421673_)
                                                    (let ((_e2161521676_
                                                           (gx#syntax-e
                                                            _tl2161421673_)))
                                                      (let ((_tl2161721683_
                                                             (##cdr _e2161521676_))
                                                            (_hd2161621680_
                                                             (##car _e2161521676_)))
                                                        (if (gx#stx-null?
                                                             _tl2161721683_)
                                                            (___match3851738518_
                                                             _e2157621759_
                                                             _hd2157721763_
                                                             _tl2157821766_
                                                             _e2157921769_
                                                             _hd2158021773_
                                                             _tl2158121776_
                                                             _e2158221779_
                                                             _hd2158321783_
                                                             _tl2158421786_
                                                             ___splice3844938450_
                                                             _target2160321660_
                                                             _tl2160521663_
                                                             _e2161221666_
                                                             _hd2161321670_
                                                             _tl2161421673_
                                                             _e2161521676_
                                                             _hd2161621680_
                                                             _tl2161721683_)
                                                            (_g2157121623_))))
                                                    (_g2157121623_))))
                                            (_g2157121623_))))
                                    (_g2157121623_))
                                (_g2157121623_)))))))
              (if (gx#stx-pair? ___stx3844238443_)
                  (let ((_e2157621759_ (gx#syntax-e ___stx3844238443_)))
                    (let ((_tl2157821766_ (##cdr _e2157621759_))
                          (_hd2157721763_ (##car _e2157621759_)))
                      (if (gx#stx-pair? _tl2157821766_)
                          (let ((_e2157921769_ (gx#syntax-e _tl2157821766_)))
                            (let ((_tl2158121776_ (##cdr _e2157921769_))
                                  (_hd2158021773_ (##car _e2157921769_)))
                              (if (gx#stx-pair? _tl2158121776_)
                                  (let ((_e2158221779_
                                         (gx#syntax-e _tl2158121776_)))
                                    (let ((_tl2158421786_
                                           (##cdr _e2158221779_))
                                          (_hd2158321783_
                                           (##car _e2158221779_)))
                                      (if (gx#stx-pair? _tl2158421786_)
                                          (let ((_e2158521789_
                                                 (gx#syntax-e _tl2158421786_)))
                                            (let ((_tl2158721796_
                                                   (##cdr _e2158521789_))
                                                  (_hd2158621793_
                                                   (##car _e2158521789_)))
                                              (if (gx#stx-null? _tl2158721796_)
                                                  (___match3847738478_
                                                   _e2157621759_
                                                   _hd2157721763_
                                                   _tl2157821766_
                                                   _e2157921769_
                                                   _hd2158021773_
                                                   _tl2158121776_
                                                   _e2158221779_
                                                   _hd2158321783_
                                                   _tl2158421786_
                                                   _e2158521789_
                                                   _hd2158621793_
                                                   _tl2158721796_)
                                                  (if (gx#stx-pair/null?
                                                       _tl2158421786_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2158421786_)
                        '2)
                  (let ((___splice3844938450_
                         (gx#syntax-split-splice _tl2158421786_ '2)))
                    (let ((_tl2160521663_
                           (##vector-ref ___splice3844938450_ '1))
                          (_target2160321660_
                           (##vector-ref ___splice3844938450_ '0)))
                      (if (gx#stx-pair? _tl2160521663_)
                          (let ((_e2161221666_ (gx#syntax-e _tl2160521663_)))
                            (let ((_tl2161421673_ (##cdr _e2161221666_))
                                  (_hd2161321670_ (##car _e2161221666_)))
                              (if (gx#stx-pair? _tl2161421673_)
                                  (let ((_e2161521676_
                                         (gx#syntax-e _tl2161421673_)))
                                    (let ((_tl2161721683_
                                           (##cdr _e2161521676_))
                                          (_hd2161621680_
                                           (##car _e2161521676_)))
                                      (if (gx#stx-null? _tl2161721683_)
                                          (___match3851738518_
                                           _e2157621759_
                                           _hd2157721763_
                                           _tl2157821766_
                                           _e2157921769_
                                           _hd2158021773_
                                           _tl2158121776_
                                           _e2158221779_
                                           _hd2158321783_
                                           _tl2158421786_
                                           ___splice3844938450_
                                           _target2160321660_
                                           _tl2160521663_
                                           _e2161221666_
                                           _hd2161321670_
                                           _tl2161421673_
                                           _e2161521676_
                                           _hd2161621680_
                                           _tl2161721683_)
                                          (_g2157121623_))))
                                  (_g2157121623_))))
                          (_g2157121623_))))
                  (_g2157121623_))
              (_g2157121623_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _tl2158421786_)
                                              (if (fx>= (gx#stx-length
                                                         _tl2158421786_)
                                                        '2)
                                                  (let ((___splice3844938450_
                                                         (gx#syntax-split-splice
                                                          _tl2158421786_
                                                          '2)))
                                                    (let ((_tl2160521663_
                                                           (##vector-ref
                                                            ___splice3844938450_
                                                            '1))
                                                          (_target2160321660_
                                                           (##vector-ref
                                                            ___splice3844938450_
                                                            '0)))
                                                      (if (gx#stx-pair?
                                                           _tl2160521663_)
                                                          (let ((_e2161221666_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2160521663_)))
                    (let ((_tl2161421673_ (##cdr _e2161221666_))
                          (_hd2161321670_ (##car _e2161221666_)))
                      (if (gx#stx-pair? _tl2161421673_)
                          (let ((_e2161521676_ (gx#syntax-e _tl2161421673_)))
                            (let ((_tl2161721683_ (##cdr _e2161521676_))
                                  (_hd2161621680_ (##car _e2161521676_)))
                              (if (gx#stx-null? _tl2161721683_)
                                  (___match3851738518_
                                   _e2157621759_
                                   _hd2157721763_
                                   _tl2157821766_
                                   _e2157921769_
                                   _hd2158021773_
                                   _tl2158121776_
                                   _e2158221779_
                                   _hd2158321783_
                                   _tl2158421786_
                                   ___splice3844938450_
                                   _target2160321660_
                                   _tl2160521663_
                                   _e2161221666_
                                   _hd2161321670_
                                   _tl2161421673_
                                   _e2161521676_
                                   _hd2161621680_
                                   _tl2161721683_)
                                  (_g2157121623_))))
                          (_g2157121623_))))
                  (_g2157121623_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2157121623_))
                                              (_g2157121623_)))))
                                  (_g2157121623_))))
                          (_g2157121623_))))
                  (_g2157121623_)))))))))
