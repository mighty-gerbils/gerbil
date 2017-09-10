(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<module-sugar>[:0:]#require|
    (lambda (_$stx28613_)
      (let* ((_g2861828637_
              (lambda (_g2861928633_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2861928633_)))
             (_g2861728683_
              (lambda (_g2861928641_)
                (if (gx#stx-pair? _g2861928641_)
                    (let ((_e2862628644_ (gx#syntax-e _g2861928641_)))
                      (let ((_hd2862728648_ (##car _e2862628644_))
                            (_tl2862828651_ (##cdr _e2862628644_)))
                        (if (gx#stx-pair? _tl2862828651_)
                            (let ((_e2862928654_ (gx#syntax-e _tl2862828651_)))
                              (let ((_hd2863028658_ (##car _e2862928654_))
                                    (_tl2863128661_ (##cdr _e2862928654_)))
                                ((lambda (_L28664_ _L28666_ _L28667_)
                                   (cons (gx#datum->syntax '#f 'cond-expand)
                                         (cons (cons _L28666_
                                                     (cons (cons _L28667_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L28664_)
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
                                     (cons _L28666_ '())))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                                 _tl2863128661_
                                 _hd2863028658_
                                 _hd2862728648_)))
                            (_g2861828637_ _g2861928641_))))
                    (_g2861828637_ _g2861928641_))))
             (_g2861628704_
              (lambda (_g2861928687_)
                (if (gx#stx-pair? _g2861928687_)
                    (let ((_e2862028690_ (gx#syntax-e _g2861928687_)))
                      (let ((_hd2862128694_ (##car _e2862028690_))
                            (_tl2862228697_ (##cdr _e2862028690_)))
                        (if (gx#stx-null? _tl2862228697_)
                            ((lambda ()
                               (cons (gx#datum->syntax '#f 'begin) '())))
                            (_g2861728683_ _g2861928687_))))
                    (_g2861728683_ _g2861928687_)))))
        (_g2861628704_ _$stx28613_))))
  (define |gerbil/core::<module-sugar>[:0:]#defsyntax-for-import|
    (lambda (_$stx28708_)
      (let* ((_g2871328753_
              (lambda (_g2871428749_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2871428749_)))
             (_g2871228854_
              (lambda (_g2871428757_)
                (if (gx#stx-pair? _g2871428757_)
                    (let ((_e2873028760_ (gx#syntax-e _g2871428757_)))
                      (let ((_hd2873128764_ (##car _e2873028760_))
                            (_tl2873228767_ (##cdr _e2873028760_)))
                        (if (gx#stx-pair? _tl2873228767_)
                            (let ((_e2873328770_ (gx#syntax-e _tl2873228767_)))
                              (let ((_hd2873428774_ (##car _e2873328770_))
                                    (_tl2873528777_ (##cdr _e2873328770_)))
                                (if (gx#stx-pair? _hd2873428774_)
                                    (let ((_e2873628780_
                                           (gx#syntax-e _hd2873428774_)))
                                      (let ((_hd2873728784_
                                             (##car _e2873628780_))
                                            (_tl2873828787_
                                             (##cdr _e2873628780_)))
                                        (if (gx#stx-pair/null? _tl2873528777_)
                                            (if (fx>= (gx#stx-length
                                                       _tl2873528777_)
                                                      '0)
                                                (let ((_g30852_
                                                       (gx#syntax-split-splice
                                                        _tl2873528777_
                                                        '0)))
                                                  (begin
                                                    (let ((_g30853_
                                                           (values-count
                                                            _g30852_)))
                                                      (if (not (fx= _g30853_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g30853_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2873928790_
                                                           (values-ref
                                                            _g30852_
                                                            0))
                                                          (_tl2874128793_
                                                           (values-ref
                                                            _g30852_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl2874128793_)
                                                          (letrec ((_loop2874228796_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd2874028800_ _body2874628803_)
                              (if (gx#stx-pair? _hd2874028800_)
                                  (let ((_e2874328806_
                                         (gx#syntax-e _hd2874028800_)))
                                    (let ((_lp-hd2874428810_
                                           (##car _e2874328806_))
                                          (_lp-tl2874528813_
                                           (##cdr _e2874328806_)))
                                      (_loop2874228796_
                                       _lp-tl2874528813_
                                       (cons _lp-hd2874428810_
                                             _body2874628803_))))
                                  (let ((_body2874728816_
                                         (reverse _body2874628803_)))
                                    ((lambda (_L28820_
                                              _L28822_
                                              _L28823_
                                              _L28824_)
                                       (if (gx#identifier? _L28823_)
                                           (cons _L28824_
                                                 (cons _L28823_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'lambda)
                           (cons _L28822_
                                 (begin
                                   '#!void
                                   (foldr (lambda (_g2884528848_ _g2884628851_)
                                            (cons _g2884528848_ _g2884628851_))
                                          '()
                                          _L28820_))))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g2871328753_ _g2871428757_)))
                                     _body2874728816_
                                     _tl2873828787_
                                     _hd2873728784_
                                     _hd2873128764_))))))
                    (_loop2874228796_ _target2873928790_ '()))
                  (_g2871328753_ _g2871428757_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2871328753_ _g2871428757_))
                                            (_g2871328753_ _g2871428757_))))
                                    (_g2871328753_ _g2871428757_))))
                            (_g2871328753_ _g2871428757_))))
                    (_g2871328753_ _g2871428757_))))
             (_g2871128908_
              (lambda (_g2871428858_)
                (if (gx#stx-pair? _g2871428858_)
                    (let ((_e2871728861_ (gx#syntax-e _g2871428858_)))
                      (let ((_hd2871828865_ (##car _e2871728861_))
                            (_tl2871928868_ (##cdr _e2871728861_)))
                        (if (gx#stx-pair? _tl2871928868_)
                            (let ((_e2872028871_ (gx#syntax-e _tl2871928868_)))
                              (let ((_hd2872128875_ (##car _e2872028871_))
                                    (_tl2872228878_ (##cdr _e2872028871_)))
                                (if (gx#stx-pair? _tl2872228878_)
                                    (let ((_e2872328881_
                                           (gx#syntax-e _tl2872228878_)))
                                      (let ((_hd2872428885_
                                             (##car _e2872328881_))
                                            (_tl2872528888_
                                             (##cdr _e2872328881_)))
                                        (if (gx#stx-null? _tl2872528888_)
                                            ((lambda (_L28891_ _L28893_)
                                               (if (gx#identifier? _L28893_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'defsyntax)
                                                         (cons _L28893_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'make-import-expander)
                                   (cons _L28891_ '()))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2871228854_
                                                    _g2871428858_)))
                                             _hd2872428885_
                                             _hd2872128875_)
                                            (_g2871228854_ _g2871428858_))))
                                    (_g2871228854_ _g2871428858_))))
                            (_g2871228854_ _g2871428858_))))
                    (_g2871228854_ _g2871428858_)))))
        (_g2871128908_ _$stx28708_))))
  (define |gerbil/core::<module-sugar>[:0:]#defsyntax-for-export|
    (lambda (_$stx28913_)
      (let* ((_g2891828958_
              (lambda (_g2891928954_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2891928954_)))
             (_g2891729059_
              (lambda (_g2891928962_)
                (if (gx#stx-pair? _g2891928962_)
                    (let ((_e2893528965_ (gx#syntax-e _g2891928962_)))
                      (let ((_hd2893628969_ (##car _e2893528965_))
                            (_tl2893728972_ (##cdr _e2893528965_)))
                        (if (gx#stx-pair? _tl2893728972_)
                            (let ((_e2893828975_ (gx#syntax-e _tl2893728972_)))
                              (let ((_hd2893928979_ (##car _e2893828975_))
                                    (_tl2894028982_ (##cdr _e2893828975_)))
                                (if (gx#stx-pair? _hd2893928979_)
                                    (let ((_e2894128985_
                                           (gx#syntax-e _hd2893928979_)))
                                      (let ((_hd2894228989_
                                             (##car _e2894128985_))
                                            (_tl2894328992_
                                             (##cdr _e2894128985_)))
                                        (if (gx#stx-pair/null? _tl2894028982_)
                                            (if (fx>= (gx#stx-length
                                                       _tl2894028982_)
                                                      '0)
                                                (let ((_g30854_
                                                       (gx#syntax-split-splice
                                                        _tl2894028982_
                                                        '0)))
                                                  (begin
                                                    (let ((_g30855_
                                                           (values-count
                                                            _g30854_)))
                                                      (if (not (fx= _g30855_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g30855_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2894428995_
                                                           (values-ref
                                                            _g30854_
                                                            0))
                                                          (_tl2894628998_
                                                           (values-ref
                                                            _g30854_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl2894628998_)
                                                          (letrec ((_loop2894729001_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd2894529005_ _body2895129008_)
                              (if (gx#stx-pair? _hd2894529005_)
                                  (let ((_e2894829011_
                                         (gx#syntax-e _hd2894529005_)))
                                    (let ((_lp-hd2894929015_
                                           (##car _e2894829011_))
                                          (_lp-tl2895029018_
                                           (##cdr _e2894829011_)))
                                      (_loop2894729001_
                                       _lp-tl2895029018_
                                       (cons _lp-hd2894929015_
                                             _body2895129008_))))
                                  (let ((_body2895229021_
                                         (reverse _body2895129008_)))
                                    ((lambda (_L29025_
                                              _L29027_
                                              _L29028_
                                              _L29029_)
                                       (if (gx#identifier? _L29028_)
                                           (cons _L29029_
                                                 (cons _L29028_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'lambda)
                           (cons _L29027_
                                 (begin
                                   '#!void
                                   (foldr (lambda (_g2905029053_ _g2905129056_)
                                            (cons _g2905029053_ _g2905129056_))
                                          '()
                                          _L29025_))))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g2891828958_ _g2891928962_)))
                                     _body2895229021_
                                     _tl2894328992_
                                     _hd2894228989_
                                     _hd2893628969_))))))
                    (_loop2894729001_ _target2894428995_ '()))
                  (_g2891828958_ _g2891928962_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2891828958_ _g2891928962_))
                                            (_g2891828958_ _g2891928962_))))
                                    (_g2891828958_ _g2891928962_))))
                            (_g2891828958_ _g2891928962_))))
                    (_g2891828958_ _g2891928962_))))
             (_g2891629113_
              (lambda (_g2891929063_)
                (if (gx#stx-pair? _g2891929063_)
                    (let ((_e2892229066_ (gx#syntax-e _g2891929063_)))
                      (let ((_hd2892329070_ (##car _e2892229066_))
                            (_tl2892429073_ (##cdr _e2892229066_)))
                        (if (gx#stx-pair? _tl2892429073_)
                            (let ((_e2892529076_ (gx#syntax-e _tl2892429073_)))
                              (let ((_hd2892629080_ (##car _e2892529076_))
                                    (_tl2892729083_ (##cdr _e2892529076_)))
                                (if (gx#stx-pair? _tl2892729083_)
                                    (let ((_e2892829086_
                                           (gx#syntax-e _tl2892729083_)))
                                      (let ((_hd2892929090_
                                             (##car _e2892829086_))
                                            (_tl2893029093_
                                             (##cdr _e2892829086_)))
                                        (if (gx#stx-null? _tl2893029093_)
                                            ((lambda (_L29096_ _L29098_)
                                               (if (gx#identifier? _L29098_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'defsyntax)
                                                         (cons _L29098_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'make-export-expander)
                                   (cons _L29096_ '()))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2891729059_
                                                    _g2891929063_)))
                                             _hd2892929090_
                                             _hd2892629080_)
                                            (_g2891729059_ _g2891929063_))))
                                    (_g2891729059_ _g2891929063_))))
                            (_g2891729059_ _g2891929063_))))
                    (_g2891729059_ _g2891929063_)))))
        (_g2891629113_ _$stx28913_))))
  (define |gerbil/core::<module-sugar>[:0:]#only-in|
    (gx#make-import-expander
     (lambda (_stx29118_)
       (let* ((_g2912129145_
               (lambda (_g2912229141_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2912229141_)))
              (_g2912029267_
               (lambda (_g2912229149_)
                 (if (gx#stx-pair? _g2912229149_)
                     (let ((_e2912529152_ (gx#syntax-e _g2912229149_)))
                       (let ((_hd2912629156_ (##car _e2912529152_))
                             (_tl2912729159_ (##cdr _e2912529152_)))
                         (if (gx#stx-pair? _tl2912729159_)
                             (let ((_e2912829162_
                                    (gx#syntax-e _tl2912729159_)))
                               (let ((_hd2912929166_ (##car _e2912829162_))
                                     (_tl2913029169_ (##cdr _e2912829162_)))
                                 (if (gx#stx-pair/null? _tl2913029169_)
                                     (if (fx>= (gx#stx-length _tl2913029169_)
                                               '0)
                                         (let ((_g30856_
                                                (gx#syntax-split-splice
                                                 _tl2913029169_
                                                 '0)))
                                           (begin
                                             (let ((_g30857_
                                                    (values-count _g30856_)))
                                               (if (not (fx= _g30857_ 2))
                                                   (error "Context expects 2 values"
                                                          _g30857_)))
                                             (let ((_target2913129172_
                                                    (values-ref _g30856_ 0))
                                                   (_tl2913329175_
                                                    (values-ref _g30856_ 1)))
                                               (if (gx#stx-null?
                                                    _tl2913329175_)
                                                   (letrec ((_loop2913429178_
                                                             (lambda (_hd2913229182_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id2913829185_)
                       (if (gx#stx-pair? _hd2913229182_)
                           (let ((_e2913529188_ (gx#syntax-e _hd2913229182_)))
                             (let ((_lp-hd2913629192_ (##car _e2913529188_))
                                   (_lp-tl2913729195_ (##cdr _e2913529188_)))
                               (_loop2913429178_
                                _lp-tl2913729195_
                                (cons _lp-hd2913629192_ _id2913829185_))))
                           (let ((_id2913929198_ (reverse _id2913829185_)))
                             ((lambda (_L29202_ _L29204_)
                                (if (gx#identifier-list?
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g2922129224_
                                                       _g2922229227_)
                                                (cons _g2922129224_
                                                      _g2922229227_))
                                              '()
                                              _L29202_)))
                                    (let* ((_keys29238_
                                            (gx#stx-map
                                             gx#core-identifier-key
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g2922929232_
                                                               _g2923029235_)
                                                        (cons _g2922929232_
                                                              _g2923029235_))
                                                      '()
                                                      _L29202_))))
                                           (_keytab29249_
                                            (let ((_ht29241_
                                                   (make-hash-table)))
                                              (begin
                                                (for-each
                                                 (lambda (_g2924329245_)
                                                   (hash-put!
                                                    _ht29241_
                                                    _g2924329245_
                                                    '#t))
                                                 _keys29238_)
                                                _ht29241_)))
                                           (_imports29252_
                                            (gx#core-expand-import-source
                                             _L29204_))
                                           (_fold-e29262_
                                            (letrec ((_fold-e29255_
                                                      (lambda (_in29258_
                                                               _r29260_)
                                                        (if (gx#module-import?
                                                             _in29258_)
                                                            (if (hash-get
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _keytab29249_
                         (gx#module-import-name _in29258_))
                        (cons _in29258_ _r29260_)
                        _r29260_)
                    (if (gx#import-set? _in29258_)
                        (foldl _fold-e29255_
                               _r29260_
                               (gx#import-set-imports _in29258_))
                        _r29260_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _fold-e29255_)))
                                      (cons 'begin:
                                            (foldl _fold-e29262_
                                                   '()
                                                   _imports29252_)))
                                    (_g2912129145_ _g2912229149_)))
                              _id2913929198_
                              _hd2912929166_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2913429178_
                                                      _target2913129172_
                                                      '()))
                                                   (_g2912129145_
                                                    _g2912229149_)))))
                                         (_g2912129145_ _g2912229149_))
                                     (_g2912129145_ _g2912229149_))))
                             (_g2912129145_ _g2912229149_))))
                     (_g2912129145_ _g2912229149_)))))
         (_g2912029267_ _stx29118_)))))
  (define |gerbil/core::<module-sugar>[:0:]#except-in|
    (gx#make-import-expander
     (lambda (_stx29272_)
       (let* ((_g2927529299_
               (lambda (_g2927629295_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2927629295_)))
              (_g2927429421_
               (lambda (_g2927629303_)
                 (if (gx#stx-pair? _g2927629303_)
                     (let ((_e2927929306_ (gx#syntax-e _g2927629303_)))
                       (let ((_hd2928029310_ (##car _e2927929306_))
                             (_tl2928129313_ (##cdr _e2927929306_)))
                         (if (gx#stx-pair? _tl2928129313_)
                             (let ((_e2928229316_
                                    (gx#syntax-e _tl2928129313_)))
                               (let ((_hd2928329320_ (##car _e2928229316_))
                                     (_tl2928429323_ (##cdr _e2928229316_)))
                                 (if (gx#stx-pair/null? _tl2928429323_)
                                     (if (fx>= (gx#stx-length _tl2928429323_)
                                               '0)
                                         (let ((_g30858_
                                                (gx#syntax-split-splice
                                                 _tl2928429323_
                                                 '0)))
                                           (begin
                                             (let ((_g30859_
                                                    (values-count _g30858_)))
                                               (if (not (fx= _g30859_ 2))
                                                   (error "Context expects 2 values"
                                                          _g30859_)))
                                             (let ((_target2928529326_
                                                    (values-ref _g30858_ 0))
                                                   (_tl2928729329_
                                                    (values-ref _g30858_ 1)))
                                               (if (gx#stx-null?
                                                    _tl2928729329_)
                                                   (letrec ((_loop2928829332_
                                                             (lambda (_hd2928629336_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id2929229339_)
                       (if (gx#stx-pair? _hd2928629336_)
                           (let ((_e2928929342_ (gx#syntax-e _hd2928629336_)))
                             (let ((_lp-hd2929029346_ (##car _e2928929342_))
                                   (_lp-tl2929129349_ (##cdr _e2928929342_)))
                               (_loop2928829332_
                                _lp-tl2929129349_
                                (cons _lp-hd2929029346_ _id2929229339_))))
                           (let ((_id2929329352_ (reverse _id2929229339_)))
                             ((lambda (_L29356_ _L29358_)
                                (if (gx#identifier-list?
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g2937529378_
                                                       _g2937629381_)
                                                (cons _g2937529378_
                                                      _g2937629381_))
                                              '()
                                              _L29356_)))
                                    (let* ((_keys29392_
                                            (gx#stx-map
                                             gx#core-identifier-key
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g2938329386_
                                                               _g2938429389_)
                                                        (cons _g2938329386_
                                                              _g2938429389_))
                                                      '()
                                                      _L29356_))))
                                           (_keytab29403_
                                            (let ((_ht29395_
                                                   (make-hash-table)))
                                              (begin
                                                (for-each
                                                 (lambda (_g2939729399_)
                                                   (hash-put!
                                                    _ht29395_
                                                    _g2939729399_
                                                    '#t))
                                                 _keys29392_)
                                                _ht29395_)))
                                           (_imports29406_
                                            (gx#core-expand-import-source
                                             _L29358_))
                                           (_fold-e29416_
                                            (letrec ((_fold-e29409_
                                                      (lambda (_in29412_
                                                               _r29414_)
                                                        (if (gx#module-import?
                                                             _in29412_)
                                                            (if (hash-get
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _keytab29403_
                         (gx#module-import-name _in29412_))
                        _r29414_
                        (cons _in29412_ _r29414_))
                    (if (gx#import-set? _in29412_)
                        (foldl _fold-e29409_
                               _r29414_
                               (gx#import-set-imports _in29412_))
                        (cons _in29412_ _r29414_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _fold-e29409_)))
                                      (cons 'begin:
                                            (foldl _fold-e29416_
                                                   '()
                                                   _imports29406_)))
                                    (_g2927529299_ _g2927629303_)))
                              _id2929329352_
                              _hd2928329320_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2928829332_
                                                      _target2928529326_
                                                      '()))
                                                   (_g2927529299_
                                                    _g2927629303_)))))
                                         (_g2927529299_ _g2927629303_))
                                     (_g2927529299_ _g2927629303_))))
                             (_g2927529299_ _g2927629303_))))
                     (_g2927529299_ _g2927629303_)))))
         (_g2927429421_ _stx29272_)))))
  (define |gerbil/core::<module-sugar>[1]#module-import-rename|
    (lambda (_in29473_ _rename29475_)
      (gx#make-module-import
       (gx#module-import-source _in29473_)
       _rename29475_
       (gx#module-import-phi _in29473_)
       (gx#module-import-weak? _in29473_))))
  (define |gerbil/core::<module-sugar>[1]#prefix-identifier-key|
    (lambda (_name29426_ _pre29428_)
      (let* ((_name2942929437_ _name29426_)
             (_E2943229443_
              (lambda () (error '"No clause matching" _name2942929437_)))
             (_else2943129449_
              (lambda () (make-symbol _pre29428_ _name29426_)))
             (_K2943329457_
              (lambda (_mark29453_ _id29455_)
                (cons (make-symbol _pre29428_ _id29455_) _mark29453_))))
        (if (##pair? _name2942929437_)
            (let ((_hd2943429461_ (##car _name2942929437_))
                  (_tl2943529464_ (##cdr _name2942929437_)))
              (let* ((_id29467_ _hd2943429461_) (_mark29470_ _tl2943529464_))
                (_K2943329457_ _mark29470_ _id29467_)))
            (_else2943129449_)))))
  (define |gerbil/core::<module-sugar>[:0:]#rename-in|
    (gx#make-import-expander
     (lambda (_stx29477_)
       (let* ((_g2948029513_
               (lambda (_g2948129509_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2948129509_)))
              (_g2947929699_
               (lambda (_g2948129517_)
                 (if (gx#stx-pair? _g2948129517_)
                     (let ((_e2948529520_ (gx#syntax-e _g2948129517_)))
                       (let ((_hd2948629524_ (##car _e2948529520_))
                             (_tl2948729527_ (##cdr _e2948529520_)))
                         (if (gx#stx-pair? _tl2948729527_)
                             (let ((_e2948829530_
                                    (gx#syntax-e _tl2948729527_)))
                               (let ((_hd2948929534_ (##car _e2948829530_))
                                     (_tl2949029537_ (##cdr _e2948829530_)))
                                 (if (gx#stx-pair/null? _tl2949029537_)
                                     (if (fx>= (gx#stx-length _tl2949029537_)
                                               '0)
                                         (let ((_g30860_
                                                (gx#syntax-split-splice
                                                 _tl2949029537_
                                                 '0)))
                                           (begin
                                             (let ((_g30861_
                                                    (values-count _g30860_)))
                                               (if (not (fx= _g30861_ 2))
                                                   (error "Context expects 2 values"
                                                          _g30861_)))
                                             (let ((_target2949129540_
                                                    (values-ref _g30860_ 0))
                                                   (_tl2949329543_
                                                    (values-ref _g30860_ 1)))
                                               (if (gx#stx-null?
                                                    _tl2949329543_)
                                                   (letrec ((_loop2949429546_
                                                             (lambda (_hd2949229550_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _new-id2949829553_
                              _id2949929555_)
                       (if (gx#stx-pair? _hd2949229550_)
                           (let ((_e2949529558_ (gx#syntax-e _hd2949229550_)))
                             (let ((_lp-hd2949629562_ (##car _e2949529558_))
                                   (_lp-tl2949729565_ (##cdr _e2949529558_)))
                               (if (gx#stx-pair? _lp-hd2949629562_)
                                   (let ((_e2950229568_
                                          (gx#syntax-e _lp-hd2949629562_)))
                                     (let ((_hd2950329572_
                                            (##car _e2950229568_))
                                           (_tl2950429575_
                                            (##cdr _e2950229568_)))
                                       (if (gx#stx-pair? _tl2950429575_)
                                           (let ((_e2950529578_
                                                  (gx#syntax-e
                                                   _tl2950429575_)))
                                             (let ((_hd2950629582_
                                                    (##car _e2950529578_))
                                                   (_tl2950729585_
                                                    (##cdr _e2950529578_)))
                                               (if (gx#stx-null?
                                                    _tl2950729585_)
                                                   (_loop2949429546_
                                                    _lp-tl2949729565_
                                                    (cons _hd2950629582_
                                                          _new-id2949829553_)
                                                    (cons _hd2950329572_
                                                          _id2949929555_))
                                                   (_g2948029513_
                                                    _g2948129517_))))
                                           (_g2948029513_ _g2948129517_))))
                                   (_g2948029513_ _g2948129517_))))
                           (let ((_new-id2950029588_
                                  (reverse _new-id2949829553_))
                                 (_id2950129591_ (reverse _id2949929555_)))
                             ((lambda (_L29594_ _L29596_ _L29597_)
                                (if (if (gx#identifier-list?
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g2961529618_
                                                           _g2961629621_)
                                                    (cons _g2961529618_
                                                          _g2961629621_))
                                                  '()
                                                  _L29596_)))
                                        (gx#identifier-list?
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g2962329626_
                                                           _g2962429629_)
                                                    (cons _g2962329626_
                                                          _g2962429629_))
                                                  '()
                                                  _L29594_)))
                                        '#f)
                                    (let* ((_keytab29632_ (make-hash-table))
                                           (_found29635_ (make-hash-table))
                                           (_g30862_
                                            (for-each
                                             (lambda (_id29638_ _new-id29640_)
                                               (hash-put!
                                                _keytab29632_
                                                (gx#core-identifier-key
                                                 _id29638_)
                                                (gx#core-identifier-key
                                                 _new-id29640_)))
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g2964129644_
                                                               _g2964229647_)
                                                        (cons _g2964129644_
                                                              _g2964229647_))
                                                      '()
                                                      _L29596_))
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g2964929652_
                                                               _g2965029655_)
                                                        (cons _g2964929652_
                                                              _g2965029655_))
                                                      '()
                                                      _L29594_))))
                                           (_imports29660_
                                            (gx#core-expand-import-source
                                             _L29597_))
                                           (_fold-e29680_
                                            (letrec ((_fold-e29663_
                                                      (lambda (_in29666_
                                                               _r29668_)
                                                        (if (gx#module-import?
                                                             _in29666_)
                                                            (let* ((_name29670_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#module-import-name _in29666_))
                           (_$e29673_ (hash-get _keytab29632_ _name29670_)))
                      (if _$e29673_
                          ((lambda (_rename29677_)
                             (begin
                               (hash-put! _found29635_ _name29670_ '#t)
                               (cons (|gerbil/core::<module-sugar>[1]#module-import-rename|
                                      _in29666_
                                      _rename29677_)
                                     _r29668_)))
                           _$e29673_)
                          (cons _in29666_ _r29668_)))
                    (if (gx#import-set? _in29666_)
                        (foldl _fold-e29663_
                               _r29668_
                               (gx#import-set-imports _in29666_))
                        (cons _in29666_ _r29668_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _fold-e29663_))
                                           (_new-imports29683_
                                            (foldl _fold-e29680_
                                                   '()
                                                   _imports29660_)))
                                      (begin
                                        (for-each
                                         (lambda (_id29688_)
                                           (if (hash-get
                                                _found29635_
                                                (gx#core-identifier-key
                                                 _id29688_))
                                               '#!void
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; identifier is not in the import set"
                                                _stx29477_
                                                _id29688_)))
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g2969029693_
                                                           _g2969129696_)
                                                    (cons _g2969029693_
                                                          _g2969129696_))
                                                  '()
                                                  _L29596_)))
                                        (cons 'begin: _new-imports29683_)))
                                    (_g2948029513_ _g2948129517_)))
                              _new-id2950029588_
                              _id2950129591_
                              _hd2948929534_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2949429546_
                                                      _target2949129540_
                                                      '()
                                                      '()))
                                                   (_g2948029513_
                                                    _g2948129517_)))))
                                         (_g2948029513_ _g2948129517_))
                                     (_g2948029513_ _g2948129517_))))
                             (_g2948029513_ _g2948129517_))))
                     (_g2948029513_ _g2948129517_)))))
         (_g2947929699_ _stx29477_)))))
  (define |gerbil/core::<module-sugar>[:0:]#prefix-in|
    (gx#make-import-expander
     (lambda (_stx29705_)
       (let* ((_g2970829726_
               (lambda (_g2970929722_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2970929722_)))
              (_g2970729805_
               (lambda (_g2970929730_)
                 (if (gx#stx-pair? _g2970929730_)
                     (let ((_e2971229733_ (gx#syntax-e _g2970929730_)))
                       (let ((_hd2971329737_ (##car _e2971229733_))
                             (_tl2971429740_ (##cdr _e2971229733_)))
                         (if (gx#stx-pair? _tl2971429740_)
                             (let ((_e2971529743_
                                    (gx#syntax-e _tl2971429740_)))
                               (let ((_hd2971629747_ (##car _e2971529743_))
                                     (_tl2971729750_ (##cdr _e2971529743_)))
                                 (if (gx#stx-pair? _tl2971729750_)
                                     (let ((_e2971829753_
                                            (gx#syntax-e _tl2971729750_)))
                                       (let ((_hd2971929757_
                                              (##car _e2971829753_))
                                             (_tl2972029760_
                                              (##cdr _e2971829753_)))
                                         (if (gx#stx-null? _tl2972029760_)
                                             ((lambda (_L29763_ _L29765_)
                                                (if (gx#identifier? _L29763_)
                                                    (let* ((_pre29781_
                                                            (gx#stx-e
                                                             _L29763_))
                                                           (_imports29784_
                                                            (gx#core-expand-import-source
                                                             _L29765_))
                                                           (_rename-e29790_
                                                            (lambda (_name29787_)
                                                              (|gerbil/core::<module-sugar>[1]#prefix-identifier-key|
                                                               _name29787_
                                                               _pre29781_)))
                                                           (_fold-e29800_
                                                            (letrec ((_fold-e29793_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_in29796_ _r29798_)
                                (if (gx#module-import? _in29796_)
                                    (cons (|gerbil/core::<module-sugar>[1]#module-import-rename|
                                           _in29796_
                                           (_rename-e29790_
                                            (gx#module-import-name _in29796_)))
                                          _r29798_)
                                    (if (gx#import-set? _in29796_)
                                        (foldl _fold-e29793_
                                               _r29798_
                                               (gx#import-set-imports
                                                _in29796_))
                                        (cons _in29796_ _r29798_))))))
                      _fold-e29793_)))
              (cons 'begin: (foldl _fold-e29800_ '() _imports29784_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2970829726_
                                                     _g2970929730_)))
                                              _hd2971929757_
                                              _hd2971629747_)
                                             (_g2970829726_ _g2970929730_))))
                                     (_g2970829726_ _g2970929730_))))
                             (_g2970829726_ _g2970929730_))))
                     (_g2970829726_ _g2970929730_)))))
         (_g2970729805_ _stx29705_)))))
  (define |gerbil/core::<module-sugar>[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_stx29809_)
       (let* ((_g2981229836_
               (lambda (_g2981329832_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2981329832_)))
              (_g2981129958_
               (lambda (_g2981329840_)
                 (if (gx#stx-pair? _g2981329840_)
                     (let ((_e2981629843_ (gx#syntax-e _g2981329840_)))
                       (let ((_hd2981729847_ (##car _e2981629843_))
                             (_tl2981829850_ (##cdr _e2981629843_)))
                         (if (gx#stx-pair? _tl2981829850_)
                             (let ((_e2981929853_
                                    (gx#syntax-e _tl2981829850_)))
                               (let ((_hd2982029857_ (##car _e2981929853_))
                                     (_tl2982129860_ (##cdr _e2981929853_)))
                                 (if (gx#stx-pair/null? _tl2982129860_)
                                     (if (fx>= (gx#stx-length _tl2982129860_)
                                               '0)
                                         (let ((_g30863_
                                                (gx#syntax-split-splice
                                                 _tl2982129860_
                                                 '0)))
                                           (begin
                                             (let ((_g30864_
                                                    (values-count _g30863_)))
                                               (if (not (fx= _g30864_ 2))
                                                   (error "Context expects 2 values"
                                                          _g30864_)))
                                             (let ((_target2982229863_
                                                    (values-ref _g30863_ 0))
                                                   (_tl2982429866_
                                                    (values-ref _g30863_ 1)))
                                               (if (gx#stx-null?
                                                    _tl2982429866_)
                                                   (letrec ((_loop2982529869_
                                                             (lambda (_hd2982329873_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id2982929876_)
                       (if (gx#stx-pair? _hd2982329873_)
                           (let ((_e2982629879_ (gx#syntax-e _hd2982329873_)))
                             (let ((_lp-hd2982729883_ (##car _e2982629879_))
                                   (_lp-tl2982829886_ (##cdr _e2982629879_)))
                               (_loop2982529869_
                                _lp-tl2982829886_
                                (cons _lp-hd2982729883_ _id2982929876_))))
                           (let ((_id2983029889_ (reverse _id2982929876_)))
                             ((lambda (_L29893_ _L29895_)
                                (if (gx#identifier-list?
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g2991229915_
                                                       _g2991329918_)
                                                (cons _g2991229915_
                                                      _g2991329918_))
                                              '()
                                              _L29893_)))
                                    (let* ((_keys29929_
                                            (gx#stx-map
                                             gx#core-identifier-key
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g2992029923_
                                                               _g2992129926_)
                                                        (cons _g2992029923_
                                                              _g2992129926_))
                                                      '()
                                                      _L29893_))))
                                           (_keytab29940_
                                            (let ((_ht29932_
                                                   (make-hash-table)))
                                              (begin
                                                (for-each
                                                 (lambda (_g2993429936_)
                                                   (hash-put!
                                                    _ht29932_
                                                    _g2993429936_
                                                    '#t))
                                                 _keys29929_)
                                                _ht29932_)))
                                           (_exports29943_
                                            (gx#core-expand-export-source
                                             _L29895_))
                                           (_fold-e29953_
                                            (letrec ((_fold-e29946_
                                                      (lambda (_out29949_
                                                               _r29951_)
                                                        (if (gx#module-export?
                                                             _out29949_)
                                                            (if (hash-get
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _keytab29940_
                         (gx#module-export-name _out29949_))
                        _r29951_
                        (cons _out29949_ _r29951_))
                    (if (gx#export-set? _out29949_)
                        (foldl _fold-e29946_
                               _r29951_
                               (gx#export-set-exports _out29949_))
                        _r29951_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _fold-e29946_)))
                                      (cons 'begin:
                                            (foldl _fold-e29953_
                                                   '()
                                                   _exports29943_)))
                                    (_g2981229836_ _g2981329840_)))
                              _id2983029889_
                              _hd2982029857_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2982529869_
                                                      _target2982229863_
                                                      '()))
                                                   (_g2981229836_
                                                    _g2981329840_)))))
                                         (_g2981229836_ _g2981329840_))
                                     (_g2981229836_ _g2981329840_))))
                             (_g2981229836_ _g2981329840_))))
                     (_g2981229836_ _g2981329840_)))))
         (_g2981129958_ _stx29809_)))))
  (define |gerbil/core::<module-sugar>[1]#module-export-rename|
    (lambda (_out29963_ _rename29965_)
      (gx#make-module-export
       (gx#module-export-context _out29963_)
       (gx#module-export-key _out29963_)
       (gx#module-export-phi _out29963_)
       _rename29965_
       (gx#module-export-weak? _out29963_))))
  (define |gerbil/core::<module-sugar>[:0:]#rename-out|
    (gx#make-export-expander
     (lambda (_stx29967_)
       (let* ((_g2997030003_
               (lambda (_g2997129999_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2997129999_)))
              (_g2996930189_
               (lambda (_g2997130007_)
                 (if (gx#stx-pair? _g2997130007_)
                     (let ((_e2997530010_ (gx#syntax-e _g2997130007_)))
                       (let ((_hd2997630014_ (##car _e2997530010_))
                             (_tl2997730017_ (##cdr _e2997530010_)))
                         (if (gx#stx-pair? _tl2997730017_)
                             (let ((_e2997830020_
                                    (gx#syntax-e _tl2997730017_)))
                               (let ((_hd2997930024_ (##car _e2997830020_))
                                     (_tl2998030027_ (##cdr _e2997830020_)))
                                 (if (gx#stx-pair/null? _tl2998030027_)
                                     (if (fx>= (gx#stx-length _tl2998030027_)
                                               '0)
                                         (let ((_g30865_
                                                (gx#syntax-split-splice
                                                 _tl2998030027_
                                                 '0)))
                                           (begin
                                             (let ((_g30866_
                                                    (values-count _g30865_)))
                                               (if (not (fx= _g30866_ 2))
                                                   (error "Context expects 2 values"
                                                          _g30866_)))
                                             (let ((_target2998130030_
                                                    (values-ref _g30865_ 0))
                                                   (_tl2998330033_
                                                    (values-ref _g30865_ 1)))
                                               (if (gx#stx-null?
                                                    _tl2998330033_)
                                                   (letrec ((_loop2998430036_
                                                             (lambda (_hd2998230040_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _new-id2998830043_
                              _id2998930045_)
                       (if (gx#stx-pair? _hd2998230040_)
                           (let ((_e2998530048_ (gx#syntax-e _hd2998230040_)))
                             (let ((_lp-hd2998630052_ (##car _e2998530048_))
                                   (_lp-tl2998730055_ (##cdr _e2998530048_)))
                               (if (gx#stx-pair? _lp-hd2998630052_)
                                   (let ((_e2999230058_
                                          (gx#syntax-e _lp-hd2998630052_)))
                                     (let ((_hd2999330062_
                                            (##car _e2999230058_))
                                           (_tl2999430065_
                                            (##cdr _e2999230058_)))
                                       (if (gx#stx-pair? _tl2999430065_)
                                           (let ((_e2999530068_
                                                  (gx#syntax-e
                                                   _tl2999430065_)))
                                             (let ((_hd2999630072_
                                                    (##car _e2999530068_))
                                                   (_tl2999730075_
                                                    (##cdr _e2999530068_)))
                                               (if (gx#stx-null?
                                                    _tl2999730075_)
                                                   (_loop2998430036_
                                                    _lp-tl2998730055_
                                                    (cons _hd2999630072_
                                                          _new-id2998830043_)
                                                    (cons _hd2999330062_
                                                          _id2998930045_))
                                                   (_g2997030003_
                                                    _g2997130007_))))
                                           (_g2997030003_ _g2997130007_))))
                                   (_g2997030003_ _g2997130007_))))
                           (let ((_new-id2999030078_
                                  (reverse _new-id2998830043_))
                                 (_id2999130081_ (reverse _id2998930045_)))
                             ((lambda (_L30084_ _L30086_ _L30087_)
                                (if (if (gx#identifier-list?
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g3010530108_
                                                           _g3010630111_)
                                                    (cons _g3010530108_
                                                          _g3010630111_))
                                                  '()
                                                  _L30086_)))
                                        (gx#identifier-list?
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g3011330116_
                                                           _g3011430119_)
                                                    (cons _g3011330116_
                                                          _g3011430119_))
                                                  '()
                                                  _L30084_)))
                                        '#f)
                                    (let* ((_keytab30122_ (make-hash-table))
                                           (_found30125_ (make-hash-table))
                                           (_g30867_
                                            (for-each
                                             (lambda (_id30128_ _new-id30130_)
                                               (hash-put!
                                                _keytab30122_
                                                (gx#core-identifier-key
                                                 _id30128_)
                                                (gx#core-identifier-key
                                                 _new-id30130_)))
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g3013130134_
                                                               _g3013230137_)
                                                        (cons _g3013130134_
                                                              _g3013230137_))
                                                      '()
                                                      _L30086_))
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g3013930142_
                                                               _g3014030145_)
                                                        (cons _g3013930142_
                                                              _g3014030145_))
                                                      '()
                                                      _L30084_))))
                                           (_exports30150_
                                            (gx#core-expand-export-source
                                             _L30087_))
                                           (_fold-e30170_
                                            (letrec ((_fold-e30153_
                                                      (lambda (_out30156_
                                                               _r30158_)
                                                        (if (gx#module-export?
                                                             _out30156_)
                                                            (let* ((_name30160_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#module-export-name _out30156_))
                           (_$e30163_ (hash-get _keytab30122_ _name30160_)))
                      (if _$e30163_
                          ((lambda (_rename30167_)
                             (begin
                               (hash-put! _found30125_ _name30160_ '#t)
                               (cons (|gerbil/core::<module-sugar>[1]#module-export-rename|
                                      _out30156_
                                      _rename30167_)
                                     _r30158_)))
                           _$e30163_)
                          (cons _out30156_ _r30158_)))
                    (if (gx#export-set? _out30156_)
                        (foldl _fold-e30153_
                               _r30158_
                               (gx#export-set-exports _out30156_))
                        (cons _out30156_ _r30158_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _fold-e30153_))
                                           (_new-exports30173_
                                            (foldl _fold-e30170_
                                                   '()
                                                   _exports30150_)))
                                      (begin
                                        (for-each
                                         (lambda (_id30178_)
                                           (if (hash-get
                                                _found30125_
                                                (gx#core-identifier-key
                                                 _id30178_))
                                               '#!void
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; identifier is not in the export set"
                                                _stx29967_
                                                _id30178_)))
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g3018030183_
                                                           _g3018130186_)
                                                    (cons _g3018030183_
                                                          _g3018130186_))
                                                  '()
                                                  _L30086_)))
                                        (cons 'begin: _new-exports30173_)))
                                    (_g2997030003_ _g2997130007_)))
                              _new-id2999030078_
                              _id2999130081_
                              _hd2997930024_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2998430036_
                                                      _target2998130030_
                                                      '()
                                                      '()))
                                                   (_g2997030003_
                                                    _g2997130007_)))))
                                         (_g2997030003_ _g2997130007_))
                                     (_g2997030003_ _g2997130007_))))
                             (_g2997030003_ _g2997130007_))))
                     (_g2997030003_ _g2997130007_)))))
         (_g2996930189_ _stx29967_)))))
  (define |gerbil/core::<module-sugar>[:0:]#prefix-out|
    (gx#make-export-expander
     (lambda (_stx30195_)
       (let* ((_g3019830216_
               (lambda (_g3019930212_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g3019930212_)))
              (_g3019730295_
               (lambda (_g3019930220_)
                 (if (gx#stx-pair? _g3019930220_)
                     (let ((_e3020230223_ (gx#syntax-e _g3019930220_)))
                       (let ((_hd3020330227_ (##car _e3020230223_))
                             (_tl3020430230_ (##cdr _e3020230223_)))
                         (if (gx#stx-pair? _tl3020430230_)
                             (let ((_e3020530233_
                                    (gx#syntax-e _tl3020430230_)))
                               (let ((_hd3020630237_ (##car _e3020530233_))
                                     (_tl3020730240_ (##cdr _e3020530233_)))
                                 (if (gx#stx-pair? _tl3020730240_)
                                     (let ((_e3020830243_
                                            (gx#syntax-e _tl3020730240_)))
                                       (let ((_hd3020930247_
                                              (##car _e3020830243_))
                                             (_tl3021030250_
                                              (##cdr _e3020830243_)))
                                         (if (gx#stx-null? _tl3021030250_)
                                             ((lambda (_L30253_ _L30255_)
                                                (if (gx#identifier? _L30253_)
                                                    (let* ((_pre30271_
                                                            (gx#stx-e
                                                             _L30253_))
                                                           (_exports30274_
                                                            (gx#core-expand-export-source
                                                             _L30255_))
                                                           (_rename-e30280_
                                                            (lambda (_name30277_)
                                                              (|gerbil/core::<module-sugar>[1]#prefix-identifier-key|
                                                               _name30277_
                                                               _pre30271_)))
                                                           (_fold-e30290_
                                                            (letrec ((_fold-e30283_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_out30286_ _r30288_)
                                (if (gx#module-export? _out30286_)
                                    (cons (|gerbil/core::<module-sugar>[1]#module-export-rename|
                                           _out30286_
                                           (_rename-e30280_
                                            (gx#module-export-name
                                             _out30286_)))
                                          _r30288_)
                                    (if (gx#export-set? _out30286_)
                                        (foldl _fold-e30283_
                                               _r30288_
                                               (gx#export-set-exports
                                                _out30286_))
                                        (cons _out30286_ _r30288_))))))
                      _fold-e30283_)))
              (cons 'begin: (foldl _fold-e30290_ '() _exports30274_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3019830216_
                                                     _g3019930220_)))
                                              _hd3020930247_
                                              _hd3020630237_)
                                             (_g3019830216_ _g3019930220_))))
                                     (_g3019830216_ _g3019930220_))))
                             (_g3019830216_ _g3019930220_))))
                     (_g3019830216_ _g3019930220_)))))
         (_g3019730295_ _stx30195_)))))
  (define |gerbil/core::<module-sugar>[:0:]#struct-out|
    (gx#make-export-expander
     (lambda (_stx30299_)
       (let* ((_g3030230322_
               (lambda (_g3030330318_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g3030330318_)))
              (_g3030130557_
               (lambda (_g3030330326_)
                 (if (gx#stx-pair? _g3030330326_)
                     (let ((_e3030530329_ (gx#syntax-e _g3030330326_)))
                       (let ((_hd3030630333_ (##car _e3030530329_))
                             (_tl3030730336_ (##cdr _e3030530329_)))
                         (if (gx#stx-pair/null? _tl3030730336_)
                             (if (fx>= (gx#stx-length _tl3030730336_) '0)
                                 (let ((_g30868_
                                        (gx#syntax-split-splice
                                         _tl3030730336_
                                         '0)))
                                   (begin
                                     (let ((_g30869_ (values-count _g30868_)))
                                       (if (not (fx= _g30869_ 2))
                                           (error "Context expects 2 values"
                                                  _g30869_)))
                                     (let ((_target3030830339_
                                            (values-ref _g30868_ 0))
                                           (_tl3031030342_
                                            (values-ref _g30868_ 1)))
                                       (if (gx#stx-null? _tl3031030342_)
                                           (letrec ((_loop3031130345_
                                                     (lambda (_hd3030930349_
                                                              _id3031530352_)
                                                       (if (gx#stx-pair?
                                                            _hd3030930349_)
                                                           (let ((_e3031230355_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd3030930349_)))
                     (let ((_lp-hd3031330359_ (##car _e3031230355_))
                           (_lp-tl3031430362_ (##cdr _e3031230355_)))
                       (_loop3031130345_
                        _lp-tl3031430362_
                        (cons _lp-hd3031330359_ _id3031530352_))))
                   (let ((_id3031630365_ (reverse _id3031530352_)))
                     ((lambda (_L30369_)
                        (let _lp30385_ ((_rest30388_
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g3054830551_
                                                           _g3054930554_)
                                                    (cons _g3054830551_
                                                          _g3054930554_))
                                                  '()
                                                  _L30369_)))
                                        (_ids30390_ '()))
                          (let* ((_g3039330405_
                                  (lambda (_g3039430401_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g3039430401_)))
                                 (_g3039230416_
                                  (lambda (_g3039430409_)
                                    ((lambda () (cons 'begin: _ids30390_)))))
                                 (_g3039130545_
                                  (lambda (_g3039430420_)
                                    (if (gx#stx-pair? _g3039430420_)
                                        (let ((_e3039730423_
                                               (gx#syntax-e _g3039430420_)))
                                          (let ((_hd3039830427_
                                                 (##car _e3039730423_))
                                                (_tl3039930430_
                                                 (##cdr _e3039730423_)))
                                            ((lambda (_L30433_ _L30435_)
                                               (let ((_info30450_
                                                      (gx#syntax-local-value
                                                       _L30435_
                                                       false)))
                                                 (if (|gerbil/core::<MOP>::<MOP:2>[1]#expander-type-info?|
                                                      _info30450_)
                                                     (let* ((_g3045230469_
                                                             (slot-ref
                                                              _info30450_
                                                              'expander-identifiers))
                                                            (_E3045430475_
                                                             (lambda ()
                                                               (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g3045230469_)))
                    (_K3045530487_
                     (lambda (_setf30479_
                              _getf30481_
                              _type?30482_
                              _make-type30483_
                              _type::t30484_
                              _super30485_)
                       (_lp30385_
                        _L30433_
                        (cons _L30435_
                              (cons _type::t30484_
                                    (cons _make-type30483_
                                          (cons _type?30482_
                                                (foldr cons
                                                       (foldr cons
                                                              _ids30390_
                                                              _setf30479_)
                                                       _getf30481_)))))))))
               (if (##pair? _g3045230469_)
                   (let ((_hd3045630491_ (##car _g3045230469_))
                         (_tl3045730494_ (##cdr _g3045230469_)))
                     (let ((_super30497_ _hd3045630491_))
                       (if (##pair? _tl3045730494_)
                           (let ((_hd3045830500_ (##car _tl3045730494_))
                                 (_tl3045930503_ (##cdr _tl3045730494_)))
                             (let ((_type::t30506_ _hd3045830500_))
                               (if (##pair? _tl3045930503_)
                                   (let ((_hd3046030509_
                                          (##car _tl3045930503_))
                                         (_tl3046130512_
                                          (##cdr _tl3045930503_)))
                                     (let ((_make-type30515_ _hd3046030509_))
                                       (if (##pair? _tl3046130512_)
                                           (let ((_hd3046230518_
                                                  (##car _tl3046130512_))
                                                 (_tl3046330521_
                                                  (##cdr _tl3046130512_)))
                                             (let ((_type?30524_
                                                    _hd3046230518_))
                                               (if (##pair? _tl3046330521_)
                                                   (let ((_hd3046430527_
                                                          (##car _tl3046330521_))
                                                         (_tl3046530530_
                                                          (##cdr _tl3046330521_)))
                                                     (let ((_getf30533_
                                                            _hd3046430527_))
                                                       (if (##pair? _tl3046530530_)
                                                           (let ((_hd3046630536_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##car _tl3046530530_))
                         (_tl3046730539_ (##cdr _tl3046530530_)))
                     (let ((_setf30542_ _hd3046630536_))
                       (if (##null? _tl3046730539_)
                           (_K3045530487_
                            _setf30542_
                            _getf30533_
                            _type?30524_
                            _make-type30515_
                            _type::t30506_
                            _super30497_)
                           (_E3045430475_))))
                   (_E3045430475_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E3045430475_))))
                                           (_E3045430475_))))
                                   (_E3045430475_))))
                           (_E3045430475_))))
                   (_E3045430475_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Incomplete type info"
                                                      _stx30299_
                                                      _L30435_))))
                                             _tl3039930430_
                                             _hd3039830427_)))
                                        (_g3039230416_ _g3039430420_)))))
                            (_g3039130545_ _rest30388_))))
                      _id3031630365_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop3031130345_
                                              _target3030830339_
                                              '()))
                                           (_g3030230322_ _g3030330326_)))))
                                 (_g3030230322_ _g3030330326_))
                             (_g3030230322_ _g3030330326_))))
                     (_g3030230322_ _g3030330326_)))))
         (_g3030130557_ _stx30299_))))))
