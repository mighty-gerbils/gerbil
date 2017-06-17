(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<module-sugar>[:0:]#require|
    (lambda (_$stx27408_)
      (let ((_g2741327432_
             (lambda (_g2741427428_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2741427428_))))
        (let ((_g2741227478_
               (lambda (_g2741427436_)
                 (if (gx#stx-pair? _g2741427436_)
                     (let ((_e2742127439_ (gx#syntax-e _g2741427436_)))
                       (let ((_hd2742227443_ (##car _e2742127439_))
                             (_tl2742327446_ (##cdr _e2742127439_)))
                         (if (gx#stx-pair? _tl2742327446_)
                             (let ((_e2742427449_
                                    (gx#syntax-e _tl2742327446_)))
                               (let ((_hd2742527453_ (##car _e2742427449_))
                                     (_tl2742627456_ (##cdr _e2742427449_)))
                                 ((lambda (_L27459_ _L27461_ _L27462_)
                                    (cons (gx#datum->syntax '#f 'cond-expand)
                                          (cons (cons _L27461_
                                                      (cons (cons _L27462_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L27459_)
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
                                      (cons _L27461_ '())))
                          '()))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _tl2742627456_
                                  _hd2742527453_
                                  _hd2742227443_)))
                             (_g2741327432_ _g2741427436_))))
                     (_g2741327432_ _g2741427436_)))))
          (let ((_g2741127499_
                 (lambda (_g2741427482_)
                   (if (gx#stx-pair? _g2741427482_)
                       (let ((_e2741527485_ (gx#syntax-e _g2741427482_)))
                         (let ((_hd2741627489_ (##car _e2741527485_))
                               (_tl2741727492_ (##cdr _e2741527485_)))
                           (if (gx#stx-null? _tl2741727492_)
                               ((lambda ()
                                  (cons (gx#datum->syntax '#f 'begin) '())))
                               (_g2741227478_ _g2741427482_))))
                       (_g2741227478_ _g2741427482_)))))
            (_g2741127499_ _$stx27408_))))))
  (define |gerbil/core::<module-sugar>[:0:]#defsyntax-for-import|
    (lambda (_$stx27503_)
      (let ((_g2750827548_
             (lambda (_g2750927544_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2750927544_))))
        (let ((_g2750727649_
               (lambda (_g2750927552_)
                 (if (gx#stx-pair? _g2750927552_)
                     (let ((_e2752527555_ (gx#syntax-e _g2750927552_)))
                       (let ((_hd2752627559_ (##car _e2752527555_))
                             (_tl2752727562_ (##cdr _e2752527555_)))
                         (if (gx#stx-pair? _tl2752727562_)
                             (let ((_e2752827565_
                                    (gx#syntax-e _tl2752727562_)))
                               (let ((_hd2752927569_ (##car _e2752827565_))
                                     (_tl2753027572_ (##cdr _e2752827565_)))
                                 (if (gx#stx-pair? _hd2752927569_)
                                     (let ((_e2753127575_
                                            (gx#syntax-e _hd2752927569_)))
                                       (let ((_hd2753227579_
                                              (##car _e2753127575_))
                                             (_tl2753327582_
                                              (##cdr _e2753127575_)))
                                         (if (gx#stx-pair/null? _tl2753027572_)
                                             (if (fx>= (gx#stx-length
                                                        _tl2753027572_)
                                                       '0)
                                                 (let ((_g29636_
                                                        (gx#syntax-split-splice
                                                         _tl2753027572_
                                                         '0)))
                                                   (begin
                                                     (let ((_g29637_
                                                            (values-count
                                                             _g29636_)))
                                                       (if (not (fx= _g29637_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g29637_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2753427585_
                                                            (values-ref
                                                             _g29636_
                                                             0))
                                                           (_tl2753627588_
                                                            (values-ref
                                                             _g29636_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2753627588_)
                                                           (letrec ((_loop2753727591_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2753527595_ _body2754127598_)
                               (if (gx#stx-pair? _hd2753527595_)
                                   (let ((_e2753827601_
                                          (gx#syntax-e _hd2753527595_)))
                                     (let ((_lp-hd2753927605_
                                            (##car _e2753827601_))
                                           (_lp-tl2754027608_
                                            (##cdr _e2753827601_)))
                                       (_loop2753727591_
                                        _lp-tl2754027608_
                                        (cons _lp-hd2753927605_
                                              _body2754127598_))))
                                   (let ((_body2754227611_
                                          (reverse _body2754127598_)))
                                     ((lambda (_L27615_
                                               _L27617_
                                               _L27618_
                                               _L27619_)
                                        (if (gx#identifier? _L27618_)
                                            (cons _L27619_
                                                  (cons _L27618_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'lambda)
                            (cons _L27617_
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g2764027643_
                                                    _g2764127646_)
                                             (cons _g2764027643_
                                                   _g2764127646_))
                                           '()
                                           _L27615_))))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2750827548_ _g2750927552_)))
                                      _body2754227611_
                                      _tl2753327582_
                                      _hd2753227579_
                                      _hd2752627559_))))))
                     (_loop2753727591_ _target2753427585_ '()))
                   (_g2750827548_ _g2750927552_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2750827548_ _g2750927552_))
                                             (_g2750827548_ _g2750927552_))))
                                     (_g2750827548_ _g2750927552_))))
                             (_g2750827548_ _g2750927552_))))
                     (_g2750827548_ _g2750927552_)))))
          (let ((_g2750627703_
                 (lambda (_g2750927653_)
                   (if (gx#stx-pair? _g2750927653_)
                       (let ((_e2751227656_ (gx#syntax-e _g2750927653_)))
                         (let ((_hd2751327660_ (##car _e2751227656_))
                               (_tl2751427663_ (##cdr _e2751227656_)))
                           (if (gx#stx-pair? _tl2751427663_)
                               (let ((_e2751527666_
                                      (gx#syntax-e _tl2751427663_)))
                                 (let ((_hd2751627670_ (##car _e2751527666_))
                                       (_tl2751727673_ (##cdr _e2751527666_)))
                                   (if (gx#stx-pair? _tl2751727673_)
                                       (let ((_e2751827676_
                                              (gx#syntax-e _tl2751727673_)))
                                         (let ((_hd2751927680_
                                                (##car _e2751827676_))
                                               (_tl2752027683_
                                                (##cdr _e2751827676_)))
                                           (if (gx#stx-null? _tl2752027683_)
                                               ((lambda (_L27686_ _L27688_)
                                                  (if (gx#identifier? _L27688_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'defsyntax)
                                                            (cons _L27688_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax
                                       '#f
                                       'make-import-expander)
                                      (cons _L27686_ '()))
                                '())))
              (_g2750727649_ _g2750927653_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd2751927680_
                                                _hd2751627670_)
                                               (_g2750727649_ _g2750927653_))))
                                       (_g2750727649_ _g2750927653_))))
                               (_g2750727649_ _g2750927653_))))
                       (_g2750727649_ _g2750927653_)))))
            (_g2750627703_ _$stx27503_))))))
  (define |gerbil/core::<module-sugar>[:0:]#defsyntax-for-export|
    (lambda (_$stx27708_)
      (let ((_g2771327753_
             (lambda (_g2771427749_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2771427749_))))
        (let ((_g2771227854_
               (lambda (_g2771427757_)
                 (if (gx#stx-pair? _g2771427757_)
                     (let ((_e2773027760_ (gx#syntax-e _g2771427757_)))
                       (let ((_hd2773127764_ (##car _e2773027760_))
                             (_tl2773227767_ (##cdr _e2773027760_)))
                         (if (gx#stx-pair? _tl2773227767_)
                             (let ((_e2773327770_
                                    (gx#syntax-e _tl2773227767_)))
                               (let ((_hd2773427774_ (##car _e2773327770_))
                                     (_tl2773527777_ (##cdr _e2773327770_)))
                                 (if (gx#stx-pair? _hd2773427774_)
                                     (let ((_e2773627780_
                                            (gx#syntax-e _hd2773427774_)))
                                       (let ((_hd2773727784_
                                              (##car _e2773627780_))
                                             (_tl2773827787_
                                              (##cdr _e2773627780_)))
                                         (if (gx#stx-pair/null? _tl2773527777_)
                                             (if (fx>= (gx#stx-length
                                                        _tl2773527777_)
                                                       '0)
                                                 (let ((_g29638_
                                                        (gx#syntax-split-splice
                                                         _tl2773527777_
                                                         '0)))
                                                   (begin
                                                     (let ((_g29639_
                                                            (values-count
                                                             _g29638_)))
                                                       (if (not (fx= _g29639_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g29639_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2773927790_
                                                            (values-ref
                                                             _g29638_
                                                             0))
                                                           (_tl2774127793_
                                                            (values-ref
                                                             _g29638_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2774127793_)
                                                           (letrec ((_loop2774227796_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2774027800_ _body2774627803_)
                               (if (gx#stx-pair? _hd2774027800_)
                                   (let ((_e2774327806_
                                          (gx#syntax-e _hd2774027800_)))
                                     (let ((_lp-hd2774427810_
                                            (##car _e2774327806_))
                                           (_lp-tl2774527813_
                                            (##cdr _e2774327806_)))
                                       (_loop2774227796_
                                        _lp-tl2774527813_
                                        (cons _lp-hd2774427810_
                                              _body2774627803_))))
                                   (let ((_body2774727816_
                                          (reverse _body2774627803_)))
                                     ((lambda (_L27820_
                                               _L27822_
                                               _L27823_
                                               _L27824_)
                                        (if (gx#identifier? _L27823_)
                                            (cons _L27824_
                                                  (cons _L27823_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'lambda)
                            (cons _L27822_
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g2784527848_
                                                    _g2784627851_)
                                             (cons _g2784527848_
                                                   _g2784627851_))
                                           '()
                                           _L27820_))))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2771327753_ _g2771427757_)))
                                      _body2774727816_
                                      _tl2773827787_
                                      _hd2773727784_
                                      _hd2773127764_))))))
                     (_loop2774227796_ _target2773927790_ '()))
                   (_g2771327753_ _g2771427757_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2771327753_ _g2771427757_))
                                             (_g2771327753_ _g2771427757_))))
                                     (_g2771327753_ _g2771427757_))))
                             (_g2771327753_ _g2771427757_))))
                     (_g2771327753_ _g2771427757_)))))
          (let ((_g2771127908_
                 (lambda (_g2771427858_)
                   (if (gx#stx-pair? _g2771427858_)
                       (let ((_e2771727861_ (gx#syntax-e _g2771427858_)))
                         (let ((_hd2771827865_ (##car _e2771727861_))
                               (_tl2771927868_ (##cdr _e2771727861_)))
                           (if (gx#stx-pair? _tl2771927868_)
                               (let ((_e2772027871_
                                      (gx#syntax-e _tl2771927868_)))
                                 (let ((_hd2772127875_ (##car _e2772027871_))
                                       (_tl2772227878_ (##cdr _e2772027871_)))
                                   (if (gx#stx-pair? _tl2772227878_)
                                       (let ((_e2772327881_
                                              (gx#syntax-e _tl2772227878_)))
                                         (let ((_hd2772427885_
                                                (##car _e2772327881_))
                                               (_tl2772527888_
                                                (##cdr _e2772327881_)))
                                           (if (gx#stx-null? _tl2772527888_)
                                               ((lambda (_L27891_ _L27893_)
                                                  (if (gx#identifier? _L27893_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'defsyntax)
                                                            (cons _L27893_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax
                                       '#f
                                       'make-export-expander)
                                      (cons _L27891_ '()))
                                '())))
              (_g2771227854_ _g2771427858_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd2772427885_
                                                _hd2772127875_)
                                               (_g2771227854_ _g2771427858_))))
                                       (_g2771227854_ _g2771427858_))))
                               (_g2771227854_ _g2771427858_))))
                       (_g2771227854_ _g2771427858_)))))
            (_g2771127908_ _$stx27708_))))))
  (define |gerbil/core::<module-sugar>[:0:]#only-in|
    (gx#make-import-expander
     (lambda (_stx27913_)
       (let ((_g2791627940_
              (lambda (_g2791727936_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2791727936_))))
         (let ((_g2791528062_
                (lambda (_g2791727944_)
                  (if (gx#stx-pair? _g2791727944_)
                      (let ((_e2792027947_ (gx#syntax-e _g2791727944_)))
                        (let ((_hd2792127951_ (##car _e2792027947_))
                              (_tl2792227954_ (##cdr _e2792027947_)))
                          (if (gx#stx-pair? _tl2792227954_)
                              (let ((_e2792327957_
                                     (gx#syntax-e _tl2792227954_)))
                                (let ((_hd2792427961_ (##car _e2792327957_))
                                      (_tl2792527964_ (##cdr _e2792327957_)))
                                  (if (gx#stx-pair/null? _tl2792527964_)
                                      (if (fx>= (gx#stx-length _tl2792527964_)
                                                '0)
                                          (let ((_g29640_
                                                 (gx#syntax-split-splice
                                                  _tl2792527964_
                                                  '0)))
                                            (begin
                                              (let ((_g29641_
                                                     (values-count _g29640_)))
                                                (if (not (fx= _g29641_ 2))
                                                    (error "Context expects 2 values"
                                                           _g29641_)))
                                              (let ((_target2792627967_
                                                     (values-ref _g29640_ 0))
                                                    (_tl2792827970_
                                                     (values-ref _g29640_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2792827970_)
                                                    (letrec ((_loop2792927973_
                                                              (lambda (_hd2792727977_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _id2793327980_)
                        (if (gx#stx-pair? _hd2792727977_)
                            (let ((_e2793027983_ (gx#syntax-e _hd2792727977_)))
                              (let ((_lp-hd2793127987_ (##car _e2793027983_))
                                    (_lp-tl2793227990_ (##cdr _e2793027983_)))
                                (_loop2792927973_
                                 _lp-tl2793227990_
                                 (cons _lp-hd2793127987_ _id2793327980_))))
                            (let ((_id2793427993_ (reverse _id2793327980_)))
                              ((lambda (_L27997_ _L27999_)
                                 (if (gx#identifier-list?
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g2801628019_
                                                        _g2801728022_)
                                                 (cons _g2801628019_
                                                       _g2801728022_))
                                               '()
                                               _L27997_)))
                                     (let ((_keys28033_
                                            (gx#stx-map
                                             gx#core-identifier-key
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g2802428027_
                                                               _g2802528030_)
                                                        (cons _g2802428027_
                                                              _g2802528030_))
                                                      '()
                                                      _L27997_)))))
                                       (let ((_keytab28044_
                                              (let ((_ht28036_
                                                     (make-hash-table)))
                                                (begin
                                                  (for-each
                                                   (lambda (_g2803828040_)
                                                     (hash-put!
                                                      _ht28036_
                                                      _g2803828040_
                                                      '#t))
                                                   _keys28033_)
                                                  _ht28036_))))
                                         (let ((_imports28047_
                                                (gx#core-expand-import-source
                                                 _L27999_)))
                                           (let ((_fold-e28057_
                                                  (letrec ((_fold-e28050_
                                                            (lambda (_in28053_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _r28055_)
                      (if (gx#module-import? _in28053_)
                          (if (hash-get
                               _keytab28044_
                               (gx#module-import-name _in28053_))
                              (cons _in28053_ _r28055_)
                              _r28055_)
                          (if (gx#import-set? _in28053_)
                              (foldl _fold-e28050_
                                     _r28055_
                                     (gx#import-set-imports _in28053_))
                              _r28055_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _fold-e28050_)))
                                             (let ()
                                               (cons 'begin:
                                                     (foldl _fold-e28057_
                                                            '()
                                                            _imports28047_)))))))
                                     (_g2791627940_ _g2791727944_)))
                               _id2793427993_
                               _hd2792427961_))))))
              (_loop2792927973_ _target2792627967_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2791627940_
                                                     _g2791727944_)))))
                                          (_g2791627940_ _g2791727944_))
                                      (_g2791627940_ _g2791727944_))))
                              (_g2791627940_ _g2791727944_))))
                      (_g2791627940_ _g2791727944_)))))
           (_g2791528062_ _stx27913_))))))
  (define |gerbil/core::<module-sugar>[:0:]#except-in|
    (gx#make-import-expander
     (lambda (_stx28067_)
       (let ((_g2807028094_
              (lambda (_g2807128090_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2807128090_))))
         (let ((_g2806928216_
                (lambda (_g2807128098_)
                  (if (gx#stx-pair? _g2807128098_)
                      (let ((_e2807428101_ (gx#syntax-e _g2807128098_)))
                        (let ((_hd2807528105_ (##car _e2807428101_))
                              (_tl2807628108_ (##cdr _e2807428101_)))
                          (if (gx#stx-pair? _tl2807628108_)
                              (let ((_e2807728111_
                                     (gx#syntax-e _tl2807628108_)))
                                (let ((_hd2807828115_ (##car _e2807728111_))
                                      (_tl2807928118_ (##cdr _e2807728111_)))
                                  (if (gx#stx-pair/null? _tl2807928118_)
                                      (if (fx>= (gx#stx-length _tl2807928118_)
                                                '0)
                                          (let ((_g29642_
                                                 (gx#syntax-split-splice
                                                  _tl2807928118_
                                                  '0)))
                                            (begin
                                              (let ((_g29643_
                                                     (values-count _g29642_)))
                                                (if (not (fx= _g29643_ 2))
                                                    (error "Context expects 2 values"
                                                           _g29643_)))
                                              (let ((_target2808028121_
                                                     (values-ref _g29642_ 0))
                                                    (_tl2808228124_
                                                     (values-ref _g29642_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2808228124_)
                                                    (letrec ((_loop2808328127_
                                                              (lambda (_hd2808128131_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _id2808728134_)
                        (if (gx#stx-pair? _hd2808128131_)
                            (let ((_e2808428137_ (gx#syntax-e _hd2808128131_)))
                              (let ((_lp-hd2808528141_ (##car _e2808428137_))
                                    (_lp-tl2808628144_ (##cdr _e2808428137_)))
                                (_loop2808328127_
                                 _lp-tl2808628144_
                                 (cons _lp-hd2808528141_ _id2808728134_))))
                            (let ((_id2808828147_ (reverse _id2808728134_)))
                              ((lambda (_L28151_ _L28153_)
                                 (if (gx#identifier-list?
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g2817028173_
                                                        _g2817128176_)
                                                 (cons _g2817028173_
                                                       _g2817128176_))
                                               '()
                                               _L28151_)))
                                     (let ((_keys28187_
                                            (gx#stx-map
                                             gx#core-identifier-key
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g2817828181_
                                                               _g2817928184_)
                                                        (cons _g2817828181_
                                                              _g2817928184_))
                                                      '()
                                                      _L28151_)))))
                                       (let ((_keytab28198_
                                              (let ((_ht28190_
                                                     (make-hash-table)))
                                                (begin
                                                  (for-each
                                                   (lambda (_g2819228194_)
                                                     (hash-put!
                                                      _ht28190_
                                                      _g2819228194_
                                                      '#t))
                                                   _keys28187_)
                                                  _ht28190_))))
                                         (let ((_imports28201_
                                                (gx#core-expand-import-source
                                                 _L28153_)))
                                           (let ((_fold-e28211_
                                                  (letrec ((_fold-e28204_
                                                            (lambda (_in28207_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _r28209_)
                      (if (gx#module-import? _in28207_)
                          (if (hash-get
                               _keytab28198_
                               (gx#module-import-name _in28207_))
                              _r28209_
                              (cons _in28207_ _r28209_))
                          (if (gx#import-set? _in28207_)
                              (foldl _fold-e28204_
                                     _r28209_
                                     (gx#import-set-imports _in28207_))
                              (cons _in28207_ _r28209_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _fold-e28204_)))
                                             (let ()
                                               (cons 'begin:
                                                     (foldl _fold-e28211_
                                                            '()
                                                            _imports28201_)))))))
                                     (_g2807028094_ _g2807128098_)))
                               _id2808828147_
                               _hd2807828115_))))))
              (_loop2808328127_ _target2808028121_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2807028094_
                                                     _g2807128098_)))))
                                          (_g2807028094_ _g2807128098_))
                                      (_g2807028094_ _g2807128098_))))
                              (_g2807028094_ _g2807128098_))))
                      (_g2807028094_ _g2807128098_)))))
           (_g2806928216_ _stx28067_))))))
  (define |gerbil/core::<module-sugar>[1]#module-import-rename|
    (lambda (_in28268_ _rename28270_)
      (gx#make-module-import
       (gx#module-import-source _in28268_)
       _rename28270_
       (gx#module-import-phi _in28268_)
       (gx#module-import-weak? _in28268_))))
  (define |gerbil/core::<module-sugar>[1]#prefix-identifier-key|
    (lambda (_name28221_ _pre28223_)
      (let ((_name2822428232_ _name28221_))
        (let ((_E2822728238_
               (lambda () (error '"No clause matching" _name2822428232_))))
          (let ((_else2822628244_
                 (lambda () (make-symbol _pre28223_ _name28221_))))
            (let ((_K2822828252_
                   (lambda (_mark28248_ _id28250_)
                     (cons (make-symbol _pre28223_ _id28250_) _mark28248_))))
              (if (##pair? _name2822428232_)
                  (let ((_hd2822928256_ (##car _name2822428232_))
                        (_tl2823028259_ (##cdr _name2822428232_)))
                    (let ((_id28262_ _hd2822928256_))
                      (let ((_mark28265_ _tl2823028259_))
                        (_K2822828252_ _mark28265_ _id28262_))))
                  (_else2822628244_))))))))
  (define |gerbil/core::<module-sugar>[:0:]#rename-in|
    (gx#make-import-expander
     (lambda (_stx28272_)
       (let ((_g2827528308_
              (lambda (_g2827628304_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2827628304_))))
         (let ((_g2827428494_
                (lambda (_g2827628312_)
                  (if (gx#stx-pair? _g2827628312_)
                      (let ((_e2828028315_ (gx#syntax-e _g2827628312_)))
                        (let ((_hd2828128319_ (##car _e2828028315_))
                              (_tl2828228322_ (##cdr _e2828028315_)))
                          (if (gx#stx-pair? _tl2828228322_)
                              (let ((_e2828328325_
                                     (gx#syntax-e _tl2828228322_)))
                                (let ((_hd2828428329_ (##car _e2828328325_))
                                      (_tl2828528332_ (##cdr _e2828328325_)))
                                  (if (gx#stx-pair/null? _tl2828528332_)
                                      (if (fx>= (gx#stx-length _tl2828528332_)
                                                '0)
                                          (let ((_g29644_
                                                 (gx#syntax-split-splice
                                                  _tl2828528332_
                                                  '0)))
                                            (begin
                                              (let ((_g29645_
                                                     (values-count _g29644_)))
                                                (if (not (fx= _g29645_ 2))
                                                    (error "Context expects 2 values"
                                                           _g29645_)))
                                              (let ((_target2828628335_
                                                     (values-ref _g29644_ 0))
                                                    (_tl2828828338_
                                                     (values-ref _g29644_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2828828338_)
                                                    (letrec ((_loop2828928341_
                                                              (lambda (_hd2828728345_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _new-id2829328348_
                               _id2829428350_)
                        (if (gx#stx-pair? _hd2828728345_)
                            (let ((_e2829028353_ (gx#syntax-e _hd2828728345_)))
                              (let ((_lp-hd2829128357_ (##car _e2829028353_))
                                    (_lp-tl2829228360_ (##cdr _e2829028353_)))
                                (if (gx#stx-pair? _lp-hd2829128357_)
                                    (let ((_e2829728363_
                                           (gx#syntax-e _lp-hd2829128357_)))
                                      (let ((_hd2829828367_
                                             (##car _e2829728363_))
                                            (_tl2829928370_
                                             (##cdr _e2829728363_)))
                                        (if (gx#stx-pair? _tl2829928370_)
                                            (let ((_e2830028373_
                                                   (gx#syntax-e
                                                    _tl2829928370_)))
                                              (let ((_hd2830128377_
                                                     (##car _e2830028373_))
                                                    (_tl2830228380_
                                                     (##cdr _e2830028373_)))
                                                (if (gx#stx-null?
                                                     _tl2830228380_)
                                                    (_loop2828928341_
                                                     _lp-tl2829228360_
                                                     (cons _hd2830128377_
                                                           _new-id2829328348_)
                                                     (cons _hd2829828367_
                                                           _id2829428350_))
                                                    (_g2827528308_
                                                     _g2827628312_))))
                                            (_g2827528308_ _g2827628312_))))
                                    (_g2827528308_ _g2827628312_))))
                            (let ((_new-id2829528383_
                                   (reverse _new-id2829328348_))
                                  (_id2829628386_ (reverse _id2829428350_)))
                              ((lambda (_L28389_ _L28391_ _L28392_)
                                 (if (if (gx#identifier-list?
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2841028413_
                                                            _g2841128416_)
                                                     (cons _g2841028413_
                                                           _g2841128416_))
                                                   '()
                                                   _L28391_)))
                                         (gx#identifier-list?
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2841828421_
                                                            _g2841928424_)
                                                     (cons _g2841828421_
                                                           _g2841928424_))
                                                   '()
                                                   _L28389_)))
                                         '#f)
                                     (let ((_keytab28427_ (make-hash-table)))
                                       (let ((_found28430_ (make-hash-table)))
                                         (let ((_g29646_
                                                (for-each
                                                 (lambda (_id28433_
                                                          _new-id28435_)
                                                   (hash-put!
                                                    _keytab28427_
                                                    (gx#core-identifier-key
                                                     _id28433_)
                                                    (gx#core-identifier-key
                                                     _new-id28435_)))
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2843628439_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2843728442_)
                    (cons _g2843628439_ _g2843728442_))
                  '()
                  _L28391_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2844428447_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2844528450_)
                    (cons _g2844428447_ _g2844528450_))
                  '()
                  _L28389_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_imports28455_
                                                  (gx#core-expand-import-source
                                                   _L28392_)))
                                             (let ((_fold-e28475_
                                                    (letrec ((_fold-e28458_
                                                              (lambda (_in28461_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _r28463_)
                        (if (gx#module-import? _in28461_)
                            (let ((_name28465_
                                   (gx#module-import-name _in28461_)))
                              (let ((_$e28468_
                                     (hash-get _keytab28427_ _name28465_)))
                                (if _$e28468_
                                    ((lambda (_rename28472_)
                                       (begin
                                         (hash-put!
                                          _found28430_
                                          _name28465_
                                          '#t)
                                         (cons (|gerbil/core::<module-sugar>[1]#module-import-rename|
                                                _in28461_
                                                _rename28472_)
                                               _r28463_)))
                                     _$e28468_)
                                    (cons _in28461_ _r28463_))))
                            (if (gx#import-set? _in28461_)
                                (foldl _fold-e28458_
                                       _r28463_
                                       (gx#import-set-imports _in28461_))
                                (cons _in28461_ _r28463_))))))
              _fold-e28458_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_new-imports28478_
                                                      (foldl _fold-e28475_
                                                             '()
                                                             _imports28455_)))
                                                 (let ()
                                                   (begin
                                                     (for-each
                                                      (lambda (_id28483_)
                                                        (if (hash-get
                                                             _found28430_
                                                             (gx#core-identifier-key
                                                              _id28483_))
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; identifier is not in the import set"
                                                             _stx28272_
                                                             _id28483_)))
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g2848528488_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2848628491_)
                         (cons _g2848528488_ _g2848628491_))
                       '()
                       _L28391_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons 'begin:
                                                           _new-imports28478_)))))))))
                                     (_g2827528308_ _g2827628312_)))
                               _new-id2829528383_
                               _id2829628386_
                               _hd2828428329_))))))
              (_loop2828928341_ _target2828628335_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2827528308_
                                                     _g2827628312_)))))
                                          (_g2827528308_ _g2827628312_))
                                      (_g2827528308_ _g2827628312_))))
                              (_g2827528308_ _g2827628312_))))
                      (_g2827528308_ _g2827628312_)))))
           (_g2827428494_ _stx28272_))))))
  (define |gerbil/core::<module-sugar>[:0:]#prefix-in|
    (gx#make-import-expander
     (lambda (_stx28500_)
       (let ((_g2850328521_
              (lambda (_g2850428517_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2850428517_))))
         (let ((_g2850228600_
                (lambda (_g2850428525_)
                  (if (gx#stx-pair? _g2850428525_)
                      (let ((_e2850728528_ (gx#syntax-e _g2850428525_)))
                        (let ((_hd2850828532_ (##car _e2850728528_))
                              (_tl2850928535_ (##cdr _e2850728528_)))
                          (if (gx#stx-pair? _tl2850928535_)
                              (let ((_e2851028538_
                                     (gx#syntax-e _tl2850928535_)))
                                (let ((_hd2851128542_ (##car _e2851028538_))
                                      (_tl2851228545_ (##cdr _e2851028538_)))
                                  (if (gx#stx-pair? _tl2851228545_)
                                      (let ((_e2851328548_
                                             (gx#syntax-e _tl2851228545_)))
                                        (let ((_hd2851428552_
                                               (##car _e2851328548_))
                                              (_tl2851528555_
                                               (##cdr _e2851328548_)))
                                          (if (gx#stx-null? _tl2851528555_)
                                              ((lambda (_L28558_ _L28560_)
                                                 (if (gx#identifier? _L28558_)
                                                     (let ((_pre28576_
                                                            (gx#stx-e
                                                             _L28558_)))
                                                       (let ((_imports28579_
                                                              (gx#core-expand-import-source
                                                               _L28560_)))
                                                         (let ((_rename-e28585_
                                                                (lambda (_name28582_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (|gerbil/core::<module-sugar>[1]#prefix-identifier-key|
                           _name28582_
                           _pre28576_))))
                   (let ((_fold-e28595_
                          (letrec ((_fold-e28588_
                                    (lambda (_in28591_ _r28593_)
                                      (if (gx#module-import? _in28591_)
                                          (cons (|gerbil/core::<module-sugar>[1]#module-import-rename|
                                                 _in28591_
                                                 (_rename-e28585_
                                                  (gx#module-import-name
                                                   _in28591_)))
                                                _r28593_)
                                          (if (gx#import-set? _in28591_)
                                              (foldl _fold-e28588_
                                                     _r28593_
                                                     (gx#import-set-imports
                                                      _in28591_))
                                              (cons _in28591_ _r28593_))))))
                            _fold-e28588_)))
                     (let ()
                       (cons 'begin:
                             (foldl _fold-e28595_ '() _imports28579_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2850328521_
                                                      _g2850428525_)))
                                               _hd2851428552_
                                               _hd2851128542_)
                                              (_g2850328521_ _g2850428525_))))
                                      (_g2850328521_ _g2850428525_))))
                              (_g2850328521_ _g2850428525_))))
                      (_g2850328521_ _g2850428525_)))))
           (_g2850228600_ _stx28500_))))))
  (define |gerbil/core::<module-sugar>[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_stx28604_)
       (let ((_g2860728631_
              (lambda (_g2860828627_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2860828627_))))
         (let ((_g2860628753_
                (lambda (_g2860828635_)
                  (if (gx#stx-pair? _g2860828635_)
                      (let ((_e2861128638_ (gx#syntax-e _g2860828635_)))
                        (let ((_hd2861228642_ (##car _e2861128638_))
                              (_tl2861328645_ (##cdr _e2861128638_)))
                          (if (gx#stx-pair? _tl2861328645_)
                              (let ((_e2861428648_
                                     (gx#syntax-e _tl2861328645_)))
                                (let ((_hd2861528652_ (##car _e2861428648_))
                                      (_tl2861628655_ (##cdr _e2861428648_)))
                                  (if (gx#stx-pair/null? _tl2861628655_)
                                      (if (fx>= (gx#stx-length _tl2861628655_)
                                                '0)
                                          (let ((_g29647_
                                                 (gx#syntax-split-splice
                                                  _tl2861628655_
                                                  '0)))
                                            (begin
                                              (let ((_g29648_
                                                     (values-count _g29647_)))
                                                (if (not (fx= _g29648_ 2))
                                                    (error "Context expects 2 values"
                                                           _g29648_)))
                                              (let ((_target2861728658_
                                                     (values-ref _g29647_ 0))
                                                    (_tl2861928661_
                                                     (values-ref _g29647_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2861928661_)
                                                    (letrec ((_loop2862028664_
                                                              (lambda (_hd2861828668_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _id2862428671_)
                        (if (gx#stx-pair? _hd2861828668_)
                            (let ((_e2862128674_ (gx#syntax-e _hd2861828668_)))
                              (let ((_lp-hd2862228678_ (##car _e2862128674_))
                                    (_lp-tl2862328681_ (##cdr _e2862128674_)))
                                (_loop2862028664_
                                 _lp-tl2862328681_
                                 (cons _lp-hd2862228678_ _id2862428671_))))
                            (let ((_id2862528684_ (reverse _id2862428671_)))
                              ((lambda (_L28688_ _L28690_)
                                 (if (gx#identifier-list?
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g2870728710_
                                                        _g2870828713_)
                                                 (cons _g2870728710_
                                                       _g2870828713_))
                                               '()
                                               _L28688_)))
                                     (let ((_keys28724_
                                            (gx#stx-map
                                             gx#core-identifier-key
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g2871528718_
                                                               _g2871628721_)
                                                        (cons _g2871528718_
                                                              _g2871628721_))
                                                      '()
                                                      _L28688_)))))
                                       (let ((_keytab28735_
                                              (let ((_ht28727_
                                                     (make-hash-table)))
                                                (begin
                                                  (for-each
                                                   (lambda (_g2872928731_)
                                                     (hash-put!
                                                      _ht28727_
                                                      _g2872928731_
                                                      '#t))
                                                   _keys28724_)
                                                  _ht28727_))))
                                         (let ((_exports28738_
                                                (gx#core-expand-export-source
                                                 _L28690_)))
                                           (let ((_fold-e28748_
                                                  (letrec ((_fold-e28741_
                                                            (lambda (_out28744_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _r28746_)
                      (if (gx#module-export? _out28744_)
                          (if (hash-get
                               _keytab28735_
                               (gx#module-export-name _out28744_))
                              _r28746_
                              (cons _out28744_ _r28746_))
                          (if (gx#export-set? _out28744_)
                              (foldl _fold-e28741_
                                     _r28746_
                                     (gx#export-set-exports _out28744_))
                              _r28746_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _fold-e28741_)))
                                             (let ()
                                               (cons 'begin:
                                                     (foldl _fold-e28748_
                                                            '()
                                                            _exports28738_)))))))
                                     (_g2860728631_ _g2860828635_)))
                               _id2862528684_
                               _hd2861528652_))))))
              (_loop2862028664_ _target2861728658_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2860728631_
                                                     _g2860828635_)))))
                                          (_g2860728631_ _g2860828635_))
                                      (_g2860728631_ _g2860828635_))))
                              (_g2860728631_ _g2860828635_))))
                      (_g2860728631_ _g2860828635_)))))
           (_g2860628753_ _stx28604_))))))
  (define |gerbil/core::<module-sugar>[1]#module-export-rename|
    (lambda (_out28758_ _rename28760_)
      (gx#make-module-export
       (gx#module-export-context _out28758_)
       (gx#module-export-key _out28758_)
       (gx#module-export-phi _out28758_)
       _rename28760_
       (gx#module-export-weak? _out28758_))))
  (define |gerbil/core::<module-sugar>[:0:]#rename-out|
    (gx#make-export-expander
     (lambda (_stx28762_)
       (let ((_g2876528798_
              (lambda (_g2876628794_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2876628794_))))
         (let ((_g2876428984_
                (lambda (_g2876628802_)
                  (if (gx#stx-pair? _g2876628802_)
                      (let ((_e2877028805_ (gx#syntax-e _g2876628802_)))
                        (let ((_hd2877128809_ (##car _e2877028805_))
                              (_tl2877228812_ (##cdr _e2877028805_)))
                          (if (gx#stx-pair? _tl2877228812_)
                              (let ((_e2877328815_
                                     (gx#syntax-e _tl2877228812_)))
                                (let ((_hd2877428819_ (##car _e2877328815_))
                                      (_tl2877528822_ (##cdr _e2877328815_)))
                                  (if (gx#stx-pair/null? _tl2877528822_)
                                      (if (fx>= (gx#stx-length _tl2877528822_)
                                                '0)
                                          (let ((_g29649_
                                                 (gx#syntax-split-splice
                                                  _tl2877528822_
                                                  '0)))
                                            (begin
                                              (let ((_g29650_
                                                     (values-count _g29649_)))
                                                (if (not (fx= _g29650_ 2))
                                                    (error "Context expects 2 values"
                                                           _g29650_)))
                                              (let ((_target2877628825_
                                                     (values-ref _g29649_ 0))
                                                    (_tl2877828828_
                                                     (values-ref _g29649_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2877828828_)
                                                    (letrec ((_loop2877928831_
                                                              (lambda (_hd2877728835_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _new-id2878328838_
                               _id2878428840_)
                        (if (gx#stx-pair? _hd2877728835_)
                            (let ((_e2878028843_ (gx#syntax-e _hd2877728835_)))
                              (let ((_lp-hd2878128847_ (##car _e2878028843_))
                                    (_lp-tl2878228850_ (##cdr _e2878028843_)))
                                (if (gx#stx-pair? _lp-hd2878128847_)
                                    (let ((_e2878728853_
                                           (gx#syntax-e _lp-hd2878128847_)))
                                      (let ((_hd2878828857_
                                             (##car _e2878728853_))
                                            (_tl2878928860_
                                             (##cdr _e2878728853_)))
                                        (if (gx#stx-pair? _tl2878928860_)
                                            (let ((_e2879028863_
                                                   (gx#syntax-e
                                                    _tl2878928860_)))
                                              (let ((_hd2879128867_
                                                     (##car _e2879028863_))
                                                    (_tl2879228870_
                                                     (##cdr _e2879028863_)))
                                                (if (gx#stx-null?
                                                     _tl2879228870_)
                                                    (_loop2877928831_
                                                     _lp-tl2878228850_
                                                     (cons _hd2879128867_
                                                           _new-id2878328838_)
                                                     (cons _hd2878828857_
                                                           _id2878428840_))
                                                    (_g2876528798_
                                                     _g2876628802_))))
                                            (_g2876528798_ _g2876628802_))))
                                    (_g2876528798_ _g2876628802_))))
                            (let ((_new-id2878528873_
                                   (reverse _new-id2878328838_))
                                  (_id2878628876_ (reverse _id2878428840_)))
                              ((lambda (_L28879_ _L28881_ _L28882_)
                                 (if (if (gx#identifier-list?
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2890028903_
                                                            _g2890128906_)
                                                     (cons _g2890028903_
                                                           _g2890128906_))
                                                   '()
                                                   _L28881_)))
                                         (gx#identifier-list?
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2890828911_
                                                            _g2890928914_)
                                                     (cons _g2890828911_
                                                           _g2890928914_))
                                                   '()
                                                   _L28879_)))
                                         '#f)
                                     (let ((_keytab28917_ (make-hash-table)))
                                       (let ((_found28920_ (make-hash-table)))
                                         (let ((_g29651_
                                                (for-each
                                                 (lambda (_id28923_
                                                          _new-id28925_)
                                                   (hash-put!
                                                    _keytab28917_
                                                    (gx#core-identifier-key
                                                     _id28923_)
                                                    (gx#core-identifier-key
                                                     _new-id28925_)))
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2892628929_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2892728932_)
                    (cons _g2892628929_ _g2892728932_))
                  '()
                  _L28881_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2893428937_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2893528940_)
                    (cons _g2893428937_ _g2893528940_))
                  '()
                  _L28879_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_exports28945_
                                                  (gx#core-expand-export-source
                                                   _L28882_)))
                                             (let ((_fold-e28965_
                                                    (letrec ((_fold-e28948_
                                                              (lambda (_out28951_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _r28953_)
                        (if (gx#module-export? _out28951_)
                            (let ((_name28955_
                                   (gx#module-export-name _out28951_)))
                              (let ((_$e28958_
                                     (hash-get _keytab28917_ _name28955_)))
                                (if _$e28958_
                                    ((lambda (_rename28962_)
                                       (begin
                                         (hash-put!
                                          _found28920_
                                          _name28955_
                                          '#t)
                                         (cons (|gerbil/core::<module-sugar>[1]#module-export-rename|
                                                _out28951_
                                                _rename28962_)
                                               _r28953_)))
                                     _$e28958_)
                                    (cons _out28951_ _r28953_))))
                            (if (gx#export-set? _out28951_)
                                (foldl _fold-e28948_
                                       _r28953_
                                       (gx#export-set-exports _out28951_))
                                (cons _out28951_ _r28953_))))))
              _fold-e28948_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_new-exports28968_
                                                      (foldl _fold-e28965_
                                                             '()
                                                             _exports28945_)))
                                                 (let ()
                                                   (begin
                                                     (for-each
                                                      (lambda (_id28973_)
                                                        (if (hash-get
                                                             _found28920_
                                                             (gx#core-identifier-key
                                                              _id28973_))
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; identifier is not in the export set"
                                                             _stx28762_
                                                             _id28973_)))
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g2897528978_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2897628981_)
                         (cons _g2897528978_ _g2897628981_))
                       '()
                       _L28881_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons 'begin:
                                                           _new-exports28968_)))))))))
                                     (_g2876528798_ _g2876628802_)))
                               _new-id2878528873_
                               _id2878628876_
                               _hd2877428819_))))))
              (_loop2877928831_ _target2877628825_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2876528798_
                                                     _g2876628802_)))))
                                          (_g2876528798_ _g2876628802_))
                                      (_g2876528798_ _g2876628802_))))
                              (_g2876528798_ _g2876628802_))))
                      (_g2876528798_ _g2876628802_)))))
           (_g2876428984_ _stx28762_))))))
  (define |gerbil/core::<module-sugar>[:0:]#prefix-out|
    (gx#make-export-expander
     (lambda (_stx28990_)
       (let ((_g2899329011_
              (lambda (_g2899429007_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2899429007_))))
         (let ((_g2899229090_
                (lambda (_g2899429015_)
                  (if (gx#stx-pair? _g2899429015_)
                      (let ((_e2899729018_ (gx#syntax-e _g2899429015_)))
                        (let ((_hd2899829022_ (##car _e2899729018_))
                              (_tl2899929025_ (##cdr _e2899729018_)))
                          (if (gx#stx-pair? _tl2899929025_)
                              (let ((_e2900029028_
                                     (gx#syntax-e _tl2899929025_)))
                                (let ((_hd2900129032_ (##car _e2900029028_))
                                      (_tl2900229035_ (##cdr _e2900029028_)))
                                  (if (gx#stx-pair? _tl2900229035_)
                                      (let ((_e2900329038_
                                             (gx#syntax-e _tl2900229035_)))
                                        (let ((_hd2900429042_
                                               (##car _e2900329038_))
                                              (_tl2900529045_
                                               (##cdr _e2900329038_)))
                                          (if (gx#stx-null? _tl2900529045_)
                                              ((lambda (_L29048_ _L29050_)
                                                 (if (gx#identifier? _L29048_)
                                                     (let ((_pre29066_
                                                            (gx#stx-e
                                                             _L29048_)))
                                                       (let ((_exports29069_
                                                              (gx#core-expand-export-source
                                                               _L29050_)))
                                                         (let ((_rename-e29075_
                                                                (lambda (_name29072_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (|gerbil/core::<module-sugar>[1]#prefix-identifier-key|
                           _name29072_
                           _pre29066_))))
                   (let ((_fold-e29085_
                          (letrec ((_fold-e29078_
                                    (lambda (_out29081_ _r29083_)
                                      (if (gx#module-export? _out29081_)
                                          (cons (|gerbil/core::<module-sugar>[1]#module-export-rename|
                                                 _out29081_
                                                 (_rename-e29075_
                                                  (gx#module-export-name
                                                   _out29081_)))
                                                _r29083_)
                                          (if (gx#export-set? _out29081_)
                                              (foldl _fold-e29078_
                                                     _r29083_
                                                     (gx#export-set-exports
                                                      _out29081_))
                                              (cons _out29081_ _r29083_))))))
                            _fold-e29078_)))
                     (let ()
                       (cons 'begin:
                             (foldl _fold-e29085_ '() _exports29069_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2899329011_
                                                      _g2899429015_)))
                                               _hd2900429042_
                                               _hd2900129032_)
                                              (_g2899329011_ _g2899429015_))))
                                      (_g2899329011_ _g2899429015_))))
                              (_g2899329011_ _g2899429015_))))
                      (_g2899329011_ _g2899429015_)))))
           (_g2899229090_ _stx28990_))))))
  (define |gerbil/core::<module-sugar>[:0:]#struct-out|
    (gx#make-export-expander
     (lambda (_stx29094_)
       (let ((_g2909729117_
              (lambda (_g2909829113_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2909829113_))))
         (let ((_g2909629352_
                (lambda (_g2909829121_)
                  (if (gx#stx-pair? _g2909829121_)
                      (let ((_e2910029124_ (gx#syntax-e _g2909829121_)))
                        (let ((_hd2910129128_ (##car _e2910029124_))
                              (_tl2910229131_ (##cdr _e2910029124_)))
                          (if (gx#stx-pair/null? _tl2910229131_)
                              (if (fx>= (gx#stx-length _tl2910229131_) '0)
                                  (let ((_g29652_
                                         (gx#syntax-split-splice
                                          _tl2910229131_
                                          '0)))
                                    (begin
                                      (let ((_g29653_ (values-count _g29652_)))
                                        (if (not (fx= _g29653_ 2))
                                            (error "Context expects 2 values"
                                                   _g29653_)))
                                      (let ((_target2910329134_
                                             (values-ref _g29652_ 0))
                                            (_tl2910529137_
                                             (values-ref _g29652_ 1)))
                                        (if (gx#stx-null? _tl2910529137_)
                                            (letrec ((_loop2910629140_
                                                      (lambda (_hd2910429144_
                                                               _id2911029147_)
                                                        (if (gx#stx-pair?
                                                             _hd2910429144_)
                                                            (let ((_e2910729150_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd2910429144_)))
                      (let ((_lp-hd2910829154_ (##car _e2910729150_))
                            (_lp-tl2910929157_ (##cdr _e2910729150_)))
                        (_loop2910629140_
                         _lp-tl2910929157_
                         (cons _lp-hd2910829154_ _id2911029147_))))
                    (let ((_id2911129160_ (reverse _id2911029147_)))
                      ((lambda (_L29164_)
                         ((letrec ((_lp29180_
                                    (lambda (_rest29183_ _ids29185_)
                                      (let ((_g2918829200_
                                             (lambda (_g2918929196_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2918929196_))))
                                        (let ((_g2918729211_
                                               (lambda (_g2918929204_)
                                                 ((lambda ()
                                                    (cons 'begin:
                                                          _ids29185_))))))
                                          (let ((_g2918629340_
                                                 (lambda (_g2918929215_)
                                                   (if (gx#stx-pair?
                                                        _g2918929215_)
                                                       (let ((_e2919229218_
                                                              (gx#syntax-e
                                                               _g2918929215_)))
                                                         (let ((_hd2919329222_
                                                                (##car _e2919229218_))
                                                               (_tl2919429225_
                                                                (##cdr _e2919229218_)))
                                                           ((lambda (_L29228_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L29230_)
                      (let ((_info29245_
                             (gx#syntax-local-value _L29230_ false)))
                        (if (|gerbil/core::<MOP>::<MOP:2>[1]#expander-type-info?|
                             _info29245_)
                            (let ((_g2924729264_
                                   (slot-ref
                                    _info29245_
                                    'expander-identifiers)))
                              (let ((_E2924929270_
                                     (lambda ()
                                       (error '"No clause matching"
                                              _g2924729264_))))
                                (let ((_K2925029282_
                                       (lambda (_setf29274_
                                                _getf29276_
                                                _type?29277_
                                                _make-type29278_
                                                _type::t29279_
                                                _super29280_)
                                         (_lp29180_
                                          _L29228_
                                          (cons _L29230_
                                                (cons _type::t29279_
                                                      (cons _make-type29278_
                                                            (cons _type?29277_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (foldr cons
                                 (foldr cons _ids29185_ _setf29274_)
                                 _getf29276_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (##pair? _g2924729264_)
                                      (let ((_hd2925129286_
                                             (##car _g2924729264_))
                                            (_tl2925229289_
                                             (##cdr _g2924729264_)))
                                        (let ((_super29292_ _hd2925129286_))
                                          (if (##pair? _tl2925229289_)
                                              (let ((_hd2925329295_
                                                     (##car _tl2925229289_))
                                                    (_tl2925429298_
                                                     (##cdr _tl2925229289_)))
                                                (let ((_type::t29301_
                                                       _hd2925329295_))
                                                  (if (##pair? _tl2925429298_)
                                                      (let ((_hd2925529304_
                                                             (##car _tl2925429298_))
                                                            (_tl2925629307_
                                                             (##cdr _tl2925429298_)))
                                                        (let ((_make-type29310_
                                                               _hd2925529304_))
                                                          (if (##pair? _tl2925629307_)
                                                              (let ((_hd2925729313_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##car _tl2925629307_))
                            (_tl2925829316_ (##cdr _tl2925629307_)))
                        (let ((_type?29319_ _hd2925729313_))
                          (if (##pair? _tl2925829316_)
                              (let ((_hd2925929322_ (##car _tl2925829316_))
                                    (_tl2926029325_ (##cdr _tl2925829316_)))
                                (let ((_getf29328_ _hd2925929322_))
                                  (if (##pair? _tl2926029325_)
                                      (let ((_hd2926129331_
                                             (##car _tl2926029325_))
                                            (_tl2926229334_
                                             (##cdr _tl2926029325_)))
                                        (let ((_setf29337_ _hd2926129331_))
                                          (if (##null? _tl2926229334_)
                                              (_K2925029282_
                                               _setf29337_
                                               _getf29328_
                                               _type?29319_
                                               _make-type29310_
                                               _type::t29301_
                                               _super29292_)
                                              (_E2924929270_))))
                                      (_E2924929270_))))
                              (_E2924929270_))))
                      (_E2924929270_))))
              (_E2924929270_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E2924929270_))))
                                      (_E2924929270_)))))
                            (gx#raise-syntax-error
                             '#f
                             '"Incomplete type info"
                             _stx29094_
                             _L29230_))))
                    _tl2919429225_
                    _hd2919329222_)))
               (_g2918729211_ _g2918929215_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2918629340_ _rest29183_)))))))
                            _lp29180_)
                          (begin
                            '#!void
                            (foldr (lambda (_g2934329346_ _g2934429349_)
                                     (cons _g2934329346_ _g2934429349_))
                                   '()
                                   _L29164_))
                          '()))
                       _id2911129160_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop2910629140_
                                               _target2910329134_
                                               '()))
                                            (_g2909729117_ _g2909829121_)))))
                                  (_g2909729117_ _g2909829121_))
                              (_g2909729117_ _g2909829121_))))
                      (_g2909729117_ _g2909829121_)))))
           (_g2909629352_ _stx29094_)))))))
