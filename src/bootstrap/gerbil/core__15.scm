(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<module-sugar>[:0:]#require|
    (lambda (_$stx27323_)
      (let ((_g2732827347_
             (lambda (_g2732927343_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2732927343_))))
        (let ((_g2732727393_
               (lambda (_g2732927351_)
                 (if (gx#stx-pair? _g2732927351_)
                     (let ((_e2733627354_ (gx#syntax-e _g2732927351_)))
                       (let ((_hd2733727358_ (##car _e2733627354_))
                             (_tl2733827361_ (##cdr _e2733627354_)))
                         (if (gx#stx-pair? _tl2733827361_)
                             (let ((_e2733927364_
                                    (gx#syntax-e _tl2733827361_)))
                               (let ((_hd2734027368_ (##car _e2733927364_))
                                     (_tl2734127371_ (##cdr _e2733927364_)))
                                 ((lambda (_L27374_ _L27376_ _L27377_)
                                    (cons (gx#datum->syntax '#f 'cond-expand)
                                          (cons (cons _L27376_
                                                      (cons (cons _L27377_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L27374_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'else)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'syntax-error)
                                (cons '"Missing required feature"
                                      (cons _L27376_ '())))
                          '()))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _tl2734127371_
                                  _hd2734027368_
                                  _hd2733727358_)))
                             (_g2732827347_ _g2732927351_))))
                     (_g2732827347_ _g2732927351_)))))
          (let ((_g2732627414_
                 (lambda (_g2732927397_)
                   (if (gx#stx-pair? _g2732927397_)
                       (let ((_e2733027400_ (gx#syntax-e _g2732927397_)))
                         (let ((_hd2733127404_ (##car _e2733027400_))
                               (_tl2733227407_ (##cdr _e2733027400_)))
                           (if (gx#stx-null? _tl2733227407_)
                               ((lambda ()
                                  (cons (gx#datum->syntax '#f 'begin) '())))
                               (_g2732727393_ _g2732927397_))))
                       (_g2732727393_ _g2732927397_)))))
            (_g2732627414_ _$stx27323_))))))
  (define |gerbil/core::<module-sugar>[:0:]#defsyntax-for-import|
    (lambda (_$stx27418_)
      (let ((_g2742327463_
             (lambda (_g2742427459_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2742427459_))))
        (let ((_g2742227564_
               (lambda (_g2742427467_)
                 (if (gx#stx-pair? _g2742427467_)
                     (let ((_e2744027470_ (gx#syntax-e _g2742427467_)))
                       (let ((_hd2744127474_ (##car _e2744027470_))
                             (_tl2744227477_ (##cdr _e2744027470_)))
                         (if (gx#stx-pair? _tl2744227477_)
                             (let ((_e2744327480_
                                    (gx#syntax-e _tl2744227477_)))
                               (let ((_hd2744427484_ (##car _e2744327480_))
                                     (_tl2744527487_ (##cdr _e2744327480_)))
                                 (if (gx#stx-pair? _hd2744427484_)
                                     (let ((_e2744627490_
                                            (gx#syntax-e _hd2744427484_)))
                                       (let ((_hd2744727494_
                                              (##car _e2744627490_))
                                             (_tl2744827497_
                                              (##cdr _e2744627490_)))
                                         (if (gx#stx-pair/null? _tl2744527487_)
                                             (if (fx>= (gx#stx-length
                                                        _tl2744527487_)
                                                       '0)
                                                 (let ((_g29551_
                                                        (gx#syntax-split-splice
                                                         _tl2744527487_
                                                         '0)))
                                                   (begin
                                                     (let ((_g29552_
                                                            (values-count
                                                             _g29551_)))
                                                       (if (not (fx= _g29552_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g29552_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2744927500_
                                                            (values-ref
                                                             _g29551_
                                                             0))
                                                           (_tl2745127503_
                                                            (values-ref
                                                             _g29551_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2745127503_)
                                                           (letrec ((_loop2745227506_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2745027510_ _body2745627513_)
                               (if (gx#stx-pair? _hd2745027510_)
                                   (let ((_e2745327516_
                                          (gx#syntax-e _hd2745027510_)))
                                     (let ((_lp-hd2745427520_
                                            (##car _e2745327516_))
                                           (_lp-tl2745527523_
                                            (##cdr _e2745327516_)))
                                       (_loop2745227506_
                                        _lp-tl2745527523_
                                        (cons _lp-hd2745427520_
                                              _body2745627513_))))
                                   (let ((_body2745727526_
                                          (reverse _body2745627513_)))
                                     ((lambda (_L27530_
                                               _L27532_
                                               _L27533_
                                               _L27534_)
                                        (if (gx#identifier? _L27533_)
                                            (cons _L27534_
                                                  (cons _L27533_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'lambda)
                            (cons _L27532_
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g2755527558_
                                                    _g2755627561_)
                                             (cons _g2755527558_
                                                   _g2755627561_))
                                           '()
                                           _L27530_))))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2742327463_ _g2742427467_)))
                                      _body2745727526_
                                      _tl2744827497_
                                      _hd2744727494_
                                      _hd2744127474_))))))
                     (_loop2745227506_ _target2744927500_ '()))
                   (_g2742327463_ _g2742427467_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2742327463_ _g2742427467_))
                                             (_g2742327463_ _g2742427467_))))
                                     (_g2742327463_ _g2742427467_))))
                             (_g2742327463_ _g2742427467_))))
                     (_g2742327463_ _g2742427467_)))))
          (let ((_g2742127618_
                 (lambda (_g2742427568_)
                   (if (gx#stx-pair? _g2742427568_)
                       (let ((_e2742727571_ (gx#syntax-e _g2742427568_)))
                         (let ((_hd2742827575_ (##car _e2742727571_))
                               (_tl2742927578_ (##cdr _e2742727571_)))
                           (if (gx#stx-pair? _tl2742927578_)
                               (let ((_e2743027581_
                                      (gx#syntax-e _tl2742927578_)))
                                 (let ((_hd2743127585_ (##car _e2743027581_))
                                       (_tl2743227588_ (##cdr _e2743027581_)))
                                   (if (gx#stx-pair? _tl2743227588_)
                                       (let ((_e2743327591_
                                              (gx#syntax-e _tl2743227588_)))
                                         (let ((_hd2743427595_
                                                (##car _e2743327591_))
                                               (_tl2743527598_
                                                (##cdr _e2743327591_)))
                                           (if (gx#stx-null? _tl2743527598_)
                                               ((lambda (_L27601_ _L27603_)
                                                  (if (gx#identifier? _L27603_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'defsyntax)
                                                            (cons _L27603_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax
                                       '#f
                                       'make-import-expander)
                                      (cons _L27601_ '()))
                                '())))
              (_g2742227564_ _g2742427568_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd2743427595_
                                                _hd2743127585_)
                                               (_g2742227564_ _g2742427568_))))
                                       (_g2742227564_ _g2742427568_))))
                               (_g2742227564_ _g2742427568_))))
                       (_g2742227564_ _g2742427568_)))))
            (_g2742127618_ _$stx27418_))))))
  (define |gerbil/core::<module-sugar>[:0:]#defsyntax-for-export|
    (lambda (_$stx27623_)
      (let ((_g2762827668_
             (lambda (_g2762927664_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2762927664_))))
        (let ((_g2762727769_
               (lambda (_g2762927672_)
                 (if (gx#stx-pair? _g2762927672_)
                     (let ((_e2764527675_ (gx#syntax-e _g2762927672_)))
                       (let ((_hd2764627679_ (##car _e2764527675_))
                             (_tl2764727682_ (##cdr _e2764527675_)))
                         (if (gx#stx-pair? _tl2764727682_)
                             (let ((_e2764827685_
                                    (gx#syntax-e _tl2764727682_)))
                               (let ((_hd2764927689_ (##car _e2764827685_))
                                     (_tl2765027692_ (##cdr _e2764827685_)))
                                 (if (gx#stx-pair? _hd2764927689_)
                                     (let ((_e2765127695_
                                            (gx#syntax-e _hd2764927689_)))
                                       (let ((_hd2765227699_
                                              (##car _e2765127695_))
                                             (_tl2765327702_
                                              (##cdr _e2765127695_)))
                                         (if (gx#stx-pair/null? _tl2765027692_)
                                             (if (fx>= (gx#stx-length
                                                        _tl2765027692_)
                                                       '0)
                                                 (let ((_g29553_
                                                        (gx#syntax-split-splice
                                                         _tl2765027692_
                                                         '0)))
                                                   (begin
                                                     (let ((_g29554_
                                                            (values-count
                                                             _g29553_)))
                                                       (if (not (fx= _g29554_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g29554_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2765427705_
                                                            (values-ref
                                                             _g29553_
                                                             0))
                                                           (_tl2765627708_
                                                            (values-ref
                                                             _g29553_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2765627708_)
                                                           (letrec ((_loop2765727711_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2765527715_ _body2766127718_)
                               (if (gx#stx-pair? _hd2765527715_)
                                   (let ((_e2765827721_
                                          (gx#syntax-e _hd2765527715_)))
                                     (let ((_lp-hd2765927725_
                                            (##car _e2765827721_))
                                           (_lp-tl2766027728_
                                            (##cdr _e2765827721_)))
                                       (_loop2765727711_
                                        _lp-tl2766027728_
                                        (cons _lp-hd2765927725_
                                              _body2766127718_))))
                                   (let ((_body2766227731_
                                          (reverse _body2766127718_)))
                                     ((lambda (_L27735_
                                               _L27737_
                                               _L27738_
                                               _L27739_)
                                        (if (gx#identifier? _L27738_)
                                            (cons _L27739_
                                                  (cons _L27738_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'lambda)
                            (cons _L27737_
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g2776027763_
                                                    _g2776127766_)
                                             (cons _g2776027763_
                                                   _g2776127766_))
                                           '()
                                           _L27735_))))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2762827668_ _g2762927672_)))
                                      _body2766227731_
                                      _tl2765327702_
                                      _hd2765227699_
                                      _hd2764627679_))))))
                     (_loop2765727711_ _target2765427705_ '()))
                   (_g2762827668_ _g2762927672_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2762827668_ _g2762927672_))
                                             (_g2762827668_ _g2762927672_))))
                                     (_g2762827668_ _g2762927672_))))
                             (_g2762827668_ _g2762927672_))))
                     (_g2762827668_ _g2762927672_)))))
          (let ((_g2762627823_
                 (lambda (_g2762927773_)
                   (if (gx#stx-pair? _g2762927773_)
                       (let ((_e2763227776_ (gx#syntax-e _g2762927773_)))
                         (let ((_hd2763327780_ (##car _e2763227776_))
                               (_tl2763427783_ (##cdr _e2763227776_)))
                           (if (gx#stx-pair? _tl2763427783_)
                               (let ((_e2763527786_
                                      (gx#syntax-e _tl2763427783_)))
                                 (let ((_hd2763627790_ (##car _e2763527786_))
                                       (_tl2763727793_ (##cdr _e2763527786_)))
                                   (if (gx#stx-pair? _tl2763727793_)
                                       (let ((_e2763827796_
                                              (gx#syntax-e _tl2763727793_)))
                                         (let ((_hd2763927800_
                                                (##car _e2763827796_))
                                               (_tl2764027803_
                                                (##cdr _e2763827796_)))
                                           (if (gx#stx-null? _tl2764027803_)
                                               ((lambda (_L27806_ _L27808_)
                                                  (if (gx#identifier? _L27808_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'defsyntax)
                                                            (cons _L27808_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax
                                       '#f
                                       'make-export-expander)
                                      (cons _L27806_ '()))
                                '())))
              (_g2762727769_ _g2762927773_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd2763927800_
                                                _hd2763627790_)
                                               (_g2762727769_ _g2762927773_))))
                                       (_g2762727769_ _g2762927773_))))
                               (_g2762727769_ _g2762927773_))))
                       (_g2762727769_ _g2762927773_)))))
            (_g2762627823_ _$stx27623_))))))
  (define |gerbil/core::<module-sugar>[:0:]#only-in|
    (gx#make-import-expander
     (lambda (_stx27828_)
       (let ((_g2783127855_
              (lambda (_g2783227851_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2783227851_))))
         (let ((_g2783027977_
                (lambda (_g2783227859_)
                  (if (gx#stx-pair? _g2783227859_)
                      (let ((_e2783527862_ (gx#syntax-e _g2783227859_)))
                        (let ((_hd2783627866_ (##car _e2783527862_))
                              (_tl2783727869_ (##cdr _e2783527862_)))
                          (if (gx#stx-pair? _tl2783727869_)
                              (let ((_e2783827872_
                                     (gx#syntax-e _tl2783727869_)))
                                (let ((_hd2783927876_ (##car _e2783827872_))
                                      (_tl2784027879_ (##cdr _e2783827872_)))
                                  (if (gx#stx-pair/null? _tl2784027879_)
                                      (if (fx>= (gx#stx-length _tl2784027879_)
                                                '0)
                                          (let ((_g29555_
                                                 (gx#syntax-split-splice
                                                  _tl2784027879_
                                                  '0)))
                                            (begin
                                              (let ((_g29556_
                                                     (values-count _g29555_)))
                                                (if (not (fx= _g29556_ 2))
                                                    (error "Context expects 2 values"
                                                           _g29556_)))
                                              (let ((_target2784127882_
                                                     (values-ref _g29555_ 0))
                                                    (_tl2784327885_
                                                     (values-ref _g29555_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2784327885_)
                                                    (letrec ((_loop2784427888_
                                                              (lambda (_hd2784227892_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _id2784827895_)
                        (if (gx#stx-pair? _hd2784227892_)
                            (let ((_e2784527898_ (gx#syntax-e _hd2784227892_)))
                              (let ((_lp-hd2784627902_ (##car _e2784527898_))
                                    (_lp-tl2784727905_ (##cdr _e2784527898_)))
                                (_loop2784427888_
                                 _lp-tl2784727905_
                                 (cons _lp-hd2784627902_ _id2784827895_))))
                            (let ((_id2784927908_ (reverse _id2784827895_)))
                              ((lambda (_L27912_ _L27914_)
                                 (if (gx#identifier-list?
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g2793127934_
                                                        _g2793227937_)
                                                 (cons _g2793127934_
                                                       _g2793227937_))
                                               '()
                                               _L27912_)))
                                     (let ((_keys27948_
                                            (gx#stx-map
                                             gx#core-identifier-key
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g2793927942_
                                                               _g2794027945_)
                                                        (cons _g2793927942_
                                                              _g2794027945_))
                                                      '()
                                                      _L27912_)))))
                                       (let ((_keytab27959_
                                              (let ((_ht27951_
                                                     (make-hash-table)))
                                                (begin
                                                  (for-each
                                                   (lambda (_g2795327955_)
                                                     (hash-put!
                                                      _ht27951_
                                                      _g2795327955_
                                                      '#t))
                                                   _keys27948_)
                                                  _ht27951_))))
                                         (let ((_imports27962_
                                                (gx#core-expand-import-source
                                                 _L27914_)))
                                           (let ((_fold-e27972_
                                                  (letrec ((_fold-e27965_
                                                            (lambda (_in27968_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _r27970_)
                      (if (gx#module-import? _in27968_)
                          (if (hash-get
                               _keytab27959_
                               (gx#module-import-name _in27968_))
                              (cons _in27968_ _r27970_)
                              _r27970_)
                          (if (gx#import-set? _in27968_)
                              (foldl _fold-e27965_
                                     _r27970_
                                     (gx#import-set-imports _in27968_))
                              _r27970_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _fold-e27965_)))
                                             (let ()
                                               (cons 'begin:
                                                     (foldl _fold-e27972_
                                                            '()
                                                            _imports27962_)))))))
                                     (_g2783127855_ _g2783227859_)))
                               _id2784927908_
                               _hd2783927876_))))))
              (_loop2784427888_ _target2784127882_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2783127855_
                                                     _g2783227859_)))))
                                          (_g2783127855_ _g2783227859_))
                                      (_g2783127855_ _g2783227859_))))
                              (_g2783127855_ _g2783227859_))))
                      (_g2783127855_ _g2783227859_)))))
           (_g2783027977_ _stx27828_))))))
  (define |gerbil/core::<module-sugar>[:0:]#except-in|
    (gx#make-import-expander
     (lambda (_stx27982_)
       (let ((_g2798528009_
              (lambda (_g2798628005_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2798628005_))))
         (let ((_g2798428131_
                (lambda (_g2798628013_)
                  (if (gx#stx-pair? _g2798628013_)
                      (let ((_e2798928016_ (gx#syntax-e _g2798628013_)))
                        (let ((_hd2799028020_ (##car _e2798928016_))
                              (_tl2799128023_ (##cdr _e2798928016_)))
                          (if (gx#stx-pair? _tl2799128023_)
                              (let ((_e2799228026_
                                     (gx#syntax-e _tl2799128023_)))
                                (let ((_hd2799328030_ (##car _e2799228026_))
                                      (_tl2799428033_ (##cdr _e2799228026_)))
                                  (if (gx#stx-pair/null? _tl2799428033_)
                                      (if (fx>= (gx#stx-length _tl2799428033_)
                                                '0)
                                          (let ((_g29557_
                                                 (gx#syntax-split-splice
                                                  _tl2799428033_
                                                  '0)))
                                            (begin
                                              (let ((_g29558_
                                                     (values-count _g29557_)))
                                                (if (not (fx= _g29558_ 2))
                                                    (error "Context expects 2 values"
                                                           _g29558_)))
                                              (let ((_target2799528036_
                                                     (values-ref _g29557_ 0))
                                                    (_tl2799728039_
                                                     (values-ref _g29557_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2799728039_)
                                                    (letrec ((_loop2799828042_
                                                              (lambda (_hd2799628046_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _id2800228049_)
                        (if (gx#stx-pair? _hd2799628046_)
                            (let ((_e2799928052_ (gx#syntax-e _hd2799628046_)))
                              (let ((_lp-hd2800028056_ (##car _e2799928052_))
                                    (_lp-tl2800128059_ (##cdr _e2799928052_)))
                                (_loop2799828042_
                                 _lp-tl2800128059_
                                 (cons _lp-hd2800028056_ _id2800228049_))))
                            (let ((_id2800328062_ (reverse _id2800228049_)))
                              ((lambda (_L28066_ _L28068_)
                                 (if (gx#identifier-list?
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g2808528088_
                                                        _g2808628091_)
                                                 (cons _g2808528088_
                                                       _g2808628091_))
                                               '()
                                               _L28066_)))
                                     (let ((_keys28102_
                                            (gx#stx-map
                                             gx#core-identifier-key
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g2809328096_
                                                               _g2809428099_)
                                                        (cons _g2809328096_
                                                              _g2809428099_))
                                                      '()
                                                      _L28066_)))))
                                       (let ((_keytab28113_
                                              (let ((_ht28105_
                                                     (make-hash-table)))
                                                (begin
                                                  (for-each
                                                   (lambda (_g2810728109_)
                                                     (hash-put!
                                                      _ht28105_
                                                      _g2810728109_
                                                      '#t))
                                                   _keys28102_)
                                                  _ht28105_))))
                                         (let ((_imports28116_
                                                (gx#core-expand-import-source
                                                 _L28068_)))
                                           (let ((_fold-e28126_
                                                  (letrec ((_fold-e28119_
                                                            (lambda (_in28122_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _r28124_)
                      (if (gx#module-import? _in28122_)
                          (if (hash-get
                               _keytab28113_
                               (gx#module-import-name _in28122_))
                              _r28124_
                              (cons _in28122_ _r28124_))
                          (if (gx#import-set? _in28122_)
                              (foldl _fold-e28119_
                                     _r28124_
                                     (gx#import-set-imports _in28122_))
                              (cons _in28122_ _r28124_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _fold-e28119_)))
                                             (let ()
                                               (cons 'begin:
                                                     (foldl _fold-e28126_
                                                            '()
                                                            _imports28116_)))))))
                                     (_g2798528009_ _g2798628013_)))
                               _id2800328062_
                               _hd2799328030_))))))
              (_loop2799828042_ _target2799528036_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2798528009_
                                                     _g2798628013_)))))
                                          (_g2798528009_ _g2798628013_))
                                      (_g2798528009_ _g2798628013_))))
                              (_g2798528009_ _g2798628013_))))
                      (_g2798528009_ _g2798628013_)))))
           (_g2798428131_ _stx27982_))))))
  (define |gerbil/core::<module-sugar>[1]#module-import-rename|
    (lambda (_in28183_ _rename28185_)
      (gx#make-module-import
       (gx#module-import-source _in28183_)
       _rename28185_
       (gx#module-import-phi _in28183_)
       (gx#module-import-weak? _in28183_))))
  (define |gerbil/core::<module-sugar>[1]#prefix-identifier-key|
    (lambda (_name28136_ _pre28138_)
      (let ((_name2813928147_ _name28136_))
        (let ((_E2814228153_
               (lambda () (error '"No clause matching" _name2813928147_))))
          (let ((_else2814128159_
                 (lambda () (make-symbol _pre28138_ _name28136_))))
            (let ((_K2814328167_
                   (lambda (_mark28163_ _id28165_)
                     (cons (make-symbol _pre28138_ _id28165_) _mark28163_))))
              (if (##pair? _name2813928147_)
                  (let ((_hd2814428171_ (##car _name2813928147_))
                        (_tl2814528174_ (##cdr _name2813928147_)))
                    (let ((_id28177_ _hd2814428171_))
                      (let ((_mark28180_ _tl2814528174_))
                        (_K2814328167_ _mark28180_ _id28177_))))
                  (_else2814128159_))))))))
  (define |gerbil/core::<module-sugar>[:0:]#rename-in|
    (gx#make-import-expander
     (lambda (_stx28187_)
       (let ((_g2819028223_
              (lambda (_g2819128219_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2819128219_))))
         (let ((_g2818928409_
                (lambda (_g2819128227_)
                  (if (gx#stx-pair? _g2819128227_)
                      (let ((_e2819528230_ (gx#syntax-e _g2819128227_)))
                        (let ((_hd2819628234_ (##car _e2819528230_))
                              (_tl2819728237_ (##cdr _e2819528230_)))
                          (if (gx#stx-pair? _tl2819728237_)
                              (let ((_e2819828240_
                                     (gx#syntax-e _tl2819728237_)))
                                (let ((_hd2819928244_ (##car _e2819828240_))
                                      (_tl2820028247_ (##cdr _e2819828240_)))
                                  (if (gx#stx-pair/null? _tl2820028247_)
                                      (if (fx>= (gx#stx-length _tl2820028247_)
                                                '0)
                                          (let ((_g29559_
                                                 (gx#syntax-split-splice
                                                  _tl2820028247_
                                                  '0)))
                                            (begin
                                              (let ((_g29560_
                                                     (values-count _g29559_)))
                                                (if (not (fx= _g29560_ 2))
                                                    (error "Context expects 2 values"
                                                           _g29560_)))
                                              (let ((_target2820128250_
                                                     (values-ref _g29559_ 0))
                                                    (_tl2820328253_
                                                     (values-ref _g29559_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2820328253_)
                                                    (letrec ((_loop2820428256_
                                                              (lambda (_hd2820228260_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _new-id2820828263_
                               _id2820928265_)
                        (if (gx#stx-pair? _hd2820228260_)
                            (let ((_e2820528268_ (gx#syntax-e _hd2820228260_)))
                              (let ((_lp-hd2820628272_ (##car _e2820528268_))
                                    (_lp-tl2820728275_ (##cdr _e2820528268_)))
                                (if (gx#stx-pair? _lp-hd2820628272_)
                                    (let ((_e2821228278_
                                           (gx#syntax-e _lp-hd2820628272_)))
                                      (let ((_hd2821328282_
                                             (##car _e2821228278_))
                                            (_tl2821428285_
                                             (##cdr _e2821228278_)))
                                        (if (gx#stx-pair? _tl2821428285_)
                                            (let ((_e2821528288_
                                                   (gx#syntax-e
                                                    _tl2821428285_)))
                                              (let ((_hd2821628292_
                                                     (##car _e2821528288_))
                                                    (_tl2821728295_
                                                     (##cdr _e2821528288_)))
                                                (if (gx#stx-null?
                                                     _tl2821728295_)
                                                    (_loop2820428256_
                                                     _lp-tl2820728275_
                                                     (cons _hd2821628292_
                                                           _new-id2820828263_)
                                                     (cons _hd2821328282_
                                                           _id2820928265_))
                                                    (_g2819028223_
                                                     _g2819128227_))))
                                            (_g2819028223_ _g2819128227_))))
                                    (_g2819028223_ _g2819128227_))))
                            (let ((_new-id2821028298_
                                   (reverse _new-id2820828263_))
                                  (_id2821128301_ (reverse _id2820928265_)))
                              ((lambda (_L28304_ _L28306_ _L28307_)
                                 (if (if (gx#identifier-list?
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2832528328_
                                                            _g2832628331_)
                                                     (cons _g2832528328_
                                                           _g2832628331_))
                                                   '()
                                                   _L28306_)))
                                         (gx#identifier-list?
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2833328336_
                                                            _g2833428339_)
                                                     (cons _g2833328336_
                                                           _g2833428339_))
                                                   '()
                                                   _L28304_)))
                                         '#f)
                                     (let ((_keytab28342_ (make-hash-table)))
                                       (let ((_found28345_ (make-hash-table)))
                                         (let ((_g29561_
                                                (for-each
                                                 (lambda (_id28348_
                                                          _new-id28350_)
                                                   (hash-put!
                                                    _keytab28342_
                                                    (gx#core-identifier-key
                                                     _id28348_)
                                                    (gx#core-identifier-key
                                                     _new-id28350_)))
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2835128354_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2835228357_)
                    (cons _g2835128354_ _g2835228357_))
                  '()
                  _L28306_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2835928362_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2836028365_)
                    (cons _g2835928362_ _g2836028365_))
                  '()
                  _L28304_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_imports28370_
                                                  (gx#core-expand-import-source
                                                   _L28307_)))
                                             (let ((_fold-e28390_
                                                    (letrec ((_fold-e28373_
                                                              (lambda (_in28376_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _r28378_)
                        (if (gx#module-import? _in28376_)
                            (let ((_name28380_
                                   (gx#module-import-name _in28376_)))
                              (let ((_$e28383_
                                     (hash-get _keytab28342_ _name28380_)))
                                (if _$e28383_
                                    ((lambda (_rename28387_)
                                       (begin
                                         (hash-put!
                                          _found28345_
                                          _name28380_
                                          '#t)
                                         (cons (|gerbil/core::<module-sugar>[1]#module-import-rename|
                                                _in28376_
                                                _rename28387_)
                                               _r28378_)))
                                     _$e28383_)
                                    (cons _in28376_ _r28378_))))
                            (if (gx#import-set? _in28376_)
                                (foldl _fold-e28373_
                                       _r28378_
                                       (gx#import-set-imports _in28376_))
                                (cons _in28376_ _r28378_))))))
              _fold-e28373_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_new-imports28393_
                                                      (foldl _fold-e28390_
                                                             '()
                                                             _imports28370_)))
                                                 (let ()
                                                   (begin
                                                     (for-each
                                                      (lambda (_id28398_)
                                                        (if (hash-get
                                                             _found28345_
                                                             (gx#core-identifier-key
                                                              _id28398_))
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; identifier is not in the import set"
                                                             _stx28187_
                                                             _id28398_)))
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g2840028403_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2840128406_)
                         (cons _g2840028403_ _g2840128406_))
                       '()
                       _L28306_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons 'begin:
                                                           _new-imports28393_)))))))))
                                     (_g2819028223_ _g2819128227_)))
                               _new-id2821028298_
                               _id2821128301_
                               _hd2819928244_))))))
              (_loop2820428256_ _target2820128250_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2819028223_
                                                     _g2819128227_)))))
                                          (_g2819028223_ _g2819128227_))
                                      (_g2819028223_ _g2819128227_))))
                              (_g2819028223_ _g2819128227_))))
                      (_g2819028223_ _g2819128227_)))))
           (_g2818928409_ _stx28187_))))))
  (define |gerbil/core::<module-sugar>[:0:]#prefix-in|
    (gx#make-import-expander
     (lambda (_stx28415_)
       (let ((_g2841828436_
              (lambda (_g2841928432_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2841928432_))))
         (let ((_g2841728515_
                (lambda (_g2841928440_)
                  (if (gx#stx-pair? _g2841928440_)
                      (let ((_e2842228443_ (gx#syntax-e _g2841928440_)))
                        (let ((_hd2842328447_ (##car _e2842228443_))
                              (_tl2842428450_ (##cdr _e2842228443_)))
                          (if (gx#stx-pair? _tl2842428450_)
                              (let ((_e2842528453_
                                     (gx#syntax-e _tl2842428450_)))
                                (let ((_hd2842628457_ (##car _e2842528453_))
                                      (_tl2842728460_ (##cdr _e2842528453_)))
                                  (if (gx#stx-pair? _tl2842728460_)
                                      (let ((_e2842828463_
                                             (gx#syntax-e _tl2842728460_)))
                                        (let ((_hd2842928467_
                                               (##car _e2842828463_))
                                              (_tl2843028470_
                                               (##cdr _e2842828463_)))
                                          (if (gx#stx-null? _tl2843028470_)
                                              ((lambda (_L28473_ _L28475_)
                                                 (if (gx#identifier? _L28473_)
                                                     (let ((_pre28491_
                                                            (gx#stx-e
                                                             _L28473_)))
                                                       (let ((_imports28494_
                                                              (gx#core-expand-import-source
                                                               _L28475_)))
                                                         (let ((_rename-e28500_
                                                                (lambda (_name28497_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (|gerbil/core::<module-sugar>[1]#prefix-identifier-key|
                           _name28497_
                           _pre28491_))))
                   (let ((_fold-e28510_
                          (letrec ((_fold-e28503_
                                    (lambda (_in28506_ _r28508_)
                                      (if (gx#module-import? _in28506_)
                                          (cons (|gerbil/core::<module-sugar>[1]#module-import-rename|
                                                 _in28506_
                                                 (_rename-e28500_
                                                  (gx#module-import-name
                                                   _in28506_)))
                                                _r28508_)
                                          (if (gx#import-set? _in28506_)
                                              (foldl _fold-e28503_
                                                     _r28508_
                                                     (gx#import-set-imports
                                                      _in28506_))
                                              (cons _in28506_ _r28508_))))))
                            _fold-e28503_)))
                     (let ()
                       (cons 'begin:
                             (foldl _fold-e28510_ '() _imports28494_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2841828436_
                                                      _g2841928440_)))
                                               _hd2842928467_
                                               _hd2842628457_)
                                              (_g2841828436_ _g2841928440_))))
                                      (_g2841828436_ _g2841928440_))))
                              (_g2841828436_ _g2841928440_))))
                      (_g2841828436_ _g2841928440_)))))
           (_g2841728515_ _stx28415_))))))
  (define |gerbil/core::<module-sugar>[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_stx28519_)
       (let ((_g2852228546_
              (lambda (_g2852328542_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2852328542_))))
         (let ((_g2852128668_
                (lambda (_g2852328550_)
                  (if (gx#stx-pair? _g2852328550_)
                      (let ((_e2852628553_ (gx#syntax-e _g2852328550_)))
                        (let ((_hd2852728557_ (##car _e2852628553_))
                              (_tl2852828560_ (##cdr _e2852628553_)))
                          (if (gx#stx-pair? _tl2852828560_)
                              (let ((_e2852928563_
                                     (gx#syntax-e _tl2852828560_)))
                                (let ((_hd2853028567_ (##car _e2852928563_))
                                      (_tl2853128570_ (##cdr _e2852928563_)))
                                  (if (gx#stx-pair/null? _tl2853128570_)
                                      (if (fx>= (gx#stx-length _tl2853128570_)
                                                '0)
                                          (let ((_g29562_
                                                 (gx#syntax-split-splice
                                                  _tl2853128570_
                                                  '0)))
                                            (begin
                                              (let ((_g29563_
                                                     (values-count _g29562_)))
                                                (if (not (fx= _g29563_ 2))
                                                    (error "Context expects 2 values"
                                                           _g29563_)))
                                              (let ((_target2853228573_
                                                     (values-ref _g29562_ 0))
                                                    (_tl2853428576_
                                                     (values-ref _g29562_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2853428576_)
                                                    (letrec ((_loop2853528579_
                                                              (lambda (_hd2853328583_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _id2853928586_)
                        (if (gx#stx-pair? _hd2853328583_)
                            (let ((_e2853628589_ (gx#syntax-e _hd2853328583_)))
                              (let ((_lp-hd2853728593_ (##car _e2853628589_))
                                    (_lp-tl2853828596_ (##cdr _e2853628589_)))
                                (_loop2853528579_
                                 _lp-tl2853828596_
                                 (cons _lp-hd2853728593_ _id2853928586_))))
                            (let ((_id2854028599_ (reverse _id2853928586_)))
                              ((lambda (_L28603_ _L28605_)
                                 (if (gx#identifier-list?
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g2862228625_
                                                        _g2862328628_)
                                                 (cons _g2862228625_
                                                       _g2862328628_))
                                               '()
                                               _L28603_)))
                                     (let ((_keys28639_
                                            (gx#stx-map
                                             gx#core-identifier-key
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g2863028633_
                                                               _g2863128636_)
                                                        (cons _g2863028633_
                                                              _g2863128636_))
                                                      '()
                                                      _L28603_)))))
                                       (let ((_keytab28650_
                                              (let ((_ht28642_
                                                     (make-hash-table)))
                                                (begin
                                                  (for-each
                                                   (lambda (_g2864428646_)
                                                     (hash-put!
                                                      _ht28642_
                                                      _g2864428646_
                                                      '#t))
                                                   _keys28639_)
                                                  _ht28642_))))
                                         (let ((_exports28653_
                                                (gx#core-expand-export-source
                                                 _L28605_)))
                                           (let ((_fold-e28663_
                                                  (letrec ((_fold-e28656_
                                                            (lambda (_out28659_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _r28661_)
                      (if (gx#module-export? _out28659_)
                          (if (hash-get
                               _keytab28650_
                               (gx#module-export-name _out28659_))
                              _r28661_
                              (cons _out28659_ _r28661_))
                          (if (gx#export-set? _out28659_)
                              (foldl _fold-e28656_
                                     _r28661_
                                     (gx#export-set-exports _out28659_))
                              _r28661_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _fold-e28656_)))
                                             (let ()
                                               (cons 'begin:
                                                     (foldl _fold-e28663_
                                                            '()
                                                            _exports28653_)))))))
                                     (_g2852228546_ _g2852328550_)))
                               _id2854028599_
                               _hd2853028567_))))))
              (_loop2853528579_ _target2853228573_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2852228546_
                                                     _g2852328550_)))))
                                          (_g2852228546_ _g2852328550_))
                                      (_g2852228546_ _g2852328550_))))
                              (_g2852228546_ _g2852328550_))))
                      (_g2852228546_ _g2852328550_)))))
           (_g2852128668_ _stx28519_))))))
  (define |gerbil/core::<module-sugar>[1]#module-export-rename|
    (lambda (_out28673_ _rename28675_)
      (gx#make-module-export
       (gx#module-export-context _out28673_)
       (gx#module-export-key _out28673_)
       (gx#module-export-phi _out28673_)
       _rename28675_
       (gx#module-export-weak? _out28673_))))
  (define |gerbil/core::<module-sugar>[:0:]#rename-out|
    (gx#make-export-expander
     (lambda (_stx28677_)
       (let ((_g2868028713_
              (lambda (_g2868128709_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2868128709_))))
         (let ((_g2867928899_
                (lambda (_g2868128717_)
                  (if (gx#stx-pair? _g2868128717_)
                      (let ((_e2868528720_ (gx#syntax-e _g2868128717_)))
                        (let ((_hd2868628724_ (##car _e2868528720_))
                              (_tl2868728727_ (##cdr _e2868528720_)))
                          (if (gx#stx-pair? _tl2868728727_)
                              (let ((_e2868828730_
                                     (gx#syntax-e _tl2868728727_)))
                                (let ((_hd2868928734_ (##car _e2868828730_))
                                      (_tl2869028737_ (##cdr _e2868828730_)))
                                  (if (gx#stx-pair/null? _tl2869028737_)
                                      (if (fx>= (gx#stx-length _tl2869028737_)
                                                '0)
                                          (let ((_g29564_
                                                 (gx#syntax-split-splice
                                                  _tl2869028737_
                                                  '0)))
                                            (begin
                                              (let ((_g29565_
                                                     (values-count _g29564_)))
                                                (if (not (fx= _g29565_ 2))
                                                    (error "Context expects 2 values"
                                                           _g29565_)))
                                              (let ((_target2869128740_
                                                     (values-ref _g29564_ 0))
                                                    (_tl2869328743_
                                                     (values-ref _g29564_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2869328743_)
                                                    (letrec ((_loop2869428746_
                                                              (lambda (_hd2869228750_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _new-id2869828753_
                               _id2869928755_)
                        (if (gx#stx-pair? _hd2869228750_)
                            (let ((_e2869528758_ (gx#syntax-e _hd2869228750_)))
                              (let ((_lp-hd2869628762_ (##car _e2869528758_))
                                    (_lp-tl2869728765_ (##cdr _e2869528758_)))
                                (if (gx#stx-pair? _lp-hd2869628762_)
                                    (let ((_e2870228768_
                                           (gx#syntax-e _lp-hd2869628762_)))
                                      (let ((_hd2870328772_
                                             (##car _e2870228768_))
                                            (_tl2870428775_
                                             (##cdr _e2870228768_)))
                                        (if (gx#stx-pair? _tl2870428775_)
                                            (let ((_e2870528778_
                                                   (gx#syntax-e
                                                    _tl2870428775_)))
                                              (let ((_hd2870628782_
                                                     (##car _e2870528778_))
                                                    (_tl2870728785_
                                                     (##cdr _e2870528778_)))
                                                (if (gx#stx-null?
                                                     _tl2870728785_)
                                                    (_loop2869428746_
                                                     _lp-tl2869728765_
                                                     (cons _hd2870628782_
                                                           _new-id2869828753_)
                                                     (cons _hd2870328772_
                                                           _id2869928755_))
                                                    (_g2868028713_
                                                     _g2868128717_))))
                                            (_g2868028713_ _g2868128717_))))
                                    (_g2868028713_ _g2868128717_))))
                            (let ((_new-id2870028788_
                                   (reverse _new-id2869828753_))
                                  (_id2870128791_ (reverse _id2869928755_)))
                              ((lambda (_L28794_ _L28796_ _L28797_)
                                 (if (if (gx#identifier-list?
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2881528818_
                                                            _g2881628821_)
                                                     (cons _g2881528818_
                                                           _g2881628821_))
                                                   '()
                                                   _L28796_)))
                                         (gx#identifier-list?
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2882328826_
                                                            _g2882428829_)
                                                     (cons _g2882328826_
                                                           _g2882428829_))
                                                   '()
                                                   _L28794_)))
                                         '#f)
                                     (let ((_keytab28832_ (make-hash-table)))
                                       (let ((_found28835_ (make-hash-table)))
                                         (let ((_g29566_
                                                (for-each
                                                 (lambda (_id28838_
                                                          _new-id28840_)
                                                   (hash-put!
                                                    _keytab28832_
                                                    (gx#core-identifier-key
                                                     _id28838_)
                                                    (gx#core-identifier-key
                                                     _new-id28840_)))
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2884128844_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2884228847_)
                    (cons _g2884128844_ _g2884228847_))
                  '()
                  _L28796_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2884928852_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2885028855_)
                    (cons _g2884928852_ _g2885028855_))
                  '()
                  _L28794_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_exports28860_
                                                  (gx#core-expand-export-source
                                                   _L28797_)))
                                             (let ((_fold-e28880_
                                                    (letrec ((_fold-e28863_
                                                              (lambda (_out28866_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _r28868_)
                        (if (gx#module-export? _out28866_)
                            (let ((_name28870_
                                   (gx#module-export-name _out28866_)))
                              (let ((_$e28873_
                                     (hash-get _keytab28832_ _name28870_)))
                                (if _$e28873_
                                    ((lambda (_rename28877_)
                                       (begin
                                         (hash-put!
                                          _found28835_
                                          _name28870_
                                          '#t)
                                         (cons (|gerbil/core::<module-sugar>[1]#module-export-rename|
                                                _out28866_
                                                _rename28877_)
                                               _r28868_)))
                                     _$e28873_)
                                    (cons _out28866_ _r28868_))))
                            (if (gx#export-set? _out28866_)
                                (foldl _fold-e28863_
                                       _r28868_
                                       (gx#export-set-exports _out28866_))
                                (cons _out28866_ _r28868_))))))
              _fold-e28863_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_new-exports28883_
                                                      (foldl _fold-e28880_
                                                             '()
                                                             _exports28860_)))
                                                 (let ()
                                                   (begin
                                                     (for-each
                                                      (lambda (_id28888_)
                                                        (if (hash-get
                                                             _found28835_
                                                             (gx#core-identifier-key
                                                              _id28888_))
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; identifier is not in the export set"
                                                             _stx28677_
                                                             _id28888_)))
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g2889028893_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2889128896_)
                         (cons _g2889028893_ _g2889128896_))
                       '()
                       _L28796_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons 'begin:
                                                           _new-exports28883_)))))))))
                                     (_g2868028713_ _g2868128717_)))
                               _new-id2870028788_
                               _id2870128791_
                               _hd2868928734_))))))
              (_loop2869428746_ _target2869128740_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2868028713_
                                                     _g2868128717_)))))
                                          (_g2868028713_ _g2868128717_))
                                      (_g2868028713_ _g2868128717_))))
                              (_g2868028713_ _g2868128717_))))
                      (_g2868028713_ _g2868128717_)))))
           (_g2867928899_ _stx28677_))))))
  (define |gerbil/core::<module-sugar>[:0:]#prefix-out|
    (gx#make-export-expander
     (lambda (_stx28905_)
       (let ((_g2890828926_
              (lambda (_g2890928922_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2890928922_))))
         (let ((_g2890729005_
                (lambda (_g2890928930_)
                  (if (gx#stx-pair? _g2890928930_)
                      (let ((_e2891228933_ (gx#syntax-e _g2890928930_)))
                        (let ((_hd2891328937_ (##car _e2891228933_))
                              (_tl2891428940_ (##cdr _e2891228933_)))
                          (if (gx#stx-pair? _tl2891428940_)
                              (let ((_e2891528943_
                                     (gx#syntax-e _tl2891428940_)))
                                (let ((_hd2891628947_ (##car _e2891528943_))
                                      (_tl2891728950_ (##cdr _e2891528943_)))
                                  (if (gx#stx-pair? _tl2891728950_)
                                      (let ((_e2891828953_
                                             (gx#syntax-e _tl2891728950_)))
                                        (let ((_hd2891928957_
                                               (##car _e2891828953_))
                                              (_tl2892028960_
                                               (##cdr _e2891828953_)))
                                          (if (gx#stx-null? _tl2892028960_)
                                              ((lambda (_L28963_ _L28965_)
                                                 (if (gx#identifier? _L28963_)
                                                     (let ((_pre28981_
                                                            (gx#stx-e
                                                             _L28963_)))
                                                       (let ((_exports28984_
                                                              (gx#core-expand-export-source
                                                               _L28965_)))
                                                         (let ((_rename-e28990_
                                                                (lambda (_name28987_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (|gerbil/core::<module-sugar>[1]#prefix-identifier-key|
                           _name28987_
                           _pre28981_))))
                   (let ((_fold-e29000_
                          (letrec ((_fold-e28993_
                                    (lambda (_out28996_ _r28998_)
                                      (if (gx#module-export? _out28996_)
                                          (cons (|gerbil/core::<module-sugar>[1]#module-export-rename|
                                                 _out28996_
                                                 (_rename-e28990_
                                                  (gx#module-export-name
                                                   _out28996_)))
                                                _r28998_)
                                          (if (gx#export-set? _out28996_)
                                              (foldl _fold-e28993_
                                                     _r28998_
                                                     (gx#export-set-exports
                                                      _out28996_))
                                              (cons _out28996_ _r28998_))))))
                            _fold-e28993_)))
                     (let ()
                       (cons 'begin:
                             (foldl _fold-e29000_ '() _exports28984_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2890828926_
                                                      _g2890928930_)))
                                               _hd2891928957_
                                               _hd2891628947_)
                                              (_g2890828926_ _g2890928930_))))
                                      (_g2890828926_ _g2890928930_))))
                              (_g2890828926_ _g2890928930_))))
                      (_g2890828926_ _g2890928930_)))))
           (_g2890729005_ _stx28905_))))))
  (define |gerbil/core::<module-sugar>[:0:]#struct-out|
    (gx#make-export-expander
     (lambda (_stx29009_)
       (let ((_g2901229032_
              (lambda (_g2901329028_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2901329028_))))
         (let ((_g2901129267_
                (lambda (_g2901329036_)
                  (if (gx#stx-pair? _g2901329036_)
                      (let ((_e2901529039_ (gx#syntax-e _g2901329036_)))
                        (let ((_hd2901629043_ (##car _e2901529039_))
                              (_tl2901729046_ (##cdr _e2901529039_)))
                          (if (gx#stx-pair/null? _tl2901729046_)
                              (if (fx>= (gx#stx-length _tl2901729046_) '0)
                                  (let ((_g29567_
                                         (gx#syntax-split-splice
                                          _tl2901729046_
                                          '0)))
                                    (begin
                                      (let ((_g29568_ (values-count _g29567_)))
                                        (if (not (fx= _g29568_ 2))
                                            (error "Context expects 2 values"
                                                   _g29568_)))
                                      (let ((_target2901829049_
                                             (values-ref _g29567_ 0))
                                            (_tl2902029052_
                                             (values-ref _g29567_ 1)))
                                        (if (gx#stx-null? _tl2902029052_)
                                            (letrec ((_loop2902129055_
                                                      (lambda (_hd2901929059_
                                                               _id2902529062_)
                                                        (if (gx#stx-pair?
                                                             _hd2901929059_)
                                                            (let ((_e2902229065_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd2901929059_)))
                      (let ((_lp-hd2902329069_ (##car _e2902229065_))
                            (_lp-tl2902429072_ (##cdr _e2902229065_)))
                        (_loop2902129055_
                         _lp-tl2902429072_
                         (cons _lp-hd2902329069_ _id2902529062_))))
                    (let ((_id2902629075_ (reverse _id2902529062_)))
                      ((lambda (_L29079_)
                         ((letrec ((_lp29095_
                                    (lambda (_rest29098_ _ids29100_)
                                      (let ((_g2910329115_
                                             (lambda (_g2910429111_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2910429111_))))
                                        (let ((_g2910229126_
                                               (lambda (_g2910429119_)
                                                 ((lambda ()
                                                    (cons 'begin:
                                                          _ids29100_))))))
                                          (let ((_g2910129255_
                                                 (lambda (_g2910429130_)
                                                   (if (gx#stx-pair?
                                                        _g2910429130_)
                                                       (let ((_e2910729133_
                                                              (gx#syntax-e
                                                               _g2910429130_)))
                                                         (let ((_hd2910829137_
                                                                (##car _e2910729133_))
                                                               (_tl2910929140_
                                                                (##cdr _e2910729133_)))
                                                           ((lambda (_L29143_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L29145_)
                      (let ((_info29160_
                             (gx#syntax-local-value _L29145_ false)))
                        (if (|gerbil/core::<MOP>::<MOP:2>[1]#expander-type-info?|
                             _info29160_)
                            (let ((_g2916229179_
                                   (slot-ref
                                    _info29160_
                                    'expander-identifiers)))
                              (let ((_E2916429185_
                                     (lambda ()
                                       (error '"No clause matching"
                                              _g2916229179_))))
                                (let ((_K2916529197_
                                       (lambda (_setf29189_
                                                _getf29191_
                                                _type?29192_
                                                _make-type29193_
                                                _type::t29194_
                                                _super29195_)
                                         (_lp29095_
                                          _L29143_
                                          (cons _L29145_
                                                (cons _type::t29194_
                                                      (cons _make-type29193_
                                                            (cons _type?29192_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (foldr cons
                                 (foldr cons _ids29100_ _setf29189_)
                                 _getf29191_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (##pair? _g2916229179_)
                                      (let ((_hd2916629201_
                                             (##car _g2916229179_))
                                            (_tl2916729204_
                                             (##cdr _g2916229179_)))
                                        (let ((_super29207_ _hd2916629201_))
                                          (if (##pair? _tl2916729204_)
                                              (let ((_hd2916829210_
                                                     (##car _tl2916729204_))
                                                    (_tl2916929213_
                                                     (##cdr _tl2916729204_)))
                                                (let ((_type::t29216_
                                                       _hd2916829210_))
                                                  (if (##pair? _tl2916929213_)
                                                      (let ((_hd2917029219_
                                                             (##car _tl2916929213_))
                                                            (_tl2917129222_
                                                             (##cdr _tl2916929213_)))
                                                        (let ((_make-type29225_
                                                               _hd2917029219_))
                                                          (if (##pair? _tl2917129222_)
                                                              (let ((_hd2917229228_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##car _tl2917129222_))
                            (_tl2917329231_ (##cdr _tl2917129222_)))
                        (let ((_type?29234_ _hd2917229228_))
                          (if (##pair? _tl2917329231_)
                              (let ((_hd2917429237_ (##car _tl2917329231_))
                                    (_tl2917529240_ (##cdr _tl2917329231_)))
                                (let ((_getf29243_ _hd2917429237_))
                                  (if (##pair? _tl2917529240_)
                                      (let ((_hd2917629246_
                                             (##car _tl2917529240_))
                                            (_tl2917729249_
                                             (##cdr _tl2917529240_)))
                                        (let ((_setf29252_ _hd2917629246_))
                                          (if (##null? _tl2917729249_)
                                              (_K2916529197_
                                               _setf29252_
                                               _getf29243_
                                               _type?29234_
                                               _make-type29225_
                                               _type::t29216_
                                               _super29207_)
                                              (_E2916429185_))))
                                      (_E2916429185_))))
                              (_E2916429185_))))
                      (_E2916429185_))))
              (_E2916429185_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E2916429185_))))
                                      (_E2916429185_)))))
                            (gx#raise-syntax-error
                             '#f
                             '"Incomplete type info"
                             _stx29009_
                             _L29145_))))
                    _tl2910929140_
                    _hd2910829137_)))
               (_g2910229126_ _g2910429130_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2910129255_ _rest29098_)))))))
                            _lp29095_)
                          (begin
                            '#!void
                            (foldr (lambda (_g2925829261_ _g2925929264_)
                                     (cons _g2925829261_ _g2925929264_))
                                   '()
                                   _L29079_))
                          '()))
                       _id2902629075_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop2902129055_
                                               _target2901829049_
                                               '()))
                                            (_g2901229032_ _g2901329036_)))))
                                  (_g2901229032_ _g2901329036_))
                              (_g2901229032_ _g2901329036_))))
                      (_g2901229032_ _g2901329036_)))))
           (_g2901129267_ _stx29009_)))))))
