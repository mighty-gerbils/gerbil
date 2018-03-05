(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<sugar>$<sugar:1>[1]#_g34640_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:1>[1]#_g34641_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:1>[1]#_g34650_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:1>[1]#_g34651_|
    (gx#make-syntax-quote 'else #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:1>[1]#_g34652_|
    (gx#make-syntax-quote 'else #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#defrules|
      (lambda (_$stx1653_)
        (let* ((_g16571685_
                (lambda (_g16581681_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g16581681_)))
               (_g16561786_
                (lambda (_g16581689_)
                  (if (gx#stx-pair? _g16581689_)
                      (let ((_e16621692_ (gx#syntax-e _g16581689_)))
                        (let ((_hd16631696_ (##car _e16621692_))
                              (_tl16641699_ (##cdr _e16621692_)))
                          (if (gx#stx-pair? _tl16641699_)
                              (let ((_e16651702_ (gx#syntax-e _tl16641699_)))
                                (let ((_hd16661706_ (##car _e16651702_))
                                      (_tl16671709_ (##cdr _e16651702_)))
                                  (if (gx#stx-pair? _tl16671709_)
                                      (let ((_e16681712_
                                             (gx#syntax-e _tl16671709_)))
                                        (let ((_hd16691716_
                                               (##car _e16681712_))
                                              (_tl16701719_
                                               (##cdr _e16681712_)))
                                          (if (gx#stx-pair/null? _tl16701719_)
                                              (if (fx>= (gx#stx-length
                                                         _tl16701719_)
                                                        '0)
                                                  (let ((_g34618_
                                                         (gx#syntax-split-splice
                                                          _tl16701719_
                                                          '0)))
                                                    (begin
                                                      (let ((_g34619_
                                                             (values-count
                                                              _g34618_)))
                                                        (if (not (fx= _g34619_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g34619_)))
              (let ((_target16711722_ (values-ref _g34618_ 0))
                    (_tl16731725_ (values-ref _g34618_ 1)))
                (if (gx#stx-null? _tl16731725_)
                    (letrec ((_loop16741728_
                              (lambda (_hd16721732_ _clauses16781735_)
                                (if (gx#stx-pair? _hd16721732_)
                                    (let ((_e16751738_
                                           (gx#syntax-e _hd16721732_)))
                                      (let ((_lp-hd16761742_
                                             (##car _e16751738_))
                                            (_lp-tl16771745_
                                             (##cdr _e16751738_)))
                                        (_loop16741728_
                                         _lp-tl16771745_
                                         (cons _lp-hd16761742_
                                               _clauses16781735_))))
                                    (let ((_clauses16791748_
                                           (reverse _clauses16781735_)))
                                      ((lambda (_L1752_ _L1754_ _L1755_)
                                         (if (gx#identifier? _L1755_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'define-syntax)
                                                   (cons _L1755_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'syntax-rules)
                             (cons _L1754_
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g17771780_ _g17781783_)
                                              (cons _g17771780_ _g17781783_))
                                            '()
                                            _L1752_))))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g16571685_ _g16581689_)))
                                       _clauses16791748_
                                       _hd16691716_
                                       _hd16661706_))))))
                      (_loop16741728_ _target16711722_ '()))
                    (_g16571685_ _g16581689_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g16571685_ _g16581689_))
                                              (_g16571685_ _g16581689_))))
                                      (_g16571685_ _g16581689_))))
                              (_g16571685_ _g16581689_))))
                      (_g16571685_ _g16581689_)))))
          (_g16561786_ _$stx1653_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#defsyntax%|
      (lambda (_$stx1791_)
        (let* ((_g17961835_
                (lambda (_g17971831_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g17971831_)))
               (_g17951890_
                (lambda (_g17971839_)
                  (if (gx#stx-pair? _g17971839_)
                      (let ((_e18211842_ (gx#syntax-e _g17971839_)))
                        (let ((_hd18221846_ (##car _e18211842_))
                              (_tl18231849_ (##cdr _e18211842_)))
                          (if (gx#stx-pair? _tl18231849_)
                              (let ((_e18241852_ (gx#syntax-e _tl18231849_)))
                                (let ((_hd18251856_ (##car _e18241852_))
                                      (_tl18261859_ (##cdr _e18241852_)))
                                  (if (gx#stx-pair? _tl18261859_)
                                      (let ((_e18271862_
                                             (gx#syntax-e _tl18261859_)))
                                        (let ((_hd18281866_
                                               (##car _e18271862_))
                                              (_tl18291869_
                                               (##cdr _e18271862_)))
                                          (if (gx#stx-null? _tl18291869_)
                                              ((lambda (_L1872_ _L1874_)
                                                 (if (gx#identifier? _L1874_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'define-syntax)
                                                           (cons _L1874_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L1872_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g17961835_
                                                      _g17971839_)))
                                               _hd18281866_
                                               _hd18251856_)
                                              (_g17961835_ _g17971839_))))
                                      (_g17961835_ _g17971839_))))
                              (_g17961835_ _g17971839_))))
                      (_g17961835_ _g17971839_))))
               (_g17941988_
                (lambda (_g17971894_)
                  (if (gx#stx-pair? _g17971894_)
                      (let ((_e18011897_ (gx#syntax-e _g17971894_)))
                        (let ((_hd18021901_ (##car _e18011897_))
                              (_tl18031904_ (##cdr _e18011897_)))
                          (if (gx#stx-pair? _tl18031904_)
                              (let ((_e18041907_ (gx#syntax-e _tl18031904_)))
                                (let ((_hd18051911_ (##car _e18041907_))
                                      (_tl18061914_ (##cdr _e18041907_)))
                                  (if (gx#stx-pair? _hd18051911_)
                                      (let ((_e18071917_
                                             (gx#syntax-e _hd18051911_)))
                                        (let ((_hd18081921_
                                               (##car _e18071917_))
                                              (_tl18091924_
                                               (##cdr _e18071917_)))
                                          (if (gx#stx-pair/null? _tl18061914_)
                                              (if (fx>= (gx#stx-length
                                                         _tl18061914_)
                                                        '0)
                                                  (let ((_g34620_
                                                         (gx#syntax-split-splice
                                                          _tl18061914_
                                                          '0)))
                                                    (begin
                                                      (let ((_g34621_
                                                             (values-count
                                                              _g34620_)))
                                                        (if (not (fx= _g34621_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g34621_)))
              (let ((_target18101927_ (values-ref _g34620_ 0))
                    (_tl18121930_ (values-ref _g34620_ 1)))
                (if (gx#stx-null? _tl18121930_)
                    (letrec ((_loop18131933_
                              (lambda (_hd18111937_ _body18171940_)
                                (if (gx#stx-pair? _hd18111937_)
                                    (let ((_e18141943_
                                           (gx#syntax-e _hd18111937_)))
                                      (let ((_lp-hd18151947_
                                             (##car _e18141943_))
                                            (_lp-tl18161950_
                                             (##cdr _e18141943_)))
                                        (_loop18131933_
                                         _lp-tl18161950_
                                         (cons _lp-hd18151947_
                                               _body18171940_))))
                                    (let ((_body18181953_
                                           (reverse _body18171940_)))
                                      ((lambda (_L1957_ _L1959_ _L1960_)
                                         (if (gx#identifier? _L1960_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'define-syntax)
                                                   (cons _L1960_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'lambda%)
                             (cons _L1959_
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g19791982_ _g19801985_)
                                              (cons _g19791982_ _g19801985_))
                                            '()
                                            _L1957_))))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g17951890_ _g17971894_)))
                                       _body18181953_
                                       _tl18091924_
                                       _hd18081921_))))))
                      (_loop18131933_ _target18101927_ '()))
                    (_g17951890_ _g17971894_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g17951890_ _g17971894_))
                                              (_g17951890_ _g17971894_))))
                                      (_g17951890_ _g17971894_))))
                              (_g17951890_ _g17971894_))))
                      (_g17951890_ _g17971894_)))))
          (_g17941988_ _$stx1791_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#defalias|
      (lambda (_$stx1993_)
        (let* ((_g19972015_
                (lambda (_g19982011_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g19982011_)))
               (_g19962070_
                (lambda (_g19982019_)
                  (if (gx#stx-pair? _g19982019_)
                      (let ((_e20012022_ (gx#syntax-e _g19982019_)))
                        (let ((_hd20022026_ (##car _e20012022_))
                              (_tl20032029_ (##cdr _e20012022_)))
                          (if (gx#stx-pair? _tl20032029_)
                              (let ((_e20042032_ (gx#syntax-e _tl20032029_)))
                                (let ((_hd20052036_ (##car _e20042032_))
                                      (_tl20062039_ (##cdr _e20042032_)))
                                  (if (gx#stx-pair? _tl20062039_)
                                      (let ((_e20072042_
                                             (gx#syntax-e _tl20062039_)))
                                        (let ((_hd20082046_
                                               (##car _e20072042_))
                                              (_tl20092049_
                                               (##cdr _e20072042_)))
                                          (if (gx#stx-null? _tl20092049_)
                                              ((lambda (_L2052_ _L2054_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'define-alias)
                                                       (cons _L2054_
                                                             (cons _L2052_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd20082046_
                                               _hd20052036_)
                                              (_g19972015_ _g19982019_))))
                                      (_g19972015_ _g19982019_))))
                              (_g19972015_ _g19982019_))))
                      (_g19972015_ _g19982019_)))))
          (_g19962070_ _$stx1993_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#define|
      (lambda (_$stx2074_)
        (let* ((_g20792118_
                (lambda (_g20802114_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g20802114_)))
               (_g20782173_
                (lambda (_g20802122_)
                  (if (gx#stx-pair? _g20802122_)
                      (let ((_e21042125_ (gx#syntax-e _g20802122_)))
                        (let ((_hd21052129_ (##car _e21042125_))
                              (_tl21062132_ (##cdr _e21042125_)))
                          (if (gx#stx-pair? _tl21062132_)
                              (let ((_e21072135_ (gx#syntax-e _tl21062132_)))
                                (let ((_hd21082139_ (##car _e21072135_))
                                      (_tl21092142_ (##cdr _e21072135_)))
                                  (if (gx#stx-pair? _tl21092142_)
                                      (let ((_e21102145_
                                             (gx#syntax-e _tl21092142_)))
                                        (let ((_hd21112149_
                                               (##car _e21102145_))
                                              (_tl21122152_
                                               (##cdr _e21102145_)))
                                          (if (gx#stx-null? _tl21122152_)
                                              ((lambda (_L2155_ _L2157_)
                                                 (if (gx#identifier? _L2157_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'define-values)
                                                           (cons (cons _L2157_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '())
                         (cons _L2155_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g20792118_
                                                      _g20802122_)))
                                               _hd21112149_
                                               _hd21082139_)
                                              (_g20792118_ _g20802122_))))
                                      (_g20792118_ _g20802122_))))
                              (_g20792118_ _g20802122_))))
                      (_g20792118_ _g20802122_))))
               (_g20772271_
                (lambda (_g20802177_)
                  (if (gx#stx-pair? _g20802177_)
                      (let ((_e20842180_ (gx#syntax-e _g20802177_)))
                        (let ((_hd20852184_ (##car _e20842180_))
                              (_tl20862187_ (##cdr _e20842180_)))
                          (if (gx#stx-pair? _tl20862187_)
                              (let ((_e20872190_ (gx#syntax-e _tl20862187_)))
                                (let ((_hd20882194_ (##car _e20872190_))
                                      (_tl20892197_ (##cdr _e20872190_)))
                                  (if (gx#stx-pair? _hd20882194_)
                                      (let ((_e20902200_
                                             (gx#syntax-e _hd20882194_)))
                                        (let ((_hd20912204_
                                               (##car _e20902200_))
                                              (_tl20922207_
                                               (##cdr _e20902200_)))
                                          (if (gx#stx-pair/null? _tl20892197_)
                                              (if (fx>= (gx#stx-length
                                                         _tl20892197_)
                                                        '0)
                                                  (let ((_g34622_
                                                         (gx#syntax-split-splice
                                                          _tl20892197_
                                                          '0)))
                                                    (begin
                                                      (let ((_g34623_
                                                             (values-count
                                                              _g34622_)))
                                                        (if (not (fx= _g34623_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g34623_)))
              (let ((_target20932210_ (values-ref _g34622_ 0))
                    (_tl20952213_ (values-ref _g34622_ 1)))
                (if (gx#stx-null? _tl20952213_)
                    (letrec ((_loop20962216_
                              (lambda (_hd20942220_ _body21002223_)
                                (if (gx#stx-pair? _hd20942220_)
                                    (let ((_e20972226_
                                           (gx#syntax-e _hd20942220_)))
                                      (let ((_lp-hd20982230_
                                             (##car _e20972226_))
                                            (_lp-tl20992233_
                                             (##cdr _e20972226_)))
                                        (_loop20962216_
                                         _lp-tl20992233_
                                         (cons _lp-hd20982230_
                                               _body21002223_))))
                                    (let ((_body21012236_
                                           (reverse _body21002223_)))
                                      ((lambda (_L2240_ _L2242_ _L2243_)
                                         (if (gx#identifier? _L2243_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'define-values)
                                                   (cons (cons _L2243_ '())
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'lambda%)
                             (cons _L2242_
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g22622265_ _g22632268_)
                                              (cons _g22622265_ _g22632268_))
                                            '()
                                            _L2240_))))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g20782173_ _g20802177_)))
                                       _body21012236_
                                       _tl20922207_
                                       _hd20912204_))))))
                      (_loop20962216_ _target20932210_ '()))
                    (_g20782173_ _g20802177_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g20782173_ _g20802177_))
                                              (_g20782173_ _g20802177_))))
                                      (_g20782173_ _g20802177_))))
                              (_g20782173_ _g20802177_))))
                      (_g20782173_ _g20802177_)))))
          (_g20772271_ _$stx2074_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#let*-values|
      (lambda (_$stx2276_)
        (let* ((_g22812326_
                (lambda (_g22822322_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g22822322_)))
               (_g22802427_
                (lambda (_g22822330_)
                  (if (gx#stx-pair? _g22822330_)
                      (let ((_e23032333_ (gx#syntax-e _g22822330_)))
                        (let ((_hd23042337_ (##car _e23032333_))
                              (_tl23052340_ (##cdr _e23032333_)))
                          (if (gx#stx-pair? _tl23052340_)
                              (let ((_e23062343_ (gx#syntax-e _tl23052340_)))
                                (let ((_hd23072347_ (##car _e23062343_))
                                      (_tl23082350_ (##cdr _e23062343_)))
                                  (if (gx#stx-pair? _hd23072347_)
                                      (let ((_e23092353_
                                             (gx#syntax-e _hd23072347_)))
                                        (let ((_hd23102357_
                                               (##car _e23092353_))
                                              (_tl23112360_
                                               (##cdr _e23092353_)))
                                          (if (gx#stx-pair/null? _tl23082350_)
                                              (if (fx>= (gx#stx-length
                                                         _tl23082350_)
                                                        '0)
                                                  (let ((_g34624_
                                                         (gx#syntax-split-splice
                                                          _tl23082350_
                                                          '0)))
                                                    (begin
                                                      (let ((_g34625_
                                                             (values-count
                                                              _g34624_)))
                                                        (if (not (fx= _g34625_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g34625_)))
              (let ((_target23122363_ (values-ref _g34624_ 0))
                    (_tl23142366_ (values-ref _g34624_ 1)))
                (if (gx#stx-null? _tl23142366_)
                    (letrec ((_loop23152369_
                              (lambda (_hd23132373_ _body23192376_)
                                (if (gx#stx-pair? _hd23132373_)
                                    (let ((_e23162379_
                                           (gx#syntax-e _hd23132373_)))
                                      (let ((_lp-hd23172383_
                                             (##car _e23162379_))
                                            (_lp-tl23182386_
                                             (##cdr _e23162379_)))
                                        (_loop23152369_
                                         _lp-tl23182386_
                                         (cons _lp-hd23172383_
                                               _body23192376_))))
                                    (let ((_body23202389_
                                           (reverse _body23192376_)))
                                      ((lambda (_L2393_
                                                _L2395_
                                                _L2396_
                                                _L2397_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'let-values)
                                               (cons (cons _L2396_ '())
                                                     (cons (cons _L2397_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L2395_
                               (begin
                                 '#!void
                                 (foldr (lambda (_g24182421_ _g24192424_)
                                          (cons _g24182421_ _g24192424_))
                                        '()
                                        _L2393_))))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _body23202389_
                                       _tl23112360_
                                       _hd23102357_
                                       _hd23042337_))))))
                      (_loop23152369_ _target23122363_ '()))
                    (_g22812326_ _g22822330_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g22812326_ _g22822330_))
                                              (_g22812326_ _g22822330_))))
                                      (_g22812326_ _g22822330_))))
                              (_g22812326_ _g22822330_))))
                      (_g22812326_ _g22822330_))))
               (_g22792509_
                (lambda (_g22822431_)
                  (if (gx#stx-pair? _g22822431_)
                      (let ((_e22842434_ (gx#syntax-e _g22822431_)))
                        (let ((_hd22852438_ (##car _e22842434_))
                              (_tl22862441_ (##cdr _e22842434_)))
                          (if (gx#stx-pair? _tl22862441_)
                              (let ((_e22872444_ (gx#syntax-e _tl22862441_)))
                                (let ((_hd22882448_ (##car _e22872444_))
                                      (_tl22892451_ (##cdr _e22872444_)))
                                  (if (gx#stx-null? _hd22882448_)
                                      (if (gx#stx-pair/null? _tl22892451_)
                                          (if (fx>= (gx#stx-length
                                                     _tl22892451_)
                                                    '0)
                                              (let ((_g34626_
                                                     (gx#syntax-split-splice
                                                      _tl22892451_
                                                      '0)))
                                                (begin
                                                  (let ((_g34627_
                                                         (values-count
                                                          _g34626_)))
                                                    (if (not (fx= _g34627_ 2))
                                                        (error "Context expects 2 values"
                                                               _g34627_)))
                                                  (let ((_target22902454_
                                                         (values-ref
                                                          _g34626_
                                                          0))
                                                        (_tl22922457_
                                                         (values-ref
                                                          _g34626_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl22922457_)
                                                        (letrec ((_loop22932460_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd22912464_ _body22972467_)
                            (if (gx#stx-pair? _hd22912464_)
                                (let ((_e22942470_ (gx#syntax-e _hd22912464_)))
                                  (let ((_lp-hd22952474_ (##car _e22942470_))
                                        (_lp-tl22962477_ (##cdr _e22942470_)))
                                    (_loop22932460_
                                     _lp-tl22962477_
                                     (cons _lp-hd22952474_ _body22972467_))))
                                (let ((_body22982480_
                                       (reverse _body22972467_)))
                                  ((lambda (_L2484_)
                                     (cons (gx#datum->syntax '#f 'let-values)
                                           (cons '()
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g25002503_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g25012506_)
                    (cons _g25002503_ _g25012506_))
                  '()
                  _L2484_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body22982480_))))))
                  (_loop22932460_ _target22902454_ '()))
                (_g22802427_ _g22822431_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g22802427_ _g22822431_))
                                          (_g22802427_ _g22822431_))
                                      (_g22802427_ _g22822431_))))
                              (_g22802427_ _g22822431_))))
                      (_g22802427_ _g22822431_)))))
          (_g22792509_ _$stx2276_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#let|
      (lambda (_$stx2515_)
        (let* ((_g25202584_
                (lambda (_g25212580_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g25212580_)))
               (_g25192669_
                (lambda (_g25212588_)
                  (if (gx#stx-pair? _g25212588_)
                      (let ((_e25642591_ (gx#syntax-e _g25212588_)))
                        (let ((_hd25652595_ (##car _e25642591_))
                              (_tl25662598_ (##cdr _e25642591_)))
                          (if (gx#stx-pair? _tl25662598_)
                              (let ((_e25672601_ (gx#syntax-e _tl25662598_)))
                                (let ((_hd25682605_ (##car _e25672601_))
                                      (_tl25692608_ (##cdr _e25672601_)))
                                  (if (gx#stx-pair/null? _tl25692608_)
                                      (if (fx>= (gx#stx-length _tl25692608_)
                                                '0)
                                          (let ((_g34628_
                                                 (gx#syntax-split-splice
                                                  _tl25692608_
                                                  '0)))
                                            (begin
                                              (let ((_g34629_
                                                     (values-count _g34628_)))
                                                (if (not (fx= _g34629_ 2))
                                                    (error "Context expects 2 values"
                                                           _g34629_)))
                                              (let ((_target25702611_
                                                     (values-ref _g34628_ 0))
                                                    (_tl25722614_
                                                     (values-ref _g34628_ 1)))
                                                (if (gx#stx-null? _tl25722614_)
                                                    (letrec ((_loop25732617_
                                                              (lambda (_hd25712621_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body25772624_)
                        (if (gx#stx-pair? _hd25712621_)
                            (let ((_e25742627_ (gx#syntax-e _hd25712621_)))
                              (let ((_lp-hd25752631_ (##car _e25742627_))
                                    (_lp-tl25762634_ (##cdr _e25742627_)))
                                (_loop25732617_
                                 _lp-tl25762634_
                                 (cons _lp-hd25752631_ _body25772624_))))
                            (let ((_body25782637_ (reverse _body25772624_)))
                              ((lambda (_L2641_ _L2643_)
                                 (cons (gx#datum->syntax '#f '~let)
                                       (cons (gx#datum->syntax '#f 'let-values)
                                             (cons _L2643_
                                                   (begin
                                                     '#!void
                                                     (foldr (lambda (_g26602663_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g26612666_)
                      (cons _g26602663_ _g26612666_))
                    '()
                    _L2641_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _body25782637_
                               _hd25682605_))))))
              (_loop25732617_ _target25702611_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g25202584_
                                                     _g25212588_)))))
                                          (_g25202584_ _g25212588_))
                                      (_g25202584_ _g25212588_))))
                              (_g25202584_ _g25212588_))))
                      (_g25202584_ _g25212588_))))
               (_g25182845_
                (lambda (_g25212673_)
                  (if (gx#stx-pair? _g25212673_)
                      (let ((_e25272676_ (gx#syntax-e _g25212673_)))
                        (let ((_hd25282680_ (##car _e25272676_))
                              (_tl25292683_ (##cdr _e25272676_)))
                          (if (gx#stx-pair? _tl25292683_)
                              (let ((_e25302686_ (gx#syntax-e _tl25292683_)))
                                (let ((_hd25312690_ (##car _e25302686_))
                                      (_tl25322693_ (##cdr _e25302686_)))
                                  (if (gx#stx-pair? _tl25322693_)
                                      (let ((_e25332696_
                                             (gx#syntax-e _tl25322693_)))
                                        (let ((_hd25342700_
                                               (##car _e25332696_))
                                              (_tl25352703_
                                               (##cdr _e25332696_)))
                                          (if (gx#stx-pair/null? _hd25342700_)
                                              (if (fx>= (gx#stx-length
                                                         _hd25342700_)
                                                        '0)
                                                  (let ((_g34630_
                                                         (gx#syntax-split-splice
                                                          _hd25342700_
                                                          '0)))
                                                    (begin
                                                      (let ((_g34631_
                                                             (values-count
                                                              _g34630_)))
                                                        (if (not (fx= _g34631_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g34631_)))
              (let ((_target25362706_ (values-ref _g34630_ 0))
                    (_tl25382709_ (values-ref _g34630_ 1)))
                (letrec ((_loop25392712_
                          (lambda (_hd25372716_ _arg25432719_ _var25442721_)
                            (if (gx#stx-pair? _hd25372716_)
                                (let ((_e25402724_ (gx#syntax-e _hd25372716_)))
                                  (let ((_lp-hd25412728_ (##car _e25402724_))
                                        (_lp-tl25422731_ (##cdr _e25402724_)))
                                    (if (gx#stx-pair? _lp-hd25412728_)
                                        (let ((_e25472734_
                                               (gx#syntax-e _lp-hd25412728_)))
                                          (let ((_hd25482738_
                                                 (##car _e25472734_))
                                                (_tl25492741_
                                                 (##cdr _e25472734_)))
                                            (if (gx#stx-pair? _tl25492741_)
                                                (let ((_e25502744_
                                                       (gx#syntax-e
                                                        _tl25492741_)))
                                                  (let ((_hd25512748_
                                                         (##car _e25502744_))
                                                        (_tl25522751_
                                                         (##cdr _e25502744_)))
                                                    (if (gx#stx-null?
                                                         _tl25522751_)
                                                        (_loop25392712_
                                                         _lp-tl25422731_
                                                         (cons _hd25512748_
                                                               _arg25432719_)
                                                         (cons _hd25482738_
                                                               _var25442721_))
                                                        (_g25192669_
                                                         _g25212673_))))
                                                (_g25192669_ _g25212673_))))
                                        (_g25192669_ _g25212673_))))
                                (let ((_arg25452754_ (reverse _arg25432719_))
                                      (_var25462757_ (reverse _var25442721_)))
                                  (if (gx#stx-pair/null? _tl25352703_)
                                      (if (fx>= (gx#stx-length _tl25352703_)
                                                '0)
                                          (let ((_g34632_
                                                 (gx#syntax-split-splice
                                                  _tl25352703_
                                                  '0)))
                                            (begin
                                              (let ((_g34633_
                                                     (values-count _g34632_)))
                                                (if (not (fx= _g34633_ 2))
                                                    (error "Context expects 2 values"
                                                           _g34633_)))
                                              (let ((_target25532760_
                                                     (values-ref _g34632_ 0))
                                                    (_tl25552763_
                                                     (values-ref _g34632_ 1)))
                                                (if (gx#stx-null? _tl25552763_)
                                                    (letrec ((_loop25562766_
                                                              (lambda (_hd25542770_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body25602773_)
                        (if (gx#stx-pair? _hd25542770_)
                            (let ((_e25572776_ (gx#syntax-e _hd25542770_)))
                              (let ((_lp-hd25582780_ (##car _e25572776_))
                                    (_lp-tl25592783_ (##cdr _e25572776_)))
                                (_loop25562766_
                                 _lp-tl25592783_
                                 (cons _lp-hd25582780_ _body25602773_))))
                            (let ((_body25612786_ (reverse _body25602773_)))
                              ((lambda (_L2790_
                                        _L2792_
                                        _L2793_
                                        _L2794_
                                        _L2795_)
                                 (if (gx#identifier? _L2795_)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'letrec-values)
                                                 (cons (cons (cons (cons _L2795_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (cons (gx#datum->syntax '#f 'lambda%)
                                       (cons (begin
                                               '#!void
                                               (foldr (lambda (_g28202827_
                                                               _g28212830_)
                                                        (cons _g28202827_
                                                              _g28212830_))
                                                      _L2792_
                                                      _L2794_))
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g28222833_
                                                               _g28232836_)
                                                        (cons _g28222833_
                                                              _g28232836_))
                                                      '()
                                                      _L2790_))))
                                 '()))
                     '())
               (cons _L2795_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (begin
                                             '#!void
                                             (foldr (lambda (_g28242839_
                                                             _g28252842_)
                                                      (cons _g28242839_
                                                            _g28252842_))
                                                    '()
                                                    _L2793_)))
                                     (_g25192669_ _g25212673_)))
                               _body25612786_
                               _tl25382709_
                               _arg25452754_
                               _var25462757_
                               _hd25312690_))))))
              (_loop25562766_ _target25532760_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g25192669_
                                                     _g25212673_)))))
                                          (_g25192669_ _g25212673_))
                                      (_g25192669_ _g25212673_)))))))
                  (_loop25392712_ _target25362706_ '() '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g25192669_ _g25212673_))
                                              (_g25192669_ _g25212673_))))
                                      (_g25192669_ _g25212673_))))
                              (_g25192669_ _g25212673_))))
                      (_g25192669_ _g25212673_)))))
          (_g25182845_ _$stx2515_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#let*|
      (lambda (_$stx2852_)
        (let* ((_g28562880_
                (lambda (_g28572876_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g28572876_)))
               (_g28552965_
                (lambda (_g28572884_)
                  (if (gx#stx-pair? _g28572884_)
                      (let ((_e28602887_ (gx#syntax-e _g28572884_)))
                        (let ((_hd28612891_ (##car _e28602887_))
                              (_tl28622894_ (##cdr _e28602887_)))
                          (if (gx#stx-pair? _tl28622894_)
                              (let ((_e28632897_ (gx#syntax-e _tl28622894_)))
                                (let ((_hd28642901_ (##car _e28632897_))
                                      (_tl28652904_ (##cdr _e28632897_)))
                                  (if (gx#stx-pair/null? _tl28652904_)
                                      (if (fx>= (gx#stx-length _tl28652904_)
                                                '0)
                                          (let ((_g34634_
                                                 (gx#syntax-split-splice
                                                  _tl28652904_
                                                  '0)))
                                            (begin
                                              (let ((_g34635_
                                                     (values-count _g34634_)))
                                                (if (not (fx= _g34635_ 2))
                                                    (error "Context expects 2 values"
                                                           _g34635_)))
                                              (let ((_target28662907_
                                                     (values-ref _g34634_ 0))
                                                    (_tl28682910_
                                                     (values-ref _g34634_ 1)))
                                                (if (gx#stx-null? _tl28682910_)
                                                    (letrec ((_loop28692913_
                                                              (lambda (_hd28672917_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body28732920_)
                        (if (gx#stx-pair? _hd28672917_)
                            (let ((_e28702923_ (gx#syntax-e _hd28672917_)))
                              (let ((_lp-hd28712927_ (##car _e28702923_))
                                    (_lp-tl28722930_ (##cdr _e28702923_)))
                                (_loop28692913_
                                 _lp-tl28722930_
                                 (cons _lp-hd28712927_ _body28732920_))))
                            (let ((_body28742933_ (reverse _body28732920_)))
                              ((lambda (_L2937_ _L2939_)
                                 (cons (gx#datum->syntax '#f '~let)
                                       (cons (gx#datum->syntax
                                              '#f
                                              'let*-values)
                                             (cons _L2939_
                                                   (begin
                                                     '#!void
                                                     (foldr (lambda (_g29562959_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g29572962_)
                      (cons _g29562959_ _g29572962_))
                    '()
                    _L2937_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _body28742933_
                               _hd28642901_))))))
              (_loop28692913_ _target28662907_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g28562880_
                                                     _g28572884_)))))
                                          (_g28562880_ _g28572884_))
                                      (_g28562880_ _g28572884_))))
                              (_g28562880_ _g28572884_))))
                      (_g28562880_ _g28572884_)))))
          (_g28552965_ _$stx2852_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#letrec|
      (lambda (_$stx2970_)
        (let* ((_g29742998_
                (lambda (_g29752994_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g29752994_)))
               (_g29733083_
                (lambda (_g29753002_)
                  (if (gx#stx-pair? _g29753002_)
                      (let ((_e29783005_ (gx#syntax-e _g29753002_)))
                        (let ((_hd29793009_ (##car _e29783005_))
                              (_tl29803012_ (##cdr _e29783005_)))
                          (if (gx#stx-pair? _tl29803012_)
                              (let ((_e29813015_ (gx#syntax-e _tl29803012_)))
                                (let ((_hd29823019_ (##car _e29813015_))
                                      (_tl29833022_ (##cdr _e29813015_)))
                                  (if (gx#stx-pair/null? _tl29833022_)
                                      (if (fx>= (gx#stx-length _tl29833022_)
                                                '0)
                                          (let ((_g34636_
                                                 (gx#syntax-split-splice
                                                  _tl29833022_
                                                  '0)))
                                            (begin
                                              (let ((_g34637_
                                                     (values-count _g34636_)))
                                                (if (not (fx= _g34637_ 2))
                                                    (error "Context expects 2 values"
                                                           _g34637_)))
                                              (let ((_target29843025_
                                                     (values-ref _g34636_ 0))
                                                    (_tl29863028_
                                                     (values-ref _g34636_ 1)))
                                                (if (gx#stx-null? _tl29863028_)
                                                    (letrec ((_loop29873031_
                                                              (lambda (_hd29853035_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body29913038_)
                        (if (gx#stx-pair? _hd29853035_)
                            (let ((_e29883041_ (gx#syntax-e _hd29853035_)))
                              (let ((_lp-hd29893045_ (##car _e29883041_))
                                    (_lp-tl29903048_ (##cdr _e29883041_)))
                                (_loop29873031_
                                 _lp-tl29903048_
                                 (cons _lp-hd29893045_ _body29913038_))))
                            (let ((_body29923051_ (reverse _body29913038_)))
                              ((lambda (_L3055_ _L3057_)
                                 (cons (gx#datum->syntax '#f '~let)
                                       (cons (gx#datum->syntax
                                              '#f
                                              'letrec-values)
                                             (cons _L3057_
                                                   (begin
                                                     '#!void
                                                     (foldr (lambda (_g30743077_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g30753080_)
                      (cons _g30743077_ _g30753080_))
                    '()
                    _L3055_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _body29923051_
                               _hd29823019_))))))
              (_loop29873031_ _target29843025_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g29742998_
                                                     _g29753002_)))))
                                          (_g29742998_ _g29753002_))
                                      (_g29742998_ _g29753002_))))
                              (_g29742998_ _g29753002_))))
                      (_g29742998_ _g29753002_)))))
          (_g29733083_ _$stx2970_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#letrec*|
      (lambda (_$stx3088_)
        (let* ((_g30923116_
                (lambda (_g30933112_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g30933112_)))
               (_g30913201_
                (lambda (_g30933120_)
                  (if (gx#stx-pair? _g30933120_)
                      (let ((_e30963123_ (gx#syntax-e _g30933120_)))
                        (let ((_hd30973127_ (##car _e30963123_))
                              (_tl30983130_ (##cdr _e30963123_)))
                          (if (gx#stx-pair? _tl30983130_)
                              (let ((_e30993133_ (gx#syntax-e _tl30983130_)))
                                (let ((_hd31003137_ (##car _e30993133_))
                                      (_tl31013140_ (##cdr _e30993133_)))
                                  (if (gx#stx-pair/null? _tl31013140_)
                                      (if (fx>= (gx#stx-length _tl31013140_)
                                                '0)
                                          (let ((_g34638_
                                                 (gx#syntax-split-splice
                                                  _tl31013140_
                                                  '0)))
                                            (begin
                                              (let ((_g34639_
                                                     (values-count _g34638_)))
                                                (if (not (fx= _g34639_ 2))
                                                    (error "Context expects 2 values"
                                                           _g34639_)))
                                              (let ((_target31023143_
                                                     (values-ref _g34638_ 0))
                                                    (_tl31043146_
                                                     (values-ref _g34638_ 1)))
                                                (if (gx#stx-null? _tl31043146_)
                                                    (letrec ((_loop31053149_
                                                              (lambda (_hd31033153_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body31093156_)
                        (if (gx#stx-pair? _hd31033153_)
                            (let ((_e31063159_ (gx#syntax-e _hd31033153_)))
                              (let ((_lp-hd31073163_ (##car _e31063159_))
                                    (_lp-tl31083166_ (##cdr _e31063159_)))
                                (_loop31053149_
                                 _lp-tl31083166_
                                 (cons _lp-hd31073163_ _body31093156_))))
                            (let ((_body31103169_ (reverse _body31093156_)))
                              ((lambda (_L3173_ _L3175_)
                                 (cons (gx#datum->syntax '#f '~let)
                                       (cons (gx#datum->syntax
                                              '#f
                                              'letrec*-values)
                                             (cons _L3175_
                                                   (begin
                                                     '#!void
                                                     (foldr (lambda (_g31923195_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g31933198_)
                      (cons _g31923195_ _g31933198_))
                    '()
                    _L3173_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _body31103169_
                               _hd31003137_))))))
              (_loop31053149_ _target31023143_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g30923116_
                                                     _g30933120_)))))
                                          (_g30923116_ _g30933120_))
                                      (_g30923116_ _g30933120_))))
                              (_g30923116_ _g30933120_))))
                      (_g30923116_ _g30933120_)))))
          (_g30913201_ _$stx3088_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#~let|
      (lambda (_stx3206_)
        (letrec ((_let-head?3209_
                  (lambda (_x3689_)
                    (let* ((_g36933704_
                            (lambda (_g36943700_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g36943700_)))
                           (_g36923715_
                            (lambda (_g36943708_)
                              ((lambda () (gx#identifier? _x3689_)))))
                           (_g36913745_
                            (lambda (_g36943719_)
                              (if (gx#stx-pair? _g36943719_)
                                  (let ((_e36963722_
                                         (gx#syntax-e _g36943719_)))
                                    (let ((_hd36973726_ (##car _e36963722_))
                                          (_tl36983729_ (##cdr _e36963722_)))
                                      (if (gx#identifier? _hd36973726_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:1>[1]#_g34640_|
                                               _hd36973726_)
                                              ((lambda (_L3732_)
                                                 (gx#stx-andmap
                                                  gx#identifier?
                                                  _L3732_))
                                               _tl36983729_)
                                              (_g36923715_ _g36943719_))
                                          (_g36923715_ _g36943719_))))
                                  (_g36923715_ _g36943719_)))))
                      (_g36913745_ _x3689_))))
                 (_let-head3211_
                  (lambda (_x3629_)
                    (let* ((_g36333644_
                            (lambda (_g36343640_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g36343640_)))
                           (_g36323655_
                            (lambda (_g36343648_)
                              ((lambda () (list _x3629_)))))
                           (_g36313685_
                            (lambda (_g36343659_)
                              (if (gx#stx-pair? _g36343659_)
                                  (let ((_e36363662_
                                         (gx#syntax-e _g36343659_)))
                                    (let ((_hd36373666_ (##car _e36363662_))
                                          (_tl36383669_ (##cdr _e36363662_)))
                                      (if (gx#identifier? _hd36373666_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:1>[1]#_g34641_|
                                               _hd36373666_)
                                              ((lambda (_L3672_) _L3672_)
                                               _tl36383669_)
                                              (_g36323655_ _g36343659_))
                                          (_g36323655_ _g36343659_))))
                                  (_g36323655_ _g36343659_)))))
                      (_g36313685_ _x3629_)))))
          (let* ((_g32143280_
                  (lambda (_g32153276_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g32153276_)))
                 (_g32133541_
                  (lambda (_g32153284_)
                    (if (gx#stx-pair? _g32153284_)
                        (let ((_e32403287_ (gx#syntax-e _g32153284_)))
                          (let ((_hd32413291_ (##car _e32403287_))
                                (_tl32423294_ (##cdr _e32403287_)))
                            (if (gx#stx-pair? _tl32423294_)
                                (let ((_e32433297_ (gx#syntax-e _tl32423294_)))
                                  (let ((_hd32443301_ (##car _e32433297_))
                                        (_tl32453304_ (##cdr _e32433297_)))
                                    (if (gx#stx-pair? _tl32453304_)
                                        (let ((_e32463307_
                                               (gx#syntax-e _tl32453304_)))
                                          (let ((_hd32473311_
                                                 (##car _e32463307_))
                                                (_tl32483314_
                                                 (##cdr _e32463307_)))
                                            (if (gx#stx-pair/null?
                                                 _hd32473311_)
                                                (if (fx>= (gx#stx-length
                                                           _hd32473311_)
                                                          '0)
                                                    (let ((_g34642_
                                                           (gx#syntax-split-splice
                                                            _hd32473311_
                                                            '0)))
                                                      (begin
                                                        (let ((_g34643_
                                                               (values-count
                                                                _g34642_)))
                                                          (if (not (fx= _g34643_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                2))
                      (error "Context expects 2 values" _g34643_)))
                (let ((_target32493317_ (values-ref _g34642_ 0))
                      (_tl32513320_ (values-ref _g34642_ 1)))
                  (if (gx#stx-null? _tl32513320_)
                      (letrec ((_loop32523323_
                                (lambda (_hd32503327_ _e32563330_ _hd32573332_)
                                  (if (gx#stx-pair? _hd32503327_)
                                      (let ((_e32533335_
                                             (gx#syntax-e _hd32503327_)))
                                        (let ((_lp-hd32543339_
                                               (##car _e32533335_))
                                              (_lp-tl32553342_
                                               (##cdr _e32533335_)))
                                          (if (gx#stx-pair? _lp-hd32543339_)
                                              (let ((_e32603345_
                                                     (gx#syntax-e
                                                      _lp-hd32543339_)))
                                                (let ((_hd32613349_
                                                       (##car _e32603345_))
                                                      (_tl32623352_
                                                       (##cdr _e32603345_)))
                                                  (if (gx#stx-pair?
                                                       _tl32623352_)
                                                      (let ((_e32633355_
                                                             (gx#syntax-e
                                                              _tl32623352_)))
                                                        (let ((_hd32643359_
                                                               (##car _e32633355_))
                                                              (_tl32653362_
                                                               (##cdr _e32633355_)))
                                                          (if (gx#stx-null?
                                                               _tl32653362_)
                                                              (_loop32523323_
                                                               _lp-tl32553342_
                                                               (cons _hd32643359_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _e32563330_)
                       (cons _hd32613349_ _hd32573332_))
                      (_g32143280_ _g32153284_))))
              (_g32143280_ _g32153284_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g32143280_ _g32153284_))))
                                      (let ((_e32583365_ (reverse _e32563330_))
                                            (_hd32593368_
                                             (reverse _hd32573332_)))
                                        (if (gx#stx-pair/null? _tl32483314_)
                                            (if (fx>= (gx#stx-length
                                                       _tl32483314_)
                                                      '0)
                                                (let ((_g34644_
                                                       (gx#syntax-split-splice
                                                        _tl32483314_
                                                        '0)))
                                                  (begin
                                                    (let ((_g34645_
                                                           (values-count
                                                            _g34644_)))
                                                      (if (not (fx= _g34645_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g34645_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target32663371_
                                                           (values-ref
                                                            _g34644_
                                                            0))
                                                          (_tl32683374_
                                                           (values-ref
                                                            _g34644_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl32683374_)
                                                          (letrec ((_loop32693377_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd32673381_ _body32733384_)
                              (if (gx#stx-pair? _hd32673381_)
                                  (let ((_e32703387_
                                         (gx#syntax-e _hd32673381_)))
                                    (let ((_lp-hd32713391_ (##car _e32703387_))
                                          (_lp-tl32723394_
                                           (##cdr _e32703387_)))
                                      (_loop32693377_
                                       _lp-tl32723394_
                                       (cons _lp-hd32713391_ _body32733384_))))
                                  (let ((_body32743397_
                                         (reverse _body32733384_)))
                                    ((lambda (_L3401_ _L3403_ _L3404_ _L3405_)
                                       (if (gx#stx-andmap
                                            _let-head?3209_
                                            (begin
                                              '#!void
                                              (foldr (lambda (_g34313434_
                                                              _g34323437_)
                                                       (cons _g34313434_
                                                             _g34323437_))
                                                     '()
                                                     _L3404_)))
                                           (let* ((_g34403457_
                                                   (lambda (_g34413453_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g34413453_)))
                                                  (_g34393529_
                                                   (lambda (_g34413461_)
                                                     (if (gx#stx-pair/null?
                                                          _g34413461_)
                                                         (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g34413461_)
                           '0)
                     (let ((_g34646_ (gx#syntax-split-splice _g34413461_ '0)))
                       (begin
                         (let ((_g34647_ (values-count _g34646_)))
                           (if (not (fx= _g34647_ 2))
                               (error "Context expects 2 values" _g34647_)))
                         (let ((_target34433464_ (values-ref _g34646_ 0))
                               (_tl34453467_ (values-ref _g34646_ 1)))
                           (if (gx#stx-null? _tl34453467_)
                               (letrec ((_loop34463470_
                                         (lambda (_hd34443474_
                                                  _hd-bind34503477_)
                                           (if (gx#stx-pair? _hd34443474_)
                                               (let ((_e34473480_
                                                      (gx#syntax-e
                                                       _hd34443474_)))
                                                 (let ((_lp-hd34483484_
                                                        (##car _e34473480_))
                                                       (_lp-tl34493487_
                                                        (##cdr _e34473480_)))
                                                   (_loop34463470_
                                                    _lp-tl34493487_
                                                    (cons _lp-hd34483484_
                                                          _hd-bind34503477_))))
                                               (let ((_hd-bind34513490_
                                                      (reverse _hd-bind34503477_)))
                                                 ((lambda (_L3494_)
                                                    (let ()
                                                      (cons _L3405_
                                                            (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-check-splice-targets _L3403_ _L3494_)
                            (foldr (lambda (_g35093515_
                                            _g35103518_
                                            _g35113520_)
                                     (cons (cons _g35103518_
                                                 (cons _g35093515_ '()))
                                           _g35113520_))
                                   '()
                                   _L3403_
                                   _L3494_))
                          (begin
                            '#!void
                            (foldr (lambda (_g35123523_ _g35133526_)
                                     (cons _g35123523_ _g35133526_))
                                   '()
                                   _L3401_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd-bind34513490_))))))
                                 (_loop34463470_ _target34433464_ '()))
                               (_g34403457_ _g34413461_)))))
                     (_g34403457_ _g34413461_))
                 (_g34403457_ _g34413461_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g34393529_
                                              (gx#stx-map
                                               _let-head3211_
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g35323535_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g35333538_)
                  (cons _g35323535_ _g35333538_))
                '()
                _L3404_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g32143280_ _g32153284_)))
                                     _body32743397_
                                     _e32583365_
                                     _hd32593368_
                                     _hd32443301_))))))
                    (_loop32693377_ _target32663371_ '()))
                  (_g32143280_ _g32153284_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g32143280_ _g32153284_))
                                            (_g32143280_ _g32153284_)))))))
                        (_loop32523323_ _target32493317_ '() '()))
                      (_g32143280_ _g32153284_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g32143280_ _g32153284_))
                                                (_g32143280_ _g32153284_))))
                                        (_g32143280_ _g32153284_))))
                                (_g32143280_ _g32153284_))))
                        (_g32143280_ _g32153284_))))
                 (_g32123625_
                  (lambda (_g32153545_)
                    (if (gx#stx-pair? _g32153545_)
                        (let ((_e32213548_ (gx#syntax-e _g32153545_)))
                          (let ((_hd32223552_ (##car _e32213548_))
                                (_tl32233555_ (##cdr _e32213548_)))
                            (if (gx#stx-pair? _tl32233555_)
                                (let ((_e32243558_ (gx#syntax-e _tl32233555_)))
                                  (let ((_hd32253562_ (##car _e32243558_))
                                        (_tl32263565_ (##cdr _e32243558_)))
                                    (if (gx#stx-pair? _tl32263565_)
                                        (let ((_e32273568_
                                               (gx#syntax-e _tl32263565_)))
                                          (let ((_hd32283572_
                                                 (##car _e32273568_))
                                                (_tl32293575_
                                                 (##cdr _e32273568_)))
                                            (if (gx#stx-pair? _hd32283572_)
                                                (let ((_e32303578_
                                                       (gx#syntax-e
                                                        _hd32283572_)))
                                                  (let ((_hd32313582_
                                                         (##car _e32303578_))
                                                        (_tl32323585_
                                                         (##cdr _e32303578_)))
                                                    (if (gx#stx-pair?
                                                         _tl32323585_)
                                                        (let ((_e32333588_
                                                               (gx#syntax-e
                                                                _tl32323585_)))
                                                          (let ((_hd32343592_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e32333588_))
                        (_tl32353595_ (##cdr _e32333588_)))
                    (if (gx#stx-null? _tl32353595_)
                        ((lambda (_L3598_ _L3600_ _L3601_ _L3602_ _L3603_)
                           (if (_let-head?3209_ _L3601_)
                               (cons _L3603_
                                     (cons _L3602_
                                           (cons (cons (cons _L3601_
                                                             (cons _L3600_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _L3598_)))
                               (_g32133541_ _g32153545_)))
                         _tl32293575_
                         _hd32343592_
                         _hd32313582_
                         _hd32253562_
                         _hd32223552_)
                        (_g32133541_ _g32153545_))))
                (_g32133541_ _g32153545_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g32133541_ _g32153545_))))
                                        (_g32133541_ _g32153545_))))
                                (_g32133541_ _g32153545_))))
                        (_g32133541_ _g32153545_)))))
            (_g32123625_ _stx3206_)))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#and|
      (lambda (_$stx3752_)
        (let* ((_g37583784_
                (lambda (_g37593780_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g37593780_)))
               (_g37573829_
                (lambda (_g37593788_)
                  (if (gx#stx-pair? _g37593788_)
                      (let ((_e37733791_ (gx#syntax-e _g37593788_)))
                        (let ((_hd37743795_ (##car _e37733791_))
                              (_tl37753798_ (##cdr _e37733791_)))
                          (if (gx#stx-pair? _tl37753798_)
                              (let ((_e37763801_ (gx#syntax-e _tl37753798_)))
                                (let ((_hd37773805_ (##car _e37763801_))
                                      (_tl37783808_ (##cdr _e37763801_)))
                                  ((lambda (_L3811_ _L3813_ _L3814_)
                                     (cons (gx#datum->syntax '#f 'if)
                                           (cons _L3813_
                                                 (cons (cons _L3814_ _L3811_)
                                                       (cons '#f '())))))
                                   _tl37783808_
                                   _hd37773805_
                                   _hd37743795_)))
                              (_g37583784_ _g37593788_))))
                      (_g37583784_ _g37593788_))))
               (_g37563869_
                (lambda (_g37593833_)
                  (if (gx#stx-pair? _g37593833_)
                      (let ((_e37643836_ (gx#syntax-e _g37593833_)))
                        (let ((_hd37653840_ (##car _e37643836_))
                              (_tl37663843_ (##cdr _e37643836_)))
                          (if (gx#stx-pair? _tl37663843_)
                              (let ((_e37673846_ (gx#syntax-e _tl37663843_)))
                                (let ((_hd37683850_ (##car _e37673846_))
                                      (_tl37693853_ (##cdr _e37673846_)))
                                  (if (gx#stx-null? _tl37693853_)
                                      ((lambda (_L3856_) _L3856_) _hd37683850_)
                                      (_g37573829_ _g37593833_))))
                              (_g37573829_ _g37593833_))))
                      (_g37573829_ _g37593833_))))
               (_g37553890_
                (lambda (_g37593873_)
                  (if (gx#stx-pair? _g37593873_)
                      (let ((_e37603876_ (gx#syntax-e _g37593873_)))
                        (let ((_hd37613880_ (##car _e37603876_))
                              (_tl37623883_ (##cdr _e37603876_)))
                          (if (gx#stx-null? _tl37623883_)
                              ((lambda () '#t))
                              (_g37563869_ _g37593873_))))
                      (_g37563869_ _g37593873_)))))
          (_g37553890_ _$stx3752_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#or|
      (lambda (_$stx3894_)
        (let* ((_g39003926_
                (lambda (_g39013922_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g39013922_)))
               (_g38993971_
                (lambda (_g39013930_)
                  (if (gx#stx-pair? _g39013930_)
                      (let ((_e39153933_ (gx#syntax-e _g39013930_)))
                        (let ((_hd39163937_ (##car _e39153933_))
                              (_tl39173940_ (##cdr _e39153933_)))
                          (if (gx#stx-pair? _tl39173940_)
                              (let ((_e39183943_ (gx#syntax-e _tl39173940_)))
                                (let ((_hd39193947_ (##car _e39183943_))
                                      (_tl39203950_ (##cdr _e39183943_)))
                                  ((lambda (_L3953_ _L3955_ _L3956_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '$e)
                                                       (cons _L3955_ '()))
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'if)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$e)
                           (cons (gx#datum->syntax '#f '$e)
                                 (cons (cons _L3956_ _L3953_) '()))))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _tl39203950_
                                   _hd39193947_
                                   _hd39163937_)))
                              (_g39003926_ _g39013930_))))
                      (_g39003926_ _g39013930_))))
               (_g38984011_
                (lambda (_g39013975_)
                  (if (gx#stx-pair? _g39013975_)
                      (let ((_e39063978_ (gx#syntax-e _g39013975_)))
                        (let ((_hd39073982_ (##car _e39063978_))
                              (_tl39083985_ (##cdr _e39063978_)))
                          (if (gx#stx-pair? _tl39083985_)
                              (let ((_e39093988_ (gx#syntax-e _tl39083985_)))
                                (let ((_hd39103992_ (##car _e39093988_))
                                      (_tl39113995_ (##cdr _e39093988_)))
                                  (if (gx#stx-null? _tl39113995_)
                                      ((lambda (_L3998_) _L3998_) _hd39103992_)
                                      (_g38993971_ _g39013975_))))
                              (_g38993971_ _g39013975_))))
                      (_g38993971_ _g39013975_))))
               (_g38974032_
                (lambda (_g39014015_)
                  (if (gx#stx-pair? _g39014015_)
                      (let ((_e39024018_ (gx#syntax-e _g39014015_)))
                        (let ((_hd39034022_ (##car _e39024018_))
                              (_tl39044025_ (##cdr _e39024018_)))
                          (if (gx#stx-null? _tl39044025_)
                              ((lambda () '#f))
                              (_g38984011_ _g39014015_))))
                      (_g38984011_ _g39014015_)))))
          (_g38974032_ _$stx3894_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#cond|
      (lambda (_$stx4036_)
        (let* ((_g40454136_
                (lambda (_g40464132_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g40464132_)))
               (_g40444237_
                (lambda (_g40464140_)
                  (if (gx#stx-pair? _g40464140_)
                      (let ((_e41134143_ (gx#syntax-e _g40464140_)))
                        (let ((_hd41144147_ (##car _e41134143_))
                              (_tl41154150_ (##cdr _e41134143_)))
                          (if (gx#stx-pair? _tl41154150_)
                              (let ((_e41164153_ (gx#syntax-e _tl41154150_)))
                                (let ((_hd41174157_ (##car _e41164153_))
                                      (_tl41184160_ (##cdr _e41164153_)))
                                  (if (gx#stx-pair? _hd41174157_)
                                      (let ((_e41194163_
                                             (gx#syntax-e _hd41174157_)))
                                        (let ((_hd41204167_
                                               (##car _e41194163_))
                                              (_tl41214170_
                                               (##cdr _e41194163_)))
                                          (if (gx#stx-pair/null? _tl41214170_)
                                              (if (fx>= (gx#stx-length
                                                         _tl41214170_)
                                                        '0)
                                                  (let ((_g34648_
                                                         (gx#syntax-split-splice
                                                          _tl41214170_
                                                          '0)))
                                                    (begin
                                                      (let ((_g34649_
                                                             (values-count
                                                              _g34648_)))
                                                        (if (not (fx= _g34649_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g34649_)))
              (let ((_target41224173_ (values-ref _g34648_ 0))
                    (_tl41244176_ (values-ref _g34648_ 1)))
                (if (gx#stx-null? _tl41244176_)
                    (letrec ((_loop41254179_
                              (lambda (_hd41234183_ _body41294186_)
                                (if (gx#stx-pair? _hd41234183_)
                                    (let ((_e41264189_
                                           (gx#syntax-e _hd41234183_)))
                                      (let ((_lp-hd41274193_
                                             (##car _e41264189_))
                                            (_lp-tl41284196_
                                             (##cdr _e41264189_)))
                                        (_loop41254179_
                                         _lp-tl41284196_
                                         (cons _lp-hd41274193_
                                               _body41294186_))))
                                    (let ((_body41304199_
                                           (reverse _body41294186_)))
                                      ((lambda (_L4203_
                                                _L4205_
                                                _L4206_
                                                _L4207_)
                                         (cons (gx#datum->syntax '#f 'if)
                                               (cons _L4206_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'begin)
                         (begin
                           '#!void
                           (foldr (lambda (_g42284231_ _g42294234_)
                                    (cons _g42284231_ _g42294234_))
                                  '()
                                  _L4205_)))
                   (cons (cons _L4207_ _L4203_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _tl41184160_
                                       _body41304199_
                                       _hd41204167_
                                       _hd41144147_))))))
                      (_loop41254179_ _target41224173_ '()))
                    (_g40454136_ _g40464140_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g40454136_ _g40464140_))
                                              (_g40454136_ _g40464140_))))
                                      (_g40454136_ _g40464140_))))
                              (_g40454136_ _g40464140_))))
                      (_g40454136_ _g40464140_))))
               (_g40434293_
                (lambda (_g40464241_)
                  (if (gx#stx-pair? _g40464241_)
                      (let ((_e41004244_ (gx#syntax-e _g40464241_)))
                        (let ((_hd41014248_ (##car _e41004244_))
                              (_tl41024251_ (##cdr _e41004244_)))
                          (if (gx#stx-pair? _tl41024251_)
                              (let ((_e41034254_ (gx#syntax-e _tl41024251_)))
                                (let ((_hd41044258_ (##car _e41034254_))
                                      (_tl41054261_ (##cdr _e41034254_)))
                                  (if (gx#stx-pair? _hd41044258_)
                                      (let ((_e41064264_
                                             (gx#syntax-e _hd41044258_)))
                                        (let ((_hd41074268_
                                               (##car _e41064264_))
                                              (_tl41084271_
                                               (##cdr _e41064264_)))
                                          (if (gx#stx-null? _tl41084271_)
                                              ((lambda (_L4274_
                                                        _L4276_
                                                        _L4277_)
                                                 (cons _L4277_
                                                       (cons (cons _L4276_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f '=>)
                                 (cons (gx#datum->syntax '#f 'values) '())))
                     _L4274_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _tl41054261_
                                               _hd41074268_
                                               _hd41014248_)
                                              (_g40444237_ _g40464241_))))
                                      (_g40444237_ _g40464241_))))
                              (_g40444237_ _g40464241_))))
                      (_g40444237_ _g40464241_))))
               (_g40424375_
                (lambda (_g40464297_)
                  (if (gx#stx-pair? _g40464297_)
                      (let ((_e40824300_ (gx#syntax-e _g40464297_)))
                        (let ((_hd40834304_ (##car _e40824300_))
                              (_tl40844307_ (##cdr _e40824300_)))
                          (if (gx#stx-pair? _tl40844307_)
                              (let ((_e40854310_ (gx#syntax-e _tl40844307_)))
                                (let ((_hd40864314_ (##car _e40854310_))
                                      (_tl40874317_ (##cdr _e40854310_)))
                                  (if (gx#stx-pair? _hd40864314_)
                                      (let ((_e40884320_
                                             (gx#syntax-e _hd40864314_)))
                                        (let ((_hd40894324_
                                               (##car _e40884320_))
                                              (_tl40904327_
                                               (##cdr _e40884320_)))
                                          (if (gx#stx-pair? _tl40904327_)
                                              (let ((_e40914330_
                                                     (gx#syntax-e
                                                      _tl40904327_)))
                                                (let ((_hd40924334_
                                                       (##car _e40914330_))
                                                      (_tl40934337_
                                                       (##cdr _e40914330_)))
                                                  (if (gx#identifier?
                                                       _hd40924334_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core$<sugar>$<sugar:1>[1]#_g34650_|
                                                           _hd40924334_)
                                                          (if (gx#stx-pair?
                                                               _tl40934337_)
                                                              (let ((_e40944340_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl40934337_)))
                        (let ((_hd40954344_ (##car _e40944340_))
                              (_tl40964347_ (##cdr _e40944340_)))
                          (if (gx#stx-null? _tl40964347_)
                              ((lambda (_L4350_ _L4352_ _L4353_ _L4354_)
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (gx#datum->syntax '#f '$e)
                                                   (cons _L4353_ '()))
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'if)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                '$e)
                                                               (cons (cons _L4352_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (gx#datum->syntax '#f '$e) '()))
                             (cons (cons _L4354_ _L4350_) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                               _tl40874317_
                               _hd40954344_
                               _hd40894324_
                               _hd40834304_)
                              (_g40434293_ _g40464297_))))
                      (_g40434293_ _g40464297_))
                  (_g40434293_ _g40464297_))
              (_g40434293_ _g40464297_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g40434293_ _g40464297_))))
                                      (_g40434293_ _g40464297_))))
                              (_g40434293_ _g40464297_))))
                      (_g40434293_ _g40464297_))))
               (_g40414416_
                (lambda (_g40464379_)
                  (if (gx#stx-pair? _g40464379_)
                      (let ((_e40694382_ (gx#syntax-e _g40464379_)))
                        (let ((_hd40704386_ (##car _e40694382_))
                              (_tl40714389_ (##cdr _e40694382_)))
                          (if (gx#stx-pair? _tl40714389_)
                              (let ((_e40724392_ (gx#syntax-e _tl40714389_)))
                                (let ((_hd40734396_ (##car _e40724392_))
                                      (_tl40744399_ (##cdr _e40724392_)))
                                  (if (gx#stx-pair? _hd40734396_)
                                      (let ((_e40754402_
                                             (gx#syntax-e _hd40734396_)))
                                        (let ((_hd40764406_
                                               (##car _e40754402_))
                                              (_tl40774409_
                                               (##cdr _e40754402_)))
                                          (if (gx#identifier? _hd40764406_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<sugar>$<sugar:1>[1]#_g34651_|
                                                   _hd40764406_)
                                                  ((lambda ()
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'syntax-error)
                                                           (cons '"Bad syntax; misplaced else"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g40424375_ _g40464379_))
                                              (_g40424375_ _g40464379_))))
                                      (_g40424375_ _g40464379_))))
                              (_g40424375_ _g40464379_))))
                      (_g40424375_ _g40464379_))))
               (_g40404511_
                (lambda (_g40464420_)
                  (if (gx#stx-pair? _g40464420_)
                      (let ((_e40514423_ (gx#syntax-e _g40464420_)))
                        (let ((_hd40524427_ (##car _e40514423_))
                              (_tl40534430_ (##cdr _e40514423_)))
                          (if (gx#stx-pair? _tl40534430_)
                              (let ((_e40544433_ (gx#syntax-e _tl40534430_)))
                                (let ((_hd40554437_ (##car _e40544433_))
                                      (_tl40564440_ (##cdr _e40544433_)))
                                  (if (gx#stx-pair? _hd40554437_)
                                      (let ((_e40574443_
                                             (gx#syntax-e _hd40554437_)))
                                        (let ((_hd40584447_
                                               (##car _e40574443_))
                                              (_tl40594450_
                                               (##cdr _e40574443_)))
                                          (if (gx#identifier? _hd40584447_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<sugar>$<sugar:1>[1]#_g34652_|
                                                   _hd40584447_)
                                                  (if (gx#stx-pair/null?
                                                       _tl40594450_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl40594450_)
                        '0)
                  (let ((_g34653_ (gx#syntax-split-splice _tl40594450_ '0)))
                    (begin
                      (let ((_g34654_ (values-count _g34653_)))
                        (if (not (fx= _g34654_ 2))
                            (error "Context expects 2 values" _g34654_)))
                      (let ((_target40604453_ (values-ref _g34653_ 0))
                            (_tl40624456_ (values-ref _g34653_ 1)))
                        (if (gx#stx-null? _tl40624456_)
                            (letrec ((_loop40634459_
                                      (lambda (_hd40614463_ _body40674466_)
                                        (if (gx#stx-pair? _hd40614463_)
                                            (let ((_e40644469_
                                                   (gx#syntax-e _hd40614463_)))
                                              (let ((_lp-hd40654473_
                                                     (##car _e40644469_))
                                                    (_lp-tl40664476_
                                                     (##cdr _e40644469_)))
                                                (_loop40634459_
                                                 _lp-tl40664476_
                                                 (cons _lp-hd40654473_
                                                       _body40674466_))))
                                            (let ((_body40684479_
                                                   (reverse _body40674466_)))
                                              (if (gx#stx-null? _tl40564440_)
                                                  ((lambda (_L4483_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            '%#expression)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin)
                               (begin
                                 '#!void
                                 (foldr (lambda (_g45024505_ _g45034508_)
                                          (cons _g45024505_ _g45034508_))
                                        '()
                                        _L4483_)))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _body40684479_)
                                                  (_g40414416_
                                                   _g40464420_)))))))
                              (_loop40634459_ _target40604453_ '()))
                            (_g40414416_ _g40464420_)))))
                  (_g40414416_ _g40464420_))
              (_g40414416_ _g40464420_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g40414416_ _g40464420_))
                                              (_g40414416_ _g40464420_))))
                                      (_g40414416_ _g40464420_))))
                              (_g40414416_ _g40464420_))))
                      (_g40414416_ _g40464420_))))
               (_g40394532_
                (lambda (_g40464515_)
                  (if (gx#stx-pair? _g40464515_)
                      (let ((_e40474518_ (gx#syntax-e _g40464515_)))
                        (let ((_hd40484522_ (##car _e40474518_))
                              (_tl40494525_ (##cdr _e40474518_)))
                          (if (gx#stx-null? _tl40494525_)
                              ((lambda () '#!void))
                              (_g40404511_ _g40464515_))))
                      (_g40404511_ _g40464515_)))))
          (_g40394532_ _$stx4036_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#when|
      (lambda (_$stx4538_)
        (let* ((_g45424566_
                (lambda (_g45434562_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g45434562_)))
               (_g45414651_
                (lambda (_g45434570_)
                  (if (gx#stx-pair? _g45434570_)
                      (let ((_e45464573_ (gx#syntax-e _g45434570_)))
                        (let ((_hd45474577_ (##car _e45464573_))
                              (_tl45484580_ (##cdr _e45464573_)))
                          (if (gx#stx-pair? _tl45484580_)
                              (let ((_e45494583_ (gx#syntax-e _tl45484580_)))
                                (let ((_hd45504587_ (##car _e45494583_))
                                      (_tl45514590_ (##cdr _e45494583_)))
                                  (if (gx#stx-pair/null? _tl45514590_)
                                      (if (fx>= (gx#stx-length _tl45514590_)
                                                '0)
                                          (let ((_g34655_
                                                 (gx#syntax-split-splice
                                                  _tl45514590_
                                                  '0)))
                                            (begin
                                              (let ((_g34656_
                                                     (values-count _g34655_)))
                                                (if (not (fx= _g34656_ 2))
                                                    (error "Context expects 2 values"
                                                           _g34656_)))
                                              (let ((_target45524593_
                                                     (values-ref _g34655_ 0))
                                                    (_tl45544596_
                                                     (values-ref _g34655_ 1)))
                                                (if (gx#stx-null? _tl45544596_)
                                                    (letrec ((_loop45554599_
                                                              (lambda (_hd45534603_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _expr45594606_)
                        (if (gx#stx-pair? _hd45534603_)
                            (let ((_e45564609_ (gx#syntax-e _hd45534603_)))
                              (let ((_lp-hd45574613_ (##car _e45564609_))
                                    (_lp-tl45584616_ (##cdr _e45564609_)))
                                (_loop45554599_
                                 _lp-tl45584616_
                                 (cons _lp-hd45574613_ _expr45594606_))))
                            (let ((_expr45604619_ (reverse _expr45594606_)))
                              ((lambda (_L4623_ _L4625_)
                                 (cons (gx#datum->syntax '#f 'if)
                                       (cons _L4625_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin)
                                                         (begin
                                                           '#!void
                                                           (foldr (lambda (_g46424645_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g46434648_)
                            (cons _g46424645_ _g46434648_))
                          '()
                          _L4623_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons '#!void '())))))
                               _expr45604619_
                               _hd45504587_))))))
              (_loop45554599_ _target45524593_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g45424566_
                                                     _g45434570_)))))
                                          (_g45424566_ _g45434570_))
                                      (_g45424566_ _g45434570_))))
                              (_g45424566_ _g45434570_))))
                      (_g45424566_ _g45434570_)))))
          (_g45414651_ _$stx4538_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#unless|
      (lambda (_$stx4656_)
        (let* ((_g46604684_
                (lambda (_g46614680_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g46614680_)))
               (_g46594769_
                (lambda (_g46614688_)
                  (if (gx#stx-pair? _g46614688_)
                      (let ((_e46644691_ (gx#syntax-e _g46614688_)))
                        (let ((_hd46654695_ (##car _e46644691_))
                              (_tl46664698_ (##cdr _e46644691_)))
                          (if (gx#stx-pair? _tl46664698_)
                              (let ((_e46674701_ (gx#syntax-e _tl46664698_)))
                                (let ((_hd46684705_ (##car _e46674701_))
                                      (_tl46694708_ (##cdr _e46674701_)))
                                  (if (gx#stx-pair/null? _tl46694708_)
                                      (if (fx>= (gx#stx-length _tl46694708_)
                                                '0)
                                          (let ((_g34657_
                                                 (gx#syntax-split-splice
                                                  _tl46694708_
                                                  '0)))
                                            (begin
                                              (let ((_g34658_
                                                     (values-count _g34657_)))
                                                (if (not (fx= _g34658_ 2))
                                                    (error "Context expects 2 values"
                                                           _g34658_)))
                                              (let ((_target46704711_
                                                     (values-ref _g34657_ 0))
                                                    (_tl46724714_
                                                     (values-ref _g34657_ 1)))
                                                (if (gx#stx-null? _tl46724714_)
                                                    (letrec ((_loop46734717_
                                                              (lambda (_hd46714721_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _expr46774724_)
                        (if (gx#stx-pair? _hd46714721_)
                            (let ((_e46744727_ (gx#syntax-e _hd46714721_)))
                              (let ((_lp-hd46754731_ (##car _e46744727_))
                                    (_lp-tl46764734_ (##cdr _e46744727_)))
                                (_loop46734717_
                                 _lp-tl46764734_
                                 (cons _lp-hd46754731_ _expr46774724_))))
                            (let ((_expr46784737_ (reverse _expr46774724_)))
                              ((lambda (_L4741_ _L4743_)
                                 (cons (gx#datum->syntax '#f 'if)
                                       (cons _L4743_
                                             (cons '#!void
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'begin)
                                                               (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#!void
                         (foldr (lambda (_g47604763_ _g47614766_)
                                  (cons _g47604763_ _g47614766_))
                                '()
                                _L4741_)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _expr46784737_
                               _hd46684705_))))))
              (_loop46734717_ _target46704711_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g46604684_
                                                     _g46614688_)))))
                                          (_g46604684_ _g46614688_))
                                      (_g46604684_ _g46614688_))))
                              (_g46604684_ _g46614688_))))
                      (_g46604684_ _g46614688_)))))
          (_g46594769_ _$stx4656_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#syntax-error|
      (lambda (_stx4774_)
        (let* ((_g47774801_
                (lambda (_g47784797_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g47784797_)))
               (_g47764886_
                (lambda (_g47784805_)
                  (if (gx#stx-pair? _g47784805_)
                      (let ((_e47814808_ (gx#syntax-e _g47784805_)))
                        (let ((_hd47824812_ (##car _e47814808_))
                              (_tl47834815_ (##cdr _e47814808_)))
                          (if (gx#stx-pair? _tl47834815_)
                              (let ((_e47844818_ (gx#syntax-e _tl47834815_)))
                                (let ((_hd47854822_ (##car _e47844818_))
                                      (_tl47864825_ (##cdr _e47844818_)))
                                  (if (gx#stx-pair/null? _tl47864825_)
                                      (if (fx>= (gx#stx-length _tl47864825_)
                                                '0)
                                          (let ((_g34659_
                                                 (gx#syntax-split-splice
                                                  _tl47864825_
                                                  '0)))
                                            (begin
                                              (let ((_g34660_
                                                     (values-count _g34659_)))
                                                (if (not (fx= _g34660_ 2))
                                                    (error "Context expects 2 values"
                                                           _g34660_)))
                                              (let ((_target47874828_
                                                     (values-ref _g34659_ 0))
                                                    (_tl47894831_
                                                     (values-ref _g34659_ 1)))
                                                (if (gx#stx-null? _tl47894831_)
                                                    (letrec ((_loop47904834_
                                                              (lambda (_hd47884838_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _detail47944841_)
                        (if (gx#stx-pair? _hd47884838_)
                            (let ((_e47914844_ (gx#syntax-e _hd47884838_)))
                              (let ((_lp-hd47924848_ (##car _e47914844_))
                                    (_lp-tl47934851_ (##cdr _e47914844_)))
                                (_loop47904834_
                                 _lp-tl47934851_
                                 (cons _lp-hd47924848_ _detail47944841_))))
                            (let ((_detail47954854_
                                   (reverse _detail47944841_)))
                              ((lambda (_L4858_ _L4860_)
                                 (if (gx#stx-string? _L4860_)
                                     (apply gx#raise-syntax-error
                                            '#f
                                            (gx#stx-e _L4860_)
                                            _stx4774_
                                            (gx#syntax->list
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g48774880_
                                                               _g48784883_)
                                                        (cons _g48774880_
                                                              _g48784883_))
                                                      '()
                                                      _L4858_))))
                                     (_g47774801_ _g47784805_)))
                               _detail47954854_
                               _hd47854822_))))))
              (_loop47904834_ _target47874828_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g47774801_
                                                     _g47784805_)))))
                                          (_g47774801_ _g47784805_))
                                      (_g47774801_ _g47784805_))))
                              (_g47774801_ _g47784805_))))
                      (_g47774801_ _g47784805_)))))
          (_g47764886_ _stx4774_))))))
