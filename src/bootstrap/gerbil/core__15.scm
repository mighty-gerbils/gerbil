(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<module-sugar>[:0:]#require|
    (lambda (_$stx28847_)
      (let* ((_g2885228871_
              (lambda (_g2885328867_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2885328867_)))
             (_g2885128917_
              (lambda (_g2885328875_)
                (if (gx#stx-pair? _g2885328875_)
                    (let ((_e2886028878_ (gx#syntax-e _g2885328875_)))
                      (let ((_hd2886128882_ (##car _e2886028878_))
                            (_tl2886228885_ (##cdr _e2886028878_)))
                        (if (gx#stx-pair? _tl2886228885_)
                            (let ((_e2886328888_ (gx#syntax-e _tl2886228885_)))
                              (let ((_hd2886428892_ (##car _e2886328888_))
                                    (_tl2886528895_ (##cdr _e2886328888_)))
                                ((lambda (_L28898_ _L28900_ _L28901_)
                                   (cons (gx#datum->syntax '#f 'cond-expand)
                                         (cons (cons _L28900_
                                                     (cons (cons _L28901_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L28898_)
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
                                     (cons _L28900_ '())))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                                 _tl2886528895_
                                 _hd2886428892_
                                 _hd2886128882_)))
                            (_g2885228871_ _g2885328875_))))
                    (_g2885228871_ _g2885328875_))))
             (_g2885028938_
              (lambda (_g2885328921_)
                (if (gx#stx-pair? _g2885328921_)
                    (let ((_e2885428924_ (gx#syntax-e _g2885328921_)))
                      (let ((_hd2885528928_ (##car _e2885428924_))
                            (_tl2885628931_ (##cdr _e2885428924_)))
                        (if (gx#stx-null? _tl2885628931_)
                            ((lambda ()
                               (cons (gx#datum->syntax '#f 'begin) '())))
                            (_g2885128917_ _g2885328921_))))
                    (_g2885128917_ _g2885328921_)))))
        (_g2885028938_ _$stx28847_))))
  (define |gerbil/core$<module-sugar>[:0:]#defsyntax-for-import|
    (lambda (_$stx28942_)
      (let* ((_g2894728987_
              (lambda (_g2894828983_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2894828983_)))
             (_g2894629088_
              (lambda (_g2894828991_)
                (if (gx#stx-pair? _g2894828991_)
                    (let ((_e2896428994_ (gx#syntax-e _g2894828991_)))
                      (let ((_hd2896528998_ (##car _e2896428994_))
                            (_tl2896629001_ (##cdr _e2896428994_)))
                        (if (gx#stx-pair? _tl2896629001_)
                            (let ((_e2896729004_ (gx#syntax-e _tl2896629001_)))
                              (let ((_hd2896829008_ (##car _e2896729004_))
                                    (_tl2896929011_ (##cdr _e2896729004_)))
                                (if (gx#stx-pair? _hd2896829008_)
                                    (let ((_e2897029014_
                                           (gx#syntax-e _hd2896829008_)))
                                      (let ((_hd2897129018_
                                             (##car _e2897029014_))
                                            (_tl2897229021_
                                             (##cdr _e2897029014_)))
                                        (if (gx#stx-pair/null? _tl2896929011_)
                                            (if (fx>= (gx#stx-length
                                                       _tl2896929011_)
                                                      '0)
                                                (let ((_g31088_
                                                       (gx#syntax-split-splice
                                                        _tl2896929011_
                                                        '0)))
                                                  (begin
                                                    (let ((_g31089_
                                                           (values-count
                                                            _g31088_)))
                                                      (if (not (fx= _g31089_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g31089_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2897329024_
                                                           (values-ref
                                                            _g31088_
                                                            0))
                                                          (_tl2897529027_
                                                           (values-ref
                                                            _g31088_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl2897529027_)
                                                          (letrec ((_loop2897629030_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd2897429034_ _body2898029037_)
                              (if (gx#stx-pair? _hd2897429034_)
                                  (let ((_e2897729040_
                                         (gx#syntax-e _hd2897429034_)))
                                    (let ((_lp-hd2897829044_
                                           (##car _e2897729040_))
                                          (_lp-tl2897929047_
                                           (##cdr _e2897729040_)))
                                      (_loop2897629030_
                                       _lp-tl2897929047_
                                       (cons _lp-hd2897829044_
                                             _body2898029037_))))
                                  (let ((_body2898129050_
                                         (reverse _body2898029037_)))
                                    ((lambda (_L29054_
                                              _L29056_
                                              _L29057_
                                              _L29058_)
                                       (if (gx#identifier? _L29057_)
                                           (cons _L29058_
                                                 (cons _L29057_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'lambda)
                           (cons _L29056_
                                 (begin
                                   '#!void
                                   (foldr (lambda (_g2907929082_ _g2908029085_)
                                            (cons _g2907929082_ _g2908029085_))
                                          '()
                                          _L29054_))))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g2894728987_ _g2894828991_)))
                                     _body2898129050_
                                     _tl2897229021_
                                     _hd2897129018_
                                     _hd2896528998_))))))
                    (_loop2897629030_ _target2897329024_ '()))
                  (_g2894728987_ _g2894828991_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2894728987_ _g2894828991_))
                                            (_g2894728987_ _g2894828991_))))
                                    (_g2894728987_ _g2894828991_))))
                            (_g2894728987_ _g2894828991_))))
                    (_g2894728987_ _g2894828991_))))
             (_g2894529142_
              (lambda (_g2894829092_)
                (if (gx#stx-pair? _g2894829092_)
                    (let ((_e2895129095_ (gx#syntax-e _g2894829092_)))
                      (let ((_hd2895229099_ (##car _e2895129095_))
                            (_tl2895329102_ (##cdr _e2895129095_)))
                        (if (gx#stx-pair? _tl2895329102_)
                            (let ((_e2895429105_ (gx#syntax-e _tl2895329102_)))
                              (let ((_hd2895529109_ (##car _e2895429105_))
                                    (_tl2895629112_ (##cdr _e2895429105_)))
                                (if (gx#stx-pair? _tl2895629112_)
                                    (let ((_e2895729115_
                                           (gx#syntax-e _tl2895629112_)))
                                      (let ((_hd2895829119_
                                             (##car _e2895729115_))
                                            (_tl2895929122_
                                             (##cdr _e2895729115_)))
                                        (if (gx#stx-null? _tl2895929122_)
                                            ((lambda (_L29125_ _L29127_)
                                               (if (gx#identifier? _L29127_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'defsyntax)
                                                         (cons _L29127_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'make-import-expander)
                                   (cons _L29125_ '()))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2894629088_
                                                    _g2894829092_)))
                                             _hd2895829119_
                                             _hd2895529109_)
                                            (_g2894629088_ _g2894829092_))))
                                    (_g2894629088_ _g2894829092_))))
                            (_g2894629088_ _g2894829092_))))
                    (_g2894629088_ _g2894829092_)))))
        (_g2894529142_ _$stx28942_))))
  (define |gerbil/core$<module-sugar>[:0:]#defsyntax-for-export|
    (lambda (_$stx29147_)
      (let* ((_g2915229192_
              (lambda (_g2915329188_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2915329188_)))
             (_g2915129293_
              (lambda (_g2915329196_)
                (if (gx#stx-pair? _g2915329196_)
                    (let ((_e2916929199_ (gx#syntax-e _g2915329196_)))
                      (let ((_hd2917029203_ (##car _e2916929199_))
                            (_tl2917129206_ (##cdr _e2916929199_)))
                        (if (gx#stx-pair? _tl2917129206_)
                            (let ((_e2917229209_ (gx#syntax-e _tl2917129206_)))
                              (let ((_hd2917329213_ (##car _e2917229209_))
                                    (_tl2917429216_ (##cdr _e2917229209_)))
                                (if (gx#stx-pair? _hd2917329213_)
                                    (let ((_e2917529219_
                                           (gx#syntax-e _hd2917329213_)))
                                      (let ((_hd2917629223_
                                             (##car _e2917529219_))
                                            (_tl2917729226_
                                             (##cdr _e2917529219_)))
                                        (if (gx#stx-pair/null? _tl2917429216_)
                                            (if (fx>= (gx#stx-length
                                                       _tl2917429216_)
                                                      '0)
                                                (let ((_g31090_
                                                       (gx#syntax-split-splice
                                                        _tl2917429216_
                                                        '0)))
                                                  (begin
                                                    (let ((_g31091_
                                                           (values-count
                                                            _g31090_)))
                                                      (if (not (fx= _g31091_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g31091_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2917829229_
                                                           (values-ref
                                                            _g31090_
                                                            0))
                                                          (_tl2918029232_
                                                           (values-ref
                                                            _g31090_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl2918029232_)
                                                          (letrec ((_loop2918129235_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd2917929239_ _body2918529242_)
                              (if (gx#stx-pair? _hd2917929239_)
                                  (let ((_e2918229245_
                                         (gx#syntax-e _hd2917929239_)))
                                    (let ((_lp-hd2918329249_
                                           (##car _e2918229245_))
                                          (_lp-tl2918429252_
                                           (##cdr _e2918229245_)))
                                      (_loop2918129235_
                                       _lp-tl2918429252_
                                       (cons _lp-hd2918329249_
                                             _body2918529242_))))
                                  (let ((_body2918629255_
                                         (reverse _body2918529242_)))
                                    ((lambda (_L29259_
                                              _L29261_
                                              _L29262_
                                              _L29263_)
                                       (if (gx#identifier? _L29262_)
                                           (cons _L29263_
                                                 (cons _L29262_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'lambda)
                           (cons _L29261_
                                 (begin
                                   '#!void
                                   (foldr (lambda (_g2928429287_ _g2928529290_)
                                            (cons _g2928429287_ _g2928529290_))
                                          '()
                                          _L29259_))))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g2915229192_ _g2915329196_)))
                                     _body2918629255_
                                     _tl2917729226_
                                     _hd2917629223_
                                     _hd2917029203_))))))
                    (_loop2918129235_ _target2917829229_ '()))
                  (_g2915229192_ _g2915329196_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2915229192_ _g2915329196_))
                                            (_g2915229192_ _g2915329196_))))
                                    (_g2915229192_ _g2915329196_))))
                            (_g2915229192_ _g2915329196_))))
                    (_g2915229192_ _g2915329196_))))
             (_g2915029347_
              (lambda (_g2915329297_)
                (if (gx#stx-pair? _g2915329297_)
                    (let ((_e2915629300_ (gx#syntax-e _g2915329297_)))
                      (let ((_hd2915729304_ (##car _e2915629300_))
                            (_tl2915829307_ (##cdr _e2915629300_)))
                        (if (gx#stx-pair? _tl2915829307_)
                            (let ((_e2915929310_ (gx#syntax-e _tl2915829307_)))
                              (let ((_hd2916029314_ (##car _e2915929310_))
                                    (_tl2916129317_ (##cdr _e2915929310_)))
                                (if (gx#stx-pair? _tl2916129317_)
                                    (let ((_e2916229320_
                                           (gx#syntax-e _tl2916129317_)))
                                      (let ((_hd2916329324_
                                             (##car _e2916229320_))
                                            (_tl2916429327_
                                             (##cdr _e2916229320_)))
                                        (if (gx#stx-null? _tl2916429327_)
                                            ((lambda (_L29330_ _L29332_)
                                               (if (gx#identifier? _L29332_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'defsyntax)
                                                         (cons _L29332_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'make-export-expander)
                                   (cons _L29330_ '()))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2915129293_
                                                    _g2915329297_)))
                                             _hd2916329324_
                                             _hd2916029314_)
                                            (_g2915129293_ _g2915329297_))))
                                    (_g2915129293_ _g2915329297_))))
                            (_g2915129293_ _g2915329297_))))
                    (_g2915129293_ _g2915329297_)))))
        (_g2915029347_ _$stx29147_))))
  (define |gerbil/core$<module-sugar>[:0:]#only-in|
    (gx#make-import-expander
     (lambda (_stx29352_)
       (let* ((_g2935529379_
               (lambda (_g2935629375_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2935629375_)))
              (_g2935429501_
               (lambda (_g2935629383_)
                 (if (gx#stx-pair? _g2935629383_)
                     (let ((_e2935929386_ (gx#syntax-e _g2935629383_)))
                       (let ((_hd2936029390_ (##car _e2935929386_))
                             (_tl2936129393_ (##cdr _e2935929386_)))
                         (if (gx#stx-pair? _tl2936129393_)
                             (let ((_e2936229396_
                                    (gx#syntax-e _tl2936129393_)))
                               (let ((_hd2936329400_ (##car _e2936229396_))
                                     (_tl2936429403_ (##cdr _e2936229396_)))
                                 (if (gx#stx-pair/null? _tl2936429403_)
                                     (if (fx>= (gx#stx-length _tl2936429403_)
                                               '0)
                                         (let ((_g31092_
                                                (gx#syntax-split-splice
                                                 _tl2936429403_
                                                 '0)))
                                           (begin
                                             (let ((_g31093_
                                                    (values-count _g31092_)))
                                               (if (not (fx= _g31093_ 2))
                                                   (error "Context expects 2 values"
                                                          _g31093_)))
                                             (let ((_target2936529406_
                                                    (values-ref _g31092_ 0))
                                                   (_tl2936729409_
                                                    (values-ref _g31092_ 1)))
                                               (if (gx#stx-null?
                                                    _tl2936729409_)
                                                   (letrec ((_loop2936829412_
                                                             (lambda (_hd2936629416_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id2937229419_)
                       (if (gx#stx-pair? _hd2936629416_)
                           (let ((_e2936929422_ (gx#syntax-e _hd2936629416_)))
                             (let ((_lp-hd2937029426_ (##car _e2936929422_))
                                   (_lp-tl2937129429_ (##cdr _e2936929422_)))
                               (_loop2936829412_
                                _lp-tl2937129429_
                                (cons _lp-hd2937029426_ _id2937229419_))))
                           (let ((_id2937329432_ (reverse _id2937229419_)))
                             ((lambda (_L29436_ _L29438_)
                                (if (gx#identifier-list?
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g2945529458_
                                                       _g2945629461_)
                                                (cons _g2945529458_
                                                      _g2945629461_))
                                              '()
                                              _L29436_)))
                                    (let* ((_keys29472_
                                            (gx#stx-map
                                             gx#core-identifier-key
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g2946329466_
                                                               _g2946429469_)
                                                        (cons _g2946329466_
                                                              _g2946429469_))
                                                      '()
                                                      _L29436_))))
                                           (_keytab29483_
                                            (let ((_ht29475_
                                                   (make-hash-table)))
                                              (begin
                                                (for-each
                                                 (lambda (_g2947729479_)
                                                   (hash-put!
                                                    _ht29475_
                                                    _g2947729479_
                                                    '#t))
                                                 _keys29472_)
                                                _ht29475_)))
                                           (_imports29486_
                                            (gx#core-expand-import-source
                                             _L29438_))
                                           (_fold-e29496_
                                            (letrec ((_fold-e29489_
                                                      (lambda (_in29492_
                                                               _r29494_)
                                                        (if (gx#module-import?
                                                             _in29492_)
                                                            (if (hash-get
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _keytab29483_
                         (gx#module-import-name _in29492_))
                        (cons _in29492_ _r29494_)
                        _r29494_)
                    (if (gx#import-set? _in29492_)
                        (foldl _fold-e29489_
                               _r29494_
                               (gx#import-set-imports _in29492_))
                        _r29494_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _fold-e29489_)))
                                      (cons 'begin:
                                            (foldl _fold-e29496_
                                                   '()
                                                   _imports29486_)))
                                    (_g2935529379_ _g2935629383_)))
                              _id2937329432_
                              _hd2936329400_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2936829412_
                                                      _target2936529406_
                                                      '()))
                                                   (_g2935529379_
                                                    _g2935629383_)))))
                                         (_g2935529379_ _g2935629383_))
                                     (_g2935529379_ _g2935629383_))))
                             (_g2935529379_ _g2935629383_))))
                     (_g2935529379_ _g2935629383_)))))
         (_g2935429501_ _stx29352_)))))
  (define |gerbil/core$<module-sugar>[:0:]#except-in|
    (gx#make-import-expander
     (lambda (_stx29506_)
       (let* ((_g2950929533_
               (lambda (_g2951029529_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2951029529_)))
              (_g2950829655_
               (lambda (_g2951029537_)
                 (if (gx#stx-pair? _g2951029537_)
                     (let ((_e2951329540_ (gx#syntax-e _g2951029537_)))
                       (let ((_hd2951429544_ (##car _e2951329540_))
                             (_tl2951529547_ (##cdr _e2951329540_)))
                         (if (gx#stx-pair? _tl2951529547_)
                             (let ((_e2951629550_
                                    (gx#syntax-e _tl2951529547_)))
                               (let ((_hd2951729554_ (##car _e2951629550_))
                                     (_tl2951829557_ (##cdr _e2951629550_)))
                                 (if (gx#stx-pair/null? _tl2951829557_)
                                     (if (fx>= (gx#stx-length _tl2951829557_)
                                               '0)
                                         (let ((_g31094_
                                                (gx#syntax-split-splice
                                                 _tl2951829557_
                                                 '0)))
                                           (begin
                                             (let ((_g31095_
                                                    (values-count _g31094_)))
                                               (if (not (fx= _g31095_ 2))
                                                   (error "Context expects 2 values"
                                                          _g31095_)))
                                             (let ((_target2951929560_
                                                    (values-ref _g31094_ 0))
                                                   (_tl2952129563_
                                                    (values-ref _g31094_ 1)))
                                               (if (gx#stx-null?
                                                    _tl2952129563_)
                                                   (letrec ((_loop2952229566_
                                                             (lambda (_hd2952029570_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id2952629573_)
                       (if (gx#stx-pair? _hd2952029570_)
                           (let ((_e2952329576_ (gx#syntax-e _hd2952029570_)))
                             (let ((_lp-hd2952429580_ (##car _e2952329576_))
                                   (_lp-tl2952529583_ (##cdr _e2952329576_)))
                               (_loop2952229566_
                                _lp-tl2952529583_
                                (cons _lp-hd2952429580_ _id2952629573_))))
                           (let ((_id2952729586_ (reverse _id2952629573_)))
                             ((lambda (_L29590_ _L29592_)
                                (if (gx#identifier-list?
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g2960929612_
                                                       _g2961029615_)
                                                (cons _g2960929612_
                                                      _g2961029615_))
                                              '()
                                              _L29590_)))
                                    (let* ((_keys29626_
                                            (gx#stx-map
                                             gx#core-identifier-key
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g2961729620_
                                                               _g2961829623_)
                                                        (cons _g2961729620_
                                                              _g2961829623_))
                                                      '()
                                                      _L29590_))))
                                           (_keytab29637_
                                            (let ((_ht29629_
                                                   (make-hash-table)))
                                              (begin
                                                (for-each
                                                 (lambda (_g2963129633_)
                                                   (hash-put!
                                                    _ht29629_
                                                    _g2963129633_
                                                    '#t))
                                                 _keys29626_)
                                                _ht29629_)))
                                           (_imports29640_
                                            (gx#core-expand-import-source
                                             _L29592_))
                                           (_fold-e29650_
                                            (letrec ((_fold-e29643_
                                                      (lambda (_in29646_
                                                               _r29648_)
                                                        (if (gx#module-import?
                                                             _in29646_)
                                                            (if (hash-get
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _keytab29637_
                         (gx#module-import-name _in29646_))
                        _r29648_
                        (cons _in29646_ _r29648_))
                    (if (gx#import-set? _in29646_)
                        (foldl _fold-e29643_
                               _r29648_
                               (gx#import-set-imports _in29646_))
                        (cons _in29646_ _r29648_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _fold-e29643_)))
                                      (cons 'begin:
                                            (foldl _fold-e29650_
                                                   '()
                                                   _imports29640_)))
                                    (_g2950929533_ _g2951029537_)))
                              _id2952729586_
                              _hd2951729554_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2952229566_
                                                      _target2951929560_
                                                      '()))
                                                   (_g2950929533_
                                                    _g2951029537_)))))
                                         (_g2950929533_ _g2951029537_))
                                     (_g2950929533_ _g2951029537_))))
                             (_g2950929533_ _g2951029537_))))
                     (_g2950929533_ _g2951029537_)))))
         (_g2950829655_ _stx29506_)))))
  (define |gerbil/core$<module-sugar>[1]#module-import-rename|
    (lambda (_in29707_ _rename29709_)
      (gx#make-module-import
       (gx#module-import-source _in29707_)
       _rename29709_
       (gx#module-import-phi _in29707_)
       (gx#module-import-weak? _in29707_))))
  (define |gerbil/core$<module-sugar>[1]#prefix-identifier-key|
    (lambda (_name29660_ _pre29662_)
      (let* ((_name2966329671_ _name29660_)
             (_E2966629677_
              (lambda () (error '"No clause matching" _name2966329671_)))
             (_else2966529683_
              (lambda () (make-symbol _pre29662_ _name29660_)))
             (_K2966729691_
              (lambda (_mark29687_ _id29689_)
                (cons (make-symbol _pre29662_ _id29689_) _mark29687_))))
        (if (##pair? _name2966329671_)
            (let ((_hd2966829695_ (##car _name2966329671_))
                  (_tl2966929698_ (##cdr _name2966329671_)))
              (let* ((_id29701_ _hd2966829695_) (_mark29704_ _tl2966929698_))
                (_K2966729691_ _mark29704_ _id29701_)))
            (_else2966529683_)))))
  (define |gerbil/core$<module-sugar>[:0:]#rename-in|
    (gx#make-import-expander
     (lambda (_stx29711_)
       (let* ((_g2971429747_
               (lambda (_g2971529743_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2971529743_)))
              (_g2971329933_
               (lambda (_g2971529751_)
                 (if (gx#stx-pair? _g2971529751_)
                     (let ((_e2971929754_ (gx#syntax-e _g2971529751_)))
                       (let ((_hd2972029758_ (##car _e2971929754_))
                             (_tl2972129761_ (##cdr _e2971929754_)))
                         (if (gx#stx-pair? _tl2972129761_)
                             (let ((_e2972229764_
                                    (gx#syntax-e _tl2972129761_)))
                               (let ((_hd2972329768_ (##car _e2972229764_))
                                     (_tl2972429771_ (##cdr _e2972229764_)))
                                 (if (gx#stx-pair/null? _tl2972429771_)
                                     (if (fx>= (gx#stx-length _tl2972429771_)
                                               '0)
                                         (let ((_g31096_
                                                (gx#syntax-split-splice
                                                 _tl2972429771_
                                                 '0)))
                                           (begin
                                             (let ((_g31097_
                                                    (values-count _g31096_)))
                                               (if (not (fx= _g31097_ 2))
                                                   (error "Context expects 2 values"
                                                          _g31097_)))
                                             (let ((_target2972529774_
                                                    (values-ref _g31096_ 0))
                                                   (_tl2972729777_
                                                    (values-ref _g31096_ 1)))
                                               (if (gx#stx-null?
                                                    _tl2972729777_)
                                                   (letrec ((_loop2972829780_
                                                             (lambda (_hd2972629784_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _new-id2973229787_
                              _id2973329789_)
                       (if (gx#stx-pair? _hd2972629784_)
                           (let ((_e2972929792_ (gx#syntax-e _hd2972629784_)))
                             (let ((_lp-hd2973029796_ (##car _e2972929792_))
                                   (_lp-tl2973129799_ (##cdr _e2972929792_)))
                               (if (gx#stx-pair? _lp-hd2973029796_)
                                   (let ((_e2973629802_
                                          (gx#syntax-e _lp-hd2973029796_)))
                                     (let ((_hd2973729806_
                                            (##car _e2973629802_))
                                           (_tl2973829809_
                                            (##cdr _e2973629802_)))
                                       (if (gx#stx-pair? _tl2973829809_)
                                           (let ((_e2973929812_
                                                  (gx#syntax-e
                                                   _tl2973829809_)))
                                             (let ((_hd2974029816_
                                                    (##car _e2973929812_))
                                                   (_tl2974129819_
                                                    (##cdr _e2973929812_)))
                                               (if (gx#stx-null?
                                                    _tl2974129819_)
                                                   (_loop2972829780_
                                                    _lp-tl2973129799_
                                                    (cons _hd2974029816_
                                                          _new-id2973229787_)
                                                    (cons _hd2973729806_
                                                          _id2973329789_))
                                                   (_g2971429747_
                                                    _g2971529751_))))
                                           (_g2971429747_ _g2971529751_))))
                                   (_g2971429747_ _g2971529751_))))
                           (let ((_new-id2973429822_
                                  (reverse _new-id2973229787_))
                                 (_id2973529825_ (reverse _id2973329789_)))
                             ((lambda (_L29828_ _L29830_ _L29831_)
                                (if (if (gx#identifier-list?
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g2984929852_
                                                           _g2985029855_)
                                                    (cons _g2984929852_
                                                          _g2985029855_))
                                                  '()
                                                  _L29830_)))
                                        (gx#identifier-list?
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g2985729860_
                                                           _g2985829863_)
                                                    (cons _g2985729860_
                                                          _g2985829863_))
                                                  '()
                                                  _L29828_)))
                                        '#f)
                                    (let* ((_keytab29866_ (make-hash-table))
                                           (_found29869_ (make-hash-table))
                                           (_g31098_
                                            (for-each
                                             (lambda (_id29872_ _new-id29874_)
                                               (hash-put!
                                                _keytab29866_
                                                (gx#core-identifier-key
                                                 _id29872_)
                                                (gx#core-identifier-key
                                                 _new-id29874_)))
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g2987529878_
                                                               _g2987629881_)
                                                        (cons _g2987529878_
                                                              _g2987629881_))
                                                      '()
                                                      _L29830_))
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g2988329886_
                                                               _g2988429889_)
                                                        (cons _g2988329886_
                                                              _g2988429889_))
                                                      '()
                                                      _L29828_))))
                                           (_imports29894_
                                            (gx#core-expand-import-source
                                             _L29831_))
                                           (_fold-e29914_
                                            (letrec ((_fold-e29897_
                                                      (lambda (_in29900_
                                                               _r29902_)
                                                        (if (gx#module-import?
                                                             _in29900_)
                                                            (let* ((_name29904_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#module-import-name _in29900_))
                           (_$e29907_ (hash-get _keytab29866_ _name29904_)))
                      (if _$e29907_
                          ((lambda (_rename29911_)
                             (begin
                               (hash-put! _found29869_ _name29904_ '#t)
                               (cons (|gerbil/core$<module-sugar>[1]#module-import-rename|
                                      _in29900_
                                      _rename29911_)
                                     _r29902_)))
                           _$e29907_)
                          (cons _in29900_ _r29902_)))
                    (if (gx#import-set? _in29900_)
                        (foldl _fold-e29897_
                               _r29902_
                               (gx#import-set-imports _in29900_))
                        (cons _in29900_ _r29902_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _fold-e29897_))
                                           (_new-imports29917_
                                            (foldl _fold-e29914_
                                                   '()
                                                   _imports29894_)))
                                      (begin
                                        (for-each
                                         (lambda (_id29922_)
                                           (if (hash-get
                                                _found29869_
                                                (gx#core-identifier-key
                                                 _id29922_))
                                               '#!void
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; identifier is not in the import set"
                                                _stx29711_
                                                _id29922_)))
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g2992429927_
                                                           _g2992529930_)
                                                    (cons _g2992429927_
                                                          _g2992529930_))
                                                  '()
                                                  _L29830_)))
                                        (cons 'begin: _new-imports29917_)))
                                    (_g2971429747_ _g2971529751_)))
                              _new-id2973429822_
                              _id2973529825_
                              _hd2972329768_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2972829780_
                                                      _target2972529774_
                                                      '()
                                                      '()))
                                                   (_g2971429747_
                                                    _g2971529751_)))))
                                         (_g2971429747_ _g2971529751_))
                                     (_g2971429747_ _g2971529751_))))
                             (_g2971429747_ _g2971529751_))))
                     (_g2971429747_ _g2971529751_)))))
         (_g2971329933_ _stx29711_)))))
  (define |gerbil/core$<module-sugar>[:0:]#prefix-in|
    (gx#make-import-expander
     (lambda (_stx29939_)
       (let* ((_g2994229960_
               (lambda (_g2994329956_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2994329956_)))
              (_g2994130039_
               (lambda (_g2994329964_)
                 (if (gx#stx-pair? _g2994329964_)
                     (let ((_e2994629967_ (gx#syntax-e _g2994329964_)))
                       (let ((_hd2994729971_ (##car _e2994629967_))
                             (_tl2994829974_ (##cdr _e2994629967_)))
                         (if (gx#stx-pair? _tl2994829974_)
                             (let ((_e2994929977_
                                    (gx#syntax-e _tl2994829974_)))
                               (let ((_hd2995029981_ (##car _e2994929977_))
                                     (_tl2995129984_ (##cdr _e2994929977_)))
                                 (if (gx#stx-pair? _tl2995129984_)
                                     (let ((_e2995229987_
                                            (gx#syntax-e _tl2995129984_)))
                                       (let ((_hd2995329991_
                                              (##car _e2995229987_))
                                             (_tl2995429994_
                                              (##cdr _e2995229987_)))
                                         (if (gx#stx-null? _tl2995429994_)
                                             ((lambda (_L29997_ _L29999_)
                                                (if (gx#identifier? _L29997_)
                                                    (let* ((_pre30015_
                                                            (gx#stx-e
                                                             _L29997_))
                                                           (_imports30018_
                                                            (gx#core-expand-import-source
                                                             _L29999_))
                                                           (_rename-e30024_
                                                            (lambda (_name30021_)
                                                              (|gerbil/core$<module-sugar>[1]#prefix-identifier-key|
                                                               _name30021_
                                                               _pre30015_)))
                                                           (_fold-e30034_
                                                            (letrec ((_fold-e30027_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_in30030_ _r30032_)
                                (if (gx#module-import? _in30030_)
                                    (cons (|gerbil/core$<module-sugar>[1]#module-import-rename|
                                           _in30030_
                                           (_rename-e30024_
                                            (gx#module-import-name _in30030_)))
                                          _r30032_)
                                    (if (gx#import-set? _in30030_)
                                        (foldl _fold-e30027_
                                               _r30032_
                                               (gx#import-set-imports
                                                _in30030_))
                                        (cons _in30030_ _r30032_))))))
                      _fold-e30027_)))
              (cons 'begin: (foldl _fold-e30034_ '() _imports30018_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2994229960_
                                                     _g2994329964_)))
                                              _hd2995329991_
                                              _hd2995029981_)
                                             (_g2994229960_ _g2994329964_))))
                                     (_g2994229960_ _g2994329964_))))
                             (_g2994229960_ _g2994329964_))))
                     (_g2994229960_ _g2994329964_)))))
         (_g2994130039_ _stx29939_)))))
  (define |gerbil/core$<module-sugar>[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_stx30043_)
       (let* ((_g3004630070_
               (lambda (_g3004730066_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g3004730066_)))
              (_g3004530192_
               (lambda (_g3004730074_)
                 (if (gx#stx-pair? _g3004730074_)
                     (let ((_e3005030077_ (gx#syntax-e _g3004730074_)))
                       (let ((_hd3005130081_ (##car _e3005030077_))
                             (_tl3005230084_ (##cdr _e3005030077_)))
                         (if (gx#stx-pair? _tl3005230084_)
                             (let ((_e3005330087_
                                    (gx#syntax-e _tl3005230084_)))
                               (let ((_hd3005430091_ (##car _e3005330087_))
                                     (_tl3005530094_ (##cdr _e3005330087_)))
                                 (if (gx#stx-pair/null? _tl3005530094_)
                                     (if (fx>= (gx#stx-length _tl3005530094_)
                                               '0)
                                         (let ((_g31099_
                                                (gx#syntax-split-splice
                                                 _tl3005530094_
                                                 '0)))
                                           (begin
                                             (let ((_g31100_
                                                    (values-count _g31099_)))
                                               (if (not (fx= _g31100_ 2))
                                                   (error "Context expects 2 values"
                                                          _g31100_)))
                                             (let ((_target3005630097_
                                                    (values-ref _g31099_ 0))
                                                   (_tl3005830100_
                                                    (values-ref _g31099_ 1)))
                                               (if (gx#stx-null?
                                                    _tl3005830100_)
                                                   (letrec ((_loop3005930103_
                                                             (lambda (_hd3005730107_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id3006330110_)
                       (if (gx#stx-pair? _hd3005730107_)
                           (let ((_e3006030113_ (gx#syntax-e _hd3005730107_)))
                             (let ((_lp-hd3006130117_ (##car _e3006030113_))
                                   (_lp-tl3006230120_ (##cdr _e3006030113_)))
                               (_loop3005930103_
                                _lp-tl3006230120_
                                (cons _lp-hd3006130117_ _id3006330110_))))
                           (let ((_id3006430123_ (reverse _id3006330110_)))
                             ((lambda (_L30127_ _L30129_)
                                (if (gx#identifier-list?
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g3014630149_
                                                       _g3014730152_)
                                                (cons _g3014630149_
                                                      _g3014730152_))
                                              '()
                                              _L30127_)))
                                    (let* ((_keys30163_
                                            (gx#stx-map
                                             gx#core-identifier-key
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g3015430157_
                                                               _g3015530160_)
                                                        (cons _g3015430157_
                                                              _g3015530160_))
                                                      '()
                                                      _L30127_))))
                                           (_keytab30174_
                                            (let ((_ht30166_
                                                   (make-hash-table)))
                                              (begin
                                                (for-each
                                                 (lambda (_g3016830170_)
                                                   (hash-put!
                                                    _ht30166_
                                                    _g3016830170_
                                                    '#t))
                                                 _keys30163_)
                                                _ht30166_)))
                                           (_exports30177_
                                            (gx#core-expand-export-source
                                             _L30129_))
                                           (_fold-e30187_
                                            (letrec ((_fold-e30180_
                                                      (lambda (_out30183_
                                                               _r30185_)
                                                        (if (gx#module-export?
                                                             _out30183_)
                                                            (if (hash-get
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _keytab30174_
                         (gx#module-export-name _out30183_))
                        _r30185_
                        (cons _out30183_ _r30185_))
                    (if (gx#export-set? _out30183_)
                        (foldl _fold-e30180_
                               _r30185_
                               (gx#export-set-exports _out30183_))
                        _r30185_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _fold-e30180_)))
                                      (cons 'begin:
                                            (foldl _fold-e30187_
                                                   '()
                                                   _exports30177_)))
                                    (_g3004630070_ _g3004730074_)))
                              _id3006430123_
                              _hd3005430091_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop3005930103_
                                                      _target3005630097_
                                                      '()))
                                                   (_g3004630070_
                                                    _g3004730074_)))))
                                         (_g3004630070_ _g3004730074_))
                                     (_g3004630070_ _g3004730074_))))
                             (_g3004630070_ _g3004730074_))))
                     (_g3004630070_ _g3004730074_)))))
         (_g3004530192_ _stx30043_)))))
  (define |gerbil/core$<module-sugar>[1]#module-export-rename|
    (lambda (_out30197_ _rename30199_)
      (gx#make-module-export
       (gx#module-export-context _out30197_)
       (gx#module-export-key _out30197_)
       (gx#module-export-phi _out30197_)
       _rename30199_
       (gx#module-export-weak? _out30197_))))
  (define |gerbil/core$<module-sugar>[:0:]#rename-out|
    (gx#make-export-expander
     (lambda (_stx30201_)
       (let* ((_g3020430237_
               (lambda (_g3020530233_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g3020530233_)))
              (_g3020330423_
               (lambda (_g3020530241_)
                 (if (gx#stx-pair? _g3020530241_)
                     (let ((_e3020930244_ (gx#syntax-e _g3020530241_)))
                       (let ((_hd3021030248_ (##car _e3020930244_))
                             (_tl3021130251_ (##cdr _e3020930244_)))
                         (if (gx#stx-pair? _tl3021130251_)
                             (let ((_e3021230254_
                                    (gx#syntax-e _tl3021130251_)))
                               (let ((_hd3021330258_ (##car _e3021230254_))
                                     (_tl3021430261_ (##cdr _e3021230254_)))
                                 (if (gx#stx-pair/null? _tl3021430261_)
                                     (if (fx>= (gx#stx-length _tl3021430261_)
                                               '0)
                                         (let ((_g31101_
                                                (gx#syntax-split-splice
                                                 _tl3021430261_
                                                 '0)))
                                           (begin
                                             (let ((_g31102_
                                                    (values-count _g31101_)))
                                               (if (not (fx= _g31102_ 2))
                                                   (error "Context expects 2 values"
                                                          _g31102_)))
                                             (let ((_target3021530264_
                                                    (values-ref _g31101_ 0))
                                                   (_tl3021730267_
                                                    (values-ref _g31101_ 1)))
                                               (if (gx#stx-null?
                                                    _tl3021730267_)
                                                   (letrec ((_loop3021830270_
                                                             (lambda (_hd3021630274_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _new-id3022230277_
                              _id3022330279_)
                       (if (gx#stx-pair? _hd3021630274_)
                           (let ((_e3021930282_ (gx#syntax-e _hd3021630274_)))
                             (let ((_lp-hd3022030286_ (##car _e3021930282_))
                                   (_lp-tl3022130289_ (##cdr _e3021930282_)))
                               (if (gx#stx-pair? _lp-hd3022030286_)
                                   (let ((_e3022630292_
                                          (gx#syntax-e _lp-hd3022030286_)))
                                     (let ((_hd3022730296_
                                            (##car _e3022630292_))
                                           (_tl3022830299_
                                            (##cdr _e3022630292_)))
                                       (if (gx#stx-pair? _tl3022830299_)
                                           (let ((_e3022930302_
                                                  (gx#syntax-e
                                                   _tl3022830299_)))
                                             (let ((_hd3023030306_
                                                    (##car _e3022930302_))
                                                   (_tl3023130309_
                                                    (##cdr _e3022930302_)))
                                               (if (gx#stx-null?
                                                    _tl3023130309_)
                                                   (_loop3021830270_
                                                    _lp-tl3022130289_
                                                    (cons _hd3023030306_
                                                          _new-id3022230277_)
                                                    (cons _hd3022730296_
                                                          _id3022330279_))
                                                   (_g3020430237_
                                                    _g3020530241_))))
                                           (_g3020430237_ _g3020530241_))))
                                   (_g3020430237_ _g3020530241_))))
                           (let ((_new-id3022430312_
                                  (reverse _new-id3022230277_))
                                 (_id3022530315_ (reverse _id3022330279_)))
                             ((lambda (_L30318_ _L30320_ _L30321_)
                                (if (if (gx#identifier-list?
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g3033930342_
                                                           _g3034030345_)
                                                    (cons _g3033930342_
                                                          _g3034030345_))
                                                  '()
                                                  _L30320_)))
                                        (gx#identifier-list?
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g3034730350_
                                                           _g3034830353_)
                                                    (cons _g3034730350_
                                                          _g3034830353_))
                                                  '()
                                                  _L30318_)))
                                        '#f)
                                    (let* ((_keytab30356_ (make-hash-table))
                                           (_found30359_ (make-hash-table))
                                           (_g31103_
                                            (for-each
                                             (lambda (_id30362_ _new-id30364_)
                                               (hash-put!
                                                _keytab30356_
                                                (gx#core-identifier-key
                                                 _id30362_)
                                                (gx#core-identifier-key
                                                 _new-id30364_)))
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g3036530368_
                                                               _g3036630371_)
                                                        (cons _g3036530368_
                                                              _g3036630371_))
                                                      '()
                                                      _L30320_))
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g3037330376_
                                                               _g3037430379_)
                                                        (cons _g3037330376_
                                                              _g3037430379_))
                                                      '()
                                                      _L30318_))))
                                           (_exports30384_
                                            (gx#core-expand-export-source
                                             _L30321_))
                                           (_fold-e30404_
                                            (letrec ((_fold-e30387_
                                                      (lambda (_out30390_
                                                               _r30392_)
                                                        (if (gx#module-export?
                                                             _out30390_)
                                                            (let* ((_name30394_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#module-export-name _out30390_))
                           (_$e30397_ (hash-get _keytab30356_ _name30394_)))
                      (if _$e30397_
                          ((lambda (_rename30401_)
                             (begin
                               (hash-put! _found30359_ _name30394_ '#t)
                               (cons (|gerbil/core$<module-sugar>[1]#module-export-rename|
                                      _out30390_
                                      _rename30401_)
                                     _r30392_)))
                           _$e30397_)
                          (cons _out30390_ _r30392_)))
                    (if (gx#export-set? _out30390_)
                        (foldl _fold-e30387_
                               _r30392_
                               (gx#export-set-exports _out30390_))
                        (cons _out30390_ _r30392_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _fold-e30387_))
                                           (_new-exports30407_
                                            (foldl _fold-e30404_
                                                   '()
                                                   _exports30384_)))
                                      (begin
                                        (for-each
                                         (lambda (_id30412_)
                                           (if (hash-get
                                                _found30359_
                                                (gx#core-identifier-key
                                                 _id30412_))
                                               '#!void
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; identifier is not in the export set"
                                                _stx30201_
                                                _id30412_)))
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g3041430417_
                                                           _g3041530420_)
                                                    (cons _g3041430417_
                                                          _g3041530420_))
                                                  '()
                                                  _L30320_)))
                                        (cons 'begin: _new-exports30407_)))
                                    (_g3020430237_ _g3020530241_)))
                              _new-id3022430312_
                              _id3022530315_
                              _hd3021330258_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop3021830270_
                                                      _target3021530264_
                                                      '()
                                                      '()))
                                                   (_g3020430237_
                                                    _g3020530241_)))))
                                         (_g3020430237_ _g3020530241_))
                                     (_g3020430237_ _g3020530241_))))
                             (_g3020430237_ _g3020530241_))))
                     (_g3020430237_ _g3020530241_)))))
         (_g3020330423_ _stx30201_)))))
  (define |gerbil/core$<module-sugar>[:0:]#prefix-out|
    (gx#make-export-expander
     (lambda (_stx30429_)
       (let* ((_g3043230450_
               (lambda (_g3043330446_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g3043330446_)))
              (_g3043130529_
               (lambda (_g3043330454_)
                 (if (gx#stx-pair? _g3043330454_)
                     (let ((_e3043630457_ (gx#syntax-e _g3043330454_)))
                       (let ((_hd3043730461_ (##car _e3043630457_))
                             (_tl3043830464_ (##cdr _e3043630457_)))
                         (if (gx#stx-pair? _tl3043830464_)
                             (let ((_e3043930467_
                                    (gx#syntax-e _tl3043830464_)))
                               (let ((_hd3044030471_ (##car _e3043930467_))
                                     (_tl3044130474_ (##cdr _e3043930467_)))
                                 (if (gx#stx-pair? _tl3044130474_)
                                     (let ((_e3044230477_
                                            (gx#syntax-e _tl3044130474_)))
                                       (let ((_hd3044330481_
                                              (##car _e3044230477_))
                                             (_tl3044430484_
                                              (##cdr _e3044230477_)))
                                         (if (gx#stx-null? _tl3044430484_)
                                             ((lambda (_L30487_ _L30489_)
                                                (if (gx#identifier? _L30487_)
                                                    (let* ((_pre30505_
                                                            (gx#stx-e
                                                             _L30487_))
                                                           (_exports30508_
                                                            (gx#core-expand-export-source
                                                             _L30489_))
                                                           (_rename-e30514_
                                                            (lambda (_name30511_)
                                                              (|gerbil/core$<module-sugar>[1]#prefix-identifier-key|
                                                               _name30511_
                                                               _pre30505_)))
                                                           (_fold-e30524_
                                                            (letrec ((_fold-e30517_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_out30520_ _r30522_)
                                (if (gx#module-export? _out30520_)
                                    (cons (|gerbil/core$<module-sugar>[1]#module-export-rename|
                                           _out30520_
                                           (_rename-e30514_
                                            (gx#module-export-name
                                             _out30520_)))
                                          _r30522_)
                                    (if (gx#export-set? _out30520_)
                                        (foldl _fold-e30517_
                                               _r30522_
                                               (gx#export-set-exports
                                                _out30520_))
                                        (cons _out30520_ _r30522_))))))
                      _fold-e30517_)))
              (cons 'begin: (foldl _fold-e30524_ '() _exports30508_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3043230450_
                                                     _g3043330454_)))
                                              _hd3044330481_
                                              _hd3044030471_)
                                             (_g3043230450_ _g3043330454_))))
                                     (_g3043230450_ _g3043330454_))))
                             (_g3043230450_ _g3043330454_))))
                     (_g3043230450_ _g3043330454_)))))
         (_g3043130529_ _stx30429_)))))
  (define |gerbil/core$<module-sugar>[:0:]#struct-out|
    (gx#make-export-expander
     (lambda (_stx30533_)
       (let* ((_g3053630556_
               (lambda (_g3053730552_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g3053730552_)))
              (_g3053530791_
               (lambda (_g3053730560_)
                 (if (gx#stx-pair? _g3053730560_)
                     (let ((_e3053930563_ (gx#syntax-e _g3053730560_)))
                       (let ((_hd3054030567_ (##car _e3053930563_))
                             (_tl3054130570_ (##cdr _e3053930563_)))
                         (if (gx#stx-pair/null? _tl3054130570_)
                             (if (fx>= (gx#stx-length _tl3054130570_) '0)
                                 (let ((_g31104_
                                        (gx#syntax-split-splice
                                         _tl3054130570_
                                         '0)))
                                   (begin
                                     (let ((_g31105_ (values-count _g31104_)))
                                       (if (not (fx= _g31105_ 2))
                                           (error "Context expects 2 values"
                                                  _g31105_)))
                                     (let ((_target3054230573_
                                            (values-ref _g31104_ 0))
                                           (_tl3054430576_
                                            (values-ref _g31104_ 1)))
                                       (if (gx#stx-null? _tl3054430576_)
                                           (letrec ((_loop3054530579_
                                                     (lambda (_hd3054330583_
                                                              _id3054930586_)
                                                       (if (gx#stx-pair?
                                                            _hd3054330583_)
                                                           (let ((_e3054630589_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd3054330583_)))
                     (let ((_lp-hd3054730593_ (##car _e3054630589_))
                           (_lp-tl3054830596_ (##cdr _e3054630589_)))
                       (_loop3054530579_
                        _lp-tl3054830596_
                        (cons _lp-hd3054730593_ _id3054930586_))))
                   (let ((_id3055030599_ (reverse _id3054930586_)))
                     ((lambda (_L30603_)
                        (let _lp30619_ ((_rest30622_
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g3078230785_
                                                           _g3078330788_)
                                                    (cons _g3078230785_
                                                          _g3078330788_))
                                                  '()
                                                  _L30603_)))
                                        (_ids30624_ '()))
                          (let* ((_g3062730639_
                                  (lambda (_g3062830635_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g3062830635_)))
                                 (_g3062630650_
                                  (lambda (_g3062830643_)
                                    ((lambda () (cons 'begin: _ids30624_)))))
                                 (_g3062530779_
                                  (lambda (_g3062830654_)
                                    (if (gx#stx-pair? _g3062830654_)
                                        (let ((_e3063130657_
                                               (gx#syntax-e _g3062830654_)))
                                          (let ((_hd3063230661_
                                                 (##car _e3063130657_))
                                                (_tl3063330664_
                                                 (##cdr _e3063130657_)))
                                            ((lambda (_L30667_ _L30669_)
                                               (let ((_info30684_
                                                      (gx#syntax-local-value
                                                       _L30669_
                                                       false)))
                                                 (if (|gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info?|
                                                      _info30684_)
                                                     (let* ((_g3068630703_
                                                             (slot-ref
                                                              _info30684_
                                                              'expander-identifiers))
                                                            (_E3068830709_
                                                             (lambda ()
                                                               (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g3068630703_)))
                    (_K3068930721_
                     (lambda (_setf30713_
                              _getf30715_
                              _type?30716_
                              _make-type30717_
                              _type::t30718_
                              _super30719_)
                       (_lp30619_
                        _L30667_
                        (cons _L30669_
                              (cons _type::t30718_
                                    (cons _make-type30717_
                                          (cons _type?30716_
                                                (foldr cons
                                                       (foldr cons
                                                              _ids30624_
                                                              _setf30713_)
                                                       _getf30715_)))))))))
               (if (##pair? _g3068630703_)
                   (let ((_hd3069030725_ (##car _g3068630703_))
                         (_tl3069130728_ (##cdr _g3068630703_)))
                     (let ((_super30731_ _hd3069030725_))
                       (if (##pair? _tl3069130728_)
                           (let ((_hd3069230734_ (##car _tl3069130728_))
                                 (_tl3069330737_ (##cdr _tl3069130728_)))
                             (let ((_type::t30740_ _hd3069230734_))
                               (if (##pair? _tl3069330737_)
                                   (let ((_hd3069430743_
                                          (##car _tl3069330737_))
                                         (_tl3069530746_
                                          (##cdr _tl3069330737_)))
                                     (let ((_make-type30749_ _hd3069430743_))
                                       (if (##pair? _tl3069530746_)
                                           (let ((_hd3069630752_
                                                  (##car _tl3069530746_))
                                                 (_tl3069730755_
                                                  (##cdr _tl3069530746_)))
                                             (let ((_type?30758_
                                                    _hd3069630752_))
                                               (if (##pair? _tl3069730755_)
                                                   (let ((_hd3069830761_
                                                          (##car _tl3069730755_))
                                                         (_tl3069930764_
                                                          (##cdr _tl3069730755_)))
                                                     (let ((_getf30767_
                                                            _hd3069830761_))
                                                       (if (##pair? _tl3069930764_)
                                                           (let ((_hd3070030770_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##car _tl3069930764_))
                         (_tl3070130773_ (##cdr _tl3069930764_)))
                     (let ((_setf30776_ _hd3070030770_))
                       (if (##null? _tl3070130773_)
                           (_K3068930721_
                            _setf30776_
                            _getf30767_
                            _type?30758_
                            _make-type30749_
                            _type::t30740_
                            _super30731_)
                           (_E3068830709_))))
                   (_E3068830709_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E3068830709_))))
                                           (_E3068830709_))))
                                   (_E3068830709_))))
                           (_E3068830709_))))
                   (_E3068830709_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Incomplete type info"
                                                      _stx30533_
                                                      _L30669_))))
                                             _tl3063330664_
                                             _hd3063230661_)))
                                        (_g3062630650_ _g3062830654_)))))
                            (_g3062530779_ _rest30622_))))
                      _id3055030599_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop3054530579_
                                              _target3054230573_
                                              '()))
                                           (_g3053630556_ _g3053730560_)))))
                                 (_g3053630556_ _g3053730560_))
                             (_g3053630556_ _g3053730560_))))
                     (_g3053630556_ _g3053730560_)))))
         (_g3053530791_ _stx30533_))))))
