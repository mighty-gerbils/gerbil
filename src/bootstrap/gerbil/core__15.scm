(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<module-sugar>[:0:]#require|
    (lambda (_$stx28844_)
      (let* ((_g2884928868_
              (lambda (_g2885028864_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2885028864_)))
             (_g2884828914_
              (lambda (_g2885028872_)
                (if (gx#stx-pair? _g2885028872_)
                    (let ((_e2885728875_ (gx#syntax-e _g2885028872_)))
                      (let ((_hd2885828879_ (##car _e2885728875_))
                            (_tl2885928882_ (##cdr _e2885728875_)))
                        (if (gx#stx-pair? _tl2885928882_)
                            (let ((_e2886028885_ (gx#syntax-e _tl2885928882_)))
                              (let ((_hd2886128889_ (##car _e2886028885_))
                                    (_tl2886228892_ (##cdr _e2886028885_)))
                                ((lambda (_L28895_ _L28897_ _L28898_)
                                   (cons (gx#datum->syntax '#f 'cond-expand)
                                         (cons (cons _L28897_
                                                     (cons (cons _L28898_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L28895_)
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
                                     (cons _L28897_ '())))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                                 _tl2886228892_
                                 _hd2886128889_
                                 _hd2885828879_)))
                            (_g2884928868_ _g2885028872_))))
                    (_g2884928868_ _g2885028872_))))
             (_g2884728935_
              (lambda (_g2885028918_)
                (if (gx#stx-pair? _g2885028918_)
                    (let ((_e2885128921_ (gx#syntax-e _g2885028918_)))
                      (let ((_hd2885228925_ (##car _e2885128921_))
                            (_tl2885328928_ (##cdr _e2885128921_)))
                        (if (gx#stx-null? _tl2885328928_)
                            ((lambda ()
                               (cons (gx#datum->syntax '#f 'begin) '())))
                            (_g2884828914_ _g2885028918_))))
                    (_g2884828914_ _g2885028918_)))))
        (_g2884728935_ _$stx28844_))))
  (define |gerbil/core$<module-sugar>[:0:]#defsyntax-for-import|
    (lambda (_$stx28939_)
      (let* ((_g2894428984_
              (lambda (_g2894528980_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2894528980_)))
             (_g2894329085_
              (lambda (_g2894528988_)
                (if (gx#stx-pair? _g2894528988_)
                    (let ((_e2896128991_ (gx#syntax-e _g2894528988_)))
                      (let ((_hd2896228995_ (##car _e2896128991_))
                            (_tl2896328998_ (##cdr _e2896128991_)))
                        (if (gx#stx-pair? _tl2896328998_)
                            (let ((_e2896429001_ (gx#syntax-e _tl2896328998_)))
                              (let ((_hd2896529005_ (##car _e2896429001_))
                                    (_tl2896629008_ (##cdr _e2896429001_)))
                                (if (gx#stx-pair? _hd2896529005_)
                                    (let ((_e2896729011_
                                           (gx#syntax-e _hd2896529005_)))
                                      (let ((_hd2896829015_
                                             (##car _e2896729011_))
                                            (_tl2896929018_
                                             (##cdr _e2896729011_)))
                                        (if (gx#stx-pair/null? _tl2896629008_)
                                            (if (fx>= (gx#stx-length
                                                       _tl2896629008_)
                                                      '0)
                                                (let ((_g31085_
                                                       (gx#syntax-split-splice
                                                        _tl2896629008_
                                                        '0)))
                                                  (begin
                                                    (let ((_g31086_
                                                           (values-count
                                                            _g31085_)))
                                                      (if (not (fx= _g31086_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g31086_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2897029021_
                                                           (values-ref
                                                            _g31085_
                                                            0))
                                                          (_tl2897229024_
                                                           (values-ref
                                                            _g31085_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl2897229024_)
                                                          (letrec ((_loop2897329027_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd2897129031_ _body2897729034_)
                              (if (gx#stx-pair? _hd2897129031_)
                                  (let ((_e2897429037_
                                         (gx#syntax-e _hd2897129031_)))
                                    (let ((_lp-hd2897529041_
                                           (##car _e2897429037_))
                                          (_lp-tl2897629044_
                                           (##cdr _e2897429037_)))
                                      (_loop2897329027_
                                       _lp-tl2897629044_
                                       (cons _lp-hd2897529041_
                                             _body2897729034_))))
                                  (let ((_body2897829047_
                                         (reverse _body2897729034_)))
                                    ((lambda (_L29051_
                                              _L29053_
                                              _L29054_
                                              _L29055_)
                                       (if (gx#identifier? _L29054_)
                                           (cons _L29055_
                                                 (cons _L29054_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'lambda)
                           (cons _L29053_
                                 (begin
                                   '#!void
                                   (foldr (lambda (_g2907629079_ _g2907729082_)
                                            (cons _g2907629079_ _g2907729082_))
                                          '()
                                          _L29051_))))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g2894428984_ _g2894528988_)))
                                     _body2897829047_
                                     _tl2896929018_
                                     _hd2896829015_
                                     _hd2896228995_))))))
                    (_loop2897329027_ _target2897029021_ '()))
                  (_g2894428984_ _g2894528988_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2894428984_ _g2894528988_))
                                            (_g2894428984_ _g2894528988_))))
                                    (_g2894428984_ _g2894528988_))))
                            (_g2894428984_ _g2894528988_))))
                    (_g2894428984_ _g2894528988_))))
             (_g2894229139_
              (lambda (_g2894529089_)
                (if (gx#stx-pair? _g2894529089_)
                    (let ((_e2894829092_ (gx#syntax-e _g2894529089_)))
                      (let ((_hd2894929096_ (##car _e2894829092_))
                            (_tl2895029099_ (##cdr _e2894829092_)))
                        (if (gx#stx-pair? _tl2895029099_)
                            (let ((_e2895129102_ (gx#syntax-e _tl2895029099_)))
                              (let ((_hd2895229106_ (##car _e2895129102_))
                                    (_tl2895329109_ (##cdr _e2895129102_)))
                                (if (gx#stx-pair? _tl2895329109_)
                                    (let ((_e2895429112_
                                           (gx#syntax-e _tl2895329109_)))
                                      (let ((_hd2895529116_
                                             (##car _e2895429112_))
                                            (_tl2895629119_
                                             (##cdr _e2895429112_)))
                                        (if (gx#stx-null? _tl2895629119_)
                                            ((lambda (_L29122_ _L29124_)
                                               (if (gx#identifier? _L29124_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'defsyntax)
                                                         (cons _L29124_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'make-import-expander)
                                   (cons _L29122_ '()))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2894329085_
                                                    _g2894529089_)))
                                             _hd2895529116_
                                             _hd2895229106_)
                                            (_g2894329085_ _g2894529089_))))
                                    (_g2894329085_ _g2894529089_))))
                            (_g2894329085_ _g2894529089_))))
                    (_g2894329085_ _g2894529089_)))))
        (_g2894229139_ _$stx28939_))))
  (define |gerbil/core$<module-sugar>[:0:]#defsyntax-for-export|
    (lambda (_$stx29144_)
      (let* ((_g2914929189_
              (lambda (_g2915029185_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2915029185_)))
             (_g2914829290_
              (lambda (_g2915029193_)
                (if (gx#stx-pair? _g2915029193_)
                    (let ((_e2916629196_ (gx#syntax-e _g2915029193_)))
                      (let ((_hd2916729200_ (##car _e2916629196_))
                            (_tl2916829203_ (##cdr _e2916629196_)))
                        (if (gx#stx-pair? _tl2916829203_)
                            (let ((_e2916929206_ (gx#syntax-e _tl2916829203_)))
                              (let ((_hd2917029210_ (##car _e2916929206_))
                                    (_tl2917129213_ (##cdr _e2916929206_)))
                                (if (gx#stx-pair? _hd2917029210_)
                                    (let ((_e2917229216_
                                           (gx#syntax-e _hd2917029210_)))
                                      (let ((_hd2917329220_
                                             (##car _e2917229216_))
                                            (_tl2917429223_
                                             (##cdr _e2917229216_)))
                                        (if (gx#stx-pair/null? _tl2917129213_)
                                            (if (fx>= (gx#stx-length
                                                       _tl2917129213_)
                                                      '0)
                                                (let ((_g31087_
                                                       (gx#syntax-split-splice
                                                        _tl2917129213_
                                                        '0)))
                                                  (begin
                                                    (let ((_g31088_
                                                           (values-count
                                                            _g31087_)))
                                                      (if (not (fx= _g31088_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g31088_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2917529226_
                                                           (values-ref
                                                            _g31087_
                                                            0))
                                                          (_tl2917729229_
                                                           (values-ref
                                                            _g31087_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl2917729229_)
                                                          (letrec ((_loop2917829232_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd2917629236_ _body2918229239_)
                              (if (gx#stx-pair? _hd2917629236_)
                                  (let ((_e2917929242_
                                         (gx#syntax-e _hd2917629236_)))
                                    (let ((_lp-hd2918029246_
                                           (##car _e2917929242_))
                                          (_lp-tl2918129249_
                                           (##cdr _e2917929242_)))
                                      (_loop2917829232_
                                       _lp-tl2918129249_
                                       (cons _lp-hd2918029246_
                                             _body2918229239_))))
                                  (let ((_body2918329252_
                                         (reverse _body2918229239_)))
                                    ((lambda (_L29256_
                                              _L29258_
                                              _L29259_
                                              _L29260_)
                                       (if (gx#identifier? _L29259_)
                                           (cons _L29260_
                                                 (cons _L29259_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'lambda)
                           (cons _L29258_
                                 (begin
                                   '#!void
                                   (foldr (lambda (_g2928129284_ _g2928229287_)
                                            (cons _g2928129284_ _g2928229287_))
                                          '()
                                          _L29256_))))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g2914929189_ _g2915029193_)))
                                     _body2918329252_
                                     _tl2917429223_
                                     _hd2917329220_
                                     _hd2916729200_))))))
                    (_loop2917829232_ _target2917529226_ '()))
                  (_g2914929189_ _g2915029193_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2914929189_ _g2915029193_))
                                            (_g2914929189_ _g2915029193_))))
                                    (_g2914929189_ _g2915029193_))))
                            (_g2914929189_ _g2915029193_))))
                    (_g2914929189_ _g2915029193_))))
             (_g2914729344_
              (lambda (_g2915029294_)
                (if (gx#stx-pair? _g2915029294_)
                    (let ((_e2915329297_ (gx#syntax-e _g2915029294_)))
                      (let ((_hd2915429301_ (##car _e2915329297_))
                            (_tl2915529304_ (##cdr _e2915329297_)))
                        (if (gx#stx-pair? _tl2915529304_)
                            (let ((_e2915629307_ (gx#syntax-e _tl2915529304_)))
                              (let ((_hd2915729311_ (##car _e2915629307_))
                                    (_tl2915829314_ (##cdr _e2915629307_)))
                                (if (gx#stx-pair? _tl2915829314_)
                                    (let ((_e2915929317_
                                           (gx#syntax-e _tl2915829314_)))
                                      (let ((_hd2916029321_
                                             (##car _e2915929317_))
                                            (_tl2916129324_
                                             (##cdr _e2915929317_)))
                                        (if (gx#stx-null? _tl2916129324_)
                                            ((lambda (_L29327_ _L29329_)
                                               (if (gx#identifier? _L29329_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'defsyntax)
                                                         (cons _L29329_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'make-export-expander)
                                   (cons _L29327_ '()))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2914829290_
                                                    _g2915029294_)))
                                             _hd2916029321_
                                             _hd2915729311_)
                                            (_g2914829290_ _g2915029294_))))
                                    (_g2914829290_ _g2915029294_))))
                            (_g2914829290_ _g2915029294_))))
                    (_g2914829290_ _g2915029294_)))))
        (_g2914729344_ _$stx29144_))))
  (define |gerbil/core$<module-sugar>[:0:]#only-in|
    (gx#make-import-expander
     (lambda (_stx29349_)
       (let* ((_g2935229376_
               (lambda (_g2935329372_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2935329372_)))
              (_g2935129498_
               (lambda (_g2935329380_)
                 (if (gx#stx-pair? _g2935329380_)
                     (let ((_e2935629383_ (gx#syntax-e _g2935329380_)))
                       (let ((_hd2935729387_ (##car _e2935629383_))
                             (_tl2935829390_ (##cdr _e2935629383_)))
                         (if (gx#stx-pair? _tl2935829390_)
                             (let ((_e2935929393_
                                    (gx#syntax-e _tl2935829390_)))
                               (let ((_hd2936029397_ (##car _e2935929393_))
                                     (_tl2936129400_ (##cdr _e2935929393_)))
                                 (if (gx#stx-pair/null? _tl2936129400_)
                                     (if (fx>= (gx#stx-length _tl2936129400_)
                                               '0)
                                         (let ((_g31089_
                                                (gx#syntax-split-splice
                                                 _tl2936129400_
                                                 '0)))
                                           (begin
                                             (let ((_g31090_
                                                    (values-count _g31089_)))
                                               (if (not (fx= _g31090_ 2))
                                                   (error "Context expects 2 values"
                                                          _g31090_)))
                                             (let ((_target2936229403_
                                                    (values-ref _g31089_ 0))
                                                   (_tl2936429406_
                                                    (values-ref _g31089_ 1)))
                                               (if (gx#stx-null?
                                                    _tl2936429406_)
                                                   (letrec ((_loop2936529409_
                                                             (lambda (_hd2936329413_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id2936929416_)
                       (if (gx#stx-pair? _hd2936329413_)
                           (let ((_e2936629419_ (gx#syntax-e _hd2936329413_)))
                             (let ((_lp-hd2936729423_ (##car _e2936629419_))
                                   (_lp-tl2936829426_ (##cdr _e2936629419_)))
                               (_loop2936529409_
                                _lp-tl2936829426_
                                (cons _lp-hd2936729423_ _id2936929416_))))
                           (let ((_id2937029429_ (reverse _id2936929416_)))
                             ((lambda (_L29433_ _L29435_)
                                (if (gx#identifier-list?
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g2945229455_
                                                       _g2945329458_)
                                                (cons _g2945229455_
                                                      _g2945329458_))
                                              '()
                                              _L29433_)))
                                    (let* ((_keys29469_
                                            (gx#stx-map
                                             gx#core-identifier-key
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g2946029463_
                                                               _g2946129466_)
                                                        (cons _g2946029463_
                                                              _g2946129466_))
                                                      '()
                                                      _L29433_))))
                                           (_keytab29480_
                                            (let ((_ht29472_
                                                   (make-hash-table)))
                                              (begin
                                                (for-each
                                                 (lambda (_g2947429476_)
                                                   (hash-put!
                                                    _ht29472_
                                                    _g2947429476_
                                                    '#t))
                                                 _keys29469_)
                                                _ht29472_)))
                                           (_imports29483_
                                            (gx#core-expand-import-source
                                             _L29435_))
                                           (_fold-e29493_
                                            (letrec ((_fold-e29486_
                                                      (lambda (_in29489_
                                                               _r29491_)
                                                        (if (gx#module-import?
                                                             _in29489_)
                                                            (if (hash-get
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _keytab29480_
                         (gx#module-import-name _in29489_))
                        (cons _in29489_ _r29491_)
                        _r29491_)
                    (if (gx#import-set? _in29489_)
                        (foldl _fold-e29486_
                               _r29491_
                               (gx#import-set-imports _in29489_))
                        _r29491_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _fold-e29486_)))
                                      (cons 'begin:
                                            (foldl _fold-e29493_
                                                   '()
                                                   _imports29483_)))
                                    (_g2935229376_ _g2935329380_)))
                              _id2937029429_
                              _hd2936029397_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2936529409_
                                                      _target2936229403_
                                                      '()))
                                                   (_g2935229376_
                                                    _g2935329380_)))))
                                         (_g2935229376_ _g2935329380_))
                                     (_g2935229376_ _g2935329380_))))
                             (_g2935229376_ _g2935329380_))))
                     (_g2935229376_ _g2935329380_)))))
         (_g2935129498_ _stx29349_)))))
  (define |gerbil/core$<module-sugar>[:0:]#except-in|
    (gx#make-import-expander
     (lambda (_stx29503_)
       (let* ((_g2950629530_
               (lambda (_g2950729526_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2950729526_)))
              (_g2950529652_
               (lambda (_g2950729534_)
                 (if (gx#stx-pair? _g2950729534_)
                     (let ((_e2951029537_ (gx#syntax-e _g2950729534_)))
                       (let ((_hd2951129541_ (##car _e2951029537_))
                             (_tl2951229544_ (##cdr _e2951029537_)))
                         (if (gx#stx-pair? _tl2951229544_)
                             (let ((_e2951329547_
                                    (gx#syntax-e _tl2951229544_)))
                               (let ((_hd2951429551_ (##car _e2951329547_))
                                     (_tl2951529554_ (##cdr _e2951329547_)))
                                 (if (gx#stx-pair/null? _tl2951529554_)
                                     (if (fx>= (gx#stx-length _tl2951529554_)
                                               '0)
                                         (let ((_g31091_
                                                (gx#syntax-split-splice
                                                 _tl2951529554_
                                                 '0)))
                                           (begin
                                             (let ((_g31092_
                                                    (values-count _g31091_)))
                                               (if (not (fx= _g31092_ 2))
                                                   (error "Context expects 2 values"
                                                          _g31092_)))
                                             (let ((_target2951629557_
                                                    (values-ref _g31091_ 0))
                                                   (_tl2951829560_
                                                    (values-ref _g31091_ 1)))
                                               (if (gx#stx-null?
                                                    _tl2951829560_)
                                                   (letrec ((_loop2951929563_
                                                             (lambda (_hd2951729567_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id2952329570_)
                       (if (gx#stx-pair? _hd2951729567_)
                           (let ((_e2952029573_ (gx#syntax-e _hd2951729567_)))
                             (let ((_lp-hd2952129577_ (##car _e2952029573_))
                                   (_lp-tl2952229580_ (##cdr _e2952029573_)))
                               (_loop2951929563_
                                _lp-tl2952229580_
                                (cons _lp-hd2952129577_ _id2952329570_))))
                           (let ((_id2952429583_ (reverse _id2952329570_)))
                             ((lambda (_L29587_ _L29589_)
                                (if (gx#identifier-list?
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g2960629609_
                                                       _g2960729612_)
                                                (cons _g2960629609_
                                                      _g2960729612_))
                                              '()
                                              _L29587_)))
                                    (let* ((_keys29623_
                                            (gx#stx-map
                                             gx#core-identifier-key
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g2961429617_
                                                               _g2961529620_)
                                                        (cons _g2961429617_
                                                              _g2961529620_))
                                                      '()
                                                      _L29587_))))
                                           (_keytab29634_
                                            (let ((_ht29626_
                                                   (make-hash-table)))
                                              (begin
                                                (for-each
                                                 (lambda (_g2962829630_)
                                                   (hash-put!
                                                    _ht29626_
                                                    _g2962829630_
                                                    '#t))
                                                 _keys29623_)
                                                _ht29626_)))
                                           (_imports29637_
                                            (gx#core-expand-import-source
                                             _L29589_))
                                           (_fold-e29647_
                                            (letrec ((_fold-e29640_
                                                      (lambda (_in29643_
                                                               _r29645_)
                                                        (if (gx#module-import?
                                                             _in29643_)
                                                            (if (hash-get
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _keytab29634_
                         (gx#module-import-name _in29643_))
                        _r29645_
                        (cons _in29643_ _r29645_))
                    (if (gx#import-set? _in29643_)
                        (foldl _fold-e29640_
                               _r29645_
                               (gx#import-set-imports _in29643_))
                        (cons _in29643_ _r29645_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _fold-e29640_)))
                                      (cons 'begin:
                                            (foldl _fold-e29647_
                                                   '()
                                                   _imports29637_)))
                                    (_g2950629530_ _g2950729534_)))
                              _id2952429583_
                              _hd2951429551_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2951929563_
                                                      _target2951629557_
                                                      '()))
                                                   (_g2950629530_
                                                    _g2950729534_)))))
                                         (_g2950629530_ _g2950729534_))
                                     (_g2950629530_ _g2950729534_))))
                             (_g2950629530_ _g2950729534_))))
                     (_g2950629530_ _g2950729534_)))))
         (_g2950529652_ _stx29503_)))))
  (define |gerbil/core$<module-sugar>[1]#module-import-rename|
    (lambda (_in29704_ _rename29706_)
      (gx#make-module-import
       (gx#module-import-source _in29704_)
       _rename29706_
       (gx#module-import-phi _in29704_)
       (gx#module-import-weak? _in29704_))))
  (define |gerbil/core$<module-sugar>[1]#prefix-identifier-key|
    (lambda (_name29657_ _pre29659_)
      (let* ((_name2966029668_ _name29657_)
             (_E2966329674_
              (lambda () (error '"No clause matching" _name2966029668_)))
             (_else2966229680_
              (lambda () (make-symbol _pre29659_ _name29657_)))
             (_K2966429688_
              (lambda (_mark29684_ _id29686_)
                (cons (make-symbol _pre29659_ _id29686_) _mark29684_))))
        (if (##pair? _name2966029668_)
            (let ((_hd2966529692_ (##car _name2966029668_))
                  (_tl2966629695_ (##cdr _name2966029668_)))
              (let* ((_id29698_ _hd2966529692_) (_mark29701_ _tl2966629695_))
                (_K2966429688_ _mark29701_ _id29698_)))
            (_else2966229680_)))))
  (define |gerbil/core$<module-sugar>[:0:]#rename-in|
    (gx#make-import-expander
     (lambda (_stx29708_)
       (let* ((_g2971129744_
               (lambda (_g2971229740_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2971229740_)))
              (_g2971029930_
               (lambda (_g2971229748_)
                 (if (gx#stx-pair? _g2971229748_)
                     (let ((_e2971629751_ (gx#syntax-e _g2971229748_)))
                       (let ((_hd2971729755_ (##car _e2971629751_))
                             (_tl2971829758_ (##cdr _e2971629751_)))
                         (if (gx#stx-pair? _tl2971829758_)
                             (let ((_e2971929761_
                                    (gx#syntax-e _tl2971829758_)))
                               (let ((_hd2972029765_ (##car _e2971929761_))
                                     (_tl2972129768_ (##cdr _e2971929761_)))
                                 (if (gx#stx-pair/null? _tl2972129768_)
                                     (if (fx>= (gx#stx-length _tl2972129768_)
                                               '0)
                                         (let ((_g31093_
                                                (gx#syntax-split-splice
                                                 _tl2972129768_
                                                 '0)))
                                           (begin
                                             (let ((_g31094_
                                                    (values-count _g31093_)))
                                               (if (not (fx= _g31094_ 2))
                                                   (error "Context expects 2 values"
                                                          _g31094_)))
                                             (let ((_target2972229771_
                                                    (values-ref _g31093_ 0))
                                                   (_tl2972429774_
                                                    (values-ref _g31093_ 1)))
                                               (if (gx#stx-null?
                                                    _tl2972429774_)
                                                   (letrec ((_loop2972529777_
                                                             (lambda (_hd2972329781_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _new-id2972929784_
                              _id2973029786_)
                       (if (gx#stx-pair? _hd2972329781_)
                           (let ((_e2972629789_ (gx#syntax-e _hd2972329781_)))
                             (let ((_lp-hd2972729793_ (##car _e2972629789_))
                                   (_lp-tl2972829796_ (##cdr _e2972629789_)))
                               (if (gx#stx-pair? _lp-hd2972729793_)
                                   (let ((_e2973329799_
                                          (gx#syntax-e _lp-hd2972729793_)))
                                     (let ((_hd2973429803_
                                            (##car _e2973329799_))
                                           (_tl2973529806_
                                            (##cdr _e2973329799_)))
                                       (if (gx#stx-pair? _tl2973529806_)
                                           (let ((_e2973629809_
                                                  (gx#syntax-e
                                                   _tl2973529806_)))
                                             (let ((_hd2973729813_
                                                    (##car _e2973629809_))
                                                   (_tl2973829816_
                                                    (##cdr _e2973629809_)))
                                               (if (gx#stx-null?
                                                    _tl2973829816_)
                                                   (_loop2972529777_
                                                    _lp-tl2972829796_
                                                    (cons _hd2973729813_
                                                          _new-id2972929784_)
                                                    (cons _hd2973429803_
                                                          _id2973029786_))
                                                   (_g2971129744_
                                                    _g2971229748_))))
                                           (_g2971129744_ _g2971229748_))))
                                   (_g2971129744_ _g2971229748_))))
                           (let ((_new-id2973129819_
                                  (reverse _new-id2972929784_))
                                 (_id2973229822_ (reverse _id2973029786_)))
                             ((lambda (_L29825_ _L29827_ _L29828_)
                                (if (if (gx#identifier-list?
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g2984629849_
                                                           _g2984729852_)
                                                    (cons _g2984629849_
                                                          _g2984729852_))
                                                  '()
                                                  _L29827_)))
                                        (gx#identifier-list?
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g2985429857_
                                                           _g2985529860_)
                                                    (cons _g2985429857_
                                                          _g2985529860_))
                                                  '()
                                                  _L29825_)))
                                        '#f)
                                    (let* ((_keytab29863_ (make-hash-table))
                                           (_found29866_ (make-hash-table))
                                           (_g31095_
                                            (for-each
                                             (lambda (_id29869_ _new-id29871_)
                                               (hash-put!
                                                _keytab29863_
                                                (gx#core-identifier-key
                                                 _id29869_)
                                                (gx#core-identifier-key
                                                 _new-id29871_)))
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g2987229875_
                                                               _g2987329878_)
                                                        (cons _g2987229875_
                                                              _g2987329878_))
                                                      '()
                                                      _L29827_))
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g2988029883_
                                                               _g2988129886_)
                                                        (cons _g2988029883_
                                                              _g2988129886_))
                                                      '()
                                                      _L29825_))))
                                           (_imports29891_
                                            (gx#core-expand-import-source
                                             _L29828_))
                                           (_fold-e29911_
                                            (letrec ((_fold-e29894_
                                                      (lambda (_in29897_
                                                               _r29899_)
                                                        (if (gx#module-import?
                                                             _in29897_)
                                                            (let* ((_name29901_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#module-import-name _in29897_))
                           (_$e29904_ (hash-get _keytab29863_ _name29901_)))
                      (if _$e29904_
                          ((lambda (_rename29908_)
                             (begin
                               (hash-put! _found29866_ _name29901_ '#t)
                               (cons (|gerbil/core$<module-sugar>[1]#module-import-rename|
                                      _in29897_
                                      _rename29908_)
                                     _r29899_)))
                           _$e29904_)
                          (cons _in29897_ _r29899_)))
                    (if (gx#import-set? _in29897_)
                        (foldl _fold-e29894_
                               _r29899_
                               (gx#import-set-imports _in29897_))
                        (cons _in29897_ _r29899_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _fold-e29894_))
                                           (_new-imports29914_
                                            (foldl _fold-e29911_
                                                   '()
                                                   _imports29891_)))
                                      (begin
                                        (for-each
                                         (lambda (_id29919_)
                                           (if (hash-get
                                                _found29866_
                                                (gx#core-identifier-key
                                                 _id29919_))
                                               '#!void
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; identifier is not in the import set"
                                                _stx29708_
                                                _id29919_)))
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g2992129924_
                                                           _g2992229927_)
                                                    (cons _g2992129924_
                                                          _g2992229927_))
                                                  '()
                                                  _L29827_)))
                                        (cons 'begin: _new-imports29914_)))
                                    (_g2971129744_ _g2971229748_)))
                              _new-id2973129819_
                              _id2973229822_
                              _hd2972029765_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2972529777_
                                                      _target2972229771_
                                                      '()
                                                      '()))
                                                   (_g2971129744_
                                                    _g2971229748_)))))
                                         (_g2971129744_ _g2971229748_))
                                     (_g2971129744_ _g2971229748_))))
                             (_g2971129744_ _g2971229748_))))
                     (_g2971129744_ _g2971229748_)))))
         (_g2971029930_ _stx29708_)))))
  (define |gerbil/core$<module-sugar>[:0:]#prefix-in|
    (gx#make-import-expander
     (lambda (_stx29936_)
       (let* ((_g2993929957_
               (lambda (_g2994029953_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2994029953_)))
              (_g2993830036_
               (lambda (_g2994029961_)
                 (if (gx#stx-pair? _g2994029961_)
                     (let ((_e2994329964_ (gx#syntax-e _g2994029961_)))
                       (let ((_hd2994429968_ (##car _e2994329964_))
                             (_tl2994529971_ (##cdr _e2994329964_)))
                         (if (gx#stx-pair? _tl2994529971_)
                             (let ((_e2994629974_
                                    (gx#syntax-e _tl2994529971_)))
                               (let ((_hd2994729978_ (##car _e2994629974_))
                                     (_tl2994829981_ (##cdr _e2994629974_)))
                                 (if (gx#stx-pair? _tl2994829981_)
                                     (let ((_e2994929984_
                                            (gx#syntax-e _tl2994829981_)))
                                       (let ((_hd2995029988_
                                              (##car _e2994929984_))
                                             (_tl2995129991_
                                              (##cdr _e2994929984_)))
                                         (if (gx#stx-null? _tl2995129991_)
                                             ((lambda (_L29994_ _L29996_)
                                                (if (gx#identifier? _L29994_)
                                                    (let* ((_pre30012_
                                                            (gx#stx-e
                                                             _L29994_))
                                                           (_imports30015_
                                                            (gx#core-expand-import-source
                                                             _L29996_))
                                                           (_rename-e30021_
                                                            (lambda (_name30018_)
                                                              (|gerbil/core$<module-sugar>[1]#prefix-identifier-key|
                                                               _name30018_
                                                               _pre30012_)))
                                                           (_fold-e30031_
                                                            (letrec ((_fold-e30024_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_in30027_ _r30029_)
                                (if (gx#module-import? _in30027_)
                                    (cons (|gerbil/core$<module-sugar>[1]#module-import-rename|
                                           _in30027_
                                           (_rename-e30021_
                                            (gx#module-import-name _in30027_)))
                                          _r30029_)
                                    (if (gx#import-set? _in30027_)
                                        (foldl _fold-e30024_
                                               _r30029_
                                               (gx#import-set-imports
                                                _in30027_))
                                        (cons _in30027_ _r30029_))))))
                      _fold-e30024_)))
              (cons 'begin: (foldl _fold-e30031_ '() _imports30015_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2993929957_
                                                     _g2994029961_)))
                                              _hd2995029988_
                                              _hd2994729978_)
                                             (_g2993929957_ _g2994029961_))))
                                     (_g2993929957_ _g2994029961_))))
                             (_g2993929957_ _g2994029961_))))
                     (_g2993929957_ _g2994029961_)))))
         (_g2993830036_ _stx29936_)))))
  (define |gerbil/core$<module-sugar>[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_stx30040_)
       (let* ((_g3004330067_
               (lambda (_g3004430063_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g3004430063_)))
              (_g3004230189_
               (lambda (_g3004430071_)
                 (if (gx#stx-pair? _g3004430071_)
                     (let ((_e3004730074_ (gx#syntax-e _g3004430071_)))
                       (let ((_hd3004830078_ (##car _e3004730074_))
                             (_tl3004930081_ (##cdr _e3004730074_)))
                         (if (gx#stx-pair? _tl3004930081_)
                             (let ((_e3005030084_
                                    (gx#syntax-e _tl3004930081_)))
                               (let ((_hd3005130088_ (##car _e3005030084_))
                                     (_tl3005230091_ (##cdr _e3005030084_)))
                                 (if (gx#stx-pair/null? _tl3005230091_)
                                     (if (fx>= (gx#stx-length _tl3005230091_)
                                               '0)
                                         (let ((_g31096_
                                                (gx#syntax-split-splice
                                                 _tl3005230091_
                                                 '0)))
                                           (begin
                                             (let ((_g31097_
                                                    (values-count _g31096_)))
                                               (if (not (fx= _g31097_ 2))
                                                   (error "Context expects 2 values"
                                                          _g31097_)))
                                             (let ((_target3005330094_
                                                    (values-ref _g31096_ 0))
                                                   (_tl3005530097_
                                                    (values-ref _g31096_ 1)))
                                               (if (gx#stx-null?
                                                    _tl3005530097_)
                                                   (letrec ((_loop3005630100_
                                                             (lambda (_hd3005430104_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id3006030107_)
                       (if (gx#stx-pair? _hd3005430104_)
                           (let ((_e3005730110_ (gx#syntax-e _hd3005430104_)))
                             (let ((_lp-hd3005830114_ (##car _e3005730110_))
                                   (_lp-tl3005930117_ (##cdr _e3005730110_)))
                               (_loop3005630100_
                                _lp-tl3005930117_
                                (cons _lp-hd3005830114_ _id3006030107_))))
                           (let ((_id3006130120_ (reverse _id3006030107_)))
                             ((lambda (_L30124_ _L30126_)
                                (if (gx#identifier-list?
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g3014330146_
                                                       _g3014430149_)
                                                (cons _g3014330146_
                                                      _g3014430149_))
                                              '()
                                              _L30124_)))
                                    (let* ((_keys30160_
                                            (gx#stx-map
                                             gx#core-identifier-key
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g3015130154_
                                                               _g3015230157_)
                                                        (cons _g3015130154_
                                                              _g3015230157_))
                                                      '()
                                                      _L30124_))))
                                           (_keytab30171_
                                            (let ((_ht30163_
                                                   (make-hash-table)))
                                              (begin
                                                (for-each
                                                 (lambda (_g3016530167_)
                                                   (hash-put!
                                                    _ht30163_
                                                    _g3016530167_
                                                    '#t))
                                                 _keys30160_)
                                                _ht30163_)))
                                           (_exports30174_
                                            (gx#core-expand-export-source
                                             _L30126_))
                                           (_fold-e30184_
                                            (letrec ((_fold-e30177_
                                                      (lambda (_out30180_
                                                               _r30182_)
                                                        (if (gx#module-export?
                                                             _out30180_)
                                                            (if (hash-get
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _keytab30171_
                         (gx#module-export-name _out30180_))
                        _r30182_
                        (cons _out30180_ _r30182_))
                    (if (gx#export-set? _out30180_)
                        (foldl _fold-e30177_
                               _r30182_
                               (gx#export-set-exports _out30180_))
                        _r30182_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _fold-e30177_)))
                                      (cons 'begin:
                                            (foldl _fold-e30184_
                                                   '()
                                                   _exports30174_)))
                                    (_g3004330067_ _g3004430071_)))
                              _id3006130120_
                              _hd3005130088_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop3005630100_
                                                      _target3005330094_
                                                      '()))
                                                   (_g3004330067_
                                                    _g3004430071_)))))
                                         (_g3004330067_ _g3004430071_))
                                     (_g3004330067_ _g3004430071_))))
                             (_g3004330067_ _g3004430071_))))
                     (_g3004330067_ _g3004430071_)))))
         (_g3004230189_ _stx30040_)))))
  (define |gerbil/core$<module-sugar>[1]#module-export-rename|
    (lambda (_out30194_ _rename30196_)
      (gx#make-module-export
       (gx#module-export-context _out30194_)
       (gx#module-export-key _out30194_)
       (gx#module-export-phi _out30194_)
       _rename30196_
       (gx#module-export-weak? _out30194_))))
  (define |gerbil/core$<module-sugar>[:0:]#rename-out|
    (gx#make-export-expander
     (lambda (_stx30198_)
       (let* ((_g3020130234_
               (lambda (_g3020230230_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g3020230230_)))
              (_g3020030420_
               (lambda (_g3020230238_)
                 (if (gx#stx-pair? _g3020230238_)
                     (let ((_e3020630241_ (gx#syntax-e _g3020230238_)))
                       (let ((_hd3020730245_ (##car _e3020630241_))
                             (_tl3020830248_ (##cdr _e3020630241_)))
                         (if (gx#stx-pair? _tl3020830248_)
                             (let ((_e3020930251_
                                    (gx#syntax-e _tl3020830248_)))
                               (let ((_hd3021030255_ (##car _e3020930251_))
                                     (_tl3021130258_ (##cdr _e3020930251_)))
                                 (if (gx#stx-pair/null? _tl3021130258_)
                                     (if (fx>= (gx#stx-length _tl3021130258_)
                                               '0)
                                         (let ((_g31098_
                                                (gx#syntax-split-splice
                                                 _tl3021130258_
                                                 '0)))
                                           (begin
                                             (let ((_g31099_
                                                    (values-count _g31098_)))
                                               (if (not (fx= _g31099_ 2))
                                                   (error "Context expects 2 values"
                                                          _g31099_)))
                                             (let ((_target3021230261_
                                                    (values-ref _g31098_ 0))
                                                   (_tl3021430264_
                                                    (values-ref _g31098_ 1)))
                                               (if (gx#stx-null?
                                                    _tl3021430264_)
                                                   (letrec ((_loop3021530267_
                                                             (lambda (_hd3021330271_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _new-id3021930274_
                              _id3022030276_)
                       (if (gx#stx-pair? _hd3021330271_)
                           (let ((_e3021630279_ (gx#syntax-e _hd3021330271_)))
                             (let ((_lp-hd3021730283_ (##car _e3021630279_))
                                   (_lp-tl3021830286_ (##cdr _e3021630279_)))
                               (if (gx#stx-pair? _lp-hd3021730283_)
                                   (let ((_e3022330289_
                                          (gx#syntax-e _lp-hd3021730283_)))
                                     (let ((_hd3022430293_
                                            (##car _e3022330289_))
                                           (_tl3022530296_
                                            (##cdr _e3022330289_)))
                                       (if (gx#stx-pair? _tl3022530296_)
                                           (let ((_e3022630299_
                                                  (gx#syntax-e
                                                   _tl3022530296_)))
                                             (let ((_hd3022730303_
                                                    (##car _e3022630299_))
                                                   (_tl3022830306_
                                                    (##cdr _e3022630299_)))
                                               (if (gx#stx-null?
                                                    _tl3022830306_)
                                                   (_loop3021530267_
                                                    _lp-tl3021830286_
                                                    (cons _hd3022730303_
                                                          _new-id3021930274_)
                                                    (cons _hd3022430293_
                                                          _id3022030276_))
                                                   (_g3020130234_
                                                    _g3020230238_))))
                                           (_g3020130234_ _g3020230238_))))
                                   (_g3020130234_ _g3020230238_))))
                           (let ((_new-id3022130309_
                                  (reverse _new-id3021930274_))
                                 (_id3022230312_ (reverse _id3022030276_)))
                             ((lambda (_L30315_ _L30317_ _L30318_)
                                (if (if (gx#identifier-list?
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g3033630339_
                                                           _g3033730342_)
                                                    (cons _g3033630339_
                                                          _g3033730342_))
                                                  '()
                                                  _L30317_)))
                                        (gx#identifier-list?
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g3034430347_
                                                           _g3034530350_)
                                                    (cons _g3034430347_
                                                          _g3034530350_))
                                                  '()
                                                  _L30315_)))
                                        '#f)
                                    (let* ((_keytab30353_ (make-hash-table))
                                           (_found30356_ (make-hash-table))
                                           (_g31100_
                                            (for-each
                                             (lambda (_id30359_ _new-id30361_)
                                               (hash-put!
                                                _keytab30353_
                                                (gx#core-identifier-key
                                                 _id30359_)
                                                (gx#core-identifier-key
                                                 _new-id30361_)))
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g3036230365_
                                                               _g3036330368_)
                                                        (cons _g3036230365_
                                                              _g3036330368_))
                                                      '()
                                                      _L30317_))
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g3037030373_
                                                               _g3037130376_)
                                                        (cons _g3037030373_
                                                              _g3037130376_))
                                                      '()
                                                      _L30315_))))
                                           (_exports30381_
                                            (gx#core-expand-export-source
                                             _L30318_))
                                           (_fold-e30401_
                                            (letrec ((_fold-e30384_
                                                      (lambda (_out30387_
                                                               _r30389_)
                                                        (if (gx#module-export?
                                                             _out30387_)
                                                            (let* ((_name30391_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#module-export-name _out30387_))
                           (_$e30394_ (hash-get _keytab30353_ _name30391_)))
                      (if _$e30394_
                          ((lambda (_rename30398_)
                             (begin
                               (hash-put! _found30356_ _name30391_ '#t)
                               (cons (|gerbil/core$<module-sugar>[1]#module-export-rename|
                                      _out30387_
                                      _rename30398_)
                                     _r30389_)))
                           _$e30394_)
                          (cons _out30387_ _r30389_)))
                    (if (gx#export-set? _out30387_)
                        (foldl _fold-e30384_
                               _r30389_
                               (gx#export-set-exports _out30387_))
                        (cons _out30387_ _r30389_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _fold-e30384_))
                                           (_new-exports30404_
                                            (foldl _fold-e30401_
                                                   '()
                                                   _exports30381_)))
                                      (begin
                                        (for-each
                                         (lambda (_id30409_)
                                           (if (hash-get
                                                _found30356_
                                                (gx#core-identifier-key
                                                 _id30409_))
                                               '#!void
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; identifier is not in the export set"
                                                _stx30198_
                                                _id30409_)))
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g3041130414_
                                                           _g3041230417_)
                                                    (cons _g3041130414_
                                                          _g3041230417_))
                                                  '()
                                                  _L30317_)))
                                        (cons 'begin: _new-exports30404_)))
                                    (_g3020130234_ _g3020230238_)))
                              _new-id3022130309_
                              _id3022230312_
                              _hd3021030255_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop3021530267_
                                                      _target3021230261_
                                                      '()
                                                      '()))
                                                   (_g3020130234_
                                                    _g3020230238_)))))
                                         (_g3020130234_ _g3020230238_))
                                     (_g3020130234_ _g3020230238_))))
                             (_g3020130234_ _g3020230238_))))
                     (_g3020130234_ _g3020230238_)))))
         (_g3020030420_ _stx30198_)))))
  (define |gerbil/core$<module-sugar>[:0:]#prefix-out|
    (gx#make-export-expander
     (lambda (_stx30426_)
       (let* ((_g3042930447_
               (lambda (_g3043030443_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g3043030443_)))
              (_g3042830526_
               (lambda (_g3043030451_)
                 (if (gx#stx-pair? _g3043030451_)
                     (let ((_e3043330454_ (gx#syntax-e _g3043030451_)))
                       (let ((_hd3043430458_ (##car _e3043330454_))
                             (_tl3043530461_ (##cdr _e3043330454_)))
                         (if (gx#stx-pair? _tl3043530461_)
                             (let ((_e3043630464_
                                    (gx#syntax-e _tl3043530461_)))
                               (let ((_hd3043730468_ (##car _e3043630464_))
                                     (_tl3043830471_ (##cdr _e3043630464_)))
                                 (if (gx#stx-pair? _tl3043830471_)
                                     (let ((_e3043930474_
                                            (gx#syntax-e _tl3043830471_)))
                                       (let ((_hd3044030478_
                                              (##car _e3043930474_))
                                             (_tl3044130481_
                                              (##cdr _e3043930474_)))
                                         (if (gx#stx-null? _tl3044130481_)
                                             ((lambda (_L30484_ _L30486_)
                                                (if (gx#identifier? _L30484_)
                                                    (let* ((_pre30502_
                                                            (gx#stx-e
                                                             _L30484_))
                                                           (_exports30505_
                                                            (gx#core-expand-export-source
                                                             _L30486_))
                                                           (_rename-e30511_
                                                            (lambda (_name30508_)
                                                              (|gerbil/core$<module-sugar>[1]#prefix-identifier-key|
                                                               _name30508_
                                                               _pre30502_)))
                                                           (_fold-e30521_
                                                            (letrec ((_fold-e30514_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_out30517_ _r30519_)
                                (if (gx#module-export? _out30517_)
                                    (cons (|gerbil/core$<module-sugar>[1]#module-export-rename|
                                           _out30517_
                                           (_rename-e30511_
                                            (gx#module-export-name
                                             _out30517_)))
                                          _r30519_)
                                    (if (gx#export-set? _out30517_)
                                        (foldl _fold-e30514_
                                               _r30519_
                                               (gx#export-set-exports
                                                _out30517_))
                                        (cons _out30517_ _r30519_))))))
                      _fold-e30514_)))
              (cons 'begin: (foldl _fold-e30521_ '() _exports30505_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3042930447_
                                                     _g3043030451_)))
                                              _hd3044030478_
                                              _hd3043730468_)
                                             (_g3042930447_ _g3043030451_))))
                                     (_g3042930447_ _g3043030451_))))
                             (_g3042930447_ _g3043030451_))))
                     (_g3042930447_ _g3043030451_)))))
         (_g3042830526_ _stx30426_)))))
  (define |gerbil/core$<module-sugar>[:0:]#struct-out|
    (gx#make-export-expander
     (lambda (_stx30530_)
       (let* ((_g3053330553_
               (lambda (_g3053430549_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g3053430549_)))
              (_g3053230788_
               (lambda (_g3053430557_)
                 (if (gx#stx-pair? _g3053430557_)
                     (let ((_e3053630560_ (gx#syntax-e _g3053430557_)))
                       (let ((_hd3053730564_ (##car _e3053630560_))
                             (_tl3053830567_ (##cdr _e3053630560_)))
                         (if (gx#stx-pair/null? _tl3053830567_)
                             (if (fx>= (gx#stx-length _tl3053830567_) '0)
                                 (let ((_g31101_
                                        (gx#syntax-split-splice
                                         _tl3053830567_
                                         '0)))
                                   (begin
                                     (let ((_g31102_ (values-count _g31101_)))
                                       (if (not (fx= _g31102_ 2))
                                           (error "Context expects 2 values"
                                                  _g31102_)))
                                     (let ((_target3053930570_
                                            (values-ref _g31101_ 0))
                                           (_tl3054130573_
                                            (values-ref _g31101_ 1)))
                                       (if (gx#stx-null? _tl3054130573_)
                                           (letrec ((_loop3054230576_
                                                     (lambda (_hd3054030580_
                                                              _id3054630583_)
                                                       (if (gx#stx-pair?
                                                            _hd3054030580_)
                                                           (let ((_e3054330586_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd3054030580_)))
                     (let ((_lp-hd3054430590_ (##car _e3054330586_))
                           (_lp-tl3054530593_ (##cdr _e3054330586_)))
                       (_loop3054230576_
                        _lp-tl3054530593_
                        (cons _lp-hd3054430590_ _id3054630583_))))
                   (let ((_id3054730596_ (reverse _id3054630583_)))
                     ((lambda (_L30600_)
                        (let _lp30616_ ((_rest30619_
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g3077930782_
                                                           _g3078030785_)
                                                    (cons _g3077930782_
                                                          _g3078030785_))
                                                  '()
                                                  _L30600_)))
                                        (_ids30621_ '()))
                          (let* ((_g3062430636_
                                  (lambda (_g3062530632_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g3062530632_)))
                                 (_g3062330647_
                                  (lambda (_g3062530640_)
                                    ((lambda () (cons 'begin: _ids30621_)))))
                                 (_g3062230776_
                                  (lambda (_g3062530651_)
                                    (if (gx#stx-pair? _g3062530651_)
                                        (let ((_e3062830654_
                                               (gx#syntax-e _g3062530651_)))
                                          (let ((_hd3062930658_
                                                 (##car _e3062830654_))
                                                (_tl3063030661_
                                                 (##cdr _e3062830654_)))
                                            ((lambda (_L30664_ _L30666_)
                                               (let ((_info30681_
                                                      (gx#syntax-local-value
                                                       _L30666_
                                                       false)))
                                                 (if (|gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info?|
                                                      _info30681_)
                                                     (let* ((_g3068330700_
                                                             (slot-ref
                                                              _info30681_
                                                              'expander-identifiers))
                                                            (_E3068530706_
                                                             (lambda ()
                                                               (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g3068330700_)))
                    (_K3068630718_
                     (lambda (_setf30710_
                              _getf30712_
                              _type?30713_
                              _make-type30714_
                              _type::t30715_
                              _super30716_)
                       (_lp30616_
                        _L30664_
                        (cons _L30666_
                              (cons _type::t30715_
                                    (cons _make-type30714_
                                          (cons _type?30713_
                                                (foldr cons
                                                       (foldr cons
                                                              _ids30621_
                                                              _setf30710_)
                                                       _getf30712_)))))))))
               (if (##pair? _g3068330700_)
                   (let ((_hd3068730722_ (##car _g3068330700_))
                         (_tl3068830725_ (##cdr _g3068330700_)))
                     (let ((_super30728_ _hd3068730722_))
                       (if (##pair? _tl3068830725_)
                           (let ((_hd3068930731_ (##car _tl3068830725_))
                                 (_tl3069030734_ (##cdr _tl3068830725_)))
                             (let ((_type::t30737_ _hd3068930731_))
                               (if (##pair? _tl3069030734_)
                                   (let ((_hd3069130740_
                                          (##car _tl3069030734_))
                                         (_tl3069230743_
                                          (##cdr _tl3069030734_)))
                                     (let ((_make-type30746_ _hd3069130740_))
                                       (if (##pair? _tl3069230743_)
                                           (let ((_hd3069330749_
                                                  (##car _tl3069230743_))
                                                 (_tl3069430752_
                                                  (##cdr _tl3069230743_)))
                                             (let ((_type?30755_
                                                    _hd3069330749_))
                                               (if (##pair? _tl3069430752_)
                                                   (let ((_hd3069530758_
                                                          (##car _tl3069430752_))
                                                         (_tl3069630761_
                                                          (##cdr _tl3069430752_)))
                                                     (let ((_getf30764_
                                                            _hd3069530758_))
                                                       (if (##pair? _tl3069630761_)
                                                           (let ((_hd3069730767_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##car _tl3069630761_))
                         (_tl3069830770_ (##cdr _tl3069630761_)))
                     (let ((_setf30773_ _hd3069730767_))
                       (if (##null? _tl3069830770_)
                           (_K3068630718_
                            _setf30773_
                            _getf30764_
                            _type?30755_
                            _make-type30746_
                            _type::t30737_
                            _super30728_)
                           (_E3068530706_))))
                   (_E3068530706_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E3068530706_))))
                                           (_E3068530706_))))
                                   (_E3068530706_))))
                           (_E3068530706_))))
                   (_E3068530706_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Incomplete type info"
                                                      _stx30530_
                                                      _L30666_))))
                                             _tl3063030661_
                                             _hd3062930658_)))
                                        (_g3062330647_ _g3062530651_)))))
                            (_g3062230776_ _rest30619_))))
                      _id3054730596_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop3054230576_
                                              _target3053930570_
                                              '()))
                                           (_g3053330553_ _g3053430557_)))))
                                 (_g3053330553_ _g3053430557_))
                             (_g3053330553_ _g3053430557_))))
                     (_g3053330553_ _g3053430557_)))))
         (_g3053230788_ _stx30530_))))))
