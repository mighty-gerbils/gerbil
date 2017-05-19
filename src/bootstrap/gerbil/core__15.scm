(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<module-sugar>[:0:]#require|
    (lambda (_$stx27316_)
      (let ((_g2732127340_
             (lambda (_g2732227336_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2732227336_))))
        (let ((_g2732027386_
               (lambda (_g2732227344_)
                 (if (gx#stx-pair? _g2732227344_)
                     (let ((_e2732927347_ (gx#syntax-e _g2732227344_)))
                       (let ((_hd2733027351_ (##car _e2732927347_))
                             (_tl2733127354_ (##cdr _e2732927347_)))
                         (if (gx#stx-pair? _tl2733127354_)
                             (let ((_e2733227357_
                                    (gx#syntax-e _tl2733127354_)))
                               (let ((_hd2733327361_ (##car _e2733227357_))
                                     (_tl2733427364_ (##cdr _e2733227357_)))
                                 ((lambda (_L27367_ _L27369_ _L27370_)
                                    (cons (gx#datum->syntax '#f 'cond-expand)
                                          (cons (cons _L27369_
                                                      (cons (cons _L27370_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L27367_)
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
                                      (cons _L27369_ '())))
                          '()))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _tl2733427364_
                                  _hd2733327361_
                                  _hd2733027351_)))
                             (_g2732127340_ _g2732227344_))))
                     (_g2732127340_ _g2732227344_)))))
          (let ((_g2731927407_
                 (lambda (_g2732227390_)
                   (if (gx#stx-pair? _g2732227390_)
                       (let ((_e2732327393_ (gx#syntax-e _g2732227390_)))
                         (let ((_hd2732427397_ (##car _e2732327393_))
                               (_tl2732527400_ (##cdr _e2732327393_)))
                           (if (gx#stx-null? _tl2732527400_)
                               ((lambda ()
                                  (cons (gx#datum->syntax '#f 'begin) '())))
                               (_g2732027386_ _g2732227390_))))
                       (_g2732027386_ _g2732227390_)))))
            (_g2731927407_ _$stx27316_))))))
  (define |gerbil/core::<module-sugar>[:0:]#defsyntax-for-import|
    (lambda (_$stx27411_)
      (let ((_g2741627456_
             (lambda (_g2741727452_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2741727452_))))
        (let ((_g2741527557_
               (lambda (_g2741727460_)
                 (if (gx#stx-pair? _g2741727460_)
                     (let ((_e2743327463_ (gx#syntax-e _g2741727460_)))
                       (let ((_hd2743427467_ (##car _e2743327463_))
                             (_tl2743527470_ (##cdr _e2743327463_)))
                         (if (gx#stx-pair? _tl2743527470_)
                             (let ((_e2743627473_
                                    (gx#syntax-e _tl2743527470_)))
                               (let ((_hd2743727477_ (##car _e2743627473_))
                                     (_tl2743827480_ (##cdr _e2743627473_)))
                                 (if (gx#stx-pair? _hd2743727477_)
                                     (let ((_e2743927483_
                                            (gx#syntax-e _hd2743727477_)))
                                       (let ((_hd2744027487_
                                              (##car _e2743927483_))
                                             (_tl2744127490_
                                              (##cdr _e2743927483_)))
                                         (if (gx#stx-pair/null? _tl2743827480_)
                                             (if (fx>= (gx#stx-length
                                                        _tl2743827480_)
                                                       '0)
                                                 (let ((_g28671_
                                                        (gx#syntax-split-splice
                                                         _tl2743827480_
                                                         '0)))
                                                   (begin
                                                     (let ((_g28672_
                                                            (values-count
                                                             _g28671_)))
                                                       (if (not (fx= _g28672_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g28672_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2744227493_
                                                            (values-ref
                                                             _g28671_
                                                             0))
                                                           (_tl2744427496_
                                                            (values-ref
                                                             _g28671_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2744427496_)
                                                           (letrec ((_loop2744527499_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2744327503_ _body2744927506_)
                               (if (gx#stx-pair? _hd2744327503_)
                                   (let ((_e2744627509_
                                          (gx#syntax-e _hd2744327503_)))
                                     (let ((_lp-hd2744727513_
                                            (##car _e2744627509_))
                                           (_lp-tl2744827516_
                                            (##cdr _e2744627509_)))
                                       (_loop2744527499_
                                        _lp-tl2744827516_
                                        (cons _lp-hd2744727513_
                                              _body2744927506_))))
                                   (let ((_body2745027519_
                                          (reverse _body2744927506_)))
                                     ((lambda (_L27523_
                                               _L27525_
                                               _L27526_
                                               _L27527_)
                                        (if (gx#identifier? _L27526_)
                                            (cons _L27527_
                                                  (cons _L27526_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'lambda)
                            (cons _L27525_
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g2754827551_
                                                    _g2754927554_)
                                             (cons _g2754827551_
                                                   _g2754927554_))
                                           '()
                                           _L27523_))))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2741627456_ _g2741727460_)))
                                      _body2745027519_
                                      _tl2744127490_
                                      _hd2744027487_
                                      _hd2743427467_))))))
                     (_loop2744527499_ _target2744227493_ '()))
                   (_g2741627456_ _g2741727460_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2741627456_ _g2741727460_))
                                             (_g2741627456_ _g2741727460_))))
                                     (_g2741627456_ _g2741727460_))))
                             (_g2741627456_ _g2741727460_))))
                     (_g2741627456_ _g2741727460_)))))
          (let ((_g2741427611_
                 (lambda (_g2741727561_)
                   (if (gx#stx-pair? _g2741727561_)
                       (let ((_e2742027564_ (gx#syntax-e _g2741727561_)))
                         (let ((_hd2742127568_ (##car _e2742027564_))
                               (_tl2742227571_ (##cdr _e2742027564_)))
                           (if (gx#stx-pair? _tl2742227571_)
                               (let ((_e2742327574_
                                      (gx#syntax-e _tl2742227571_)))
                                 (let ((_hd2742427578_ (##car _e2742327574_))
                                       (_tl2742527581_ (##cdr _e2742327574_)))
                                   (if (gx#stx-pair? _tl2742527581_)
                                       (let ((_e2742627584_
                                              (gx#syntax-e _tl2742527581_)))
                                         (let ((_hd2742727588_
                                                (##car _e2742627584_))
                                               (_tl2742827591_
                                                (##cdr _e2742627584_)))
                                           (if (gx#stx-null? _tl2742827591_)
                                               ((lambda (_L27594_ _L27596_)
                                                  (if (gx#identifier? _L27596_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'defsyntax)
                                                            (cons _L27596_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax
                                       '#f
                                       'make-import-expander)
                                      (cons _L27594_ '()))
                                '())))
              (_g2741527557_ _g2741727561_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd2742727588_
                                                _hd2742427578_)
                                               (_g2741527557_ _g2741727561_))))
                                       (_g2741527557_ _g2741727561_))))
                               (_g2741527557_ _g2741727561_))))
                       (_g2741527557_ _g2741727561_)))))
            (_g2741427611_ _$stx27411_))))))
  (define |gerbil/core::<module-sugar>[:0:]#defsyntax-for-export|
    (lambda (_$stx27616_)
      (let ((_g2762127661_
             (lambda (_g2762227657_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2762227657_))))
        (let ((_g2762027762_
               (lambda (_g2762227665_)
                 (if (gx#stx-pair? _g2762227665_)
                     (let ((_e2763827668_ (gx#syntax-e _g2762227665_)))
                       (let ((_hd2763927672_ (##car _e2763827668_))
                             (_tl2764027675_ (##cdr _e2763827668_)))
                         (if (gx#stx-pair? _tl2764027675_)
                             (let ((_e2764127678_
                                    (gx#syntax-e _tl2764027675_)))
                               (let ((_hd2764227682_ (##car _e2764127678_))
                                     (_tl2764327685_ (##cdr _e2764127678_)))
                                 (if (gx#stx-pair? _hd2764227682_)
                                     (let ((_e2764427688_
                                            (gx#syntax-e _hd2764227682_)))
                                       (let ((_hd2764527692_
                                              (##car _e2764427688_))
                                             (_tl2764627695_
                                              (##cdr _e2764427688_)))
                                         (if (gx#stx-pair/null? _tl2764327685_)
                                             (if (fx>= (gx#stx-length
                                                        _tl2764327685_)
                                                       '0)
                                                 (let ((_g28673_
                                                        (gx#syntax-split-splice
                                                         _tl2764327685_
                                                         '0)))
                                                   (begin
                                                     (let ((_g28674_
                                                            (values-count
                                                             _g28673_)))
                                                       (if (not (fx= _g28674_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g28674_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2764727698_
                                                            (values-ref
                                                             _g28673_
                                                             0))
                                                           (_tl2764927701_
                                                            (values-ref
                                                             _g28673_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2764927701_)
                                                           (letrec ((_loop2765027704_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2764827708_ _body2765427711_)
                               (if (gx#stx-pair? _hd2764827708_)
                                   (let ((_e2765127714_
                                          (gx#syntax-e _hd2764827708_)))
                                     (let ((_lp-hd2765227718_
                                            (##car _e2765127714_))
                                           (_lp-tl2765327721_
                                            (##cdr _e2765127714_)))
                                       (_loop2765027704_
                                        _lp-tl2765327721_
                                        (cons _lp-hd2765227718_
                                              _body2765427711_))))
                                   (let ((_body2765527724_
                                          (reverse _body2765427711_)))
                                     ((lambda (_L27728_
                                               _L27730_
                                               _L27731_
                                               _L27732_)
                                        (if (gx#identifier? _L27731_)
                                            (cons _L27732_
                                                  (cons _L27731_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'lambda)
                            (cons _L27730_
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g2775327756_
                                                    _g2775427759_)
                                             (cons _g2775327756_
                                                   _g2775427759_))
                                           '()
                                           _L27728_))))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2762127661_ _g2762227665_)))
                                      _body2765527724_
                                      _tl2764627695_
                                      _hd2764527692_
                                      _hd2763927672_))))))
                     (_loop2765027704_ _target2764727698_ '()))
                   (_g2762127661_ _g2762227665_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2762127661_ _g2762227665_))
                                             (_g2762127661_ _g2762227665_))))
                                     (_g2762127661_ _g2762227665_))))
                             (_g2762127661_ _g2762227665_))))
                     (_g2762127661_ _g2762227665_)))))
          (let ((_g2761927816_
                 (lambda (_g2762227766_)
                   (if (gx#stx-pair? _g2762227766_)
                       (let ((_e2762527769_ (gx#syntax-e _g2762227766_)))
                         (let ((_hd2762627773_ (##car _e2762527769_))
                               (_tl2762727776_ (##cdr _e2762527769_)))
                           (if (gx#stx-pair? _tl2762727776_)
                               (let ((_e2762827779_
                                      (gx#syntax-e _tl2762727776_)))
                                 (let ((_hd2762927783_ (##car _e2762827779_))
                                       (_tl2763027786_ (##cdr _e2762827779_)))
                                   (if (gx#stx-pair? _tl2763027786_)
                                       (let ((_e2763127789_
                                              (gx#syntax-e _tl2763027786_)))
                                         (let ((_hd2763227793_
                                                (##car _e2763127789_))
                                               (_tl2763327796_
                                                (##cdr _e2763127789_)))
                                           (if (gx#stx-null? _tl2763327796_)
                                               ((lambda (_L27799_ _L27801_)
                                                  (if (gx#identifier? _L27801_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'defsyntax)
                                                            (cons _L27801_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax
                                       '#f
                                       'make-export-expander)
                                      (cons _L27799_ '()))
                                '())))
              (_g2762027762_ _g2762227766_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd2763227793_
                                                _hd2762927783_)
                                               (_g2762027762_ _g2762227766_))))
                                       (_g2762027762_ _g2762227766_))))
                               (_g2762027762_ _g2762227766_))))
                       (_g2762027762_ _g2762227766_)))))
            (_g2761927816_ _$stx27616_))))))
  (define |gerbil/core::<module-sugar>[:0:]#only-in|
    (gx#make-import-expander
     (lambda (_stx27821_)
       (let ((_g2782427848_
              (lambda (_g2782527844_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2782527844_))))
         (let ((_g2782327970_
                (lambda (_g2782527852_)
                  (if (gx#stx-pair? _g2782527852_)
                      (let ((_e2782827855_ (gx#syntax-e _g2782527852_)))
                        (let ((_hd2782927859_ (##car _e2782827855_))
                              (_tl2783027862_ (##cdr _e2782827855_)))
                          (if (gx#stx-pair? _tl2783027862_)
                              (let ((_e2783127865_
                                     (gx#syntax-e _tl2783027862_)))
                                (let ((_hd2783227869_ (##car _e2783127865_))
                                      (_tl2783327872_ (##cdr _e2783127865_)))
                                  (if (gx#stx-pair/null? _tl2783327872_)
                                      (if (fx>= (gx#stx-length _tl2783327872_)
                                                '0)
                                          (let ((_g28675_
                                                 (gx#syntax-split-splice
                                                  _tl2783327872_
                                                  '0)))
                                            (begin
                                              (let ((_g28676_
                                                     (values-count _g28675_)))
                                                (if (not (fx= _g28676_ 2))
                                                    (error "Context expects 2 values"
                                                           _g28676_)))
                                              (let ((_target2783427875_
                                                     (values-ref _g28675_ 0))
                                                    (_tl2783627878_
                                                     (values-ref _g28675_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2783627878_)
                                                    (letrec ((_loop2783727881_
                                                              (lambda (_hd2783527885_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _id2784127888_)
                        (if (gx#stx-pair? _hd2783527885_)
                            (let ((_e2783827891_ (gx#syntax-e _hd2783527885_)))
                              (let ((_lp-hd2783927895_ (##car _e2783827891_))
                                    (_lp-tl2784027898_ (##cdr _e2783827891_)))
                                (_loop2783727881_
                                 _lp-tl2784027898_
                                 (cons _lp-hd2783927895_ _id2784127888_))))
                            (let ((_id2784227901_ (reverse _id2784127888_)))
                              ((lambda (_L27905_ _L27907_)
                                 (if (gx#identifier-list?
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g2792427927_
                                                        _g2792527930_)
                                                 (cons _g2792427927_
                                                       _g2792527930_))
                                               '()
                                               _L27905_)))
                                     (let ((_keys27941_
                                            (gx#stx-map
                                             gx#core-identifier-key
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g2793227935_
                                                               _g2793327938_)
                                                        (cons _g2793227935_
                                                              _g2793327938_))
                                                      '()
                                                      _L27905_)))))
                                       (let ((_keytab27952_
                                              (let ((_ht27944_
                                                     (make-hash-table)))
                                                (begin
                                                  (for-each
                                                   (lambda (_g2794627948_)
                                                     (hash-put!
                                                      _ht27944_
                                                      _g2794627948_
                                                      '#t))
                                                   _keys27941_)
                                                  _ht27944_))))
                                         (let ((_imports27955_
                                                (gx#core-expand-import-source
                                                 _L27907_)))
                                           (let ((_fold-e27965_
                                                  (letrec ((_fold-e27958_
                                                            (lambda (_in27961_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _r27963_)
                      (if (gx#module-import? _in27961_)
                          (if (hash-get
                               _keytab27952_
                               (gx#module-import-name _in27961_))
                              (cons _in27961_ _r27963_)
                              _r27963_)
                          (if (gx#import-set? _in27961_)
                              (foldl _fold-e27958_
                                     _r27963_
                                     (gx#import-set-imports _in27961_))
                              _r27963_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _fold-e27958_)))
                                             (let ()
                                               (cons 'begin:
                                                     (foldl _fold-e27965_
                                                            '()
                                                            _imports27955_)))))))
                                     (_g2782427848_ _g2782527852_)))
                               _id2784227901_
                               _hd2783227869_))))))
              (_loop2783727881_ _target2783427875_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2782427848_
                                                     _g2782527852_)))))
                                          (_g2782427848_ _g2782527852_))
                                      (_g2782427848_ _g2782527852_))))
                              (_g2782427848_ _g2782527852_))))
                      (_g2782427848_ _g2782527852_)))))
           (_g2782327970_ _stx27821_))))))
  (define |gerbil/core::<module-sugar>[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_stx27975_)
       (let ((_g2797828002_
              (lambda (_g2797927998_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2797927998_))))
         (let ((_g2797728124_
                (lambda (_g2797928006_)
                  (if (gx#stx-pair? _g2797928006_)
                      (let ((_e2798228009_ (gx#syntax-e _g2797928006_)))
                        (let ((_hd2798328013_ (##car _e2798228009_))
                              (_tl2798428016_ (##cdr _e2798228009_)))
                          (if (gx#stx-pair? _tl2798428016_)
                              (let ((_e2798528019_
                                     (gx#syntax-e _tl2798428016_)))
                                (let ((_hd2798628023_ (##car _e2798528019_))
                                      (_tl2798728026_ (##cdr _e2798528019_)))
                                  (if (gx#stx-pair/null? _tl2798728026_)
                                      (if (fx>= (gx#stx-length _tl2798728026_)
                                                '0)
                                          (let ((_g28677_
                                                 (gx#syntax-split-splice
                                                  _tl2798728026_
                                                  '0)))
                                            (begin
                                              (let ((_g28678_
                                                     (values-count _g28677_)))
                                                (if (not (fx= _g28678_ 2))
                                                    (error "Context expects 2 values"
                                                           _g28678_)))
                                              (let ((_target2798828029_
                                                     (values-ref _g28677_ 0))
                                                    (_tl2799028032_
                                                     (values-ref _g28677_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2799028032_)
                                                    (letrec ((_loop2799128035_
                                                              (lambda (_hd2798928039_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _id2799528042_)
                        (if (gx#stx-pair? _hd2798928039_)
                            (let ((_e2799228045_ (gx#syntax-e _hd2798928039_)))
                              (let ((_lp-hd2799328049_ (##car _e2799228045_))
                                    (_lp-tl2799428052_ (##cdr _e2799228045_)))
                                (_loop2799128035_
                                 _lp-tl2799428052_
                                 (cons _lp-hd2799328049_ _id2799528042_))))
                            (let ((_id2799628055_ (reverse _id2799528042_)))
                              ((lambda (_L28059_ _L28061_)
                                 (if (gx#identifier-list?
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g2807828081_
                                                        _g2807928084_)
                                                 (cons _g2807828081_
                                                       _g2807928084_))
                                               '()
                                               _L28059_)))
                                     (let ((_keys28095_
                                            (gx#stx-map
                                             gx#core-identifier-key
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g2808628089_
                                                               _g2808728092_)
                                                        (cons _g2808628089_
                                                              _g2808728092_))
                                                      '()
                                                      _L28059_)))))
                                       (let ((_keytab28106_
                                              (let ((_ht28098_
                                                     (make-hash-table)))
                                                (begin
                                                  (for-each
                                                   (lambda (_g2810028102_)
                                                     (hash-put!
                                                      _ht28098_
                                                      _g2810028102_
                                                      '#t))
                                                   _keys28095_)
                                                  _ht28098_))))
                                         (let ((_exports28109_
                                                (gx#core-expand-export-source
                                                 _L28061_)))
                                           (let ((_fold-e28119_
                                                  (letrec ((_fold-e28112_
                                                            (lambda (_out28115_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _r28117_)
                      (if (gx#module-export? _out28115_)
                          (if (hash-get
                               _keytab28106_
                               (gx#module-export-name _out28115_))
                              _r28117_
                              (cons _out28115_ _r28117_))
                          (if (gx#export-set? _out28115_)
                              (foldl _fold-e28112_
                                     _r28117_
                                     (gx#export-set-exports _out28115_))
                              _r28117_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _fold-e28112_)))
                                             (let ()
                                               (cons 'begin:
                                                     (foldl _fold-e28119_
                                                            '()
                                                            _exports28109_)))))))
                                     (_g2797828002_ _g2797928006_)))
                               _id2799628055_
                               _hd2798628023_))))))
              (_loop2799128035_ _target2798828029_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2797828002_
                                                     _g2797928006_)))))
                                          (_g2797828002_ _g2797928006_))
                                      (_g2797828002_ _g2797928006_))))
                              (_g2797828002_ _g2797928006_))))
                      (_g2797828002_ _g2797928006_)))))
           (_g2797728124_ _stx27975_))))))
  (define |gerbil/core::<module-sugar>[:0:]#struct-out|
    (gx#make-export-expander
     (lambda (_stx28129_)
       (let ((_g2813228152_
              (lambda (_g2813328148_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2813328148_))))
         (let ((_g2813128387_
                (lambda (_g2813328156_)
                  (if (gx#stx-pair? _g2813328156_)
                      (let ((_e2813528159_ (gx#syntax-e _g2813328156_)))
                        (let ((_hd2813628163_ (##car _e2813528159_))
                              (_tl2813728166_ (##cdr _e2813528159_)))
                          (if (gx#stx-pair/null? _tl2813728166_)
                              (if (fx>= (gx#stx-length _tl2813728166_) '0)
                                  (let ((_g28679_
                                         (gx#syntax-split-splice
                                          _tl2813728166_
                                          '0)))
                                    (begin
                                      (let ((_g28680_ (values-count _g28679_)))
                                        (if (not (fx= _g28680_ 2))
                                            (error "Context expects 2 values"
                                                   _g28680_)))
                                      (let ((_target2813828169_
                                             (values-ref _g28679_ 0))
                                            (_tl2814028172_
                                             (values-ref _g28679_ 1)))
                                        (if (gx#stx-null? _tl2814028172_)
                                            (letrec ((_loop2814128175_
                                                      (lambda (_hd2813928179_
                                                               _id2814528182_)
                                                        (if (gx#stx-pair?
                                                             _hd2813928179_)
                                                            (let ((_e2814228185_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd2813928179_)))
                      (let ((_lp-hd2814328189_ (##car _e2814228185_))
                            (_lp-tl2814428192_ (##cdr _e2814228185_)))
                        (_loop2814128175_
                         _lp-tl2814428192_
                         (cons _lp-hd2814328189_ _id2814528182_))))
                    (let ((_id2814628195_ (reverse _id2814528182_)))
                      ((lambda (_L28199_)
                         ((letrec ((_lp28215_
                                    (lambda (_rest28218_ _ids28220_)
                                      (let ((_g2822328235_
                                             (lambda (_g2822428231_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2822428231_))))
                                        (let ((_g2822228246_
                                               (lambda (_g2822428239_)
                                                 ((lambda ()
                                                    (cons 'begin:
                                                          _ids28220_))))))
                                          (let ((_g2822128375_
                                                 (lambda (_g2822428250_)
                                                   (if (gx#stx-pair?
                                                        _g2822428250_)
                                                       (let ((_e2822728253_
                                                              (gx#syntax-e
                                                               _g2822428250_)))
                                                         (let ((_hd2822828257_
                                                                (##car _e2822728253_))
                                                               (_tl2822928260_
                                                                (##cdr _e2822728253_)))
                                                           ((lambda (_L28263_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L28265_)
                      (let ((_info28280_
                             (gx#syntax-local-value _L28265_ false)))
                        (if (|gerbil/core::<MOP>::<MOP:2>[1]#expander-type-info?|
                             _info28280_)
                            (let ((_g2828228299_
                                   (slot-ref
                                    _info28280_
                                    'expander-identifiers)))
                              (let ((_E2828428305_
                                     (lambda ()
                                       (error '"No clause matching"
                                              _g2828228299_))))
                                (let ((_K2828528317_
                                       (lambda (_setf28309_
                                                _getf28311_
                                                _type?28312_
                                                _make-type28313_
                                                _type::t28314_
                                                _super28315_)
                                         (_lp28215_
                                          _L28263_
                                          (cons _L28265_
                                                (cons _type::t28314_
                                                      (cons _make-type28313_
                                                            (cons _type?28312_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (foldr cons
                                 (foldr cons _ids28220_ _setf28309_)
                                 _getf28311_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (##pair? _g2828228299_)
                                      (let ((_hd2828628321_
                                             (##car _g2828228299_))
                                            (_tl2828728324_
                                             (##cdr _g2828228299_)))
                                        (let ((_super28327_ _hd2828628321_))
                                          (if (##pair? _tl2828728324_)
                                              (let ((_hd2828828330_
                                                     (##car _tl2828728324_))
                                                    (_tl2828928333_
                                                     (##cdr _tl2828728324_)))
                                                (let ((_type::t28336_
                                                       _hd2828828330_))
                                                  (if (##pair? _tl2828928333_)
                                                      (let ((_hd2829028339_
                                                             (##car _tl2828928333_))
                                                            (_tl2829128342_
                                                             (##cdr _tl2828928333_)))
                                                        (let ((_make-type28345_
                                                               _hd2829028339_))
                                                          (if (##pair? _tl2829128342_)
                                                              (let ((_hd2829228348_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##car _tl2829128342_))
                            (_tl2829328351_ (##cdr _tl2829128342_)))
                        (let ((_type?28354_ _hd2829228348_))
                          (if (##pair? _tl2829328351_)
                              (let ((_hd2829428357_ (##car _tl2829328351_))
                                    (_tl2829528360_ (##cdr _tl2829328351_)))
                                (let ((_getf28363_ _hd2829428357_))
                                  (if (##pair? _tl2829528360_)
                                      (let ((_hd2829628366_
                                             (##car _tl2829528360_))
                                            (_tl2829728369_
                                             (##cdr _tl2829528360_)))
                                        (let ((_setf28372_ _hd2829628366_))
                                          (if (##null? _tl2829728369_)
                                              (_K2828528317_
                                               _setf28372_
                                               _getf28363_
                                               _type?28354_
                                               _make-type28345_
                                               _type::t28336_
                                               _super28327_)
                                              (_E2828428305_))))
                                      (_E2828428305_))))
                              (_E2828428305_))))
                      (_E2828428305_))))
              (_E2828428305_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E2828428305_))))
                                      (_E2828428305_)))))
                            (gx#raise-syntax-error
                             '#f
                             '"Incomplete type info"
                             _stx28129_
                             _L28265_))))
                    _tl2822928260_
                    _hd2822828257_)))
               (_g2822228246_ _g2822428250_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2822128375_ _rest28218_)))))))
                            _lp28215_)
                          (begin
                            '#!void
                            (foldr (lambda (_g2837828381_ _g2837928384_)
                                     (cons _g2837828381_ _g2837928384_))
                                   '()
                                   _L28199_))
                          '()))
                       _id2814628195_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop2814128175_
                                               _target2813828169_
                                               '()))
                                            (_g2813228152_ _g2813328156_)))))
                                  (_g2813228152_ _g2813328156_))
                              (_g2813228152_ _g2813328156_))))
                      (_g2813228152_ _g2813328156_)))))
           (_g2813128387_ _stx28129_)))))))
