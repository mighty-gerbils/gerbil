(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<module-sugar>[:0:]#require|
    (lambda (_$stx27402_)
      (let ((_g2740727426_
             (lambda (_g2740827422_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2740827422_))))
        (let ((_g2740627472_
               (lambda (_g2740827430_)
                 (if (gx#stx-pair? _g2740827430_)
                     (let ((_e2741527433_ (gx#syntax-e _g2740827430_)))
                       (let ((_hd2741627437_ (##car _e2741527433_))
                             (_tl2741727440_ (##cdr _e2741527433_)))
                         (if (gx#stx-pair? _tl2741727440_)
                             (let ((_e2741827443_
                                    (gx#syntax-e _tl2741727440_)))
                               (let ((_hd2741927447_ (##car _e2741827443_))
                                     (_tl2742027450_ (##cdr _e2741827443_)))
                                 ((lambda (_L27453_ _L27455_ _L27456_)
                                    (cons (gx#datum->syntax '#f 'cond-expand)
                                          (cons (cons _L27455_
                                                      (cons (cons _L27456_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L27453_)
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
                                      (cons _L27455_ '())))
                          '()))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _tl2742027450_
                                  _hd2741927447_
                                  _hd2741627437_)))
                             (_g2740727426_ _g2740827430_))))
                     (_g2740727426_ _g2740827430_)))))
          (let ((_g2740527493_
                 (lambda (_g2740827476_)
                   (if (gx#stx-pair? _g2740827476_)
                       (let ((_e2740927479_ (gx#syntax-e _g2740827476_)))
                         (let ((_hd2741027483_ (##car _e2740927479_))
                               (_tl2741127486_ (##cdr _e2740927479_)))
                           (if (gx#stx-null? _tl2741127486_)
                               ((lambda ()
                                  (cons (gx#datum->syntax '#f 'begin) '())))
                               (_g2740627472_ _g2740827476_))))
                       (_g2740627472_ _g2740827476_)))))
            (_g2740527493_ _$stx27402_))))))
  (define |gerbil/core::<module-sugar>[:0:]#defsyntax-for-import|
    (lambda (_$stx27497_)
      (let ((_g2750227542_
             (lambda (_g2750327538_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2750327538_))))
        (let ((_g2750127643_
               (lambda (_g2750327546_)
                 (if (gx#stx-pair? _g2750327546_)
                     (let ((_e2751927549_ (gx#syntax-e _g2750327546_)))
                       (let ((_hd2752027553_ (##car _e2751927549_))
                             (_tl2752127556_ (##cdr _e2751927549_)))
                         (if (gx#stx-pair? _tl2752127556_)
                             (let ((_e2752227559_
                                    (gx#syntax-e _tl2752127556_)))
                               (let ((_hd2752327563_ (##car _e2752227559_))
                                     (_tl2752427566_ (##cdr _e2752227559_)))
                                 (if (gx#stx-pair? _hd2752327563_)
                                     (let ((_e2752527569_
                                            (gx#syntax-e _hd2752327563_)))
                                       (let ((_hd2752627573_
                                              (##car _e2752527569_))
                                             (_tl2752727576_
                                              (##cdr _e2752527569_)))
                                         (if (gx#stx-pair/null? _tl2752427566_)
                                             (if (fx>= (gx#stx-length
                                                        _tl2752427566_)
                                                       '0)
                                                 (let ((_g29630_
                                                        (gx#syntax-split-splice
                                                         _tl2752427566_
                                                         '0)))
                                                   (begin
                                                     (let ((_g29631_
                                                            (values-count
                                                             _g29630_)))
                                                       (if (not (fx= _g29631_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g29631_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2752827579_
                                                            (values-ref
                                                             _g29630_
                                                             0))
                                                           (_tl2753027582_
                                                            (values-ref
                                                             _g29630_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2753027582_)
                                                           (letrec ((_loop2753127585_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2752927589_ _body2753527592_)
                               (if (gx#stx-pair? _hd2752927589_)
                                   (let ((_e2753227595_
                                          (gx#syntax-e _hd2752927589_)))
                                     (let ((_lp-hd2753327599_
                                            (##car _e2753227595_))
                                           (_lp-tl2753427602_
                                            (##cdr _e2753227595_)))
                                       (_loop2753127585_
                                        _lp-tl2753427602_
                                        (cons _lp-hd2753327599_
                                              _body2753527592_))))
                                   (let ((_body2753627605_
                                          (reverse _body2753527592_)))
                                     ((lambda (_L27609_
                                               _L27611_
                                               _L27612_
                                               _L27613_)
                                        (if (gx#identifier? _L27612_)
                                            (cons _L27613_
                                                  (cons _L27612_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'lambda)
                            (cons _L27611_
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g2763427637_
                                                    _g2763527640_)
                                             (cons _g2763427637_
                                                   _g2763527640_))
                                           '()
                                           _L27609_))))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2750227542_ _g2750327546_)))
                                      _body2753627605_
                                      _tl2752727576_
                                      _hd2752627573_
                                      _hd2752027553_))))))
                     (_loop2753127585_ _target2752827579_ '()))
                   (_g2750227542_ _g2750327546_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2750227542_ _g2750327546_))
                                             (_g2750227542_ _g2750327546_))))
                                     (_g2750227542_ _g2750327546_))))
                             (_g2750227542_ _g2750327546_))))
                     (_g2750227542_ _g2750327546_)))))
          (let ((_g2750027697_
                 (lambda (_g2750327647_)
                   (if (gx#stx-pair? _g2750327647_)
                       (let ((_e2750627650_ (gx#syntax-e _g2750327647_)))
                         (let ((_hd2750727654_ (##car _e2750627650_))
                               (_tl2750827657_ (##cdr _e2750627650_)))
                           (if (gx#stx-pair? _tl2750827657_)
                               (let ((_e2750927660_
                                      (gx#syntax-e _tl2750827657_)))
                                 (let ((_hd2751027664_ (##car _e2750927660_))
                                       (_tl2751127667_ (##cdr _e2750927660_)))
                                   (if (gx#stx-pair? _tl2751127667_)
                                       (let ((_e2751227670_
                                              (gx#syntax-e _tl2751127667_)))
                                         (let ((_hd2751327674_
                                                (##car _e2751227670_))
                                               (_tl2751427677_
                                                (##cdr _e2751227670_)))
                                           (if (gx#stx-null? _tl2751427677_)
                                               ((lambda (_L27680_ _L27682_)
                                                  (if (gx#identifier? _L27682_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'defsyntax)
                                                            (cons _L27682_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax
                                       '#f
                                       'make-import-expander)
                                      (cons _L27680_ '()))
                                '())))
              (_g2750127643_ _g2750327647_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd2751327674_
                                                _hd2751027664_)
                                               (_g2750127643_ _g2750327647_))))
                                       (_g2750127643_ _g2750327647_))))
                               (_g2750127643_ _g2750327647_))))
                       (_g2750127643_ _g2750327647_)))))
            (_g2750027697_ _$stx27497_))))))
  (define |gerbil/core::<module-sugar>[:0:]#defsyntax-for-export|
    (lambda (_$stx27702_)
      (let ((_g2770727747_
             (lambda (_g2770827743_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2770827743_))))
        (let ((_g2770627848_
               (lambda (_g2770827751_)
                 (if (gx#stx-pair? _g2770827751_)
                     (let ((_e2772427754_ (gx#syntax-e _g2770827751_)))
                       (let ((_hd2772527758_ (##car _e2772427754_))
                             (_tl2772627761_ (##cdr _e2772427754_)))
                         (if (gx#stx-pair? _tl2772627761_)
                             (let ((_e2772727764_
                                    (gx#syntax-e _tl2772627761_)))
                               (let ((_hd2772827768_ (##car _e2772727764_))
                                     (_tl2772927771_ (##cdr _e2772727764_)))
                                 (if (gx#stx-pair? _hd2772827768_)
                                     (let ((_e2773027774_
                                            (gx#syntax-e _hd2772827768_)))
                                       (let ((_hd2773127778_
                                              (##car _e2773027774_))
                                             (_tl2773227781_
                                              (##cdr _e2773027774_)))
                                         (if (gx#stx-pair/null? _tl2772927771_)
                                             (if (fx>= (gx#stx-length
                                                        _tl2772927771_)
                                                       '0)
                                                 (let ((_g29632_
                                                        (gx#syntax-split-splice
                                                         _tl2772927771_
                                                         '0)))
                                                   (begin
                                                     (let ((_g29633_
                                                            (values-count
                                                             _g29632_)))
                                                       (if (not (fx= _g29633_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g29633_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2773327784_
                                                            (values-ref
                                                             _g29632_
                                                             0))
                                                           (_tl2773527787_
                                                            (values-ref
                                                             _g29632_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2773527787_)
                                                           (letrec ((_loop2773627790_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2773427794_ _body2774027797_)
                               (if (gx#stx-pair? _hd2773427794_)
                                   (let ((_e2773727800_
                                          (gx#syntax-e _hd2773427794_)))
                                     (let ((_lp-hd2773827804_
                                            (##car _e2773727800_))
                                           (_lp-tl2773927807_
                                            (##cdr _e2773727800_)))
                                       (_loop2773627790_
                                        _lp-tl2773927807_
                                        (cons _lp-hd2773827804_
                                              _body2774027797_))))
                                   (let ((_body2774127810_
                                          (reverse _body2774027797_)))
                                     ((lambda (_L27814_
                                               _L27816_
                                               _L27817_
                                               _L27818_)
                                        (if (gx#identifier? _L27817_)
                                            (cons _L27818_
                                                  (cons _L27817_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'lambda)
                            (cons _L27816_
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g2783927842_
                                                    _g2784027845_)
                                             (cons _g2783927842_
                                                   _g2784027845_))
                                           '()
                                           _L27814_))))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2770727747_ _g2770827751_)))
                                      _body2774127810_
                                      _tl2773227781_
                                      _hd2773127778_
                                      _hd2772527758_))))))
                     (_loop2773627790_ _target2773327784_ '()))
                   (_g2770727747_ _g2770827751_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2770727747_ _g2770827751_))
                                             (_g2770727747_ _g2770827751_))))
                                     (_g2770727747_ _g2770827751_))))
                             (_g2770727747_ _g2770827751_))))
                     (_g2770727747_ _g2770827751_)))))
          (let ((_g2770527902_
                 (lambda (_g2770827852_)
                   (if (gx#stx-pair? _g2770827852_)
                       (let ((_e2771127855_ (gx#syntax-e _g2770827852_)))
                         (let ((_hd2771227859_ (##car _e2771127855_))
                               (_tl2771327862_ (##cdr _e2771127855_)))
                           (if (gx#stx-pair? _tl2771327862_)
                               (let ((_e2771427865_
                                      (gx#syntax-e _tl2771327862_)))
                                 (let ((_hd2771527869_ (##car _e2771427865_))
                                       (_tl2771627872_ (##cdr _e2771427865_)))
                                   (if (gx#stx-pair? _tl2771627872_)
                                       (let ((_e2771727875_
                                              (gx#syntax-e _tl2771627872_)))
                                         (let ((_hd2771827879_
                                                (##car _e2771727875_))
                                               (_tl2771927882_
                                                (##cdr _e2771727875_)))
                                           (if (gx#stx-null? _tl2771927882_)
                                               ((lambda (_L27885_ _L27887_)
                                                  (if (gx#identifier? _L27887_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'defsyntax)
                                                            (cons _L27887_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax
                                       '#f
                                       'make-export-expander)
                                      (cons _L27885_ '()))
                                '())))
              (_g2770627848_ _g2770827852_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd2771827879_
                                                _hd2771527869_)
                                               (_g2770627848_ _g2770827852_))))
                                       (_g2770627848_ _g2770827852_))))
                               (_g2770627848_ _g2770827852_))))
                       (_g2770627848_ _g2770827852_)))))
            (_g2770527902_ _$stx27702_))))))
  (define |gerbil/core::<module-sugar>[:0:]#only-in|
    (gx#make-import-expander
     (lambda (_stx27907_)
       (let ((_g2791027934_
              (lambda (_g2791127930_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2791127930_))))
         (let ((_g2790928056_
                (lambda (_g2791127938_)
                  (if (gx#stx-pair? _g2791127938_)
                      (let ((_e2791427941_ (gx#syntax-e _g2791127938_)))
                        (let ((_hd2791527945_ (##car _e2791427941_))
                              (_tl2791627948_ (##cdr _e2791427941_)))
                          (if (gx#stx-pair? _tl2791627948_)
                              (let ((_e2791727951_
                                     (gx#syntax-e _tl2791627948_)))
                                (let ((_hd2791827955_ (##car _e2791727951_))
                                      (_tl2791927958_ (##cdr _e2791727951_)))
                                  (if (gx#stx-pair/null? _tl2791927958_)
                                      (if (fx>= (gx#stx-length _tl2791927958_)
                                                '0)
                                          (let ((_g29634_
                                                 (gx#syntax-split-splice
                                                  _tl2791927958_
                                                  '0)))
                                            (begin
                                              (let ((_g29635_
                                                     (values-count _g29634_)))
                                                (if (not (fx= _g29635_ 2))
                                                    (error "Context expects 2 values"
                                                           _g29635_)))
                                              (let ((_target2792027961_
                                                     (values-ref _g29634_ 0))
                                                    (_tl2792227964_
                                                     (values-ref _g29634_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2792227964_)
                                                    (letrec ((_loop2792327967_
                                                              (lambda (_hd2792127971_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _id2792727974_)
                        (if (gx#stx-pair? _hd2792127971_)
                            (let ((_e2792427977_ (gx#syntax-e _hd2792127971_)))
                              (let ((_lp-hd2792527981_ (##car _e2792427977_))
                                    (_lp-tl2792627984_ (##cdr _e2792427977_)))
                                (_loop2792327967_
                                 _lp-tl2792627984_
                                 (cons _lp-hd2792527981_ _id2792727974_))))
                            (let ((_id2792827987_ (reverse _id2792727974_)))
                              ((lambda (_L27991_ _L27993_)
                                 (if (gx#identifier-list?
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g2801028013_
                                                        _g2801128016_)
                                                 (cons _g2801028013_
                                                       _g2801128016_))
                                               '()
                                               _L27991_)))
                                     (let ((_keys28027_
                                            (gx#stx-map
                                             gx#core-identifier-key
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g2801828021_
                                                               _g2801928024_)
                                                        (cons _g2801828021_
                                                              _g2801928024_))
                                                      '()
                                                      _L27991_)))))
                                       (let ((_keytab28038_
                                              (let ((_ht28030_
                                                     (make-hash-table)))
                                                (begin
                                                  (for-each
                                                   (lambda (_g2803228034_)
                                                     (hash-put!
                                                      _ht28030_
                                                      _g2803228034_
                                                      '#t))
                                                   _keys28027_)
                                                  _ht28030_))))
                                         (let ((_imports28041_
                                                (gx#core-expand-import-source
                                                 _L27993_)))
                                           (let ((_fold-e28051_
                                                  (letrec ((_fold-e28044_
                                                            (lambda (_in28047_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _r28049_)
                      (if (gx#module-import? _in28047_)
                          (if (hash-get
                               _keytab28038_
                               (gx#module-import-name _in28047_))
                              (cons _in28047_ _r28049_)
                              _r28049_)
                          (if (gx#import-set? _in28047_)
                              (foldl _fold-e28044_
                                     _r28049_
                                     (gx#import-set-imports _in28047_))
                              _r28049_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _fold-e28044_)))
                                             (let ()
                                               (cons 'begin:
                                                     (foldl _fold-e28051_
                                                            '()
                                                            _imports28041_)))))))
                                     (_g2791027934_ _g2791127938_)))
                               _id2792827987_
                               _hd2791827955_))))))
              (_loop2792327967_ _target2792027961_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2791027934_
                                                     _g2791127938_)))))
                                          (_g2791027934_ _g2791127938_))
                                      (_g2791027934_ _g2791127938_))))
                              (_g2791027934_ _g2791127938_))))
                      (_g2791027934_ _g2791127938_)))))
           (_g2790928056_ _stx27907_))))))
  (define |gerbil/core::<module-sugar>[:0:]#except-in|
    (gx#make-import-expander
     (lambda (_stx28061_)
       (let ((_g2806428088_
              (lambda (_g2806528084_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2806528084_))))
         (let ((_g2806328210_
                (lambda (_g2806528092_)
                  (if (gx#stx-pair? _g2806528092_)
                      (let ((_e2806828095_ (gx#syntax-e _g2806528092_)))
                        (let ((_hd2806928099_ (##car _e2806828095_))
                              (_tl2807028102_ (##cdr _e2806828095_)))
                          (if (gx#stx-pair? _tl2807028102_)
                              (let ((_e2807128105_
                                     (gx#syntax-e _tl2807028102_)))
                                (let ((_hd2807228109_ (##car _e2807128105_))
                                      (_tl2807328112_ (##cdr _e2807128105_)))
                                  (if (gx#stx-pair/null? _tl2807328112_)
                                      (if (fx>= (gx#stx-length _tl2807328112_)
                                                '0)
                                          (let ((_g29636_
                                                 (gx#syntax-split-splice
                                                  _tl2807328112_
                                                  '0)))
                                            (begin
                                              (let ((_g29637_
                                                     (values-count _g29636_)))
                                                (if (not (fx= _g29637_ 2))
                                                    (error "Context expects 2 values"
                                                           _g29637_)))
                                              (let ((_target2807428115_
                                                     (values-ref _g29636_ 0))
                                                    (_tl2807628118_
                                                     (values-ref _g29636_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2807628118_)
                                                    (letrec ((_loop2807728121_
                                                              (lambda (_hd2807528125_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _id2808128128_)
                        (if (gx#stx-pair? _hd2807528125_)
                            (let ((_e2807828131_ (gx#syntax-e _hd2807528125_)))
                              (let ((_lp-hd2807928135_ (##car _e2807828131_))
                                    (_lp-tl2808028138_ (##cdr _e2807828131_)))
                                (_loop2807728121_
                                 _lp-tl2808028138_
                                 (cons _lp-hd2807928135_ _id2808128128_))))
                            (let ((_id2808228141_ (reverse _id2808128128_)))
                              ((lambda (_L28145_ _L28147_)
                                 (if (gx#identifier-list?
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g2816428167_
                                                        _g2816528170_)
                                                 (cons _g2816428167_
                                                       _g2816528170_))
                                               '()
                                               _L28145_)))
                                     (let ((_keys28181_
                                            (gx#stx-map
                                             gx#core-identifier-key
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g2817228175_
                                                               _g2817328178_)
                                                        (cons _g2817228175_
                                                              _g2817328178_))
                                                      '()
                                                      _L28145_)))))
                                       (let ((_keytab28192_
                                              (let ((_ht28184_
                                                     (make-hash-table)))
                                                (begin
                                                  (for-each
                                                   (lambda (_g2818628188_)
                                                     (hash-put!
                                                      _ht28184_
                                                      _g2818628188_
                                                      '#t))
                                                   _keys28181_)
                                                  _ht28184_))))
                                         (let ((_imports28195_
                                                (gx#core-expand-import-source
                                                 _L28147_)))
                                           (let ((_fold-e28205_
                                                  (letrec ((_fold-e28198_
                                                            (lambda (_in28201_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _r28203_)
                      (if (gx#module-import? _in28201_)
                          (if (hash-get
                               _keytab28192_
                               (gx#module-import-name _in28201_))
                              _r28203_
                              (cons _in28201_ _r28203_))
                          (if (gx#import-set? _in28201_)
                              (foldl _fold-e28198_
                                     _r28203_
                                     (gx#import-set-imports _in28201_))
                              (cons _in28201_ _r28203_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _fold-e28198_)))
                                             (let ()
                                               (cons 'begin:
                                                     (foldl _fold-e28205_
                                                            '()
                                                            _imports28195_)))))))
                                     (_g2806428088_ _g2806528092_)))
                               _id2808228141_
                               _hd2807228109_))))))
              (_loop2807728121_ _target2807428115_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2806428088_
                                                     _g2806528092_)))))
                                          (_g2806428088_ _g2806528092_))
                                      (_g2806428088_ _g2806528092_))))
                              (_g2806428088_ _g2806528092_))))
                      (_g2806428088_ _g2806528092_)))))
           (_g2806328210_ _stx28061_))))))
  (define |gerbil/core::<module-sugar>[1]#module-import-rename|
    (lambda (_in28262_ _rename28264_)
      (gx#make-module-import
       (gx#module-import-source _in28262_)
       _rename28264_
       (gx#module-import-phi _in28262_)
       (gx#module-import-weak? _in28262_))))
  (define |gerbil/core::<module-sugar>[1]#prefix-identifier-key|
    (lambda (_name28215_ _pre28217_)
      (let ((_name2821828226_ _name28215_))
        (let ((_E2822128232_
               (lambda () (error '"No clause matching" _name2821828226_))))
          (let ((_else2822028238_
                 (lambda () (make-symbol _pre28217_ _name28215_))))
            (let ((_K2822228246_
                   (lambda (_mark28242_ _id28244_)
                     (cons (make-symbol _pre28217_ _id28244_) _mark28242_))))
              (if (##pair? _name2821828226_)
                  (let ((_hd2822328250_ (##car _name2821828226_))
                        (_tl2822428253_ (##cdr _name2821828226_)))
                    (let ((_id28256_ _hd2822328250_))
                      (let ((_mark28259_ _tl2822428253_))
                        (_K2822228246_ _mark28259_ _id28256_))))
                  (_else2822028238_))))))))
  (define |gerbil/core::<module-sugar>[:0:]#rename-in|
    (gx#make-import-expander
     (lambda (_stx28266_)
       (let ((_g2826928302_
              (lambda (_g2827028298_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2827028298_))))
         (let ((_g2826828488_
                (lambda (_g2827028306_)
                  (if (gx#stx-pair? _g2827028306_)
                      (let ((_e2827428309_ (gx#syntax-e _g2827028306_)))
                        (let ((_hd2827528313_ (##car _e2827428309_))
                              (_tl2827628316_ (##cdr _e2827428309_)))
                          (if (gx#stx-pair? _tl2827628316_)
                              (let ((_e2827728319_
                                     (gx#syntax-e _tl2827628316_)))
                                (let ((_hd2827828323_ (##car _e2827728319_))
                                      (_tl2827928326_ (##cdr _e2827728319_)))
                                  (if (gx#stx-pair/null? _tl2827928326_)
                                      (if (fx>= (gx#stx-length _tl2827928326_)
                                                '0)
                                          (let ((_g29638_
                                                 (gx#syntax-split-splice
                                                  _tl2827928326_
                                                  '0)))
                                            (begin
                                              (let ((_g29639_
                                                     (values-count _g29638_)))
                                                (if (not (fx= _g29639_ 2))
                                                    (error "Context expects 2 values"
                                                           _g29639_)))
                                              (let ((_target2828028329_
                                                     (values-ref _g29638_ 0))
                                                    (_tl2828228332_
                                                     (values-ref _g29638_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2828228332_)
                                                    (letrec ((_loop2828328335_
                                                              (lambda (_hd2828128339_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _new-id2828728342_
                               _id2828828344_)
                        (if (gx#stx-pair? _hd2828128339_)
                            (let ((_e2828428347_ (gx#syntax-e _hd2828128339_)))
                              (let ((_lp-hd2828528351_ (##car _e2828428347_))
                                    (_lp-tl2828628354_ (##cdr _e2828428347_)))
                                (if (gx#stx-pair? _lp-hd2828528351_)
                                    (let ((_e2829128357_
                                           (gx#syntax-e _lp-hd2828528351_)))
                                      (let ((_hd2829228361_
                                             (##car _e2829128357_))
                                            (_tl2829328364_
                                             (##cdr _e2829128357_)))
                                        (if (gx#stx-pair? _tl2829328364_)
                                            (let ((_e2829428367_
                                                   (gx#syntax-e
                                                    _tl2829328364_)))
                                              (let ((_hd2829528371_
                                                     (##car _e2829428367_))
                                                    (_tl2829628374_
                                                     (##cdr _e2829428367_)))
                                                (if (gx#stx-null?
                                                     _tl2829628374_)
                                                    (_loop2828328335_
                                                     _lp-tl2828628354_
                                                     (cons _hd2829528371_
                                                           _new-id2828728342_)
                                                     (cons _hd2829228361_
                                                           _id2828828344_))
                                                    (_g2826928302_
                                                     _g2827028306_))))
                                            (_g2826928302_ _g2827028306_))))
                                    (_g2826928302_ _g2827028306_))))
                            (let ((_new-id2828928377_
                                   (reverse _new-id2828728342_))
                                  (_id2829028380_ (reverse _id2828828344_)))
                              ((lambda (_L28383_ _L28385_ _L28386_)
                                 (if (if (gx#identifier-list?
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2840428407_
                                                            _g2840528410_)
                                                     (cons _g2840428407_
                                                           _g2840528410_))
                                                   '()
                                                   _L28385_)))
                                         (gx#identifier-list?
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2841228415_
                                                            _g2841328418_)
                                                     (cons _g2841228415_
                                                           _g2841328418_))
                                                   '()
                                                   _L28383_)))
                                         '#f)
                                     (let ((_keytab28421_ (make-hash-table)))
                                       (let ((_found28424_ (make-hash-table)))
                                         (let ((_g29640_
                                                (for-each
                                                 (lambda (_id28427_
                                                          _new-id28429_)
                                                   (hash-put!
                                                    _keytab28421_
                                                    (gx#core-identifier-key
                                                     _id28427_)
                                                    (gx#core-identifier-key
                                                     _new-id28429_)))
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2843028433_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2843128436_)
                    (cons _g2843028433_ _g2843128436_))
                  '()
                  _L28385_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2843828441_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2843928444_)
                    (cons _g2843828441_ _g2843928444_))
                  '()
                  _L28383_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_imports28449_
                                                  (gx#core-expand-import-source
                                                   _L28386_)))
                                             (let ((_fold-e28469_
                                                    (letrec ((_fold-e28452_
                                                              (lambda (_in28455_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _r28457_)
                        (if (gx#module-import? _in28455_)
                            (let ((_name28459_
                                   (gx#module-import-name _in28455_)))
                              (let ((_$e28462_
                                     (hash-get _keytab28421_ _name28459_)))
                                (if _$e28462_
                                    ((lambda (_rename28466_)
                                       (begin
                                         (hash-put!
                                          _found28424_
                                          _name28459_
                                          '#t)
                                         (cons (|gerbil/core::<module-sugar>[1]#module-import-rename|
                                                _in28455_
                                                _rename28466_)
                                               _r28457_)))
                                     _$e28462_)
                                    (cons _in28455_ _r28457_))))
                            (if (gx#import-set? _in28455_)
                                (foldl _fold-e28452_
                                       _r28457_
                                       (gx#import-set-imports _in28455_))
                                (cons _in28455_ _r28457_))))))
              _fold-e28452_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_new-imports28472_
                                                      (foldl _fold-e28469_
                                                             '()
                                                             _imports28449_)))
                                                 (let ()
                                                   (begin
                                                     (for-each
                                                      (lambda (_id28477_)
                                                        (if (hash-get
                                                             _found28424_
                                                             (gx#core-identifier-key
                                                              _id28477_))
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; identifier is not in the import set"
                                                             _stx28266_
                                                             _id28477_)))
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g2847928482_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2848028485_)
                         (cons _g2847928482_ _g2848028485_))
                       '()
                       _L28385_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons 'begin:
                                                           _new-imports28472_)))))))))
                                     (_g2826928302_ _g2827028306_)))
                               _new-id2828928377_
                               _id2829028380_
                               _hd2827828323_))))))
              (_loop2828328335_ _target2828028329_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2826928302_
                                                     _g2827028306_)))))
                                          (_g2826928302_ _g2827028306_))
                                      (_g2826928302_ _g2827028306_))))
                              (_g2826928302_ _g2827028306_))))
                      (_g2826928302_ _g2827028306_)))))
           (_g2826828488_ _stx28266_))))))
  (define |gerbil/core::<module-sugar>[:0:]#prefix-in|
    (gx#make-import-expander
     (lambda (_stx28494_)
       (let ((_g2849728515_
              (lambda (_g2849828511_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2849828511_))))
         (let ((_g2849628594_
                (lambda (_g2849828519_)
                  (if (gx#stx-pair? _g2849828519_)
                      (let ((_e2850128522_ (gx#syntax-e _g2849828519_)))
                        (let ((_hd2850228526_ (##car _e2850128522_))
                              (_tl2850328529_ (##cdr _e2850128522_)))
                          (if (gx#stx-pair? _tl2850328529_)
                              (let ((_e2850428532_
                                     (gx#syntax-e _tl2850328529_)))
                                (let ((_hd2850528536_ (##car _e2850428532_))
                                      (_tl2850628539_ (##cdr _e2850428532_)))
                                  (if (gx#stx-pair? _tl2850628539_)
                                      (let ((_e2850728542_
                                             (gx#syntax-e _tl2850628539_)))
                                        (let ((_hd2850828546_
                                               (##car _e2850728542_))
                                              (_tl2850928549_
                                               (##cdr _e2850728542_)))
                                          (if (gx#stx-null? _tl2850928549_)
                                              ((lambda (_L28552_ _L28554_)
                                                 (if (gx#identifier? _L28552_)
                                                     (let ((_pre28570_
                                                            (gx#stx-e
                                                             _L28552_)))
                                                       (let ((_imports28573_
                                                              (gx#core-expand-import-source
                                                               _L28554_)))
                                                         (let ((_rename-e28579_
                                                                (lambda (_name28576_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (|gerbil/core::<module-sugar>[1]#prefix-identifier-key|
                           _name28576_
                           _pre28570_))))
                   (let ((_fold-e28589_
                          (letrec ((_fold-e28582_
                                    (lambda (_in28585_ _r28587_)
                                      (if (gx#module-import? _in28585_)
                                          (cons (|gerbil/core::<module-sugar>[1]#module-import-rename|
                                                 _in28585_
                                                 (_rename-e28579_
                                                  (gx#module-import-name
                                                   _in28585_)))
                                                _r28587_)
                                          (if (gx#import-set? _in28585_)
                                              (foldl _fold-e28582_
                                                     _r28587_
                                                     (gx#import-set-imports
                                                      _in28585_))
                                              (cons _in28585_ _r28587_))))))
                            _fold-e28582_)))
                     (let ()
                       (cons 'begin:
                             (foldl _fold-e28589_ '() _imports28573_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2849728515_
                                                      _g2849828519_)))
                                               _hd2850828546_
                                               _hd2850528536_)
                                              (_g2849728515_ _g2849828519_))))
                                      (_g2849728515_ _g2849828519_))))
                              (_g2849728515_ _g2849828519_))))
                      (_g2849728515_ _g2849828519_)))))
           (_g2849628594_ _stx28494_))))))
  (define |gerbil/core::<module-sugar>[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_stx28598_)
       (let ((_g2860128625_
              (lambda (_g2860228621_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2860228621_))))
         (let ((_g2860028747_
                (lambda (_g2860228629_)
                  (if (gx#stx-pair? _g2860228629_)
                      (let ((_e2860528632_ (gx#syntax-e _g2860228629_)))
                        (let ((_hd2860628636_ (##car _e2860528632_))
                              (_tl2860728639_ (##cdr _e2860528632_)))
                          (if (gx#stx-pair? _tl2860728639_)
                              (let ((_e2860828642_
                                     (gx#syntax-e _tl2860728639_)))
                                (let ((_hd2860928646_ (##car _e2860828642_))
                                      (_tl2861028649_ (##cdr _e2860828642_)))
                                  (if (gx#stx-pair/null? _tl2861028649_)
                                      (if (fx>= (gx#stx-length _tl2861028649_)
                                                '0)
                                          (let ((_g29641_
                                                 (gx#syntax-split-splice
                                                  _tl2861028649_
                                                  '0)))
                                            (begin
                                              (let ((_g29642_
                                                     (values-count _g29641_)))
                                                (if (not (fx= _g29642_ 2))
                                                    (error "Context expects 2 values"
                                                           _g29642_)))
                                              (let ((_target2861128652_
                                                     (values-ref _g29641_ 0))
                                                    (_tl2861328655_
                                                     (values-ref _g29641_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2861328655_)
                                                    (letrec ((_loop2861428658_
                                                              (lambda (_hd2861228662_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _id2861828665_)
                        (if (gx#stx-pair? _hd2861228662_)
                            (let ((_e2861528668_ (gx#syntax-e _hd2861228662_)))
                              (let ((_lp-hd2861628672_ (##car _e2861528668_))
                                    (_lp-tl2861728675_ (##cdr _e2861528668_)))
                                (_loop2861428658_
                                 _lp-tl2861728675_
                                 (cons _lp-hd2861628672_ _id2861828665_))))
                            (let ((_id2861928678_ (reverse _id2861828665_)))
                              ((lambda (_L28682_ _L28684_)
                                 (if (gx#identifier-list?
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g2870128704_
                                                        _g2870228707_)
                                                 (cons _g2870128704_
                                                       _g2870228707_))
                                               '()
                                               _L28682_)))
                                     (let ((_keys28718_
                                            (gx#stx-map
                                             gx#core-identifier-key
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g2870928712_
                                                               _g2871028715_)
                                                        (cons _g2870928712_
                                                              _g2871028715_))
                                                      '()
                                                      _L28682_)))))
                                       (let ((_keytab28729_
                                              (let ((_ht28721_
                                                     (make-hash-table)))
                                                (begin
                                                  (for-each
                                                   (lambda (_g2872328725_)
                                                     (hash-put!
                                                      _ht28721_
                                                      _g2872328725_
                                                      '#t))
                                                   _keys28718_)
                                                  _ht28721_))))
                                         (let ((_exports28732_
                                                (gx#core-expand-export-source
                                                 _L28684_)))
                                           (let ((_fold-e28742_
                                                  (letrec ((_fold-e28735_
                                                            (lambda (_out28738_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _r28740_)
                      (if (gx#module-export? _out28738_)
                          (if (hash-get
                               _keytab28729_
                               (gx#module-export-name _out28738_))
                              _r28740_
                              (cons _out28738_ _r28740_))
                          (if (gx#export-set? _out28738_)
                              (foldl _fold-e28735_
                                     _r28740_
                                     (gx#export-set-exports _out28738_))
                              _r28740_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _fold-e28735_)))
                                             (let ()
                                               (cons 'begin:
                                                     (foldl _fold-e28742_
                                                            '()
                                                            _exports28732_)))))))
                                     (_g2860128625_ _g2860228629_)))
                               _id2861928678_
                               _hd2860928646_))))))
              (_loop2861428658_ _target2861128652_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2860128625_
                                                     _g2860228629_)))))
                                          (_g2860128625_ _g2860228629_))
                                      (_g2860128625_ _g2860228629_))))
                              (_g2860128625_ _g2860228629_))))
                      (_g2860128625_ _g2860228629_)))))
           (_g2860028747_ _stx28598_))))))
  (define |gerbil/core::<module-sugar>[1]#module-export-rename|
    (lambda (_out28752_ _rename28754_)
      (gx#make-module-export
       (gx#module-export-context _out28752_)
       (gx#module-export-key _out28752_)
       (gx#module-export-phi _out28752_)
       _rename28754_
       (gx#module-export-weak? _out28752_))))
  (define |gerbil/core::<module-sugar>[:0:]#rename-out|
    (gx#make-export-expander
     (lambda (_stx28756_)
       (let ((_g2875928792_
              (lambda (_g2876028788_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2876028788_))))
         (let ((_g2875828978_
                (lambda (_g2876028796_)
                  (if (gx#stx-pair? _g2876028796_)
                      (let ((_e2876428799_ (gx#syntax-e _g2876028796_)))
                        (let ((_hd2876528803_ (##car _e2876428799_))
                              (_tl2876628806_ (##cdr _e2876428799_)))
                          (if (gx#stx-pair? _tl2876628806_)
                              (let ((_e2876728809_
                                     (gx#syntax-e _tl2876628806_)))
                                (let ((_hd2876828813_ (##car _e2876728809_))
                                      (_tl2876928816_ (##cdr _e2876728809_)))
                                  (if (gx#stx-pair/null? _tl2876928816_)
                                      (if (fx>= (gx#stx-length _tl2876928816_)
                                                '0)
                                          (let ((_g29643_
                                                 (gx#syntax-split-splice
                                                  _tl2876928816_
                                                  '0)))
                                            (begin
                                              (let ((_g29644_
                                                     (values-count _g29643_)))
                                                (if (not (fx= _g29644_ 2))
                                                    (error "Context expects 2 values"
                                                           _g29644_)))
                                              (let ((_target2877028819_
                                                     (values-ref _g29643_ 0))
                                                    (_tl2877228822_
                                                     (values-ref _g29643_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2877228822_)
                                                    (letrec ((_loop2877328825_
                                                              (lambda (_hd2877128829_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _new-id2877728832_
                               _id2877828834_)
                        (if (gx#stx-pair? _hd2877128829_)
                            (let ((_e2877428837_ (gx#syntax-e _hd2877128829_)))
                              (let ((_lp-hd2877528841_ (##car _e2877428837_))
                                    (_lp-tl2877628844_ (##cdr _e2877428837_)))
                                (if (gx#stx-pair? _lp-hd2877528841_)
                                    (let ((_e2878128847_
                                           (gx#syntax-e _lp-hd2877528841_)))
                                      (let ((_hd2878228851_
                                             (##car _e2878128847_))
                                            (_tl2878328854_
                                             (##cdr _e2878128847_)))
                                        (if (gx#stx-pair? _tl2878328854_)
                                            (let ((_e2878428857_
                                                   (gx#syntax-e
                                                    _tl2878328854_)))
                                              (let ((_hd2878528861_
                                                     (##car _e2878428857_))
                                                    (_tl2878628864_
                                                     (##cdr _e2878428857_)))
                                                (if (gx#stx-null?
                                                     _tl2878628864_)
                                                    (_loop2877328825_
                                                     _lp-tl2877628844_
                                                     (cons _hd2878528861_
                                                           _new-id2877728832_)
                                                     (cons _hd2878228851_
                                                           _id2877828834_))
                                                    (_g2875928792_
                                                     _g2876028796_))))
                                            (_g2875928792_ _g2876028796_))))
                                    (_g2875928792_ _g2876028796_))))
                            (let ((_new-id2877928867_
                                   (reverse _new-id2877728832_))
                                  (_id2878028870_ (reverse _id2877828834_)))
                              ((lambda (_L28873_ _L28875_ _L28876_)
                                 (if (if (gx#identifier-list?
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2889428897_
                                                            _g2889528900_)
                                                     (cons _g2889428897_
                                                           _g2889528900_))
                                                   '()
                                                   _L28875_)))
                                         (gx#identifier-list?
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2890228905_
                                                            _g2890328908_)
                                                     (cons _g2890228905_
                                                           _g2890328908_))
                                                   '()
                                                   _L28873_)))
                                         '#f)
                                     (let ((_keytab28911_ (make-hash-table)))
                                       (let ((_found28914_ (make-hash-table)))
                                         (let ((_g29645_
                                                (for-each
                                                 (lambda (_id28917_
                                                          _new-id28919_)
                                                   (hash-put!
                                                    _keytab28911_
                                                    (gx#core-identifier-key
                                                     _id28917_)
                                                    (gx#core-identifier-key
                                                     _new-id28919_)))
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2892028923_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2892128926_)
                    (cons _g2892028923_ _g2892128926_))
                  '()
                  _L28875_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2892828931_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2892928934_)
                    (cons _g2892828931_ _g2892928934_))
                  '()
                  _L28873_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_exports28939_
                                                  (gx#core-expand-export-source
                                                   _L28876_)))
                                             (let ((_fold-e28959_
                                                    (letrec ((_fold-e28942_
                                                              (lambda (_out28945_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _r28947_)
                        (if (gx#module-export? _out28945_)
                            (let ((_name28949_
                                   (gx#module-export-name _out28945_)))
                              (let ((_$e28952_
                                     (hash-get _keytab28911_ _name28949_)))
                                (if _$e28952_
                                    ((lambda (_rename28956_)
                                       (begin
                                         (hash-put!
                                          _found28914_
                                          _name28949_
                                          '#t)
                                         (cons (|gerbil/core::<module-sugar>[1]#module-export-rename|
                                                _out28945_
                                                _rename28956_)
                                               _r28947_)))
                                     _$e28952_)
                                    (cons _out28945_ _r28947_))))
                            (if (gx#export-set? _out28945_)
                                (foldl _fold-e28942_
                                       _r28947_
                                       (gx#export-set-exports _out28945_))
                                (cons _out28945_ _r28947_))))))
              _fold-e28942_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_new-exports28962_
                                                      (foldl _fold-e28959_
                                                             '()
                                                             _exports28939_)))
                                                 (let ()
                                                   (begin
                                                     (for-each
                                                      (lambda (_id28967_)
                                                        (if (hash-get
                                                             _found28914_
                                                             (gx#core-identifier-key
                                                              _id28967_))
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; identifier is not in the export set"
                                                             _stx28756_
                                                             _id28967_)))
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g2896928972_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2897028975_)
                         (cons _g2896928972_ _g2897028975_))
                       '()
                       _L28875_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons 'begin:
                                                           _new-exports28962_)))))))))
                                     (_g2875928792_ _g2876028796_)))
                               _new-id2877928867_
                               _id2878028870_
                               _hd2876828813_))))))
              (_loop2877328825_ _target2877028819_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2875928792_
                                                     _g2876028796_)))))
                                          (_g2875928792_ _g2876028796_))
                                      (_g2875928792_ _g2876028796_))))
                              (_g2875928792_ _g2876028796_))))
                      (_g2875928792_ _g2876028796_)))))
           (_g2875828978_ _stx28756_))))))
  (define |gerbil/core::<module-sugar>[:0:]#prefix-out|
    (gx#make-export-expander
     (lambda (_stx28984_)
       (let ((_g2898729005_
              (lambda (_g2898829001_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2898829001_))))
         (let ((_g2898629084_
                (lambda (_g2898829009_)
                  (if (gx#stx-pair? _g2898829009_)
                      (let ((_e2899129012_ (gx#syntax-e _g2898829009_)))
                        (let ((_hd2899229016_ (##car _e2899129012_))
                              (_tl2899329019_ (##cdr _e2899129012_)))
                          (if (gx#stx-pair? _tl2899329019_)
                              (let ((_e2899429022_
                                     (gx#syntax-e _tl2899329019_)))
                                (let ((_hd2899529026_ (##car _e2899429022_))
                                      (_tl2899629029_ (##cdr _e2899429022_)))
                                  (if (gx#stx-pair? _tl2899629029_)
                                      (let ((_e2899729032_
                                             (gx#syntax-e _tl2899629029_)))
                                        (let ((_hd2899829036_
                                               (##car _e2899729032_))
                                              (_tl2899929039_
                                               (##cdr _e2899729032_)))
                                          (if (gx#stx-null? _tl2899929039_)
                                              ((lambda (_L29042_ _L29044_)
                                                 (if (gx#identifier? _L29042_)
                                                     (let ((_pre29060_
                                                            (gx#stx-e
                                                             _L29042_)))
                                                       (let ((_exports29063_
                                                              (gx#core-expand-export-source
                                                               _L29044_)))
                                                         (let ((_rename-e29069_
                                                                (lambda (_name29066_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (|gerbil/core::<module-sugar>[1]#prefix-identifier-key|
                           _name29066_
                           _pre29060_))))
                   (let ((_fold-e29079_
                          (letrec ((_fold-e29072_
                                    (lambda (_out29075_ _r29077_)
                                      (if (gx#module-export? _out29075_)
                                          (cons (|gerbil/core::<module-sugar>[1]#module-export-rename|
                                                 _out29075_
                                                 (_rename-e29069_
                                                  (gx#module-export-name
                                                   _out29075_)))
                                                _r29077_)
                                          (if (gx#export-set? _out29075_)
                                              (foldl _fold-e29072_
                                                     _r29077_
                                                     (gx#export-set-exports
                                                      _out29075_))
                                              (cons _out29075_ _r29077_))))))
                            _fold-e29072_)))
                     (let ()
                       (cons 'begin:
                             (foldl _fold-e29079_ '() _exports29063_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2898729005_
                                                      _g2898829009_)))
                                               _hd2899829036_
                                               _hd2899529026_)
                                              (_g2898729005_ _g2898829009_))))
                                      (_g2898729005_ _g2898829009_))))
                              (_g2898729005_ _g2898829009_))))
                      (_g2898729005_ _g2898829009_)))))
           (_g2898629084_ _stx28984_))))))
  (define |gerbil/core::<module-sugar>[:0:]#struct-out|
    (gx#make-export-expander
     (lambda (_stx29088_)
       (let ((_g2909129111_
              (lambda (_g2909229107_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2909229107_))))
         (let ((_g2909029346_
                (lambda (_g2909229115_)
                  (if (gx#stx-pair? _g2909229115_)
                      (let ((_e2909429118_ (gx#syntax-e _g2909229115_)))
                        (let ((_hd2909529122_ (##car _e2909429118_))
                              (_tl2909629125_ (##cdr _e2909429118_)))
                          (if (gx#stx-pair/null? _tl2909629125_)
                              (if (fx>= (gx#stx-length _tl2909629125_) '0)
                                  (let ((_g29646_
                                         (gx#syntax-split-splice
                                          _tl2909629125_
                                          '0)))
                                    (begin
                                      (let ((_g29647_ (values-count _g29646_)))
                                        (if (not (fx= _g29647_ 2))
                                            (error "Context expects 2 values"
                                                   _g29647_)))
                                      (let ((_target2909729128_
                                             (values-ref _g29646_ 0))
                                            (_tl2909929131_
                                             (values-ref _g29646_ 1)))
                                        (if (gx#stx-null? _tl2909929131_)
                                            (letrec ((_loop2910029134_
                                                      (lambda (_hd2909829138_
                                                               _id2910429141_)
                                                        (if (gx#stx-pair?
                                                             _hd2909829138_)
                                                            (let ((_e2910129144_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd2909829138_)))
                      (let ((_lp-hd2910229148_ (##car _e2910129144_))
                            (_lp-tl2910329151_ (##cdr _e2910129144_)))
                        (_loop2910029134_
                         _lp-tl2910329151_
                         (cons _lp-hd2910229148_ _id2910429141_))))
                    (let ((_id2910529154_ (reverse _id2910429141_)))
                      ((lambda (_L29158_)
                         ((letrec ((_lp29174_
                                    (lambda (_rest29177_ _ids29179_)
                                      (let ((_g2918229194_
                                             (lambda (_g2918329190_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2918329190_))))
                                        (let ((_g2918129205_
                                               (lambda (_g2918329198_)
                                                 ((lambda ()
                                                    (cons 'begin:
                                                          _ids29179_))))))
                                          (let ((_g2918029334_
                                                 (lambda (_g2918329209_)
                                                   (if (gx#stx-pair?
                                                        _g2918329209_)
                                                       (let ((_e2918629212_
                                                              (gx#syntax-e
                                                               _g2918329209_)))
                                                         (let ((_hd2918729216_
                                                                (##car _e2918629212_))
                                                               (_tl2918829219_
                                                                (##cdr _e2918629212_)))
                                                           ((lambda (_L29222_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L29224_)
                      (let ((_info29239_
                             (gx#syntax-local-value _L29224_ false)))
                        (if (|gerbil/core::<MOP>::<MOP:2>[1]#expander-type-info?|
                             _info29239_)
                            (let ((_g2924129258_
                                   (slot-ref
                                    _info29239_
                                    'expander-identifiers)))
                              (let ((_E2924329264_
                                     (lambda ()
                                       (error '"No clause matching"
                                              _g2924129258_))))
                                (let ((_K2924429276_
                                       (lambda (_setf29268_
                                                _getf29270_
                                                _type?29271_
                                                _make-type29272_
                                                _type::t29273_
                                                _super29274_)
                                         (_lp29174_
                                          _L29222_
                                          (cons _L29224_
                                                (cons _type::t29273_
                                                      (cons _make-type29272_
                                                            (cons _type?29271_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (foldr cons
                                 (foldr cons _ids29179_ _setf29268_)
                                 _getf29270_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (##pair? _g2924129258_)
                                      (let ((_hd2924529280_
                                             (##car _g2924129258_))
                                            (_tl2924629283_
                                             (##cdr _g2924129258_)))
                                        (let ((_super29286_ _hd2924529280_))
                                          (if (##pair? _tl2924629283_)
                                              (let ((_hd2924729289_
                                                     (##car _tl2924629283_))
                                                    (_tl2924829292_
                                                     (##cdr _tl2924629283_)))
                                                (let ((_type::t29295_
                                                       _hd2924729289_))
                                                  (if (##pair? _tl2924829292_)
                                                      (let ((_hd2924929298_
                                                             (##car _tl2924829292_))
                                                            (_tl2925029301_
                                                             (##cdr _tl2924829292_)))
                                                        (let ((_make-type29304_
                                                               _hd2924929298_))
                                                          (if (##pair? _tl2925029301_)
                                                              (let ((_hd2925129307_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##car _tl2925029301_))
                            (_tl2925229310_ (##cdr _tl2925029301_)))
                        (let ((_type?29313_ _hd2925129307_))
                          (if (##pair? _tl2925229310_)
                              (let ((_hd2925329316_ (##car _tl2925229310_))
                                    (_tl2925429319_ (##cdr _tl2925229310_)))
                                (let ((_getf29322_ _hd2925329316_))
                                  (if (##pair? _tl2925429319_)
                                      (let ((_hd2925529325_
                                             (##car _tl2925429319_))
                                            (_tl2925629328_
                                             (##cdr _tl2925429319_)))
                                        (let ((_setf29331_ _hd2925529325_))
                                          (if (##null? _tl2925629328_)
                                              (_K2924429276_
                                               _setf29331_
                                               _getf29322_
                                               _type?29313_
                                               _make-type29304_
                                               _type::t29295_
                                               _super29286_)
                                              (_E2924329264_))))
                                      (_E2924329264_))))
                              (_E2924329264_))))
                      (_E2924329264_))))
              (_E2924329264_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E2924329264_))))
                                      (_E2924329264_)))))
                            (gx#raise-syntax-error
                             '#f
                             '"Incomplete type info"
                             _stx29088_
                             _L29224_))))
                    _tl2918829219_
                    _hd2918729216_)))
               (_g2918129205_ _g2918329209_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2918029334_ _rest29177_)))))))
                            _lp29174_)
                          (begin
                            '#!void
                            (foldr (lambda (_g2933729340_ _g2933829343_)
                                     (cons _g2933729340_ _g2933829343_))
                                   '()
                                   _L29158_))
                          '()))
                       _id2910529154_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop2910029134_
                                               _target2909729128_
                                               '()))
                                            (_g2909129111_ _g2909229115_)))))
                                  (_g2909129111_ _g2909229115_))
                              (_g2909129111_ _g2909229115_))))
                      (_g2909129111_ _g2909229115_)))))
           (_g2909029346_ _stx29088_)))))))
