(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<module-sugar>[:0:]#require|
    (lambda (_$stx27873_)
      (let ((_g2787827897_
             (lambda (_g2787927893_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2787927893_))))
        (let ((_g2787727943_
               (lambda (_g2787927901_)
                 (if (gx#stx-pair? _g2787927901_)
                     (let ((_e2788627904_ (gx#syntax-e _g2787927901_)))
                       (let ((_hd2788727908_ (##car _e2788627904_))
                             (_tl2788827911_ (##cdr _e2788627904_)))
                         (if (gx#stx-pair? _tl2788827911_)
                             (let ((_e2788927914_
                                    (gx#syntax-e _tl2788827911_)))
                               (let ((_hd2789027918_ (##car _e2788927914_))
                                     (_tl2789127921_ (##cdr _e2788927914_)))
                                 ((lambda (_L27924_ _L27926_ _L27927_)
                                    (cons (gx#datum->syntax '#f 'cond-expand)
                                          (cons (cons _L27926_
                                                      (cons (cons _L27927_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L27924_)
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
                                      (cons _L27926_ '())))
                          '()))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _tl2789127921_
                                  _hd2789027918_
                                  _hd2788727908_)))
                             (_g2787827897_ _g2787927901_))))
                     (_g2787827897_ _g2787927901_)))))
          (let ((_g2787627964_
                 (lambda (_g2787927947_)
                   (if (gx#stx-pair? _g2787927947_)
                       (let ((_e2788027950_ (gx#syntax-e _g2787927947_)))
                         (let ((_hd2788127954_ (##car _e2788027950_))
                               (_tl2788227957_ (##cdr _e2788027950_)))
                           (if (gx#stx-null? _tl2788227957_)
                               ((lambda ()
                                  (cons (gx#datum->syntax '#f 'begin) '())))
                               (_g2787727943_ _g2787927947_))))
                       (_g2787727943_ _g2787927947_)))))
            (_g2787627964_ _$stx27873_))))))
  (define |gerbil/core::<module-sugar>[:0:]#defsyntax-for-import|
    (lambda (_$stx27968_)
      (let ((_g2797328013_
             (lambda (_g2797428009_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2797428009_))))
        (let ((_g2797228114_
               (lambda (_g2797428017_)
                 (if (gx#stx-pair? _g2797428017_)
                     (let ((_e2799028020_ (gx#syntax-e _g2797428017_)))
                       (let ((_hd2799128024_ (##car _e2799028020_))
                             (_tl2799228027_ (##cdr _e2799028020_)))
                         (if (gx#stx-pair? _tl2799228027_)
                             (let ((_e2799328030_
                                    (gx#syntax-e _tl2799228027_)))
                               (let ((_hd2799428034_ (##car _e2799328030_))
                                     (_tl2799528037_ (##cdr _e2799328030_)))
                                 (if (gx#stx-pair? _hd2799428034_)
                                     (let ((_e2799628040_
                                            (gx#syntax-e _hd2799428034_)))
                                       (let ((_hd2799728044_
                                              (##car _e2799628040_))
                                             (_tl2799828047_
                                              (##cdr _e2799628040_)))
                                         (if (gx#stx-pair/null? _tl2799528037_)
                                             (if (fx>= (gx#stx-length
                                                        _tl2799528037_)
                                                       '0)
                                                 (let ((_g30104_
                                                        (gx#syntax-split-splice
                                                         _tl2799528037_
                                                         '0)))
                                                   (begin
                                                     (let ((_g30105_
                                                            (values-count
                                                             _g30104_)))
                                                       (if (not (fx= _g30105_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g30105_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2799928050_
                                                            (values-ref
                                                             _g30104_
                                                             0))
                                                           (_tl2800128053_
                                                            (values-ref
                                                             _g30104_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2800128053_)
                                                           (letrec ((_loop2800228056_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2800028060_ _body2800628063_)
                               (if (gx#stx-pair? _hd2800028060_)
                                   (let ((_e2800328066_
                                          (gx#syntax-e _hd2800028060_)))
                                     (let ((_lp-hd2800428070_
                                            (##car _e2800328066_))
                                           (_lp-tl2800528073_
                                            (##cdr _e2800328066_)))
                                       (_loop2800228056_
                                        _lp-tl2800528073_
                                        (cons _lp-hd2800428070_
                                              _body2800628063_))))
                                   (let ((_body2800728076_
                                          (reverse _body2800628063_)))
                                     ((lambda (_L28080_
                                               _L28082_
                                               _L28083_
                                               _L28084_)
                                        (if (gx#identifier? _L28083_)
                                            (cons _L28084_
                                                  (cons _L28083_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'lambda)
                            (cons _L28082_
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g2810528108_
                                                    _g2810628111_)
                                             (cons _g2810528108_
                                                   _g2810628111_))
                                           '()
                                           _L28080_))))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2797328013_ _g2797428017_)))
                                      _body2800728076_
                                      _tl2799828047_
                                      _hd2799728044_
                                      _hd2799128024_))))))
                     (_loop2800228056_ _target2799928050_ '()))
                   (_g2797328013_ _g2797428017_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2797328013_ _g2797428017_))
                                             (_g2797328013_ _g2797428017_))))
                                     (_g2797328013_ _g2797428017_))))
                             (_g2797328013_ _g2797428017_))))
                     (_g2797328013_ _g2797428017_)))))
          (let ((_g2797128168_
                 (lambda (_g2797428118_)
                   (if (gx#stx-pair? _g2797428118_)
                       (let ((_e2797728121_ (gx#syntax-e _g2797428118_)))
                         (let ((_hd2797828125_ (##car _e2797728121_))
                               (_tl2797928128_ (##cdr _e2797728121_)))
                           (if (gx#stx-pair? _tl2797928128_)
                               (let ((_e2798028131_
                                      (gx#syntax-e _tl2797928128_)))
                                 (let ((_hd2798128135_ (##car _e2798028131_))
                                       (_tl2798228138_ (##cdr _e2798028131_)))
                                   (if (gx#stx-pair? _tl2798228138_)
                                       (let ((_e2798328141_
                                              (gx#syntax-e _tl2798228138_)))
                                         (let ((_hd2798428145_
                                                (##car _e2798328141_))
                                               (_tl2798528148_
                                                (##cdr _e2798328141_)))
                                           (if (gx#stx-null? _tl2798528148_)
                                               ((lambda (_L28151_ _L28153_)
                                                  (if (gx#identifier? _L28153_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'defsyntax)
                                                            (cons _L28153_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax
                                       '#f
                                       'make-import-expander)
                                      (cons _L28151_ '()))
                                '())))
              (_g2797228114_ _g2797428118_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd2798428145_
                                                _hd2798128135_)
                                               (_g2797228114_ _g2797428118_))))
                                       (_g2797228114_ _g2797428118_))))
                               (_g2797228114_ _g2797428118_))))
                       (_g2797228114_ _g2797428118_)))))
            (_g2797128168_ _$stx27968_))))))
  (define |gerbil/core::<module-sugar>[:0:]#defsyntax-for-export|
    (lambda (_$stx28173_)
      (let ((_g2817828218_
             (lambda (_g2817928214_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2817928214_))))
        (let ((_g2817728319_
               (lambda (_g2817928222_)
                 (if (gx#stx-pair? _g2817928222_)
                     (let ((_e2819528225_ (gx#syntax-e _g2817928222_)))
                       (let ((_hd2819628229_ (##car _e2819528225_))
                             (_tl2819728232_ (##cdr _e2819528225_)))
                         (if (gx#stx-pair? _tl2819728232_)
                             (let ((_e2819828235_
                                    (gx#syntax-e _tl2819728232_)))
                               (let ((_hd2819928239_ (##car _e2819828235_))
                                     (_tl2820028242_ (##cdr _e2819828235_)))
                                 (if (gx#stx-pair? _hd2819928239_)
                                     (let ((_e2820128245_
                                            (gx#syntax-e _hd2819928239_)))
                                       (let ((_hd2820228249_
                                              (##car _e2820128245_))
                                             (_tl2820328252_
                                              (##cdr _e2820128245_)))
                                         (if (gx#stx-pair/null? _tl2820028242_)
                                             (if (fx>= (gx#stx-length
                                                        _tl2820028242_)
                                                       '0)
                                                 (let ((_g30106_
                                                        (gx#syntax-split-splice
                                                         _tl2820028242_
                                                         '0)))
                                                   (begin
                                                     (let ((_g30107_
                                                            (values-count
                                                             _g30106_)))
                                                       (if (not (fx= _g30107_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g30107_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2820428255_
                                                            (values-ref
                                                             _g30106_
                                                             0))
                                                           (_tl2820628258_
                                                            (values-ref
                                                             _g30106_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2820628258_)
                                                           (letrec ((_loop2820728261_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2820528265_ _body2821128268_)
                               (if (gx#stx-pair? _hd2820528265_)
                                   (let ((_e2820828271_
                                          (gx#syntax-e _hd2820528265_)))
                                     (let ((_lp-hd2820928275_
                                            (##car _e2820828271_))
                                           (_lp-tl2821028278_
                                            (##cdr _e2820828271_)))
                                       (_loop2820728261_
                                        _lp-tl2821028278_
                                        (cons _lp-hd2820928275_
                                              _body2821128268_))))
                                   (let ((_body2821228281_
                                          (reverse _body2821128268_)))
                                     ((lambda (_L28285_
                                               _L28287_
                                               _L28288_
                                               _L28289_)
                                        (if (gx#identifier? _L28288_)
                                            (cons _L28289_
                                                  (cons _L28288_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'lambda)
                            (cons _L28287_
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g2831028313_
                                                    _g2831128316_)
                                             (cons _g2831028313_
                                                   _g2831128316_))
                                           '()
                                           _L28285_))))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2817828218_ _g2817928222_)))
                                      _body2821228281_
                                      _tl2820328252_
                                      _hd2820228249_
                                      _hd2819628229_))))))
                     (_loop2820728261_ _target2820428255_ '()))
                   (_g2817828218_ _g2817928222_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2817828218_ _g2817928222_))
                                             (_g2817828218_ _g2817928222_))))
                                     (_g2817828218_ _g2817928222_))))
                             (_g2817828218_ _g2817928222_))))
                     (_g2817828218_ _g2817928222_)))))
          (let ((_g2817628373_
                 (lambda (_g2817928323_)
                   (if (gx#stx-pair? _g2817928323_)
                       (let ((_e2818228326_ (gx#syntax-e _g2817928323_)))
                         (let ((_hd2818328330_ (##car _e2818228326_))
                               (_tl2818428333_ (##cdr _e2818228326_)))
                           (if (gx#stx-pair? _tl2818428333_)
                               (let ((_e2818528336_
                                      (gx#syntax-e _tl2818428333_)))
                                 (let ((_hd2818628340_ (##car _e2818528336_))
                                       (_tl2818728343_ (##cdr _e2818528336_)))
                                   (if (gx#stx-pair? _tl2818728343_)
                                       (let ((_e2818828346_
                                              (gx#syntax-e _tl2818728343_)))
                                         (let ((_hd2818928350_
                                                (##car _e2818828346_))
                                               (_tl2819028353_
                                                (##cdr _e2818828346_)))
                                           (if (gx#stx-null? _tl2819028353_)
                                               ((lambda (_L28356_ _L28358_)
                                                  (if (gx#identifier? _L28358_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'defsyntax)
                                                            (cons _L28358_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax
                                       '#f
                                       'make-export-expander)
                                      (cons _L28356_ '()))
                                '())))
              (_g2817728319_ _g2817928323_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd2818928350_
                                                _hd2818628340_)
                                               (_g2817728319_ _g2817928323_))))
                                       (_g2817728319_ _g2817928323_))))
                               (_g2817728319_ _g2817928323_))))
                       (_g2817728319_ _g2817928323_)))))
            (_g2817628373_ _$stx28173_))))))
  (define |gerbil/core::<module-sugar>[:0:]#only-in|
    (gx#make-import-expander
     (lambda (_stx28378_)
       (let ((_g2838128405_
              (lambda (_g2838228401_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2838228401_))))
         (let ((_g2838028527_
                (lambda (_g2838228409_)
                  (if (gx#stx-pair? _g2838228409_)
                      (let ((_e2838528412_ (gx#syntax-e _g2838228409_)))
                        (let ((_hd2838628416_ (##car _e2838528412_))
                              (_tl2838728419_ (##cdr _e2838528412_)))
                          (if (gx#stx-pair? _tl2838728419_)
                              (let ((_e2838828422_
                                     (gx#syntax-e _tl2838728419_)))
                                (let ((_hd2838928426_ (##car _e2838828422_))
                                      (_tl2839028429_ (##cdr _e2838828422_)))
                                  (if (gx#stx-pair/null? _tl2839028429_)
                                      (if (fx>= (gx#stx-length _tl2839028429_)
                                                '0)
                                          (let ((_g30108_
                                                 (gx#syntax-split-splice
                                                  _tl2839028429_
                                                  '0)))
                                            (begin
                                              (let ((_g30109_
                                                     (values-count _g30108_)))
                                                (if (not (fx= _g30109_ 2))
                                                    (error "Context expects 2 values"
                                                           _g30109_)))
                                              (let ((_target2839128432_
                                                     (values-ref _g30108_ 0))
                                                    (_tl2839328435_
                                                     (values-ref _g30108_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2839328435_)
                                                    (letrec ((_loop2839428438_
                                                              (lambda (_hd2839228442_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _id2839828445_)
                        (if (gx#stx-pair? _hd2839228442_)
                            (let ((_e2839528448_ (gx#syntax-e _hd2839228442_)))
                              (let ((_lp-hd2839628452_ (##car _e2839528448_))
                                    (_lp-tl2839728455_ (##cdr _e2839528448_)))
                                (_loop2839428438_
                                 _lp-tl2839728455_
                                 (cons _lp-hd2839628452_ _id2839828445_))))
                            (let ((_id2839928458_ (reverse _id2839828445_)))
                              ((lambda (_L28462_ _L28464_)
                                 (if (gx#identifier-list?
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g2848128484_
                                                        _g2848228487_)
                                                 (cons _g2848128484_
                                                       _g2848228487_))
                                               '()
                                               _L28462_)))
                                     (let ((_keys28498_
                                            (gx#stx-map
                                             gx#core-identifier-key
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g2848928492_
                                                               _g2849028495_)
                                                        (cons _g2848928492_
                                                              _g2849028495_))
                                                      '()
                                                      _L28462_)))))
                                       (let ((_keytab28509_
                                              (let ((_ht28501_
                                                     (make-hash-table)))
                                                (begin
                                                  (for-each
                                                   (lambda (_g2850328505_)
                                                     (hash-put!
                                                      _ht28501_
                                                      _g2850328505_
                                                      '#t))
                                                   _keys28498_)
                                                  _ht28501_))))
                                         (let ((_imports28512_
                                                (gx#core-expand-import-source
                                                 _L28464_)))
                                           (let ((_fold-e28522_
                                                  (letrec ((_fold-e28515_
                                                            (lambda (_in28518_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _r28520_)
                      (if (gx#module-import? _in28518_)
                          (if (hash-get
                               _keytab28509_
                               (gx#module-import-name _in28518_))
                              (cons _in28518_ _r28520_)
                              _r28520_)
                          (if (gx#import-set? _in28518_)
                              (foldl _fold-e28515_
                                     _r28520_
                                     (gx#import-set-imports _in28518_))
                              _r28520_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _fold-e28515_)))
                                             (let ()
                                               (cons 'begin:
                                                     (foldl _fold-e28522_
                                                            '()
                                                            _imports28512_)))))))
                                     (_g2838128405_ _g2838228409_)))
                               _id2839928458_
                               _hd2838928426_))))))
              (_loop2839428438_ _target2839128432_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2838128405_
                                                     _g2838228409_)))))
                                          (_g2838128405_ _g2838228409_))
                                      (_g2838128405_ _g2838228409_))))
                              (_g2838128405_ _g2838228409_))))
                      (_g2838128405_ _g2838228409_)))))
           (_g2838028527_ _stx28378_))))))
  (define |gerbil/core::<module-sugar>[:0:]#except-in|
    (gx#make-import-expander
     (lambda (_stx28532_)
       (let ((_g2853528559_
              (lambda (_g2853628555_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2853628555_))))
         (let ((_g2853428681_
                (lambda (_g2853628563_)
                  (if (gx#stx-pair? _g2853628563_)
                      (let ((_e2853928566_ (gx#syntax-e _g2853628563_)))
                        (let ((_hd2854028570_ (##car _e2853928566_))
                              (_tl2854128573_ (##cdr _e2853928566_)))
                          (if (gx#stx-pair? _tl2854128573_)
                              (let ((_e2854228576_
                                     (gx#syntax-e _tl2854128573_)))
                                (let ((_hd2854328580_ (##car _e2854228576_))
                                      (_tl2854428583_ (##cdr _e2854228576_)))
                                  (if (gx#stx-pair/null? _tl2854428583_)
                                      (if (fx>= (gx#stx-length _tl2854428583_)
                                                '0)
                                          (let ((_g30110_
                                                 (gx#syntax-split-splice
                                                  _tl2854428583_
                                                  '0)))
                                            (begin
                                              (let ((_g30111_
                                                     (values-count _g30110_)))
                                                (if (not (fx= _g30111_ 2))
                                                    (error "Context expects 2 values"
                                                           _g30111_)))
                                              (let ((_target2854528586_
                                                     (values-ref _g30110_ 0))
                                                    (_tl2854728589_
                                                     (values-ref _g30110_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2854728589_)
                                                    (letrec ((_loop2854828592_
                                                              (lambda (_hd2854628596_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _id2855228599_)
                        (if (gx#stx-pair? _hd2854628596_)
                            (let ((_e2854928602_ (gx#syntax-e _hd2854628596_)))
                              (let ((_lp-hd2855028606_ (##car _e2854928602_))
                                    (_lp-tl2855128609_ (##cdr _e2854928602_)))
                                (_loop2854828592_
                                 _lp-tl2855128609_
                                 (cons _lp-hd2855028606_ _id2855228599_))))
                            (let ((_id2855328612_ (reverse _id2855228599_)))
                              ((lambda (_L28616_ _L28618_)
                                 (if (gx#identifier-list?
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g2863528638_
                                                        _g2863628641_)
                                                 (cons _g2863528638_
                                                       _g2863628641_))
                                               '()
                                               _L28616_)))
                                     (let ((_keys28652_
                                            (gx#stx-map
                                             gx#core-identifier-key
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g2864328646_
                                                               _g2864428649_)
                                                        (cons _g2864328646_
                                                              _g2864428649_))
                                                      '()
                                                      _L28616_)))))
                                       (let ((_keytab28663_
                                              (let ((_ht28655_
                                                     (make-hash-table)))
                                                (begin
                                                  (for-each
                                                   (lambda (_g2865728659_)
                                                     (hash-put!
                                                      _ht28655_
                                                      _g2865728659_
                                                      '#t))
                                                   _keys28652_)
                                                  _ht28655_))))
                                         (let ((_imports28666_
                                                (gx#core-expand-import-source
                                                 _L28618_)))
                                           (let ((_fold-e28676_
                                                  (letrec ((_fold-e28669_
                                                            (lambda (_in28672_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _r28674_)
                      (if (gx#module-import? _in28672_)
                          (if (hash-get
                               _keytab28663_
                               (gx#module-import-name _in28672_))
                              _r28674_
                              (cons _in28672_ _r28674_))
                          (if (gx#import-set? _in28672_)
                              (foldl _fold-e28669_
                                     _r28674_
                                     (gx#import-set-imports _in28672_))
                              (cons _in28672_ _r28674_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _fold-e28669_)))
                                             (let ()
                                               (cons 'begin:
                                                     (foldl _fold-e28676_
                                                            '()
                                                            _imports28666_)))))))
                                     (_g2853528559_ _g2853628563_)))
                               _id2855328612_
                               _hd2854328580_))))))
              (_loop2854828592_ _target2854528586_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2853528559_
                                                     _g2853628563_)))))
                                          (_g2853528559_ _g2853628563_))
                                      (_g2853528559_ _g2853628563_))))
                              (_g2853528559_ _g2853628563_))))
                      (_g2853528559_ _g2853628563_)))))
           (_g2853428681_ _stx28532_))))))
  (define |gerbil/core::<module-sugar>[1]#module-import-rename|
    (lambda (_in28733_ _rename28735_)
      (gx#make-module-import
       (gx#module-import-source _in28733_)
       _rename28735_
       (gx#module-import-phi _in28733_)
       (gx#module-import-weak? _in28733_))))
  (define |gerbil/core::<module-sugar>[1]#prefix-identifier-key|
    (lambda (_name28686_ _pre28688_)
      (let ((_name2868928697_ _name28686_))
        (let ((_E2869228703_
               (lambda () (error '"No clause matching" _name2868928697_))))
          (let ((_else2869128709_
                 (lambda () (make-symbol _pre28688_ _name28686_))))
            (let ((_K2869328717_
                   (lambda (_mark28713_ _id28715_)
                     (cons (make-symbol _pre28688_ _id28715_) _mark28713_))))
              (if (##pair? _name2868928697_)
                  (let ((_hd2869428721_ (##car _name2868928697_))
                        (_tl2869528724_ (##cdr _name2868928697_)))
                    (let ((_id28727_ _hd2869428721_))
                      (let ((_mark28730_ _tl2869528724_))
                        (_K2869328717_ _mark28730_ _id28727_))))
                  (_else2869128709_))))))))
  (define |gerbil/core::<module-sugar>[:0:]#rename-in|
    (gx#make-import-expander
     (lambda (_stx28737_)
       (let ((_g2874028773_
              (lambda (_g2874128769_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2874128769_))))
         (let ((_g2873928959_
                (lambda (_g2874128777_)
                  (if (gx#stx-pair? _g2874128777_)
                      (let ((_e2874528780_ (gx#syntax-e _g2874128777_)))
                        (let ((_hd2874628784_ (##car _e2874528780_))
                              (_tl2874728787_ (##cdr _e2874528780_)))
                          (if (gx#stx-pair? _tl2874728787_)
                              (let ((_e2874828790_
                                     (gx#syntax-e _tl2874728787_)))
                                (let ((_hd2874928794_ (##car _e2874828790_))
                                      (_tl2875028797_ (##cdr _e2874828790_)))
                                  (if (gx#stx-pair/null? _tl2875028797_)
                                      (if (fx>= (gx#stx-length _tl2875028797_)
                                                '0)
                                          (let ((_g30112_
                                                 (gx#syntax-split-splice
                                                  _tl2875028797_
                                                  '0)))
                                            (begin
                                              (let ((_g30113_
                                                     (values-count _g30112_)))
                                                (if (not (fx= _g30113_ 2))
                                                    (error "Context expects 2 values"
                                                           _g30113_)))
                                              (let ((_target2875128800_
                                                     (values-ref _g30112_ 0))
                                                    (_tl2875328803_
                                                     (values-ref _g30112_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2875328803_)
                                                    (letrec ((_loop2875428806_
                                                              (lambda (_hd2875228810_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _new-id2875828813_
                               _id2875928815_)
                        (if (gx#stx-pair? _hd2875228810_)
                            (let ((_e2875528818_ (gx#syntax-e _hd2875228810_)))
                              (let ((_lp-hd2875628822_ (##car _e2875528818_))
                                    (_lp-tl2875728825_ (##cdr _e2875528818_)))
                                (if (gx#stx-pair? _lp-hd2875628822_)
                                    (let ((_e2876228828_
                                           (gx#syntax-e _lp-hd2875628822_)))
                                      (let ((_hd2876328832_
                                             (##car _e2876228828_))
                                            (_tl2876428835_
                                             (##cdr _e2876228828_)))
                                        (if (gx#stx-pair? _tl2876428835_)
                                            (let ((_e2876528838_
                                                   (gx#syntax-e
                                                    _tl2876428835_)))
                                              (let ((_hd2876628842_
                                                     (##car _e2876528838_))
                                                    (_tl2876728845_
                                                     (##cdr _e2876528838_)))
                                                (if (gx#stx-null?
                                                     _tl2876728845_)
                                                    (_loop2875428806_
                                                     _lp-tl2875728825_
                                                     (cons _hd2876628842_
                                                           _new-id2875828813_)
                                                     (cons _hd2876328832_
                                                           _id2875928815_))
                                                    (_g2874028773_
                                                     _g2874128777_))))
                                            (_g2874028773_ _g2874128777_))))
                                    (_g2874028773_ _g2874128777_))))
                            (let ((_new-id2876028848_
                                   (reverse _new-id2875828813_))
                                  (_id2876128851_ (reverse _id2875928815_)))
                              ((lambda (_L28854_ _L28856_ _L28857_)
                                 (if (if (gx#identifier-list?
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2887528878_
                                                            _g2887628881_)
                                                     (cons _g2887528878_
                                                           _g2887628881_))
                                                   '()
                                                   _L28856_)))
                                         (gx#identifier-list?
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2888328886_
                                                            _g2888428889_)
                                                     (cons _g2888328886_
                                                           _g2888428889_))
                                                   '()
                                                   _L28854_)))
                                         '#f)
                                     (let ((_keytab28892_ (make-hash-table)))
                                       (let ((_found28895_ (make-hash-table)))
                                         (let ((_g30114_
                                                (for-each
                                                 (lambda (_id28898_
                                                          _new-id28900_)
                                                   (hash-put!
                                                    _keytab28892_
                                                    (gx#core-identifier-key
                                                     _id28898_)
                                                    (gx#core-identifier-key
                                                     _new-id28900_)))
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2890128904_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2890228907_)
                    (cons _g2890128904_ _g2890228907_))
                  '()
                  _L28856_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2890928912_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2891028915_)
                    (cons _g2890928912_ _g2891028915_))
                  '()
                  _L28854_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_imports28920_
                                                  (gx#core-expand-import-source
                                                   _L28857_)))
                                             (let ((_fold-e28940_
                                                    (letrec ((_fold-e28923_
                                                              (lambda (_in28926_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _r28928_)
                        (if (gx#module-import? _in28926_)
                            (let ((_name28930_
                                   (gx#module-import-name _in28926_)))
                              (let ((_$e28933_
                                     (hash-get _keytab28892_ _name28930_)))
                                (if _$e28933_
                                    ((lambda (_rename28937_)
                                       (begin
                                         (hash-put!
                                          _found28895_
                                          _name28930_
                                          '#t)
                                         (cons (|gerbil/core::<module-sugar>[1]#module-import-rename|
                                                _in28926_
                                                _rename28937_)
                                               _r28928_)))
                                     _$e28933_)
                                    (cons _in28926_ _r28928_))))
                            (if (gx#import-set? _in28926_)
                                (foldl _fold-e28923_
                                       _r28928_
                                       (gx#import-set-imports _in28926_))
                                (cons _in28926_ _r28928_))))))
              _fold-e28923_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_new-imports28943_
                                                      (foldl _fold-e28940_
                                                             '()
                                                             _imports28920_)))
                                                 (let ()
                                                   (begin
                                                     (for-each
                                                      (lambda (_id28948_)
                                                        (if (hash-get
                                                             _found28895_
                                                             (gx#core-identifier-key
                                                              _id28948_))
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; identifier is not in the import set"
                                                             _stx28737_
                                                             _id28948_)))
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g2895028953_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2895128956_)
                         (cons _g2895028953_ _g2895128956_))
                       '()
                       _L28856_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons 'begin:
                                                           _new-imports28943_)))))))))
                                     (_g2874028773_ _g2874128777_)))
                               _new-id2876028848_
                               _id2876128851_
                               _hd2874928794_))))))
              (_loop2875428806_ _target2875128800_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2874028773_
                                                     _g2874128777_)))))
                                          (_g2874028773_ _g2874128777_))
                                      (_g2874028773_ _g2874128777_))))
                              (_g2874028773_ _g2874128777_))))
                      (_g2874028773_ _g2874128777_)))))
           (_g2873928959_ _stx28737_))))))
  (define |gerbil/core::<module-sugar>[:0:]#prefix-in|
    (gx#make-import-expander
     (lambda (_stx28965_)
       (let ((_g2896828986_
              (lambda (_g2896928982_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2896928982_))))
         (let ((_g2896729065_
                (lambda (_g2896928990_)
                  (if (gx#stx-pair? _g2896928990_)
                      (let ((_e2897228993_ (gx#syntax-e _g2896928990_)))
                        (let ((_hd2897328997_ (##car _e2897228993_))
                              (_tl2897429000_ (##cdr _e2897228993_)))
                          (if (gx#stx-pair? _tl2897429000_)
                              (let ((_e2897529003_
                                     (gx#syntax-e _tl2897429000_)))
                                (let ((_hd2897629007_ (##car _e2897529003_))
                                      (_tl2897729010_ (##cdr _e2897529003_)))
                                  (if (gx#stx-pair? _tl2897729010_)
                                      (let ((_e2897829013_
                                             (gx#syntax-e _tl2897729010_)))
                                        (let ((_hd2897929017_
                                               (##car _e2897829013_))
                                              (_tl2898029020_
                                               (##cdr _e2897829013_)))
                                          (if (gx#stx-null? _tl2898029020_)
                                              ((lambda (_L29023_ _L29025_)
                                                 (if (gx#identifier? _L29023_)
                                                     (let ((_pre29041_
                                                            (gx#stx-e
                                                             _L29023_)))
                                                       (let ((_imports29044_
                                                              (gx#core-expand-import-source
                                                               _L29025_)))
                                                         (let ((_rename-e29050_
                                                                (lambda (_name29047_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (|gerbil/core::<module-sugar>[1]#prefix-identifier-key|
                           _name29047_
                           _pre29041_))))
                   (let ((_fold-e29060_
                          (letrec ((_fold-e29053_
                                    (lambda (_in29056_ _r29058_)
                                      (if (gx#module-import? _in29056_)
                                          (cons (|gerbil/core::<module-sugar>[1]#module-import-rename|
                                                 _in29056_
                                                 (_rename-e29050_
                                                  (gx#module-import-name
                                                   _in29056_)))
                                                _r29058_)
                                          (if (gx#import-set? _in29056_)
                                              (foldl _fold-e29053_
                                                     _r29058_
                                                     (gx#import-set-imports
                                                      _in29056_))
                                              (cons _in29056_ _r29058_))))))
                            _fold-e29053_)))
                     (let ()
                       (cons 'begin:
                             (foldl _fold-e29060_ '() _imports29044_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2896828986_
                                                      _g2896928990_)))
                                               _hd2897929017_
                                               _hd2897629007_)
                                              (_g2896828986_ _g2896928990_))))
                                      (_g2896828986_ _g2896928990_))))
                              (_g2896828986_ _g2896928990_))))
                      (_g2896828986_ _g2896928990_)))))
           (_g2896729065_ _stx28965_))))))
  (define |gerbil/core::<module-sugar>[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_stx29069_)
       (let ((_g2907229096_
              (lambda (_g2907329092_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2907329092_))))
         (let ((_g2907129218_
                (lambda (_g2907329100_)
                  (if (gx#stx-pair? _g2907329100_)
                      (let ((_e2907629103_ (gx#syntax-e _g2907329100_)))
                        (let ((_hd2907729107_ (##car _e2907629103_))
                              (_tl2907829110_ (##cdr _e2907629103_)))
                          (if (gx#stx-pair? _tl2907829110_)
                              (let ((_e2907929113_
                                     (gx#syntax-e _tl2907829110_)))
                                (let ((_hd2908029117_ (##car _e2907929113_))
                                      (_tl2908129120_ (##cdr _e2907929113_)))
                                  (if (gx#stx-pair/null? _tl2908129120_)
                                      (if (fx>= (gx#stx-length _tl2908129120_)
                                                '0)
                                          (let ((_g30115_
                                                 (gx#syntax-split-splice
                                                  _tl2908129120_
                                                  '0)))
                                            (begin
                                              (let ((_g30116_
                                                     (values-count _g30115_)))
                                                (if (not (fx= _g30116_ 2))
                                                    (error "Context expects 2 values"
                                                           _g30116_)))
                                              (let ((_target2908229123_
                                                     (values-ref _g30115_ 0))
                                                    (_tl2908429126_
                                                     (values-ref _g30115_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2908429126_)
                                                    (letrec ((_loop2908529129_
                                                              (lambda (_hd2908329133_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _id2908929136_)
                        (if (gx#stx-pair? _hd2908329133_)
                            (let ((_e2908629139_ (gx#syntax-e _hd2908329133_)))
                              (let ((_lp-hd2908729143_ (##car _e2908629139_))
                                    (_lp-tl2908829146_ (##cdr _e2908629139_)))
                                (_loop2908529129_
                                 _lp-tl2908829146_
                                 (cons _lp-hd2908729143_ _id2908929136_))))
                            (let ((_id2909029149_ (reverse _id2908929136_)))
                              ((lambda (_L29153_ _L29155_)
                                 (if (gx#identifier-list?
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g2917229175_
                                                        _g2917329178_)
                                                 (cons _g2917229175_
                                                       _g2917329178_))
                                               '()
                                               _L29153_)))
                                     (let ((_keys29189_
                                            (gx#stx-map
                                             gx#core-identifier-key
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g2918029183_
                                                               _g2918129186_)
                                                        (cons _g2918029183_
                                                              _g2918129186_))
                                                      '()
                                                      _L29153_)))))
                                       (let ((_keytab29200_
                                              (let ((_ht29192_
                                                     (make-hash-table)))
                                                (begin
                                                  (for-each
                                                   (lambda (_g2919429196_)
                                                     (hash-put!
                                                      _ht29192_
                                                      _g2919429196_
                                                      '#t))
                                                   _keys29189_)
                                                  _ht29192_))))
                                         (let ((_exports29203_
                                                (gx#core-expand-export-source
                                                 _L29155_)))
                                           (let ((_fold-e29213_
                                                  (letrec ((_fold-e29206_
                                                            (lambda (_out29209_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _r29211_)
                      (if (gx#module-export? _out29209_)
                          (if (hash-get
                               _keytab29200_
                               (gx#module-export-name _out29209_))
                              _r29211_
                              (cons _out29209_ _r29211_))
                          (if (gx#export-set? _out29209_)
                              (foldl _fold-e29206_
                                     _r29211_
                                     (gx#export-set-exports _out29209_))
                              _r29211_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _fold-e29206_)))
                                             (let ()
                                               (cons 'begin:
                                                     (foldl _fold-e29213_
                                                            '()
                                                            _exports29203_)))))))
                                     (_g2907229096_ _g2907329100_)))
                               _id2909029149_
                               _hd2908029117_))))))
              (_loop2908529129_ _target2908229123_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2907229096_
                                                     _g2907329100_)))))
                                          (_g2907229096_ _g2907329100_))
                                      (_g2907229096_ _g2907329100_))))
                              (_g2907229096_ _g2907329100_))))
                      (_g2907229096_ _g2907329100_)))))
           (_g2907129218_ _stx29069_))))))
  (define |gerbil/core::<module-sugar>[1]#module-export-rename|
    (lambda (_out29223_ _rename29225_)
      (gx#make-module-export
       (gx#module-export-context _out29223_)
       (gx#module-export-key _out29223_)
       (gx#module-export-phi _out29223_)
       _rename29225_
       (gx#module-export-weak? _out29223_))))
  (define |gerbil/core::<module-sugar>[:0:]#rename-out|
    (gx#make-export-expander
     (lambda (_stx29227_)
       (let ((_g2923029263_
              (lambda (_g2923129259_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2923129259_))))
         (let ((_g2922929449_
                (lambda (_g2923129267_)
                  (if (gx#stx-pair? _g2923129267_)
                      (let ((_e2923529270_ (gx#syntax-e _g2923129267_)))
                        (let ((_hd2923629274_ (##car _e2923529270_))
                              (_tl2923729277_ (##cdr _e2923529270_)))
                          (if (gx#stx-pair? _tl2923729277_)
                              (let ((_e2923829280_
                                     (gx#syntax-e _tl2923729277_)))
                                (let ((_hd2923929284_ (##car _e2923829280_))
                                      (_tl2924029287_ (##cdr _e2923829280_)))
                                  (if (gx#stx-pair/null? _tl2924029287_)
                                      (if (fx>= (gx#stx-length _tl2924029287_)
                                                '0)
                                          (let ((_g30117_
                                                 (gx#syntax-split-splice
                                                  _tl2924029287_
                                                  '0)))
                                            (begin
                                              (let ((_g30118_
                                                     (values-count _g30117_)))
                                                (if (not (fx= _g30118_ 2))
                                                    (error "Context expects 2 values"
                                                           _g30118_)))
                                              (let ((_target2924129290_
                                                     (values-ref _g30117_ 0))
                                                    (_tl2924329293_
                                                     (values-ref _g30117_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2924329293_)
                                                    (letrec ((_loop2924429296_
                                                              (lambda (_hd2924229300_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _new-id2924829303_
                               _id2924929305_)
                        (if (gx#stx-pair? _hd2924229300_)
                            (let ((_e2924529308_ (gx#syntax-e _hd2924229300_)))
                              (let ((_lp-hd2924629312_ (##car _e2924529308_))
                                    (_lp-tl2924729315_ (##cdr _e2924529308_)))
                                (if (gx#stx-pair? _lp-hd2924629312_)
                                    (let ((_e2925229318_
                                           (gx#syntax-e _lp-hd2924629312_)))
                                      (let ((_hd2925329322_
                                             (##car _e2925229318_))
                                            (_tl2925429325_
                                             (##cdr _e2925229318_)))
                                        (if (gx#stx-pair? _tl2925429325_)
                                            (let ((_e2925529328_
                                                   (gx#syntax-e
                                                    _tl2925429325_)))
                                              (let ((_hd2925629332_
                                                     (##car _e2925529328_))
                                                    (_tl2925729335_
                                                     (##cdr _e2925529328_)))
                                                (if (gx#stx-null?
                                                     _tl2925729335_)
                                                    (_loop2924429296_
                                                     _lp-tl2924729315_
                                                     (cons _hd2925629332_
                                                           _new-id2924829303_)
                                                     (cons _hd2925329322_
                                                           _id2924929305_))
                                                    (_g2923029263_
                                                     _g2923129267_))))
                                            (_g2923029263_ _g2923129267_))))
                                    (_g2923029263_ _g2923129267_))))
                            (let ((_new-id2925029338_
                                   (reverse _new-id2924829303_))
                                  (_id2925129341_ (reverse _id2924929305_)))
                              ((lambda (_L29344_ _L29346_ _L29347_)
                                 (if (if (gx#identifier-list?
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2936529368_
                                                            _g2936629371_)
                                                     (cons _g2936529368_
                                                           _g2936629371_))
                                                   '()
                                                   _L29346_)))
                                         (gx#identifier-list?
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2937329376_
                                                            _g2937429379_)
                                                     (cons _g2937329376_
                                                           _g2937429379_))
                                                   '()
                                                   _L29344_)))
                                         '#f)
                                     (let ((_keytab29382_ (make-hash-table)))
                                       (let ((_found29385_ (make-hash-table)))
                                         (let ((_g30119_
                                                (for-each
                                                 (lambda (_id29388_
                                                          _new-id29390_)
                                                   (hash-put!
                                                    _keytab29382_
                                                    (gx#core-identifier-key
                                                     _id29388_)
                                                    (gx#core-identifier-key
                                                     _new-id29390_)))
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2939129394_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2939229397_)
                    (cons _g2939129394_ _g2939229397_))
                  '()
                  _L29346_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2939929402_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2940029405_)
                    (cons _g2939929402_ _g2940029405_))
                  '()
                  _L29344_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_exports29410_
                                                  (gx#core-expand-export-source
                                                   _L29347_)))
                                             (let ((_fold-e29430_
                                                    (letrec ((_fold-e29413_
                                                              (lambda (_out29416_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _r29418_)
                        (if (gx#module-export? _out29416_)
                            (let ((_name29420_
                                   (gx#module-export-name _out29416_)))
                              (let ((_$e29423_
                                     (hash-get _keytab29382_ _name29420_)))
                                (if _$e29423_
                                    ((lambda (_rename29427_)
                                       (begin
                                         (hash-put!
                                          _found29385_
                                          _name29420_
                                          '#t)
                                         (cons (|gerbil/core::<module-sugar>[1]#module-export-rename|
                                                _out29416_
                                                _rename29427_)
                                               _r29418_)))
                                     _$e29423_)
                                    (cons _out29416_ _r29418_))))
                            (if (gx#export-set? _out29416_)
                                (foldl _fold-e29413_
                                       _r29418_
                                       (gx#export-set-exports _out29416_))
                                (cons _out29416_ _r29418_))))))
              _fold-e29413_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_new-exports29433_
                                                      (foldl _fold-e29430_
                                                             '()
                                                             _exports29410_)))
                                                 (let ()
                                                   (begin
                                                     (for-each
                                                      (lambda (_id29438_)
                                                        (if (hash-get
                                                             _found29385_
                                                             (gx#core-identifier-key
                                                              _id29438_))
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; identifier is not in the export set"
                                                             _stx29227_
                                                             _id29438_)))
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g2944029443_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2944129446_)
                         (cons _g2944029443_ _g2944129446_))
                       '()
                       _L29346_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons 'begin:
                                                           _new-exports29433_)))))))))
                                     (_g2923029263_ _g2923129267_)))
                               _new-id2925029338_
                               _id2925129341_
                               _hd2923929284_))))))
              (_loop2924429296_ _target2924129290_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2923029263_
                                                     _g2923129267_)))))
                                          (_g2923029263_ _g2923129267_))
                                      (_g2923029263_ _g2923129267_))))
                              (_g2923029263_ _g2923129267_))))
                      (_g2923029263_ _g2923129267_)))))
           (_g2922929449_ _stx29227_))))))
  (define |gerbil/core::<module-sugar>[:0:]#prefix-out|
    (gx#make-export-expander
     (lambda (_stx29455_)
       (let ((_g2945829476_
              (lambda (_g2945929472_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2945929472_))))
         (let ((_g2945729555_
                (lambda (_g2945929480_)
                  (if (gx#stx-pair? _g2945929480_)
                      (let ((_e2946229483_ (gx#syntax-e _g2945929480_)))
                        (let ((_hd2946329487_ (##car _e2946229483_))
                              (_tl2946429490_ (##cdr _e2946229483_)))
                          (if (gx#stx-pair? _tl2946429490_)
                              (let ((_e2946529493_
                                     (gx#syntax-e _tl2946429490_)))
                                (let ((_hd2946629497_ (##car _e2946529493_))
                                      (_tl2946729500_ (##cdr _e2946529493_)))
                                  (if (gx#stx-pair? _tl2946729500_)
                                      (let ((_e2946829503_
                                             (gx#syntax-e _tl2946729500_)))
                                        (let ((_hd2946929507_
                                               (##car _e2946829503_))
                                              (_tl2947029510_
                                               (##cdr _e2946829503_)))
                                          (if (gx#stx-null? _tl2947029510_)
                                              ((lambda (_L29513_ _L29515_)
                                                 (if (gx#identifier? _L29513_)
                                                     (let ((_pre29531_
                                                            (gx#stx-e
                                                             _L29513_)))
                                                       (let ((_exports29534_
                                                              (gx#core-expand-export-source
                                                               _L29515_)))
                                                         (let ((_rename-e29540_
                                                                (lambda (_name29537_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (|gerbil/core::<module-sugar>[1]#prefix-identifier-key|
                           _name29537_
                           _pre29531_))))
                   (let ((_fold-e29550_
                          (letrec ((_fold-e29543_
                                    (lambda (_out29546_ _r29548_)
                                      (if (gx#module-export? _out29546_)
                                          (cons (|gerbil/core::<module-sugar>[1]#module-export-rename|
                                                 _out29546_
                                                 (_rename-e29540_
                                                  (gx#module-export-name
                                                   _out29546_)))
                                                _r29548_)
                                          (if (gx#export-set? _out29546_)
                                              (foldl _fold-e29543_
                                                     _r29548_
                                                     (gx#export-set-exports
                                                      _out29546_))
                                              (cons _out29546_ _r29548_))))))
                            _fold-e29543_)))
                     (let ()
                       (cons 'begin:
                             (foldl _fold-e29550_ '() _exports29534_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2945829476_
                                                      _g2945929480_)))
                                               _hd2946929507_
                                               _hd2946629497_)
                                              (_g2945829476_ _g2945929480_))))
                                      (_g2945829476_ _g2945929480_))))
                              (_g2945829476_ _g2945929480_))))
                      (_g2945829476_ _g2945929480_)))))
           (_g2945729555_ _stx29455_))))))
  (define |gerbil/core::<module-sugar>[:0:]#struct-out|
    (gx#make-export-expander
     (lambda (_stx29559_)
       (let ((_g2956229582_
              (lambda (_g2956329578_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2956329578_))))
         (let ((_g2956129817_
                (lambda (_g2956329586_)
                  (if (gx#stx-pair? _g2956329586_)
                      (let ((_e2956529589_ (gx#syntax-e _g2956329586_)))
                        (let ((_hd2956629593_ (##car _e2956529589_))
                              (_tl2956729596_ (##cdr _e2956529589_)))
                          (if (gx#stx-pair/null? _tl2956729596_)
                              (if (fx>= (gx#stx-length _tl2956729596_) '0)
                                  (let ((_g30120_
                                         (gx#syntax-split-splice
                                          _tl2956729596_
                                          '0)))
                                    (begin
                                      (let ((_g30121_ (values-count _g30120_)))
                                        (if (not (fx= _g30121_ 2))
                                            (error "Context expects 2 values"
                                                   _g30121_)))
                                      (let ((_target2956829599_
                                             (values-ref _g30120_ 0))
                                            (_tl2957029602_
                                             (values-ref _g30120_ 1)))
                                        (if (gx#stx-null? _tl2957029602_)
                                            (letrec ((_loop2957129605_
                                                      (lambda (_hd2956929609_
                                                               _id2957529612_)
                                                        (if (gx#stx-pair?
                                                             _hd2956929609_)
                                                            (let ((_e2957229615_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd2956929609_)))
                      (let ((_lp-hd2957329619_ (##car _e2957229615_))
                            (_lp-tl2957429622_ (##cdr _e2957229615_)))
                        (_loop2957129605_
                         _lp-tl2957429622_
                         (cons _lp-hd2957329619_ _id2957529612_))))
                    (let ((_id2957629625_ (reverse _id2957529612_)))
                      ((lambda (_L29629_)
                         ((letrec ((_lp29645_
                                    (lambda (_rest29648_ _ids29650_)
                                      (let ((_g2965329665_
                                             (lambda (_g2965429661_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2965429661_))))
                                        (let ((_g2965229676_
                                               (lambda (_g2965429669_)
                                                 ((lambda ()
                                                    (cons 'begin:
                                                          _ids29650_))))))
                                          (let ((_g2965129805_
                                                 (lambda (_g2965429680_)
                                                   (if (gx#stx-pair?
                                                        _g2965429680_)
                                                       (let ((_e2965729683_
                                                              (gx#syntax-e
                                                               _g2965429680_)))
                                                         (let ((_hd2965829687_
                                                                (##car _e2965729683_))
                                                               (_tl2965929690_
                                                                (##cdr _e2965729683_)))
                                                           ((lambda (_L29693_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L29695_)
                      (let ((_info29710_
                             (gx#syntax-local-value _L29695_ false)))
                        (if (|gerbil/core::<MOP>::<MOP:2>[1]#expander-type-info?|
                             _info29710_)
                            (let ((_g2971229729_
                                   (slot-ref
                                    _info29710_
                                    'expander-identifiers)))
                              (let ((_E2971429735_
                                     (lambda ()
                                       (error '"No clause matching"
                                              _g2971229729_))))
                                (let ((_K2971529747_
                                       (lambda (_setf29739_
                                                _getf29741_
                                                _type?29742_
                                                _make-type29743_
                                                _type::t29744_
                                                _super29745_)
                                         (_lp29645_
                                          _L29693_
                                          (cons _L29695_
                                                (cons _type::t29744_
                                                      (cons _make-type29743_
                                                            (cons _type?29742_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (foldr cons
                                 (foldr cons _ids29650_ _setf29739_)
                                 _getf29741_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (##pair? _g2971229729_)
                                      (let ((_hd2971629751_
                                             (##car _g2971229729_))
                                            (_tl2971729754_
                                             (##cdr _g2971229729_)))
                                        (let ((_super29757_ _hd2971629751_))
                                          (if (##pair? _tl2971729754_)
                                              (let ((_hd2971829760_
                                                     (##car _tl2971729754_))
                                                    (_tl2971929763_
                                                     (##cdr _tl2971729754_)))
                                                (let ((_type::t29766_
                                                       _hd2971829760_))
                                                  (if (##pair? _tl2971929763_)
                                                      (let ((_hd2972029769_
                                                             (##car _tl2971929763_))
                                                            (_tl2972129772_
                                                             (##cdr _tl2971929763_)))
                                                        (let ((_make-type29775_
                                                               _hd2972029769_))
                                                          (if (##pair? _tl2972129772_)
                                                              (let ((_hd2972229778_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##car _tl2972129772_))
                            (_tl2972329781_ (##cdr _tl2972129772_)))
                        (let ((_type?29784_ _hd2972229778_))
                          (if (##pair? _tl2972329781_)
                              (let ((_hd2972429787_ (##car _tl2972329781_))
                                    (_tl2972529790_ (##cdr _tl2972329781_)))
                                (let ((_getf29793_ _hd2972429787_))
                                  (if (##pair? _tl2972529790_)
                                      (let ((_hd2972629796_
                                             (##car _tl2972529790_))
                                            (_tl2972729799_
                                             (##cdr _tl2972529790_)))
                                        (let ((_setf29802_ _hd2972629796_))
                                          (if (##null? _tl2972729799_)
                                              (_K2971529747_
                                               _setf29802_
                                               _getf29793_
                                               _type?29784_
                                               _make-type29775_
                                               _type::t29766_
                                               _super29757_)
                                              (_E2971429735_))))
                                      (_E2971429735_))))
                              (_E2971429735_))))
                      (_E2971429735_))))
              (_E2971429735_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E2971429735_))))
                                      (_E2971429735_)))))
                            (gx#raise-syntax-error
                             '#f
                             '"Incomplete type info"
                             _stx29559_
                             _L29695_))))
                    _tl2965929690_
                    _hd2965829687_)))
               (_g2965229676_ _g2965429680_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2965129805_ _rest29648_)))))))
                            _lp29645_)
                          (begin
                            '#!void
                            (foldr (lambda (_g2980829811_ _g2980929814_)
                                     (cons _g2980829811_ _g2980929814_))
                                   '()
                                   _L29629_))
                          '()))
                       _id2957629625_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop2957129605_
                                               _target2956829599_
                                               '()))
                                            (_g2956229582_ _g2956329586_)))))
                                  (_g2956229582_ _g2956329586_))
                              (_g2956229582_ _g2956329586_))))
                      (_g2956229582_ _g2956329586_)))))
           (_g2956129817_ _stx29559_)))))))
