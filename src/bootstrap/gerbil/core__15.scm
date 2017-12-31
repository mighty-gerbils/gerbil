(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<module-sugar>[:0:]#require|
    (lambda (_$stx28668_)
      (let* ((_g2867328692_
              (lambda (_g2867428688_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2867428688_)))
             (_g2867228738_
              (lambda (_g2867428696_)
                (if (gx#stx-pair? _g2867428696_)
                    (let ((_e2868128699_ (gx#syntax-e _g2867428696_)))
                      (let ((_hd2868228703_ (##car _e2868128699_))
                            (_tl2868328706_ (##cdr _e2868128699_)))
                        (if (gx#stx-pair? _tl2868328706_)
                            (let ((_e2868428709_ (gx#syntax-e _tl2868328706_)))
                              (let ((_hd2868528713_ (##car _e2868428709_))
                                    (_tl2868628716_ (##cdr _e2868428709_)))
                                ((lambda (_L28719_ _L28721_ _L28722_)
                                   (cons (gx#datum->syntax '#f 'cond-expand)
                                         (cons (cons _L28721_
                                                     (cons (cons _L28722_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L28719_)
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
                                     (cons _L28721_ '())))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                                 _tl2868628716_
                                 _hd2868528713_
                                 _hd2868228703_)))
                            (_g2867328692_ _g2867428696_))))
                    (_g2867328692_ _g2867428696_))))
             (_g2867128759_
              (lambda (_g2867428742_)
                (if (gx#stx-pair? _g2867428742_)
                    (let ((_e2867528745_ (gx#syntax-e _g2867428742_)))
                      (let ((_hd2867628749_ (##car _e2867528745_))
                            (_tl2867728752_ (##cdr _e2867528745_)))
                        (if (gx#stx-null? _tl2867728752_)
                            ((lambda ()
                               (cons (gx#datum->syntax '#f 'begin) '())))
                            (_g2867228738_ _g2867428742_))))
                    (_g2867228738_ _g2867428742_)))))
        (_g2867128759_ _$stx28668_))))
  (define |gerbil/core$<module-sugar>[:0:]#defsyntax-for-import|
    (lambda (_$stx28763_)
      (let* ((_g2876828808_
              (lambda (_g2876928804_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2876928804_)))
             (_g2876728909_
              (lambda (_g2876928812_)
                (if (gx#stx-pair? _g2876928812_)
                    (let ((_e2878528815_ (gx#syntax-e _g2876928812_)))
                      (let ((_hd2878628819_ (##car _e2878528815_))
                            (_tl2878728822_ (##cdr _e2878528815_)))
                        (if (gx#stx-pair? _tl2878728822_)
                            (let ((_e2878828825_ (gx#syntax-e _tl2878728822_)))
                              (let ((_hd2878928829_ (##car _e2878828825_))
                                    (_tl2879028832_ (##cdr _e2878828825_)))
                                (if (gx#stx-pair? _hd2878928829_)
                                    (let ((_e2879128835_
                                           (gx#syntax-e _hd2878928829_)))
                                      (let ((_hd2879228839_
                                             (##car _e2879128835_))
                                            (_tl2879328842_
                                             (##cdr _e2879128835_)))
                                        (if (gx#stx-pair/null? _tl2879028832_)
                                            (if (fx>= (gx#stx-length
                                                       _tl2879028832_)
                                                      '0)
                                                (let ((_g30909_
                                                       (gx#syntax-split-splice
                                                        _tl2879028832_
                                                        '0)))
                                                  (begin
                                                    (let ((_g30910_
                                                           (values-count
                                                            _g30909_)))
                                                      (if (not (fx= _g30910_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g30910_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2879428845_
                                                           (values-ref
                                                            _g30909_
                                                            0))
                                                          (_tl2879628848_
                                                           (values-ref
                                                            _g30909_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl2879628848_)
                                                          (letrec ((_loop2879728851_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd2879528855_ _body2880128858_)
                              (if (gx#stx-pair? _hd2879528855_)
                                  (let ((_e2879828861_
                                         (gx#syntax-e _hd2879528855_)))
                                    (let ((_lp-hd2879928865_
                                           (##car _e2879828861_))
                                          (_lp-tl2880028868_
                                           (##cdr _e2879828861_)))
                                      (_loop2879728851_
                                       _lp-tl2880028868_
                                       (cons _lp-hd2879928865_
                                             _body2880128858_))))
                                  (let ((_body2880228871_
                                         (reverse _body2880128858_)))
                                    ((lambda (_L28875_
                                              _L28877_
                                              _L28878_
                                              _L28879_)
                                       (if (gx#identifier? _L28878_)
                                           (cons _L28879_
                                                 (cons _L28878_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'lambda)
                           (cons _L28877_
                                 (begin
                                   '#!void
                                   (foldr (lambda (_g2890028903_ _g2890128906_)
                                            (cons _g2890028903_ _g2890128906_))
                                          '()
                                          _L28875_))))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g2876828808_ _g2876928812_)))
                                     _body2880228871_
                                     _tl2879328842_
                                     _hd2879228839_
                                     _hd2878628819_))))))
                    (_loop2879728851_ _target2879428845_ '()))
                  (_g2876828808_ _g2876928812_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2876828808_ _g2876928812_))
                                            (_g2876828808_ _g2876928812_))))
                                    (_g2876828808_ _g2876928812_))))
                            (_g2876828808_ _g2876928812_))))
                    (_g2876828808_ _g2876928812_))))
             (_g2876628963_
              (lambda (_g2876928913_)
                (if (gx#stx-pair? _g2876928913_)
                    (let ((_e2877228916_ (gx#syntax-e _g2876928913_)))
                      (let ((_hd2877328920_ (##car _e2877228916_))
                            (_tl2877428923_ (##cdr _e2877228916_)))
                        (if (gx#stx-pair? _tl2877428923_)
                            (let ((_e2877528926_ (gx#syntax-e _tl2877428923_)))
                              (let ((_hd2877628930_ (##car _e2877528926_))
                                    (_tl2877728933_ (##cdr _e2877528926_)))
                                (if (gx#stx-pair? _tl2877728933_)
                                    (let ((_e2877828936_
                                           (gx#syntax-e _tl2877728933_)))
                                      (let ((_hd2877928940_
                                             (##car _e2877828936_))
                                            (_tl2878028943_
                                             (##cdr _e2877828936_)))
                                        (if (gx#stx-null? _tl2878028943_)
                                            ((lambda (_L28946_ _L28948_)
                                               (if (gx#identifier? _L28948_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'defsyntax)
                                                         (cons _L28948_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'make-import-expander)
                                   (cons _L28946_ '()))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2876728909_
                                                    _g2876928913_)))
                                             _hd2877928940_
                                             _hd2877628930_)
                                            (_g2876728909_ _g2876928913_))))
                                    (_g2876728909_ _g2876928913_))))
                            (_g2876728909_ _g2876928913_))))
                    (_g2876728909_ _g2876928913_)))))
        (_g2876628963_ _$stx28763_))))
  (define |gerbil/core$<module-sugar>[:0:]#defsyntax-for-export|
    (lambda (_$stx28968_)
      (let* ((_g2897329013_
              (lambda (_g2897429009_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2897429009_)))
             (_g2897229114_
              (lambda (_g2897429017_)
                (if (gx#stx-pair? _g2897429017_)
                    (let ((_e2899029020_ (gx#syntax-e _g2897429017_)))
                      (let ((_hd2899129024_ (##car _e2899029020_))
                            (_tl2899229027_ (##cdr _e2899029020_)))
                        (if (gx#stx-pair? _tl2899229027_)
                            (let ((_e2899329030_ (gx#syntax-e _tl2899229027_)))
                              (let ((_hd2899429034_ (##car _e2899329030_))
                                    (_tl2899529037_ (##cdr _e2899329030_)))
                                (if (gx#stx-pair? _hd2899429034_)
                                    (let ((_e2899629040_
                                           (gx#syntax-e _hd2899429034_)))
                                      (let ((_hd2899729044_
                                             (##car _e2899629040_))
                                            (_tl2899829047_
                                             (##cdr _e2899629040_)))
                                        (if (gx#stx-pair/null? _tl2899529037_)
                                            (if (fx>= (gx#stx-length
                                                       _tl2899529037_)
                                                      '0)
                                                (let ((_g30911_
                                                       (gx#syntax-split-splice
                                                        _tl2899529037_
                                                        '0)))
                                                  (begin
                                                    (let ((_g30912_
                                                           (values-count
                                                            _g30911_)))
                                                      (if (not (fx= _g30912_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g30912_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2899929050_
                                                           (values-ref
                                                            _g30911_
                                                            0))
                                                          (_tl2900129053_
                                                           (values-ref
                                                            _g30911_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl2900129053_)
                                                          (letrec ((_loop2900229056_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd2900029060_ _body2900629063_)
                              (if (gx#stx-pair? _hd2900029060_)
                                  (let ((_e2900329066_
                                         (gx#syntax-e _hd2900029060_)))
                                    (let ((_lp-hd2900429070_
                                           (##car _e2900329066_))
                                          (_lp-tl2900529073_
                                           (##cdr _e2900329066_)))
                                      (_loop2900229056_
                                       _lp-tl2900529073_
                                       (cons _lp-hd2900429070_
                                             _body2900629063_))))
                                  (let ((_body2900729076_
                                         (reverse _body2900629063_)))
                                    ((lambda (_L29080_
                                              _L29082_
                                              _L29083_
                                              _L29084_)
                                       (if (gx#identifier? _L29083_)
                                           (cons _L29084_
                                                 (cons _L29083_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'lambda)
                           (cons _L29082_
                                 (begin
                                   '#!void
                                   (foldr (lambda (_g2910529108_ _g2910629111_)
                                            (cons _g2910529108_ _g2910629111_))
                                          '()
                                          _L29080_))))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g2897329013_ _g2897429017_)))
                                     _body2900729076_
                                     _tl2899829047_
                                     _hd2899729044_
                                     _hd2899129024_))))))
                    (_loop2900229056_ _target2899929050_ '()))
                  (_g2897329013_ _g2897429017_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2897329013_ _g2897429017_))
                                            (_g2897329013_ _g2897429017_))))
                                    (_g2897329013_ _g2897429017_))))
                            (_g2897329013_ _g2897429017_))))
                    (_g2897329013_ _g2897429017_))))
             (_g2897129168_
              (lambda (_g2897429118_)
                (if (gx#stx-pair? _g2897429118_)
                    (let ((_e2897729121_ (gx#syntax-e _g2897429118_)))
                      (let ((_hd2897829125_ (##car _e2897729121_))
                            (_tl2897929128_ (##cdr _e2897729121_)))
                        (if (gx#stx-pair? _tl2897929128_)
                            (let ((_e2898029131_ (gx#syntax-e _tl2897929128_)))
                              (let ((_hd2898129135_ (##car _e2898029131_))
                                    (_tl2898229138_ (##cdr _e2898029131_)))
                                (if (gx#stx-pair? _tl2898229138_)
                                    (let ((_e2898329141_
                                           (gx#syntax-e _tl2898229138_)))
                                      (let ((_hd2898429145_
                                             (##car _e2898329141_))
                                            (_tl2898529148_
                                             (##cdr _e2898329141_)))
                                        (if (gx#stx-null? _tl2898529148_)
                                            ((lambda (_L29151_ _L29153_)
                                               (if (gx#identifier? _L29153_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'defsyntax)
                                                         (cons _L29153_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'make-export-expander)
                                   (cons _L29151_ '()))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2897229114_
                                                    _g2897429118_)))
                                             _hd2898429145_
                                             _hd2898129135_)
                                            (_g2897229114_ _g2897429118_))))
                                    (_g2897229114_ _g2897429118_))))
                            (_g2897229114_ _g2897429118_))))
                    (_g2897229114_ _g2897429118_)))))
        (_g2897129168_ _$stx28968_))))
  (define |gerbil/core$<module-sugar>[:0:]#only-in|
    (gx#make-import-expander
     (lambda (_stx29173_)
       (let* ((_g2917629200_
               (lambda (_g2917729196_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2917729196_)))
              (_g2917529322_
               (lambda (_g2917729204_)
                 (if (gx#stx-pair? _g2917729204_)
                     (let ((_e2918029207_ (gx#syntax-e _g2917729204_)))
                       (let ((_hd2918129211_ (##car _e2918029207_))
                             (_tl2918229214_ (##cdr _e2918029207_)))
                         (if (gx#stx-pair? _tl2918229214_)
                             (let ((_e2918329217_
                                    (gx#syntax-e _tl2918229214_)))
                               (let ((_hd2918429221_ (##car _e2918329217_))
                                     (_tl2918529224_ (##cdr _e2918329217_)))
                                 (if (gx#stx-pair/null? _tl2918529224_)
                                     (if (fx>= (gx#stx-length _tl2918529224_)
                                               '0)
                                         (let ((_g30913_
                                                (gx#syntax-split-splice
                                                 _tl2918529224_
                                                 '0)))
                                           (begin
                                             (let ((_g30914_
                                                    (values-count _g30913_)))
                                               (if (not (fx= _g30914_ 2))
                                                   (error "Context expects 2 values"
                                                          _g30914_)))
                                             (let ((_target2918629227_
                                                    (values-ref _g30913_ 0))
                                                   (_tl2918829230_
                                                    (values-ref _g30913_ 1)))
                                               (if (gx#stx-null?
                                                    _tl2918829230_)
                                                   (letrec ((_loop2918929233_
                                                             (lambda (_hd2918729237_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id2919329240_)
                       (if (gx#stx-pair? _hd2918729237_)
                           (let ((_e2919029243_ (gx#syntax-e _hd2918729237_)))
                             (let ((_lp-hd2919129247_ (##car _e2919029243_))
                                   (_lp-tl2919229250_ (##cdr _e2919029243_)))
                               (_loop2918929233_
                                _lp-tl2919229250_
                                (cons _lp-hd2919129247_ _id2919329240_))))
                           (let ((_id2919429253_ (reverse _id2919329240_)))
                             ((lambda (_L29257_ _L29259_)
                                (if (gx#identifier-list?
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g2927629279_
                                                       _g2927729282_)
                                                (cons _g2927629279_
                                                      _g2927729282_))
                                              '()
                                              _L29257_)))
                                    (let* ((_keys29293_
                                            (gx#stx-map
                                             gx#core-identifier-key
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g2928429287_
                                                               _g2928529290_)
                                                        (cons _g2928429287_
                                                              _g2928529290_))
                                                      '()
                                                      _L29257_))))
                                           (_keytab29304_
                                            (let ((_ht29296_
                                                   (make-hash-table)))
                                              (begin
                                                (for-each
                                                 (lambda (_g2929829300_)
                                                   (hash-put!
                                                    _ht29296_
                                                    _g2929829300_
                                                    '#t))
                                                 _keys29293_)
                                                _ht29296_)))
                                           (_imports29307_
                                            (gx#core-expand-import-source
                                             _L29259_))
                                           (_fold-e29317_
                                            (letrec ((_fold-e29310_
                                                      (lambda (_in29313_
                                                               _r29315_)
                                                        (if (gx#module-import?
                                                             _in29313_)
                                                            (if (hash-get
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _keytab29304_
                         (gx#module-import-name _in29313_))
                        (cons _in29313_ _r29315_)
                        _r29315_)
                    (if (gx#import-set? _in29313_)
                        (foldl _fold-e29310_
                               _r29315_
                               (gx#import-set-imports _in29313_))
                        _r29315_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _fold-e29310_)))
                                      (cons 'begin:
                                            (foldl _fold-e29317_
                                                   '()
                                                   _imports29307_)))
                                    (_g2917629200_ _g2917729204_)))
                              _id2919429253_
                              _hd2918429221_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2918929233_
                                                      _target2918629227_
                                                      '()))
                                                   (_g2917629200_
                                                    _g2917729204_)))))
                                         (_g2917629200_ _g2917729204_))
                                     (_g2917629200_ _g2917729204_))))
                             (_g2917629200_ _g2917729204_))))
                     (_g2917629200_ _g2917729204_)))))
         (_g2917529322_ _stx29173_)))))
  (define |gerbil/core$<module-sugar>[:0:]#except-in|
    (gx#make-import-expander
     (lambda (_stx29327_)
       (let* ((_g2933029354_
               (lambda (_g2933129350_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2933129350_)))
              (_g2932929476_
               (lambda (_g2933129358_)
                 (if (gx#stx-pair? _g2933129358_)
                     (let ((_e2933429361_ (gx#syntax-e _g2933129358_)))
                       (let ((_hd2933529365_ (##car _e2933429361_))
                             (_tl2933629368_ (##cdr _e2933429361_)))
                         (if (gx#stx-pair? _tl2933629368_)
                             (let ((_e2933729371_
                                    (gx#syntax-e _tl2933629368_)))
                               (let ((_hd2933829375_ (##car _e2933729371_))
                                     (_tl2933929378_ (##cdr _e2933729371_)))
                                 (if (gx#stx-pair/null? _tl2933929378_)
                                     (if (fx>= (gx#stx-length _tl2933929378_)
                                               '0)
                                         (let ((_g30915_
                                                (gx#syntax-split-splice
                                                 _tl2933929378_
                                                 '0)))
                                           (begin
                                             (let ((_g30916_
                                                    (values-count _g30915_)))
                                               (if (not (fx= _g30916_ 2))
                                                   (error "Context expects 2 values"
                                                          _g30916_)))
                                             (let ((_target2934029381_
                                                    (values-ref _g30915_ 0))
                                                   (_tl2934229384_
                                                    (values-ref _g30915_ 1)))
                                               (if (gx#stx-null?
                                                    _tl2934229384_)
                                                   (letrec ((_loop2934329387_
                                                             (lambda (_hd2934129391_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id2934729394_)
                       (if (gx#stx-pair? _hd2934129391_)
                           (let ((_e2934429397_ (gx#syntax-e _hd2934129391_)))
                             (let ((_lp-hd2934529401_ (##car _e2934429397_))
                                   (_lp-tl2934629404_ (##cdr _e2934429397_)))
                               (_loop2934329387_
                                _lp-tl2934629404_
                                (cons _lp-hd2934529401_ _id2934729394_))))
                           (let ((_id2934829407_ (reverse _id2934729394_)))
                             ((lambda (_L29411_ _L29413_)
                                (if (gx#identifier-list?
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g2943029433_
                                                       _g2943129436_)
                                                (cons _g2943029433_
                                                      _g2943129436_))
                                              '()
                                              _L29411_)))
                                    (let* ((_keys29447_
                                            (gx#stx-map
                                             gx#core-identifier-key
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g2943829441_
                                                               _g2943929444_)
                                                        (cons _g2943829441_
                                                              _g2943929444_))
                                                      '()
                                                      _L29411_))))
                                           (_keytab29458_
                                            (let ((_ht29450_
                                                   (make-hash-table)))
                                              (begin
                                                (for-each
                                                 (lambda (_g2945229454_)
                                                   (hash-put!
                                                    _ht29450_
                                                    _g2945229454_
                                                    '#t))
                                                 _keys29447_)
                                                _ht29450_)))
                                           (_imports29461_
                                            (gx#core-expand-import-source
                                             _L29413_))
                                           (_fold-e29471_
                                            (letrec ((_fold-e29464_
                                                      (lambda (_in29467_
                                                               _r29469_)
                                                        (if (gx#module-import?
                                                             _in29467_)
                                                            (if (hash-get
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _keytab29458_
                         (gx#module-import-name _in29467_))
                        _r29469_
                        (cons _in29467_ _r29469_))
                    (if (gx#import-set? _in29467_)
                        (foldl _fold-e29464_
                               _r29469_
                               (gx#import-set-imports _in29467_))
                        (cons _in29467_ _r29469_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _fold-e29464_)))
                                      (cons 'begin:
                                            (foldl _fold-e29471_
                                                   '()
                                                   _imports29461_)))
                                    (_g2933029354_ _g2933129358_)))
                              _id2934829407_
                              _hd2933829375_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2934329387_
                                                      _target2934029381_
                                                      '()))
                                                   (_g2933029354_
                                                    _g2933129358_)))))
                                         (_g2933029354_ _g2933129358_))
                                     (_g2933029354_ _g2933129358_))))
                             (_g2933029354_ _g2933129358_))))
                     (_g2933029354_ _g2933129358_)))))
         (_g2932929476_ _stx29327_)))))
  (define |gerbil/core$<module-sugar>[1]#module-import-rename|
    (lambda (_in29528_ _rename29530_)
      (gx#make-module-import
       (gx#module-import-source _in29528_)
       _rename29530_
       (gx#module-import-phi _in29528_)
       (gx#module-import-weak? _in29528_))))
  (define |gerbil/core$<module-sugar>[1]#prefix-identifier-key|
    (lambda (_name29481_ _pre29483_)
      (let* ((_name2948429492_ _name29481_)
             (_E2948729498_
              (lambda () (error '"No clause matching" _name2948429492_)))
             (_else2948629504_
              (lambda () (make-symbol _pre29483_ _name29481_)))
             (_K2948829512_
              (lambda (_mark29508_ _id29510_)
                (cons (make-symbol _pre29483_ _id29510_) _mark29508_))))
        (if (##pair? _name2948429492_)
            (let ((_hd2948929516_ (##car _name2948429492_))
                  (_tl2949029519_ (##cdr _name2948429492_)))
              (let* ((_id29522_ _hd2948929516_) (_mark29525_ _tl2949029519_))
                (_K2948829512_ _mark29525_ _id29522_)))
            (_else2948629504_)))))
  (define |gerbil/core$<module-sugar>[:0:]#rename-in|
    (gx#make-import-expander
     (lambda (_stx29532_)
       (let* ((_g2953529568_
               (lambda (_g2953629564_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2953629564_)))
              (_g2953429754_
               (lambda (_g2953629572_)
                 (if (gx#stx-pair? _g2953629572_)
                     (let ((_e2954029575_ (gx#syntax-e _g2953629572_)))
                       (let ((_hd2954129579_ (##car _e2954029575_))
                             (_tl2954229582_ (##cdr _e2954029575_)))
                         (if (gx#stx-pair? _tl2954229582_)
                             (let ((_e2954329585_
                                    (gx#syntax-e _tl2954229582_)))
                               (let ((_hd2954429589_ (##car _e2954329585_))
                                     (_tl2954529592_ (##cdr _e2954329585_)))
                                 (if (gx#stx-pair/null? _tl2954529592_)
                                     (if (fx>= (gx#stx-length _tl2954529592_)
                                               '0)
                                         (let ((_g30917_
                                                (gx#syntax-split-splice
                                                 _tl2954529592_
                                                 '0)))
                                           (begin
                                             (let ((_g30918_
                                                    (values-count _g30917_)))
                                               (if (not (fx= _g30918_ 2))
                                                   (error "Context expects 2 values"
                                                          _g30918_)))
                                             (let ((_target2954629595_
                                                    (values-ref _g30917_ 0))
                                                   (_tl2954829598_
                                                    (values-ref _g30917_ 1)))
                                               (if (gx#stx-null?
                                                    _tl2954829598_)
                                                   (letrec ((_loop2954929601_
                                                             (lambda (_hd2954729605_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _new-id2955329608_
                              _id2955429610_)
                       (if (gx#stx-pair? _hd2954729605_)
                           (let ((_e2955029613_ (gx#syntax-e _hd2954729605_)))
                             (let ((_lp-hd2955129617_ (##car _e2955029613_))
                                   (_lp-tl2955229620_ (##cdr _e2955029613_)))
                               (if (gx#stx-pair? _lp-hd2955129617_)
                                   (let ((_e2955729623_
                                          (gx#syntax-e _lp-hd2955129617_)))
                                     (let ((_hd2955829627_
                                            (##car _e2955729623_))
                                           (_tl2955929630_
                                            (##cdr _e2955729623_)))
                                       (if (gx#stx-pair? _tl2955929630_)
                                           (let ((_e2956029633_
                                                  (gx#syntax-e
                                                   _tl2955929630_)))
                                             (let ((_hd2956129637_
                                                    (##car _e2956029633_))
                                                   (_tl2956229640_
                                                    (##cdr _e2956029633_)))
                                               (if (gx#stx-null?
                                                    _tl2956229640_)
                                                   (_loop2954929601_
                                                    _lp-tl2955229620_
                                                    (cons _hd2956129637_
                                                          _new-id2955329608_)
                                                    (cons _hd2955829627_
                                                          _id2955429610_))
                                                   (_g2953529568_
                                                    _g2953629572_))))
                                           (_g2953529568_ _g2953629572_))))
                                   (_g2953529568_ _g2953629572_))))
                           (let ((_new-id2955529643_
                                  (reverse _new-id2955329608_))
                                 (_id2955629646_ (reverse _id2955429610_)))
                             ((lambda (_L29649_ _L29651_ _L29652_)
                                (if (if (gx#identifier-list?
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g2967029673_
                                                           _g2967129676_)
                                                    (cons _g2967029673_
                                                          _g2967129676_))
                                                  '()
                                                  _L29651_)))
                                        (gx#identifier-list?
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g2967829681_
                                                           _g2967929684_)
                                                    (cons _g2967829681_
                                                          _g2967929684_))
                                                  '()
                                                  _L29649_)))
                                        '#f)
                                    (let* ((_keytab29687_ (make-hash-table))
                                           (_found29690_ (make-hash-table))
                                           (_g30919_
                                            (for-each
                                             (lambda (_id29693_ _new-id29695_)
                                               (hash-put!
                                                _keytab29687_
                                                (gx#core-identifier-key
                                                 _id29693_)
                                                (gx#core-identifier-key
                                                 _new-id29695_)))
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g2969629699_
                                                               _g2969729702_)
                                                        (cons _g2969629699_
                                                              _g2969729702_))
                                                      '()
                                                      _L29651_))
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g2970429707_
                                                               _g2970529710_)
                                                        (cons _g2970429707_
                                                              _g2970529710_))
                                                      '()
                                                      _L29649_))))
                                           (_imports29715_
                                            (gx#core-expand-import-source
                                             _L29652_))
                                           (_fold-e29735_
                                            (letrec ((_fold-e29718_
                                                      (lambda (_in29721_
                                                               _r29723_)
                                                        (if (gx#module-import?
                                                             _in29721_)
                                                            (let* ((_name29725_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#module-import-name _in29721_))
                           (_$e29728_ (hash-get _keytab29687_ _name29725_)))
                      (if _$e29728_
                          ((lambda (_rename29732_)
                             (begin
                               (hash-put! _found29690_ _name29725_ '#t)
                               (cons (|gerbil/core$<module-sugar>[1]#module-import-rename|
                                      _in29721_
                                      _rename29732_)
                                     _r29723_)))
                           _$e29728_)
                          (cons _in29721_ _r29723_)))
                    (if (gx#import-set? _in29721_)
                        (foldl _fold-e29718_
                               _r29723_
                               (gx#import-set-imports _in29721_))
                        (cons _in29721_ _r29723_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _fold-e29718_))
                                           (_new-imports29738_
                                            (foldl _fold-e29735_
                                                   '()
                                                   _imports29715_)))
                                      (begin
                                        (for-each
                                         (lambda (_id29743_)
                                           (if (hash-get
                                                _found29690_
                                                (gx#core-identifier-key
                                                 _id29743_))
                                               '#!void
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; identifier is not in the import set"
                                                _stx29532_
                                                _id29743_)))
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g2974529748_
                                                           _g2974629751_)
                                                    (cons _g2974529748_
                                                          _g2974629751_))
                                                  '()
                                                  _L29651_)))
                                        (cons 'begin: _new-imports29738_)))
                                    (_g2953529568_ _g2953629572_)))
                              _new-id2955529643_
                              _id2955629646_
                              _hd2954429589_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2954929601_
                                                      _target2954629595_
                                                      '()
                                                      '()))
                                                   (_g2953529568_
                                                    _g2953629572_)))))
                                         (_g2953529568_ _g2953629572_))
                                     (_g2953529568_ _g2953629572_))))
                             (_g2953529568_ _g2953629572_))))
                     (_g2953529568_ _g2953629572_)))))
         (_g2953429754_ _stx29532_)))))
  (define |gerbil/core$<module-sugar>[:0:]#prefix-in|
    (gx#make-import-expander
     (lambda (_stx29760_)
       (let* ((_g2976329781_
               (lambda (_g2976429777_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2976429777_)))
              (_g2976229860_
               (lambda (_g2976429785_)
                 (if (gx#stx-pair? _g2976429785_)
                     (let ((_e2976729788_ (gx#syntax-e _g2976429785_)))
                       (let ((_hd2976829792_ (##car _e2976729788_))
                             (_tl2976929795_ (##cdr _e2976729788_)))
                         (if (gx#stx-pair? _tl2976929795_)
                             (let ((_e2977029798_
                                    (gx#syntax-e _tl2976929795_)))
                               (let ((_hd2977129802_ (##car _e2977029798_))
                                     (_tl2977229805_ (##cdr _e2977029798_)))
                                 (if (gx#stx-pair? _tl2977229805_)
                                     (let ((_e2977329808_
                                            (gx#syntax-e _tl2977229805_)))
                                       (let ((_hd2977429812_
                                              (##car _e2977329808_))
                                             (_tl2977529815_
                                              (##cdr _e2977329808_)))
                                         (if (gx#stx-null? _tl2977529815_)
                                             ((lambda (_L29818_ _L29820_)
                                                (if (gx#identifier? _L29818_)
                                                    (let* ((_pre29836_
                                                            (gx#stx-e
                                                             _L29818_))
                                                           (_imports29839_
                                                            (gx#core-expand-import-source
                                                             _L29820_))
                                                           (_rename-e29845_
                                                            (lambda (_name29842_)
                                                              (|gerbil/core$<module-sugar>[1]#prefix-identifier-key|
                                                               _name29842_
                                                               _pre29836_)))
                                                           (_fold-e29855_
                                                            (letrec ((_fold-e29848_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_in29851_ _r29853_)
                                (if (gx#module-import? _in29851_)
                                    (cons (|gerbil/core$<module-sugar>[1]#module-import-rename|
                                           _in29851_
                                           (_rename-e29845_
                                            (gx#module-import-name _in29851_)))
                                          _r29853_)
                                    (if (gx#import-set? _in29851_)
                                        (foldl _fold-e29848_
                                               _r29853_
                                               (gx#import-set-imports
                                                _in29851_))
                                        (cons _in29851_ _r29853_))))))
                      _fold-e29848_)))
              (cons 'begin: (foldl _fold-e29855_ '() _imports29839_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2976329781_
                                                     _g2976429785_)))
                                              _hd2977429812_
                                              _hd2977129802_)
                                             (_g2976329781_ _g2976429785_))))
                                     (_g2976329781_ _g2976429785_))))
                             (_g2976329781_ _g2976429785_))))
                     (_g2976329781_ _g2976429785_)))))
         (_g2976229860_ _stx29760_)))))
  (define |gerbil/core$<module-sugar>[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_stx29864_)
       (let* ((_g2986729891_
               (lambda (_g2986829887_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2986829887_)))
              (_g2986630013_
               (lambda (_g2986829895_)
                 (if (gx#stx-pair? _g2986829895_)
                     (let ((_e2987129898_ (gx#syntax-e _g2986829895_)))
                       (let ((_hd2987229902_ (##car _e2987129898_))
                             (_tl2987329905_ (##cdr _e2987129898_)))
                         (if (gx#stx-pair? _tl2987329905_)
                             (let ((_e2987429908_
                                    (gx#syntax-e _tl2987329905_)))
                               (let ((_hd2987529912_ (##car _e2987429908_))
                                     (_tl2987629915_ (##cdr _e2987429908_)))
                                 (if (gx#stx-pair/null? _tl2987629915_)
                                     (if (fx>= (gx#stx-length _tl2987629915_)
                                               '0)
                                         (let ((_g30920_
                                                (gx#syntax-split-splice
                                                 _tl2987629915_
                                                 '0)))
                                           (begin
                                             (let ((_g30921_
                                                    (values-count _g30920_)))
                                               (if (not (fx= _g30921_ 2))
                                                   (error "Context expects 2 values"
                                                          _g30921_)))
                                             (let ((_target2987729918_
                                                    (values-ref _g30920_ 0))
                                                   (_tl2987929921_
                                                    (values-ref _g30920_ 1)))
                                               (if (gx#stx-null?
                                                    _tl2987929921_)
                                                   (letrec ((_loop2988029924_
                                                             (lambda (_hd2987829928_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id2988429931_)
                       (if (gx#stx-pair? _hd2987829928_)
                           (let ((_e2988129934_ (gx#syntax-e _hd2987829928_)))
                             (let ((_lp-hd2988229938_ (##car _e2988129934_))
                                   (_lp-tl2988329941_ (##cdr _e2988129934_)))
                               (_loop2988029924_
                                _lp-tl2988329941_
                                (cons _lp-hd2988229938_ _id2988429931_))))
                           (let ((_id2988529944_ (reverse _id2988429931_)))
                             ((lambda (_L29948_ _L29950_)
                                (if (gx#identifier-list?
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g2996729970_
                                                       _g2996829973_)
                                                (cons _g2996729970_
                                                      _g2996829973_))
                                              '()
                                              _L29948_)))
                                    (let* ((_keys29984_
                                            (gx#stx-map
                                             gx#core-identifier-key
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g2997529978_
                                                               _g2997629981_)
                                                        (cons _g2997529978_
                                                              _g2997629981_))
                                                      '()
                                                      _L29948_))))
                                           (_keytab29995_
                                            (let ((_ht29987_
                                                   (make-hash-table)))
                                              (begin
                                                (for-each
                                                 (lambda (_g2998929991_)
                                                   (hash-put!
                                                    _ht29987_
                                                    _g2998929991_
                                                    '#t))
                                                 _keys29984_)
                                                _ht29987_)))
                                           (_exports29998_
                                            (gx#core-expand-export-source
                                             _L29950_))
                                           (_fold-e30008_
                                            (letrec ((_fold-e30001_
                                                      (lambda (_out30004_
                                                               _r30006_)
                                                        (if (gx#module-export?
                                                             _out30004_)
                                                            (if (hash-get
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _keytab29995_
                         (gx#module-export-name _out30004_))
                        _r30006_
                        (cons _out30004_ _r30006_))
                    (if (gx#export-set? _out30004_)
                        (foldl _fold-e30001_
                               _r30006_
                               (gx#export-set-exports _out30004_))
                        _r30006_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _fold-e30001_)))
                                      (cons 'begin:
                                            (foldl _fold-e30008_
                                                   '()
                                                   _exports29998_)))
                                    (_g2986729891_ _g2986829895_)))
                              _id2988529944_
                              _hd2987529912_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2988029924_
                                                      _target2987729918_
                                                      '()))
                                                   (_g2986729891_
                                                    _g2986829895_)))))
                                         (_g2986729891_ _g2986829895_))
                                     (_g2986729891_ _g2986829895_))))
                             (_g2986729891_ _g2986829895_))))
                     (_g2986729891_ _g2986829895_)))))
         (_g2986630013_ _stx29864_)))))
  (define |gerbil/core$<module-sugar>[1]#module-export-rename|
    (lambda (_out30018_ _rename30020_)
      (gx#make-module-export
       (gx#module-export-context _out30018_)
       (gx#module-export-key _out30018_)
       (gx#module-export-phi _out30018_)
       _rename30020_
       (gx#module-export-weak? _out30018_))))
  (define |gerbil/core$<module-sugar>[:0:]#rename-out|
    (gx#make-export-expander
     (lambda (_stx30022_)
       (let* ((_g3002530058_
               (lambda (_g3002630054_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g3002630054_)))
              (_g3002430244_
               (lambda (_g3002630062_)
                 (if (gx#stx-pair? _g3002630062_)
                     (let ((_e3003030065_ (gx#syntax-e _g3002630062_)))
                       (let ((_hd3003130069_ (##car _e3003030065_))
                             (_tl3003230072_ (##cdr _e3003030065_)))
                         (if (gx#stx-pair? _tl3003230072_)
                             (let ((_e3003330075_
                                    (gx#syntax-e _tl3003230072_)))
                               (let ((_hd3003430079_ (##car _e3003330075_))
                                     (_tl3003530082_ (##cdr _e3003330075_)))
                                 (if (gx#stx-pair/null? _tl3003530082_)
                                     (if (fx>= (gx#stx-length _tl3003530082_)
                                               '0)
                                         (let ((_g30922_
                                                (gx#syntax-split-splice
                                                 _tl3003530082_
                                                 '0)))
                                           (begin
                                             (let ((_g30923_
                                                    (values-count _g30922_)))
                                               (if (not (fx= _g30923_ 2))
                                                   (error "Context expects 2 values"
                                                          _g30923_)))
                                             (let ((_target3003630085_
                                                    (values-ref _g30922_ 0))
                                                   (_tl3003830088_
                                                    (values-ref _g30922_ 1)))
                                               (if (gx#stx-null?
                                                    _tl3003830088_)
                                                   (letrec ((_loop3003930091_
                                                             (lambda (_hd3003730095_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _new-id3004330098_
                              _id3004430100_)
                       (if (gx#stx-pair? _hd3003730095_)
                           (let ((_e3004030103_ (gx#syntax-e _hd3003730095_)))
                             (let ((_lp-hd3004130107_ (##car _e3004030103_))
                                   (_lp-tl3004230110_ (##cdr _e3004030103_)))
                               (if (gx#stx-pair? _lp-hd3004130107_)
                                   (let ((_e3004730113_
                                          (gx#syntax-e _lp-hd3004130107_)))
                                     (let ((_hd3004830117_
                                            (##car _e3004730113_))
                                           (_tl3004930120_
                                            (##cdr _e3004730113_)))
                                       (if (gx#stx-pair? _tl3004930120_)
                                           (let ((_e3005030123_
                                                  (gx#syntax-e
                                                   _tl3004930120_)))
                                             (let ((_hd3005130127_
                                                    (##car _e3005030123_))
                                                   (_tl3005230130_
                                                    (##cdr _e3005030123_)))
                                               (if (gx#stx-null?
                                                    _tl3005230130_)
                                                   (_loop3003930091_
                                                    _lp-tl3004230110_
                                                    (cons _hd3005130127_
                                                          _new-id3004330098_)
                                                    (cons _hd3004830117_
                                                          _id3004430100_))
                                                   (_g3002530058_
                                                    _g3002630062_))))
                                           (_g3002530058_ _g3002630062_))))
                                   (_g3002530058_ _g3002630062_))))
                           (let ((_new-id3004530133_
                                  (reverse _new-id3004330098_))
                                 (_id3004630136_ (reverse _id3004430100_)))
                             ((lambda (_L30139_ _L30141_ _L30142_)
                                (if (if (gx#identifier-list?
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g3016030163_
                                                           _g3016130166_)
                                                    (cons _g3016030163_
                                                          _g3016130166_))
                                                  '()
                                                  _L30141_)))
                                        (gx#identifier-list?
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g3016830171_
                                                           _g3016930174_)
                                                    (cons _g3016830171_
                                                          _g3016930174_))
                                                  '()
                                                  _L30139_)))
                                        '#f)
                                    (let* ((_keytab30177_ (make-hash-table))
                                           (_found30180_ (make-hash-table))
                                           (_g30924_
                                            (for-each
                                             (lambda (_id30183_ _new-id30185_)
                                               (hash-put!
                                                _keytab30177_
                                                (gx#core-identifier-key
                                                 _id30183_)
                                                (gx#core-identifier-key
                                                 _new-id30185_)))
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g3018630189_
                                                               _g3018730192_)
                                                        (cons _g3018630189_
                                                              _g3018730192_))
                                                      '()
                                                      _L30141_))
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g3019430197_
                                                               _g3019530200_)
                                                        (cons _g3019430197_
                                                              _g3019530200_))
                                                      '()
                                                      _L30139_))))
                                           (_exports30205_
                                            (gx#core-expand-export-source
                                             _L30142_))
                                           (_fold-e30225_
                                            (letrec ((_fold-e30208_
                                                      (lambda (_out30211_
                                                               _r30213_)
                                                        (if (gx#module-export?
                                                             _out30211_)
                                                            (let* ((_name30215_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#module-export-name _out30211_))
                           (_$e30218_ (hash-get _keytab30177_ _name30215_)))
                      (if _$e30218_
                          ((lambda (_rename30222_)
                             (begin
                               (hash-put! _found30180_ _name30215_ '#t)
                               (cons (|gerbil/core$<module-sugar>[1]#module-export-rename|
                                      _out30211_
                                      _rename30222_)
                                     _r30213_)))
                           _$e30218_)
                          (cons _out30211_ _r30213_)))
                    (if (gx#export-set? _out30211_)
                        (foldl _fold-e30208_
                               _r30213_
                               (gx#export-set-exports _out30211_))
                        (cons _out30211_ _r30213_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _fold-e30208_))
                                           (_new-exports30228_
                                            (foldl _fold-e30225_
                                                   '()
                                                   _exports30205_)))
                                      (begin
                                        (for-each
                                         (lambda (_id30233_)
                                           (if (hash-get
                                                _found30180_
                                                (gx#core-identifier-key
                                                 _id30233_))
                                               '#!void
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; identifier is not in the export set"
                                                _stx30022_
                                                _id30233_)))
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g3023530238_
                                                           _g3023630241_)
                                                    (cons _g3023530238_
                                                          _g3023630241_))
                                                  '()
                                                  _L30141_)))
                                        (cons 'begin: _new-exports30228_)))
                                    (_g3002530058_ _g3002630062_)))
                              _new-id3004530133_
                              _id3004630136_
                              _hd3003430079_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop3003930091_
                                                      _target3003630085_
                                                      '()
                                                      '()))
                                                   (_g3002530058_
                                                    _g3002630062_)))))
                                         (_g3002530058_ _g3002630062_))
                                     (_g3002530058_ _g3002630062_))))
                             (_g3002530058_ _g3002630062_))))
                     (_g3002530058_ _g3002630062_)))))
         (_g3002430244_ _stx30022_)))))
  (define |gerbil/core$<module-sugar>[:0:]#prefix-out|
    (gx#make-export-expander
     (lambda (_stx30250_)
       (let* ((_g3025330271_
               (lambda (_g3025430267_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g3025430267_)))
              (_g3025230350_
               (lambda (_g3025430275_)
                 (if (gx#stx-pair? _g3025430275_)
                     (let ((_e3025730278_ (gx#syntax-e _g3025430275_)))
                       (let ((_hd3025830282_ (##car _e3025730278_))
                             (_tl3025930285_ (##cdr _e3025730278_)))
                         (if (gx#stx-pair? _tl3025930285_)
                             (let ((_e3026030288_
                                    (gx#syntax-e _tl3025930285_)))
                               (let ((_hd3026130292_ (##car _e3026030288_))
                                     (_tl3026230295_ (##cdr _e3026030288_)))
                                 (if (gx#stx-pair? _tl3026230295_)
                                     (let ((_e3026330298_
                                            (gx#syntax-e _tl3026230295_)))
                                       (let ((_hd3026430302_
                                              (##car _e3026330298_))
                                             (_tl3026530305_
                                              (##cdr _e3026330298_)))
                                         (if (gx#stx-null? _tl3026530305_)
                                             ((lambda (_L30308_ _L30310_)
                                                (if (gx#identifier? _L30308_)
                                                    (let* ((_pre30326_
                                                            (gx#stx-e
                                                             _L30308_))
                                                           (_exports30329_
                                                            (gx#core-expand-export-source
                                                             _L30310_))
                                                           (_rename-e30335_
                                                            (lambda (_name30332_)
                                                              (|gerbil/core$<module-sugar>[1]#prefix-identifier-key|
                                                               _name30332_
                                                               _pre30326_)))
                                                           (_fold-e30345_
                                                            (letrec ((_fold-e30338_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_out30341_ _r30343_)
                                (if (gx#module-export? _out30341_)
                                    (cons (|gerbil/core$<module-sugar>[1]#module-export-rename|
                                           _out30341_
                                           (_rename-e30335_
                                            (gx#module-export-name
                                             _out30341_)))
                                          _r30343_)
                                    (if (gx#export-set? _out30341_)
                                        (foldl _fold-e30338_
                                               _r30343_
                                               (gx#export-set-exports
                                                _out30341_))
                                        (cons _out30341_ _r30343_))))))
                      _fold-e30338_)))
              (cons 'begin: (foldl _fold-e30345_ '() _exports30329_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3025330271_
                                                     _g3025430275_)))
                                              _hd3026430302_
                                              _hd3026130292_)
                                             (_g3025330271_ _g3025430275_))))
                                     (_g3025330271_ _g3025430275_))))
                             (_g3025330271_ _g3025430275_))))
                     (_g3025330271_ _g3025430275_)))))
         (_g3025230350_ _stx30250_)))))
  (define |gerbil/core$<module-sugar>[:0:]#struct-out|
    (gx#make-export-expander
     (lambda (_stx30354_)
       (let* ((_g3035730377_
               (lambda (_g3035830373_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g3035830373_)))
              (_g3035630612_
               (lambda (_g3035830381_)
                 (if (gx#stx-pair? _g3035830381_)
                     (let ((_e3036030384_ (gx#syntax-e _g3035830381_)))
                       (let ((_hd3036130388_ (##car _e3036030384_))
                             (_tl3036230391_ (##cdr _e3036030384_)))
                         (if (gx#stx-pair/null? _tl3036230391_)
                             (if (fx>= (gx#stx-length _tl3036230391_) '0)
                                 (let ((_g30925_
                                        (gx#syntax-split-splice
                                         _tl3036230391_
                                         '0)))
                                   (begin
                                     (let ((_g30926_ (values-count _g30925_)))
                                       (if (not (fx= _g30926_ 2))
                                           (error "Context expects 2 values"
                                                  _g30926_)))
                                     (let ((_target3036330394_
                                            (values-ref _g30925_ 0))
                                           (_tl3036530397_
                                            (values-ref _g30925_ 1)))
                                       (if (gx#stx-null? _tl3036530397_)
                                           (letrec ((_loop3036630400_
                                                     (lambda (_hd3036430404_
                                                              _id3037030407_)
                                                       (if (gx#stx-pair?
                                                            _hd3036430404_)
                                                           (let ((_e3036730410_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd3036430404_)))
                     (let ((_lp-hd3036830414_ (##car _e3036730410_))
                           (_lp-tl3036930417_ (##cdr _e3036730410_)))
                       (_loop3036630400_
                        _lp-tl3036930417_
                        (cons _lp-hd3036830414_ _id3037030407_))))
                   (let ((_id3037130420_ (reverse _id3037030407_)))
                     ((lambda (_L30424_)
                        (let _lp30440_ ((_rest30443_
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g3060330606_
                                                           _g3060430609_)
                                                    (cons _g3060330606_
                                                          _g3060430609_))
                                                  '()
                                                  _L30424_)))
                                        (_ids30445_ '()))
                          (let* ((_g3044830460_
                                  (lambda (_g3044930456_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g3044930456_)))
                                 (_g3044730471_
                                  (lambda (_g3044930464_)
                                    ((lambda () (cons 'begin: _ids30445_)))))
                                 (_g3044630600_
                                  (lambda (_g3044930475_)
                                    (if (gx#stx-pair? _g3044930475_)
                                        (let ((_e3045230478_
                                               (gx#syntax-e _g3044930475_)))
                                          (let ((_hd3045330482_
                                                 (##car _e3045230478_))
                                                (_tl3045430485_
                                                 (##cdr _e3045230478_)))
                                            ((lambda (_L30488_ _L30490_)
                                               (let ((_info30505_
                                                      (gx#syntax-local-value
                                                       _L30490_
                                                       false)))
                                                 (if (|gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info?|
                                                      _info30505_)
                                                     (let* ((_g3050730524_
                                                             (slot-ref
                                                              _info30505_
                                                              'expander-identifiers))
                                                            (_E3050930530_
                                                             (lambda ()
                                                               (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g3050730524_)))
                    (_K3051030542_
                     (lambda (_setf30534_
                              _getf30536_
                              _type?30537_
                              _make-type30538_
                              _type::t30539_
                              _super30540_)
                       (_lp30440_
                        _L30488_
                        (cons _L30490_
                              (cons _type::t30539_
                                    (cons _make-type30538_
                                          (cons _type?30537_
                                                (foldr cons
                                                       (foldr cons
                                                              _ids30445_
                                                              _setf30534_)
                                                       _getf30536_)))))))))
               (if (##pair? _g3050730524_)
                   (let ((_hd3051130546_ (##car _g3050730524_))
                         (_tl3051230549_ (##cdr _g3050730524_)))
                     (let ((_super30552_ _hd3051130546_))
                       (if (##pair? _tl3051230549_)
                           (let ((_hd3051330555_ (##car _tl3051230549_))
                                 (_tl3051430558_ (##cdr _tl3051230549_)))
                             (let ((_type::t30561_ _hd3051330555_))
                               (if (##pair? _tl3051430558_)
                                   (let ((_hd3051530564_
                                          (##car _tl3051430558_))
                                         (_tl3051630567_
                                          (##cdr _tl3051430558_)))
                                     (let ((_make-type30570_ _hd3051530564_))
                                       (if (##pair? _tl3051630567_)
                                           (let ((_hd3051730573_
                                                  (##car _tl3051630567_))
                                                 (_tl3051830576_
                                                  (##cdr _tl3051630567_)))
                                             (let ((_type?30579_
                                                    _hd3051730573_))
                                               (if (##pair? _tl3051830576_)
                                                   (let ((_hd3051930582_
                                                          (##car _tl3051830576_))
                                                         (_tl3052030585_
                                                          (##cdr _tl3051830576_)))
                                                     (let ((_getf30588_
                                                            _hd3051930582_))
                                                       (if (##pair? _tl3052030585_)
                                                           (let ((_hd3052130591_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##car _tl3052030585_))
                         (_tl3052230594_ (##cdr _tl3052030585_)))
                     (let ((_setf30597_ _hd3052130591_))
                       (if (##null? _tl3052230594_)
                           (_K3051030542_
                            _setf30597_
                            _getf30588_
                            _type?30579_
                            _make-type30570_
                            _type::t30561_
                            _super30552_)
                           (_E3050930530_))))
                   (_E3050930530_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E3050930530_))))
                                           (_E3050930530_))))
                                   (_E3050930530_))))
                           (_E3050930530_))))
                   (_E3050930530_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Incomplete type info"
                                                      _stx30354_
                                                      _L30490_))))
                                             _tl3045430485_
                                             _hd3045330482_)))
                                        (_g3044730471_ _g3044930475_)))))
                            (_g3044630600_ _rest30443_))))
                      _id3037130420_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop3036630400_
                                              _target3036330394_
                                              '()))
                                           (_g3035730377_ _g3035830381_)))))
                                 (_g3035730377_ _g3035830381_))
                             (_g3035730377_ _g3035830381_))))
                     (_g3035730377_ _g3035830381_)))))
         (_g3035630612_ _stx30354_))))))
