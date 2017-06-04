(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<match>[1]#_g29536_|
    (gx#core-quote-syntax 'quasiquote))
  (define |gerbil/core::<match>[1]#_g29537_| (gx#core-quote-syntax 'quote))
  (define |gerbil/core::<match>[1]#_g29540_| (gx#core-quote-syntax 'vector))
  (define |gerbil/core::<match>[1]#_g29541_| (gx#core-quote-syntax 'values))
  (define |gerbil/core::<match>[1]#_g29542_| (gx#core-quote-syntax 'values))
  (define |gerbil/core::<match>[1]#_g29543_| (gx#core-quote-syntax 'box))
  (define |gerbil/core::<match>[1]#_g29544_| (gx#core-quote-syntax '@list))
  (define |gerbil/core::<match>[1]#_g29545_| (gx#core-quote-syntax 'cons*))
  (define |gerbil/core::<match>[1]#_g29546_| (gx#core-quote-syntax 'cons))
  (define |gerbil/core::<match>[1]#_g29547_| (gx#core-quote-syntax 'not))
  (define |gerbil/core::<match>[1]#_g29548_| (gx#core-quote-syntax 'or))
  (define |gerbil/core::<match>[1]#_g29549_| (gx#core-quote-syntax 'and))
  (define |gerbil/core::<match>[1]#_g29550_| (gx#core-quote-syntax '?))
  (define |gerbil/core::<match>[1]#_g29551_| (gx#core-quote-syntax '=>))
  (define |gerbil/core::<match>[1]#_g29552_| (gx#core-quote-syntax '=>))
  (define |gerbil/core::<match>[1]#_g29565_| (gx#core-quote-syntax 'else))
  (define |gerbil/core::<match>[1]#_g29566_| (gx#core-quote-syntax 'else))
  (define |gerbil/core::<match>[1]#_g29567_| (gx#core-quote-syntax '<...>))
  (define |gerbil/core::<match>[1]#_g29568_| (gx#core-quote-syntax '<>))
  (define |gerbil/core::<match>[1]#_g29585_| (gx#core-quote-syntax '=>))
  (define |gerbil/core::<match>[1]#_g29586_| (gx#core-quote-syntax '=>))
  (define |gerbil/core::<match>[1]#_g29587_| (gx#core-quote-syntax 'not))
  (define |gerbil/core::<match>[1]#_g29588_| (gx#core-quote-syntax 'or))
  (define |gerbil/core::<match>[1]#_g29591_| (gx#core-quote-syntax 'and))
  (begin
    (define |gerbil/core::<match>[1]#match-macro::t|
      (make-class-type
       'gerbil.core#match-macro::t
       (cons |gerbil/core::<MOP>::<MOP:3>[1]#macro-object::t| '())
       '()
       'match-macro
       '()
       '#f))
    (define |gerbil/core::<match>[1]#match-macro?|
      (make-class-predicate |gerbil/core::<match>[1]#match-macro::t|))
    (define |gerbil/core::<match>[1]#make-match-macro|
      (lambda _$args23645_
        (apply make-class-instance
               |gerbil/core::<match>[1]#match-macro::t|
               _$args23645_)))
    (define |gerbil/core::<match>[1]#syntax-local-match-macro?|
      (lambda (_stx23642_)
        (if (gx#identifier? _stx23642_)
            (|gerbil/core::<match>[1]#match-macro?|
             (gx#syntax-local-value _stx23642_ false))
            '#f)))
    (define |gerbil/core::<match>[1]#parse-match-pattern|
      (let ((_opt-lambda2202423628_
             (lambda (_stx22026_ _match-stx22028_)
               (let ((_parse-qq22036_
                      (lambda (_hd22042_)
                        (let ((_g2204422051_
                               (lambda (_g2204522047_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g2204522047_))))
                          (_g2204422051_ _hd22042_)))))
                 (let ((_parse-error22037_
                        (lambda (_hd22039_)
                          (apply gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; illegal pattern"
                                 (if _match-stx22028_
                                     (cons _match-stx22028_
                                           (cons _stx22026_
                                                 (cons _hd22039_ '())))
                                     (cons _stx22026_
                                           (cons _hd22039_ '())))))))
                   (letrec ((_parse122030_
                             (lambda (_hd22377_)
                               (let ((_g2240222533_
                                      (lambda (_g2240322529_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g2240322529_))))
                                 (let ((_g2240122544_
                                        (lambda (_g2240322537_)
                                          ((lambda ()
                                             (_parse-error22037_
                                              _hd22377_))))))
                                   (let ((_g2240022562_
                                          (lambda (_g2240322548_)
                                            ((lambda (_L22551_)
                                               (if (gx#stx-datum? _L22551_)
                                                   (cons 'datum:
                                                         (cons (gx#stx-e
                                                                _L22551_)
                                                               '()))
                                                   (_g2240122544_
                                                    _g2240322548_)))
                                             _g2240322548_))))
                                     (let ((_g2239922578_
                                            (lambda (_g2240322566_)
                                              ((lambda (_L22569_)
                                                 (if (if (gx#identifier?
                                                          _L22569_)
                                                         (not (gx#ellipsis?
                                                               _L22569_))
                                                         '#f)
                                                     (cons 'var:
                                                           (cons _L22569_ '()))
                                                     (_g2240022562_
                                                      _g2240322566_)))
                                               _g2240322566_))))
                                       (let ((_g2239822594_
                                              (lambda (_g2240322582_)
                                                ((lambda (_L22585_)
                                                   (if (gx#underscore?
                                                        _L22585_)
                                                       (cons 'any: '())
                                                       (_g2239922578_
                                                        _g2240322582_)))
                                                 _g2240322582_))))
                                         (let ((_g2239722626_
                                                (lambda (_g2240322598_)
                                                  (if (gx#stx-pair?
                                                       _g2240322598_)
                                                      (let ((_e2252222601_
                                                             (gx#syntax-e
                                                              _g2240322598_)))
                                                        (let ((_hd2252322605_
                                                               (##car _e2252222601_))
                                                              (_tl2252422608_
                                                               (##cdr _e2252222601_)))
                                                          ((lambda (_L22611_)
                                                             (if (|gerbil/core::<match>[1]#syntax-local-match-macro?|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L22611_)
                         (_parse122030_
                          (gx#core-apply-expander
                           (gx#syntax-local-e _L22611_)
                           (gx#stx-wrap-source
                            (cons 'match: _hd22377_)
                            (let ((_$e22622_ (gx#stx-source _hd22377_)))
                              (if _$e22622_
                                  _$e22622_
                                  (gx#stx-source _stx22026_))))))
                         (_g2239822594_ _g2240322598_)))
                   _hd2252322605_)))
              (_g2239822594_ _g2240322598_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_g2239622666_
                                                  (lambda (_g2240322630_)
                                                    (if (gx#stx-pair?
                                                         _g2240322630_)
                                                        (let ((_e2251522633_
                                                               (gx#syntax-e
                                                                _g2240322630_)))
                                                          (let ((_hd2251622637_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2251522633_))
                        (_tl2251722640_ (##cdr _e2251522633_)))
                    (if (gx#identifier? _hd2251622637_)
                        (if (gx#free-identifier=?
                             |gerbil/core::<match>[1]#_g29536_|
                             _hd2251622637_)
                            (if (gx#stx-pair? _tl2251722640_)
                                (let ((_e2251822643_
                                       (gx#syntax-e _tl2251722640_)))
                                  (let ((_hd2251922647_ (##car _e2251822643_))
                                        (_tl2252022650_ (##cdr _e2251822643_)))
                                    (if (gx#stx-null? _tl2252022650_)
                                        ((lambda (_L22653_)
                                           (_parse-qq22036_ _L22653_))
                                         _hd2251922647_)
                                        (_g2239722626_ _g2240322630_))))
                                (_g2239722626_ _g2240322630_))
                            (_g2239722626_ _g2240322630_))
                        (_g2239722626_ _g2240322630_))))
                (_g2239722626_ _g2240322630_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_g2239522706_
                                                    (lambda (_g2240322670_)
                                                      (if (gx#stx-pair?
                                                           _g2240322670_)
                                                          (let ((_e2250822673_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _g2240322670_)))
                    (let ((_hd2250922677_ (##car _e2250822673_))
                          (_tl2251022680_ (##cdr _e2250822673_)))
                      (if (gx#identifier? _hd2250922677_)
                          (if (gx#free-identifier=?
                               |gerbil/core::<match>[1]#_g29537_|
                               _hd2250922677_)
                              (if (gx#stx-pair? _tl2251022680_)
                                  (let ((_e2251122683_
                                         (gx#syntax-e _tl2251022680_)))
                                    (let ((_hd2251222687_
                                           (##car _e2251122683_))
                                          (_tl2251322690_
                                           (##cdr _e2251122683_)))
                                      (if (gx#stx-null? _tl2251322690_)
                                          ((lambda (_L22693_)
                                             (cons 'datum:
                                                   (cons (gx#stx-e _L22693_)
                                                         '())))
                                           _hd2251222687_)
                                          (_g2239622666_ _g2240322670_))))
                                  (_g2239622666_ _g2240322670_))
                              (_g2239622666_ _g2240322670_))
                          (_g2239622666_ _g2240322670_))))
                  (_g2239622666_ _g2240322670_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_g2239422756_
                                                      (lambda (_g2240322710_)
                                                        (if (gx#stx-pair?
                                                             _g2240322710_)
                                                            (let ((_e2250122713_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _g2240322710_)))
                      (let ((_hd2250222717_ (##car _e2250122713_))
                            (_tl2250322720_ (##cdr _e2250122713_)))
                        (if (gx#stx-pair? _tl2250322720_)
                            (let ((_e2250422723_ (gx#syntax-e _tl2250322720_)))
                              (let ((_hd2250522727_ (##car _e2250422723_))
                                    (_tl2250622730_ (##cdr _e2250422723_)))
                                (if (gx#stx-null? _tl2250622730_)
                                    ((lambda (_L22733_ _L22735_)
                                       (if (if (gx#identifier? _L22735_)
                                               (let ((_$e22748_
                                                      (gx#free-identifier=?
                                                       _L22735_
                                                       (gx#datum->syntax
                                                        '#f
                                                        'eq?))))
                                                 (if _$e22748_
                                                     _$e22748_
                                                     (let ((_$e22752_
                                                            (gx#free-identifier=?
                                                             _L22735_
                                                             (gx#datum->syntax
                                                              '#f
                                                              'eqv?))))
                                                       (if _$e22752_
                                                           _$e22752_
                                                           (gx#free-identifier=?
                                                            _L22735_
                                                            (gx#datum->syntax
                                                             '#f
                                                             'equal?))))))
                                               '#f)
                                           (cons '?:
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'cut)
                                                             (cons _L22735_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f '<>)
                                 (cons _L22733_ '()))))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g2239522706_ _g2240322710_)))
                                     _hd2250522727_
                                     _hd2250222717_)
                                    (_g2239522706_ _g2240322710_))))
                            (_g2239522706_ _g2240322710_))))
                    (_g2239522706_ _g2240322710_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_g2239322786_
                                                        (lambda (_g2240322760_)
                                                          (if (gx#stx-pair?
                                                               _g2240322760_)
                                                              (let ((_e2249622763_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _g2240322760_)))
                        (let ((_hd2249722767_ (##car _e2249622763_))
                              (_tl2249822770_ (##cdr _e2249622763_)))
                          ((lambda (_L22773_ _L22775_)
                             (if (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-class-info?|
                                  _L22775_)
                                 (cons 'class:
                                       (cons (gx#syntax-local-value _L22775_)
                                             (cons (_parse-class-body22035_
                                                    _L22773_)
                                                   '())))
                                 (_g2239422756_ _g2240322760_)))
                           _tl2249822770_
                           _hd2249722767_)))
                      (_g2239422756_ _g2240322760_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_g2239222816_
                                                          (lambda (_g2240322790_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2240322790_)
                        (let ((_e2249122793_ (gx#syntax-e _g2240322790_)))
                          (let ((_hd2249222797_ (##car _e2249122793_))
                                (_tl2249322800_ (##cdr _e2249122793_)))
                            ((lambda (_L22803_ _L22805_)
                               (if (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-struct-info?|
                                    _L22805_)
                                   (cons 'struct:
                                         (cons (gx#syntax-local-value _L22805_)
                                               (cons (_parse-vector22033_
                                                      _L22803_)
                                                     '())))
                                   (_g2239322786_ _g2240322790_)))
                             _tl2249322800_
                             _hd2249222797_)))
                        (_g2239322786_ _g2240322790_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_g2239122879_
                                                            (lambda (_g2240322820_)
                                                              (if (gx#stx-vector?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2240322820_)
                          (let ((_e2247922823_
                                 (vector->list (gx#syntax-e _g2240322820_))))
                            (if (gx#stx-pair/null? _e2247922823_)
                                (if (fx>= (gx#stx-length _e2247922823_) '0)
                                    (let ((_g29538_
                                           (gx#syntax-split-splice
                                            _e2247922823_
                                            '0)))
                                      (begin
                                        (let ((_g29539_
                                               (values-count _g29538_)))
                                          (if (not (fx= _g29539_ 2))
                                              (error "Context expects 2 values"
                                                     _g29539_)))
                                        (let ((_target2248022827_
                                               (values-ref _g29538_ 0))
                                              (_tl2248222830_
                                               (values-ref _g29538_ 1)))
                                          (if (gx#stx-null? _tl2248222830_)
                                              (letrec ((_loop2248322833_
                                                        (lambda (_hd2248122837_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body2248722840_)
                  (if (gx#stx-pair? _hd2248122837_)
                      (let ((_e2248422843_ (gx#syntax-e _hd2248122837_)))
                        (let ((_lp-hd2248522847_ (##car _e2248422843_))
                              (_lp-tl2248622850_ (##cdr _e2248422843_)))
                          (_loop2248322833_
                           _lp-tl2248622850_
                           (cons _lp-hd2248522847_ _body2248722840_))))
                      (let ((_body2248822853_ (reverse _body2248722840_)))
                        ((lambda (_L22857_)
                           (cons 'vector:
                                 (cons (_parse-vector22033_
                                        (begin
                                          '#!void
                                          (foldr (lambda (_g2287022873_
                                                          _g2287122876_)
                                                   (cons _g2287022873_
                                                         _g2287122876_))
                                                 '()
                                                 _L22857_)))
                                       '())))
                         _body2248822853_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop2248322833_
                                                 _target2248022827_
                                                 '()))
                                              (_g2239222816_ _g2240322820_)))))
                                    (_g2239222816_ _g2240322820_))
                                (_g2239222816_ _g2240322820_)))
                          (_g2239222816_ _g2240322820_)))))
               (let ((_g2239022907_
                      (lambda (_g2240322883_)
                        (if (gx#stx-pair? _g2240322883_)
                            (let ((_e2247522886_ (gx#syntax-e _g2240322883_)))
                              (let ((_hd2247622890_ (##car _e2247522886_))
                                    (_tl2247722893_ (##cdr _e2247522886_)))
                                (if (gx#identifier? _hd2247622890_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core::<match>[1]#_g29540_|
                                         _hd2247622890_)
                                        ((lambda (_L22896_)
                                           (cons 'vector:
                                                 (cons (_parse-vector22033_
                                                        _L22896_)
                                                       '())))
                                         _tl2247722893_)
                                        (_g2239122879_ _g2240322883_))
                                    (_g2239122879_ _g2240322883_))))
                            (_g2239122879_ _g2240322883_)))))
                 (let ((_g2238922935_
                        (lambda (_g2240322911_)
                          (if (gx#stx-pair? _g2240322911_)
                              (let ((_e2247122914_
                                     (gx#syntax-e _g2240322911_)))
                                (let ((_hd2247222918_ (##car _e2247122914_))
                                      (_tl2247322921_ (##cdr _e2247122914_)))
                                  (if (gx#identifier? _hd2247222918_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core::<match>[1]#_g29541_|
                                           _hd2247222918_)
                                          ((lambda (_L22924_)
                                             (cons 'values:
                                                   (cons (_parse-vector22033_
                                                          _L22924_)
                                                         '())))
                                           _tl2247322921_)
                                          (_g2239022907_ _g2240322911_))
                                      (_g2239022907_ _g2240322911_))))
                              (_g2239022907_ _g2240322911_)))))
                   (let ((_g2238822975_
                          (lambda (_g2240322939_)
                            (if (gx#stx-pair? _g2240322939_)
                                (let ((_e2246422942_
                                       (gx#syntax-e _g2240322939_)))
                                  (let ((_hd2246522946_ (##car _e2246422942_))
                                        (_tl2246622949_ (##cdr _e2246422942_)))
                                    (if (gx#identifier? _hd2246522946_)
                                        (if (gx#free-identifier=?
                                             |gerbil/core::<match>[1]#_g29542_|
                                             _hd2246522946_)
                                            (if (gx#stx-pair? _tl2246622949_)
                                                (let ((_e2246722952_
                                                       (gx#syntax-e
                                                        _tl2246622949_)))
                                                  (let ((_hd2246822956_
                                                         (##car _e2246722952_))
                                                        (_tl2246922959_
                                                         (##cdr _e2246722952_)))
                                                    (if (gx#stx-null?
                                                         _tl2246922959_)
                                                        ((lambda (_L22962_)
                                                           (_parse122030_
                                                            _L22962_))
                                                         _hd2246822956_)
                                                        (_g2238922935_
                                                         _g2240322939_))))
                                                (_g2238922935_ _g2240322939_))
                                            (_g2238922935_ _g2240322939_))
                                        (_g2238922935_ _g2240322939_))))
                                (_g2238922935_ _g2240322939_)))))
                     (let ((_g2238722996_
                            (lambda (_g2240322979_)
                              (if (gx#stx-box? _g2240322979_)
                                  (let ((_e2246222982_
                                         (unbox (gx#syntax-e _g2240322979_))))
                                    ((lambda (_L22986_)
                                       (cons 'box:
                                             (cons (_parse122030_ _L22986_)
                                                   '())))
                                     _e2246222982_))
                                  (_g2238822975_ _g2240322979_)))))
                       (let ((_g2238623036_
                              (lambda (_g2240323000_)
                                (if (gx#stx-pair? _g2240323000_)
                                    (let ((_e2245523003_
                                           (gx#syntax-e _g2240323000_)))
                                      (let ((_hd2245623007_
                                             (##car _e2245523003_))
                                            (_tl2245723010_
                                             (##cdr _e2245523003_)))
                                        (if (gx#identifier? _hd2245623007_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core::<match>[1]#_g29543_|
                                                 _hd2245623007_)
                                                (if (gx#stx-pair?
                                                     _tl2245723010_)
                                                    (let ((_e2245823013_
                                                           (gx#syntax-e
                                                            _tl2245723010_)))
                                                      (let ((_hd2245923017_
                                                             (##car _e2245823013_))
                                                            (_tl2246023020_
                                                             (##cdr _e2245823013_)))
                                                        (if (gx#stx-null?
                                                             _tl2246023020_)
                                                            ((lambda (_L23023_)
                                                               (cons 'box:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (_parse122030_ _L23023_) '())))
                     _hd2245923017_)
                    (_g2238722996_ _g2240323000_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2238722996_
                                                     _g2240323000_))
                                                (_g2238722996_ _g2240323000_))
                                            (_g2238722996_ _g2240323000_))))
                                    (_g2238722996_ _g2240323000_)))))
                         (let ((_g2238523064_
                                (lambda (_g2240323040_)
                                  (if (gx#stx-pair? _g2240323040_)
                                      (let ((_e2245123043_
                                             (gx#syntax-e _g2240323040_)))
                                        (let ((_hd2245223047_
                                               (##car _e2245123043_))
                                              (_tl2245323050_
                                               (##cdr _e2245123043_)))
                                          (if (gx#identifier? _hd2245223047_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core::<match>[1]#_g29544_|
                                                   _hd2245223047_)
                                                  ((lambda (_L23053_)
                                                     (_parse-list22032_
                                                      _L23053_))
                                                   _tl2245323050_)
                                                  (_g2238623036_
                                                   _g2240323040_))
                                              (_g2238623036_ _g2240323040_))))
                                      (_g2238623036_ _g2240323040_)))))
                           (let ((_g2238423120_
                                  (lambda (_g2240323068_)
                                    (if (gx#stx-pair? _g2240323068_)
                                        (let ((_e2244123071_
                                               (gx#syntax-e _g2240323068_)))
                                          (let ((_hd2244223075_
                                                 (##car _e2244123071_))
                                                (_tl2244323078_
                                                 (##cdr _e2244123071_)))
                                            (if (gx#identifier? _hd2244223075_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core::<match>[1]#_g29545_|
                                                     _hd2244223075_)
                                                    (if (gx#stx-pair?
                                                         _tl2244323078_)
                                                        (let ((_e2244423081_
                                                               (gx#syntax-e
                                                                _tl2244323078_)))
                                                          (let ((_hd2244523085_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2244423081_))
                        (_tl2244623088_ (##cdr _e2244423081_)))
                    (if (gx#stx-pair? _tl2244623088_)
                        (let ((_e2244723091_ (gx#syntax-e _tl2244623088_)))
                          (let ((_hd2244823095_ (##car _e2244723091_))
                                (_tl2244923098_ (##cdr _e2244723091_)))
                            ((lambda (_L23101_ _L23103_ _L23104_)
                               (if (gx#stx-null? _L23101_)
                                   (cons 'cons:
                                         (cons (_parse122030_ _L23104_)
                                               (cons (_parse122030_ _L23103_)
                                                     '())))
                                   (cons 'cons:
                                         (cons (_parse122030_ _L23104_)
                                               (cons (_parse122030_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'cons*)
                                                            (cons _L23103_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L23101_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                             _tl2244923098_
                             _hd2244823095_
                             _hd2244523085_)))
                        (_g2238523064_ _g2240323068_))))
                (_g2238523064_ _g2240323068_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2238523064_
                                                     _g2240323068_))
                                                (_g2238523064_
                                                 _g2240323068_))))
                                        (_g2238523064_ _g2240323068_)))))
                             (let ((_g2238323174_
                                    (lambda (_g2240323124_)
                                      (if (gx#stx-pair? _g2240323124_)
                                          (let ((_e2242923127_
                                                 (gx#syntax-e _g2240323124_)))
                                            (let ((_hd2243023131_
                                                   (##car _e2242923127_))
                                                  (_tl2243123134_
                                                   (##cdr _e2242923127_)))
                                              (if (gx#identifier?
                                                   _hd2243023131_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core::<match>[1]#_g29546_|
                                                       _hd2243023131_)
                                                      (if (gx#stx-pair?
                                                           _tl2243123134_)
                                                          (let ((_e2243223137_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2243123134_)))
                    (let ((_hd2243323141_ (##car _e2243223137_))
                          (_tl2243423144_ (##cdr _e2243223137_)))
                      (if (gx#stx-pair? _tl2243423144_)
                          (let ((_e2243523147_ (gx#syntax-e _tl2243423144_)))
                            (let ((_hd2243623151_ (##car _e2243523147_))
                                  (_tl2243723154_ (##cdr _e2243523147_)))
                              (if (gx#stx-null? _tl2243723154_)
                                  ((lambda (_L23157_ _L23159_)
                                     (cons 'cons:
                                           (cons (_parse122030_ _L23159_)
                                                 (cons (_parse122030_ _L23157_)
                                                       '()))))
                                   _hd2243623151_
                                   _hd2243323141_)
                                  (_g2238423120_ _g2240323124_))))
                          (_g2238423120_ _g2240323124_))))
                  (_g2238423120_ _g2240323124_))
              (_g2238423120_ _g2240323124_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2238423120_
                                                   _g2240323124_))))
                                          (_g2238423120_ _g2240323124_)))))
                               (let ((_g2238223214_
                                      (lambda (_g2240323178_)
                                        (if (gx#stx-pair? _g2240323178_)
                                            (let ((_e2242123181_
                                                   (gx#syntax-e
                                                    _g2240323178_)))
                                              (let ((_hd2242223185_
                                                     (##car _e2242123181_))
                                                    (_tl2242323188_
                                                     (##cdr _e2242123181_)))
                                                (if (gx#identifier?
                                                     _hd2242223185_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core::<match>[1]#_g29547_|
                                                         _hd2242223185_)
                                                        (if (gx#stx-pair?
                                                             _tl2242323188_)
                                                            (let ((_e2242423191_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl2242323188_)))
                      (let ((_hd2242523195_ (##car _e2242423191_))
                            (_tl2242623198_ (##cdr _e2242423191_)))
                        (if (gx#stx-null? _tl2242623198_)
                            ((lambda (_L23201_)
                               (cons 'not:
                                     (cons (_parse122030_ _L23201_) '())))
                             _hd2242523195_)
                            (_g2238323174_ _g2240323178_))))
                    (_g2238323174_ _g2240323178_))
                (_g2238323174_ _g2240323178_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2238323174_
                                                     _g2240323178_))))
                                            (_g2238323174_ _g2240323178_)))))
                                 (let ((_g2238123299_
                                        (lambda (_g2240323218_)
                                          (if (gx#stx-pair? _g2240323218_)
                                              (let ((_e2241723221_
                                                     (gx#syntax-e
                                                      _g2240323218_)))
                                                (let ((_hd2241823225_
                                                       (##car _e2241723221_))
                                                      (_tl2241923228_
                                                       (##cdr _e2241723221_)))
                                                  (if (gx#identifier?
                                                       _hd2241823225_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core::<match>[1]#_g29548_|
                                                           _hd2241823225_)
                                                          ((lambda (_L23231_)
                                                             (if (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L23231_)
                         (let ((_g2324323254_
                                (lambda (_g2324423250_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2324423250_))))
                           (let ((_g2324223265_
                                  (lambda (_g2324423258_)
                                    ((lambda ()
                                       (cons 'or:
                                             (gx#stx-map
                                              _parse122030_
                                              _L23231_)))))))
                             (let ((_g2324123295_
                                    (lambda (_g2324423269_)
                                      (if (gx#stx-pair? _g2324423269_)
                                          (let ((_e2324623272_
                                                 (gx#syntax-e _g2324423269_)))
                                            (let ((_hd2324723276_
                                                   (##car _e2324623272_))
                                                  (_tl2324823279_
                                                   (##cdr _e2324623272_)))
                                              (if (gx#stx-null? _tl2324823279_)
                                                  ((lambda (_L23282_)
                                                     (_parse122030_ _L23282_))
                                                   _hd2324723276_)
                                                  (_g2324223265_
                                                   _g2324423269_))))
                                          (_g2324223265_ _g2324423269_)))))
                               (_g2324123295_ _L23231_))))
                         (_g2238223214_ _g2240323218_)))
                   _tl2241923228_)
                  (_g2238223214_ _g2240323218_))
              (_g2238223214_ _g2240323218_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2238223214_ _g2240323218_)))))
                                   (let ((_g2238023384_
                                          (lambda (_g2240323303_)
                                            (if (gx#stx-pair? _g2240323303_)
                                                (let ((_e2241323306_
                                                       (gx#syntax-e
                                                        _g2240323303_)))
                                                  (let ((_hd2241423310_
                                                         (##car _e2241323306_))
                                                        (_tl2241523313_
                                                         (##cdr _e2241323306_)))
                                                    (if (gx#identifier?
                                                         _hd2241423310_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core::<match>[1]#_g29549_|
                                                             _hd2241423310_)
                                                            ((lambda (_L23316_)
                                                               (if (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L23316_)
                           (let ((_g2332823339_
                                  (lambda (_g2332923335_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g2332923335_))))
                             (let ((_g2332723350_
                                    (lambda (_g2332923343_)
                                      ((lambda ()
                                         (cons 'and:
                                               (gx#stx-map
                                                _parse122030_
                                                _L23316_)))))))
                               (let ((_g2332623380_
                                      (lambda (_g2332923354_)
                                        (if (gx#stx-pair? _g2332923354_)
                                            (let ((_e2333123357_
                                                   (gx#syntax-e
                                                    _g2332923354_)))
                                              (let ((_hd2333223361_
                                                     (##car _e2333123357_))
                                                    (_tl2333323364_
                                                     (##cdr _e2333123357_)))
                                                (if (gx#stx-null?
                                                     _tl2333323364_)
                                                    ((lambda (_L23367_)
                                                       (_parse122030_
                                                        _L23367_))
                                                     _hd2333223361_)
                                                    (_g2332723350_
                                                     _g2332923354_))))
                                            (_g2332723350_ _g2332923354_)))))
                                 (_g2332623380_ _L23316_))))
                           (_g2238123299_ _g2240323303_)))
                     _tl2241523313_)
                    (_g2238123299_ _g2240323303_))
                (_g2238123299_ _g2240323303_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2238123299_
                                                 _g2240323303_)))))
                                     (let ((_g2237923624_
                                            (lambda (_g2240323388_)
                                              (if (gx#stx-pair? _g2240323388_)
                                                  (let ((_e2240623391_
                                                         (gx#syntax-e
                                                          _g2240323388_)))
                                                    (let ((_hd2240723395_
                                                           (##car _e2240623391_))
                                                          (_tl2240823398_
                                                           (##cdr _e2240623391_)))
                                                      (if (gx#identifier?
                                                           _hd2240723395_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core::<match>[1]#_g29550_|
                                                               _hd2240723395_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2240823398_)
                          (let ((_e2240923401_ (gx#syntax-e _tl2240823398_)))
                            (let ((_hd2241023405_ (##car _e2240923401_))
                                  (_tl2241123408_ (##cdr _e2240923401_)))
                              ((lambda (_L23411_ _L23413_)
                                 (let ((_g2343023462_
                                        (lambda (_g2343123458_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g2343123458_))))
                                   (let ((_g2342923473_
                                          (lambda (_g2343123466_)
                                            ((lambda ()
                                               (_parse-error22037_
                                                _hd22377_))))))
                                     (let ((_g2342823541_
                                            (lambda (_g2343123477_)
                                              (if (gx#stx-pair? _g2343123477_)
                                                  (let ((_e2344523480_
                                                         (gx#syntax-e
                                                          _g2343123477_)))
                                                    (let ((_hd2344623484_
                                                           (##car _e2344523480_))
                                                          (_tl2344723487_
                                                           (##cdr _e2344523480_)))
                                                      (if (gx#stx-datum?
                                                           _hd2344623484_)
                                                          (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd2344623484_)
                              '::)
                      (if (gx#stx-pair? _tl2344723487_)
                          (let ((_e2344823490_ (gx#syntax-e _tl2344723487_)))
                            (let ((_hd2344923494_ (##car _e2344823490_))
                                  (_tl2345023497_ (##cdr _e2344823490_)))
                              (if (gx#stx-pair? _tl2345023497_)
                                  (let ((_e2345123500_
                                         (gx#syntax-e _tl2345023497_)))
                                    (let ((_hd2345223504_
                                           (##car _e2345123500_))
                                          (_tl2345323507_
                                           (##cdr _e2345123500_)))
                                      (if (gx#identifier? _hd2345223504_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core::<match>[1]#_g29551_|
                                               _hd2345223504_)
                                              (if (gx#stx-pair? _tl2345323507_)
                                                  (let ((_e2345423510_
                                                         (gx#syntax-e
                                                          _tl2345323507_)))
                                                    (let ((_hd2345523514_
                                                           (##car _e2345423510_))
                                                          (_tl2345623517_
                                                           (##cdr _e2345423510_)))
                                                      (if (gx#stx-null?
                                                           _tl2345623517_)
                                                          ((lambda (_L23520_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L23522_)
                     (cons '?:
                           (cons _L23413_
                                 (cons '::
                                       (cons _L23522_
                                             (cons '=>:
                                                   (cons (_parse122030_
                                                          _L23520_)
                                                         '())))))))
                   _hd2345523514_
                   _hd2344923494_)
                  (_g2342923473_ _g2343123477_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2342923473_
                                                   _g2343123477_))
                                              (_g2342923473_ _g2343123477_))
                                          (_g2342923473_ _g2343123477_))))
                                  (_g2342923473_ _g2343123477_))))
                          (_g2342923473_ _g2343123477_))
                      (_g2342923473_ _g2343123477_))
                  (_g2342923473_ _g2343123477_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2342923473_
                                                   _g2343123477_)))))
                                       (let ((_g2342723581_
                                              (lambda (_g2343123545_)
                                                (if (gx#stx-pair?
                                                     _g2343123545_)
                                                    (let ((_e2343723548_
                                                           (gx#syntax-e
                                                            _g2343123545_)))
                                                      (let ((_hd2343823552_
                                                             (##car _e2343723548_))
                                                            (_tl2343923555_
                                                             (##cdr _e2343723548_)))
                                                        (if (gx#identifier?
                                                             _hd2343823552_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core::<match>[1]#_g29552_|
                         _hd2343823552_)
                        (if (gx#stx-pair? _tl2343923555_)
                            (let ((_e2344023558_ (gx#syntax-e _tl2343923555_)))
                              (let ((_hd2344123562_ (##car _e2344023558_))
                                    (_tl2344223565_ (##cdr _e2344023558_)))
                                (if (gx#stx-null? _tl2344223565_)
                                    ((lambda (_L23568_)
                                       (cons '?:
                                             (cons _L23413_
                                                   (cons '=>:
                                                         (cons (_parse122030_
                                                                _L23568_)
                                                               '())))))
                                     _hd2344123562_)
                                    (_g2342823541_ _g2343123545_))))
                            (_g2342823541_ _g2343123545_))
                        (_g2342823541_ _g2343123545_))
                    (_g2342823541_ _g2343123545_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2342823541_
                                                     _g2343123545_)))))
                                         (let ((_g2342623609_
                                                (lambda (_g2343123585_)
                                                  (if (gx#stx-pair?
                                                       _g2343123585_)
                                                      (let ((_e2343323588_
                                                             (gx#syntax-e
                                                              _g2343123585_)))
                                                        (let ((_hd2343423592_
                                                               (##car _e2343323588_))
                                                              (_tl2343523595_
                                                               (##cdr _e2343323588_)))
                                                          (if (gx#stx-null?
                                                               _tl2343523595_)
                                                              ((lambda (_L23598_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '?:
                               (cons _L23413_
                                     (cons (_parse122030_ _L23598_) '()))))
                       _hd2343423592_)
                      (_g2342723581_ _g2343123585_))))
              (_g2342723581_ _g2343123585_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_g2342523620_
                                                  (lambda (_g2343123613_)
                                                    (if (gx#stx-null?
                                                         _g2343123613_)
                                                        ((lambda ()
                                                           (cons '?:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L23413_ '()))))
                (_g2342623609_ _g2343123613_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2342523620_ _L23411_))))))))
                               _tl2241123408_
                               _hd2241023405_)))
                          (_g2238023384_ _g2240323388_))
                      (_g2238023384_ _g2240323388_))
                  (_g2238023384_ _g2240323388_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2238023384_
                                                   _g2240323388_)))))
                                       (_g2237923624_
                                        _hd22377_)))))))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (_parse-list22032_
                             (lambda (_body22212_)
                               (let ((_g2221822246_
                                      (lambda (_g2221922242_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g2221922242_))))
                                 (let ((_g2221722257_
                                        (lambda (_g2221922250_)
                                          ((lambda ()
                                             (if (gx#stx-null? _body22212_)
                                                 (cons 'null: '())
                                                 (if (not (gx#stx-pair?
                                                           _body22212_))
                                                     (_parse122030_
                                                      _body22212_)
                                                     (_parse-error22037_
                                                      _body22212_))))))))
                                   (let ((_g2221622289_
                                          (lambda (_g2221922261_)
                                            (if (gx#stx-pair? _g2221922261_)
                                                (let ((_e2223822264_
                                                       (gx#syntax-e
                                                        _g2221922261_)))
                                                  (let ((_hd2223922268_
                                                         (##car _e2223822264_))
                                                        (_tl2224022271_
                                                         (##cdr _e2223822264_)))
                                                    ((lambda (_L22274_
                                                              _L22276_)
                                                       (if (not (gx#ellipsis?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L22276_))
                   (cons 'cons:
                         (cons (_parse122030_ _L22276_)
                               (cons (_parse-list22032_ _L22274_) '())))
                   (_g2221722257_ _g2221922261_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _tl2224022271_
                                                     _hd2223922268_)))
                                                (_g2221722257_
                                                 _g2221922261_)))))
                                     (let ((_g2221522333_
                                            (lambda (_g2221922293_)
                                              (if (gx#stx-pair? _g2221922293_)
                                                  (let ((_e2223022296_
                                                         (gx#syntax-e
                                                          _g2221922293_)))
                                                    (let ((_hd2223122300_
                                                           (##car _e2223022296_))
                                                          (_tl2223222303_
                                                           (##cdr _e2223022296_)))
                                                      (if (gx#stx-pair?
                                                           _tl2223222303_)
                                                          (let ((_e2223322306_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2223222303_)))
                    (let ((_hd2223422310_ (##car _e2223322306_))
                          (_tl2223522313_ (##cdr _e2223322306_)))
                      ((lambda (_L22316_ _L22318_ _L22319_)
                         (if (gx#ellipsis? _L22318_)
                             (cons 'splice:
                                   (cons (_parse122030_ _L22319_)
                                         (cons (_parse-list22032_ _L22316_)
                                               '())))
                             (_g2221622289_ _g2221922293_)))
                       _tl2223522313_
                       _hd2223422310_
                       _hd2223122300_)))
                  (_g2221622289_ _g2221922293_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2221622289_
                                                   _g2221922293_)))))
                                       (let ((_g2221422373_
                                              (lambda (_g2221922337_)
                                                (if (gx#stx-pair?
                                                     _g2221922337_)
                                                    (let ((_e2222122340_
                                                           (gx#syntax-e
                                                            _g2221922337_)))
                                                      (let ((_hd2222222344_
                                                             (##car _e2222122340_))
                                                            (_tl2222322347_
                                                             (##cdr _e2222122340_)))
                                                        (if (gx#stx-datum?
                                                             _hd2222222344_)
                                                            (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _hd2222222344_)
                                '::)
                        (if (gx#stx-pair? _tl2222322347_)
                            (let ((_e2222422350_ (gx#syntax-e _tl2222322347_)))
                              (let ((_hd2222522354_ (##car _e2222422350_))
                                    (_tl2222622357_ (##cdr _e2222422350_)))
                                (if (gx#stx-null? _tl2222622357_)
                                    ((lambda (_L22360_)
                                       (_parse122030_ _L22360_))
                                     _hd2222522354_)
                                    (_g2221522333_ _g2221922337_))))
                            (_g2221522333_ _g2221922337_))
                        (_g2221522333_ _g2221922337_))
                    (_g2221522333_ _g2221922337_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2221522333_
                                                     _g2221922337_)))))
                                         (_g2221422373_ _body22212_))))))))
                            (_parse-vector22033_
                             (lambda (_body22209_)
                               (if (_simple-vector?22034_ _body22209_)
                                   (cons 'simple:
                                         (cons (gx#stx-map
                                                _parse122030_
                                                _body22209_)
                                               '()))
                                   (cons 'list:
                                         (cons (_parse-list22032_ _body22209_)
                                               '())))))
                            (_simple-vector?22034_
                             (lambda (_body22146_)
                               (let ((_g2215022162_
                                      (lambda (_g2215122158_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g2215122158_))))
                                 (let ((_g2214922173_
                                        (lambda (_g2215122166_)
                                          ((lambda ()
                                             (gx#stx-null? _body22146_))))))
                                   (let ((_g2214822205_
                                          (lambda (_g2215122177_)
                                            (if (gx#stx-pair? _g2215122177_)
                                                (let ((_e2215422180_
                                                       (gx#syntax-e
                                                        _g2215122177_)))
                                                  (let ((_hd2215522184_
                                                         (##car _e2215422180_))
                                                        (_tl2215622187_
                                                         (##cdr _e2215422180_)))
                                                    ((lambda (_L22190_
                                                              _L22192_)
                                                       (if (not (gx#ellipsis?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L22192_))
                   (_simple-vector?22034_ _L22190_)
                   '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _tl2215622187_
                                                     _hd2215522184_)))
                                                (_g2214922173_
                                                 _g2215122177_)))))
                                     (_g2214822205_ _body22146_))))))
                            (_parse-class-body22035_
                             (lambda (_body22055_)
                               ((letrec ((_recur22058_
                                          (lambda (_rest22061_)
                                            (let ((_g2206522081_
                                                   (lambda (_g2206622077_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2206622077_))))
                                              (let ((_g2206422092_
                                                     (lambda (_g2206622085_)
                                                       ((lambda ()
                                                          (if (gx#stx-null?
                                                               _rest22061_)
                                                              '()
                                                              (_parse-error22037_
                                                               _rest22061_)))))))
                                                (let ((_g2206322142_
                                                       (lambda (_g2206622096_)
                                                         (if (gx#stx-pair?
                                                              _g2206622096_)
                                                             (let ((_e2207022099_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g2206622096_)))
                       (let ((_hd2207122103_ (##car _e2207022099_))
                             (_tl2207222106_ (##cdr _e2207022099_)))
                         (if (gx#stx-pair? _tl2207222106_)
                             (let ((_e2207322109_
                                    (gx#syntax-e _tl2207222106_)))
                               (let ((_hd2207422113_ (##car _e2207322109_))
                                     (_tl2207522116_ (##cdr _e2207322109_)))
                                 ((lambda (_L22119_ _L22121_ _L22122_)
                                    (if (gx#stx-keyword? _L22122_)
                                        (cons* _L22122_
                                               (_parse122030_ _L22121_)
                                               (_recur22058_ _L22119_))
                                        (_g2206422092_ _g2206622096_)))
                                  _tl2207522116_
                                  _hd2207422113_
                                  _hd2207122103_)))
                             (_g2206422092_ _g2206622096_))))
                     (_g2206422092_ _g2206622096_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2206322142_
                                                   _rest22061_)))))))
                                  _recur22058_)
                                _body22055_))))
                     (_parse122030_ _stx22026_)))))))
        (lambda _g29554_
          (let ((_g29553_ (length _g29554_)))
            (cond ((fx= _g29553_ 1)
                   (apply (lambda (_stx23632_)
                            (let ((_match-stx23635_ '#f))
                              (_opt-lambda2202423628_
                               _stx23632_
                               _match-stx23635_)))
                          _g29554_))
                  ((fx= _g29553_ 2) (apply _opt-lambda2202423628_ _g29554_))
                  (else (error "No clause matching arguments" _g29554_)))))))
    (define |gerbil/core::<match>[1]#match-pattern?|
      (lambda (_stx22010_)
        (call-with-escape
         (lambda (_E22014_)
           (with-exception-handler
            (let ((_E!22017_ (current-exception-handler)))
              (lambda (_e22020_)
                (if (gx#syntax-error? _e22020_)
                    (_E22014_ '#f)
                    (_E!22017_ _e22020_))))
            (lambda ()
              (begin
                (|gerbil/core::<match>[1]#parse-match-pattern| _stx22010_)
                '#t)))))))
    (define |gerbil/core::<match>[1]#match-pattern-vars|
      (lambda (_ptree20865_)
        (letrec ((_loop20868_
                  (lambda (_ptree21143_ _vars21145_ _K21146_)
                    (let ((_g2115821248_
                           (lambda (_g2115921244_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2115921244_))))
                      (let ((_g2115721259_
                             (lambda (_g2115921252_)
                               ((lambda () (_K21146_ _vars21145_))))))
                        (let ((_g2115621306_
                               (lambda (_g2115921263_)
                                 (if (gx#stx-pair? _g2115921263_)
                                     (let ((_e2123721266_
                                            (gx#syntax-e _g2115921263_)))
                                       (let ((_hd2123821270_
                                              (##car _e2123721266_))
                                             (_tl2123921273_
                                              (##cdr _e2123721266_)))
                                         (if (gx#stx-datum? _hd2123821270_)
                                             (if (equal? (gx#stx-e
                                                          _hd2123821270_)
                                                         'var:)
                                                 (if (gx#stx-pair?
                                                      _tl2123921273_)
                                                     (let ((_e2124021276_
                                                            (gx#syntax-e
                                                             _tl2123921273_)))
                                                       (let ((_hd2124121280_
                                                              (##car _e2124021276_))
                                                             (_tl2124221283_
                                                              (##cdr _e2124021276_)))
                                                         (if (gx#stx-null?
                                                              _tl2124221283_)
                                                             ((lambda (_L21286_)
                                                                (if (find (lambda (_g2130021302_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (gx#bound-identifier=?
                                     _g2130021302_
                                     _L21286_))
                                  _vars21145_)
                            (_K21146_ _vars21145_)
                            (_K21146_ (cons _L21286_ _vars21145_))))
                      _hd2124121280_)
                     (_g2115721259_ _g2115921263_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2115721259_
                                                      _g2115921263_))
                                                 (_g2115721259_ _g2115921263_))
                                             (_g2115721259_ _g2115921263_))))
                                     (_g2115721259_ _g2115921263_)))))
                          (let ((_g2115521358_
                                 (lambda (_g2115921310_)
                                   (if (gx#stx-pair? _g2115921310_)
                                       (let ((_e2122721313_
                                              (gx#syntax-e _g2115921310_)))
                                         (let ((_hd2122821317_
                                                (##car _e2122721313_))
                                               (_tl2122921320_
                                                (##cdr _e2122721313_)))
                                           (if (gx#stx-datum? _hd2122821317_)
                                               (if (equal? (gx#stx-e
                                                            _hd2122821317_)
                                                           'class:)
                                                   (if (gx#stx-pair?
                                                        _tl2122921320_)
                                                       (let ((_e2123021323_
                                                              (gx#syntax-e
                                                               _tl2122921320_)))
                                                         (let ((_hd2123121327_
                                                                (##car _e2123021323_))
                                                               (_tl2123221330_
                                                                (##cdr _e2123021323_)))
                                                           (if (gx#stx-pair?
                                                                _tl2123221330_)
                                                               (let ((_e2123321333_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2123221330_)))
                         (let ((_hd2123421337_ (##car _e2123321333_))
                               (_tl2123521340_ (##cdr _e2123321333_)))
                           (if (gx#stx-null? _tl2123521340_)
                               ((lambda (_L21343_)
                                  (_loop-class-list20872_
                                   _L21343_
                                   _vars21145_
                                   _K21146_))
                                _hd2123421337_)
                               (_g2115621306_ _g2115921310_))))
                       (_g2115621306_ _g2115921310_))))
               (_g2115621306_ _g2115921310_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2115621306_
                                                    _g2115921310_))
                                               (_g2115621306_ _g2115921310_))))
                                       (_g2115621306_ _g2115921310_)))))
                            (let ((_g2115421410_
                                   (lambda (_g2115921362_)
                                     (if (gx#stx-pair? _g2115921362_)
                                         (let ((_e2121721365_
                                                (gx#syntax-e _g2115921362_)))
                                           (let ((_hd2121821369_
                                                  (##car _e2121721365_))
                                                 (_tl2121921372_
                                                  (##cdr _e2121721365_)))
                                             (if (gx#stx-datum? _hd2121821369_)
                                                 (if (equal? (gx#stx-e
                                                              _hd2121821369_)
                                                             'struct:)
                                                     (if (gx#stx-pair?
                                                          _tl2121921372_)
                                                         (let ((_e2122021375_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2121921372_)))
                   (let ((_hd2122121379_ (##car _e2122021375_))
                         (_tl2122221382_ (##cdr _e2122021375_)))
                     (if (gx#stx-pair? _tl2122221382_)
                         (let ((_e2122321385_ (gx#syntax-e _tl2122221382_)))
                           (let ((_hd2122421389_ (##car _e2122321385_))
                                 (_tl2122521392_ (##cdr _e2122321385_)))
                             (if (gx#stx-null? _tl2122521392_)
                                 ((lambda (_L21395_)
                                    (_loop-vector20870_
                                     _L21395_
                                     _vars21145_
                                     _K21146_))
                                  _hd2122421389_)
                                 (_g2115521358_ _g2115921362_))))
                         (_g2115521358_ _g2115921362_))))
                 (_g2115521358_ _g2115921362_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2115521358_
                                                      _g2115921362_))
                                                 (_g2115521358_
                                                  _g2115921362_))))
                                         (_g2115521358_ _g2115921362_)))))
                              (let ((_g2115321456_
                                     (lambda (_g2115921414_)
                                       (if (gx#stx-pair? _g2115921414_)
                                           (let ((_e2121021417_
                                                  (gx#syntax-e _g2115921414_)))
                                             (let ((_hd2121121421_
                                                    (##car _e2121021417_))
                                                   (_tl2121221424_
                                                    (##cdr _e2121021417_)))
                                               (if (gx#stx-pair?
                                                    _tl2121221424_)
                                                   (let ((_e2121321427_
                                                          (gx#syntax-e
                                                           _tl2121221424_)))
                                                     (let ((_hd2121421431_
                                                            (##car _e2121321427_))
                                                           (_tl2121521434_
                                                            (##cdr _e2121321427_)))
                                                       (if (gx#stx-null?
                                                            _tl2121521434_)
                                                           ((lambda (_L21437_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L21439_)
                      (if (let ((_$e21452_ (gx#stx-eq? 'values: _L21439_)))
                            (if _$e21452_
                                _$e21452_
                                (gx#stx-eq? 'vector: _L21439_)))
                          (_loop-vector20870_ _L21437_ _vars21145_ _K21146_)
                          (_g2115421410_ _g2115921414_)))
                    _hd2121421431_
                    _hd2121121421_)
                   (_g2115421410_ _g2115921414_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2115421410_
                                                    _g2115921414_))))
                                           (_g2115421410_ _g2115921414_)))))
                                (let ((_g2115221496_
                                       (lambda (_g2115921460_)
                                         (if (gx#stx-pair? _g2115921460_)
                                             (let ((_e2120221463_
                                                    (gx#syntax-e
                                                     _g2115921460_)))
                                               (let ((_hd2120321467_
                                                      (##car _e2120221463_))
                                                     (_tl2120421470_
                                                      (##cdr _e2120221463_)))
                                                 (if (gx#stx-datum?
                                                      _hd2120321467_)
                                                     (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd2120321467_)
                         'box:)
                 (if (gx#stx-pair? _tl2120421470_)
                     (let ((_e2120521473_ (gx#syntax-e _tl2120421470_)))
                       (let ((_hd2120621477_ (##car _e2120521473_))
                             (_tl2120721480_ (##cdr _e2120521473_)))
                         (if (gx#stx-null? _tl2120721480_)
                             ((lambda (_L21483_)
                                (_loop20868_ _L21483_ _vars21145_ _K21146_))
                              _hd2120621477_)
                             (_g2115321456_ _g2115921460_))))
                     (_g2115321456_ _g2115921460_))
                 (_g2115321456_ _g2115921460_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2115321456_
                                                      _g2115921460_))))
                                             (_g2115321456_ _g2115921460_)))))
                                  (let ((_g2115121555_
                                         (lambda (_g2115921500_)
                                           (if (gx#stx-pair? _g2115921500_)
                                               (let ((_e2119221503_
                                                      (gx#syntax-e
                                                       _g2115921500_)))
                                                 (let ((_hd2119321507_
                                                        (##car _e2119221503_))
                                                       (_tl2119421510_
                                                        (##cdr _e2119221503_)))
                                                   (if (gx#stx-datum?
                                                        _hd2119321507_)
                                                       (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd2119321507_)
                           'splice:)
                   (if (gx#stx-pair? _tl2119421510_)
                       (let ((_e2119521513_ (gx#syntax-e _tl2119421510_)))
                         (let ((_hd2119621517_ (##car _e2119521513_))
                               (_tl2119721520_ (##cdr _e2119521513_)))
                           (if (gx#stx-pair? _tl2119721520_)
                               (let ((_e2119821523_
                                      (gx#syntax-e _tl2119721520_)))
                                 (let ((_hd2119921527_ (##car _e2119821523_))
                                       (_tl2120021530_ (##cdr _e2119821523_)))
                                   (if (gx#stx-null? _tl2120021530_)
                                       ((lambda (_L21533_ _L21535_)
                                          (_loop20868_
                                           _L21535_
                                           _vars21145_
                                           (lambda (_g2154921551_)
                                             (_loop20868_
                                              _L21533_
                                              _g2154921551_
                                              _K21146_))))
                                        _hd2119921527_
                                        _hd2119621517_)
                                       (_g2115221496_ _g2115921500_))))
                               (_g2115221496_ _g2115921500_))))
                       (_g2115221496_ _g2115921500_))
                   (_g2115221496_ _g2115921500_))
               (_g2115221496_ _g2115921500_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2115221496_
                                                _g2115921500_)))))
                                    (let ((_g2115021614_
                                           (lambda (_g2115921559_)
                                             (if (gx#stx-pair? _g2115921559_)
                                                 (let ((_e2118121562_
                                                        (gx#syntax-e
                                                         _g2115921559_)))
                                                   (let ((_hd2118221566_
                                                          (##car _e2118121562_))
                                                         (_tl2118321569_
                                                          (##cdr _e2118121562_)))
                                                     (if (gx#stx-datum?
                                                          _hd2118221566_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2118221566_)
                             'cons:)
                     (if (gx#stx-pair? _tl2118321569_)
                         (let ((_e2118421572_ (gx#syntax-e _tl2118321569_)))
                           (let ((_hd2118521576_ (##car _e2118421572_))
                                 (_tl2118621579_ (##cdr _e2118421572_)))
                             (if (gx#stx-pair? _tl2118621579_)
                                 (let ((_e2118721582_
                                        (gx#syntax-e _tl2118621579_)))
                                   (let ((_hd2118821586_ (##car _e2118721582_))
                                         (_tl2118921589_
                                          (##cdr _e2118721582_)))
                                     (if (gx#stx-null? _tl2118921589_)
                                         ((lambda (_L21592_ _L21594_)
                                            (_loop20868_
                                             _L21594_
                                             _vars21145_
                                             (lambda (_g2160821610_)
                                               (_loop20868_
                                                _L21592_
                                                _g2160821610_
                                                _K21146_))))
                                          _hd2118821586_
                                          _hd2118521576_)
                                         (_g2115121555_ _g2115921559_))))
                                 (_g2115121555_ _g2115921559_))))
                         (_g2115121555_ _g2115921559_))
                     (_g2115121555_ _g2115921559_))
                 (_g2115121555_ _g2115921559_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2115121555_
                                                  _g2115921559_)))))
                                      (let ((_g2114921654_
                                             (lambda (_g2115921618_)
                                               (if (gx#stx-pair? _g2115921618_)
                                                   (let ((_e2117321621_
                                                          (gx#syntax-e
                                                           _g2115921618_)))
                                                     (let ((_hd2117421625_
                                                            (##car _e2117321621_))
                                                           (_tl2117521628_
                                                            (##cdr _e2117321621_)))
                                                       (if (gx#stx-datum?
                                                            _hd2117421625_)
                                                           (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd2117421625_)
                               'not:)
                       (if (gx#stx-pair? _tl2117521628_)
                           (let ((_e2117621631_ (gx#syntax-e _tl2117521628_)))
                             (let ((_hd2117721635_ (##car _e2117621631_))
                                   (_tl2117821638_ (##cdr _e2117621631_)))
                               (if (gx#stx-null? _tl2117821638_)
                                   ((lambda (_L21641_)
                                      (_loop20868_
                                       _L21641_
                                       _vars21145_
                                       _K21146_))
                                    _hd2117721635_)
                                   (_g2115021614_ _g2115921618_))))
                           (_g2115021614_ _g2115921618_))
                       (_g2115021614_ _g2115921618_))
                   (_g2115021614_ _g2115921618_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2115021614_
                                                    _g2115921618_)))))
                                        (let ((_g2114821753_
                                               (lambda (_g2115921658_)
                                                 (if (gx#stx-pair?
                                                      _g2115921658_)
                                                     (let ((_e2116921661_
                                                            (gx#syntax-e
                                                             _g2115921658_)))
                                                       (let ((_hd2117021665_
                                                              (##car _e2116921661_))
                                                             (_tl2117121668_
                                                              (##cdr _e2116921661_)))
                                                         ((lambda (_L21671_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L21673_)
                    (if (let ((_$e21684_ (gx#stx-eq? 'and: _L21673_)))
                          (if _$e21684_ _$e21684_ (gx#stx-eq? 'or: _L21673_)))
                        (let ((_g2168921701_
                               (lambda (_g2169021697_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g2169021697_))))
                          (let ((_g2168821712_
                                 (lambda (_g2169021705_)
                                   ((lambda () (_K21146_ _vars21145_))))))
                            (let ((_g2168721749_
                                   (lambda (_g2169021716_)
                                     (if (gx#stx-pair? _g2169021716_)
                                         (let ((_e2169321719_
                                                (gx#syntax-e _g2169021716_)))
                                           (let ((_hd2169421723_
                                                  (##car _e2169321719_))
                                                 (_tl2169521726_
                                                  (##cdr _e2169321719_)))
                                             ((lambda (_L21729_ _L21731_)
                                                (_loop20868_
                                                 _L21731_
                                                 _vars21145_
                                                 (lambda (_g2174321745_)
                                                   (_loop20868_
                                                    (cons _L21673_ _L21729_)
                                                    _g2174321745_
                                                    _K21146_))))
                                              _tl2169521726_
                                              _hd2169421723_)))
                                         (_g2168821712_ _g2169021716_)))))
                              (_g2168721749_ _L21671_))))
                        (_g2114921654_ _g2115921658_)))
                  _tl2117121668_
                  _hd2117021665_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2114921654_
                                                      _g2115921658_)))))
                                          (let ((_g2114722006_
                                                 (lambda (_g2115921757_)
                                                   (if (gx#stx-pair?
                                                        _g2115921757_)
                                                       (let ((_e2116121760_
                                                              (gx#syntax-e
                                                               _g2115921757_)))
                                                         (let ((_hd2116221764_
                                                                (##car _e2116121760_))
                                                               (_tl2116321767_
                                                                (##cdr _e2116121760_)))
                                                           (if (gx#stx-datum?
                                                                _hd2116221764_)
                                                               (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _hd2116221764_)
                                   '?:)
                           (if (gx#stx-pair? _tl2116321767_)
                               (let ((_e2116421770_
                                      (gx#syntax-e _tl2116321767_)))
                                 (let ((_hd2116521774_ (##car _e2116421770_))
                                       (_tl2116621777_ (##cdr _e2116421770_)))
                                   ((lambda (_L21780_)
                                      (let ((_g2179621833_
                                             (lambda (_g2179721829_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2179721829_))))
                                        (let ((_g2179521844_
                                               (lambda (_g2179721837_)
                                                 ((lambda ()
                                                    (_K21146_ _vars21145_))))))
                                          (let ((_g2179421922_
                                                 (lambda (_g2179721848_)
                                                   (if (gx#stx-pair?
                                                        _g2179721848_)
                                                       (let ((_e2181321851_
                                                              (gx#syntax-e
                                                               _g2179721848_)))
                                                         (let ((_hd2181421855_
                                                                (##car _e2181321851_))
                                                               (_tl2181521858_
                                                                (##cdr _e2181321851_)))
                                                           (if (gx#stx-pair?
                                                                _tl2181521858_)
                                                               (let ((_e2181621861_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2181521858_)))
                         (let ((_hd2181721865_ (##car _e2181621861_))
                               (_tl2181821868_ (##cdr _e2181621861_)))
                           (if (gx#stx-datum? _hd2181721865_)
                               (if (equal? (gx#stx-e _hd2181721865_) '::)
                                   (if (gx#stx-pair? _tl2181821868_)
                                       (let ((_e2181921871_
                                              (gx#syntax-e _tl2181821868_)))
                                         (let ((_hd2182021875_
                                                (##car _e2181921871_))
                                               (_tl2182121878_
                                                (##cdr _e2181921871_)))
                                           (if (gx#stx-pair? _tl2182121878_)
                                               (let ((_e2182221881_
                                                      (gx#syntax-e
                                                       _tl2182121878_)))
                                                 (let ((_hd2182321885_
                                                        (##car _e2182221881_))
                                                       (_tl2182421888_
                                                        (##cdr _e2182221881_)))
                                                   (if (gx#stx-datum?
                                                        _hd2182321885_)
                                                       (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd2182321885_)
                           '=>:)
                   (if (gx#stx-pair? _tl2182421888_)
                       (let ((_e2182521891_ (gx#syntax-e _tl2182421888_)))
                         (let ((_hd2182621895_ (##car _e2182521891_))
                               (_tl2182721898_ (##cdr _e2182521891_)))
                           (if (gx#stx-null? _tl2182721898_)
                               ((lambda (_L21901_)
                                  (_loop20868_ _L21901_ _vars21145_ _K21146_))
                                _hd2182621895_)
                               (_g2179521844_ _g2179721848_))))
                       (_g2179521844_ _g2179721848_))
                   (_g2179521844_ _g2179721848_))
               (_g2179521844_ _g2179721848_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2179521844_ _g2179721848_))))
                                       (_g2179521844_ _g2179721848_))
                                   (_g2179521844_ _g2179721848_))
                               (_g2179521844_ _g2179721848_))))
                       (_g2179521844_ _g2179721848_))))
               (_g2179521844_ _g2179721848_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_g2179321974_
                                                   (lambda (_g2179721926_)
                                                     (if (gx#stx-pair?
                                                          _g2179721926_)
                                                         (let ((_e2180321929_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2179721926_)))
                   (let ((_hd2180421933_ (##car _e2180321929_))
                         (_tl2180521936_ (##cdr _e2180321929_)))
                     (if (gx#stx-pair? _tl2180521936_)
                         (let ((_e2180621939_ (gx#syntax-e _tl2180521936_)))
                           (let ((_hd2180721943_ (##car _e2180621939_))
                                 (_tl2180821946_ (##cdr _e2180621939_)))
                             (if (gx#stx-datum? _hd2180721943_)
                                 (if (equal? (gx#stx-e _hd2180721943_) '=>:)
                                     (if (gx#stx-pair? _tl2180821946_)
                                         (let ((_e2180921949_
                                                (gx#syntax-e _tl2180821946_)))
                                           (let ((_hd2181021953_
                                                  (##car _e2180921949_))
                                                 (_tl2181121956_
                                                  (##cdr _e2180921949_)))
                                             (if (gx#stx-null? _tl2181121956_)
                                                 ((lambda (_L21959_)
                                                    (_loop20868_
                                                     _L21959_
                                                     _vars21145_
                                                     _K21146_))
                                                  _hd2181021953_)
                                                 (_g2179421922_
                                                  _g2179721926_))))
                                         (_g2179421922_ _g2179721926_))
                                     (_g2179421922_ _g2179721926_))
                                 (_g2179421922_ _g2179721926_))))
                         (_g2179421922_ _g2179721926_))))
                 (_g2179421922_ _g2179721926_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g2179222002_
                                                     (lambda (_g2179721978_)
                                                       (if (gx#stx-pair?
                                                            _g2179721978_)
                                                           (let ((_e2179921981_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _g2179721978_)))
                     (let ((_hd2180021985_ (##car _e2179921981_))
                           (_tl2180121988_ (##cdr _e2179921981_)))
                       (if (gx#stx-null? _tl2180121988_)
                           ((lambda (_L21991_)
                              (_loop20868_ _L21991_ _vars21145_ _K21146_))
                            _hd2180021985_)
                           (_g2179321974_ _g2179721978_))))
                   (_g2179321974_ _g2179721978_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2179222002_ _L21780_)))))))
                                    _tl2116621777_)))
                               (_g2114821753_ _g2115921757_))
                           (_g2114821753_ _g2115921757_))
                       (_g2114821753_ _g2115921757_))))
               (_g2114821753_ _g2115921757_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2114722006_
                                             _ptree21143_)))))))))))))))
                 (_loop-vector20870_
                  (lambda (_body21031_ _vars21033_ _K21034_)
                    (let ((_g2103721058_
                           (lambda (_g2103821054_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2103821054_))))
                      (let ((_g2103621099_
                             (lambda (_g2103821062_)
                               (if (gx#stx-pair? _g2103821062_)
                                   (let ((_e2104721065_
                                          (gx#syntax-e _g2103821062_)))
                                     (let ((_hd2104821069_
                                            (##car _e2104721065_))
                                           (_tl2104921072_
                                            (##cdr _e2104721065_)))
                                       (if (gx#stx-datum? _hd2104821069_)
                                           (if (equal? (gx#stx-e
                                                        _hd2104821069_)
                                                       'list:)
                                               (if (gx#stx-pair?
                                                    _tl2104921072_)
                                                   (let ((_e2105021075_
                                                          (gx#syntax-e
                                                           _tl2104921072_)))
                                                     (let ((_hd2105121079_
                                                            (##car _e2105021075_))
                                                           (_tl2105221082_
                                                            (##cdr _e2105021075_)))
                                                       (if (gx#stx-null?
                                                            _tl2105221082_)
                                                           ((lambda (_L21085_)
                                                              (_loop20868_
                                                               _L21085_
                                                               _vars21033_
                                                               _K21034_))
                                                            _hd2105121079_)
                                                           (_g2103721058_
                                                            _g2103821062_))))
                                                   (_g2103721058_
                                                    _g2103821062_))
                                               (_g2103721058_ _g2103821062_))
                                           (_g2103721058_ _g2103821062_))))
                                   (_g2103721058_ _g2103821062_)))))
                        (let ((_g2103521139_
                               (lambda (_g2103821103_)
                                 (if (gx#stx-pair? _g2103821103_)
                                     (let ((_e2104021106_
                                            (gx#syntax-e _g2103821103_)))
                                       (let ((_hd2104121110_
                                              (##car _e2104021106_))
                                             (_tl2104221113_
                                              (##cdr _e2104021106_)))
                                         (if (gx#stx-datum? _hd2104121110_)
                                             (if (equal? (gx#stx-e
                                                          _hd2104121110_)
                                                         'simple:)
                                                 (if (gx#stx-pair?
                                                      _tl2104221113_)
                                                     (let ((_e2104321116_
                                                            (gx#syntax-e
                                                             _tl2104221113_)))
                                                       (let ((_hd2104421120_
                                                              (##car _e2104321116_))
                                                             (_tl2104521123_
                                                              (##cdr _e2104321116_)))
                                                         (if (gx#stx-null?
                                                              _tl2104521123_)
                                                             ((lambda (_L21126_)
                                                                (_loop-list20871_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L21126_
                         _vars21033_
                         _K21034_))
                      _hd2104421120_)
                     (_g2103621099_ _g2103821103_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2103621099_
                                                      _g2103821103_))
                                                 (_g2103621099_ _g2103821103_))
                                             (_g2103621099_ _g2103821103_))))
                                     (_g2103621099_ _g2103821103_)))))
                          (_g2103521139_ _body21031_))))))
                 (_loop-list20871_
                  (lambda (_rest20961_ _vars20963_ _K20964_)
                    (let ((_g2096720979_
                           (lambda (_g2096820975_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2096820975_))))
                      (let ((_g2096620990_
                             (lambda (_g2096820983_)
                               ((lambda () (_K20964_ _vars20963_))))))
                        (let ((_g2096521027_
                               (lambda (_g2096820994_)
                                 (if (gx#stx-pair? _g2096820994_)
                                     (let ((_e2097120997_
                                            (gx#syntax-e _g2096820994_)))
                                       (let ((_hd2097221001_
                                              (##car _e2097120997_))
                                             (_tl2097321004_
                                              (##cdr _e2097120997_)))
                                         ((lambda (_L21007_ _L21009_)
                                            (_loop20868_
                                             _L21009_
                                             _vars20963_
                                             (lambda (_g2102121023_)
                                               (_loop-list20871_
                                                _L21007_
                                                _g2102121023_
                                                _K20964_))))
                                          _tl2097321004_
                                          _hd2097221001_)))
                                     (_g2096620990_ _g2096820994_)))))
                          (_g2096521027_ _rest20961_))))))
                 (_loop-class-list20872_
                  (lambda (_rest20874_ _vars20876_ _K20877_)
                    (let ((_g2088020895_
                           (lambda (_g2088120891_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2088120891_))))
                      (let ((_g2087920906_
                             (lambda (_g2088120899_)
                               ((lambda () (_K20877_ _vars20876_))))))
                        (let ((_g2087820957_
                               (lambda (_g2088120910_)
                                 (if (gx#stx-pair? _g2088120910_)
                                     (let ((_e2088420913_
                                            (gx#syntax-e _g2088120910_)))
                                       (let ((_hd2088520917_
                                              (##car _e2088420913_))
                                             (_tl2088620920_
                                              (##cdr _e2088420913_)))
                                         (if (gx#stx-pair? _tl2088620920_)
                                             (let ((_e2088720923_
                                                    (gx#syntax-e
                                                     _tl2088620920_)))
                                               (let ((_hd2088820927_
                                                      (##car _e2088720923_))
                                                     (_tl2088920930_
                                                      (##cdr _e2088720923_)))
                                                 ((lambda (_L20933_ _L20935_)
                                                    (_loop20868_
                                                     _L20935_
                                                     _vars20876_
                                                     (lambda (_g2095120953_)
                                                       (_loop-class-list20872_
                                                        _L20933_
                                                        _g2095120953_
                                                        _K20877_))))
                                                  _tl2088920930_
                                                  _hd2088820927_)))
                                             (_g2087920906_ _g2088120910_))))
                                     (_g2087920906_ _g2088120910_)))))
                          (_g2087820957_ _rest20874_)))))))
          (_loop20868_ _ptree20865_ '() values))))
    (define |gerbil/core::<match>[1]#generate-match1|
      (lambda (_stx17778_ _tgt17780_ _ptree17781_ _K17782_ _E17783_)
        (letrec ((_generate117785_
                  (lambda (_tgt19315_ _ptree19317_ _K19318_ _E19319_)
                    (let ((_g1932119329_
                           (lambda (_g1932219325_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1932219325_))))
                      (let ((_g1932020861_
                             (lambda (_g1932219333_)
                               ((lambda (_L19336_)
                                  (let ()
                                    (let ((_g1936219477_
                                           (lambda (_g1936319473_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1936319473_))))
                                      (let ((_g1936119498_
                                             (lambda (_g1936319481_)
                                               (if (gx#stx-pair? _g1936319481_)
                                                   (let ((_e1946919484_
                                                          (gx#syntax-e
                                                           _g1936319481_)))
                                                     (let ((_hd1947019488_
                                                            (##car _e1946919484_))
                                                           (_tl1947119491_
                                                            (##cdr _e1946919484_)))
                                                       (if (gx#stx-datum?
                                                            _hd1947019488_)
                                                           (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd1947019488_)
                               'any:)
                       (if (gx#stx-null? _tl1947119491_)
                           ((lambda () _K19318_))
                           (_g1936219477_ _g1936319481_))
                       (_g1936219477_ _g1936319481_))
                   (_g1936219477_ _g1936319481_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1936219477_
                                                    _g1936319481_)))))
                                        (let ((_g1936019541_
                                               (lambda (_g1936319502_)
                                                 (if (gx#stx-pair?
                                                      _g1936319502_)
                                                     (let ((_e1946319505_
                                                            (gx#syntax-e
                                                             _g1936319502_)))
                                                       (let ((_hd1946419509_
                                                              (##car _e1946319505_))
                                                             (_tl1946519512_
                                                              (##cdr _e1946319505_)))
                                                         (if (gx#stx-datum?
                                                              _hd1946419509_)
                                                             (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _hd1946419509_)
                                 'var:)
                         (if (gx#stx-pair? _tl1946519512_)
                             (let ((_e1946619515_
                                    (gx#syntax-e _tl1946519512_)))
                               (let ((_hd1946719519_ (##car _e1946619515_))
                                     (_tl1946819522_ (##cdr _e1946619515_)))
                                 (if (gx#stx-null? _tl1946819522_)
                                     ((lambda (_L19525_)
                                        (cons (gx#datum->syntax '#f 'let)
                                              (cons (cons (cons _L19525_
                                                                (cons _L19336_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _K19318_ '()))))
                                      _hd1946719519_)
                                     (_g1936119498_ _g1936319502_))))
                             (_g1936119498_ _g1936319502_))
                         (_g1936119498_ _g1936319502_))
                     (_g1936119498_ _g1936319502_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1936119498_
                                                      _g1936319502_)))))
                                          (let ((_g1935919623_
                                                 (lambda (_g1936319545_)
                                                   (if (gx#stx-pair?
                                                        _g1936319545_)
                                                       (let ((_e1945619548_
                                                              (gx#syntax-e
                                                               _g1936319545_)))
                                                         (let ((_hd1945719552_
                                                                (##car _e1945619548_))
                                                               (_tl1945819555_
                                                                (##cdr _e1945619548_)))
                                                           (if (gx#stx-datum?
                                                                _hd1945719552_)
                                                               (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _hd1945719552_)
                                   'datum:)
                           (if (gx#stx-pair? _tl1945819555_)
                               (let ((_e1945919558_
                                      (gx#syntax-e _tl1945819555_)))
                                 (let ((_hd1946019562_ (##car _e1945919558_))
                                       (_tl1946119565_ (##cdr _e1945919558_)))
                                   (if (gx#stx-null? _tl1946119565_)
                                       ((lambda (_L19568_)
                                          (let ((_g1958119589_
                                                 (lambda (_g1958219585_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1958219585_))))
                                            (let ((_g1958019608_
                                                   (lambda (_g1958219593_)
                                                     ((lambda (_L19596_)
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'if)
                        (cons (cons _L19596_
                                    (cons _L19336_
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _L19568_ '()))
                                                '())))
                              (cons _K19318_ (cons _E19319_ '()))))))
              _g1958219593_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1958019608_
                                               (let ((_e19612_
                                                      (gx#stx-e _L19568_)))
                                                 (if (let ((_$e19615_
                                                            (symbol? _e19612_)))
                                                       (if _$e19615_
                                                           _$e19615_
                                                           (let ((_$e19619_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (keyword? _e19612_)))
                     (if _$e19619_ _$e19619_ (immediate? _e19612_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##eq?)
                                                     (if (number? _e19612_)
                                                         (gx#datum->syntax
                                                          '#f
                                                          'eqv?)
                                                         (gx#datum->syntax
                                                          '#f
                                                          'equal?))))))))
                                        _hd1946019562_)
                                       (_g1936019541_ _g1936319545_))))
                               (_g1936019541_ _g1936319545_))
                           (_g1936019541_ _g1936319545_))
                       (_g1936019541_ _g1936319545_))))
               (_g1936019541_ _g1936319545_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_g1935819677_
                                                   (lambda (_g1936319627_)
                                                     (if (gx#stx-pair?
                                                          _g1936319627_)
                                                         (let ((_e1944619630_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1936319627_)))
                   (let ((_hd1944719634_ (##car _e1944619630_))
                         (_tl1944819637_ (##cdr _e1944619630_)))
                     (if (gx#stx-datum? _hd1944719634_)
                         (if (equal? (gx#stx-e _hd1944719634_) 'class:)
                             (if (gx#stx-pair? _tl1944819637_)
                                 (let ((_e1944919640_
                                        (gx#syntax-e _tl1944819637_)))
                                   (let ((_hd1945019644_ (##car _e1944919640_))
                                         (_tl1945119647_
                                          (##cdr _e1944919640_)))
                                     (if (gx#stx-pair? _tl1945119647_)
                                         (let ((_e1945219650_
                                                (gx#syntax-e _tl1945119647_)))
                                           (let ((_hd1945319654_
                                                  (##car _e1945219650_))
                                                 (_tl1945419657_
                                                  (##cdr _e1945219650_)))
                                             (if (gx#stx-null? _tl1945419657_)
                                                 ((lambda (_L19660_ _L19662_)
                                                    (_generate-class17791_
                                                     (gx#stx-e _L19662_)
                                                     _tgt19315_
                                                     _L19660_
                                                     _K19318_
                                                     _E19319_))
                                                  _hd1945319654_
                                                  _hd1945019644_)
                                                 (_g1935919623_
                                                  _g1936319627_))))
                                         (_g1935919623_ _g1936319627_))))
                                 (_g1935919623_ _g1936319627_))
                             (_g1935919623_ _g1936319627_))
                         (_g1935919623_ _g1936319627_))))
                 (_g1935919623_ _g1936319627_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g1935719731_
                                                     (lambda (_g1936319681_)
                                                       (if (gx#stx-pair?
                                                            _g1936319681_)
                                                           (let ((_e1943519684_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _g1936319681_)))
                     (let ((_hd1943619688_ (##car _e1943519684_))
                           (_tl1943719691_ (##cdr _e1943519684_)))
                       (if (gx#stx-datum? _hd1943619688_)
                           (if (equal? (gx#stx-e _hd1943619688_) 'struct:)
                               (if (gx#stx-pair? _tl1943719691_)
                                   (let ((_e1943819694_
                                          (gx#syntax-e _tl1943719691_)))
                                     (let ((_hd1943919698_
                                            (##car _e1943819694_))
                                           (_tl1944019701_
                                            (##cdr _e1943819694_)))
                                       (if (gx#stx-pair? _tl1944019701_)
                                           (let ((_e1944119704_
                                                  (gx#syntax-e
                                                   _tl1944019701_)))
                                             (let ((_hd1944219708_
                                                    (##car _e1944119704_))
                                                   (_tl1944319711_
                                                    (##cdr _e1944119704_)))
                                               (if (gx#stx-null?
                                                    _tl1944319711_)
                                                   ((lambda (_L19714_ _L19716_)
                                                      (_generate-struct17790_
                                                       (gx#stx-e _L19716_)
                                                       _tgt19315_
                                                       _L19714_
                                                       _K19318_
                                                       _E19319_))
                                                    _hd1944219708_
                                                    _hd1943919698_)
                                                   (_g1935819677_
                                                    _g1936319681_))))
                                           (_g1935819677_ _g1936319681_))))
                                   (_g1935819677_ _g1936319681_))
                               (_g1935819677_ _g1936319681_))
                           (_g1935819677_ _g1936319681_))))
                   (_g1935819677_ _g1936319681_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_g1935619909_
                                                       (lambda (_g1936319735_)
                                                         (if (gx#stx-pair?
                                                              _g1936319735_)
                                                             (let ((_e1942719738_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g1936319735_)))
                       (let ((_hd1942819742_ (##car _e1942719738_))
                             (_tl1942919745_ (##cdr _e1942719738_)))
                         (if (gx#stx-datum? _hd1942819742_)
                             (if (equal? (gx#stx-e _hd1942819742_) 'vector:)
                                 (if (gx#stx-pair? _tl1942919745_)
                                     (let ((_e1943019748_
                                            (gx#syntax-e _tl1942919745_)))
                                       (let ((_hd1943119752_
                                              (##car _e1943019748_))
                                             (_tl1943219755_
                                              (##cdr _e1943019748_)))
                                         (if (gx#stx-null? _tl1943219755_)
                                             ((lambda (_L19758_)
                                                (let ((_g1977219793_
                                                       (lambda (_g1977319789_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1977319789_))))
                                                  (let ((_g1977119834_
                                                         (lambda (_g1977319797_)
                                                           (if (gx#stx-pair?
                                                                _g1977319797_)
                                                               (let ((_e1978219800_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _g1977319797_)))
                         (let ((_hd1978319804_ (##car _e1978219800_))
                               (_tl1978419807_ (##cdr _e1978219800_)))
                           (if (gx#stx-datum? _hd1978319804_)
                               (if (equal? (gx#stx-e _hd1978319804_) 'list:)
                                   (if (gx#stx-pair? _tl1978419807_)
                                       (let ((_e1978519810_
                                              (gx#syntax-e _tl1978419807_)))
                                         (let ((_hd1978619814_
                                                (##car _e1978519810_))
                                               (_tl1978719817_
                                                (##cdr _e1978519810_)))
                                           (if (gx#stx-null? _tl1978719817_)
                                               ((lambda (_L19820_)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'if)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'vector?)
                            (cons _L19336_ '()))
                      (cons (_generate-list-vector17789_
                             _tgt19315_
                             _L19820_
                             (gx#datum->syntax '#f 'subvector->list)
                             '0
                             _K19318_
                             _E19319_)
                            (cons _E19319_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1978619814_)
                                               (_g1977219793_ _g1977319797_))))
                                       (_g1977219793_ _g1977319797_))
                                   (_g1977219793_ _g1977319797_))
                               (_g1977219793_ _g1977319797_))))
                       (_g1977219793_ _g1977319797_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g1977019905_
                                                           (lambda (_g1977319838_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1977319838_)
                         (let ((_e1977519841_ (gx#syntax-e _g1977319838_)))
                           (let ((_hd1977619845_ (##car _e1977519841_))
                                 (_tl1977719848_ (##cdr _e1977519841_)))
                             (if (gx#stx-datum? _hd1977619845_)
                                 (if (equal? (gx#stx-e _hd1977619845_)
                                             'simple:)
                                     (if (gx#stx-pair? _tl1977719848_)
                                         (let ((_e1977819851_
                                                (gx#syntax-e _tl1977719848_)))
                                           (let ((_hd1977919855_
                                                  (##car _e1977819851_))
                                                 (_tl1978019858_
                                                  (##cdr _e1977819851_)))
                                             (if (gx#stx-null? _tl1978019858_)
                                                 ((lambda (_L19861_)
                                                    (let ((_g1987419882_
                                                           (lambda (_g1987519878_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g1987519878_))))
                                                      (let ((_g1987319901_
                                                             (lambda (_g1987519886_)
                                                               ((lambda (_L19889_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons (gx#datum->syntax '#f 'and)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '##vector?)
                                                          (cons _L19336_ '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '##fx=)
                        (cons (cons (gx#datum->syntax '#f '##vector-length)
                                    (cons _L19336_ '()))
                              (cons _L19889_ '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (_generate-simple-vector17788_
                                               _tgt19315_
                                               _L19861_
                                               '0
                                               _K19318_
                                               _E19319_)
                                              (cons _E19319_ '()))))))
                        _g1987519886_))))
                (_g1987319901_ (gx#stx-length _L19861_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd1977919855_)
                                                 (_g1977119834_
                                                  _g1977319838_))))
                                         (_g1977119834_ _g1977319838_))
                                     (_g1977119834_ _g1977319838_))
                                 (_g1977119834_ _g1977319838_))))
                         (_g1977119834_ _g1977319838_)))))
              (_g1977019905_ _L19758_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd1943119752_)
                                             (_g1935719731_ _g1936319735_))))
                                     (_g1935719731_ _g1936319735_))
                                 (_g1935719731_ _g1936319735_))
                             (_g1935719731_ _g1936319735_))))
                     (_g1935719731_ _g1936319735_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g1935520087_
                                                         (lambda (_g1936319913_)
                                                           (if (gx#stx-pair?
                                                                _g1936319913_)
                                                               (let ((_e1942019916_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _g1936319913_)))
                         (let ((_hd1942119920_ (##car _e1942019916_))
                               (_tl1942219923_ (##cdr _e1942019916_)))
                           (if (gx#stx-datum? _hd1942119920_)
                               (if (equal? (gx#stx-e _hd1942119920_) 'values:)
                                   (if (gx#stx-pair? _tl1942219923_)
                                       (let ((_e1942319926_
                                              (gx#syntax-e _tl1942219923_)))
                                         (let ((_hd1942419930_
                                                (##car _e1942319926_))
                                               (_tl1942519933_
                                                (##cdr _e1942319926_)))
                                           (if (gx#stx-null? _tl1942519933_)
                                               ((lambda (_L19936_)
                                                  (let ((_g1995019971_
                                                         (lambda (_g1995119967_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g1995119967_))))
                                                    (let ((_g1994920012_
                                                           (lambda (_g1995119975_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1995119975_)
                         (let ((_e1996019978_ (gx#syntax-e _g1995119975_)))
                           (let ((_hd1996119982_ (##car _e1996019978_))
                                 (_tl1996219985_ (##cdr _e1996019978_)))
                             (if (gx#stx-datum? _hd1996119982_)
                                 (if (equal? (gx#stx-e _hd1996119982_) 'list:)
                                     (if (gx#stx-pair? _tl1996219985_)
                                         (let ((_e1996319988_
                                                (gx#syntax-e _tl1996219985_)))
                                           (let ((_hd1996419992_
                                                  (##car _e1996319988_))
                                                 (_tl1996519995_
                                                  (##cdr _e1996319988_)))
                                             (if (gx#stx-null? _tl1996519995_)
                                                 ((lambda (_L19998_)
                                                    (_generate-list-vector17789_
                                                     _tgt19315_
                                                     _L19998_
                                                     (gx#datum->syntax
                                                      '#f
                                                      'values->list)
                                                     '0
                                                     _K19318_
                                                     _E19319_))
                                                  _hd1996419992_)
                                                 (_g1995019971_
                                                  _g1995119975_))))
                                         (_g1995019971_ _g1995119975_))
                                     (_g1995019971_ _g1995119975_))
                                 (_g1995019971_ _g1995119975_))))
                         (_g1995019971_ _g1995119975_)))))
              (let ((_g1994820083_
                     (lambda (_g1995120016_)
                       (if (gx#stx-pair? _g1995120016_)
                           (let ((_e1995320019_ (gx#syntax-e _g1995120016_)))
                             (let ((_hd1995420023_ (##car _e1995320019_))
                                   (_tl1995520026_ (##cdr _e1995320019_)))
                               (if (gx#stx-datum? _hd1995420023_)
                                   (if (equal? (gx#stx-e _hd1995420023_)
                                               'simple:)
                                       (if (gx#stx-pair? _tl1995520026_)
                                           (let ((_e1995620029_
                                                  (gx#syntax-e
                                                   _tl1995520026_)))
                                             (let ((_hd1995720033_
                                                    (##car _e1995620029_))
                                                   (_tl1995820036_
                                                    (##cdr _e1995620029_)))
                                               (if (gx#stx-null?
                                                    _tl1995820036_)
                                                   ((lambda (_L20039_)
                                                      (let ((_g2005220060_
                                                             (lambda (_g2005320056_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2005320056_))))
                                                        (let ((_g2005120079_
                                                               (lambda (_g2005320064_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L20067_)
                            (let ()
                              (cons (gx#datum->syntax '#f 'if)
                                    (cons (cons (gx#datum->syntax '#f '##fx=)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'values-count)
                                                            (cons _L19336_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _L20067_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (_generate-simple-vector17788_
                                                 _tgt19315_
                                                 _L20039_
                                                 '0
                                                 _K19318_
                                                 _E19319_)
                                                (cons _E19319_ '()))))))
                          _g2005320064_))))
                  (_g2005120079_ (gx#stx-length _L20039_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1995720033_)
                                                   (_g1994920012_
                                                    _g1995120016_))))
                                           (_g1994920012_ _g1995120016_))
                                       (_g1994920012_ _g1995120016_))
                                   (_g1994920012_ _g1995120016_))))
                           (_g1994920012_ _g1995120016_)))))
                (_g1994820083_ _L19936_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1942419930_)
                                               (_g1935619909_ _g1936319913_))))
                                       (_g1935619909_ _g1936319913_))
                                   (_g1935619909_ _g1936319913_))
                               (_g1935619909_ _g1936319913_))))
                       (_g1935619909_ _g1936319913_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g1935420158_
                                                           (lambda (_g1936320091_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1936320091_)
                         (let ((_e1941320094_ (gx#syntax-e _g1936320091_)))
                           (let ((_hd1941420098_ (##car _e1941320094_))
                                 (_tl1941520101_ (##cdr _e1941320094_)))
                             (if (gx#stx-datum? _hd1941420098_)
                                 (if (equal? (gx#stx-e _hd1941420098_) 'box:)
                                     (if (gx#stx-pair? _tl1941520101_)
                                         (let ((_e1941620104_
                                                (gx#syntax-e _tl1941520101_)))
                                           (let ((_hd1941720108_
                                                  (##car _e1941620104_))
                                                 (_tl1941820111_
                                                  (##cdr _e1941620104_)))
                                             (if (gx#stx-null? _tl1941820111_)
                                                 ((lambda (_L20114_)
                                                    (let ((_g2012720135_
                                                           (lambda (_g2012820131_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g2012820131_))))
                                                      (let ((_g2012620154_
                                                             (lambda (_g2012820139_)
                                                               ((lambda (_L20142_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons (gx#datum->syntax '#f '##box?)
                                              (cons _L19336_ '()))
                                        (cons (cons (gx#datum->syntax '#f 'let)
                                                    (cons (cons (cons _L20142_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax '#f '##unbox)
                                          (cons _L19336_ '()))
                                    '()))
                        '())
                  (cons (_generate117785_ _L20142_ _L20114_ _K19318_ _E19319_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _E19319_ '()))))))
                        _g2012820139_))))
                (_g2012620154_ (gx#genident 'e)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd1941720108_)
                                                 (_g1935520087_
                                                  _g1936320091_))))
                                         (_g1935520087_ _g1936320091_))
                                     (_g1935520087_ _g1936320091_))
                                 (_g1935520087_ _g1936320091_))))
                         (_g1935520087_ _g1936320091_)))))
              (let ((_g1935320212_
                     (lambda (_g1936320162_)
                       (if (gx#stx-pair? _g1936320162_)
                           (let ((_e1940320165_ (gx#syntax-e _g1936320162_)))
                             (let ((_hd1940420169_ (##car _e1940320165_))
                                   (_tl1940520172_ (##cdr _e1940320165_)))
                               (if (gx#stx-datum? _hd1940420169_)
                                   (if (equal? (gx#stx-e _hd1940420169_)
                                               'splice:)
                                       (if (gx#stx-pair? _tl1940520172_)
                                           (let ((_e1940620175_
                                                  (gx#syntax-e
                                                   _tl1940520172_)))
                                             (let ((_hd1940720179_
                                                    (##car _e1940620175_))
                                                   (_tl1940820182_
                                                    (##cdr _e1940620175_)))
                                               (if (gx#stx-pair?
                                                    _tl1940820182_)
                                                   (let ((_e1940920185_
                                                          (gx#syntax-e
                                                           _tl1940820182_)))
                                                     (let ((_hd1941020189_
                                                            (##car _e1940920185_))
                                                           (_tl1941120192_
                                                            (##cdr _e1940920185_)))
                                                       (if (gx#stx-null?
                                                            _tl1941120192_)
                                                           ((lambda (_L20195_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L20197_)
                      (_generate-splice17787_
                       _tgt19315_
                       _L20197_
                       _L20195_
                       _K19318_
                       _E19319_))
                    _hd1941020189_
                    _hd1940720179_)
                   (_g1935420158_ _g1936320162_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1935420158_
                                                    _g1936320162_))))
                                           (_g1935420158_ _g1936320162_))
                                       (_g1935420158_ _g1936320162_))
                                   (_g1935420158_ _g1936320162_))))
                           (_g1935420158_ _g1936320162_)))))
                (let ((_g1935220233_
                       (lambda (_g1936320216_)
                         (if (gx#stx-pair? _g1936320216_)
                             (let ((_e1939820219_ (gx#syntax-e _g1936320216_)))
                               (let ((_hd1939920223_ (##car _e1939820219_))
                                     (_tl1940020226_ (##cdr _e1939820219_)))
                                 (if (gx#stx-datum? _hd1939920223_)
                                     (if (equal? (gx#stx-e _hd1939920223_)
                                                 'null:)
                                         (if (gx#stx-null? _tl1940020226_)
                                             ((lambda ()
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'if)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '##null?)
                          (cons _L19336_ '()))
                    (cons _K19318_ (cons _E19319_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1935320212_ _g1936320216_))
                                         (_g1935320212_ _g1936320216_))
                                     (_g1935320212_ _g1936320216_))))
                             (_g1935320212_ _g1936320216_)))))
                  (let ((_g1935120352_
                         (lambda (_g1936320237_)
                           (if (gx#stx-pair? _g1936320237_)
                               (let ((_e1938920240_
                                      (gx#syntax-e _g1936320237_)))
                                 (let ((_hd1939020244_ (##car _e1938920240_))
                                       (_tl1939120247_ (##cdr _e1938920240_)))
                                   (if (gx#stx-datum? _hd1939020244_)
                                       (if (equal? (gx#stx-e _hd1939020244_)
                                                   'cons:)
                                           (if (gx#stx-pair? _tl1939120247_)
                                               (let ((_e1939220250_
                                                      (gx#syntax-e
                                                       _tl1939120247_)))
                                                 (let ((_hd1939320254_
                                                        (##car _e1939220250_))
                                                       (_tl1939420257_
                                                        (##cdr _e1939220250_)))
                                                   (if (gx#stx-pair?
                                                        _tl1939420257_)
                                                       (let ((_e1939520260_
                                                              (gx#syntax-e
                                                               _tl1939420257_)))
                                                         (let ((_hd1939620264_
                                                                (##car _e1939520260_))
                                                               (_tl1939720267_
                                                                (##cdr _e1939520260_)))
                                                           (if (gx#stx-null?
                                                                _tl1939720267_)
                                                               ((lambda (_L20270_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L20272_)
                          (let ((_g2028820303_
                                 (lambda (_g2028920299_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g2028920299_))))
                            (let ((_g2028720348_
                                   (lambda (_g2028920307_)
                                     (if (gx#stx-pair? _g2028920307_)
                                         (let ((_e2029220310_
                                                (gx#syntax-e _g2028920307_)))
                                           (let ((_hd2029320314_
                                                  (##car _e2029220310_))
                                                 (_tl2029420317_
                                                  (##cdr _e2029220310_)))
                                             (if (gx#stx-pair? _tl2029420317_)
                                                 (let ((_e2029520320_
                                                        (gx#syntax-e
                                                         _tl2029420317_)))
                                                   (let ((_hd2029620324_
                                                          (##car _e2029520320_))
                                                         (_tl2029720327_
                                                          (##cdr _e2029520320_)))
                                                     (if (gx#stx-null?
                                                          _tl2029720327_)
                                                         ((lambda (_L20330_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L20332_)
                    (let ()
                      (cons (gx#datum->syntax '#f 'if)
                            (cons (cons (gx#datum->syntax '#f '##pair?)
                                        (cons _L19336_ '()))
                                  (cons (cons (gx#datum->syntax '#f 'let)
                                              (cons (cons (cons _L20332_
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     '##car)
                                    (cons _L19336_ '()))
                              '()))
                  (cons (cons _L20330_
                              (cons (cons (gx#datum->syntax '#f '##cdr)
                                          (cons _L19336_ '()))
                                    '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (_generate117785_
                                                           _L20332_
                                                           _L20272_
                                                           (_generate117785_
                                                            _L20330_
                                                            _L20270_
                                                            _K19318_
                                                            _E19319_)
                                                           _E19319_)
                                                          '())))
                                        (cons _E19319_ '()))))))
                  _hd2029620324_
                  _hd2029320314_)
                 (_g2028820303_ _g2028920307_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2028820303_
                                                  _g2028920307_))))
                                         (_g2028820303_ _g2028920307_)))))
                              (_g2028720348_
                               (list (gx#genident 'hd) (gx#genident 'tl))))))
                        _hd1939620264_
                        _hd1939320254_)
                       (_g1935220233_ _g1936320237_))))
               (_g1935220233_ _g1936320237_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1935220233_ _g1936320237_))
                                           (_g1935220233_ _g1936320237_))
                                       (_g1935220233_ _g1936320237_))))
                               (_g1935220233_ _g1936320237_)))))
                    (let ((_g1935020392_
                           (lambda (_g1936320356_)
                             (if (gx#stx-pair? _g1936320356_)
                                 (let ((_e1938120359_
                                        (gx#syntax-e _g1936320356_)))
                                   (let ((_hd1938220363_ (##car _e1938120359_))
                                         (_tl1938320366_
                                          (##cdr _e1938120359_)))
                                     (if (gx#stx-datum? _hd1938220363_)
                                         (if (equal? (gx#stx-e _hd1938220363_)
                                                     'not:)
                                             (if (gx#stx-pair? _tl1938320366_)
                                                 (let ((_e1938420369_
                                                        (gx#syntax-e
                                                         _tl1938320366_)))
                                                   (let ((_hd1938520373_
                                                          (##car _e1938420369_))
                                                         (_tl1938620376_
                                                          (##cdr _e1938420369_)))
                                                     (if (gx#stx-null?
                                                          _tl1938620376_)
                                                         ((lambda (_L20379_)
                                                            (_generate117785_
                                                             _tgt19315_
                                                             _L20379_
                                                             _E19319_
                                                             _K19318_))
                                                          _hd1938520373_)
                                                         (_g1935120352_
                                                          _g1936320356_))))
                                                 (_g1935120352_ _g1936320356_))
                                             (_g1935120352_ _g1936320356_))
                                         (_g1935120352_ _g1936320356_))))
                                 (_g1935120352_ _g1936320356_)))))
                      (let ((_g1934920480_
                             (lambda (_g1936320396_)
                               (if (gx#stx-pair? _g1936320396_)
                                   (let ((_e1937720399_
                                          (gx#syntax-e _g1936320396_)))
                                     (let ((_hd1937820403_
                                            (##car _e1937720399_))
                                           (_tl1937920406_
                                            (##cdr _e1937720399_)))
                                       (if (gx#stx-datum? _hd1937820403_)
                                           (if (equal? (gx#stx-e
                                                        _hd1937820403_)
                                                       'or:)
                                               ((lambda (_L20409_)
                                                  (let ((_g2042120433_
                                                         (lambda (_g2042220429_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2042220429_))))
                                                    (let ((_g2042020444_
                                                           (lambda (_g2042220437_)
                                                             ((lambda ()
                                                                _E19319_)))))
                                                      (let ((_g2041920476_
                                                             (lambda (_g2042220448_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2042220448_)
                           (let ((_e2042520451_ (gx#syntax-e _g2042220448_)))
                             (let ((_hd2042620455_ (##car _e2042520451_))
                                   (_tl2042720458_ (##cdr _e2042520451_)))
                               ((lambda (_L20461_ _L20463_)
                                  (_generate117785_
                                   _tgt19315_
                                   _L20463_
                                   _K19318_
                                   (_generate117785_
                                    _tgt19315_
                                    (cons 'or: _L20461_)
                                    _K19318_
                                    _E19319_)))
                                _tl2042720458_
                                _hd2042620455_)))
                           (_g2042020444_ _g2042220448_)))))
                (_g2041920476_ _L20409_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl1937920406_)
                                               (_g1935020392_ _g1936320396_))
                                           (_g1935020392_ _g1936320396_))))
                                   (_g1935020392_ _g1936320396_)))))
                        (let ((_g1934820568_
                               (lambda (_g1936320484_)
                                 (if (gx#stx-pair? _g1936320484_)
                                     (let ((_e1937320487_
                                            (gx#syntax-e _g1936320484_)))
                                       (let ((_hd1937420491_
                                              (##car _e1937320487_))
                                             (_tl1937520494_
                                              (##cdr _e1937320487_)))
                                         (if (gx#stx-datum? _hd1937420491_)
                                             (if (equal? (gx#stx-e
                                                          _hd1937420491_)
                                                         'and:)
                                                 ((lambda (_L20497_)
                                                    (let ((_g2050920521_
                                                           (lambda (_g2051020517_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g2051020517_))))
                                                      (let ((_g2050820532_
                                                             (lambda (_g2051020525_)
                                                               ((lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _K19318_)))))
                (let ((_g2050720564_
                       (lambda (_g2051020536_)
                         (if (gx#stx-pair? _g2051020536_)
                             (let ((_e2051320539_ (gx#syntax-e _g2051020536_)))
                               (let ((_hd2051420543_ (##car _e2051320539_))
                                     (_tl2051520546_ (##cdr _e2051320539_)))
                                 ((lambda (_L20549_ _L20551_)
                                    (_generate117785_
                                     _tgt19315_
                                     _L20551_
                                     (_generate117785_
                                      _tgt19315_
                                      (cons 'and: _L20549_)
                                      _K19318_
                                      _E19319_)
                                     _E19319_))
                                  _tl2051520546_
                                  _hd2051420543_)))
                             (_g2050820532_ _g2051020536_)))))
                  (_g2050720564_ _L20497_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _tl1937520494_)
                                                 (_g1934920480_ _g1936320484_))
                                             (_g1934920480_ _g1936320484_))))
                                     (_g1934920480_ _g1936320484_)))))
                          (let ((_g1934720857_
                                 (lambda (_g1936320572_)
                                   (if (gx#stx-pair? _g1936320572_)
                                       (let ((_e1936620575_
                                              (gx#syntax-e _g1936320572_)))
                                         (let ((_hd1936720579_
                                                (##car _e1936620575_))
                                               (_tl1936820582_
                                                (##cdr _e1936620575_)))
                                           (if (gx#stx-datum? _hd1936720579_)
                                               (if (equal? (gx#stx-e
                                                            _hd1936720579_)
                                                           '?:)
                                                   (if (gx#stx-pair?
                                                        _tl1936820582_)
                                                       (let ((_e1936920585_
                                                              (gx#syntax-e
                                                               _tl1936820582_)))
                                                         (let ((_hd1937020589_
                                                                (##car _e1936920585_))
                                                               (_tl1937120592_
                                                                (##cdr _e1936920585_)))
                                                           ((lambda (_L20595_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L20597_)
                      (let ((_g2061320645_
                             (lambda (_g2061420641_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g2061420641_))))
                        (let ((_g2061220743_
                               (lambda (_g2061420649_)
                                 (if (gx#stx-pair? _g2061420649_)
                                     (let ((_e2062820652_
                                            (gx#syntax-e _g2061420649_)))
                                       (let ((_hd2062920656_
                                              (##car _e2062820652_))
                                             (_tl2063020659_
                                              (##cdr _e2062820652_)))
                                         (if (gx#stx-datum? _hd2062920656_)
                                             (if (equal? (gx#stx-e
                                                          _hd2062920656_)
                                                         '::)
                                                 (if (gx#stx-pair?
                                                      _tl2063020659_)
                                                     (let ((_e2063120662_
                                                            (gx#syntax-e
                                                             _tl2063020659_)))
                                                       (let ((_hd2063220666_
                                                              (##car _e2063120662_))
                                                             (_tl2063320669_
                                                              (##cdr _e2063120662_)))
                                                         (if (gx#stx-pair?
                                                              _tl2063320669_)
                                                             (let ((_e2063420672_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl2063320669_)))
                       (let ((_hd2063520676_ (##car _e2063420672_))
                             (_tl2063620679_ (##cdr _e2063420672_)))
                         (if (gx#stx-datum? _hd2063520676_)
                             (if (equal? (gx#stx-e _hd2063520676_) '=>:)
                                 (if (gx#stx-pair? _tl2063620679_)
                                     (let ((_e2063720682_
                                            (gx#syntax-e _tl2063620679_)))
                                       (let ((_hd2063820686_
                                              (##car _e2063720682_))
                                             (_tl2063920689_
                                              (##cdr _e2063720682_)))
                                         (if (gx#stx-null? _tl2063920689_)
                                             ((lambda (_L20692_ _L20694_)
                                                (let ((_g2071220720_
                                                       (lambda (_g2071320716_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g2071320716_))))
                                                  (let ((_g2071120739_
                                                         (lambda (_g2071320724_)
                                                           ((lambda (_L20727_)
                                                              (let ()
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'if)
                              (cons (cons (gx#datum->syntax '#f '?)
                                          (cons _L20597_ (cons _L19336_ '())))
                                    (cons (cons (gx#datum->syntax '#f 'let)
                                                (cons (cons (cons _L20727_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _L20694_ (cons _L19336_ '())) '()))
                    '())
              (cons (_generate117785_ _L20727_ _L20692_ _K19318_ _E19319_)
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons _E19319_ '()))))))
                    _g2071320724_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2071120739_
                                                     (gx#genident 'e)))))
                                              _hd2063820686_
                                              _hd2063220666_)
                                             (_g2061320645_ _g2061420649_))))
                                     (_g2061320645_ _g2061420649_))
                                 (_g2061320645_ _g2061420649_))
                             (_g2061320645_ _g2061420649_))))
                     (_g2061320645_ _g2061420649_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2061320645_
                                                      _g2061420649_))
                                                 (_g2061320645_ _g2061420649_))
                                             (_g2061320645_ _g2061420649_))))
                                     (_g2061320645_ _g2061420649_)))))
                          (let ((_g2061120814_
                                 (lambda (_g2061420747_)
                                   (if (gx#stx-pair? _g2061420747_)
                                       (let ((_e2062020750_
                                              (gx#syntax-e _g2061420747_)))
                                         (let ((_hd2062120754_
                                                (##car _e2062020750_))
                                               (_tl2062220757_
                                                (##cdr _e2062020750_)))
                                           (if (gx#stx-datum? _hd2062120754_)
                                               (if (equal? (gx#stx-e
                                                            _hd2062120754_)
                                                           '=>:)
                                                   (if (gx#stx-pair?
                                                        _tl2062220757_)
                                                       (let ((_e2062320760_
                                                              (gx#syntax-e
                                                               _tl2062220757_)))
                                                         (let ((_hd2062420764_
                                                                (##car _e2062320760_))
                                                               (_tl2062520767_
                                                                (##cdr _e2062320760_)))
                                                           (if (gx#stx-null?
                                                                _tl2062520767_)
                                                               ((lambda (_L20770_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_g2078320791_
                                 (lambda (_g2078420787_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g2078420787_))))
                            (let ((_g2078220810_
                                   (lambda (_g2078420795_)
                                     ((lambda (_L20798_)
                                        (let ()
                                          (cons (gx#datum->syntax '#f 'let)
                                                (cons (cons (cons _L20798_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _L20597_ (cons _L19336_ '())) '()))
                    '())
              (cons (cons (gx#datum->syntax '#f 'if)
                          (cons _L20798_
                                (cons (_generate117785_
                                       _L20798_
                                       _L20770_
                                       _K19318_
                                       _E19319_)
                                      (cons _E19319_ '()))))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g2078420795_))))
                              (_g2078220810_ (gx#genident 'e)))))
                        _hd2062420764_)
                       (_g2061220743_ _g2061420747_))))
               (_g2061220743_ _g2061420747_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2061220743_
                                                    _g2061420747_))
                                               (_g2061220743_ _g2061420747_))))
                                       (_g2061220743_ _g2061420747_)))))
                            (let ((_g2061020842_
                                   (lambda (_g2061420818_)
                                     (if (gx#stx-pair? _g2061420818_)
                                         (let ((_e2061620821_
                                                (gx#syntax-e _g2061420818_)))
                                           (let ((_hd2061720825_
                                                  (##car _e2061620821_))
                                                 (_tl2061820828_
                                                  (##cdr _e2061620821_)))
                                             (if (gx#stx-null? _tl2061820828_)
                                                 ((lambda (_L20831_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '?)
                              (cons _L20597_ (cons _L19336_ '())))
                        (cons (_generate117785_
                               _tgt19315_
                               _L20831_
                               _K19318_
                               _E19319_)
                              (cons _E19319_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd2061720825_)
                                                 (_g2061120814_
                                                  _g2061420818_))))
                                         (_g2061120814_ _g2061420818_)))))
                              (let ((_g2060920853_
                                     (lambda (_g2061420846_)
                                       (if (gx#stx-null? _g2061420846_)
                                           ((lambda ()
                                              (cons (gx#datum->syntax '#f 'if)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '?)
                        (cons _L20597_ (cons _L19336_ '())))
                  (cons _K19318_ (cons _E19319_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g2061020842_ _g2061420846_)))))
                                (_g2060920853_ _L20595_)))))))
                    _tl1937120592_
                    _hd1937020589_)))
               (_g1934820568_ _g1936320572_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1934820568_
                                                    _g1936320572_))
                                               (_g1934820568_ _g1936320572_))))
                                       (_g1934820568_ _g1936320572_)))))
                            (_g1934720857_ _ptree19317_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _g1932219333_))))
                        (_g1932020861_ _tgt19315_)))))
                 (_generate-splice17787_
                  (lambda (_tgt18687_ _hd18689_ _rest18690_ _K18691_ _E18692_)
                    (let ((_g1869418711_
                           (lambda (_g1869518707_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1869518707_))))
                      (let ((_g1869319311_
                             (lambda (_g1869518715_)
                               (if (gx#stx-pair/null? _g1869518715_)
                                   (if (fx>= (gx#stx-length _g1869518715_) '0)
                                       (let ((_g29555_
                                              (gx#syntax-split-splice
                                               _g1869518715_
                                               '0)))
                                         (begin
                                           (let ((_g29556_
                                                  (values-count _g29555_)))
                                             (if (not (fx= _g29556_ 2))
                                                 (error "Context expects 2 values"
                                                        _g29556_)))
                                           (let ((_target1869718718_
                                                  (values-ref _g29555_ 0))
                                                 (_tl1869918721_
                                                  (values-ref _g29555_ 1)))
                                             (if (gx#stx-null? _tl1869918721_)
                                                 (letrec ((_loop1870018724_
                                                           (lambda (_hd1869818728_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _var1870418731_)
                     (if (gx#stx-pair? _hd1869818728_)
                         (let ((_e1870118734_ (gx#syntax-e _hd1869818728_)))
                           (let ((_lp-hd1870218738_ (##car _e1870118734_))
                                 (_lp-tl1870318741_ (##cdr _e1870118734_)))
                             (_loop1870018724_
                              _lp-tl1870318741_
                              (cons _lp-hd1870218738_ _var1870418731_))))
                         (let ((_var1870518744_ (reverse _var1870418731_)))
                           ((lambda (_L18748_)
                              (let ()
                                (let ((_g1876418781_
                                       (lambda (_g1876518777_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1876518777_))))
                                  (let ((_g1876319299_
                                         (lambda (_g1876518785_)
                                           (if (gx#stx-pair/null?
                                                _g1876518785_)
                                               (if (fx>= (gx#stx-length
                                                          _g1876518785_)
                                                         '0)
                                                   (let ((_g29557_
                                                          (gx#syntax-split-splice
                                                           _g1876518785_
                                                           '0)))
                                                     (begin
                                                       (let ((_g29558_
                                                              (values-count
                                                               _g29557_)))
                                                         (if (not (fx= _g29558_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29558_)))
               (let ((_target1876718788_ (values-ref _g29557_ 0))
                     (_tl1876918791_ (values-ref _g29557_ 1)))
                 (if (gx#stx-null? _tl1876918791_)
                     (letrec ((_loop1877018794_
                               (lambda (_hd1876818798_ _var-r1877418801_)
                                 (if (gx#stx-pair? _hd1876818798_)
                                     (let ((_e1877118804_
                                            (gx#syntax-e _hd1876818798_)))
                                       (let ((_lp-hd1877218808_
                                              (##car _e1877118804_))
                                             (_lp-tl1877318811_
                                              (##cdr _e1877118804_)))
                                         (_loop1877018794_
                                          _lp-tl1877318811_
                                          (cons _lp-hd1877218808_
                                                _var-r1877418801_))))
                                     (let ((_var-r1877518814_
                                            (reverse _var-r1877418801_)))
                                       ((lambda (_L18818_)
                                          (let ()
                                            (let ((_g1883518852_
                                                   (lambda (_g1883618848_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1883618848_))))
                                              (let ((_g1883419287_
                                                     (lambda (_g1883618856_)
                                                       (if (gx#stx-pair/null?
                                                            _g1883618856_)
                                                           (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1883618856_)
                             '0)
                       (let ((_g29559_
                              (gx#syntax-split-splice _g1883618856_ '0)))
                         (begin
                           (let ((_g29560_ (values-count _g29559_)))
                             (if (not (fx= _g29560_ 2))
                                 (error "Context expects 2 values" _g29560_)))
                           (let ((_target1883818859_ (values-ref _g29559_ 0))
                                 (_tl1884018862_ (values-ref _g29559_ 1)))
                             (if (gx#stx-null? _tl1884018862_)
                                 (letrec ((_loop1884118865_
                                           (lambda (_hd1883918869_
                                                    _init1884518872_)
                                             (if (gx#stx-pair? _hd1883918869_)
                                                 (let ((_e1884218875_
                                                        (gx#syntax-e
                                                         _hd1883918869_)))
                                                   (let ((_lp-hd1884318879_
                                                          (##car _e1884218875_))
                                                         (_lp-tl1884418882_
                                                          (##cdr _e1884218875_)))
                                                     (_loop1884118865_
                                                      _lp-tl1884418882_
                                                      (cons _lp-hd1884318879_
                                                            _init1884518872_))))
                                                 (let ((_init1884618885_
                                                        (reverse _init1884518872_)))
                                                   ((lambda (_L18889_)
                                                      (let ()
                                                        (let ((_g1890618914_
                                                               (lambda (_g1890718910_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1890718910_))))
                  (let ((_g1890519283_
                         (lambda (_g1890718918_)
                           ((lambda (_L18921_)
                              (let ()
                                (let ((_g1893418942_
                                       (lambda (_g1893518938_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1893518938_))))
                                  (let ((_g1893319279_
                                         (lambda (_g1893518946_)
                                           ((lambda (_L18949_)
                                              (let ()
                                                (let ((_g1896218970_
                                                       (lambda (_g1896318966_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1896318966_))))
                                                  (let ((_g1896119275_
                                                         (lambda (_g1896318974_)
                                                           ((lambda (_L18977_)
                                                              (let ()
                                                                (let ((_g1899018998_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g1899118994_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1899118994_))))
                          (let ((_g1898919271_
                                 (lambda (_g1899119002_)
                                   ((lambda (_L19005_)
                                      (let ()
                                        (let ((_g1901819026_
                                               (lambda (_g1901919022_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1901919022_))))
                                          (let ((_g1901719267_
                                                 (lambda (_g1901919030_)
                                                   ((lambda (_L19033_)
                                                      (let ()
                                                        (let ((_g1904619054_
                                                               (lambda (_g1904719050_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1904719050_))))
                  (let ((_g1904519263_
                         (lambda (_g1904719058_)
                           ((lambda (_L19061_)
                              (let ()
                                (let ((_g1907419082_
                                       (lambda (_g1907519078_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1907519078_))))
                                  (let ((_g1907319259_
                                         (lambda (_g1907519086_)
                                           ((lambda (_L19089_)
                                              (let ()
                                                (let ((_g1910219110_
                                                       (lambda (_g1910319106_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1910319106_))))
                                                  (let ((_g1910119244_
                                                         (lambda (_g1910319114_)
                                                           ((lambda (_L19117_)
                                                              (let ()
                                                                (let ((_g1913019138_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g1913119134_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1913119134_))))
                          (let ((_g1912919232_
                                 (lambda (_g1913119142_)
                                   ((lambda (_L19145_)
                                      (let ()
                                        (let ((_g1915819166_
                                               (lambda (_g1915919162_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1915919162_))))
                                          (let ((_g1915719228_
                                                 (lambda (_g1915919170_)
                                                   ((lambda (_L19173_)
                                                      (let ()
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'letrec)
                        (cons (cons (cons _L18949_
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons _L19061_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (begin
                            '#!void
                            (foldr (lambda (_g1918719198_ _g1918819201_)
                                     (cons _g1918719198_ _g1918819201_))
                                   '()
                                   _L18748_)))
                    (cons _L19089_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    (cons (cons _L19005_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'lambda)
                                                            (cons (cons _L19033_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _L19061_
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g1918919204_
                                                        _g1919019207_)
                                                 (cons _g1918919204_
                                                       _g1919019207_))
                                               '()
                                               _L18818_))))
                          (cons _L19173_ '())))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons _L18977_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'lambda)
                          (cons (cons _L19061_
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g1919119210_
                                                        _g1919219213_)
                                                 (cons _g1919119210_
                                                       _g1919219213_))
                                               '()
                                               _L18818_)))
                                (cons (cons (gx#datum->syntax '#f 'if)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'pair?)
                                                        (cons _L19061_ '()))
                                                  (cons (cons _L19005_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '##car)
                                  (cons _L19061_ '()))
                            (cons _L19061_
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g1919319216_
                                                    _g1919419219_)
                                             (cons _g1919319216_
                                                   _g1919419219_))
                                           '()
                                           _L18818_)))))
                (cons _L19145_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              (cons (cons _L18977_
                                          (cons _L18921_
                                                (begin
                                                  '#!void
                                                  (foldr (lambda (_g1919519222_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1919619225_)
                   (cons _g1919519222_ _g1919619225_))
                 '()
                 _L18889_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1915919170_))))
                                            (_g1915719228_
                                             (_generate117785_
                                              _L19033_
                                              _hd18689_
                                              _L19117_
                                              _L19145_))))))
                                    _g1913119142_))))
                            (_g1912919232_
                             (cons _L18949_
                                   (cons _L19061_
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g1923519238_
                                                           _g1923619241_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'reverse)
                        (cons _g1923519238_ '()))
                  _g1923619241_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()
                                                  _L18818_)))))))))
                    _g1910319114_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1910119244_
                                                     (cons _L18977_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##cdr)
                               (cons _L19061_ '()))
                         (begin
                           (gx#syntax-check-splice-targets _L18818_ _L18748_)
                           (foldr (lambda (_g1924719251_
                                           _g1924819254_
                                           _g1924919256_)
                                    (cons (cons (gx#datum->syntax '#f 'cons)
                                                (cons _g1924819254_
                                                      (cons _g1924719251_
                                                            '())))
                                          _g1924919256_))
                                  '()
                                  _L18818_
                                  _L18748_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g1907519086_))))
                                    (_g1907319259_
                                     (_generate117785_
                                      _L19061_
                                      _rest18690_
                                      _K18691_
                                      _E18692_))))))
                            _g1904719058_))))
                    (_g1904519263_ (gx#genident 'rest))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1901919030_))))
                                            (_g1901719267_
                                             (gx#genident 'hd))))))
                                    _g1899119002_))))
                            (_g1898919271_ (gx#genident 'splice-try))))))
                    _g1896318974_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1896119275_
                                                     (gx#genident
                                                      'splice-loop))))))
                                            _g1893518946_))))
                                    (_g1893319279_
                                     (gx#genident 'splice-rest))))))
                            _g1890718918_))))
                    (_g1890519283_ _tgt18687_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _init1884618885_))))))
                                   (_loop1884118865_ _target1883818859_ '()))
                                 (_g1883518852_ _g1883618856_)))))
                       (_g1883518852_ _g1883618856_))
                   (_g1883518852_ _g1883618856_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1883419287_
                                                 (make-list
                                                  (gx#stx-length
                                                   (begin
                                                     '#!void
                                                     (foldr (lambda (_g1929019293_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g1929119296_)
                      (cons _g1929019293_ _g1929119296_))
                    '()
                    _L18748_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         '@list)
                                                        '())))))))
                                        _var-r1877518814_))))))
                       (_loop1877018794_ _target1876718788_ '()))
                     (_g1876418781_ _g1876518785_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1876418781_
                                                    _g1876518785_))
                                               (_g1876418781_
                                                _g1876518785_)))))
                                    (_g1876319299_
                                     (gx#gentemps
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g1930219305_
                                                        _g1930319308_)
                                                 (cons _g1930219305_
                                                       _g1930319308_))
                                               '()
                                               _L18748_))))))))
                            _var1870518744_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop1870018724_
                                                    _target1869718718_
                                                    '()))
                                                 (_g1869418711_
                                                  _g1869518715_)))))
                                       (_g1869418711_ _g1869518715_))
                                   (_g1869418711_ _g1869518715_)))))
                        (_g1869319311_
                         (|gerbil/core::<match>[1]#match-pattern-vars|
                          _hd18689_))))))
                 (_generate-simple-vector17788_
                  (lambda (_tgt18529_
                           _body18531_
                           _start18532_
                           _K18533_
                           _E18534_)
                    ((letrec ((_recur18536_
                               (lambda (_rest18539_ _off18541_)
                                 (let ((_g1854418556_
                                        (lambda (_g1854518552_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g1854518552_))))
                                   (let ((_g1854318567_
                                          (lambda (_g1854518560_)
                                            ((lambda () _K18533_)))))
                                     (let ((_g1854218683_
                                            (lambda (_g1854518571_)
                                              (if (gx#stx-pair? _g1854518571_)
                                                  (let ((_e1854818574_
                                                         (gx#syntax-e
                                                          _g1854518571_)))
                                                    (let ((_hd1854918578_
                                                           (##car _e1854818574_))
                                                          (_tl1855018581_
                                                           (##cdr _e1854818574_)))
                                                      ((lambda (_L18584_
                                                                _L18586_)
                                                         (let ((_g1860118620_
                                                                (lambda (_g1860218616_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1860218616_))))
                   (let ((_g1860018679_
                          (lambda (_g1860218624_)
                            (if (gx#stx-pair? _g1860218624_)
                                (let ((_e1860618627_
                                       (gx#syntax-e _g1860218624_)))
                                  (let ((_hd1860718631_ (##car _e1860618627_))
                                        (_tl1860818634_ (##cdr _e1860618627_)))
                                    (if (gx#stx-pair? _tl1860818634_)
                                        (let ((_e1860918637_
                                               (gx#syntax-e _tl1860818634_)))
                                          (let ((_hd1861018641_
                                                 (##car _e1860918637_))
                                                (_tl1861118644_
                                                 (##cdr _e1860918637_)))
                                            (if (gx#stx-pair? _tl1861118644_)
                                                (let ((_e1861218647_
                                                       (gx#syntax-e
                                                        _tl1861118644_)))
                                                  (let ((_hd1861318651_
                                                         (##car _e1861218647_))
                                                        (_tl1861418654_
                                                         (##cdr _e1861218647_)))
                                                    (if (gx#stx-null?
                                                         _tl1861418654_)
                                                        ((lambda (_L18657_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L18659_
                          _L18660_)
                   (let ()
                     (cons (gx#datum->syntax '#f 'let)
                           (cons (cons (cons _L18660_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##vector-ref)
                                                         (cons _L18659_
                                                               (cons _L18657_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       '())
                                 (cons (_generate117785_
                                        _L18660_
                                        _L18586_
                                        (_recur18536_
                                         _L18584_
                                         (fx1+ _off18541_))
                                        _E18534_)
                                       '())))))
                 _hd1861318651_
                 _hd1861018641_
                 _hd1860718631_)
                (_g1860118620_ _g1860218624_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1860118620_
                                                 _g1860218624_))))
                                        (_g1860118620_ _g1860218624_))))
                                (_g1860118620_ _g1860218624_)))))
                     (_g1860018679_
                      (list (gx#genident 'e) _tgt18529_ _off18541_)))))
               _tl1855018581_
               _hd1854918578_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1854318567_
                                                   _g1854518571_)))))
                                       (_g1854218683_ _rest18539_)))))))
                       _recur18536_)
                     _body18531_
                     _start18532_)))
                 (_generate-list-vector17789_
                  (lambda (_tgt18439_
                           _body18441_
                           _tgt->list18442_
                           _start18443_
                           _K18444_
                           _E18445_)
                    (let ((_g1844718466_
                           (lambda (_g1844818462_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1844818462_))))
                      (let ((_g1844618525_
                             (lambda (_g1844818470_)
                               (if (gx#stx-pair? _g1844818470_)
                                   (let ((_e1845218473_
                                          (gx#syntax-e _g1844818470_)))
                                     (let ((_hd1845318477_
                                            (##car _e1845218473_))
                                           (_tl1845418480_
                                            (##cdr _e1845218473_)))
                                       (if (gx#stx-pair? _tl1845418480_)
                                           (let ((_e1845518483_
                                                  (gx#syntax-e
                                                   _tl1845418480_)))
                                             (let ((_hd1845618487_
                                                    (##car _e1845518483_))
                                                   (_tl1845718490_
                                                    (##cdr _e1845518483_)))
                                               (if (gx#stx-pair?
                                                    _tl1845718490_)
                                                   (let ((_e1845818493_
                                                          (gx#syntax-e
                                                           _tl1845718490_)))
                                                     (let ((_hd1845918497_
                                                            (##car _e1845818493_))
                                                           (_tl1846018500_
                                                            (##cdr _e1845818493_)))
                                                       (if (gx#stx-null?
                                                            _tl1846018500_)
                                                           ((lambda (_L18503_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L18505_
                             _L18506_)
                      (let ()
                        (cons (gx#datum->syntax '#f 'let)
                              (cons (cons (cons _L18506_
                                                (cons (cons _L18503_
                                                            (cons _L18505_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())
                                    (cons (_generate117785_
                                           _L18506_
                                           _body18441_
                                           _K18444_
                                           _E18445_)
                                          '())))))
                    _hd1845918497_
                    _hd1845618487_
                    _hd1845318477_)
                   (_g1844718466_ _g1844818470_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1844718466_
                                                    _g1844818470_))))
                                           (_g1844718466_ _g1844818470_))))
                                   (_g1844718466_ _g1844818470_)))))
                        (_g1844618525_
                         (list (gx#genident 'e)
                               _tgt18439_
                               _tgt->list18442_))))))
                 (_generate-struct17790_
                  (lambda (_info18172_
                           _tgt18174_
                           _body18175_
                           _K18176_
                           _E18177_)
                    (let ((_rtd18179_
                           (if (|gerbil/core::<MOP>::<MOP:2>[1]#extended-struct-info?|
                                _info18172_)
                               (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor|
                                _info18172_)
                               '#f)))
                      (let ((_fields18189_
                             ((letrec ((_lp18182_
                                        (lambda (_rtd18185_ _k18187_)
                                          (if _rtd18185_
                                              (_lp18182_
                                               (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor-e|
                                                (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-super|
                                                 _rtd18185_))
                                               (fx+ (length (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-fields|
                                                             _rtd18185_))
                                                    _k18187_))
                                              _k18187_))))
                                _lp18182_)
                              _rtd18179_
                              '0)))
                        (let ((_final?18192_
                               (if _rtd18179_
                                   (assgetq 'final:
                                            (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-plist|
                                             _rtd18179_))
                                   '#f)))
                          (let ((_g1819518203_
                                 (lambda (_g1819618199_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1819618199_))))
                            (let ((_g1819418435_
                                   (lambda (_g1819618207_)
                                     ((lambda (_L18210_)
                                        (let ()
                                          (let ((_g1822518233_
                                                 (lambda (_g1822618229_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1822618229_))))
                                            (let ((_g1822418431_
                                                   (lambda (_g1822618237_)
                                                     ((lambda (_L18240_)
                                                        (let ()
                                                          (let ((_g1825318261_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1825418257_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1825418257_))))
                    (let ((_g1825218427_
                           (lambda (_g1825418265_)
                             ((lambda (_L18268_)
                                (let ()
                                  (let ()
                                    (let ((_g1828418305_
                                           (lambda (_g1828518301_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1828518301_))))
                                      (let ((_g1828318348_
                                             (lambda (_g1828518309_)
                                               (if (gx#stx-pair? _g1828518309_)
                                                   (let ((_e1829418312_
                                                          (gx#syntax-e
                                                           _g1828518309_)))
                                                     (let ((_hd1829518316_
                                                            (##car _e1829418312_))
                                                           (_tl1829618319_
                                                            (##cdr _e1829418312_)))
                                                       (if (gx#stx-datum?
                                                            _hd1829518316_)
                                                           (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd1829518316_)
                               'list:)
                       (if (gx#stx-pair? _tl1829618319_)
                           (let ((_e1829718322_ (gx#syntax-e _tl1829618319_)))
                             (let ((_hd1829818326_ (##car _e1829718322_))
                                   (_tl1829918329_ (##cdr _e1829718322_)))
                               (if (gx#stx-null? _tl1829918329_)
                                   ((lambda (_L18332_)
                                      (cons (gx#datum->syntax '#f 'if)
                                            (cons (cons _L18268_
                                                        (cons _L18240_
                                                              (cons _L18210_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (_generate-list-vector17789_
                                                         _tgt18174_
                                                         _L18332_
                                                         (gx#datum->syntax
                                                          '#f
                                                          'struct->list)
                                                         '1
                                                         _K18176_
                                                         _E18177_)
                                                        (cons _E18177_ '())))))
                                    _hd1829818326_)
                                   (_g1828418305_ _g1828518309_))))
                           (_g1828418305_ _g1828518309_))
                       (_g1828418305_ _g1828518309_))
                   (_g1828418305_ _g1828518309_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1828418305_
                                                    _g1828518309_)))))
                                        (let ((_g1828218423_
                                               (lambda (_g1828518352_)
                                                 (if (gx#stx-pair?
                                                      _g1828518352_)
                                                     (let ((_e1828718355_
                                                            (gx#syntax-e
                                                             _g1828518352_)))
                                                       (let ((_hd1828818359_
                                                              (##car _e1828718355_))
                                                             (_tl1828918362_
                                                              (##cdr _e1828718355_)))
                                                         (if (gx#stx-datum?
                                                              _hd1828818359_)
                                                             (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _hd1828818359_)
                                 'simple:)
                         (if (gx#stx-pair? _tl1828918362_)
                             (let ((_e1829018365_
                                    (gx#syntax-e _tl1828918362_)))
                               (let ((_hd1829118369_ (##car _e1829018365_))
                                     (_tl1829218372_ (##cdr _e1829018365_)))
                                 (if (gx#stx-null? _tl1829218372_)
                                     ((lambda (_L18375_)
                                        (let ((_K18388_
                                               (_generate-simple-vector17788_
                                                _tgt18174_
                                                _L18375_
                                                '1
                                                _K18176_
                                                _E18177_)))
                                          (if (if _rtd18179_
                                                  (fx<= (gx#stx-length
                                                         _L18375_)
                                                        _fields18189_)
                                                  '#f)
                                              (cons (gx#datum->syntax '#f 'if)
                                                    (cons (cons _L18268_
                                                                (cons _L18240_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _L18210_ '())))
                  (cons _K18388_ (cons _E18177_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g1839118399_
                                                     (lambda (_g1839218395_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1839218395_))))
                                                (let ((_g1839018419_
                                                       (lambda (_g1839218403_)
                                                         ((lambda (_L18406_)
                                                            (let ()
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'if)
                            (cons (cons (gx#datum->syntax '#f 'and)
                                        (cons (cons _L18268_
                                                    (cons _L18240_
                                                          (cons _L18210_ '())))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '##fx<)
                                                          (cons _L18406_
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     '##vector-length)
                                    (cons _L18210_ '()))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (cons _K18388_ (cons _E18177_ '()))))))
                  _g1839218403_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1839018419_
                                                   (gx#stx-length
                                                    _L18375_)))))))
                                      _hd1829118369_)
                                     (_g1828318348_ _g1828518352_))))
                             (_g1828318348_ _g1828518352_))
                         (_g1828318348_ _g1828518352_))
                     (_g1828318348_ _g1828518352_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1828318348_
                                                      _g1828518352_)))))
                                          (_g1828218423_ _body18175_)))))))
                              _g1825418265_))))
                      (_g1825218427_
                       (if _final?18192_
                           (gx#datum->syntax '#f 'direct-struct-instance?)
                           (gx#datum->syntax '#f 'struct-instance?)))))))
              _g1822618237_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1822418431_
                                               (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-identifier|
                                                _info18172_))))))
                                      _g1819618207_))))
                              (_g1819418435_ _tgt18174_))))))))
                 (_generate-class17791_
                  (lambda (_info17793_
                           _tgt17795_
                           _body17796_
                           _K17797_
                           _E17798_)
                    (let ((_rtd17800_
                           (if (|gerbil/core::<MOP>::<MOP:2>[1]#extended-class-info?|
                                _info17793_)
                               (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor|
                                _info17793_)
                               '#f)))
                      (let ((_known-slot?17802_ #!void))
                        (letrec ((_rtd-known-slot?17804_
                                  (lambda (_rtd18153_ _slot18155_)
                                    (if _rtd18153_
                                        (let ((_$e18157_
                                               (memq _slot18155_
                                                     (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-slots|
                                                      _rtd18153_))))
                                          (if _$e18157_
                                              _$e18157_
                                              (ormap (lambda (_g1816018162_)
                                                       (_rtd-known-slot?17804_
                                                        _g1816018162_
                                                        _slot18155_))
                                                     (map |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor-e|
                                                          (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-super|
                                                           _rtd18153_)))))
                                        '#f)))
                                 (_recur17805_
                                  (lambda (_klass17939_ _rest17941_)
                                    (let ((_g1794417960_
                                           (lambda (_g1794517956_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1794517956_))))
                                      (let ((_g1794317971_
                                             (lambda (_g1794517964_)
                                               ((lambda () _K17797_)))))
                                        (let ((_g1794218149_
                                               (lambda (_g1794517975_)
                                                 (if (gx#stx-pair?
                                                      _g1794517975_)
                                                     (let ((_e1794917978_
                                                            (gx#syntax-e
                                                             _g1794517975_)))
                                                       (let ((_hd1795017982_
                                                              (##car _e1794917978_))
                                                             (_tl1795117985_
                                                              (##cdr _e1794917978_)))
                                                         (if (gx#stx-pair?
                                                              _tl1795117985_)
                                                             (let ((_e1795217988_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1795117985_)))
                       (let ((_hd1795317992_ (##car _e1795217988_))
                             (_tl1795417995_ (##cdr _e1795217988_)))
                         ((lambda (_L17998_ _L18000_ _L18001_)
                            (let ((_g1801718025_
                                   (lambda (_g1801818021_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1801818021_))))
                              (let ((_g1801618145_
                                     (lambda (_g1801818029_)
                                       ((lambda (_L18032_)
                                          (let ()
                                            (let ((_g1804418052_
                                                   (lambda (_g1804518048_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1804518048_))))
                                              (let ((_g1804318141_
                                                     (lambda (_g1804518056_)
                                                       ((lambda (_L18059_)
                                                          (let ()
                                                            (let ((_g1807218080_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g1807318076_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1807318076_))))
                      (let ((_g1807118137_
                             (lambda (_g1807318084_)
                               ((lambda (_L18087_)
                                  (let ()
                                    (let ((_g1810018108_
                                           (lambda (_g1810118104_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1810118104_))))
                                      (let ((_g1809918133_
                                             (lambda (_g1810118112_)
                                               ((lambda (_L18115_)
                                                  (let ()
                                                    (let ((_K18128_
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'let)
                         (cons (cons (cons _L18115_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '##vector-ref)
                                                       (cons _L18032_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'fx1+)
                                 (cons _L18087_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())
                               (cons (_generate117785_
                                      _L18115_
                                      _L18000_
                                      (_recur17805_ _klass17939_ _L17998_)
                                      _E17798_)
                                     '())))))
              (let ()
                (if (_known-slot?17802_ _L18001_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _L18087_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'class-slot-offset)
                                                        (cons _L18059_
                                                              (cons _L18001_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      '())
                                (cons _K18128_ '())))
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _L18087_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'class-slot-offset)
                                                        (cons _L18059_
                                                              (cons _L18001_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      '())
                                (cons (cons (gx#datum->syntax '#f 'if)
                                            (cons _L18087_
                                                  (cons _K18128_
                                                        (cons _E17798_ '()))))
                                      '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1810118112_))))
                                        (_g1809918133_ (gx#genident 'e))))))
                                _g1807318084_))))
                        (_g1807118137_ (gx#genident 'slot))))))
                _g1804518056_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1804318141_
                                                 _klass17939_)))))
                                        _g1801818029_))))
                                (_g1801618145_ _tgt17795_))))
                          _tl1795417995_
                          _hd1795317992_
                          _hd1795017982_)))
                     (_g1794317971_ _g1794517975_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1794317971_
                                                      _g1794517975_)))))
                                          (_g1794218149_ _rest17941_)))))))
                          (begin
                            (set! _known-slot?17802_
                                  (if _rtd17800_
                                      (lambda (_key18166_)
                                        (let ((_slot18169_
                                               (keyword->symbol
                                                (gx#stx-e _key18166_))))
                                          (_rtd-known-slot?17804_
                                           _rtd17800_
                                           _slot18169_)))
                                      false))
                            (let ((_final?17803_
                                   (if _rtd17800_
                                       (assgetq 'final:
                                                (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-plist|
                                                 _rtd17800_))
                                       '#f)))
                              (let ((_g1780717815_
                                     (lambda (_g1780817811_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1780817811_))))
                                (let ((_g1780617935_
                                       (lambda (_g1780817819_)
                                         ((lambda (_L17822_)
                                            (let ()
                                              (let ((_g1783717845_
                                                     (lambda (_g1783817841_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1783817841_))))
                                                (let ((_g1783617931_
                                                       (lambda (_g1783817849_)
                                                         ((lambda (_L17852_)
                                                            (let ()
                                                              (let ((_g1786517873_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1786617869_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1786617869_))))
                        (let ((_g1786417927_
                               (lambda (_g1786617877_)
                                 ((lambda (_L17880_)
                                    (let ()
                                      (let ((_g1789317901_
                                             (lambda (_g1789417897_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1789417897_))))
                                        (let ((_g1789217923_
                                               (lambda (_g1789417905_)
                                                 ((lambda (_L17908_)
                                                    (let ()
                                                      (let ()
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'if)
                                                              (cons (cons _L17908_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons _L17880_ (cons _L17852_ '())))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (cons _L17822_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'object-type)
                              (cons _L17852_ '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (_recur17805_
                                                     _L17822_
                                                     _body17796_)
                                                    '())))
                                  (cons _E17798_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1789417905_))))
                                          (_g1789217923_
                                           (if _final?17803_
                                               (gx#datum->syntax
                                                '#f
                                                'direct-class-instance?)
                                               (gx#datum->syntax
                                                '#f
                                                'class-instance?)))))))
                                  _g1786617877_))))
                          (_g1786417927_
                           (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-identifier|
                            _info17793_))))))
                  _g1783817849_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1783617931_
                                                   _tgt17795_)))))
                                          _g1780817819_))))
                                  (_g1780617935_
                                   (gx#genident 'class))))))))))))
          (_generate117785_ _tgt17780_ _ptree17781_ _K17782_ _E17783_))))
    (define |gerbil/core::<match>[1]#generate-match*|
      (lambda (_stx16777_ _tgt-lst16779_ _clauses16780_)
        (let ((_parse-body16782_
               (lambda (_hd-len17600_)
                 ((letrec ((_lp17603_
                            (lambda (_rest17606_ _r17608_)
                              (let ((_g1761117623_
                                     (lambda (_g1761217619_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1761217619_))))
                                (let ((_g1761017634_
                                       (lambda (_g1761217627_)
                                         ((lambda () _r17608_)))))
                                  (let ((_g1760917774_
                                         (lambda (_g1761217638_)
                                           (if (gx#stx-pair? _g1761217638_)
                                               (let ((_e1761517641_
                                                      (gx#syntax-e
                                                       _g1761217638_)))
                                                 (let ((_hd1761617645_
                                                        (##car _e1761517641_))
                                                       (_tl1761717648_
                                                        (##cdr _e1761517641_)))
                                                   ((lambda (_L17651_ _L17653_)
                                                      (let ((_g1767017686_
                                                             (lambda (_g1767117682_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1767117682_))))
                                                        (let ((_g1766917697_
                                                               (lambda (_g1767117690_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal match clause"
                             _stx16777_
                             _L17653_))))))
                  (let ((_g1766817738_
                         (lambda (_g1767117701_)
                           (if (gx#stx-pair? _g1767117701_)
                               (let ((_e1767817704_
                                      (gx#syntax-e _g1767117701_)))
                                 (let ((_hd1767917708_ (##car _e1767817704_))
                                       (_tl1768017711_ (##cdr _e1767817704_)))
                                   ((lambda (_L17714_ _L17716_)
                                      (if (if (gx#stx-list? _L17716_)
                                              (if (fx= (gx#stx-length _L17716_)
                                                       _hd-len17600_)
                                                  (if (gx#stx-list? _L17714_)
                                                      (not (gx#stx-null?
                                                            _L17714_))
                                                      '#f)
                                                  '#f)
                                              '#f)
                                          (_lp17603_
                                           _L17651_
                                           (cons (cons (gx#genident 'try-match)
                                                       (cons (gx#stx-map
                                                              (lambda (_g1772817730_)
                                                                (|gerbil/core::<match>[1]#parse-match-pattern|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1772817730_
                         _stx16777_))
                      _L17716_)
                     (cons (gx#stx-wrap-source
                            (cons (gx#datum->syntax '#f 'begin) _L17714_)
                            (let ((_$e17734_ (gx#stx-source _L17653_)))
                              (if _$e17734_
                                  _$e17734_
                                  (gx#stx-source _stx16777_))))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r17608_))
                                          (_g1766917697_ _g1767117701_)))
                                    _tl1768017711_
                                    _hd1767917708_)))
                               (_g1766917697_ _g1767117701_)))))
                    (let ((_g1766717770_
                           (lambda (_g1767117742_)
                             (if (gx#stx-pair? _g1767117742_)
                                 (let ((_e1767317745_
                                        (gx#syntax-e _g1767117742_)))
                                   (let ((_hd1767417749_ (##car _e1767317745_))
                                         (_tl1767517752_
                                          (##cdr _e1767317745_)))
                                     (if (gx#identifier? _hd1767417749_)
                                         (if (gx#free-identifier=?
                                              |gerbil/core::<match>[1]#_g29565_|
                                              _hd1767417749_)
                                             ((lambda (_L17755_)
                                                (if (if (gx#stx-list? _L17755_)
                                                        (not (gx#stx-null?
                                                              _L17755_))
                                                        '#f)
                                                    (if (gx#stx-null? _L17651_)
                                                        (cons (cons (gx#genident
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             'else)
                            (cons '#f
                                  (cons (gx#stx-wrap-source
                                         (cons (gx#datum->syntax '#f 'begin)
                                               _L17755_)
                                         (let ((_$e17766_
                                                (gx#stx-source _L17653_)))
                                           (if _$e17766_
                                               _$e17766_
                                               (gx#stx-source _stx16777_))))
                                        '())))
                      _r17608_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; misplaced else"
                 _stx16777_
                 _L17653_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1766817738_
                                                     _g1767117742_)))
                                              _tl1767517752_)
                                             (_g1766817738_ _g1767117742_))
                                         (_g1766817738_ _g1767117742_))))
                                 (_g1766817738_ _g1767117742_)))))
                      (_g1766717770_ _L17653_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl1761717648_
                                                    _hd1761617645_)))
                                               (_g1761017634_
                                                _g1761217638_)))))
                                    (_g1760917774_ _rest17606_)))))))
                    _lp17603_)
                  _clauses16780_
                  '()))))
          (let ((_generate116786_
                 (lambda (_clause16788_ _body16790_ _E16791_)
                   ((letrec ((_recur16793_
                              (lambda (_rest16796_ _rest-targets16798_)
                                (let ((_g1680116813_
                                       (lambda (_g1680216809_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1680216809_))))
                                  (let ((_g1680016824_
                                         (lambda (_g1680216817_)
                                           ((lambda () _body16790_)))))
                                    (let ((_g1679917095_
                                           (lambda (_g1680216828_)
                                             (if (gx#stx-pair? _g1680216828_)
                                                 (let ((_e1680516831_
                                                        (gx#syntax-e
                                                         _g1680216828_)))
                                                   (let ((_hd1680616835_
                                                          (##car _e1680516831_))
                                                         (_tl1680716838_
                                                          (##cdr _e1680516831_)))
                                                     ((lambda (_L16841_
                                                               _L16843_)
                                                        (let ((_g1686016872_
                                                               (lambda (_g1686116868_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1686116868_))))
                  (let ((_g1685917091_
                         (lambda (_g1686116876_)
                           (if (gx#stx-pair? _g1686116876_)
                               (let ((_e1686416879_
                                      (gx#syntax-e _g1686116876_)))
                                 (let ((_hd1686516883_ (##car _e1686416879_))
                                       (_tl1686616886_ (##cdr _e1686416879_)))
                                   ((lambda (_L16889_ _L16891_)
                                      (let ((_g1690316911_
                                             (lambda (_g1690416907_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1690416907_))))
                                        (let ((_g1690217087_
                                               (lambda (_g1690416915_)
                                                 ((lambda (_L16918_)
                                                    (let ()
                                                      (let ((_g1693016947_
                                                             (lambda (_g1693116943_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1693116943_))))
                                                        (let ((_g1692917083_
                                                               (lambda (_g1693116951_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#stx-pair/null? _g1693116951_)
                             (if (fx>= (gx#stx-length _g1693116951_) '0)
                                 (let ((_g29563_
                                        (gx#syntax-split-splice
                                         _g1693116951_
                                         '0)))
                                   (begin
                                     (let ((_g29564_ (values-count _g29563_)))
                                       (if (not (fx= _g29564_ 2))
                                           (error "Context expects 2 values"
                                                  _g29564_)))
                                     (let ((_target1693316954_
                                            (values-ref _g29563_ 0))
                                           (_tl1693516957_
                                            (values-ref _g29563_ 1)))
                                       (if (gx#stx-null? _tl1693516957_)
                                           (letrec ((_loop1693616960_
                                                     (lambda (_hd1693416964_
                                                              _var1694016967_)
                                                       (if (gx#stx-pair?
                                                            _hd1693416964_)
                                                           (let ((_e1693716970_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd1693416964_)))
                     (let ((_lp-hd1693816974_ (##car _e1693716970_))
                           (_lp-tl1693916977_ (##cdr _e1693716970_)))
                       (_loop1693616960_
                        _lp-tl1693916977_
                        (cons _lp-hd1693816974_ _var1694016967_))))
                   (let ((_var1694116980_ (reverse _var1694016967_)))
                     ((lambda (_L16984_)
                        (let ()
                          (let ((_g1700117009_
                                 (lambda (_g1700217005_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1700217005_))))
                            (let ((_g1700017079_
                                   (lambda (_g1700217013_)
                                     ((lambda (_L17016_)
                                        (let ()
                                          (let ((_g1702917037_
                                                 (lambda (_g1703017033_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1703017033_))))
                                            (let ((_g1702817067_
                                                   (lambda (_g1703017041_)
                                                     ((lambda (_L17044_)
                                                        (let ()
                                                          (let ()
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'let)
                          (cons (cons (cons _L16918_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'lambda)
                                                        (cons (begin
                                                                '#!void
                                                                (foldr (lambda (_g1705817061_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g1705917064_)
                                 (cons _g1705817061_ _g1705917064_))
                               '()
                               _L16984_))
                      (cons _L17016_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      '())
                                (cons _L17044_ '()))))))
              _g1703017041_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1702817067_
                                               (|gerbil/core::<match>[1]#generate-match1|
                                                _stx16777_
                                                _L16891_
                                                _L16843_
                                                (cons _L16918_
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g1707017073_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1707117076_)
                         (cons _g1707017073_ _g1707117076_))
                       '()
                       _L16984_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _E16791_))))))
                                      _g1700217013_))))
                              (_g1700017079_
                               (_recur16793_ _L16841_ _L16889_))))))
                      _var1694116980_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1693616960_
                                              _target1693316954_
                                              '()))
                                           (_g1693016947_ _g1693116951_)))))
                                 (_g1693016947_ _g1693116951_))
                             (_g1693016947_ _g1693116951_)))))
                  (_g1692917083_
                   (|gerbil/core::<match>[1]#match-pattern-vars| _L16843_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1690416915_))))
                                          (_g1690217087_ (gx#genident 'K)))))
                                    _tl1686616886_
                                    _hd1686516883_)))
                               (_g1686016872_ _g1686116876_)))))
                    (_g1685917091_ _rest-targets16798_))))
              _tl1680716838_
              _hd1680616835_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1680016824_
                                                  _g1680216828_)))))
                                      (_g1679917095_ _rest16796_)))))))
                      _recur16793_)
                    _clause16788_
                    _tgt-lst16779_))))
            (letrec ((_generate-clauses16785_
                      (lambda (_rest17099_ _E17101_)
                        (let ((_g1710517121_
                               (lambda (_g1710617117_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1710617117_))))
                          (let ((_g1710417132_
                                 (lambda (_g1710617125_)
                                   ((lambda () _E17101_)))))
                            (let ((_g1710317308_
                                   (lambda (_g1710617136_)
                                     (if (gx#stx-pair? _g1710617136_)
                                         (let ((_e1711317139_
                                                (gx#syntax-e _g1710617136_)))
                                           (let ((_hd1711417143_
                                                  (##car _e1711317139_))
                                                 (_tl1711517146_
                                                  (##cdr _e1711317139_)))
                                             ((lambda (_L17149_ _L17151_)
                                                (let ((_g1716417183_
                                                       (lambda (_g1716517179_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1716517179_))))
                                                  (let ((_g1716317304_
                                                         (lambda (_g1716517187_)
                                                           (if (gx#stx-pair?
                                                                _g1716517187_)
                                                               (let ((_e1716917190_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _g1716517187_)))
                         (let ((_hd1717017194_ (##car _e1716917190_))
                               (_tl1717117197_ (##cdr _e1716917190_)))
                           (if (gx#stx-pair? _tl1717117197_)
                               (let ((_e1717217200_
                                      (gx#syntax-e _tl1717117197_)))
                                 (let ((_hd1717317204_ (##car _e1717217200_))
                                       (_tl1717417207_ (##cdr _e1717217200_)))
                                   (if (gx#stx-pair? _tl1717417207_)
                                       (let ((_e1717517210_
                                              (gx#syntax-e _tl1717417207_)))
                                         (let ((_hd1717617214_
                                                (##car _e1717517210_))
                                               (_tl1717717217_
                                                (##cdr _e1717517210_)))
                                           (if (gx#stx-null? _tl1717717217_)
                                               ((lambda (_L17220_
                                                         _L17222_
                                                         _L17223_)
                                                  (let ((_g1724017255_
                                                         (lambda (_g1724117251_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g1724117251_))))
                                                    (let ((_g1723917300_
                                                           (lambda (_g1724117259_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1724117259_)
                         (let ((_e1724417262_ (gx#syntax-e _g1724117259_)))
                           (let ((_hd1724517266_ (##car _e1724417262_))
                                 (_tl1724617269_ (##cdr _e1724417262_)))
                             (if (gx#stx-pair? _tl1724617269_)
                                 (let ((_e1724717272_
                                        (gx#syntax-e _tl1724617269_)))
                                   (let ((_hd1724817276_ (##car _e1724717272_))
                                         (_tl1724917279_
                                          (##cdr _e1724717272_)))
                                     (if (gx#stx-null? _tl1724917279_)
                                         ((lambda (_L17282_ _L17284_)
                                            (let ()
                                              (cons (gx#datum->syntax '#f 'let)
                                                    (cons (cons (cons _L17223_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax '#f 'lambda)
                                          (cons '() (cons _L17284_ '())))
                                    '()))
                        '())
                  (cons _L17282_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _hd1724817276_
                                          _hd1724517266_)
                                         (_g1724017255_ _g1724117259_))))
                                 (_g1724017255_ _g1724117259_))))
                         (_g1724017255_ _g1724117259_)))))
              (_g1723917300_
               (list (if (gx#stx-e _L17222_)
                         (_generate116786_ _L17222_ _L17220_ _E17101_)
                         _L17220_)
                     (_generate-clauses16785_
                      _L17149_
                      (cons _L17223_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1717617214_
                                                _hd1717317204_
                                                _hd1717017194_)
                                               (_g1716417183_ _g1716517187_))))
                                       (_g1716417183_ _g1716517187_))))
                               (_g1716417183_ _g1716517187_))))
                       (_g1716417183_ _g1716517187_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1716317304_ _L17151_))))
                                              _tl1711517146_
                                              _hd1711417143_)))
                                         (_g1710417132_ _g1710617136_)))))
                              (let ((_g1710217413_
                                     (lambda (_g1710617312_)
                                       (if (gx#stx-pair? _g1710617312_)
                                           (let ((_e1710817315_
                                                  (gx#syntax-e _g1710617312_)))
                                             (let ((_hd1710917319_
                                                    (##car _e1710817315_))
                                                   (_tl1711017322_
                                                    (##cdr _e1710817315_)))
                                               (if (gx#stx-null?
                                                    _tl1711017322_)
                                                   ((lambda (_L17325_)
                                                      (let ((_g1733617354_
                                                             (lambda (_g1733717350_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1733717350_))))
                                                        (let ((_g1733517409_
                                                               (lambda (_g1733717358_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#stx-pair? _g1733717358_)
                             (let ((_e1734017361_ (gx#syntax-e _g1733717358_)))
                               (let ((_hd1734117365_ (##car _e1734017361_))
                                     (_tl1734217368_ (##cdr _e1734017361_)))
                                 (if (gx#stx-pair? _tl1734217368_)
                                     (let ((_e1734317371_
                                            (gx#syntax-e _tl1734217368_)))
                                       (let ((_hd1734417375_
                                              (##car _e1734317371_))
                                             (_tl1734517378_
                                              (##cdr _e1734317371_)))
                                         (if (gx#stx-pair? _tl1734517378_)
                                             (let ((_e1734617381_
                                                    (gx#syntax-e
                                                     _tl1734517378_)))
                                               (let ((_hd1734717385_
                                                      (##car _e1734617381_))
                                                     (_tl1734817388_
                                                      (##cdr _e1734617381_)))
                                                 (if (gx#stx-null?
                                                      _tl1734817388_)
                                                     ((lambda (_L17391_
                                                               _L17393_)
                                                        (if (gx#stx-e _L17393_)
                                                            (_generate116786_
                                                             _L17393_
                                                             _L17391_
                                                             _E17101_)
                                                            _L17391_))
                                                      _hd1734717385_
                                                      _hd1734417375_)
                                                     (_g1733617354_
                                                      _g1733717358_))))
                                             (_g1733617354_ _g1733717358_))))
                                     (_g1733617354_ _g1733717358_))))
                             (_g1733617354_ _g1733717358_)))))
                  (_g1733517409_ _L17325_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1710917319_)
                                                   (_g1710317308_
                                                    _g1710617312_))))
                                           (_g1710317308_ _g1710617312_)))))
                                (_g1710217413_ _rest17099_))))))))
              (let ((_generate-body16784_
                     (lambda (_body17417_)
                       (let ((_g1742017428_
                              (lambda (_g1742117424_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1742117424_))))
                         (let ((_g1741917596_
                                (lambda (_g1742117432_)
                                  ((lambda (_L17435_)
                                     (let ()
                                       (let ((_g1744717464_
                                              (lambda (_g1744817460_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _g1744817460_))))
                                         (let ((_g1744617592_
                                                (lambda (_g1744817468_)
                                                  (if (gx#stx-pair/null?
                                                       _g1744817468_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1744817468_)
                        '0)
                  (let ((_g29561_ (gx#syntax-split-splice _g1744817468_ '0)))
                    (begin
                      (let ((_g29562_ (values-count _g29561_)))
                        (if (not (fx= _g29562_ 2))
                            (error "Context expects 2 values" _g29562_)))
                      (let ((_target1745017471_ (values-ref _g29561_ 0))
                            (_tl1745217474_ (values-ref _g29561_ 1)))
                        (if (gx#stx-null? _tl1745217474_)
                            (letrec ((_loop1745317477_
                                      (lambda (_hd1745117481_
                                               _target1745717484_)
                                        (if (gx#stx-pair? _hd1745117481_)
                                            (let ((_e1745417487_
                                                   (gx#syntax-e
                                                    _hd1745117481_)))
                                              (let ((_lp-hd1745517491_
                                                     (##car _e1745417487_))
                                                    (_lp-tl1745617494_
                                                     (##cdr _e1745417487_)))
                                                (_loop1745317477_
                                                 _lp-tl1745617494_
                                                 (cons _lp-hd1745517491_
                                                       _target1745717484_))))
                                            (let ((_target1745817497_
                                                   (reverse _target1745717484_)))
                                              ((lambda (_L17501_)
                                                 (let ()
                                                   (let ((_g1751817526_
                                                          (lambda (_g1751917522_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g1751917522_))))
                                                     (let ((_g1751717580_
                                                            (lambda (_g1751917530_)
                                                              ((lambda (_L17533_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((_g1754617554_
                                  (lambda (_g1754717550_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1754717550_))))
                             (let ((_g1754517576_
                                    (lambda (_g1754717558_)
                                      ((lambda (_L17561_)
                                         (let ()
                                           (let ()
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _L17435_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L17533_ '()))
                       '())
                 (cons _L17561_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _g1754717558_))))
                               (_g1754517576_
                                (_generate-clauses16785_
                                 _body17417_
                                 (cons _L17435_ '())))))))
                       _g1751917530_))))
               (_g1751717580_
                (gx#stx-wrap-source
                 (cons (gx#datum->syntax '#f 'lambda)
                       (cons '()
                             (cons (cons (gx#datum->syntax '#f 'error)
                                         (cons '"No clause matching"
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g1758317586_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1758417589_)
                  (cons _g1758317586_ _g1758417589_))
                '()
                _L17501_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   '())))
                 (gx#stx-source _stx16777_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _target1745817497_))))))
                              (_loop1745317477_ _target1745017471_ '()))
                            (_g1744717464_ _g1744817468_)))))
                  (_g1744717464_ _g1744817468_))
              (_g1744717464_ _g1744817468_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g1744617592_ _tgt-lst16779_)))))
                                   _g1742117432_))))
                           (_g1741917596_ (gx#genident 'E)))))))
                (_generate-body16784_
                 (_parse-body16782_ (gx#stx-length _tgt-lst16779_)))))))))
    (define |gerbil/core::<match>[1]#generate-match|
      (lambda (_stx16679_ _tgt16681_ _clauses16682_)
        (let ((_reclause16684_
               (lambda (_clause16687_)
                 (let ((_g1669216707_
                        (lambda (_g1669316703_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1669316703_))))
                   (let ((_g1669116718_
                          (lambda (_g1669316711_)
                            ((lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal match clause"
                                _stx16679_
                                _clause16687_))))))
                     (let ((_g1669016752_
                            (lambda (_g1669316722_)
                              (if (gx#stx-pair? _g1669316722_)
                                  (let ((_e1669916725_
                                         (gx#syntax-e _g1669316722_)))
                                    (let ((_hd1670016729_
                                           (##car _e1669916725_))
                                          (_tl1670116732_
                                           (##cdr _e1669916725_)))
                                      ((lambda (_L16735_ _L16737_)
                                         (gx#stx-wrap-source
                                          (cons (cons _L16737_ '()) _L16735_)
                                          (gx#stx-source
                                           (gx#datum->syntax '#f 'clause))))
                                       _tl1670116732_
                                       _hd1670016729_)))
                                  (_g1669116718_ _g1669316722_)))))
                       (let ((_g1668916773_
                              (lambda (_g1669316756_)
                                (if (gx#stx-pair? _g1669316756_)
                                    (let ((_e1669416759_
                                           (gx#syntax-e _g1669316756_)))
                                      (let ((_hd1669516763_
                                             (##car _e1669416759_))
                                            (_tl1669616766_
                                             (##cdr _e1669416759_)))
                                        (if (gx#identifier? _hd1669516763_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core::<match>[1]#_g29566_|
                                                 _hd1669516763_)
                                                ((lambda () _clause16687_))
                                                (_g1669016752_ _g1669316756_))
                                            (_g1669016752_ _g1669316756_))))
                                    (_g1669016752_ _g1669316756_)))))
                         (_g1668916773_ _clause16687_))))))))
          (|gerbil/core::<match>[1]#generate-match*|
           _stx16679_
           (cons _tgt16681_ '())
           (gx#stx-map _reclause16684_ _clauses16682_)))))
    (define |gerbil/core::<match>[:0:]#match|
      (lambda (_stx23657_)
        (let ((_g2366223691_
               (lambda (_g2366323687_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2366323687_))))
          (let ((_g2366123799_
                 (lambda (_g2366323695_)
                   (if (gx#stx-pair? _g2366323695_)
                       (let ((_e2368023698_ (gx#syntax-e _g2366323695_)))
                         (let ((_hd2368123702_ (##car _e2368023698_))
                               (_tl2368223705_ (##cdr _e2368023698_)))
                           (if (gx#stx-pair? _tl2368223705_)
                               (let ((_e2368323708_
                                      (gx#syntax-e _tl2368223705_)))
                                 (let ((_hd2368423712_ (##car _e2368323708_))
                                       (_tl2368523715_ (##cdr _e2368323708_)))
                                   ((lambda (_L23718_ _L23720_)
                                      (if (gx#stx-list? _L23718_)
                                          (let ((_g2373423742_
                                                 (lambda (_g2373523738_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g2373523738_))))
                                            (let ((_g2373323795_
                                                   (lambda (_g2373523746_)
                                                     ((lambda (_L23749_)
                                                        (let ()
                                                          (let ((_g2376123769_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2376223765_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2376223765_))))
                    (let ((_g2376023791_
                           (lambda (_g2376223773_)
                             ((lambda (_L23776_)
                                (let ()
                                  (let ()
                                    (cons (gx#datum->syntax '#f 'let)
                                          (cons (cons (cons _L23749_
                                                            (cons _L23720_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _L23776_ '()))))))
                              _g2376223773_))))
                      (_g2376023791_
                       (|gerbil/core::<match>[1]#generate-match|
                        _stx23657_
                        _L23749_
                        _L23718_))))))
              _g2373523746_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2373323795_
                                               (gx#genident _L23720_))))
                                          (_g2366223691_ _g2366323695_)))
                                    _tl2368523715_
                                    _hd2368423712_)))
                               (_g2366223691_ _g2366323695_))))
                       (_g2366223691_ _g2366323695_)))))
            (let ((_g2366023904_
                   (lambda (_g2366323803_)
                     (if (gx#stx-pair? _g2366323803_)
                         (let ((_e2367223806_ (gx#syntax-e _g2366323803_)))
                           (let ((_hd2367323810_ (##car _e2367223806_))
                                 (_tl2367423813_ (##cdr _e2367223806_)))
                             (if (gx#stx-pair? _tl2367423813_)
                                 (let ((_e2367523816_
                                        (gx#syntax-e _tl2367423813_)))
                                   (let ((_hd2367623820_ (##car _e2367523816_))
                                         (_tl2367723823_
                                          (##cdr _e2367523816_)))
                                     (if (gx#identifier? _hd2367623820_)
                                         (if (gx#free-identifier=?
                                              |gerbil/core::<match>[1]#_g29567_|
                                              _hd2367623820_)
                                             ((lambda (_L23826_)
                                                (if (gx#stx-list? _L23826_)
                                                    (let ((_g2383923847_
                                                           (lambda (_g2384023843_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g2384023843_))))
                                                      (let ((_g2383823900_
                                                             (lambda (_g2384023851_)
                                                               ((lambda (_L23854_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let ((_g2386623874_
                                   (lambda (_g2386723870_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2386723870_))))
                              (let ((_g2386523896_
                                     (lambda (_g2386723878_)
                                       ((lambda (_L23881_)
                                          (let ()
                                            (let ()
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons _L23854_
                                                          (cons _L23881_
                                                                '()))))))
                                        _g2386723878_))))
                                (_g2386523896_
                                 (gx#stx-wrap-source
                                  (cons (gx#datum->syntax '#f 'match)
                                        (cons _L23854_ _L23826_))
                                  (gx#stx-source _stx23657_)))))))
                        _g2384023851_))))
                (_g2383823900_ (gx#genident 'args))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2366123799_
                                                     _g2366323803_)))
                                              _tl2367723823_)
                                             (_g2366123799_ _g2366323803_))
                                         (_g2366123799_ _g2366323803_))))
                                 (_g2366123799_ _g2366323803_))))
                         (_g2366123799_ _g2366323803_)))))
              (let ((_g2365924009_
                     (lambda (_g2366323908_)
                       (if (gx#stx-pair? _g2366323908_)
                           (let ((_e2366523911_ (gx#syntax-e _g2366323908_)))
                             (let ((_hd2366623915_ (##car _e2366523911_))
                                   (_tl2366723918_ (##cdr _e2366523911_)))
                               (if (gx#stx-pair? _tl2366723918_)
                                   (let ((_e2366823921_
                                          (gx#syntax-e _tl2366723918_)))
                                     (let ((_hd2366923925_
                                            (##car _e2366823921_))
                                           (_tl2367023928_
                                            (##cdr _e2366823921_)))
                                       (if (gx#identifier? _hd2366923925_)
                                           (if (gx#free-identifier=?
                                                |gerbil/core::<match>[1]#_g29568_|
                                                _hd2366923925_)
                                               ((lambda (_L23931_)
                                                  (if (gx#stx-list? _L23931_)
                                                      (let ((_g2394423952_
                                                             (lambda (_g2394523948_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2394523948_))))
                                                        (let ((_g2394324005_
                                                               (lambda (_g2394523956_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L23959_)
                            (let ()
                              (let ((_g2397123979_
                                     (lambda (_g2397223975_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g2397223975_))))
                                (let ((_g2397024001_
                                       (lambda (_g2397223983_)
                                         ((lambda (_L23986_)
                                            (let ()
                                              (let ()
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons _L23959_ '())
                                                            (cons _L23986_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g2397223983_))))
                                  (_g2397024001_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'match)
                                          (cons _L23959_ _L23931_))
                                    (gx#stx-source _stx23657_)))))))
                          _g2394523956_))))
                  (_g2394324005_ (gx#genident 'e))))
              (_g2366023904_ _g2366323908_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl2367023928_)
                                               (_g2366023904_ _g2366323908_))
                                           (_g2366023904_ _g2366323908_))))
                                   (_g2366023904_ _g2366323908_))))
                           (_g2366023904_ _g2366323908_)))))
                (_g2365924009_ _stx23657_)))))))
    (define |gerbil/core::<match>[:0:]#match*|
      (lambda (_stx24013_)
        (let ((_g2401624040_
               (lambda (_g2401724036_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2401724036_))))
          (let ((_g2401524252_
                 (lambda (_g2401724044_)
                   (if (gx#stx-pair? _g2401724044_)
                       (let ((_e2402024047_ (gx#syntax-e _g2401724044_)))
                         (let ((_hd2402124051_ (##car _e2402024047_))
                               (_tl2402224054_ (##cdr _e2402024047_)))
                           (if (gx#stx-pair? _tl2402224054_)
                               (let ((_e2402324057_
                                      (gx#syntax-e _tl2402224054_)))
                                 (let ((_hd2402424061_ (##car _e2402324057_))
                                       (_tl2402524064_ (##cdr _e2402324057_)))
                                   (if (gx#stx-pair/null? _hd2402424061_)
                                       (if (fx>= (gx#stx-length _hd2402424061_)
                                                 '0)
                                           (let ((_g29569_
                                                  (gx#syntax-split-splice
                                                   _hd2402424061_
                                                   '0)))
                                             (begin
                                               (let ((_g29570_
                                                      (values-count _g29569_)))
                                                 (if (not (fx= _g29570_ 2))
                                                     (error "Context expects 2 values"
                                                            _g29570_)))
                                               (let ((_target2402624067_
                                                      (values-ref _g29569_ 0))
                                                     (_tl2402824070_
                                                      (values-ref _g29569_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl2402824070_)
                                                     (letrec ((_loop2402924073_
                                                               (lambda (_hd2402724077_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _e2403324080_)
                         (if (gx#stx-pair? _hd2402724077_)
                             (let ((_e2403024083_
                                    (gx#syntax-e _hd2402724077_)))
                               (let ((_lp-hd2403124087_ (##car _e2403024083_))
                                     (_lp-tl2403224090_ (##cdr _e2403024083_)))
                                 (_loop2402924073_
                                  _lp-tl2403224090_
                                  (cons _lp-hd2403124087_ _e2403324080_))))
                             (let ((_e2403424093_ (reverse _e2403324080_)))
                               ((lambda (_L24097_ _L24099_)
                                  (if (gx#stx-list? _L24097_)
                                      (let ((_g2411724134_
                                             (lambda (_g2411824130_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2411824130_))))
                                        (let ((_g2411624240_
                                               (lambda (_g2411824138_)
                                                 (if (gx#stx-pair/null?
                                                      _g2411824138_)
                                                     (if (fx>= (gx#stx-length
                                                                _g2411824138_)
                                                               '0)
                                                         (let ((_g29571_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2411824138_
                         '0)))
                   (begin
                     (let ((_g29572_ (values-count _g29571_)))
                       (if (not (fx= _g29572_ 2))
                           (error "Context expects 2 values" _g29572_)))
                     (let ((_target2412024141_ (values-ref _g29571_ 0))
                           (_tl2412224144_ (values-ref _g29571_ 1)))
                       (if (gx#stx-null? _tl2412224144_)
                           (letrec ((_loop2412324147_
                                     (lambda (_hd2412124151_ _$e2412724154_)
                                       (if (gx#stx-pair? _hd2412124151_)
                                           (let ((_e2412424157_
                                                  (gx#syntax-e
                                                   _hd2412124151_)))
                                             (let ((_lp-hd2412524161_
                                                    (##car _e2412424157_))
                                                   (_lp-tl2412624164_
                                                    (##cdr _e2412424157_)))
                                               (_loop2412324147_
                                                _lp-tl2412624164_
                                                (cons _lp-hd2412524161_
                                                      _$e2412724154_))))
                                           (let ((_$e2412824167_
                                                  (reverse _$e2412724154_)))
                                             ((lambda (_L24171_)
                                                (let ()
                                                  (let ((_g2418724195_
                                                         (lambda (_g2418824191_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2418824191_))))
                                                    (let ((_g2418624228_
                                                           (lambda (_g2418824199_)
                                                             ((lambda (_L24202_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (cons (gx#datum->syntax '#f 'let)
                                  (cons (begin
                                          (gx#syntax-check-splice-targets
                                           _L24099_
                                           _L24171_)
                                          (foldr (lambda (_g2421624220_
                                                          _g2421724223_
                                                          _g2421824225_)
                                                   (cons (cons _g2421724223_
                                                               (cons _g2421624220_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _g2421824225_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()
                                                 _L24099_
                                                 _L24171_))
                                        (cons _L24202_ '()))))))
                      _g2418824199_))))
              (_g2418624228_
               (|gerbil/core::<match>[1]#generate-match*|
                _stx24013_
                (begin
                  '#!void
                  (foldr (lambda (_g2423124234_ _g2423224237_)
                           (cons _g2423124234_ _g2423224237_))
                         '()
                         _L24171_))
                _L24097_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _$e2412824167_))))))
                             (_loop2412324147_ _target2412024141_ '()))
                           (_g2411724134_ _g2411824138_)))))
                 (_g2411724134_ _g2411824138_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2411724134_
                                                      _g2411824138_)))))
                                          (_g2411624240_
                                           (gx#gentemps
                                            (begin
                                              '#!void
                                              (foldr (lambda (_g2424324246_
                                                              _g2424424249_)
                                                       (cons _g2424324246_
                                                             _g2424424249_))
                                                     '()
                                                     _L24099_))))))
                                      (_g2401624040_ _g2401724044_)))
                                _tl2402524064_
                                _e2403424093_))))))
               (_loop2402924073_ _target2402624067_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2401624040_
                                                      _g2401724044_)))))
                                           (_g2401624040_ _g2401724044_))
                                       (_g2401624040_ _g2401724044_))))
                               (_g2401624040_ _g2401724044_))))
                       (_g2401624040_ _g2401724044_)))))
            (_g2401524252_ _stx24013_)))))
    (define |gerbil/core::<match>[:0:]#with|
      (lambda (_$stx24258_)
        (let ((_g2426424347_
               (lambda (_g2426524343_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2426524343_))))
          (let ((_g2426324508_
                 (lambda (_g2426524351_)
                   (if (gx#stx-pair? _g2426524351_)
                       (let ((_e2431024354_ (gx#syntax-e _g2426524351_)))
                         (let ((_hd2431124358_ (##car _e2431024354_))
                               (_tl2431224361_ (##cdr _e2431024354_)))
                           (if (gx#stx-pair? _tl2431224361_)
                               (let ((_e2431324364_
                                      (gx#syntax-e _tl2431224361_)))
                                 (let ((_hd2431424368_ (##car _e2431324364_))
                                       (_tl2431524371_ (##cdr _e2431324364_)))
                                   (if (gx#stx-pair/null? _hd2431424368_)
                                       (if (fx>= (gx#stx-length _hd2431424368_)
                                                 '0)
                                           (let ((_g29573_
                                                  (gx#syntax-split-splice
                                                   _hd2431424368_
                                                   '0)))
                                             (begin
                                               (let ((_g29574_
                                                      (values-count _g29573_)))
                                                 (if (not (fx= _g29574_ 2))
                                                     (error "Context expects 2 values"
                                                            _g29574_)))
                                               (let ((_target2431624374_
                                                      (values-ref _g29573_ 0))
                                                     (_tl2431824377_
                                                      (values-ref _g29573_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl2431824377_)
                                                     (letrec ((_loop2431924380_
                                                               (lambda (_hd2431724384_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr2432324387_
                                _hd2432424389_)
                         (if (gx#stx-pair? _hd2431724384_)
                             (let ((_e2432024392_
                                    (gx#syntax-e _hd2431724384_)))
                               (let ((_lp-hd2432124396_ (##car _e2432024392_))
                                     (_lp-tl2432224399_ (##cdr _e2432024392_)))
                                 (if (gx#stx-pair? _lp-hd2432124396_)
                                     (let ((_e2432724402_
                                            (gx#syntax-e _lp-hd2432124396_)))
                                       (let ((_hd2432824406_
                                              (##car _e2432724402_))
                                             (_tl2432924409_
                                              (##cdr _e2432724402_)))
                                         (if (gx#stx-pair? _tl2432924409_)
                                             (let ((_e2433024412_
                                                    (gx#syntax-e
                                                     _tl2432924409_)))
                                               (let ((_hd2433124416_
                                                      (##car _e2433024412_))
                                                     (_tl2433224419_
                                                      (##cdr _e2433024412_)))
                                                 (if (gx#stx-null?
                                                      _tl2433224419_)
                                                     (_loop2431924380_
                                                      _lp-tl2432224399_
                                                      (cons _hd2433124416_
                                                            _expr2432324387_)
                                                      (cons _hd2432824406_
                                                            _hd2432424389_))
                                                     (_g2426424347_
                                                      _g2426524351_))))
                                             (_g2426424347_ _g2426524351_))))
                                     (_g2426424347_ _g2426524351_))))
                             (let ((_expr2432524422_
                                    (reverse _expr2432324387_))
                                   (_hd2432624425_ (reverse _hd2432424389_)))
                               (if (gx#stx-pair/null? _tl2431524371_)
                                   (if (fx>= (gx#stx-length _tl2431524371_) '0)
                                       (let ((_g29575_
                                              (gx#syntax-split-splice
                                               _tl2431524371_
                                               '0)))
                                         (begin
                                           (let ((_g29576_
                                                  (values-count _g29575_)))
                                             (if (not (fx= _g29576_ 2))
                                                 (error "Context expects 2 values"
                                                        _g29576_)))
                                           (let ((_target2433324428_
                                                  (values-ref _g29575_ 0))
                                                 (_tl2433524431_
                                                  (values-ref _g29575_ 1)))
                                             (if (gx#stx-null? _tl2433524431_)
                                                 (letrec ((_loop2433624434_
                                                           (lambda (_hd2433424438_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _body2434024441_)
                     (if (gx#stx-pair? _hd2433424438_)
                         (let ((_e2433724444_ (gx#syntax-e _hd2433424438_)))
                           (let ((_lp-hd2433824448_ (##car _e2433724444_))
                                 (_lp-tl2433924451_ (##cdr _e2433724444_)))
                             (_loop2433624434_
                              _lp-tl2433924451_
                              (cons _lp-hd2433824448_ _body2434024441_))))
                         (let ((_body2434124454_ (reverse _body2434024441_)))
                           ((lambda (_L24458_ _L24460_ _L24461_)
                              (cons (gx#datum->syntax '#f 'match*)
                                    (cons (begin
                                            '#!void
                                            (foldr (lambda (_g2448324490_
                                                            _g2448424493_)
                                                     (cons _g2448324490_
                                                           _g2448424493_))
                                                   '()
                                                   _L24460_))
                                          (cons (cons (begin
                                                        '#!void
                                                        (foldr (lambda (_g2448524496_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2448624499_)
                         (cons _g2448524496_ _g2448624499_))
                       '()
                       _L24461_))
              (begin
                '#!void
                (foldr (lambda (_g2448724502_ _g2448824505_)
                         (cons _g2448724502_ _g2448824505_))
                       '()
                       _L24458_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))
                            _body2434124454_
                            _expr2432524422_
                            _hd2432624425_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop2433624434_
                                                    _target2433324428_
                                                    '()))
                                                 (_g2426424347_
                                                  _g2426524351_)))))
                                       (_g2426424347_ _g2426524351_))
                                   (_g2426424347_ _g2426524351_)))))))
               (_loop2431924380_ _target2431624374_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2426424347_
                                                      _g2426524351_)))))
                                           (_g2426424347_ _g2426524351_))
                                       (_g2426424347_ _g2426524351_))))
                               (_g2426424347_ _g2426524351_))))
                       (_g2426424347_ _g2426524351_)))))
            (let ((_g2426224620_
                   (lambda (_g2426524512_)
                     (if (gx#stx-pair? _g2426524512_)
                         (let ((_e2428624515_ (gx#syntax-e _g2426524512_)))
                           (let ((_hd2428724519_ (##car _e2428624515_))
                                 (_tl2428824522_ (##cdr _e2428624515_)))
                             (if (gx#stx-pair? _tl2428824522_)
                                 (let ((_e2428924525_
                                        (gx#syntax-e _tl2428824522_)))
                                   (let ((_hd2429024529_ (##car _e2428924525_))
                                         (_tl2429124532_
                                          (##cdr _e2428924525_)))
                                     (if (gx#stx-pair? _hd2429024529_)
                                         (let ((_e2429224535_
                                                (gx#syntax-e _hd2429024529_)))
                                           (let ((_hd2429324539_
                                                  (##car _e2429224535_))
                                                 (_tl2429424542_
                                                  (##cdr _e2429224535_)))
                                             (if (gx#stx-pair? _tl2429424542_)
                                                 (let ((_e2429524545_
                                                        (gx#syntax-e
                                                         _tl2429424542_)))
                                                   (let ((_hd2429624549_
                                                          (##car _e2429524545_))
                                                         (_tl2429724552_
                                                          (##cdr _e2429524545_)))
                                                     (if (gx#stx-null?
                                                          _tl2429724552_)
                                                         (if (gx#stx-pair/null?
                                                              _tl2429124532_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _tl2429124532_)
                               '0)
                         (let ((_g29577_
                                (gx#syntax-split-splice _tl2429124532_ '0)))
                           (begin
                             (let ((_g29578_ (values-count _g29577_)))
                               (if (not (fx= _g29578_ 2))
                                   (error "Context expects 2 values"
                                          _g29578_)))
                             (let ((_target2429824555_ (values-ref _g29577_ 0))
                                   (_tl2430024558_ (values-ref _g29577_ 1)))
                               (if (gx#stx-null? _tl2430024558_)
                                   (letrec ((_loop2430124561_
                                             (lambda (_hd2429924565_
                                                      _body2430524568_)
                                               (if (gx#stx-pair?
                                                    _hd2429924565_)
                                                   (let ((_e2430224571_
                                                          (gx#syntax-e
                                                           _hd2429924565_)))
                                                     (let ((_lp-hd2430324575_
                                                            (##car _e2430224571_))
                                                           (_lp-tl2430424578_
                                                            (##cdr _e2430224571_)))
                                                       (_loop2430124561_
                                                        _lp-tl2430424578_
                                                        (cons _lp-hd2430324575_
                                                              _body2430524568_))))
                                                   (let ((_body2430624581_
                                                          (reverse _body2430524568_)))
                                                     ((lambda (_L24585_
                                                               _L24587_
                                                               _L24588_
                                                               _L24589_)
                                                        (if (|gerbil/core::<match>[1]#match-pattern?|
                                                             _L24588_)
                                                            (cons _L24589_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (cons _L24588_ (cons _L24587_ '())) '())
                                (begin
                                  '#!void
                                  (foldr (lambda (_g2461124614_ _g2461224617_)
                                           (cons _g2461124614_ _g2461224617_))
                                         '()
                                         _L24585_))))
                    (_g2426324508_ _g2426524512_)))
              _body2430624581_
              _hd2429624549_
              _hd2429324539_
              _hd2428724519_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop2430124561_ _target2429824555_ '()))
                                   (_g2426324508_ _g2426524512_)))))
                         (_g2426324508_ _g2426524512_))
                     (_g2426324508_ _g2426524512_))
                 (_g2426324508_ _g2426524512_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2426324508_
                                                  _g2426524512_))))
                                         (_g2426324508_ _g2426524512_))))
                                 (_g2426324508_ _g2426524512_))))
                         (_g2426324508_ _g2426524512_)))))
              (let ((_g2426124702_
                     (lambda (_g2426524624_)
                       (if (gx#stx-pair? _g2426524624_)
                           (let ((_e2426724627_ (gx#syntax-e _g2426524624_)))
                             (let ((_hd2426824631_ (##car _e2426724627_))
                                   (_tl2426924634_ (##cdr _e2426724627_)))
                               (if (gx#stx-pair? _tl2426924634_)
                                   (let ((_e2427024637_
                                          (gx#syntax-e _tl2426924634_)))
                                     (let ((_hd2427124641_
                                            (##car _e2427024637_))
                                           (_tl2427224644_
                                            (##cdr _e2427024637_)))
                                       (if (gx#stx-null? _hd2427124641_)
                                           (if (gx#stx-pair/null?
                                                _tl2427224644_)
                                               (if (fx>= (gx#stx-length
                                                          _tl2427224644_)
                                                         '0)
                                                   (let ((_g29579_
                                                          (gx#syntax-split-splice
                                                           _tl2427224644_
                                                           '0)))
                                                     (begin
                                                       (let ((_g29580_
                                                              (values-count
                                                               _g29579_)))
                                                         (if (not (fx= _g29580_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29580_)))
               (let ((_target2427324647_ (values-ref _g29579_ 0))
                     (_tl2427524650_ (values-ref _g29579_ 1)))
                 (if (gx#stx-null? _tl2427524650_)
                     (letrec ((_loop2427624653_
                               (lambda (_hd2427424657_ _body2428024660_)
                                 (if (gx#stx-pair? _hd2427424657_)
                                     (let ((_e2427724663_
                                            (gx#syntax-e _hd2427424657_)))
                                       (let ((_lp-hd2427824667_
                                              (##car _e2427724663_))
                                             (_lp-tl2427924670_
                                              (##cdr _e2427724663_)))
                                         (_loop2427624653_
                                          _lp-tl2427924670_
                                          (cons _lp-hd2427824667_
                                                _body2428024660_))))
                                     (let ((_body2428124673_
                                            (reverse _body2428024660_)))
                                       ((lambda (_L24677_)
                                          (cons (gx#datum->syntax '#f 'let)
                                                (cons '()
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g2469324696_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2469424699_)
                         (cons _g2469324696_ _g2469424699_))
                       '()
                       _L24677_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body2428124673_))))))
                       (_loop2427624653_ _target2427324647_ '()))
                     (_g2426224620_ _g2426524624_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2426224620_
                                                    _g2426524624_))
                                               (_g2426224620_ _g2426524624_))
                                           (_g2426224620_ _g2426524624_))))
                                   (_g2426224620_ _g2426524624_))))
                           (_g2426224620_ _g2426524624_)))))
                (_g2426124702_ _$stx24258_)))))))
    (define |gerbil/core::<match>[:0:]#with*|
      (lambda (_$stx24710_)
        (let ((_g2471524767_
               (lambda (_g2471624763_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2471624763_))))
          (let ((_g2471424850_
                 (lambda (_g2471624771_)
                   (if (gx#stx-pair? _g2471624771_)
                       (let ((_e2474724774_ (gx#syntax-e _g2471624771_)))
                         (let ((_hd2474824778_ (##car _e2474724774_))
                               (_tl2474924781_ (##cdr _e2474724774_)))
                           (if (gx#stx-pair? _tl2474924781_)
                               (let ((_e2475024784_
                                      (gx#syntax-e _tl2474924781_)))
                                 (let ((_hd2475124788_ (##car _e2475024784_))
                                       (_tl2475224791_ (##cdr _e2475024784_)))
                                   (if (gx#stx-null? _hd2475124788_)
                                       (if (gx#stx-pair/null? _tl2475224791_)
                                           (if (fx>= (gx#stx-length
                                                      _tl2475224791_)
                                                     '0)
                                               (let ((_g29581_
                                                      (gx#syntax-split-splice
                                                       _tl2475224791_
                                                       '0)))
                                                 (begin
                                                   (let ((_g29582_
                                                          (values-count
                                                           _g29581_)))
                                                     (if (not (fx= _g29582_ 2))
                                                         (error "Context expects 2 values"
                                                                _g29582_)))
                                                   (let ((_target2475324794_
                                                          (values-ref
                                                           _g29581_
                                                           0))
                                                         (_tl2475524797_
                                                          (values-ref
                                                           _g29581_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl2475524797_)
                                                         (letrec ((_loop2475624800_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd2475424804_ _body2476024807_)
                             (if (gx#stx-pair? _hd2475424804_)
                                 (let ((_e2475724810_
                                        (gx#syntax-e _hd2475424804_)))
                                   (let ((_lp-hd2475824814_
                                          (##car _e2475724810_))
                                         (_lp-tl2475924817_
                                          (##cdr _e2475724810_)))
                                     (_loop2475624800_
                                      _lp-tl2475924817_
                                      (cons _lp-hd2475824814_
                                            _body2476024807_))))
                                 (let ((_body2476124820_
                                        (reverse _body2476024807_)))
                                   ((lambda (_L24824_)
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons '()
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g2484124844_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2484224847_)
                     (cons _g2484124844_ _g2484224847_))
                   '()
                   _L24824_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _body2476124820_))))))
                   (_loop2475624800_ _target2475324794_ '()))
                 (_g2471524767_ _g2471624771_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2471524767_ _g2471624771_))
                                           (_g2471524767_ _g2471624771_))
                                       (_g2471524767_ _g2471624771_))))
                               (_g2471524767_ _g2471624771_))))
                       (_g2471524767_ _g2471624771_)))))
            (let ((_g2471324976_
                   (lambda (_g2471624854_)
                     (if (gx#stx-pair? _g2471624854_)
                         (let ((_e2472224857_ (gx#syntax-e _g2471624854_)))
                           (let ((_hd2472324861_ (##car _e2472224857_))
                                 (_tl2472424864_ (##cdr _e2472224857_)))
                             (if (gx#stx-pair? _tl2472424864_)
                                 (let ((_e2472524867_
                                        (gx#syntax-e _tl2472424864_)))
                                   (let ((_hd2472624871_ (##car _e2472524867_))
                                         (_tl2472724874_
                                          (##cdr _e2472524867_)))
                                     (if (gx#stx-pair? _hd2472624871_)
                                         (let ((_e2472824877_
                                                (gx#syntax-e _hd2472624871_)))
                                           (let ((_hd2472924881_
                                                  (##car _e2472824877_))
                                                 (_tl2473024884_
                                                  (##cdr _e2472824877_)))
                                             (if (gx#stx-pair? _hd2472924881_)
                                                 (let ((_e2473124887_
                                                        (gx#syntax-e
                                                         _hd2472924881_)))
                                                   (let ((_hd2473224891_
                                                          (##car _e2473124887_))
                                                         (_tl2473324894_
                                                          (##cdr _e2473124887_)))
                                                     (if (gx#stx-pair?
                                                          _tl2473324894_)
                                                         (let ((_e2473424897_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2473324894_)))
                   (let ((_hd2473524901_ (##car _e2473424897_))
                         (_tl2473624904_ (##cdr _e2473424897_)))
                     (if (gx#stx-null? _tl2473624904_)
                         (if (gx#stx-pair/null? _tl2472724874_)
                             (if (fx>= (gx#stx-length _tl2472724874_) '0)
                                 (let ((_g29583_
                                        (gx#syntax-split-splice
                                         _tl2472724874_
                                         '0)))
                                   (begin
                                     (let ((_g29584_ (values-count _g29583_)))
                                       (if (not (fx= _g29584_ 2))
                                           (error "Context expects 2 values"
                                                  _g29584_)))
                                     (let ((_target2473724907_
                                            (values-ref _g29583_ 0))
                                           (_tl2473924910_
                                            (values-ref _g29583_ 1)))
                                       (if (gx#stx-null? _tl2473924910_)
                                           (letrec ((_loop2474024913_
                                                     (lambda (_hd2473824917_
                                                              _body2474424920_)
                                                       (if (gx#stx-pair?
                                                            _hd2473824917_)
                                                           (let ((_e2474124923_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd2473824917_)))
                     (let ((_lp-hd2474224927_ (##car _e2474124923_))
                           (_lp-tl2474324930_ (##cdr _e2474124923_)))
                       (_loop2474024913_
                        _lp-tl2474324930_
                        (cons _lp-hd2474224927_ _body2474424920_))))
                   (let ((_body2474524933_ (reverse _body2474424920_)))
                     ((lambda (_L24937_ _L24939_ _L24940_ _L24941_ _L24942_)
                        (cons (gx#datum->syntax '#f 'with)
                              (cons (cons (cons _L24941_ (cons _L24940_ '()))
                                          '())
                                    (cons (cons _L24942_
                                                (cons _L24939_
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g2496724970_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2496824973_)
                         (cons _g2496724970_ _g2496824973_))
                       '()
                       _L24937_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))))
                      _body2474524933_
                      _tl2473024884_
                      _hd2473524901_
                      _hd2473224891_
                      _hd2472324861_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop2474024913_
                                              _target2473724907_
                                              '()))
                                           (_g2471424850_ _g2471624854_)))))
                                 (_g2471424850_ _g2471624854_))
                             (_g2471424850_ _g2471624854_))
                         (_g2471424850_ _g2471624854_))))
                 (_g2471424850_ _g2471624854_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2471424850_
                                                  _g2471624854_))))
                                         (_g2471424850_ _g2471624854_))))
                                 (_g2471424850_ _g2471624854_))))
                         (_g2471424850_ _g2471624854_)))))
              (_g2471324976_ _$stx24710_))))))
    (define |gerbil/core::<match>[:0:]#?|
      (lambda (_$stx24982_)
        (let ((_g2499325137_
               (lambda (_g2499425133_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2499425133_))))
          (let ((_g2499225232_
                 (lambda (_g2499425141_)
                   (if (gx#stx-pair? _g2499425141_)
                       (let ((_e2511425144_ (gx#syntax-e _g2499425141_)))
                         (let ((_hd2511525148_ (##car _e2511425144_))
                               (_tl2511625151_ (##cdr _e2511425144_)))
                           (if (gx#stx-pair? _tl2511625151_)
                               (let ((_e2511725154_
                                      (gx#syntax-e _tl2511625151_)))
                                 (let ((_hd2511825158_ (##car _e2511725154_))
                                       (_tl2511925161_ (##cdr _e2511725154_)))
                                   (if (gx#stx-pair? _tl2511925161_)
                                       (let ((_e2512025164_
                                              (gx#syntax-e _tl2511925161_)))
                                         (let ((_hd2512125168_
                                                (##car _e2512025164_))
                                               (_tl2512225171_
                                                (##cdr _e2512025164_)))
                                           (if (gx#stx-datum? _hd2512125168_)
                                               (if (equal? (gx#stx-e
                                                            _hd2512125168_)
                                                           '::)
                                                   (if (gx#stx-pair?
                                                        _tl2512225171_)
                                                       (let ((_e2512325174_
                                                              (gx#syntax-e
                                                               _tl2512225171_)))
                                                         (let ((_hd2512425178_
                                                                (##car _e2512325174_))
                                                               (_tl2512525181_
                                                                (##cdr _e2512325174_)))
                                                           (if (gx#stx-pair?
                                                                _tl2512525181_)
                                                               (let ((_e2512625184_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2512525181_)))
                         (let ((_hd2512725188_ (##car _e2512625184_))
                               (_tl2512825191_ (##cdr _e2512625184_)))
                           (if (gx#identifier? _hd2512725188_)
                               (if (gx#free-identifier=?
                                    |gerbil/core::<match>[1]#_g29585_|
                                    _hd2512725188_)
                                   (if (gx#stx-pair? _tl2512825191_)
                                       (let ((_e2512925194_
                                              (gx#syntax-e _tl2512825191_)))
                                         (let ((_hd2513025198_
                                                (##car _e2512925194_))
                                               (_tl2513125201_
                                                (##cdr _e2512925194_)))
                                           (if (gx#stx-null? _tl2513125201_)
                                               ((lambda (_L25204_
                                                         _L25206_
                                                         _L25207_
                                                         _L25208_)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'lambda)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '$obj)
                            '())
                      (cons (cons (gx#datum->syntax '#f 'and)
                                  (cons (cons _L25208_
                                              (cons _L25207_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           '$obj)
                                                          '())))
                                        (cons (cons _L25204_
                                                    (cons (cons _L25206_
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '$obj)
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd2513025198_
                                                _hd2512425178_
                                                _hd2511825158_
                                                _hd2511525148_)
                                               (_g2499325137_ _g2499425141_))))
                                       (_g2499325137_ _g2499425141_))
                                   (_g2499325137_ _g2499425141_))
                               (_g2499325137_ _g2499425141_))))
                       (_g2499325137_ _g2499425141_))))
               (_g2499325137_ _g2499425141_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2499325137_
                                                    _g2499425141_))
                                               (_g2499325137_ _g2499425141_))))
                                       (_g2499325137_ _g2499425141_))))
                               (_g2499325137_ _g2499425141_))))
                       (_g2499325137_ _g2499425141_)))))
            (let ((_g2499125300_
                   (lambda (_g2499425236_)
                     (if (gx#stx-pair? _g2499425236_)
                         (let ((_e2509825239_ (gx#syntax-e _g2499425236_)))
                           (let ((_hd2509925243_ (##car _e2509825239_))
                                 (_tl2510025246_ (##cdr _e2509825239_)))
                             (if (gx#stx-pair? _tl2510025246_)
                                 (let ((_e2510125249_
                                        (gx#syntax-e _tl2510025246_)))
                                   (let ((_hd2510225253_ (##car _e2510125249_))
                                         (_tl2510325256_
                                          (##cdr _e2510125249_)))
                                     (if (gx#stx-pair? _tl2510325256_)
                                         (let ((_e2510425259_
                                                (gx#syntax-e _tl2510325256_)))
                                           (let ((_hd2510525263_
                                                  (##car _e2510425259_))
                                                 (_tl2510625266_
                                                  (##cdr _e2510425259_)))
                                             (if (gx#stx-datum? _hd2510525263_)
                                                 (if (equal? (gx#stx-e
                                                              _hd2510525263_)
                                                             '::)
                                                     (if (gx#stx-pair?
                                                          _tl2510625266_)
                                                         (let ((_e2510725269_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2510625266_)))
                   (let ((_hd2510825273_ (##car _e2510725269_))
                         (_tl2510925276_ (##cdr _e2510725269_)))
                     (if (gx#stx-null? _tl2510925276_)
                         ((lambda (_L25279_ _L25281_ _L25282_)
                            (cons (gx#datum->syntax '#f 'lambda)
                                  (cons (cons (gx#datum->syntax '#f '$obj) '())
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'alet)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '$val)
                        (cons (cons _L25282_
                                    (cons _L25281_
                                          (cons (gx#datum->syntax '#f '$obj)
                                                '())))
                              '()))
                  (cons (cons _L25279_ (cons (gx#datum->syntax '#f '$val) '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))
                          _hd2510825273_
                          _hd2510225253_
                          _hd2509925243_)
                         (_g2499225232_ _g2499425236_))))
                 (_g2499225232_ _g2499425236_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2499225232_
                                                      _g2499425236_))
                                                 (_g2499225232_
                                                  _g2499425236_))))
                                         (_g2499225232_ _g2499425236_))))
                                 (_g2499225232_ _g2499425236_))))
                         (_g2499225232_ _g2499425236_)))))
              (let ((_g2499025368_
                     (lambda (_g2499425304_)
                       (if (gx#stx-pair? _g2499425304_)
                           (let ((_e2508325307_ (gx#syntax-e _g2499425304_)))
                             (let ((_hd2508425311_ (##car _e2508325307_))
                                   (_tl2508525314_ (##cdr _e2508325307_)))
                               (if (gx#stx-pair? _tl2508525314_)
                                   (let ((_e2508625317_
                                          (gx#syntax-e _tl2508525314_)))
                                     (let ((_hd2508725321_
                                            (##car _e2508625317_))
                                           (_tl2508825324_
                                            (##cdr _e2508625317_)))
                                       (if (gx#stx-pair? _tl2508825324_)
                                           (let ((_e2508925327_
                                                  (gx#syntax-e
                                                   _tl2508825324_)))
                                             (let ((_hd2509025331_
                                                    (##car _e2508925327_))
                                                   (_tl2509125334_
                                                    (##cdr _e2508925327_)))
                                               (if (gx#identifier?
                                                    _hd2509025331_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core::<match>[1]#_g29586_|
                                                        _hd2509025331_)
                                                       (if (gx#stx-pair?
                                                            _tl2509125334_)
                                                           (let ((_e2509225337_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl2509125334_)))
                     (let ((_hd2509325341_ (##car _e2509225337_))
                           (_tl2509425344_ (##cdr _e2509225337_)))
                       (if (gx#stx-null? _tl2509425344_)
                           ((lambda (_L25347_ _L25349_ _L25350_)
                              (cons (gx#datum->syntax '#f 'lambda)
                                    (cons (cons (gx#datum->syntax '#f '$obj)
                                                '())
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'and)
                                                      (cons (cons _L25350_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L25349_
                                (cons (gx#datum->syntax '#f '$obj) '())))
                    (cons (cons _L25347_
                                (cons (gx#datum->syntax '#f '$obj) '()))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))
                            _hd2509325341_
                            _hd2508725321_
                            _hd2508425311_)
                           (_g2499125300_ _g2499425304_))))
                   (_g2499125300_ _g2499425304_))
               (_g2499125300_ _g2499425304_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2499125300_
                                                    _g2499425304_))))
                                           (_g2499125300_ _g2499425304_))))
                                   (_g2499125300_ _g2499425304_))))
                           (_g2499125300_ _g2499425304_)))))
                (let ((_g2498925410_
                       (lambda (_g2499425372_)
                         (if (gx#stx-pair? _g2499425372_)
                             (let ((_e2507425375_ (gx#syntax-e _g2499425372_)))
                               (let ((_hd2507525379_ (##car _e2507425375_))
                                     (_tl2507625382_ (##cdr _e2507425375_)))
                                 (if (gx#stx-pair? _tl2507625382_)
                                     (let ((_e2507725385_
                                            (gx#syntax-e _tl2507625382_)))
                                       (let ((_hd2507825389_
                                              (##car _e2507725385_))
                                             (_tl2507925392_
                                              (##cdr _e2507725385_)))
                                         (if (gx#stx-null? _tl2507925392_)
                                             ((lambda (_L25395_ _L25397_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '$obj)
                          '())
                    (cons (cons _L25397_
                                (cons _L25395_
                                      (cons (gx#datum->syntax '#f '$obj) '())))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd2507825389_
                                              _hd2507525379_)
                                             (_g2499025368_ _g2499425372_))))
                                     (_g2499025368_ _g2499425372_))))
                             (_g2499025368_ _g2499425372_)))))
                  (let ((_g2498825464_
                         (lambda (_g2499425414_)
                           (if (gx#stx-pair? _g2499425414_)
                               (let ((_e2506325417_
                                      (gx#syntax-e _g2499425414_)))
                                 (let ((_hd2506425421_ (##car _e2506325417_))
                                       (_tl2506525424_ (##cdr _e2506325417_)))
                                   (if (gx#stx-pair? _tl2506525424_)
                                       (let ((_e2506625427_
                                              (gx#syntax-e _tl2506525424_)))
                                         (let ((_hd2506725431_
                                                (##car _e2506625427_))
                                               (_tl2506825434_
                                                (##cdr _e2506625427_)))
                                           (if (gx#stx-pair? _tl2506825434_)
                                               (let ((_e2506925437_
                                                      (gx#syntax-e
                                                       _tl2506825434_)))
                                                 (let ((_hd2507025441_
                                                        (##car _e2506925437_))
                                                       (_tl2507125444_
                                                        (##cdr _e2506925437_)))
                                                   (if (gx#stx-null?
                                                        _tl2507125444_)
                                                       ((lambda (_L25447_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L25449_)
                  (cons _L25449_ (cons _L25447_ '())))
                _hd2507025441_
                _hd2506725431_)
               (_g2498925410_ _g2499425414_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2498925410_ _g2499425414_))))
                                       (_g2498925410_ _g2499425414_))))
                               (_g2498925410_ _g2499425414_)))))
                    (let ((_g2498725544_
                           (lambda (_g2499425468_)
                             (if (gx#stx-pair? _g2499425468_)
                                 (let ((_e2504625471_
                                        (gx#syntax-e _g2499425468_)))
                                   (let ((_hd2504725475_ (##car _e2504625471_))
                                         (_tl2504825478_
                                          (##cdr _e2504625471_)))
                                     (if (gx#stx-pair? _tl2504825478_)
                                         (let ((_e2504925481_
                                                (gx#syntax-e _tl2504825478_)))
                                           (let ((_hd2505025485_
                                                  (##car _e2504925481_))
                                                 (_tl2505125488_
                                                  (##cdr _e2504925481_)))
                                             (if (gx#stx-pair? _hd2505025485_)
                                                 (let ((_e2505225491_
                                                        (gx#syntax-e
                                                         _hd2505025485_)))
                                                   (let ((_hd2505325495_
                                                          (##car _e2505225491_))
                                                         (_tl2505425498_
                                                          (##cdr _e2505225491_)))
                                                     (if (gx#identifier?
                                                          _hd2505325495_)
                                                         (if (gx#free-identifier=?
                                                              |gerbil/core::<match>[1]#_g29587_|
                                                              _hd2505325495_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2505425498_)
                         (let ((_e2505525501_ (gx#syntax-e _tl2505425498_)))
                           (let ((_hd2505625505_ (##car _e2505525501_))
                                 (_tl2505725508_ (##cdr _e2505525501_)))
                             (if (gx#stx-null? _tl2505725508_)
                                 (if (gx#stx-pair? _tl2505125488_)
                                     (let ((_e2505825511_
                                            (gx#syntax-e _tl2505125488_)))
                                       (let ((_hd2505925515_
                                              (##car _e2505825511_))
                                             (_tl2506025518_
                                              (##cdr _e2505825511_)))
                                         (if (gx#stx-null? _tl2506025518_)
                                             ((lambda (_L25521_
                                                       _L25523_
                                                       _L25524_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'not)
                                                      (cons (cons _L25524_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L25523_ (cons _L25521_ '())))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd2505925515_
                                              _hd2505625505_
                                              _hd2504725475_)
                                             (_g2498825464_ _g2499425468_))))
                                     (_g2498825464_ _g2499425468_))
                                 (_g2498825464_ _g2499425468_))))
                         (_g2498825464_ _g2499425468_))
                     (_g2498825464_ _g2499425468_))
                 (_g2498825464_ _g2499425468_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2498825464_
                                                  _g2499425468_))))
                                         (_g2498825464_ _g2499425468_))))
                                 (_g2498825464_ _g2499425468_)))))
                      (let ((_g2498625654_
                             (lambda (_g2499425548_)
                               (if (gx#stx-pair? _g2499425548_)
                                   (let ((_e2502225551_
                                          (gx#syntax-e _g2499425548_)))
                                     (let ((_hd2502325555_
                                            (##car _e2502225551_))
                                           (_tl2502425558_
                                            (##cdr _e2502225551_)))
                                       (if (gx#stx-pair? _tl2502425558_)
                                           (let ((_e2502525561_
                                                  (gx#syntax-e
                                                   _tl2502425558_)))
                                             (let ((_hd2502625565_
                                                    (##car _e2502525561_))
                                                   (_tl2502725568_
                                                    (##cdr _e2502525561_)))
                                               (if (gx#stx-pair?
                                                    _hd2502625565_)
                                                   (let ((_e2502825571_
                                                          (gx#syntax-e
                                                           _hd2502625565_)))
                                                     (let ((_hd2502925575_
                                                            (##car _e2502825571_))
                                                           (_tl2503025578_
                                                            (##cdr _e2502825571_)))
                                                       (if (gx#identifier?
                                                            _hd2502925575_)
                                                           (if (gx#free-identifier=?
                                                                |gerbil/core::<match>[1]#_g29588_|
                                                                _hd2502925575_)
                                                               (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl2503025578_)
                           (if (fx>= (gx#stx-length _tl2503025578_) '0)
                               (let ((_g29589_
                                      (gx#syntax-split-splice
                                       _tl2503025578_
                                       '0)))
                                 (begin
                                   (let ((_g29590_ (values-count _g29589_)))
                                     (if (not (fx= _g29590_ 2))
                                         (error "Context expects 2 values"
                                                _g29590_)))
                                   (let ((_target2503125581_
                                          (values-ref _g29589_ 0))
                                         (_tl2503325584_
                                          (values-ref _g29589_ 1)))
                                     (if (gx#stx-null? _tl2503325584_)
                                         (letrec ((_loop2503425587_
                                                   (lambda (_hd2503225591_
                                                            _pred2503825594_)
                                                     (if (gx#stx-pair?
                                                          _hd2503225591_)
                                                         (let ((_e2503525597_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd2503225591_)))
                   (let ((_lp-hd2503625601_ (##car _e2503525597_))
                         (_lp-tl2503725604_ (##cdr _e2503525597_)))
                     (_loop2503425587_
                      _lp-tl2503725604_
                      (cons _lp-hd2503625601_ _pred2503825594_))))
                 (let ((_pred2503925607_ (reverse _pred2503825594_)))
                   (if (gx#stx-pair? _tl2502725568_)
                       (let ((_e2504025611_ (gx#syntax-e _tl2502725568_)))
                         (let ((_hd2504125615_ (##car _e2504025611_))
                               (_tl2504225618_ (##cdr _e2504025611_)))
                           (if (gx#stx-null? _tl2504225618_)
                               ((lambda (_L25621_ _L25623_ _L25624_)
                                  (cons (gx#datum->syntax '#f 'or)
                                        (begin
                                          '#!void
                                          (foldr (lambda (_g2564525648_
                                                          _g2564625651_)
                                                   (cons (cons _L25624_
                                                               (cons _g2564525648_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L25621_ '())))
                 _g2564625651_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()
                                                 _L25623_))))
                                _hd2504125615_
                                _pred2503925607_
                                _hd2502325555_)
                               (_g2498725544_ _g2499425548_))))
                       (_g2498725544_ _g2499425548_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop2503425587_
                                            _target2503125581_
                                            '()))
                                         (_g2498725544_ _g2499425548_)))))
                               (_g2498725544_ _g2499425548_))
                           (_g2498725544_ _g2499425548_))
                       (_g2498725544_ _g2499425548_))
                   (_g2498725544_ _g2499425548_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2498725544_
                                                    _g2499425548_))))
                                           (_g2498725544_ _g2499425548_))))
                                   (_g2498725544_ _g2499425548_)))))
                        (let ((_g2498525764_
                               (lambda (_g2499425658_)
                                 (if (gx#stx-pair? _g2499425658_)
                                     (let ((_e2499825661_
                                            (gx#syntax-e _g2499425658_)))
                                       (let ((_hd2499925665_
                                              (##car _e2499825661_))
                                             (_tl2500025668_
                                              (##cdr _e2499825661_)))
                                         (if (gx#stx-pair? _tl2500025668_)
                                             (let ((_e2500125671_
                                                    (gx#syntax-e
                                                     _tl2500025668_)))
                                               (let ((_hd2500225675_
                                                      (##car _e2500125671_))
                                                     (_tl2500325678_
                                                      (##cdr _e2500125671_)))
                                                 (if (gx#stx-pair?
                                                      _hd2500225675_)
                                                     (let ((_e2500425681_
                                                            (gx#syntax-e
                                                             _hd2500225675_)))
                                                       (let ((_hd2500525685_
                                                              (##car _e2500425681_))
                                                             (_tl2500625688_
                                                              (##cdr _e2500425681_)))
                                                         (if (gx#identifier?
                                                              _hd2500525685_)
                                                             (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          |gerbil/core::<match>[1]#_g29591_|
                          _hd2500525685_)
                         (if (gx#stx-pair/null? _tl2500625688_)
                             (if (fx>= (gx#stx-length _tl2500625688_) '0)
                                 (let ((_g29592_
                                        (gx#syntax-split-splice
                                         _tl2500625688_
                                         '0)))
                                   (begin
                                     (let ((_g29593_ (values-count _g29592_)))
                                       (if (not (fx= _g29593_ 2))
                                           (error "Context expects 2 values"
                                                  _g29593_)))
                                     (let ((_target2500725691_
                                            (values-ref _g29592_ 0))
                                           (_tl2500925694_
                                            (values-ref _g29592_ 1)))
                                       (if (gx#stx-null? _tl2500925694_)
                                           (letrec ((_loop2501025697_
                                                     (lambda (_hd2500825701_
                                                              _pred2501425704_)
                                                       (if (gx#stx-pair?
                                                            _hd2500825701_)
                                                           (let ((_e2501125707_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd2500825701_)))
                     (let ((_lp-hd2501225711_ (##car _e2501125707_))
                           (_lp-tl2501325714_ (##cdr _e2501125707_)))
                       (_loop2501025697_
                        _lp-tl2501325714_
                        (cons _lp-hd2501225711_ _pred2501425704_))))
                   (let ((_pred2501525717_ (reverse _pred2501425704_)))
                     (if (gx#stx-pair? _tl2500325678_)
                         (let ((_e2501625721_ (gx#syntax-e _tl2500325678_)))
                           (let ((_hd2501725725_ (##car _e2501625721_))
                                 (_tl2501825728_ (##cdr _e2501625721_)))
                             (if (gx#stx-null? _tl2501825728_)
                                 ((lambda (_L25731_ _L25733_ _L25734_)
                                    (cons (gx#datum->syntax '#f 'and)
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2575525758_
                                                            _g2575625761_)
                                                     (cons (cons _L25734_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _g2575525758_ (cons _L25731_ '())))
                   _g2575625761_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()
                                                   _L25733_))))
                                  _hd2501725725_
                                  _pred2501525717_
                                  _hd2499925665_)
                                 (_g2498625654_ _g2499425658_))))
                         (_g2498625654_ _g2499425658_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop2501025697_
                                              _target2500725691_
                                              '()))
                                           (_g2498625654_ _g2499425658_)))))
                                 (_g2498625654_ _g2499425658_))
                             (_g2498625654_ _g2499425658_))
                         (_g2498625654_ _g2499425658_))
                     (_g2498625654_ _g2499425658_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2498625654_
                                                      _g2499425658_))))
                                             (_g2498625654_ _g2499425658_))))
                                     (_g2498625654_ _g2499425658_)))))
                          (_g2498525764_ _$stx24982_))))))))))))
    (define |gerbil/core::<match>[:0:]#defsyntax-for-match|
      (lambda (_$stx25770_)
        (let ((_g2577525809_
               (lambda (_g2577625805_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2577625805_))))
          (let ((_g2577425866_
                 (lambda (_g2577625813_)
                   (if (gx#stx-pair? _g2577625813_)
                       (let ((_e2579525816_ (gx#syntax-e _g2577625813_)))
                         (let ((_hd2579625820_ (##car _e2579525816_))
                               (_tl2579725823_ (##cdr _e2579525816_)))
                           (if (gx#stx-pair? _tl2579725823_)
                               (let ((_e2579825826_
                                      (gx#syntax-e _tl2579725823_)))
                                 (let ((_hd2579925830_ (##car _e2579825826_))
                                       (_tl2580025833_ (##cdr _e2579825826_)))
                                   (if (gx#stx-pair? _tl2580025833_)
                                       (let ((_e2580125836_
                                              (gx#syntax-e _tl2580025833_)))
                                         (let ((_hd2580225840_
                                                (##car _e2580125836_))
                                               (_tl2580325843_
                                                (##cdr _e2580125836_)))
                                           (if (gx#stx-null? _tl2580325843_)
                                               ((lambda (_L25846_
                                                         _L25848_
                                                         _L25849_)
                                                  (cons _L25849_
                                                        (cons _L25848_
                                                              (cons _L25846_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f 'lambda)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '$stx)
                                                    '())
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'raise-syntax-error)
                                                          (cons '#f
                                                                (cons '"Bad syntax"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#datum->syntax '#f '$stx) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd2580225840_
                                                _hd2579925830_
                                                _hd2579625820_)
                                               (_g2577525809_ _g2577625813_))))
                                       (_g2577525809_ _g2577625813_))))
                               (_g2577525809_ _g2577625813_))))
                       (_g2577525809_ _g2577625813_)))))
            (let ((_g2577325934_
                   (lambda (_g2577625870_)
                     (if (gx#stx-pair? _g2577625870_)
                         (let ((_e2578025873_ (gx#syntax-e _g2577625870_)))
                           (let ((_hd2578125877_ (##car _e2578025873_))
                                 (_tl2578225880_ (##cdr _e2578025873_)))
                             (if (gx#stx-pair? _tl2578225880_)
                                 (let ((_e2578325883_
                                        (gx#syntax-e _tl2578225880_)))
                                   (let ((_hd2578425887_ (##car _e2578325883_))
                                         (_tl2578525890_
                                          (##cdr _e2578325883_)))
                                     (if (gx#stx-pair? _tl2578525890_)
                                         (let ((_e2578625893_
                                                (gx#syntax-e _tl2578525890_)))
                                           (let ((_hd2578725897_
                                                  (##car _e2578625893_))
                                                 (_tl2578825900_
                                                  (##cdr _e2578625893_)))
                                             (if (gx#stx-pair? _tl2578825900_)
                                                 (let ((_e2578925903_
                                                        (gx#syntax-e
                                                         _tl2578825900_)))
                                                   (let ((_hd2579025907_
                                                          (##car _e2578925903_))
                                                         (_tl2579125910_
                                                          (##cdr _e2578925903_)))
                                                     (if (gx#stx-null?
                                                          _tl2579125910_)
                                                         ((lambda (_L25913_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L25915_
                           _L25916_)
                    (if (gx#identifier? _L25916_)
                        (cons (gx#datum->syntax '#f 'defsyntax)
                              (cons _L25916_
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'make-match-macro)
                                                (cons 'macro:
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'let)
                          (cons (cons (cons (gx#datum->syntax '#f '$match-e)
                                            (cons _L25915_ '()))
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   '$macro-e)
                                                  (cons _L25913_ '()))
                                            '()))
                                (cons (cons (gx#datum->syntax '#f 'lambda)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         '$stx)
                                                        '())
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'syntax-case)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '$stx)
                            (cons '()
                                  (cons (cons (cons 'match:
                                                    (gx#datum->syntax
                                                     '#f
                                                     'body))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'core-apply-expander)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '$match-e)
                        (cons (cons (gx#datum->syntax '#f 'stx-wrap-source)
                                    (cons (cons (gx#datum->syntax '#f 'syntax)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'body)
                                                      '()))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-source)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             '$stx)
                                                            '()))
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        (cons (cons (gx#datum->syntax '#f '_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-apply-expander)
                        (cons (gx#datum->syntax '#f '$macro-e)
                              (cons (gx#datum->syntax '#f '$stx) '())))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        (_g2577425866_ _g2577625870_)))
                  _hd2579025907_
                  _hd2578725897_
                  _hd2578425887_)
                 (_g2577425866_ _g2577625870_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2577425866_
                                                  _g2577625870_))))
                                         (_g2577425866_ _g2577625870_))))
                                 (_g2577425866_ _g2577625870_))))
                         (_g2577425866_ _g2577625870_)))))
              (_g2577325934_ _$stx25770_))))))
    (define |gerbil/core::<match>[:0:]#defrules-for-match|
      (lambda (_$stx25938_)
        (let ((_g2594225957_
               (lambda (_g2594325953_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2594325953_))))
          (let ((_g2594126000_
                 (lambda (_g2594325961_)
                   (if (gx#stx-pair? _g2594325961_)
                       (let ((_e2594625964_ (gx#syntax-e _g2594325961_)))
                         (let ((_hd2594725968_ (##car _e2594625964_))
                               (_tl2594825971_ (##cdr _e2594625964_)))
                           (if (gx#stx-pair? _tl2594825971_)
                               (let ((_e2594925974_
                                      (gx#syntax-e _tl2594825971_)))
                                 (let ((_hd2595025978_ (##car _e2594925974_))
                                       (_tl2595125981_ (##cdr _e2594925974_)))
                                   ((lambda (_L25984_ _L25986_)
                                      (cons (gx#datum->syntax
                                             '#f
                                             'defsyntax-for-match)
                                            (cons _L25986_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'syntax-rules)
                                                              _L25984_)
                                                        '()))))
                                    _tl2595125981_
                                    _hd2595025978_)))
                               (_g2594225957_ _g2594325961_))))
                       (_g2594225957_ _g2594325961_)))))
            (_g2594126000_ _$stx25938_)))))))
