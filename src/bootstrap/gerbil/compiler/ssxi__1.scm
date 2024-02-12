(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx296595_)
      (let* ((_g296599296617_
              (lambda (_g296600296613_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g296600296613_))))
             (_g296598296672_
              (lambda (_g296600296621_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g296600296621_))
                    (let ((_e296605296624_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g296600296621_))))
                      (let ((_hd296604296628_
                             (let ()
                               (declare (not safe))
                               (##car _e296605296624_)))
                            (_tl296603296631_
                             (let ()
                               (declare (not safe))
                               (##cdr _e296605296624_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl296603296631_))
                            (let ((_e296608296634_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl296603296631_))))
                              (let ((_hd296607296638_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e296608296634_)))
                                    (_tl296606296641_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e296608296634_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl296606296641_))
                                    (let ((_e296611296644_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl296606296641_))))
                                      (let ((_hd296610296648_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e296611296644_)))
                                            (_tl296609296651_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e296611296644_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl296609296651_))
                                            ((lambda (_L296654_ _L296656_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L296656_))
                                                   (let ((__tmp304686
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp304681
                                                          (let ((__tmp304683
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp304685
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp304684
                                (let ()
                                  (declare (not safe))
                                  (cons _L296656_ '()))))
                           (declare (not safe))
                           (cons __tmp304685 __tmp304684)))
                        (__tmp304682
                         (let () (declare (not safe)) (cons _L296654_ '()))))
                    (declare (not safe))
                    (cons __tmp304683 __tmp304682))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp304686
                                                           __tmp304681))
                                                   (_g296599296617_
                                                    _g296600296621_)))
                                             _hd296610296648_
                                             _hd296607296638_)
                                            (_g296599296617_
                                             _g296600296621_))))
                                    (_g296599296617_ _g296600296621_))))
                            (_g296599296617_ _g296600296621_))))
                    (_g296599296617_ _g296600296621_)))))
        (_g296598296672_ _$stx296595_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx296676_)
      (let* ((_g296680296709_
              (lambda (_g296681296705_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g296681296705_))))
             (_g296679296809_
              (lambda (_g296681296713_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g296681296713_))
                    (let ((_e296686296716_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g296681296713_))))
                      (let ((_hd296685296720_
                             (let ()
                               (declare (not safe))
                               (##car _e296686296716_)))
                            (_tl296684296723_
                             (let ()
                               (declare (not safe))
                               (##cdr _e296686296716_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl296684296723_))
                            (let ((_g304687_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl296684296723_
                                      '0))))
                              (begin
                                (let ((_g304688_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g304687_)
                                             (##vector-length _g304687_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g304688_ 2)))
                                      (error "Context expects 2 values"
                                             _g304688_)))
                                (let ((_target296687296726_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g304687_ 0)))
                                      (_tl296689296729_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g304687_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl296689296729_))
                                      (letrec ((_loop296690296732_
                                                (lambda (_hd296688296736_
                                                         _type296694296739_
                                                         _symbol296695296741_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd296688296736_))
                                                      (let ((_e296691296744_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd296688296736_))))
                (let ((_lp-hd296692296748_
                       (let () (declare (not safe)) (##car _e296691296744_)))
                      (_lp-tl296693296751_
                       (let () (declare (not safe)) (##cdr _e296691296744_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd296692296748_))
                      (let ((_e296700296754_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd296692296748_))))
                        (let ((_hd296699296758_
                               (let ()
                                 (declare (not safe))
                                 (##car _e296700296754_)))
                              (_tl296698296761_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e296700296754_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl296698296761_))
                              (let ((_e296703296764_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl296698296761_))))
                                (let ((_hd296702296768_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e296703296764_)))
                                      (_tl296701296771_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e296703296764_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl296701296771_))
                                      (_loop296690296732_
                                       _lp-tl296693296751_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd296702296768_
                                               _type296694296739_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd296699296758_
                                               _symbol296695296741_)))
                                      (_g296680296709_ _g296681296713_))))
                              (_g296680296709_ _g296681296713_))))
                      (_g296680296709_ _g296681296713_))))
              (let ((_type296696296774_ (reverse _type296694296739_))
                    (_symbol296697296777_ (reverse _symbol296695296741_)))
                ((lambda (_L296780_ _L296782_)
                   (let ((__tmp304695
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp304689
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L296780_
                               _L296782_))
                            (let ((__tmp304690
                                   (lambda (_g296797296801_
                                            _g296798296804_
                                            _g296799296806_)
                                     (let ((__tmp304691
                                            (let ((__tmp304694
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp304692
                                                   (let ((__tmp304693
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g296797296801_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g296798296804_
                                                           __tmp304693))))
                                              (declare (not safe))
                                              (cons __tmp304694 __tmp304692))))
                                       (declare (not safe))
                                       (cons __tmp304691 _g296799296806_)))))
                              (declare (not safe))
                              (foldr2 __tmp304690 '() _L296780_ _L296782_)))))
                     (declare (not safe))
                     (cons __tmp304695 __tmp304689)))
                 _type296696296774_
                 _symbol296697296777_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop296690296732_
                                         _target296687296726_
                                         '()
                                         '()))
                                      (_g296680296709_ _g296681296713_)))))
                            (_g296680296709_ _g296681296713_))))
                    (_g296680296709_ _g296681296713_)))))
        (_g296679296809_ _$stx296676_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx296814_)
      (let* ((___stx304246304247_ _$stx296814_)
             (_g296819296861_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx304246304247_)))))
        (let ((___kont304249304250_
               (lambda (_L296989_ _L296991_ _L296992_ _L296993_)
                 (let ((__tmp304709
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp304696
                        (let ((__tmp304706
                               (let ((__tmp304708
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp304707
                                      (let ()
                                        (declare (not safe))
                                        (cons _L296993_ '()))))
                                 (declare (not safe))
                                 (cons __tmp304708 __tmp304707)))
                              (__tmp304697
                               (let ((__tmp304703
                                      (let ((__tmp304705
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp304704
                                             (let ()
                                               (declare (not safe))
                                               (cons _L296992_ '()))))
                                        (declare (not safe))
                                        (cons __tmp304705 __tmp304704)))
                                     (__tmp304698
                                      (let ((__tmp304700
                                             (let ((__tmp304702
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp304701
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L296991_ '()))))
                                               (declare (not safe))
                                               (cons __tmp304702 __tmp304701)))
                                            (__tmp304699
                                             (let ()
                                               (declare (not safe))
                                               (cons _L296989_ '()))))
                                        (declare (not safe))
                                        (cons __tmp304700 __tmp304699))))
                                 (declare (not safe))
                                 (cons __tmp304703 __tmp304698))))
                          (declare (not safe))
                          (cons __tmp304706 __tmp304697))))
                   (declare (not safe))
                   (cons __tmp304709 __tmp304696))))
              (___kont304251304252_
               (lambda (_L296908_ _L296910_ _L296911_ _L296912_)
                 (let ((__tmp304710
                        (let ((__tmp304711
                               (let ((__tmp304712
                                      (let ((__tmp304713
                                             (let ((__tmp304714
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp304714 '()))))
                                        (declare (not safe))
                                        (cons _L296908_ __tmp304713))))
                                 (declare (not safe))
                                 (cons _L296910_ __tmp304712))))
                          (declare (not safe))
                          (cons _L296911_ __tmp304711))))
                   (declare (not safe))
                   (cons _L296912_ __tmp304710)))))
          (let ((___match304285304286_
                 (lambda (_e296827296939_
                          _hd296826296943_
                          _tl296825296946_
                          _e296830296949_
                          _hd296829296953_
                          _tl296828296956_
                          _e296833296959_
                          _hd296832296963_
                          _tl296831296966_
                          _e296836296969_
                          _hd296835296973_
                          _tl296834296976_
                          _e296839296979_
                          _hd296838296983_
                          _tl296837296986_)
                   (let ((_L296989_ _hd296838296983_)
                         (_L296991_ _hd296835296973_)
                         (_L296992_ _hd296832296963_)
                         (_L296993_ _hd296829296953_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L296993_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L296992_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L296991_)))
                         (___kont304249304250_
                          _L296989_
                          _L296991_
                          _L296992_
                          _L296993_)
                         (let () (declare (not safe)) (_g296819296861_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx304246304247_))
                (let ((_e296827296939_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx304246304247_))))
                  (let ((_tl296825296946_
                         (let () (declare (not safe)) (##cdr _e296827296939_)))
                        (_hd296826296943_
                         (let ()
                           (declare (not safe))
                           (##car _e296827296939_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl296825296946_))
                        (let ((_e296830296949_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl296825296946_))))
                          (let ((_tl296828296956_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e296830296949_)))
                                (_hd296829296953_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e296830296949_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl296828296956_))
                                (let ((_e296833296959_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl296828296956_))))
                                  (let ((_tl296831296966_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e296833296959_)))
                                        (_hd296832296963_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e296833296959_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl296831296966_))
                                        (let ((_e296836296969_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl296831296966_))))
                                          (let ((_tl296834296976_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e296836296969_)))
                                                (_hd296835296973_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e296836296969_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl296834296976_))
                                                (let ((_e296839296979_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl296834296976_))))
                                                  (let ((_tl296837296986_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e296839296979_)))
                                                        (_hd296838296983_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e296839296979_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl296837296986_))
                                                        (___match304285304286_
                                                         _e296827296939_
                                                         _hd296826296943_
                                                         _tl296825296946_
                                                         _e296830296949_
                                                         _hd296829296953_
                                                         _tl296828296956_
                                                         _e296833296959_
                                                         _hd296832296963_
                                                         _tl296831296966_
                                                         _e296836296969_
                                                         _hd296835296973_
                                                         _tl296834296976_
                                                         _e296839296979_
                                                         _hd296838296983_
                                                         _tl296837296986_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g296819296861_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl296834296976_))
                                                    (___kont304251304252_
                                                     _hd296835296973_
                                                     _hd296832296963_
                                                     _hd296829296953_
                                                     _hd296826296943_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g296819296861_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g296819296861_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g296819296861_)))))
                        (let () (declare (not safe)) (_g296819296861_)))))
                (let () (declare (not safe)) (_g296819296861_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx297018_)
      (let* ((_g297022297057_
              (lambda (_g297023297053_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g297023297053_))))
             (_g297021297176_
              (lambda (_g297023297061_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g297023297061_))
                    (let ((_e297029297064_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g297023297061_))))
                      (let ((_hd297028297068_
                             (let ()
                               (declare (not safe))
                               (##car _e297029297064_)))
                            (_tl297027297071_
                             (let ()
                               (declare (not safe))
                               (##cdr _e297029297064_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl297027297071_))
                            (let ((_g304715_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl297027297071_
                                      '0))))
                              (begin
                                (let ((_g304716_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g304715_)
                                             (##vector-length _g304715_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g304716_ 2)))
                                      (error "Context expects 2 values"
                                             _g304716_)))
                                (let ((_target297030297074_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g304715_ 0)))
                                      (_tl297032297077_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g304715_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl297032297077_))
                                      (letrec ((_loop297033297080_
                                                (lambda (_hd297031297084_
                                                         _symbol297037297087_
                                                         _method297038297089_
                                                         _type-t297039297091_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd297031297084_))
                                                      (let ((_e297034297094_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd297031297084_))))
                (let ((_lp-hd297035297098_
                       (let () (declare (not safe)) (##car _e297034297094_)))
                      (_lp-tl297036297101_
                       (let () (declare (not safe)) (##cdr _e297034297094_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd297035297098_))
                      (let ((_e297045297104_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd297035297098_))))
                        (let ((_hd297044297108_
                               (let ()
                                 (declare (not safe))
                                 (##car _e297045297104_)))
                              (_tl297043297111_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e297045297104_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl297043297111_))
                              (let ((_e297048297114_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl297043297111_))))
                                (let ((_hd297047297118_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e297048297114_)))
                                      (_tl297046297121_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e297048297114_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl297046297121_))
                                      (let ((_e297051297124_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl297046297121_))))
                                        (let ((_hd297050297128_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e297051297124_)))
                                              (_tl297049297131_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e297051297124_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl297049297131_))
                                              (_loop297033297080_
                                               _lp-tl297036297101_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd297050297128_
                                                       _symbol297037297087_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd297047297118_
                                                       _method297038297089_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd297044297108_
                                                       _type-t297039297091_)))
                                              (_g297022297057_
                                               _g297023297061_))))
                                      (_g297022297057_ _g297023297061_))))
                              (_g297022297057_ _g297023297061_))))
                      (_g297022297057_ _g297023297061_))))
              (let ((_symbol297040297134_ (reverse _symbol297037297087_))
                    (_method297041297137_ (reverse _method297038297089_))
                    (_type-t297042297139_ (reverse _type-t297039297091_)))
                ((lambda (_L297142_ _L297144_ _L297145_)
                   (let ((__tmp304724
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp304717
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L297142_
                               _L297144_
                               _L297145_))
                            (let ((__tmp304718
                                   (lambda (_g297161297166_
                                            _g297162297169_
                                            _g297163297171_
                                            _g297164297173_)
                                     (let ((__tmp304719
                                            (let ((__tmp304723
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp304720
                                                   (let ((__tmp304721
                                                          (let ((__tmp304722
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g297161297166_ '()))))
                    (declare (not safe))
                    (cons _g297162297169_ __tmp304722))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g297163297171_
                                                           __tmp304721))))
                                              (declare (not safe))
                                              (cons __tmp304723 __tmp304720))))
                                       (declare (not safe))
                                       (cons __tmp304719 _g297164297173_)))))
                              (declare (not safe))
                              (foldr* __tmp304718
                                      '()
                                      _L297142_
                                      _L297144_
                                      _L297145_)))))
                     (declare (not safe))
                     (cons __tmp304724 __tmp304717)))
                 _symbol297040297134_
                 _method297041297137_
                 _type-t297042297139_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop297033297080_
                                         _target297030297074_
                                         '()
                                         '()
                                         '()))
                                      (_g297022297057_ _g297023297061_)))))
                            (_g297022297057_ _g297023297061_))))
                    (_g297022297057_ _g297023297061_)))))
        (_g297021297176_ _$stx297018_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx297181_)
      (let* ((_g297185297218_
              (lambda (_g297186297214_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g297186297214_))))
             (_g297184297332_
              (lambda (_g297186297222_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g297186297222_))
                    (let ((_e297192297225_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g297186297222_))))
                      (let ((_hd297191297229_
                             (let ()
                               (declare (not safe))
                               (##car _e297192297225_)))
                            (_tl297190297232_
                             (let ()
                               (declare (not safe))
                               (##cdr _e297192297225_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl297190297232_))
                            (let ((_e297195297235_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl297190297232_))))
                              (let ((_hd297194297239_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e297195297235_)))
                                    (_tl297193297242_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e297195297235_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl297193297242_))
                                    (let ((_g304725_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl297193297242_
                                              '0))))
                                      (begin
                                        (let ((_g304726_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g304725_)
                                                     (##vector-length
                                                      _g304725_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g304726_ 2)))
                                              (error "Context expects 2 values"
                                                     _g304726_)))
                                        (let ((_target297196297245_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g304725_ 0)))
                                              (_tl297198297248_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g304725_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl297198297248_))
                                              (letrec ((_loop297199297251_
                                                        (lambda (_hd297197297255_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol297203297258_
                         _method297204297260_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd297197297255_))
                      (let ((_e297200297263_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd297197297255_))))
                        (let ((_lp-hd297201297267_
                               (let ()
                                 (declare (not safe))
                                 (##car _e297200297263_)))
                              (_lp-tl297202297270_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e297200297263_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd297201297267_))
                              (let ((_e297209297273_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd297201297267_))))
                                (let ((_hd297208297277_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e297209297273_)))
                                      (_tl297207297280_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e297209297273_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl297207297280_))
                                      (let ((_e297212297283_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl297207297280_))))
                                        (let ((_hd297211297287_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e297212297283_)))
                                              (_tl297210297290_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e297212297283_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl297210297290_))
                                              (_loop297199297251_
                                               _lp-tl297202297270_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd297211297287_
                                                       _symbol297203297258_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd297208297277_
                                                       _method297204297260_)))
                                              (_g297185297218_
                                               _g297186297222_))))
                                      (_g297185297218_ _g297186297222_))))
                              (_g297185297218_ _g297186297222_))))
                      (let ((_symbol297205297293_
                             (reverse _symbol297203297258_))
                            (_method297206297296_
                             (reverse _method297204297260_)))
                        ((lambda (_L297299_ _L297301_ _L297302_)
                           (let ((__tmp304734
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp304727
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L297299_
                                       _L297301_))
                                    (let ((__tmp304728
                                           (lambda (_g297320297324_
                                                    _g297321297327_
                                                    _g297322297329_)
                                             (let ((__tmp304729
                                                    (let ((__tmp304733
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp304730
                                                           (let ((__tmp304731
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp304732
                                 (let ()
                                   (declare (not safe))
                                   (cons _g297320297324_ '()))))
                            (declare (not safe))
                            (cons _g297321297327_ __tmp304732))))
                     (declare (not safe))
                     (cons _L297302_ __tmp304731))))
              (declare (not safe))
              (cons __tmp304733 __tmp304730))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp304729
                                                     _g297322297329_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp304728
                                              '()
                                              _L297299_
                                              _L297301_)))))
                             (declare (not safe))
                             (cons __tmp304734 __tmp304727)))
                         _symbol297205297293_
                         _method297206297296_
                         _hd297194297239_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop297199297251_
                                                 _target297196297245_
                                                 '()
                                                 '()))
                                              (_g297185297218_
                                               _g297186297222_)))))
                                    (_g297185297218_ _g297186297222_))))
                            (_g297185297218_ _g297186297222_))))
                    (_g297185297218_ _g297186297222_)))))
        (_g297184297332_ _$stx297181_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx297337_)
      (let* ((_g297341297355_
              (lambda (_g297342297351_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g297342297351_))))
             (_g297340297396_
              (lambda (_g297342297359_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g297342297359_))
                    (let ((_e297346297362_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g297342297359_))))
                      (let ((_hd297345297366_
                             (let ()
                               (declare (not safe))
                               (##car _e297346297362_)))
                            (_tl297344297369_
                             (let ()
                               (declare (not safe))
                               (##cdr _e297346297362_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl297344297369_))
                            (let ((_e297349297372_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl297344297369_))))
                              (let ((_hd297348297376_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e297349297372_)))
                                    (_tl297347297379_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e297349297372_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl297347297379_))
                                    ((lambda (_L297382_)
                                       (let ((__tmp304739
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp304735
                                              (let ((__tmp304736
                                                     (let ((__tmp304738
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp304737
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L297382_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp304738 __tmp304737))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp304736 '()))))
                                         (declare (not safe))
                                         (cons __tmp304739 __tmp304735)))
                                     _hd297348297376_)
                                    (_g297341297355_ _g297342297359_))))
                            (_g297341297355_ _g297342297359_))))
                    (_g297341297355_ _g297342297359_)))))
        (_g297340297396_ _$stx297337_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx297400_)
      (let* ((_g297404297450_
              (lambda (_g297405297446_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g297405297446_))))
             (_g297403297603_
              (lambda (_g297405297454_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g297405297454_))
                    (let ((_e297417297457_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g297405297454_))))
                      (let ((_hd297416297461_
                             (let ()
                               (declare (not safe))
                               (##car _e297417297457_)))
                            (_tl297415297464_
                             (let ()
                               (declare (not safe))
                               (##cdr _e297417297457_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl297415297464_))
                            (let ((_e297420297467_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl297415297464_))))
                              (let ((_hd297419297471_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e297420297467_)))
                                    (_tl297418297474_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e297420297467_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl297418297474_))
                                    (let ((_e297423297477_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl297418297474_))))
                                      (let ((_hd297422297481_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e297423297477_)))
                                            (_tl297421297484_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e297423297477_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl297421297484_))
                                            (let ((_e297426297487_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl297421297484_))))
                                              (let ((_hd297425297491_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e297426297487_)))
                                                    (_tl297424297494_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e297426297487_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl297424297494_))
                                                    (let ((_e297429297497_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl297424297494_))))
                                                      (let ((_hd297428297501_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e297429297497_)))
                    (_tl297427297504_
                     (let () (declare (not safe)) (##cdr _e297429297497_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl297427297504_))
                    (let ((_e297432297507_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl297427297504_))))
                      (let ((_hd297431297511_
                             (let ()
                               (declare (not safe))
                               (##car _e297432297507_)))
                            (_tl297430297514_
                             (let ()
                               (declare (not safe))
                               (##cdr _e297432297507_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl297430297514_))
                            (let ((_e297435297517_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl297430297514_))))
                              (let ((_hd297434297521_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e297435297517_)))
                                    (_tl297433297524_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e297435297517_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl297433297524_))
                                    (let ((_e297438297527_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl297433297524_))))
                                      (let ((_hd297437297531_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e297438297527_)))
                                            (_tl297436297534_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e297438297527_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl297436297534_))
                                            (let ((_e297441297537_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl297436297534_))))
                                              (let ((_hd297440297541_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e297441297537_)))
                                                    (_tl297439297544_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e297441297537_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl297439297544_))
                                                    (let ((_e297444297547_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl297439297544_))))
                                                      (let ((_hd297443297551_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e297444297547_)))
                    (_tl297442297554_
                     (let () (declare (not safe)) (##cdr _e297444297547_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl297442297554_))
                    ((lambda (_L297557_
                              _L297559_
                              _L297560_
                              _L297561_
                              _L297562_
                              _L297563_
                              _L297564_
                              _L297565_
                              _L297566_)
                       (let ((__tmp304776
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'make-!class)))
                             (__tmp304740
                              (let ((__tmp304773
                                     (let ((__tmp304775
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'quote)))
                                           (__tmp304774
                                            (let ()
                                              (declare (not safe))
                                              (cons _L297566_ '()))))
                                       (declare (not safe))
                                       (cons __tmp304775 __tmp304774)))
                                    (__tmp304741
                                     (let ((__tmp304770
                                            (let ((__tmp304772
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote)))
                                                  (__tmp304771
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L297565_ '()))))
                                              (declare (not safe))
                                              (cons __tmp304772 __tmp304771)))
                                           (__tmp304742
                                            (let ((__tmp304767
                                                   (let ((__tmp304769
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'quote)))
                                                         (__tmp304768
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L297564_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp304769
                                                           __tmp304768)))
                                                  (__tmp304743
                                                   (let ((__tmp304764
                                                          (let ((__tmp304766
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote)))
                        (__tmp304765
                         (let () (declare (not safe)) (cons _L297563_ '()))))
                    (declare (not safe))
                    (cons __tmp304766 __tmp304765)))
                 (__tmp304744
                  (let ((__tmp304761
                         (let ((__tmp304763
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp304762
                                (let ()
                                  (declare (not safe))
                                  (cons _L297562_ '()))))
                           (declare (not safe))
                           (cons __tmp304763 __tmp304762)))
                        (__tmp304745
                         (let ((__tmp304758
                                (let ((__tmp304760
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote)))
                                      (__tmp304759
                                       (let ()
                                         (declare (not safe))
                                         (cons _L297561_ '()))))
                                  (declare (not safe))
                                  (cons __tmp304760 __tmp304759)))
                               (__tmp304746
                                (let ((__tmp304755
                                       (let ((__tmp304757
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'quote)))
                                             (__tmp304756
                                              (let ()
                                                (declare (not safe))
                                                (cons _L297560_ '()))))
                                         (declare (not safe))
                                         (cons __tmp304757 __tmp304756)))
                                      (__tmp304747
                                       (let ((__tmp304752
                                              (let ((__tmp304754
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'quote)))
                                                    (__tmp304753
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L297559_ '()))))
                                                (declare (not safe))
                                                (cons __tmp304754
                                                      __tmp304753)))
                                             (__tmp304748
                                              (let ((__tmp304749
                                                     (let ((__tmp304751
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp304750
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L297557_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp304751 __tmp304750))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp304749 '()))))
                                         (declare (not safe))
                                         (cons __tmp304752 __tmp304748))))
                                  (declare (not safe))
                                  (cons __tmp304755 __tmp304747))))
                           (declare (not safe))
                           (cons __tmp304758 __tmp304746))))
                    (declare (not safe))
                    (cons __tmp304761 __tmp304745))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp304764
                                                           __tmp304744))))
                                              (declare (not safe))
                                              (cons __tmp304767 __tmp304743))))
                                       (declare (not safe))
                                       (cons __tmp304770 __tmp304742))))
                                (declare (not safe))
                                (cons __tmp304773 __tmp304741))))
                         (declare (not safe))
                         (cons __tmp304776 __tmp304740)))
                     _hd297443297551_
                     _hd297440297541_
                     _hd297437297531_
                     _hd297434297521_
                     _hd297431297511_
                     _hd297428297501_
                     _hd297425297491_
                     _hd297422297481_
                     _hd297419297471_)
                    (_g297404297450_ _g297405297454_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g297404297450_
                                                     _g297405297454_))))
                                            (_g297404297450_
                                             _g297405297454_))))
                                    (_g297404297450_ _g297405297454_))))
                            (_g297404297450_ _g297405297454_))))
                    (_g297404297450_ _g297405297454_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g297404297450_
                                                     _g297405297454_))))
                                            (_g297404297450_
                                             _g297405297454_))))
                                    (_g297404297450_ _g297405297454_))))
                            (_g297404297450_ _g297405297454_))))
                    (_g297404297450_ _g297405297454_)))))
        (_g297403297603_ _$stx297400_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx297607_)
      (let* ((_g297611297625_
              (lambda (_g297612297621_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g297612297621_))))
             (_g297610297666_
              (lambda (_g297612297629_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g297612297629_))
                    (let ((_e297616297632_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g297612297629_))))
                      (let ((_hd297615297636_
                             (let ()
                               (declare (not safe))
                               (##car _e297616297632_)))
                            (_tl297614297639_
                             (let ()
                               (declare (not safe))
                               (##cdr _e297616297632_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl297614297639_))
                            (let ((_e297619297642_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl297614297639_))))
                              (let ((_hd297618297646_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e297619297642_)))
                                    (_tl297617297649_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e297619297642_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl297617297649_))
                                    ((lambda (_L297652_)
                                       (let ((__tmp304781
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp304777
                                              (let ((__tmp304778
                                                     (let ((__tmp304780
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp304779
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L297652_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp304780 __tmp304779))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp304778 '()))))
                                         (declare (not safe))
                                         (cons __tmp304781 __tmp304777)))
                                     _hd297618297646_)
                                    (_g297611297625_ _g297612297629_))))
                            (_g297611297625_ _g297612297629_))))
                    (_g297611297625_ _g297612297629_)))))
        (_g297610297666_ _$stx297607_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx297670_)
      (let* ((_g297674297688_
              (lambda (_g297675297684_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g297675297684_))))
             (_g297673297729_
              (lambda (_g297675297692_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g297675297692_))
                    (let ((_e297679297695_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g297675297692_))))
                      (let ((_hd297678297699_
                             (let ()
                               (declare (not safe))
                               (##car _e297679297695_)))
                            (_tl297677297702_
                             (let ()
                               (declare (not safe))
                               (##cdr _e297679297695_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl297677297702_))
                            (let ((_e297682297705_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl297677297702_))))
                              (let ((_hd297681297709_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e297682297705_)))
                                    (_tl297680297712_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e297682297705_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl297680297712_))
                                    ((lambda (_L297715_)
                                       (let ((__tmp304786
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp304782
                                              (let ((__tmp304783
                                                     (let ((__tmp304785
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp304784
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L297715_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp304785 __tmp304784))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp304783 '()))))
                                         (declare (not safe))
                                         (cons __tmp304786 __tmp304782)))
                                     _hd297681297709_)
                                    (_g297674297688_ _g297675297692_))))
                            (_g297674297688_ _g297675297692_))))
                    (_g297674297688_ _g297675297692_)))))
        (_g297673297729_ _$stx297670_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx297733_)
      (let* ((_g297737297759_
              (lambda (_g297738297755_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g297738297755_))))
             (_g297736297828_
              (lambda (_g297738297763_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g297738297763_))
                    (let ((_e297744297766_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g297738297763_))))
                      (let ((_hd297743297770_
                             (let ()
                               (declare (not safe))
                               (##car _e297744297766_)))
                            (_tl297742297773_
                             (let ()
                               (declare (not safe))
                               (##cdr _e297744297766_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl297742297773_))
                            (let ((_e297747297776_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl297742297773_))))
                              (let ((_hd297746297780_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e297747297776_)))
                                    (_tl297745297783_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e297747297776_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl297745297783_))
                                    (let ((_e297750297786_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl297745297783_))))
                                      (let ((_hd297749297790_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e297750297786_)))
                                            (_tl297748297793_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e297750297786_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl297748297793_))
                                            (let ((_e297753297796_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl297748297793_))))
                                              (let ((_hd297752297800_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e297753297796_)))
                                                    (_tl297751297803_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e297753297796_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl297751297803_))
                                                    ((lambda (_L297806_
                                                              _L297808_
                                                              _L297809_)
                                                       (let ((__tmp304796
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp304787
                      (let ((__tmp304793
                             (let ((__tmp304795
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp304794
                                    (let ()
                                      (declare (not safe))
                                      (cons _L297809_ '()))))
                               (declare (not safe))
                               (cons __tmp304795 __tmp304794)))
                            (__tmp304788
                             (let ((__tmp304790
                                    (let ((__tmp304792
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp304791
                                           (let ()
                                             (declare (not safe))
                                             (cons _L297808_ '()))))
                                      (declare (not safe))
                                      (cons __tmp304792 __tmp304791)))
                                   (__tmp304789
                                    (let ()
                                      (declare (not safe))
                                      (cons _L297806_ '()))))
                               (declare (not safe))
                               (cons __tmp304790 __tmp304789))))
                        (declare (not safe))
                        (cons __tmp304793 __tmp304788))))
                 (declare (not safe))
                 (cons __tmp304796 __tmp304787)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd297752297800_
                                                     _hd297749297790_
                                                     _hd297746297780_)
                                                    (_g297737297759_
                                                     _g297738297763_))))
                                            (_g297737297759_
                                             _g297738297763_))))
                                    (_g297737297759_ _g297738297763_))))
                            (_g297737297759_ _g297738297763_))))
                    (_g297737297759_ _g297738297763_)))))
        (_g297736297828_ _$stx297733_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx297832_)
      (let* ((_g297836297858_
              (lambda (_g297837297854_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g297837297854_))))
             (_g297835297927_
              (lambda (_g297837297862_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g297837297862_))
                    (let ((_e297843297865_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g297837297862_))))
                      (let ((_hd297842297869_
                             (let ()
                               (declare (not safe))
                               (##car _e297843297865_)))
                            (_tl297841297872_
                             (let ()
                               (declare (not safe))
                               (##cdr _e297843297865_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl297841297872_))
                            (let ((_e297846297875_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl297841297872_))))
                              (let ((_hd297845297879_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e297846297875_)))
                                    (_tl297844297882_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e297846297875_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl297844297882_))
                                    (let ((_e297849297885_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl297844297882_))))
                                      (let ((_hd297848297889_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e297849297885_)))
                                            (_tl297847297892_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e297849297885_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl297847297892_))
                                            (let ((_e297852297895_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl297847297892_))))
                                              (let ((_hd297851297899_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e297852297895_)))
                                                    (_tl297850297902_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e297852297895_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl297850297902_))
                                                    ((lambda (_L297905_
                                                              _L297907_
                                                              _L297908_)
                                                       (let ((__tmp304806
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp304797
                      (let ((__tmp304803
                             (let ((__tmp304805
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp304804
                                    (let ()
                                      (declare (not safe))
                                      (cons _L297908_ '()))))
                               (declare (not safe))
                               (cons __tmp304805 __tmp304804)))
                            (__tmp304798
                             (let ((__tmp304800
                                    (let ((__tmp304802
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp304801
                                           (let ()
                                             (declare (not safe))
                                             (cons _L297907_ '()))))
                                      (declare (not safe))
                                      (cons __tmp304802 __tmp304801)))
                                   (__tmp304799
                                    (let ()
                                      (declare (not safe))
                                      (cons _L297905_ '()))))
                               (declare (not safe))
                               (cons __tmp304800 __tmp304799))))
                        (declare (not safe))
                        (cons __tmp304803 __tmp304798))))
                 (declare (not safe))
                 (cons __tmp304806 __tmp304797)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd297851297899_
                                                     _hd297848297889_
                                                     _hd297845297879_)
                                                    (_g297836297858_
                                                     _g297837297862_))))
                                            (_g297836297858_
                                             _g297837297862_))))
                                    (_g297836297858_ _g297837297862_))))
                            (_g297836297858_ _g297837297862_))))
                    (_g297836297858_ _g297837297862_)))))
        (_g297835297927_ _$stx297832_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx297931_)
      (let* ((___stx304314304315_ _$stx297931_)
             (_g297939298007_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx304314304315_)))))
        (let ((___kont304317304318_
               (lambda (_L298285_ _L298287_)
                 (let ((__tmp304822
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp304807
                        (let ((__tmp304818
                               (let ((__tmp304821
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp304819
                                      (let ((__tmp304820
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp304820 '()))))
                                 (declare (not safe))
                                 (cons __tmp304821 __tmp304819)))
                              (__tmp304808
                               (let ((__tmp304815
                                      (let ((__tmp304817
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp304816
                                             (let ()
                                               (declare (not safe))
                                               (cons _L298287_ '()))))
                                        (declare (not safe))
                                        (cons __tmp304817 __tmp304816)))
                                     (__tmp304809
                                      (let ((__tmp304810
                                             (let ((__tmp304811
                                                    (let ((__tmp304812
                                                           (let ((__tmp304814
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp304813
                          (let () (declare (not safe)) (cons _L298285_ '()))))
                     (declare (not safe))
                     (cons __tmp304814 __tmp304813))))
              (declare (not safe))
              (cons __tmp304812 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L298285_ __tmp304811))))
                                        (declare (not safe))
                                        (cons '#f __tmp304810))))
                                 (declare (not safe))
                                 (cons __tmp304815 __tmp304809))))
                          (declare (not safe))
                          (cons __tmp304818 __tmp304808))))
                   (declare (not safe))
                   (cons __tmp304822 __tmp304807))))
              (___kont304319304320_
               (lambda (_L298216_ _L298218_)
                 (let ((__tmp304823
                        (let ((__tmp304824
                               (let ((__tmp304825
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L298216_ __tmp304825))))
                          (declare (not safe))
                          (cons 'primitive: __tmp304824))))
                   (declare (not safe))
                   (cons _L298218_ __tmp304823))))
              (___kont304321304322_
               (lambda (_L298155_ _L298157_)
                 (let ((__tmp304839
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp304826
                        (let ((__tmp304835
                               (let ((__tmp304838
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp304836
                                      (let ((__tmp304837
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp304837 '()))))
                                 (declare (not safe))
                                 (cons __tmp304838 __tmp304836)))
                              (__tmp304827
                               (let ((__tmp304832
                                      (let ((__tmp304834
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp304833
                                             (let ()
                                               (declare (not safe))
                                               (cons _L298157_ '()))))
                                        (declare (not safe))
                                        (cons __tmp304834 __tmp304833)))
                                     (__tmp304828
                                      (let ((__tmp304829
                                             (let ((__tmp304831
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp304830
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L298155_ '()))))
                                               (declare (not safe))
                                               (cons __tmp304831
                                                     __tmp304830))))
                                        (declare (not safe))
                                        (cons __tmp304829 '()))))
                                 (declare (not safe))
                                 (cons __tmp304832 __tmp304828))))
                          (declare (not safe))
                          (cons __tmp304835 __tmp304827))))
                   (declare (not safe))
                   (cons __tmp304839 __tmp304826))))
              (___kont304323304324_
               (lambda (_L298087_ _L298089_)
                 (let ((__tmp304853
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp304840
                        (let ((__tmp304849
                               (let ((__tmp304852
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp304850
                                      (let ((__tmp304851
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp304851 '()))))
                                 (declare (not safe))
                                 (cons __tmp304852 __tmp304850)))
                              (__tmp304841
                               (let ((__tmp304846
                                      (let ((__tmp304848
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp304847
                                             (let ()
                                               (declare (not safe))
                                               (cons _L298089_ '()))))
                                        (declare (not safe))
                                        (cons __tmp304848 __tmp304847)))
                                     (__tmp304842
                                      (let ((__tmp304843
                                             (let ((__tmp304845
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp304844
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L298087_ '()))))
                                               (declare (not safe))
                                               (cons __tmp304845
                                                     __tmp304844))))
                                        (declare (not safe))
                                        (cons __tmp304843 '()))))
                                 (declare (not safe))
                                 (cons __tmp304846 __tmp304842))))
                          (declare (not safe))
                          (cons __tmp304849 __tmp304841))))
                   (declare (not safe))
                   (cons __tmp304853 __tmp304840))))
              (___kont304325304326_
               (lambda (_L298034_ _L298036_)
                 (let ((__tmp304854
                        (let ((__tmp304855
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L298034_ __tmp304855))))
                   (declare (not safe))
                   (cons _L298036_ __tmp304854)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx304314304315_))
              (let ((_e297945298241_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx304314304315_))))
                (let ((_tl297943298248_
                       (let () (declare (not safe)) (##cdr _e297945298241_)))
                      (_hd297944298245_
                       (let () (declare (not safe)) (##car _e297945298241_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl297943298248_))
                      (let ((_e297948298251_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl297943298248_))))
                        (let ((_tl297946298258_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e297948298251_)))
                              (_hd297947298255_
                               (let ()
                                 (declare (not safe))
                                 (##car _e297948298251_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl297946298258_))
                              (let ((_e297951298261_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl297946298258_))))
                                (let ((_tl297949298268_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e297951298261_)))
                                      (_hd297950298265_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e297951298261_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd297950298265_))
                                      (let ((_e297952298271_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd297950298265_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e297952298271_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl297949298268_))
                                                (let ((_e297955298275_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl297949298268_))))
                                                  (let ((_tl297953298282_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e297955298275_)))
                                                        (_hd297954298279_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e297955298275_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl297953298282_))
                                                        (___kont304317304318_
                                                         _hd297954298279_
                                                         _hd297947298255_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd297947298255_))
                                                            (let ((_e297964298202_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd297947298255_))))
                      (declare (not safe))
                      (_g297939298007_))
                    (let () (declare (not safe)) (_g297939298007_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd297947298255_))
                                                    (let ((_e297964298202_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd297947298255_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e297964298202_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl297949298268_))
                      (___kont304319304320_ _hd297950298265_ _hd297944298245_)
                      (let () (declare (not safe)) (_g297939298007_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl297949298268_))
                      (___kont304323304324_ _hd297950298265_ _hd297947298255_)
                      (let () (declare (not safe)) (_g297939298007_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl297949298268_))
                                                        (___kont304323304324_
                                                         _hd297950298265_
                                                         _hd297947298255_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g297939298007_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd297947298255_))
                                                (let ((_e297964298202_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd297947298255_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e297964298202_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl297949298268_))
                                                          (___kont304319304320_
                                                           _hd297950298265_
                                                           _hd297944298245_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl297949298268_))
                      (let ((_e297982298145_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl297949298268_))))
                        (let ((_tl297980298152_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e297982298145_)))
                              (_hd297981298149_
                               (let ()
                                 (declare (not safe))
                                 (##car _e297982298145_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl297980298152_))
                              (___kont304321304322_
                               _hd297981298149_
                               _hd297950298265_)
                              (let ()
                                (declare (not safe))
                                (_g297939298007_)))))
                      (let () (declare (not safe)) (_g297939298007_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl297949298268_))
                  (___kont304323304324_ _hd297950298265_ _hd297947298255_)
                  (let () (declare (not safe)) (_g297939298007_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl297949298268_))
                                                    (___kont304323304324_
                                                     _hd297950298265_
                                                     _hd297947298255_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g297939298007_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd297947298255_))
                                          (let ((_e297964298202_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd297947298255_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e297964298202_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl297949298268_))
                                                    (___kont304319304320_
                                                     _hd297950298265_
                                                     _hd297944298245_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl297949298268_))
                                                        (let ((_e297982298145_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl297949298268_))))
                  (let ((_tl297980298152_
                         (let () (declare (not safe)) (##cdr _e297982298145_)))
                        (_hd297981298149_
                         (let ()
                           (declare (not safe))
                           (##car _e297982298145_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl297980298152_))
                        (___kont304321304322_
                         _hd297981298149_
                         _hd297950298265_)
                        (let () (declare (not safe)) (_g297939298007_)))))
                (let () (declare (not safe)) (_g297939298007_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl297949298268_))
                                                    (___kont304323304324_
                                                     _hd297950298265_
                                                     _hd297947298255_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g297939298007_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl297949298268_))
                                              (___kont304323304324_
                                               _hd297950298265_
                                               _hd297947298255_)
                                              (let ()
                                                (declare (not safe))
                                                (_g297939298007_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd297947298255_))
                                  (let ((_e297964298202_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd297947298255_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl297946298258_))
                                        (___kont304325304326_
                                         _hd297947298255_
                                         _hd297944298245_)
                                        (let ()
                                          (declare (not safe))
                                          (_g297939298007_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl297946298258_))
                                      (___kont304325304326_
                                       _hd297947298255_
                                       _hd297944298245_)
                                      (let ()
                                        (declare (not safe))
                                        (_g297939298007_)))))))
                      (let () (declare (not safe)) (_g297939298007_)))))
              (let () (declare (not safe)) (_g297939298007_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx298309_)
      (let* ((___stx304454304455_ _$stx298309_)
             (_g298314298369_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx304454304455_)))))
        (let ((___kont304457304458_
               (lambda (_L298554_ _L298556_)
                 (let ((__tmp304871
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp304856
                        (let ((__tmp304867
                               (let ((__tmp304870
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp304868
                                      (let ((__tmp304869
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp304869 '()))))
                                 (declare (not safe))
                                 (cons __tmp304870 __tmp304868)))
                              (__tmp304857
                               (let ((__tmp304858
                                      (let ((__tmp304866
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp304859
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L298554_
                                                  _L298556_))
                                               (let ((__tmp304860
                                                      (lambda (_g298573298577_
                                                               _g298574298580_
                                                               _g298575298582_)
                                                        (let ((__tmp304861
                                                               (let ((__tmp304865
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp304862
                              (let ((__tmp304863
                                     (let ((__tmp304864
                                            (let ()
                                              (declare (not safe))
                                              (cons _g298573298577_ '()))))
                                       (declare (not safe))
                                       (cons _g298574298580_ __tmp304864))))
                                (declare (not safe))
                                (cons 'primitive: __tmp304863))))
                         (declare (not safe))
                         (cons __tmp304865 __tmp304862))))
                  (declare (not safe))
                  (cons __tmp304861 _g298575298582_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp304860
                                                         '()
                                                         _L298554_
                                                         _L298556_)))))
                                        (declare (not safe))
                                        (cons __tmp304866 __tmp304859))))
                                 (declare (not safe))
                                 (cons __tmp304858 '()))))
                          (declare (not safe))
                          (cons __tmp304867 __tmp304857))))
                   (declare (not safe))
                   (cons __tmp304871 __tmp304856))))
              (___kont304461304462_
               (lambda (_L298440_ _L298442_)
                 (let ((__tmp304886
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp304872
                        (let ((__tmp304882
                               (let ((__tmp304885
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp304883
                                      (let ((__tmp304884
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp304884 '()))))
                                 (declare (not safe))
                                 (cons __tmp304885 __tmp304883)))
                              (__tmp304873
                               (let ((__tmp304874
                                      (let ((__tmp304881
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp304875
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L298440_
                                                  _L298442_))
                                               (let ((__tmp304876
                                                      (lambda (_g298457298461_
                                                               _g298458298464_
                                                               _g298459298466_)
                                                        (let ((__tmp304877
                                                               (let ((__tmp304880
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp304878
                              (let ((__tmp304879
                                     (let ()
                                       (declare (not safe))
                                       (cons _g298457298461_ '()))))
                                (declare (not safe))
                                (cons _g298458298464_ __tmp304879))))
                         (declare (not safe))
                         (cons __tmp304880 __tmp304878))))
                  (declare (not safe))
                  (cons __tmp304877 _g298459298466_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp304876
                                                         '()
                                                         _L298440_
                                                         _L298442_)))))
                                        (declare (not safe))
                                        (cons __tmp304881 __tmp304875))))
                                 (declare (not safe))
                                 (cons __tmp304874 '()))))
                          (declare (not safe))
                          (cons __tmp304882 __tmp304873))))
                   (declare (not safe))
                   (cons __tmp304886 __tmp304872)))))
          (let* ((___match304505304506_
                  (lambda (_e298346298376_
                           _hd298345298380_
                           _tl298344298383_
                           ___splice304463304464_
                           _target298347298386_
                           _tl298349298389_)
                    (letrec ((_loop298350298392_
                              (lambda (_hd298348298396_
                                       _dispatch298354298399_
                                       _arity298355298401_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd298348298396_))
                                    (let ((_e298351298404_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd298348298396_))))
                                      (let ((_lp-tl298353298411_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e298351298404_)))
                                            (_lp-hd298352298408_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e298351298404_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd298352298408_))
                                            (let ((_e298360298414_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd298352298408_))))
                                              (let ((_tl298358298421_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e298360298414_)))
                                                    (_hd298359298418_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e298360298414_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl298358298421_))
                                                    (let ((_e298363298424_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl298358298421_))))
                                                      (let ((_tl298361298431_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e298363298424_)))
                    (_hd298362298428_
                     (let () (declare (not safe)) (##car _e298363298424_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl298361298431_))
                    (_loop298350298392_
                     _lp-tl298353298411_
                     (let ()
                       (declare (not safe))
                       (cons _hd298362298428_ _dispatch298354298399_))
                     (let ()
                       (declare (not safe))
                       (cons _hd298359298418_ _arity298355298401_)))
                    (let () (declare (not safe)) (_g298314298369_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g298314298369_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g298314298369_)))))
                                    (let ((_arity298357298437_
                                           (reverse _arity298355298401_))
                                          (_dispatch298356298434_
                                           (reverse _dispatch298354298399_)))
                                      (___kont304461304462_
                                       _dispatch298356298434_
                                       _arity298357298437_))))))
                      (_loop298350298392_ _target298347298386_ '() '()))))
                 (___match304497304498_
                  (lambda (_e298346298376_ _hd298345298380_ _tl298344298383_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl298344298383_))
                        (let ((___splice304463304464_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl298344298383_
                                  '0))))
                          (let ((_tl298349298389_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice304463304464_ '1)))
                                (_target298347298386_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice304463304464_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl298349298389_))
                                (___match304505304506_
                                 _e298346298376_
                                 _hd298345298380_
                                 _tl298344298383_
                                 ___splice304463304464_
                                 _target298347298386_
                                 _tl298349298389_)
                                (let ()
                                  (declare (not safe))
                                  (_g298314298369_)))))
                        (let () (declare (not safe)) (_g298314298369_)))))
                 (___match304491304492_
                  (lambda (_e298320298476_
                           _hd298319298480_
                           _tl298318298483_
                           _e298323298486_
                           _hd298322298490_
                           _tl298321298493_
                           _e298324298496_
                           ___splice304459304460_
                           _target298325298500_
                           _tl298327298503_)
                    (letrec ((_loop298328298506_
                              (lambda (_hd298326298510_
                                       _dispatch298332298513_
                                       _arity298333298515_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd298326298510_))
                                    (let ((_e298329298518_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd298326298510_))))
                                      (let ((_lp-tl298331298525_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e298329298518_)))
                                            (_lp-hd298330298522_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e298329298518_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd298330298522_))
                                            (let ((_e298338298528_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd298330298522_))))
                                              (let ((_tl298336298535_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e298338298528_)))
                                                    (_hd298337298532_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e298338298528_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl298336298535_))
                                                    (let ((_e298341298538_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl298336298535_))))
                                                      (let ((_tl298339298545_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e298341298538_)))
                    (_hd298340298542_
                     (let () (declare (not safe)) (##car _e298341298538_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl298339298545_))
                    (_loop298328298506_
                     _lp-tl298331298525_
                     (let ()
                       (declare (not safe))
                       (cons _hd298340298542_ _dispatch298332298513_))
                     (let ()
                       (declare (not safe))
                       (cons _hd298337298532_ _arity298333298515_)))
                    (___match304497304498_
                     _e298320298476_
                     _hd298319298480_
                     _tl298318298483_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match304497304498_
                                                     _e298320298476_
                                                     _hd298319298480_
                                                     _tl298318298483_))))
                                            (___match304497304498_
                                             _e298320298476_
                                             _hd298319298480_
                                             _tl298318298483_))))
                                    (let ((_arity298335298551_
                                           (reverse _arity298333298515_))
                                          (_dispatch298334298548_
                                           (reverse _dispatch298332298513_)))
                                      (___kont304457304458_
                                       _dispatch298334298548_
                                       _arity298335298551_))))))
                      (_loop298328298506_ _target298325298500_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx304454304455_))
                (let ((_e298320298476_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx304454304455_))))
                  (let ((_tl298318298483_
                         (let () (declare (not safe)) (##cdr _e298320298476_)))
                        (_hd298319298480_
                         (let ()
                           (declare (not safe))
                           (##car _e298320298476_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl298318298483_))
                        (let ((_e298323298486_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl298318298483_))))
                          (let ((_tl298321298493_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e298323298486_)))
                                (_hd298322298490_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e298323298486_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd298322298490_))
                                (let ((_e298324298496_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd298322298490_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e298324298496_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl298321298493_))
                                          (let ((___splice304459304460_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl298321298493_
                                                    '0))))
                                            (let ((_tl298327298503_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice304459304460_
                                                      '1)))
                                                  (_target298325298500_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice304459304460_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl298327298503_))
                                                  (___match304491304492_
                                                   _e298320298476_
                                                   _hd298319298480_
                                                   _tl298318298483_
                                                   _e298323298486_
                                                   _hd298322298490_
                                                   _tl298321298493_
                                                   _e298324298496_
                                                   ___splice304459304460_
                                                   _target298325298500_
                                                   _tl298327298503_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl298318298483_))
                                                      (let ((___splice304463304464_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl298318298483_ '0))))
                (let ((_tl298349298389_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice304463304464_ '1)))
                      (_target298347298386_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice304463304464_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl298349298389_))
                      (___match304505304506_
                       _e298320298476_
                       _hd298319298480_
                       _tl298318298483_
                       ___splice304463304464_
                       _target298347298386_
                       _tl298349298389_)
                      (let () (declare (not safe)) (_g298314298369_)))))
              (let () (declare (not safe)) (_g298314298369_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl298318298483_))
                                              (let ((___splice304463304464_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl298318298483_
                                                        '0))))
                                                (let ((_tl298349298389_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice304463304464_
                                                          '1)))
                                                      (_target298347298386_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice304463304464_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl298349298389_))
                                                      (___match304505304506_
                                                       _e298320298476_
                                                       _hd298319298480_
                                                       _tl298318298483_
                                                       ___splice304463304464_
                                                       _target298347298386_
                                                       _tl298349298389_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g298314298369_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g298314298369_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl298318298483_))
                                          (let ((___splice304463304464_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl298318298483_
                                                    '0))))
                                            (let ((_tl298349298389_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice304463304464_
                                                      '1)))
                                                  (_target298347298386_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice304463304464_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl298349298389_))
                                                  (___match304505304506_
                                                   _e298320298476_
                                                   _hd298319298480_
                                                   _tl298318298483_
                                                   ___splice304463304464_
                                                   _target298347298386_
                                                   _tl298349298389_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g298314298369_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g298314298369_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl298318298483_))
                                    (let ((___splice304463304464_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl298318298483_
                                              '0))))
                                      (let ((_tl298349298389_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice304463304464_
                                                '1)))
                                            (_target298347298386_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice304463304464_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl298349298389_))
                                            (___match304505304506_
                                             _e298320298476_
                                             _hd298319298480_
                                             _tl298318298483_
                                             ___splice304463304464_
                                             _target298347298386_
                                             _tl298349298389_)
                                            (let ()
                                              (declare (not safe))
                                              (_g298314298369_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g298314298369_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl298318298483_))
                            (let ((___splice304463304464_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl298318298483_
                                      '0))))
                              (let ((_tl298349298389_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice304463304464_
                                        '1)))
                                    (_target298347298386_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice304463304464_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl298349298389_))
                                    (___match304505304506_
                                     _e298320298476_
                                     _hd298319298480_
                                     _tl298318298483_
                                     ___splice304463304464_
                                     _target298347298386_
                                     _tl298349298389_)
                                    (let ()
                                      (declare (not safe))
                                      (_g298314298369_)))))
                            (let () (declare (not safe)) (_g298314298369_))))))
                (let () (declare (not safe)) (_g298314298369_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx298591_)
      (let* ((_g298595298613_
              (lambda (_g298596298609_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g298596298609_))))
             (_g298594298668_
              (lambda (_g298596298617_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g298596298617_))
                    (let ((_e298601298620_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g298596298617_))))
                      (let ((_hd298600298624_
                             (let ()
                               (declare (not safe))
                               (##car _e298601298620_)))
                            (_tl298599298627_
                             (let ()
                               (declare (not safe))
                               (##cdr _e298601298620_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl298599298627_))
                            (let ((_e298604298630_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl298599298627_))))
                              (let ((_hd298603298634_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e298604298630_)))
                                    (_tl298602298637_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e298604298630_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl298602298637_))
                                    (let ((_e298607298640_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl298602298637_))))
                                      (let ((_hd298606298644_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e298607298640_)))
                                            (_tl298605298647_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e298607298640_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl298605298647_))
                                            ((lambda (_L298650_ _L298652_)
                                               (let ((__tmp304900
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp304887
                                                      (let ((__tmp304896
                                                             (let ((__tmp304899
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp304897
                            (let ((__tmp304898
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp304898 '()))))
                       (declare (not safe))
                       (cons __tmp304899 __tmp304897)))
                    (__tmp304888
                     (let ((__tmp304893
                            (let ((__tmp304895
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp304894
                                   (let ()
                                     (declare (not safe))
                                     (cons _L298652_ '()))))
                              (declare (not safe))
                              (cons __tmp304895 __tmp304894)))
                           (__tmp304889
                            (let ((__tmp304890
                                   (let ((__tmp304892
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp304891
                                          (let ()
                                            (declare (not safe))
                                            (cons _L298650_ '()))))
                                     (declare (not safe))
                                     (cons __tmp304892 __tmp304891))))
                              (declare (not safe))
                              (cons __tmp304890 '()))))
                       (declare (not safe))
                       (cons __tmp304893 __tmp304889))))
                (declare (not safe))
                (cons __tmp304896 __tmp304888))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp304900
                                                       __tmp304887)))
                                             _hd298606298644_
                                             _hd298603298634_)
                                            (_g298595298613_
                                             _g298596298617_))))
                                    (_g298595298613_ _g298596298617_))))
                            (_g298595298613_ _g298596298617_))))
                    (_g298595298613_ _g298596298617_)))))
        (_g298594298668_ _$stx298591_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx298672_)
      (let* ((_g298676298694_
              (lambda (_g298677298690_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g298677298690_))))
             (_g298675298749_
              (lambda (_g298677298698_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g298677298698_))
                    (let ((_e298682298701_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g298677298698_))))
                      (let ((_hd298681298705_
                             (let ()
                               (declare (not safe))
                               (##car _e298682298701_)))
                            (_tl298680298708_
                             (let ()
                               (declare (not safe))
                               (##cdr _e298682298701_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl298680298708_))
                            (let ((_e298685298711_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl298680298708_))))
                              (let ((_hd298684298715_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e298685298711_)))
                                    (_tl298683298718_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e298685298711_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl298683298718_))
                                    (let ((_e298688298721_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl298683298718_))))
                                      (let ((_hd298687298725_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e298688298721_)))
                                            (_tl298686298728_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e298688298721_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl298686298728_))
                                            ((lambda (_L298731_ _L298733_)
                                               (let ((__tmp304914
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp304901
                                                      (let ((__tmp304910
                                                             (let ((__tmp304913
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp304911
                            (let ((__tmp304912
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp304912 '()))))
                       (declare (not safe))
                       (cons __tmp304913 __tmp304911)))
                    (__tmp304902
                     (let ((__tmp304907
                            (let ((__tmp304909
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp304908
                                   (let ()
                                     (declare (not safe))
                                     (cons _L298733_ '()))))
                              (declare (not safe))
                              (cons __tmp304909 __tmp304908)))
                           (__tmp304903
                            (let ((__tmp304904
                                   (let ((__tmp304906
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp304905
                                          (let ()
                                            (declare (not safe))
                                            (cons _L298731_ '()))))
                                     (declare (not safe))
                                     (cons __tmp304906 __tmp304905))))
                              (declare (not safe))
                              (cons __tmp304904 '()))))
                       (declare (not safe))
                       (cons __tmp304907 __tmp304903))))
                (declare (not safe))
                (cons __tmp304910 __tmp304902))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp304914
                                                       __tmp304901)))
                                             _hd298687298725_
                                             _hd298684298715_)
                                            (_g298676298694_
                                             _g298677298698_))))
                                    (_g298676298694_ _g298677298698_))))
                            (_g298676298694_ _g298677298698_))))
                    (_g298676298694_ _g298677298698_)))))
        (_g298675298749_ _$stx298672_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx298753_)
      (let* ((___stx304508304509_ _$stx298753_)
             (_g298760298831_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx304508304509_)))))
        (let ((___kont304511304512_
               (lambda (_L299122_ _L299124_)
                 (let ((__tmp304920
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp304915
                        (let ((__tmp304916
                               (let ((__tmp304917
                                      (let ((__tmp304919
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp304918
                                             (let ()
                                               (declare (not safe))
                                               (cons _L299122_ '()))))
                                        (declare (not safe))
                                        (cons __tmp304919 __tmp304918))))
                                 (declare (not safe))
                                 (cons __tmp304917 '()))))
                          (declare (not safe))
                          (cons _L299124_ __tmp304916))))
                   (declare (not safe))
                   (cons __tmp304920 __tmp304915))))
              (___kont304513304514_
               (lambda (_L299041_ _L299043_)
                 (let ((__tmp304929
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp304921
                        (let ((__tmp304922
                               (let ((__tmp304923
                                      (let ((__tmp304928
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp304924
                                             (let ((__tmp304925
                                                    (lambda (_g299062299065_
                                                             _g299063299068_)
                                                      (let ((__tmp304926
                                                             (let ((__tmp304927
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g299062299065_ __tmp304927))))
                (declare (not safe))
                (cons __tmp304926 _g299063299068_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp304925
                                                       '()
                                                       _L299041_))))
                                        (declare (not safe))
                                        (cons __tmp304928 __tmp304924))))
                                 (declare (not safe))
                                 (cons __tmp304923 '()))))
                          (declare (not safe))
                          (cons _L299043_ __tmp304922))))
                   (declare (not safe))
                   (cons __tmp304929 __tmp304921))))
              (___kont304517304518_
               (lambda (_L298953_ _L298955_)
                 (let ((__tmp304936
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp304930
                        (let ((__tmp304931
                               (let ((__tmp304932
                                      (let ((__tmp304935
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp304933
                                             (let ((__tmp304934
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L298953_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp304934))))
                                        (declare (not safe))
                                        (cons __tmp304935 __tmp304933))))
                                 (declare (not safe))
                                 (cons __tmp304932 '()))))
                          (declare (not safe))
                          (cons _L298955_ __tmp304931))))
                   (declare (not safe))
                   (cons __tmp304936 __tmp304930))))
              (___kont304519304520_
               (lambda (_L298888_ _L298890_)
                 (let ((__tmp304946
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp304937
                        (let ((__tmp304938
                               (let ((__tmp304939
                                      (let ((__tmp304945
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp304940
                                             (let ((__tmp304941
                                                    (let ((__tmp304942
                                                           (lambda (_g298907298910_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g298908298913_)
                     (let ((__tmp304943
                            (let ((__tmp304944
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g298907298910_ __tmp304944))))
                       (declare (not safe))
                       (cons __tmp304943 _g298908298913_)))))
              (declare (not safe))
              (foldr1 __tmp304942 '() _L298888_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp304941))))
                                        (declare (not safe))
                                        (cons __tmp304945 __tmp304940))))
                                 (declare (not safe))
                                 (cons __tmp304939 '()))))
                          (declare (not safe))
                          (cons _L298890_ __tmp304938))))
                   (declare (not safe))
                   (cons __tmp304946 __tmp304937)))))
          (let* ((___match304627304628_
                  (lambda (_e298813298838_
                           _hd298812298842_
                           _tl298811298845_
                           _e298816298848_
                           _hd298815298852_
                           _tl298814298855_
                           ___splice304521304522_
                           _target298817298858_
                           _tl298819298861_)
                    (letrec ((_loop298820298864_
                              (lambda (_hd298818298868_ _arity298824298871_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd298818298868_))
                                    (let ((_e298821298874_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd298818298868_))))
                                      (let ((_lp-tl298823298881_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e298821298874_)))
                                            (_lp-hd298822298878_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e298821298874_))))
                                        (_loop298820298864_
                                         _lp-tl298823298881_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd298822298878_
                                                 _arity298824298871_)))))
                                    (let ((_arity298825298884_
                                           (reverse _arity298824298871_)))
                                      (___kont304519304520_
                                       _arity298825298884_
                                       _hd298815298852_))))))
                      (_loop298820298864_ _target298817298858_ '()))))
                 (___match304587304588_
                  (lambda (_e298781298977_
                           _hd298780298981_
                           _tl298779298984_
                           _e298784298987_
                           _hd298783298991_
                           _tl298782298994_
                           _e298787298997_
                           _hd298786299001_
                           _tl298785299004_
                           _e298788299007_
                           ___splice304515304516_
                           _target298789299011_
                           _tl298791299014_)
                    (letrec ((_loop298792299017_
                              (lambda (_hd298790299021_ _arity298796299024_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd298790299021_))
                                    (let ((_e298793299027_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd298790299021_))))
                                      (let ((_lp-tl298795299034_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e298793299027_)))
                                            (_lp-hd298794299031_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e298793299027_))))
                                        (_loop298792299017_
                                         _lp-tl298795299034_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd298794299031_
                                                 _arity298796299024_)))))
                                    (let ((_arity298797299037_
                                           (reverse _arity298796299024_)))
                                      (___kont304513304514_
                                       _arity298797299037_
                                       _hd298783298991_))))))
                      (_loop298792299017_ _target298789299011_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx304508304509_))
                (let ((_e298766299078_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx304508304509_))))
                  (let ((_tl298764299085_
                         (let () (declare (not safe)) (##cdr _e298766299078_)))
                        (_hd298765299082_
                         (let ()
                           (declare (not safe))
                           (##car _e298766299078_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl298764299085_))
                        (let ((_e298769299088_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl298764299085_))))
                          (let ((_tl298767299095_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e298769299088_)))
                                (_hd298768299092_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e298769299088_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl298767299095_))
                                (let ((_e298772299098_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl298767299095_))))
                                  (let ((_tl298770299105_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e298772299098_)))
                                        (_hd298771299102_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e298772299098_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd298771299102_))
                                        (let ((_e298773299108_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd298771299102_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e298773299108_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl298770299105_))
                                                  (let ((_e298776299112_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl298770299105_))))
                                                    (let ((_tl298774299119_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e298776299112_)))
                                                          (_hd298775299116_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e298776299112_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl298774299119_))
                                                          (___kont304511304512_
                                                           _hd298775299116_
                                                           _hd298768299092_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl298770299105_))
                      (let ((___splice304515304516_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl298770299105_ '0))))
                        (let ((_tl298791299014_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice304515304516_ '1)))
                              (_target298789299011_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice304515304516_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl298791299014_))
                              (___match304587304588_
                               _e298766299078_
                               _hd298765299082_
                               _tl298764299085_
                               _e298769299088_
                               _hd298768299092_
                               _tl298767299095_
                               _e298772299098_
                               _hd298771299102_
                               _tl298770299105_
                               _e298773299108_
                               ___splice304515304516_
                               _target298789299011_
                               _tl298791299014_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl298767299095_))
                                  (let ((___splice304521304522_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl298767299095_
                                            '0))))
                                    (let ((_tl298819298861_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice304521304522_
                                              '1)))
                                          (_target298817298858_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice304521304522_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl298819298861_))
                                          (___match304627304628_
                                           _e298766299078_
                                           _hd298765299082_
                                           _tl298764299085_
                                           _e298769299088_
                                           _hd298768299092_
                                           _tl298767299095_
                                           ___splice304521304522_
                                           _target298817298858_
                                           _tl298819298861_)
                                          (let ()
                                            (declare (not safe))
                                            (_g298760298831_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g298760298831_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl298767299095_))
                          (let ((___splice304521304522_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl298767299095_
                                    '0))))
                            (let ((_tl298819298861_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice304521304522_ '1)))
                                  (_target298817298858_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice304521304522_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl298819298861_))
                                  (___match304627304628_
                                   _e298766299078_
                                   _hd298765299082_
                                   _tl298764299085_
                                   _e298769299088_
                                   _hd298768299092_
                                   _tl298767299095_
                                   ___splice304521304522_
                                   _target298817298858_
                                   _tl298819298861_)
                                  (let ()
                                    (declare (not safe))
                                    (_g298760298831_)))))
                          (let () (declare (not safe)) (_g298760298831_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl298770299105_))
                                                      (let ((___splice304515304516_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl298770299105_ '0))))
                (let ((_tl298791299014_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice304515304516_ '1)))
                      (_target298789299011_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice304515304516_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl298791299014_))
                      (___match304587304588_
                       _e298766299078_
                       _hd298765299082_
                       _tl298764299085_
                       _e298769299088_
                       _hd298768299092_
                       _tl298767299095_
                       _e298772299098_
                       _hd298771299102_
                       _tl298770299105_
                       _e298773299108_
                       ___splice304515304516_
                       _target298789299011_
                       _tl298791299014_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl298770299105_))
                          (___kont304517304518_
                           _hd298771299102_
                           _hd298768299092_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl298767299095_))
                              (let ((___splice304521304522_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl298767299095_
                                        '0))))
                                (let ((_tl298819298861_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice304521304522_
                                          '1)))
                                      (_target298817298858_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice304521304522_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl298819298861_))
                                      (___match304627304628_
                                       _e298766299078_
                                       _hd298765299082_
                                       _tl298764299085_
                                       _e298769299088_
                                       _hd298768299092_
                                       _tl298767299095_
                                       ___splice304521304522_
                                       _target298817298858_
                                       _tl298819298861_)
                                      (let ()
                                        (declare (not safe))
                                        (_g298760298831_)))))
                              (let ()
                                (declare (not safe))
                                (_g298760298831_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl298770299105_))
                  (___kont304517304518_ _hd298771299102_ _hd298768299092_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl298767299095_))
                      (let ((___splice304521304522_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl298767299095_ '0))))
                        (let ((_tl298819298861_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice304521304522_ '1)))
                              (_target298817298858_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice304521304522_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl298819298861_))
                              (___match304627304628_
                               _e298766299078_
                               _hd298765299082_
                               _tl298764299085_
                               _e298769299088_
                               _hd298768299092_
                               _tl298767299095_
                               ___splice304521304522_
                               _target298817298858_
                               _tl298819298861_)
                              (let ()
                                (declare (not safe))
                                (_g298760298831_)))))
                      (let () (declare (not safe)) (_g298760298831_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl298770299105_))
                                                  (___kont304517304518_
                                                   _hd298771299102_
                                                   _hd298768299092_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl298767299095_))
                                                      (let ((___splice304521304522_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl298767299095_ '0))))
                (let ((_tl298819298861_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice304521304522_ '1)))
                      (_target298817298858_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice304521304522_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl298819298861_))
                      (___match304627304628_
                       _e298766299078_
                       _hd298765299082_
                       _tl298764299085_
                       _e298769299088_
                       _hd298768299092_
                       _tl298767299095_
                       ___splice304521304522_
                       _target298817298858_
                       _tl298819298861_)
                      (let () (declare (not safe)) (_g298760298831_)))))
              (let () (declare (not safe)) (_g298760298831_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl298770299105_))
                                            (___kont304517304518_
                                             _hd298771299102_
                                             _hd298768299092_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl298767299095_))
                                                (let ((___splice304521304522_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl298767299095_
                                                          '0))))
                                                  (let ((_tl298819298861_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice304521304522_
                                                            '1)))
                                                        (_target298817298858_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice304521304522_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl298819298861_))
                                                        (___match304627304628_
                                                         _e298766299078_
                                                         _hd298765299082_
                                                         _tl298764299085_
                                                         _e298769299088_
                                                         _hd298768299092_
                                                         _tl298767299095_
                                                         ___splice304521304522_
                                                         _target298817298858_
                                                         _tl298819298861_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g298760298831_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g298760298831_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl298767299095_))
                                    (let ((___splice304521304522_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl298767299095_
                                              '0))))
                                      (let ((_tl298819298861_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice304521304522_
                                                '1)))
                                            (_target298817298858_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice304521304522_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl298819298861_))
                                            (___match304627304628_
                                             _e298766299078_
                                             _hd298765299082_
                                             _tl298764299085_
                                             _e298769299088_
                                             _hd298768299092_
                                             _tl298767299095_
                                             ___splice304521304522_
                                             _target298817298858_
                                             _tl298819298861_)
                                            (let ()
                                              (declare (not safe))
                                              (_g298760298831_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g298760298831_))))))
                        (let () (declare (not safe)) (_g298760298831_)))))
                (let () (declare (not safe)) (_g298760298831_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx299148_)
      (let* ((___stx304630304631_ _$stx299148_)
             (_g299153299188_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx304630304631_)))))
        (let ((___kont304633304634_
               (lambda (_L299310_ _L299312_)
                 (let ((__tmp304952
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp304947
                        (let ((__tmp304948
                               (let ((__tmp304949
                                      (let ((__tmp304951
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp304950
                                             (let ()
                                               (declare (not safe))
                                               (cons _L299310_ '()))))
                                        (declare (not safe))
                                        (cons __tmp304951 __tmp304950))))
                                 (declare (not safe))
                                 (cons __tmp304949 '()))))
                          (declare (not safe))
                          (cons _L299312_ __tmp304948))))
                   (declare (not safe))
                   (cons __tmp304952 __tmp304947))))
              (___kont304635304636_
               (lambda (_L299245_ _L299247_)
                 (let ((__tmp304961
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp304953
                        (let ((__tmp304954
                               (let ((__tmp304955
                                      (let ((__tmp304960
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp304956
                                             (let ((__tmp304957
                                                    (lambda (_g299264299267_
                                                             _g299265299270_)
                                                      (let ((__tmp304958
                                                             (let ((__tmp304959
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g299264299267_ __tmp304959))))
                (declare (not safe))
                (cons __tmp304958 _g299265299270_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp304957
                                                       '()
                                                       _L299245_))))
                                        (declare (not safe))
                                        (cons __tmp304960 __tmp304956))))
                                 (declare (not safe))
                                 (cons __tmp304955 '()))))
                          (declare (not safe))
                          (cons _L299247_ __tmp304954))))
                   (declare (not safe))
                   (cons __tmp304961 __tmp304953)))))
          (let ((___match304679304680_
                 (lambda (_e299170299195_
                          _hd299169299199_
                          _tl299168299202_
                          _e299173299205_
                          _hd299172299209_
                          _tl299171299212_
                          ___splice304637304638_
                          _target299174299215_
                          _tl299176299218_)
                   (letrec ((_loop299177299221_
                             (lambda (_hd299175299225_ _arity299181299228_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd299175299225_))
                                   (let ((_e299178299231_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd299175299225_))))
                                     (let ((_lp-tl299180299238_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e299178299231_)))
                                           (_lp-hd299179299235_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e299178299231_))))
                                       (_loop299177299221_
                                        _lp-tl299180299238_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd299179299235_
                                                _arity299181299228_)))))
                                   (let ((_arity299182299241_
                                          (reverse _arity299181299228_)))
                                     (___kont304635304636_
                                      _arity299182299241_
                                      _hd299172299209_))))))
                     (_loop299177299221_ _target299174299215_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx304630304631_))
                (let ((_e299159299280_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx304630304631_))))
                  (let ((_tl299157299287_
                         (let () (declare (not safe)) (##cdr _e299159299280_)))
                        (_hd299158299284_
                         (let ()
                           (declare (not safe))
                           (##car _e299159299280_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl299157299287_))
                        (let ((_e299162299290_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl299157299287_))))
                          (let ((_tl299160299297_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e299162299290_)))
                                (_hd299161299294_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e299162299290_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl299160299297_))
                                (let ((_e299165299300_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl299160299297_))))
                                  (let ((_tl299163299307_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e299165299300_)))
                                        (_hd299164299304_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e299165299300_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl299163299307_))
                                        (___kont304633304634_
                                         _hd299164299304_
                                         _hd299161299294_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl299160299297_))
                                            (let ((___splice304637304638_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl299160299297_
                                                      '0))))
                                              (let ((_tl299176299218_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice304637304638_
                                                        '1)))
                                                    (_target299174299215_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice304637304638_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl299176299218_))
                                                    (___match304679304680_
                                                     _e299159299280_
                                                     _hd299158299284_
                                                     _tl299157299287_
                                                     _e299162299290_
                                                     _hd299161299294_
                                                     _tl299160299297_
                                                     ___splice304637304638_
                                                     _target299174299215_
                                                     _tl299176299218_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g299153299188_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g299153299188_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl299160299297_))
                                    (let ((___splice304637304638_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl299160299297_
                                              '0))))
                                      (let ((_tl299176299218_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice304637304638_
                                                '1)))
                                            (_target299174299215_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice304637304638_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl299176299218_))
                                            (___match304679304680_
                                             _e299159299280_
                                             _hd299158299284_
                                             _tl299157299287_
                                             _e299162299290_
                                             _hd299161299294_
                                             _tl299160299297_
                                             ___splice304637304638_
                                             _target299174299215_
                                             _tl299176299218_)
                                            (let ()
                                              (declare (not safe))
                                              (_g299153299188_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g299153299188_))))))
                        (let () (declare (not safe)) (_g299153299188_)))))
                (let () (declare (not safe)) (_g299153299188_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx299332_)
      (let* ((_g299336299371_
              (lambda (_g299337299367_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g299337299367_))))
             (_g299335299499_
              (lambda (_g299337299375_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g299337299375_))
                    (let ((_e299342299378_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g299337299375_))))
                      (let ((_hd299341299382_
                             (let ()
                               (declare (not safe))
                               (##car _e299342299378_)))
                            (_tl299340299385_
                             (let ()
                               (declare (not safe))
                               (##cdr _e299342299378_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl299340299385_))
                            (let ((_g304962_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl299340299385_
                                      '0))))
                              (begin
                                (let ((_g304963_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g304962_)
                                             (##vector-length _g304962_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g304963_ 2)))
                                      (error "Context expects 2 values"
                                             _g304963_)))
                                (let ((_target299343299388_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g304962_ 0)))
                                      (_tl299345299391_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g304962_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl299345299391_))
                                      (letrec ((_loop299346299394_
                                                (lambda (_hd299344299398_
                                                         _arity299350299401_
                                                         _prim299351299403_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd299344299398_))
                                                      (let ((_e299347299406_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd299344299398_))))
                (let ((_lp-hd299348299410_
                       (let () (declare (not safe)) (##car _e299347299406_)))
                      (_lp-tl299349299413_
                       (let () (declare (not safe)) (##cdr _e299347299406_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd299348299410_))
                      (let ((_e299356299416_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd299348299410_))))
                        (let ((_hd299355299420_
                               (let ()
                                 (declare (not safe))
                                 (##car _e299356299416_)))
                              (_tl299354299423_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e299356299416_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl299354299423_))
                              (let ((_g304972_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl299354299423_
                                        '0))))
                                (begin
                                  (let ((_g304973_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g304972_)
                                               (##vector-length _g304972_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g304973_ 2)))
                                        (error "Context expects 2 values"
                                               _g304973_)))
                                  (let ((_target299357299426_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g304972_ 0)))
                                        (_tl299359299429_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g304972_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl299359299429_))
                                        (letrec ((_loop299360299432_
                                                  (lambda (_hd299358299436_
                                                           _arity299364299439_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd299358299436_))
                                                        (let ((_e299361299442_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd299358299436_))))
                  (let ((_lp-hd299362299446_
                         (let () (declare (not safe)) (##car _e299361299442_)))
                        (_lp-tl299363299449_
                         (let ()
                           (declare (not safe))
                           (##cdr _e299361299442_))))
                    (_loop299360299432_
                     _lp-tl299363299449_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd299362299446_ _arity299364299439_)))))
                (let ((_arity299365299452_ (reverse _arity299364299439_)))
                  (_loop299346299394_
                   _lp-tl299349299413_
                   (let ()
                     (declare (not safe))
                     (cons _arity299365299452_ _arity299350299401_))
                   (let ()
                     (declare (not safe))
                     (cons _hd299355299420_ _prim299351299403_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop299360299432_
                                           _target299357299426_
                                           '()))
                                        (_g299336299371_ _g299337299375_)))))
                              (_g299336299371_ _g299337299375_))))
                      (_g299336299371_ _g299337299375_))))
              (let ((_arity299352299456_ (reverse _arity299350299401_))
                    (_prim299353299459_ (reverse _prim299351299403_)))
                ((lambda (_L299462_ _L299464_)
                   (let ((__tmp304971
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp304964
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L299462_
                               _L299464_))
                            (let ((__tmp304965
                                   (lambda (_g299479299485_
                                            _g299480299488_
                                            _g299481299490_)
                                     (let ((__tmp304966
                                            (let ((__tmp304970
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp304967
                                                   (let ((__tmp304968
                                                          (let ((__tmp304969
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g299482299493_ _g299483299496_)
                           (let ()
                             (declare (not safe))
                             (cons _g299482299493_ _g299483299496_)))))
                    (declare (not safe))
                    (foldr1 __tmp304969 '() _g299479299485_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g299480299488_
                                                           __tmp304968))))
                                              (declare (not safe))
                                              (cons __tmp304970 __tmp304967))))
                                       (declare (not safe))
                                       (cons __tmp304966 _g299481299490_)))))
                              (declare (not safe))
                              (foldr2 __tmp304965 '() _L299462_ _L299464_)))))
                     (declare (not safe))
                     (cons __tmp304971 __tmp304964)))
                 _arity299352299456_
                 _prim299353299459_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop299346299394_
                                         _target299343299388_
                                         '()
                                         '()))
                                      (_g299336299371_ _g299337299375_)))))
                            (_g299336299371_ _g299337299375_))))
                    (_g299336299371_ _g299337299375_)))))
        (_g299335299499_ _$stx299332_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx299505_)
      (let* ((_g299509299544_
              (lambda (_g299510299540_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g299510299540_))))
             (_g299508299672_
              (lambda (_g299510299548_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g299510299548_))
                    (let ((_e299515299551_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g299510299548_))))
                      (let ((_hd299514299555_
                             (let ()
                               (declare (not safe))
                               (##car _e299515299551_)))
                            (_tl299513299558_
                             (let ()
                               (declare (not safe))
                               (##cdr _e299515299551_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl299513299558_))
                            (let ((_g304974_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl299513299558_
                                      '0))))
                              (begin
                                (let ((_g304975_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g304974_)
                                             (##vector-length _g304974_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g304975_ 2)))
                                      (error "Context expects 2 values"
                                             _g304975_)))
                                (let ((_target299516299561_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g304974_ 0)))
                                      (_tl299518299564_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g304974_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl299518299564_))
                                      (letrec ((_loop299519299567_
                                                (lambda (_hd299517299571_
                                                         _arity299523299574_
                                                         _prim299524299576_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd299517299571_))
                                                      (let ((_e299520299579_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd299517299571_))))
                (let ((_lp-hd299521299583_
                       (let () (declare (not safe)) (##car _e299520299579_)))
                      (_lp-tl299522299586_
                       (let () (declare (not safe)) (##cdr _e299520299579_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd299521299583_))
                      (let ((_e299529299589_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd299521299583_))))
                        (let ((_hd299528299593_
                               (let ()
                                 (declare (not safe))
                                 (##car _e299529299589_)))
                              (_tl299527299596_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e299529299589_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl299527299596_))
                              (let ((_g304984_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl299527299596_
                                        '0))))
                                (begin
                                  (let ((_g304985_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g304984_)
                                               (##vector-length _g304984_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g304985_ 2)))
                                        (error "Context expects 2 values"
                                               _g304985_)))
                                  (let ((_target299530299599_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g304984_ 0)))
                                        (_tl299532299602_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g304984_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl299532299602_))
                                        (letrec ((_loop299533299605_
                                                  (lambda (_hd299531299609_
                                                           _arity299537299612_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd299531299609_))
                                                        (let ((_e299534299615_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd299531299609_))))
                  (let ((_lp-hd299535299619_
                         (let () (declare (not safe)) (##car _e299534299615_)))
                        (_lp-tl299536299622_
                         (let ()
                           (declare (not safe))
                           (##cdr _e299534299615_))))
                    (_loop299533299605_
                     _lp-tl299536299622_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd299535299619_ _arity299537299612_)))))
                (let ((_arity299538299625_ (reverse _arity299537299612_)))
                  (_loop299519299567_
                   _lp-tl299522299586_
                   (let ()
                     (declare (not safe))
                     (cons _arity299538299625_ _arity299523299574_))
                   (let ()
                     (declare (not safe))
                     (cons _hd299528299593_ _prim299524299576_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop299533299605_
                                           _target299530299599_
                                           '()))
                                        (_g299509299544_ _g299510299548_)))))
                              (_g299509299544_ _g299510299548_))))
                      (_g299509299544_ _g299510299548_))))
              (let ((_arity299525299629_ (reverse _arity299523299574_))
                    (_prim299526299632_ (reverse _prim299524299576_)))
                ((lambda (_L299635_ _L299637_)
                   (let ((__tmp304983
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp304976
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L299635_
                               _L299637_))
                            (let ((__tmp304977
                                   (lambda (_g299652299658_
                                            _g299653299661_
                                            _g299654299663_)
                                     (let ((__tmp304978
                                            (let ((__tmp304982
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp304979
                                                   (let ((__tmp304980
                                                          (let ((__tmp304981
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g299655299666_ _g299656299669_)
                           (let ()
                             (declare (not safe))
                             (cons _g299655299666_ _g299656299669_)))))
                    (declare (not safe))
                    (foldr1 __tmp304981 '() _g299652299658_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g299653299661_
                                                           __tmp304980))))
                                              (declare (not safe))
                                              (cons __tmp304982 __tmp304979))))
                                       (declare (not safe))
                                       (cons __tmp304978 _g299654299663_)))))
                              (declare (not safe))
                              (foldr2 __tmp304977 '() _L299635_ _L299637_)))))
                     (declare (not safe))
                     (cons __tmp304983 __tmp304976)))
                 _arity299525299629_
                 _prim299526299632_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop299519299567_
                                         _target299516299561_
                                         '()
                                         '()))
                                      (_g299509299544_ _g299510299548_)))))
                            (_g299509299544_ _g299510299548_))))
                    (_g299509299544_ _g299510299548_)))))
        (_g299508299672_ _$stx299505_)))))
