(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<module-sugar>[:0:]#require|
    (lambda (_$stx28205_)
      (let ((_g2821028229_
             (lambda (_g2821128225_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2821128225_))))
        (let ((_g2820928275_
               (lambda (_g2821128233_)
                 (if (gx#stx-pair? _g2821128233_)
                     (let ((_e2821828236_ (gx#syntax-e _g2821128233_)))
                       (let ((_hd2821928240_ (##car _e2821828236_))
                             (_tl2822028243_ (##cdr _e2821828236_)))
                         (if (gx#stx-pair? _tl2822028243_)
                             (let ((_e2822128246_
                                    (gx#syntax-e _tl2822028243_)))
                               (let ((_hd2822228250_ (##car _e2822128246_))
                                     (_tl2822328253_ (##cdr _e2822128246_)))
                                 ((lambda (_L28256_ _L28258_ _L28259_)
                                    (cons (gx#datum->syntax '#f 'cond-expand)
                                          (cons (cons _L28258_
                                                      (cons (cons _L28259_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L28256_)
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
                                      (cons _L28258_ '())))
                          '()))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _tl2822328253_
                                  _hd2822228250_
                                  _hd2821928240_)))
                             (_g2821028229_ _g2821128233_))))
                     (_g2821028229_ _g2821128233_)))))
          (let ((_g2820828296_
                 (lambda (_g2821128279_)
                   (if (gx#stx-pair? _g2821128279_)
                       (let ((_e2821228282_ (gx#syntax-e _g2821128279_)))
                         (let ((_hd2821328286_ (##car _e2821228282_))
                               (_tl2821428289_ (##cdr _e2821228282_)))
                           (if (gx#stx-null? _tl2821428289_)
                               ((lambda ()
                                  (cons (gx#datum->syntax '#f 'begin) '())))
                               (_g2820928275_ _g2821128279_))))
                       (_g2820928275_ _g2821128279_)))))
            (_g2820828296_ _$stx28205_))))))
  (define |gerbil/core::<module-sugar>[:0:]#defsyntax-for-import|
    (lambda (_$stx28300_)
      (let ((_g2830528345_
             (lambda (_g2830628341_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2830628341_))))
        (let ((_g2830428446_
               (lambda (_g2830628349_)
                 (if (gx#stx-pair? _g2830628349_)
                     (let ((_e2832228352_ (gx#syntax-e _g2830628349_)))
                       (let ((_hd2832328356_ (##car _e2832228352_))
                             (_tl2832428359_ (##cdr _e2832228352_)))
                         (if (gx#stx-pair? _tl2832428359_)
                             (let ((_e2832528362_
                                    (gx#syntax-e _tl2832428359_)))
                               (let ((_hd2832628366_ (##car _e2832528362_))
                                     (_tl2832728369_ (##cdr _e2832528362_)))
                                 (if (gx#stx-pair? _hd2832628366_)
                                     (let ((_e2832828372_
                                            (gx#syntax-e _hd2832628366_)))
                                       (let ((_hd2832928376_
                                              (##car _e2832828372_))
                                             (_tl2833028379_
                                              (##cdr _e2832828372_)))
                                         (if (gx#stx-pair/null? _tl2832728369_)
                                             (if (fx>= (gx#stx-length
                                                        _tl2832728369_)
                                                       '0)
                                                 (let ((_g30438_
                                                        (gx#syntax-split-splice
                                                         _tl2832728369_
                                                         '0)))
                                                   (begin
                                                     (let ((_g30439_
                                                            (values-count
                                                             _g30438_)))
                                                       (if (not (fx= _g30439_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g30439_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2833128382_
                                                            (values-ref
                                                             _g30438_
                                                             0))
                                                           (_tl2833328385_
                                                            (values-ref
                                                             _g30438_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2833328385_)
                                                           (letrec ((_loop2833428388_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2833228392_ _body2833828395_)
                               (if (gx#stx-pair? _hd2833228392_)
                                   (let ((_e2833528398_
                                          (gx#syntax-e _hd2833228392_)))
                                     (let ((_lp-hd2833628402_
                                            (##car _e2833528398_))
                                           (_lp-tl2833728405_
                                            (##cdr _e2833528398_)))
                                       (_loop2833428388_
                                        _lp-tl2833728405_
                                        (cons _lp-hd2833628402_
                                              _body2833828395_))))
                                   (let ((_body2833928408_
                                          (reverse _body2833828395_)))
                                     ((lambda (_L28412_
                                               _L28414_
                                               _L28415_
                                               _L28416_)
                                        (if (gx#identifier? _L28415_)
                                            (cons _L28416_
                                                  (cons _L28415_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'lambda)
                            (cons _L28414_
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g2843728440_
                                                    _g2843828443_)
                                             (cons _g2843728440_
                                                   _g2843828443_))
                                           '()
                                           _L28412_))))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2830528345_ _g2830628349_)))
                                      _body2833928408_
                                      _tl2833028379_
                                      _hd2832928376_
                                      _hd2832328356_))))))
                     (_loop2833428388_ _target2833128382_ '()))
                   (_g2830528345_ _g2830628349_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2830528345_ _g2830628349_))
                                             (_g2830528345_ _g2830628349_))))
                                     (_g2830528345_ _g2830628349_))))
                             (_g2830528345_ _g2830628349_))))
                     (_g2830528345_ _g2830628349_)))))
          (let ((_g2830328500_
                 (lambda (_g2830628450_)
                   (if (gx#stx-pair? _g2830628450_)
                       (let ((_e2830928453_ (gx#syntax-e _g2830628450_)))
                         (let ((_hd2831028457_ (##car _e2830928453_))
                               (_tl2831128460_ (##cdr _e2830928453_)))
                           (if (gx#stx-pair? _tl2831128460_)
                               (let ((_e2831228463_
                                      (gx#syntax-e _tl2831128460_)))
                                 (let ((_hd2831328467_ (##car _e2831228463_))
                                       (_tl2831428470_ (##cdr _e2831228463_)))
                                   (if (gx#stx-pair? _tl2831428470_)
                                       (let ((_e2831528473_
                                              (gx#syntax-e _tl2831428470_)))
                                         (let ((_hd2831628477_
                                                (##car _e2831528473_))
                                               (_tl2831728480_
                                                (##cdr _e2831528473_)))
                                           (if (gx#stx-null? _tl2831728480_)
                                               ((lambda (_L28483_ _L28485_)
                                                  (if (gx#identifier? _L28485_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'defsyntax)
                                                            (cons _L28485_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax
                                       '#f
                                       'make-import-expander)
                                      (cons _L28483_ '()))
                                '())))
              (_g2830428446_ _g2830628450_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd2831628477_
                                                _hd2831328467_)
                                               (_g2830428446_ _g2830628450_))))
                                       (_g2830428446_ _g2830628450_))))
                               (_g2830428446_ _g2830628450_))))
                       (_g2830428446_ _g2830628450_)))))
            (_g2830328500_ _$stx28300_))))))
  (define |gerbil/core::<module-sugar>[:0:]#defsyntax-for-export|
    (lambda (_$stx28505_)
      (let ((_g2851028550_
             (lambda (_g2851128546_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2851128546_))))
        (let ((_g2850928651_
               (lambda (_g2851128554_)
                 (if (gx#stx-pair? _g2851128554_)
                     (let ((_e2852728557_ (gx#syntax-e _g2851128554_)))
                       (let ((_hd2852828561_ (##car _e2852728557_))
                             (_tl2852928564_ (##cdr _e2852728557_)))
                         (if (gx#stx-pair? _tl2852928564_)
                             (let ((_e2853028567_
                                    (gx#syntax-e _tl2852928564_)))
                               (let ((_hd2853128571_ (##car _e2853028567_))
                                     (_tl2853228574_ (##cdr _e2853028567_)))
                                 (if (gx#stx-pair? _hd2853128571_)
                                     (let ((_e2853328577_
                                            (gx#syntax-e _hd2853128571_)))
                                       (let ((_hd2853428581_
                                              (##car _e2853328577_))
                                             (_tl2853528584_
                                              (##cdr _e2853328577_)))
                                         (if (gx#stx-pair/null? _tl2853228574_)
                                             (if (fx>= (gx#stx-length
                                                        _tl2853228574_)
                                                       '0)
                                                 (let ((_g30440_
                                                        (gx#syntax-split-splice
                                                         _tl2853228574_
                                                         '0)))
                                                   (begin
                                                     (let ((_g30441_
                                                            (values-count
                                                             _g30440_)))
                                                       (if (not (fx= _g30441_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g30441_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2853628587_
                                                            (values-ref
                                                             _g30440_
                                                             0))
                                                           (_tl2853828590_
                                                            (values-ref
                                                             _g30440_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2853828590_)
                                                           (letrec ((_loop2853928593_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2853728597_ _body2854328600_)
                               (if (gx#stx-pair? _hd2853728597_)
                                   (let ((_e2854028603_
                                          (gx#syntax-e _hd2853728597_)))
                                     (let ((_lp-hd2854128607_
                                            (##car _e2854028603_))
                                           (_lp-tl2854228610_
                                            (##cdr _e2854028603_)))
                                       (_loop2853928593_
                                        _lp-tl2854228610_
                                        (cons _lp-hd2854128607_
                                              _body2854328600_))))
                                   (let ((_body2854428613_
                                          (reverse _body2854328600_)))
                                     ((lambda (_L28617_
                                               _L28619_
                                               _L28620_
                                               _L28621_)
                                        (if (gx#identifier? _L28620_)
                                            (cons _L28621_
                                                  (cons _L28620_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'lambda)
                            (cons _L28619_
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g2864228645_
                                                    _g2864328648_)
                                             (cons _g2864228645_
                                                   _g2864328648_))
                                           '()
                                           _L28617_))))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2851028550_ _g2851128554_)))
                                      _body2854428613_
                                      _tl2853528584_
                                      _hd2853428581_
                                      _hd2852828561_))))))
                     (_loop2853928593_ _target2853628587_ '()))
                   (_g2851028550_ _g2851128554_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2851028550_ _g2851128554_))
                                             (_g2851028550_ _g2851128554_))))
                                     (_g2851028550_ _g2851128554_))))
                             (_g2851028550_ _g2851128554_))))
                     (_g2851028550_ _g2851128554_)))))
          (let ((_g2850828705_
                 (lambda (_g2851128655_)
                   (if (gx#stx-pair? _g2851128655_)
                       (let ((_e2851428658_ (gx#syntax-e _g2851128655_)))
                         (let ((_hd2851528662_ (##car _e2851428658_))
                               (_tl2851628665_ (##cdr _e2851428658_)))
                           (if (gx#stx-pair? _tl2851628665_)
                               (let ((_e2851728668_
                                      (gx#syntax-e _tl2851628665_)))
                                 (let ((_hd2851828672_ (##car _e2851728668_))
                                       (_tl2851928675_ (##cdr _e2851728668_)))
                                   (if (gx#stx-pair? _tl2851928675_)
                                       (let ((_e2852028678_
                                              (gx#syntax-e _tl2851928675_)))
                                         (let ((_hd2852128682_
                                                (##car _e2852028678_))
                                               (_tl2852228685_
                                                (##cdr _e2852028678_)))
                                           (if (gx#stx-null? _tl2852228685_)
                                               ((lambda (_L28688_ _L28690_)
                                                  (if (gx#identifier? _L28690_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'defsyntax)
                                                            (cons _L28690_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax
                                       '#f
                                       'make-export-expander)
                                      (cons _L28688_ '()))
                                '())))
              (_g2850928651_ _g2851128655_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd2852128682_
                                                _hd2851828672_)
                                               (_g2850928651_ _g2851128655_))))
                                       (_g2850928651_ _g2851128655_))))
                               (_g2850928651_ _g2851128655_))))
                       (_g2850928651_ _g2851128655_)))))
            (_g2850828705_ _$stx28505_))))))
  (define |gerbil/core::<module-sugar>[:0:]#only-in|
    (gx#make-import-expander
     (lambda (_stx28710_)
       (let ((_g2871328737_
              (lambda (_g2871428733_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2871428733_))))
         (let ((_g2871228859_
                (lambda (_g2871428741_)
                  (if (gx#stx-pair? _g2871428741_)
                      (let ((_e2871728744_ (gx#syntax-e _g2871428741_)))
                        (let ((_hd2871828748_ (##car _e2871728744_))
                              (_tl2871928751_ (##cdr _e2871728744_)))
                          (if (gx#stx-pair? _tl2871928751_)
                              (let ((_e2872028754_
                                     (gx#syntax-e _tl2871928751_)))
                                (let ((_hd2872128758_ (##car _e2872028754_))
                                      (_tl2872228761_ (##cdr _e2872028754_)))
                                  (if (gx#stx-pair/null? _tl2872228761_)
                                      (if (fx>= (gx#stx-length _tl2872228761_)
                                                '0)
                                          (let ((_g30442_
                                                 (gx#syntax-split-splice
                                                  _tl2872228761_
                                                  '0)))
                                            (begin
                                              (let ((_g30443_
                                                     (values-count _g30442_)))
                                                (if (not (fx= _g30443_ 2))
                                                    (error "Context expects 2 values"
                                                           _g30443_)))
                                              (let ((_target2872328764_
                                                     (values-ref _g30442_ 0))
                                                    (_tl2872528767_
                                                     (values-ref _g30442_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2872528767_)
                                                    (letrec ((_loop2872628770_
                                                              (lambda (_hd2872428774_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _id2873028777_)
                        (if (gx#stx-pair? _hd2872428774_)
                            (let ((_e2872728780_ (gx#syntax-e _hd2872428774_)))
                              (let ((_lp-hd2872828784_ (##car _e2872728780_))
                                    (_lp-tl2872928787_ (##cdr _e2872728780_)))
                                (_loop2872628770_
                                 _lp-tl2872928787_
                                 (cons _lp-hd2872828784_ _id2873028777_))))
                            (let ((_id2873128790_ (reverse _id2873028777_)))
                              ((lambda (_L28794_ _L28796_)
                                 (if (gx#identifier-list?
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g2881328816_
                                                        _g2881428819_)
                                                 (cons _g2881328816_
                                                       _g2881428819_))
                                               '()
                                               _L28794_)))
                                     (let ((_keys28830_
                                            (gx#stx-map
                                             gx#core-identifier-key
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g2882128824_
                                                               _g2882228827_)
                                                        (cons _g2882128824_
                                                              _g2882228827_))
                                                      '()
                                                      _L28794_)))))
                                       (let ((_keytab28841_
                                              (let ((_ht28833_
                                                     (make-hash-table)))
                                                (begin
                                                  (for-each
                                                   (lambda (_g2883528837_)
                                                     (hash-put!
                                                      _ht28833_
                                                      _g2883528837_
                                                      '#t))
                                                   _keys28830_)
                                                  _ht28833_))))
                                         (let ((_imports28844_
                                                (gx#core-expand-import-source
                                                 _L28796_)))
                                           (let ((_fold-e28854_
                                                  (letrec ((_fold-e28847_
                                                            (lambda (_in28850_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _r28852_)
                      (if (gx#module-import? _in28850_)
                          (if (hash-get
                               _keytab28841_
                               (gx#module-import-name _in28850_))
                              (cons _in28850_ _r28852_)
                              _r28852_)
                          (if (gx#import-set? _in28850_)
                              (foldl _fold-e28847_
                                     _r28852_
                                     (gx#import-set-imports _in28850_))
                              _r28852_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _fold-e28847_)))
                                             (let ()
                                               (cons 'begin:
                                                     (foldl _fold-e28854_
                                                            '()
                                                            _imports28844_)))))))
                                     (_g2871328737_ _g2871428741_)))
                               _id2873128790_
                               _hd2872128758_))))))
              (_loop2872628770_ _target2872328764_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2871328737_
                                                     _g2871428741_)))))
                                          (_g2871328737_ _g2871428741_))
                                      (_g2871328737_ _g2871428741_))))
                              (_g2871328737_ _g2871428741_))))
                      (_g2871328737_ _g2871428741_)))))
           (_g2871228859_ _stx28710_))))))
  (define |gerbil/core::<module-sugar>[:0:]#except-in|
    (gx#make-import-expander
     (lambda (_stx28864_)
       (let ((_g2886728891_
              (lambda (_g2886828887_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2886828887_))))
         (let ((_g2886629013_
                (lambda (_g2886828895_)
                  (if (gx#stx-pair? _g2886828895_)
                      (let ((_e2887128898_ (gx#syntax-e _g2886828895_)))
                        (let ((_hd2887228902_ (##car _e2887128898_))
                              (_tl2887328905_ (##cdr _e2887128898_)))
                          (if (gx#stx-pair? _tl2887328905_)
                              (let ((_e2887428908_
                                     (gx#syntax-e _tl2887328905_)))
                                (let ((_hd2887528912_ (##car _e2887428908_))
                                      (_tl2887628915_ (##cdr _e2887428908_)))
                                  (if (gx#stx-pair/null? _tl2887628915_)
                                      (if (fx>= (gx#stx-length _tl2887628915_)
                                                '0)
                                          (let ((_g30444_
                                                 (gx#syntax-split-splice
                                                  _tl2887628915_
                                                  '0)))
                                            (begin
                                              (let ((_g30445_
                                                     (values-count _g30444_)))
                                                (if (not (fx= _g30445_ 2))
                                                    (error "Context expects 2 values"
                                                           _g30445_)))
                                              (let ((_target2887728918_
                                                     (values-ref _g30444_ 0))
                                                    (_tl2887928921_
                                                     (values-ref _g30444_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2887928921_)
                                                    (letrec ((_loop2888028924_
                                                              (lambda (_hd2887828928_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _id2888428931_)
                        (if (gx#stx-pair? _hd2887828928_)
                            (let ((_e2888128934_ (gx#syntax-e _hd2887828928_)))
                              (let ((_lp-hd2888228938_ (##car _e2888128934_))
                                    (_lp-tl2888328941_ (##cdr _e2888128934_)))
                                (_loop2888028924_
                                 _lp-tl2888328941_
                                 (cons _lp-hd2888228938_ _id2888428931_))))
                            (let ((_id2888528944_ (reverse _id2888428931_)))
                              ((lambda (_L28948_ _L28950_)
                                 (if (gx#identifier-list?
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g2896728970_
                                                        _g2896828973_)
                                                 (cons _g2896728970_
                                                       _g2896828973_))
                                               '()
                                               _L28948_)))
                                     (let ((_keys28984_
                                            (gx#stx-map
                                             gx#core-identifier-key
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g2897528978_
                                                               _g2897628981_)
                                                        (cons _g2897528978_
                                                              _g2897628981_))
                                                      '()
                                                      _L28948_)))))
                                       (let ((_keytab28995_
                                              (let ((_ht28987_
                                                     (make-hash-table)))
                                                (begin
                                                  (for-each
                                                   (lambda (_g2898928991_)
                                                     (hash-put!
                                                      _ht28987_
                                                      _g2898928991_
                                                      '#t))
                                                   _keys28984_)
                                                  _ht28987_))))
                                         (let ((_imports28998_
                                                (gx#core-expand-import-source
                                                 _L28950_)))
                                           (let ((_fold-e29008_
                                                  (letrec ((_fold-e29001_
                                                            (lambda (_in29004_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _r29006_)
                      (if (gx#module-import? _in29004_)
                          (if (hash-get
                               _keytab28995_
                               (gx#module-import-name _in29004_))
                              _r29006_
                              (cons _in29004_ _r29006_))
                          (if (gx#import-set? _in29004_)
                              (foldl _fold-e29001_
                                     _r29006_
                                     (gx#import-set-imports _in29004_))
                              (cons _in29004_ _r29006_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _fold-e29001_)))
                                             (let ()
                                               (cons 'begin:
                                                     (foldl _fold-e29008_
                                                            '()
                                                            _imports28998_)))))))
                                     (_g2886728891_ _g2886828895_)))
                               _id2888528944_
                               _hd2887528912_))))))
              (_loop2888028924_ _target2887728918_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2886728891_
                                                     _g2886828895_)))))
                                          (_g2886728891_ _g2886828895_))
                                      (_g2886728891_ _g2886828895_))))
                              (_g2886728891_ _g2886828895_))))
                      (_g2886728891_ _g2886828895_)))))
           (_g2886629013_ _stx28864_))))))
  (define |gerbil/core::<module-sugar>[1]#module-import-rename|
    (lambda (_in29065_ _rename29067_)
      (gx#make-module-import
       (gx#module-import-source _in29065_)
       _rename29067_
       (gx#module-import-phi _in29065_)
       (gx#module-import-weak? _in29065_))))
  (define |gerbil/core::<module-sugar>[1]#prefix-identifier-key|
    (lambda (_name29018_ _pre29020_)
      (let ((_name2902129029_ _name29018_))
        (let ((_E2902429035_
               (lambda () (error '"No clause matching" _name2902129029_))))
          (let ((_else2902329041_
                 (lambda () (make-symbol _pre29020_ _name29018_))))
            (let ((_K2902529049_
                   (lambda (_mark29045_ _id29047_)
                     (cons (make-symbol _pre29020_ _id29047_) _mark29045_))))
              (if (##pair? _name2902129029_)
                  (let ((_hd2902629053_ (##car _name2902129029_))
                        (_tl2902729056_ (##cdr _name2902129029_)))
                    (let ((_id29059_ _hd2902629053_))
                      (let ((_mark29062_ _tl2902729056_))
                        (_K2902529049_ _mark29062_ _id29059_))))
                  (_else2902329041_))))))))
  (define |gerbil/core::<module-sugar>[:0:]#rename-in|
    (gx#make-import-expander
     (lambda (_stx29069_)
       (let ((_g2907229105_
              (lambda (_g2907329101_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2907329101_))))
         (let ((_g2907129291_
                (lambda (_g2907329109_)
                  (if (gx#stx-pair? _g2907329109_)
                      (let ((_e2907729112_ (gx#syntax-e _g2907329109_)))
                        (let ((_hd2907829116_ (##car _e2907729112_))
                              (_tl2907929119_ (##cdr _e2907729112_)))
                          (if (gx#stx-pair? _tl2907929119_)
                              (let ((_e2908029122_
                                     (gx#syntax-e _tl2907929119_)))
                                (let ((_hd2908129126_ (##car _e2908029122_))
                                      (_tl2908229129_ (##cdr _e2908029122_)))
                                  (if (gx#stx-pair/null? _tl2908229129_)
                                      (if (fx>= (gx#stx-length _tl2908229129_)
                                                '0)
                                          (let ((_g30446_
                                                 (gx#syntax-split-splice
                                                  _tl2908229129_
                                                  '0)))
                                            (begin
                                              (let ((_g30447_
                                                     (values-count _g30446_)))
                                                (if (not (fx= _g30447_ 2))
                                                    (error "Context expects 2 values"
                                                           _g30447_)))
                                              (let ((_target2908329132_
                                                     (values-ref _g30446_ 0))
                                                    (_tl2908529135_
                                                     (values-ref _g30446_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2908529135_)
                                                    (letrec ((_loop2908629138_
                                                              (lambda (_hd2908429142_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _new-id2909029145_
                               _id2909129147_)
                        (if (gx#stx-pair? _hd2908429142_)
                            (let ((_e2908729150_ (gx#syntax-e _hd2908429142_)))
                              (let ((_lp-hd2908829154_ (##car _e2908729150_))
                                    (_lp-tl2908929157_ (##cdr _e2908729150_)))
                                (if (gx#stx-pair? _lp-hd2908829154_)
                                    (let ((_e2909429160_
                                           (gx#syntax-e _lp-hd2908829154_)))
                                      (let ((_hd2909529164_
                                             (##car _e2909429160_))
                                            (_tl2909629167_
                                             (##cdr _e2909429160_)))
                                        (if (gx#stx-pair? _tl2909629167_)
                                            (let ((_e2909729170_
                                                   (gx#syntax-e
                                                    _tl2909629167_)))
                                              (let ((_hd2909829174_
                                                     (##car _e2909729170_))
                                                    (_tl2909929177_
                                                     (##cdr _e2909729170_)))
                                                (if (gx#stx-null?
                                                     _tl2909929177_)
                                                    (_loop2908629138_
                                                     _lp-tl2908929157_
                                                     (cons _hd2909829174_
                                                           _new-id2909029145_)
                                                     (cons _hd2909529164_
                                                           _id2909129147_))
                                                    (_g2907229105_
                                                     _g2907329109_))))
                                            (_g2907229105_ _g2907329109_))))
                                    (_g2907229105_ _g2907329109_))))
                            (let ((_new-id2909229180_
                                   (reverse _new-id2909029145_))
                                  (_id2909329183_ (reverse _id2909129147_)))
                              ((lambda (_L29186_ _L29188_ _L29189_)
                                 (if (if (gx#identifier-list?
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2920729210_
                                                            _g2920829213_)
                                                     (cons _g2920729210_
                                                           _g2920829213_))
                                                   '()
                                                   _L29188_)))
                                         (gx#identifier-list?
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2921529218_
                                                            _g2921629221_)
                                                     (cons _g2921529218_
                                                           _g2921629221_))
                                                   '()
                                                   _L29186_)))
                                         '#f)
                                     (let ((_keytab29224_ (make-hash-table)))
                                       (let ((_found29227_ (make-hash-table)))
                                         (let ((_g30448_
                                                (for-each
                                                 (lambda (_id29230_
                                                          _new-id29232_)
                                                   (hash-put!
                                                    _keytab29224_
                                                    (gx#core-identifier-key
                                                     _id29230_)
                                                    (gx#core-identifier-key
                                                     _new-id29232_)))
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2923329236_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2923429239_)
                    (cons _g2923329236_ _g2923429239_))
                  '()
                  _L29188_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2924129244_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2924229247_)
                    (cons _g2924129244_ _g2924229247_))
                  '()
                  _L29186_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_imports29252_
                                                  (gx#core-expand-import-source
                                                   _L29189_)))
                                             (let ((_fold-e29272_
                                                    (letrec ((_fold-e29255_
                                                              (lambda (_in29258_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _r29260_)
                        (if (gx#module-import? _in29258_)
                            (let ((_name29262_
                                   (gx#module-import-name _in29258_)))
                              (let ((_$e29265_
                                     (hash-get _keytab29224_ _name29262_)))
                                (if _$e29265_
                                    ((lambda (_rename29269_)
                                       (begin
                                         (hash-put!
                                          _found29227_
                                          _name29262_
                                          '#t)
                                         (cons (|gerbil/core::<module-sugar>[1]#module-import-rename|
                                                _in29258_
                                                _rename29269_)
                                               _r29260_)))
                                     _$e29265_)
                                    (cons _in29258_ _r29260_))))
                            (if (gx#import-set? _in29258_)
                                (foldl _fold-e29255_
                                       _r29260_
                                       (gx#import-set-imports _in29258_))
                                (cons _in29258_ _r29260_))))))
              _fold-e29255_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_new-imports29275_
                                                      (foldl _fold-e29272_
                                                             '()
                                                             _imports29252_)))
                                                 (let ()
                                                   (begin
                                                     (for-each
                                                      (lambda (_id29280_)
                                                        (if (hash-get
                                                             _found29227_
                                                             (gx#core-identifier-key
                                                              _id29280_))
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; identifier is not in the import set"
                                                             _stx29069_
                                                             _id29280_)))
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g2928229285_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2928329288_)
                         (cons _g2928229285_ _g2928329288_))
                       '()
                       _L29188_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons 'begin:
                                                           _new-imports29275_)))))))))
                                     (_g2907229105_ _g2907329109_)))
                               _new-id2909229180_
                               _id2909329183_
                               _hd2908129126_))))))
              (_loop2908629138_ _target2908329132_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2907229105_
                                                     _g2907329109_)))))
                                          (_g2907229105_ _g2907329109_))
                                      (_g2907229105_ _g2907329109_))))
                              (_g2907229105_ _g2907329109_))))
                      (_g2907229105_ _g2907329109_)))))
           (_g2907129291_ _stx29069_))))))
  (define |gerbil/core::<module-sugar>[:0:]#prefix-in|
    (gx#make-import-expander
     (lambda (_stx29297_)
       (let ((_g2930029318_
              (lambda (_g2930129314_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2930129314_))))
         (let ((_g2929929397_
                (lambda (_g2930129322_)
                  (if (gx#stx-pair? _g2930129322_)
                      (let ((_e2930429325_ (gx#syntax-e _g2930129322_)))
                        (let ((_hd2930529329_ (##car _e2930429325_))
                              (_tl2930629332_ (##cdr _e2930429325_)))
                          (if (gx#stx-pair? _tl2930629332_)
                              (let ((_e2930729335_
                                     (gx#syntax-e _tl2930629332_)))
                                (let ((_hd2930829339_ (##car _e2930729335_))
                                      (_tl2930929342_ (##cdr _e2930729335_)))
                                  (if (gx#stx-pair? _tl2930929342_)
                                      (let ((_e2931029345_
                                             (gx#syntax-e _tl2930929342_)))
                                        (let ((_hd2931129349_
                                               (##car _e2931029345_))
                                              (_tl2931229352_
                                               (##cdr _e2931029345_)))
                                          (if (gx#stx-null? _tl2931229352_)
                                              ((lambda (_L29355_ _L29357_)
                                                 (if (gx#identifier? _L29355_)
                                                     (let ((_pre29373_
                                                            (gx#stx-e
                                                             _L29355_)))
                                                       (let ((_imports29376_
                                                              (gx#core-expand-import-source
                                                               _L29357_)))
                                                         (let ((_rename-e29382_
                                                                (lambda (_name29379_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (|gerbil/core::<module-sugar>[1]#prefix-identifier-key|
                           _name29379_
                           _pre29373_))))
                   (let ((_fold-e29392_
                          (letrec ((_fold-e29385_
                                    (lambda (_in29388_ _r29390_)
                                      (if (gx#module-import? _in29388_)
                                          (cons (|gerbil/core::<module-sugar>[1]#module-import-rename|
                                                 _in29388_
                                                 (_rename-e29382_
                                                  (gx#module-import-name
                                                   _in29388_)))
                                                _r29390_)
                                          (if (gx#import-set? _in29388_)
                                              (foldl _fold-e29385_
                                                     _r29390_
                                                     (gx#import-set-imports
                                                      _in29388_))
                                              (cons _in29388_ _r29390_))))))
                            _fold-e29385_)))
                     (let ()
                       (cons 'begin:
                             (foldl _fold-e29392_ '() _imports29376_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2930029318_
                                                      _g2930129322_)))
                                               _hd2931129349_
                                               _hd2930829339_)
                                              (_g2930029318_ _g2930129322_))))
                                      (_g2930029318_ _g2930129322_))))
                              (_g2930029318_ _g2930129322_))))
                      (_g2930029318_ _g2930129322_)))))
           (_g2929929397_ _stx29297_))))))
  (define |gerbil/core::<module-sugar>[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_stx29401_)
       (let ((_g2940429428_
              (lambda (_g2940529424_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2940529424_))))
         (let ((_g2940329550_
                (lambda (_g2940529432_)
                  (if (gx#stx-pair? _g2940529432_)
                      (let ((_e2940829435_ (gx#syntax-e _g2940529432_)))
                        (let ((_hd2940929439_ (##car _e2940829435_))
                              (_tl2941029442_ (##cdr _e2940829435_)))
                          (if (gx#stx-pair? _tl2941029442_)
                              (let ((_e2941129445_
                                     (gx#syntax-e _tl2941029442_)))
                                (let ((_hd2941229449_ (##car _e2941129445_))
                                      (_tl2941329452_ (##cdr _e2941129445_)))
                                  (if (gx#stx-pair/null? _tl2941329452_)
                                      (if (fx>= (gx#stx-length _tl2941329452_)
                                                '0)
                                          (let ((_g30449_
                                                 (gx#syntax-split-splice
                                                  _tl2941329452_
                                                  '0)))
                                            (begin
                                              (let ((_g30450_
                                                     (values-count _g30449_)))
                                                (if (not (fx= _g30450_ 2))
                                                    (error "Context expects 2 values"
                                                           _g30450_)))
                                              (let ((_target2941429455_
                                                     (values-ref _g30449_ 0))
                                                    (_tl2941629458_
                                                     (values-ref _g30449_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2941629458_)
                                                    (letrec ((_loop2941729461_
                                                              (lambda (_hd2941529465_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _id2942129468_)
                        (if (gx#stx-pair? _hd2941529465_)
                            (let ((_e2941829471_ (gx#syntax-e _hd2941529465_)))
                              (let ((_lp-hd2941929475_ (##car _e2941829471_))
                                    (_lp-tl2942029478_ (##cdr _e2941829471_)))
                                (_loop2941729461_
                                 _lp-tl2942029478_
                                 (cons _lp-hd2941929475_ _id2942129468_))))
                            (let ((_id2942229481_ (reverse _id2942129468_)))
                              ((lambda (_L29485_ _L29487_)
                                 (if (gx#identifier-list?
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g2950429507_
                                                        _g2950529510_)
                                                 (cons _g2950429507_
                                                       _g2950529510_))
                                               '()
                                               _L29485_)))
                                     (let ((_keys29521_
                                            (gx#stx-map
                                             gx#core-identifier-key
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g2951229515_
                                                               _g2951329518_)
                                                        (cons _g2951229515_
                                                              _g2951329518_))
                                                      '()
                                                      _L29485_)))))
                                       (let ((_keytab29532_
                                              (let ((_ht29524_
                                                     (make-hash-table)))
                                                (begin
                                                  (for-each
                                                   (lambda (_g2952629528_)
                                                     (hash-put!
                                                      _ht29524_
                                                      _g2952629528_
                                                      '#t))
                                                   _keys29521_)
                                                  _ht29524_))))
                                         (let ((_exports29535_
                                                (gx#core-expand-export-source
                                                 _L29487_)))
                                           (let ((_fold-e29545_
                                                  (letrec ((_fold-e29538_
                                                            (lambda (_out29541_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _r29543_)
                      (if (gx#module-export? _out29541_)
                          (if (hash-get
                               _keytab29532_
                               (gx#module-export-name _out29541_))
                              _r29543_
                              (cons _out29541_ _r29543_))
                          (if (gx#export-set? _out29541_)
                              (foldl _fold-e29538_
                                     _r29543_
                                     (gx#export-set-exports _out29541_))
                              _r29543_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _fold-e29538_)))
                                             (let ()
                                               (cons 'begin:
                                                     (foldl _fold-e29545_
                                                            '()
                                                            _exports29535_)))))))
                                     (_g2940429428_ _g2940529432_)))
                               _id2942229481_
                               _hd2941229449_))))))
              (_loop2941729461_ _target2941429455_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2940429428_
                                                     _g2940529432_)))))
                                          (_g2940429428_ _g2940529432_))
                                      (_g2940429428_ _g2940529432_))))
                              (_g2940429428_ _g2940529432_))))
                      (_g2940429428_ _g2940529432_)))))
           (_g2940329550_ _stx29401_))))))
  (define |gerbil/core::<module-sugar>[1]#module-export-rename|
    (lambda (_out29555_ _rename29557_)
      (gx#make-module-export
       (gx#module-export-context _out29555_)
       (gx#module-export-key _out29555_)
       (gx#module-export-phi _out29555_)
       _rename29557_
       (gx#module-export-weak? _out29555_))))
  (define |gerbil/core::<module-sugar>[:0:]#rename-out|
    (gx#make-export-expander
     (lambda (_stx29559_)
       (let ((_g2956229595_
              (lambda (_g2956329591_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2956329591_))))
         (let ((_g2956129781_
                (lambda (_g2956329599_)
                  (if (gx#stx-pair? _g2956329599_)
                      (let ((_e2956729602_ (gx#syntax-e _g2956329599_)))
                        (let ((_hd2956829606_ (##car _e2956729602_))
                              (_tl2956929609_ (##cdr _e2956729602_)))
                          (if (gx#stx-pair? _tl2956929609_)
                              (let ((_e2957029612_
                                     (gx#syntax-e _tl2956929609_)))
                                (let ((_hd2957129616_ (##car _e2957029612_))
                                      (_tl2957229619_ (##cdr _e2957029612_)))
                                  (if (gx#stx-pair/null? _tl2957229619_)
                                      (if (fx>= (gx#stx-length _tl2957229619_)
                                                '0)
                                          (let ((_g30451_
                                                 (gx#syntax-split-splice
                                                  _tl2957229619_
                                                  '0)))
                                            (begin
                                              (let ((_g30452_
                                                     (values-count _g30451_)))
                                                (if (not (fx= _g30452_ 2))
                                                    (error "Context expects 2 values"
                                                           _g30452_)))
                                              (let ((_target2957329622_
                                                     (values-ref _g30451_ 0))
                                                    (_tl2957529625_
                                                     (values-ref _g30451_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2957529625_)
                                                    (letrec ((_loop2957629628_
                                                              (lambda (_hd2957429632_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _new-id2958029635_
                               _id2958129637_)
                        (if (gx#stx-pair? _hd2957429632_)
                            (let ((_e2957729640_ (gx#syntax-e _hd2957429632_)))
                              (let ((_lp-hd2957829644_ (##car _e2957729640_))
                                    (_lp-tl2957929647_ (##cdr _e2957729640_)))
                                (if (gx#stx-pair? _lp-hd2957829644_)
                                    (let ((_e2958429650_
                                           (gx#syntax-e _lp-hd2957829644_)))
                                      (let ((_hd2958529654_
                                             (##car _e2958429650_))
                                            (_tl2958629657_
                                             (##cdr _e2958429650_)))
                                        (if (gx#stx-pair? _tl2958629657_)
                                            (let ((_e2958729660_
                                                   (gx#syntax-e
                                                    _tl2958629657_)))
                                              (let ((_hd2958829664_
                                                     (##car _e2958729660_))
                                                    (_tl2958929667_
                                                     (##cdr _e2958729660_)))
                                                (if (gx#stx-null?
                                                     _tl2958929667_)
                                                    (_loop2957629628_
                                                     _lp-tl2957929647_
                                                     (cons _hd2958829664_
                                                           _new-id2958029635_)
                                                     (cons _hd2958529654_
                                                           _id2958129637_))
                                                    (_g2956229595_
                                                     _g2956329599_))))
                                            (_g2956229595_ _g2956329599_))))
                                    (_g2956229595_ _g2956329599_))))
                            (let ((_new-id2958229670_
                                   (reverse _new-id2958029635_))
                                  (_id2958329673_ (reverse _id2958129637_)))
                              ((lambda (_L29676_ _L29678_ _L29679_)
                                 (if (if (gx#identifier-list?
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2969729700_
                                                            _g2969829703_)
                                                     (cons _g2969729700_
                                                           _g2969829703_))
                                                   '()
                                                   _L29678_)))
                                         (gx#identifier-list?
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2970529708_
                                                            _g2970629711_)
                                                     (cons _g2970529708_
                                                           _g2970629711_))
                                                   '()
                                                   _L29676_)))
                                         '#f)
                                     (let ((_keytab29714_ (make-hash-table)))
                                       (let ((_found29717_ (make-hash-table)))
                                         (let ((_g30453_
                                                (for-each
                                                 (lambda (_id29720_
                                                          _new-id29722_)
                                                   (hash-put!
                                                    _keytab29714_
                                                    (gx#core-identifier-key
                                                     _id29720_)
                                                    (gx#core-identifier-key
                                                     _new-id29722_)))
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2972329726_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2972429729_)
                    (cons _g2972329726_ _g2972429729_))
                  '()
                  _L29678_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2973129734_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2973229737_)
                    (cons _g2973129734_ _g2973229737_))
                  '()
                  _L29676_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_exports29742_
                                                  (gx#core-expand-export-source
                                                   _L29679_)))
                                             (let ((_fold-e29762_
                                                    (letrec ((_fold-e29745_
                                                              (lambda (_out29748_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _r29750_)
                        (if (gx#module-export? _out29748_)
                            (let ((_name29752_
                                   (gx#module-export-name _out29748_)))
                              (let ((_$e29755_
                                     (hash-get _keytab29714_ _name29752_)))
                                (if _$e29755_
                                    ((lambda (_rename29759_)
                                       (begin
                                         (hash-put!
                                          _found29717_
                                          _name29752_
                                          '#t)
                                         (cons (|gerbil/core::<module-sugar>[1]#module-export-rename|
                                                _out29748_
                                                _rename29759_)
                                               _r29750_)))
                                     _$e29755_)
                                    (cons _out29748_ _r29750_))))
                            (if (gx#export-set? _out29748_)
                                (foldl _fold-e29745_
                                       _r29750_
                                       (gx#export-set-exports _out29748_))
                                (cons _out29748_ _r29750_))))))
              _fold-e29745_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_new-exports29765_
                                                      (foldl _fold-e29762_
                                                             '()
                                                             _exports29742_)))
                                                 (let ()
                                                   (begin
                                                     (for-each
                                                      (lambda (_id29770_)
                                                        (if (hash-get
                                                             _found29717_
                                                             (gx#core-identifier-key
                                                              _id29770_))
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; identifier is not in the export set"
                                                             _stx29559_
                                                             _id29770_)))
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g2977229775_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2977329778_)
                         (cons _g2977229775_ _g2977329778_))
                       '()
                       _L29678_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons 'begin:
                                                           _new-exports29765_)))))))))
                                     (_g2956229595_ _g2956329599_)))
                               _new-id2958229670_
                               _id2958329673_
                               _hd2957129616_))))))
              (_loop2957629628_ _target2957329622_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2956229595_
                                                     _g2956329599_)))))
                                          (_g2956229595_ _g2956329599_))
                                      (_g2956229595_ _g2956329599_))))
                              (_g2956229595_ _g2956329599_))))
                      (_g2956229595_ _g2956329599_)))))
           (_g2956129781_ _stx29559_))))))
  (define |gerbil/core::<module-sugar>[:0:]#prefix-out|
    (gx#make-export-expander
     (lambda (_stx29787_)
       (let ((_g2979029808_
              (lambda (_g2979129804_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2979129804_))))
         (let ((_g2978929887_
                (lambda (_g2979129812_)
                  (if (gx#stx-pair? _g2979129812_)
                      (let ((_e2979429815_ (gx#syntax-e _g2979129812_)))
                        (let ((_hd2979529819_ (##car _e2979429815_))
                              (_tl2979629822_ (##cdr _e2979429815_)))
                          (if (gx#stx-pair? _tl2979629822_)
                              (let ((_e2979729825_
                                     (gx#syntax-e _tl2979629822_)))
                                (let ((_hd2979829829_ (##car _e2979729825_))
                                      (_tl2979929832_ (##cdr _e2979729825_)))
                                  (if (gx#stx-pair? _tl2979929832_)
                                      (let ((_e2980029835_
                                             (gx#syntax-e _tl2979929832_)))
                                        (let ((_hd2980129839_
                                               (##car _e2980029835_))
                                              (_tl2980229842_
                                               (##cdr _e2980029835_)))
                                          (if (gx#stx-null? _tl2980229842_)
                                              ((lambda (_L29845_ _L29847_)
                                                 (if (gx#identifier? _L29845_)
                                                     (let ((_pre29863_
                                                            (gx#stx-e
                                                             _L29845_)))
                                                       (let ((_exports29866_
                                                              (gx#core-expand-export-source
                                                               _L29847_)))
                                                         (let ((_rename-e29872_
                                                                (lambda (_name29869_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (|gerbil/core::<module-sugar>[1]#prefix-identifier-key|
                           _name29869_
                           _pre29863_))))
                   (let ((_fold-e29882_
                          (letrec ((_fold-e29875_
                                    (lambda (_out29878_ _r29880_)
                                      (if (gx#module-export? _out29878_)
                                          (cons (|gerbil/core::<module-sugar>[1]#module-export-rename|
                                                 _out29878_
                                                 (_rename-e29872_
                                                  (gx#module-export-name
                                                   _out29878_)))
                                                _r29880_)
                                          (if (gx#export-set? _out29878_)
                                              (foldl _fold-e29875_
                                                     _r29880_
                                                     (gx#export-set-exports
                                                      _out29878_))
                                              (cons _out29878_ _r29880_))))))
                            _fold-e29875_)))
                     (let ()
                       (cons 'begin:
                             (foldl _fold-e29882_ '() _exports29866_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2979029808_
                                                      _g2979129812_)))
                                               _hd2980129839_
                                               _hd2979829829_)
                                              (_g2979029808_ _g2979129812_))))
                                      (_g2979029808_ _g2979129812_))))
                              (_g2979029808_ _g2979129812_))))
                      (_g2979029808_ _g2979129812_)))))
           (_g2978929887_ _stx29787_))))))
  (define |gerbil/core::<module-sugar>[:0:]#struct-out|
    (gx#make-export-expander
     (lambda (_stx29891_)
       (let ((_g2989429914_
              (lambda (_g2989529910_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2989529910_))))
         (let ((_g2989330149_
                (lambda (_g2989529918_)
                  (if (gx#stx-pair? _g2989529918_)
                      (let ((_e2989729921_ (gx#syntax-e _g2989529918_)))
                        (let ((_hd2989829925_ (##car _e2989729921_))
                              (_tl2989929928_ (##cdr _e2989729921_)))
                          (if (gx#stx-pair/null? _tl2989929928_)
                              (if (fx>= (gx#stx-length _tl2989929928_) '0)
                                  (let ((_g30454_
                                         (gx#syntax-split-splice
                                          _tl2989929928_
                                          '0)))
                                    (begin
                                      (let ((_g30455_ (values-count _g30454_)))
                                        (if (not (fx= _g30455_ 2))
                                            (error "Context expects 2 values"
                                                   _g30455_)))
                                      (let ((_target2990029931_
                                             (values-ref _g30454_ 0))
                                            (_tl2990229934_
                                             (values-ref _g30454_ 1)))
                                        (if (gx#stx-null? _tl2990229934_)
                                            (letrec ((_loop2990329937_
                                                      (lambda (_hd2990129941_
                                                               _id2990729944_)
                                                        (if (gx#stx-pair?
                                                             _hd2990129941_)
                                                            (let ((_e2990429947_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd2990129941_)))
                      (let ((_lp-hd2990529951_ (##car _e2990429947_))
                            (_lp-tl2990629954_ (##cdr _e2990429947_)))
                        (_loop2990329937_
                         _lp-tl2990629954_
                         (cons _lp-hd2990529951_ _id2990729944_))))
                    (let ((_id2990829957_ (reverse _id2990729944_)))
                      ((lambda (_L29961_)
                         ((letrec ((_lp29977_
                                    (lambda (_rest29980_ _ids29982_)
                                      (let ((_g2998529997_
                                             (lambda (_g2998629993_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2998629993_))))
                                        (let ((_g2998430008_
                                               (lambda (_g2998630001_)
                                                 ((lambda ()
                                                    (cons 'begin:
                                                          _ids29982_))))))
                                          (let ((_g2998330137_
                                                 (lambda (_g2998630012_)
                                                   (if (gx#stx-pair?
                                                        _g2998630012_)
                                                       (let ((_e2998930015_
                                                              (gx#syntax-e
                                                               _g2998630012_)))
                                                         (let ((_hd2999030019_
                                                                (##car _e2998930015_))
                                                               (_tl2999130022_
                                                                (##cdr _e2998930015_)))
                                                           ((lambda (_L30025_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L30027_)
                      (let ((_info30042_
                             (gx#syntax-local-value _L30027_ false)))
                        (if (|gerbil/core::<MOP>::<MOP:2>[1]#expander-type-info?|
                             _info30042_)
                            (let ((_g3004430061_
                                   (slot-ref
                                    _info30042_
                                    'expander-identifiers)))
                              (let ((_E3004630067_
                                     (lambda ()
                                       (error '"No clause matching"
                                              _g3004430061_))))
                                (let ((_K3004730079_
                                       (lambda (_setf30071_
                                                _getf30073_
                                                _type?30074_
                                                _make-type30075_
                                                _type::t30076_
                                                _super30077_)
                                         (_lp29977_
                                          _L30025_
                                          (cons _L30027_
                                                (cons _type::t30076_
                                                      (cons _make-type30075_
                                                            (cons _type?30074_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (foldr cons
                                 (foldr cons _ids29982_ _setf30071_)
                                 _getf30073_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (##pair? _g3004430061_)
                                      (let ((_hd3004830083_
                                             (##car _g3004430061_))
                                            (_tl3004930086_
                                             (##cdr _g3004430061_)))
                                        (let ((_super30089_ _hd3004830083_))
                                          (if (##pair? _tl3004930086_)
                                              (let ((_hd3005030092_
                                                     (##car _tl3004930086_))
                                                    (_tl3005130095_
                                                     (##cdr _tl3004930086_)))
                                                (let ((_type::t30098_
                                                       _hd3005030092_))
                                                  (if (##pair? _tl3005130095_)
                                                      (let ((_hd3005230101_
                                                             (##car _tl3005130095_))
                                                            (_tl3005330104_
                                                             (##cdr _tl3005130095_)))
                                                        (let ((_make-type30107_
                                                               _hd3005230101_))
                                                          (if (##pair? _tl3005330104_)
                                                              (let ((_hd3005430110_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##car _tl3005330104_))
                            (_tl3005530113_ (##cdr _tl3005330104_)))
                        (let ((_type?30116_ _hd3005430110_))
                          (if (##pair? _tl3005530113_)
                              (let ((_hd3005630119_ (##car _tl3005530113_))
                                    (_tl3005730122_ (##cdr _tl3005530113_)))
                                (let ((_getf30125_ _hd3005630119_))
                                  (if (##pair? _tl3005730122_)
                                      (let ((_hd3005830128_
                                             (##car _tl3005730122_))
                                            (_tl3005930131_
                                             (##cdr _tl3005730122_)))
                                        (let ((_setf30134_ _hd3005830128_))
                                          (if (##null? _tl3005930131_)
                                              (_K3004730079_
                                               _setf30134_
                                               _getf30125_
                                               _type?30116_
                                               _make-type30107_
                                               _type::t30098_
                                               _super30089_)
                                              (_E3004630067_))))
                                      (_E3004630067_))))
                              (_E3004630067_))))
                      (_E3004630067_))))
              (_E3004630067_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E3004630067_))))
                                      (_E3004630067_)))))
                            (gx#raise-syntax-error
                             '#f
                             '"Incomplete type info"
                             _stx29891_
                             _L30027_))))
                    _tl2999130022_
                    _hd2999030019_)))
               (_g2998430008_ _g2998630012_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2998330137_ _rest29980_)))))))
                            _lp29977_)
                          (begin
                            '#!void
                            (foldr (lambda (_g3014030143_ _g3014130146_)
                                     (cons _g3014030143_ _g3014130146_))
                                   '()
                                   _L29961_))
                          '()))
                       _id2990829957_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop2990329937_
                                               _target2990029931_
                                               '()))
                                            (_g2989429914_ _g2989529918_)))))
                                  (_g2989429914_ _g2989529918_))
                              (_g2989429914_ _g2989529918_))))
                      (_g2989429914_ _g2989529918_)))))
           (_g2989330149_ _stx29891_)))))))
