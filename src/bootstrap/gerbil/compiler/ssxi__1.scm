(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx296594_)
      (let* ((_g296598296616_
              (lambda (_g296599296612_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g296599296612_))))
             (_g296597296671_
              (lambda (_g296599296620_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g296599296620_))
                    (let ((_e296604296623_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g296599296620_))))
                      (let ((_hd296603296627_
                             (let ()
                               (declare (not safe))
                               (##car _e296604296623_)))
                            (_tl296602296630_
                             (let ()
                               (declare (not safe))
                               (##cdr _e296604296623_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl296602296630_))
                            (let ((_e296607296633_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl296602296630_))))
                              (let ((_hd296606296637_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e296607296633_)))
                                    (_tl296605296640_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e296607296633_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl296605296640_))
                                    (let ((_e296610296643_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl296605296640_))))
                                      (let ((_hd296609296647_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e296610296643_)))
                                            (_tl296608296650_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e296610296643_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl296608296650_))
                                            ((lambda (_L296653_ _L296655_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L296655_))
                                                   (let ((__tmp304685
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp304680
                                                          (let ((__tmp304682
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp304684
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp304683
                                (let ()
                                  (declare (not safe))
                                  (cons _L296655_ '()))))
                           (declare (not safe))
                           (cons __tmp304684 __tmp304683)))
                        (__tmp304681
                         (let () (declare (not safe)) (cons _L296653_ '()))))
                    (declare (not safe))
                    (cons __tmp304682 __tmp304681))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp304685
                                                           __tmp304680))
                                                   (_g296598296616_
                                                    _g296599296620_)))
                                             _hd296609296647_
                                             _hd296606296637_)
                                            (_g296598296616_
                                             _g296599296620_))))
                                    (_g296598296616_ _g296599296620_))))
                            (_g296598296616_ _g296599296620_))))
                    (_g296598296616_ _g296599296620_)))))
        (_g296597296671_ _$stx296594_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx296675_)
      (let* ((_g296679296708_
              (lambda (_g296680296704_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g296680296704_))))
             (_g296678296808_
              (lambda (_g296680296712_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g296680296712_))
                    (let ((_e296685296715_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g296680296712_))))
                      (let ((_hd296684296719_
                             (let ()
                               (declare (not safe))
                               (##car _e296685296715_)))
                            (_tl296683296722_
                             (let ()
                               (declare (not safe))
                               (##cdr _e296685296715_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl296683296722_))
                            (let ((_g304686_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl296683296722_
                                      '0))))
                              (begin
                                (let ((_g304687_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g304686_)
                                             (##vector-length _g304686_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g304687_ 2)))
                                      (error "Context expects 2 values"
                                             _g304687_)))
                                (let ((_target296686296725_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g304686_ 0)))
                                      (_tl296688296728_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g304686_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl296688296728_))
                                      (letrec ((_loop296689296731_
                                                (lambda (_hd296687296735_
                                                         _type296693296738_
                                                         _symbol296694296740_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd296687296735_))
                                                      (let ((_e296690296743_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd296687296735_))))
                (let ((_lp-hd296691296747_
                       (let () (declare (not safe)) (##car _e296690296743_)))
                      (_lp-tl296692296750_
                       (let () (declare (not safe)) (##cdr _e296690296743_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd296691296747_))
                      (let ((_e296699296753_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd296691296747_))))
                        (let ((_hd296698296757_
                               (let ()
                                 (declare (not safe))
                                 (##car _e296699296753_)))
                              (_tl296697296760_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e296699296753_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl296697296760_))
                              (let ((_e296702296763_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl296697296760_))))
                                (let ((_hd296701296767_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e296702296763_)))
                                      (_tl296700296770_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e296702296763_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl296700296770_))
                                      (_loop296689296731_
                                       _lp-tl296692296750_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd296701296767_
                                               _type296693296738_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd296698296757_
                                               _symbol296694296740_)))
                                      (_g296679296708_ _g296680296712_))))
                              (_g296679296708_ _g296680296712_))))
                      (_g296679296708_ _g296680296712_))))
              (let ((_type296695296773_ (reverse _type296693296738_))
                    (_symbol296696296776_ (reverse _symbol296694296740_)))
                ((lambda (_L296779_ _L296781_)
                   (let ((__tmp304694
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp304688
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L296779_
                               _L296781_))
                            (let ((__tmp304689
                                   (lambda (_g296796296800_
                                            _g296797296803_
                                            _g296798296805_)
                                     (let ((__tmp304690
                                            (let ((__tmp304693
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp304691
                                                   (let ((__tmp304692
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g296796296800_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g296797296803_
                                                           __tmp304692))))
                                              (declare (not safe))
                                              (cons __tmp304693 __tmp304691))))
                                       (declare (not safe))
                                       (cons __tmp304690 _g296798296805_)))))
                              (declare (not safe))
                              (foldr2 __tmp304689 '() _L296779_ _L296781_)))))
                     (declare (not safe))
                     (cons __tmp304694 __tmp304688)))
                 _type296695296773_
                 _symbol296696296776_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop296689296731_
                                         _target296686296725_
                                         '()
                                         '()))
                                      (_g296679296708_ _g296680296712_)))))
                            (_g296679296708_ _g296680296712_))))
                    (_g296679296708_ _g296680296712_)))))
        (_g296678296808_ _$stx296675_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx296813_)
      (let* ((___stx304245304246_ _$stx296813_)
             (_g296818296860_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx304245304246_)))))
        (let ((___kont304248304249_
               (lambda (_L296988_ _L296990_ _L296991_ _L296992_)
                 (let ((__tmp304708
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp304695
                        (let ((__tmp304705
                               (let ((__tmp304707
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp304706
                                      (let ()
                                        (declare (not safe))
                                        (cons _L296992_ '()))))
                                 (declare (not safe))
                                 (cons __tmp304707 __tmp304706)))
                              (__tmp304696
                               (let ((__tmp304702
                                      (let ((__tmp304704
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp304703
                                             (let ()
                                               (declare (not safe))
                                               (cons _L296991_ '()))))
                                        (declare (not safe))
                                        (cons __tmp304704 __tmp304703)))
                                     (__tmp304697
                                      (let ((__tmp304699
                                             (let ((__tmp304701
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp304700
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L296990_ '()))))
                                               (declare (not safe))
                                               (cons __tmp304701 __tmp304700)))
                                            (__tmp304698
                                             (let ()
                                               (declare (not safe))
                                               (cons _L296988_ '()))))
                                        (declare (not safe))
                                        (cons __tmp304699 __tmp304698))))
                                 (declare (not safe))
                                 (cons __tmp304702 __tmp304697))))
                          (declare (not safe))
                          (cons __tmp304705 __tmp304696))))
                   (declare (not safe))
                   (cons __tmp304708 __tmp304695))))
              (___kont304250304251_
               (lambda (_L296907_ _L296909_ _L296910_ _L296911_)
                 (let ((__tmp304709
                        (let ((__tmp304710
                               (let ((__tmp304711
                                      (let ((__tmp304712
                                             (let ((__tmp304713
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp304713 '()))))
                                        (declare (not safe))
                                        (cons _L296907_ __tmp304712))))
                                 (declare (not safe))
                                 (cons _L296909_ __tmp304711))))
                          (declare (not safe))
                          (cons _L296910_ __tmp304710))))
                   (declare (not safe))
                   (cons _L296911_ __tmp304709)))))
          (let ((___match304284304285_
                 (lambda (_e296826296938_
                          _hd296825296942_
                          _tl296824296945_
                          _e296829296948_
                          _hd296828296952_
                          _tl296827296955_
                          _e296832296958_
                          _hd296831296962_
                          _tl296830296965_
                          _e296835296968_
                          _hd296834296972_
                          _tl296833296975_
                          _e296838296978_
                          _hd296837296982_
                          _tl296836296985_)
                   (let ((_L296988_ _hd296837296982_)
                         (_L296990_ _hd296834296972_)
                         (_L296991_ _hd296831296962_)
                         (_L296992_ _hd296828296952_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L296992_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L296991_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L296990_)))
                         (___kont304248304249_
                          _L296988_
                          _L296990_
                          _L296991_
                          _L296992_)
                         (let () (declare (not safe)) (_g296818296860_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx304245304246_))
                (let ((_e296826296938_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx304245304246_))))
                  (let ((_tl296824296945_
                         (let () (declare (not safe)) (##cdr _e296826296938_)))
                        (_hd296825296942_
                         (let ()
                           (declare (not safe))
                           (##car _e296826296938_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl296824296945_))
                        (let ((_e296829296948_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl296824296945_))))
                          (let ((_tl296827296955_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e296829296948_)))
                                (_hd296828296952_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e296829296948_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl296827296955_))
                                (let ((_e296832296958_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl296827296955_))))
                                  (let ((_tl296830296965_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e296832296958_)))
                                        (_hd296831296962_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e296832296958_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl296830296965_))
                                        (let ((_e296835296968_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl296830296965_))))
                                          (let ((_tl296833296975_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e296835296968_)))
                                                (_hd296834296972_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e296835296968_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl296833296975_))
                                                (let ((_e296838296978_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl296833296975_))))
                                                  (let ((_tl296836296985_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e296838296978_)))
                                                        (_hd296837296982_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e296838296978_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl296836296985_))
                                                        (___match304284304285_
                                                         _e296826296938_
                                                         _hd296825296942_
                                                         _tl296824296945_
                                                         _e296829296948_
                                                         _hd296828296952_
                                                         _tl296827296955_
                                                         _e296832296958_
                                                         _hd296831296962_
                                                         _tl296830296965_
                                                         _e296835296968_
                                                         _hd296834296972_
                                                         _tl296833296975_
                                                         _e296838296978_
                                                         _hd296837296982_
                                                         _tl296836296985_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g296818296860_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl296833296975_))
                                                    (___kont304250304251_
                                                     _hd296834296972_
                                                     _hd296831296962_
                                                     _hd296828296952_
                                                     _hd296825296942_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g296818296860_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g296818296860_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g296818296860_)))))
                        (let () (declare (not safe)) (_g296818296860_)))))
                (let () (declare (not safe)) (_g296818296860_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx297017_)
      (let* ((_g297021297056_
              (lambda (_g297022297052_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g297022297052_))))
             (_g297020297175_
              (lambda (_g297022297060_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g297022297060_))
                    (let ((_e297028297063_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g297022297060_))))
                      (let ((_hd297027297067_
                             (let ()
                               (declare (not safe))
                               (##car _e297028297063_)))
                            (_tl297026297070_
                             (let ()
                               (declare (not safe))
                               (##cdr _e297028297063_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl297026297070_))
                            (let ((_g304714_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl297026297070_
                                      '0))))
                              (begin
                                (let ((_g304715_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g304714_)
                                             (##vector-length _g304714_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g304715_ 2)))
                                      (error "Context expects 2 values"
                                             _g304715_)))
                                (let ((_target297029297073_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g304714_ 0)))
                                      (_tl297031297076_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g304714_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl297031297076_))
                                      (letrec ((_loop297032297079_
                                                (lambda (_hd297030297083_
                                                         _symbol297036297086_
                                                         _method297037297088_
                                                         _type-t297038297090_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd297030297083_))
                                                      (let ((_e297033297093_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd297030297083_))))
                (let ((_lp-hd297034297097_
                       (let () (declare (not safe)) (##car _e297033297093_)))
                      (_lp-tl297035297100_
                       (let () (declare (not safe)) (##cdr _e297033297093_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd297034297097_))
                      (let ((_e297044297103_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd297034297097_))))
                        (let ((_hd297043297107_
                               (let ()
                                 (declare (not safe))
                                 (##car _e297044297103_)))
                              (_tl297042297110_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e297044297103_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl297042297110_))
                              (let ((_e297047297113_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl297042297110_))))
                                (let ((_hd297046297117_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e297047297113_)))
                                      (_tl297045297120_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e297047297113_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl297045297120_))
                                      (let ((_e297050297123_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl297045297120_))))
                                        (let ((_hd297049297127_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e297050297123_)))
                                              (_tl297048297130_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e297050297123_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl297048297130_))
                                              (_loop297032297079_
                                               _lp-tl297035297100_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd297049297127_
                                                       _symbol297036297086_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd297046297117_
                                                       _method297037297088_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd297043297107_
                                                       _type-t297038297090_)))
                                              (_g297021297056_
                                               _g297022297060_))))
                                      (_g297021297056_ _g297022297060_))))
                              (_g297021297056_ _g297022297060_))))
                      (_g297021297056_ _g297022297060_))))
              (let ((_symbol297039297133_ (reverse _symbol297036297086_))
                    (_method297040297136_ (reverse _method297037297088_))
                    (_type-t297041297138_ (reverse _type-t297038297090_)))
                ((lambda (_L297141_ _L297143_ _L297144_)
                   (let ((__tmp304723
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp304716
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L297141_
                               _L297143_
                               _L297144_))
                            (let ((__tmp304717
                                   (lambda (_g297160297165_
                                            _g297161297168_
                                            _g297162297170_
                                            _g297163297172_)
                                     (let ((__tmp304718
                                            (let ((__tmp304722
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp304719
                                                   (let ((__tmp304720
                                                          (let ((__tmp304721
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g297160297165_ '()))))
                    (declare (not safe))
                    (cons _g297161297168_ __tmp304721))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g297162297170_
                                                           __tmp304720))))
                                              (declare (not safe))
                                              (cons __tmp304722 __tmp304719))))
                                       (declare (not safe))
                                       (cons __tmp304718 _g297163297172_)))))
                              (declare (not safe))
                              (foldr* __tmp304717
                                      '()
                                      _L297141_
                                      _L297143_
                                      _L297144_)))))
                     (declare (not safe))
                     (cons __tmp304723 __tmp304716)))
                 _symbol297039297133_
                 _method297040297136_
                 _type-t297041297138_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop297032297079_
                                         _target297029297073_
                                         '()
                                         '()
                                         '()))
                                      (_g297021297056_ _g297022297060_)))))
                            (_g297021297056_ _g297022297060_))))
                    (_g297021297056_ _g297022297060_)))))
        (_g297020297175_ _$stx297017_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx297180_)
      (let* ((_g297184297217_
              (lambda (_g297185297213_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g297185297213_))))
             (_g297183297331_
              (lambda (_g297185297221_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g297185297221_))
                    (let ((_e297191297224_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g297185297221_))))
                      (let ((_hd297190297228_
                             (let ()
                               (declare (not safe))
                               (##car _e297191297224_)))
                            (_tl297189297231_
                             (let ()
                               (declare (not safe))
                               (##cdr _e297191297224_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl297189297231_))
                            (let ((_e297194297234_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl297189297231_))))
                              (let ((_hd297193297238_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e297194297234_)))
                                    (_tl297192297241_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e297194297234_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl297192297241_))
                                    (let ((_g304724_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl297192297241_
                                              '0))))
                                      (begin
                                        (let ((_g304725_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g304724_)
                                                     (##vector-length
                                                      _g304724_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g304725_ 2)))
                                              (error "Context expects 2 values"
                                                     _g304725_)))
                                        (let ((_target297195297244_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g304724_ 0)))
                                              (_tl297197297247_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g304724_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl297197297247_))
                                              (letrec ((_loop297198297250_
                                                        (lambda (_hd297196297254_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol297202297257_
                         _method297203297259_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd297196297254_))
                      (let ((_e297199297262_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd297196297254_))))
                        (let ((_lp-hd297200297266_
                               (let ()
                                 (declare (not safe))
                                 (##car _e297199297262_)))
                              (_lp-tl297201297269_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e297199297262_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd297200297266_))
                              (let ((_e297208297272_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd297200297266_))))
                                (let ((_hd297207297276_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e297208297272_)))
                                      (_tl297206297279_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e297208297272_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl297206297279_))
                                      (let ((_e297211297282_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl297206297279_))))
                                        (let ((_hd297210297286_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e297211297282_)))
                                              (_tl297209297289_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e297211297282_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl297209297289_))
                                              (_loop297198297250_
                                               _lp-tl297201297269_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd297210297286_
                                                       _symbol297202297257_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd297207297276_
                                                       _method297203297259_)))
                                              (_g297184297217_
                                               _g297185297221_))))
                                      (_g297184297217_ _g297185297221_))))
                              (_g297184297217_ _g297185297221_))))
                      (let ((_symbol297204297292_
                             (reverse _symbol297202297257_))
                            (_method297205297295_
                             (reverse _method297203297259_)))
                        ((lambda (_L297298_ _L297300_ _L297301_)
                           (let ((__tmp304733
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp304726
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L297298_
                                       _L297300_))
                                    (let ((__tmp304727
                                           (lambda (_g297319297323_
                                                    _g297320297326_
                                                    _g297321297328_)
                                             (let ((__tmp304728
                                                    (let ((__tmp304732
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp304729
                                                           (let ((__tmp304730
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp304731
                                 (let ()
                                   (declare (not safe))
                                   (cons _g297319297323_ '()))))
                            (declare (not safe))
                            (cons _g297320297326_ __tmp304731))))
                     (declare (not safe))
                     (cons _L297301_ __tmp304730))))
              (declare (not safe))
              (cons __tmp304732 __tmp304729))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp304728
                                                     _g297321297328_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp304727
                                              '()
                                              _L297298_
                                              _L297300_)))))
                             (declare (not safe))
                             (cons __tmp304733 __tmp304726)))
                         _symbol297204297292_
                         _method297205297295_
                         _hd297193297238_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop297198297250_
                                                 _target297195297244_
                                                 '()
                                                 '()))
                                              (_g297184297217_
                                               _g297185297221_)))))
                                    (_g297184297217_ _g297185297221_))))
                            (_g297184297217_ _g297185297221_))))
                    (_g297184297217_ _g297185297221_)))))
        (_g297183297331_ _$stx297180_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx297336_)
      (let* ((_g297340297354_
              (lambda (_g297341297350_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g297341297350_))))
             (_g297339297395_
              (lambda (_g297341297358_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g297341297358_))
                    (let ((_e297345297361_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g297341297358_))))
                      (let ((_hd297344297365_
                             (let ()
                               (declare (not safe))
                               (##car _e297345297361_)))
                            (_tl297343297368_
                             (let ()
                               (declare (not safe))
                               (##cdr _e297345297361_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl297343297368_))
                            (let ((_e297348297371_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl297343297368_))))
                              (let ((_hd297347297375_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e297348297371_)))
                                    (_tl297346297378_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e297348297371_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl297346297378_))
                                    ((lambda (_L297381_)
                                       (let ((__tmp304738
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp304734
                                              (let ((__tmp304735
                                                     (let ((__tmp304737
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp304736
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L297381_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp304737 __tmp304736))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp304735 '()))))
                                         (declare (not safe))
                                         (cons __tmp304738 __tmp304734)))
                                     _hd297347297375_)
                                    (_g297340297354_ _g297341297358_))))
                            (_g297340297354_ _g297341297358_))))
                    (_g297340297354_ _g297341297358_)))))
        (_g297339297395_ _$stx297336_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx297399_)
      (let* ((_g297403297449_
              (lambda (_g297404297445_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g297404297445_))))
             (_g297402297602_
              (lambda (_g297404297453_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g297404297453_))
                    (let ((_e297416297456_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g297404297453_))))
                      (let ((_hd297415297460_
                             (let ()
                               (declare (not safe))
                               (##car _e297416297456_)))
                            (_tl297414297463_
                             (let ()
                               (declare (not safe))
                               (##cdr _e297416297456_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl297414297463_))
                            (let ((_e297419297466_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl297414297463_))))
                              (let ((_hd297418297470_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e297419297466_)))
                                    (_tl297417297473_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e297419297466_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl297417297473_))
                                    (let ((_e297422297476_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl297417297473_))))
                                      (let ((_hd297421297480_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e297422297476_)))
                                            (_tl297420297483_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e297422297476_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl297420297483_))
                                            (let ((_e297425297486_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl297420297483_))))
                                              (let ((_hd297424297490_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e297425297486_)))
                                                    (_tl297423297493_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e297425297486_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl297423297493_))
                                                    (let ((_e297428297496_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl297423297493_))))
                                                      (let ((_hd297427297500_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e297428297496_)))
                    (_tl297426297503_
                     (let () (declare (not safe)) (##cdr _e297428297496_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl297426297503_))
                    (let ((_e297431297506_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl297426297503_))))
                      (let ((_hd297430297510_
                             (let ()
                               (declare (not safe))
                               (##car _e297431297506_)))
                            (_tl297429297513_
                             (let ()
                               (declare (not safe))
                               (##cdr _e297431297506_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl297429297513_))
                            (let ((_e297434297516_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl297429297513_))))
                              (let ((_hd297433297520_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e297434297516_)))
                                    (_tl297432297523_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e297434297516_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl297432297523_))
                                    (let ((_e297437297526_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl297432297523_))))
                                      (let ((_hd297436297530_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e297437297526_)))
                                            (_tl297435297533_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e297437297526_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl297435297533_))
                                            (let ((_e297440297536_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl297435297533_))))
                                              (let ((_hd297439297540_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e297440297536_)))
                                                    (_tl297438297543_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e297440297536_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl297438297543_))
                                                    (let ((_e297443297546_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl297438297543_))))
                                                      (let ((_hd297442297550_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e297443297546_)))
                    (_tl297441297553_
                     (let () (declare (not safe)) (##cdr _e297443297546_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl297441297553_))
                    ((lambda (_L297556_
                              _L297558_
                              _L297559_
                              _L297560_
                              _L297561_
                              _L297562_
                              _L297563_
                              _L297564_
                              _L297565_)
                       (let ((__tmp304775
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'make-!class)))
                             (__tmp304739
                              (let ((__tmp304772
                                     (let ((__tmp304774
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'quote)))
                                           (__tmp304773
                                            (let ()
                                              (declare (not safe))
                                              (cons _L297565_ '()))))
                                       (declare (not safe))
                                       (cons __tmp304774 __tmp304773)))
                                    (__tmp304740
                                     (let ((__tmp304769
                                            (let ((__tmp304771
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote)))
                                                  (__tmp304770
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L297564_ '()))))
                                              (declare (not safe))
                                              (cons __tmp304771 __tmp304770)))
                                           (__tmp304741
                                            (let ((__tmp304766
                                                   (let ((__tmp304768
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'quote)))
                                                         (__tmp304767
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L297563_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp304768
                                                           __tmp304767)))
                                                  (__tmp304742
                                                   (let ((__tmp304763
                                                          (let ((__tmp304765
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote)))
                        (__tmp304764
                         (let () (declare (not safe)) (cons _L297562_ '()))))
                    (declare (not safe))
                    (cons __tmp304765 __tmp304764)))
                 (__tmp304743
                  (let ((__tmp304760
                         (let ((__tmp304762
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp304761
                                (let ()
                                  (declare (not safe))
                                  (cons _L297561_ '()))))
                           (declare (not safe))
                           (cons __tmp304762 __tmp304761)))
                        (__tmp304744
                         (let ((__tmp304757
                                (let ((__tmp304759
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote)))
                                      (__tmp304758
                                       (let ()
                                         (declare (not safe))
                                         (cons _L297560_ '()))))
                                  (declare (not safe))
                                  (cons __tmp304759 __tmp304758)))
                               (__tmp304745
                                (let ((__tmp304754
                                       (let ((__tmp304756
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'quote)))
                                             (__tmp304755
                                              (let ()
                                                (declare (not safe))
                                                (cons _L297559_ '()))))
                                         (declare (not safe))
                                         (cons __tmp304756 __tmp304755)))
                                      (__tmp304746
                                       (let ((__tmp304751
                                              (let ((__tmp304753
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'quote)))
                                                    (__tmp304752
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L297558_ '()))))
                                                (declare (not safe))
                                                (cons __tmp304753
                                                      __tmp304752)))
                                             (__tmp304747
                                              (let ((__tmp304748
                                                     (let ((__tmp304750
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp304749
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L297556_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp304750 __tmp304749))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp304748 '()))))
                                         (declare (not safe))
                                         (cons __tmp304751 __tmp304747))))
                                  (declare (not safe))
                                  (cons __tmp304754 __tmp304746))))
                           (declare (not safe))
                           (cons __tmp304757 __tmp304745))))
                    (declare (not safe))
                    (cons __tmp304760 __tmp304744))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp304763
                                                           __tmp304743))))
                                              (declare (not safe))
                                              (cons __tmp304766 __tmp304742))))
                                       (declare (not safe))
                                       (cons __tmp304769 __tmp304741))))
                                (declare (not safe))
                                (cons __tmp304772 __tmp304740))))
                         (declare (not safe))
                         (cons __tmp304775 __tmp304739)))
                     _hd297442297550_
                     _hd297439297540_
                     _hd297436297530_
                     _hd297433297520_
                     _hd297430297510_
                     _hd297427297500_
                     _hd297424297490_
                     _hd297421297480_
                     _hd297418297470_)
                    (_g297403297449_ _g297404297453_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g297403297449_
                                                     _g297404297453_))))
                                            (_g297403297449_
                                             _g297404297453_))))
                                    (_g297403297449_ _g297404297453_))))
                            (_g297403297449_ _g297404297453_))))
                    (_g297403297449_ _g297404297453_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g297403297449_
                                                     _g297404297453_))))
                                            (_g297403297449_
                                             _g297404297453_))))
                                    (_g297403297449_ _g297404297453_))))
                            (_g297403297449_ _g297404297453_))))
                    (_g297403297449_ _g297404297453_)))))
        (_g297402297602_ _$stx297399_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx297606_)
      (let* ((_g297610297624_
              (lambda (_g297611297620_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g297611297620_))))
             (_g297609297665_
              (lambda (_g297611297628_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g297611297628_))
                    (let ((_e297615297631_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g297611297628_))))
                      (let ((_hd297614297635_
                             (let ()
                               (declare (not safe))
                               (##car _e297615297631_)))
                            (_tl297613297638_
                             (let ()
                               (declare (not safe))
                               (##cdr _e297615297631_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl297613297638_))
                            (let ((_e297618297641_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl297613297638_))))
                              (let ((_hd297617297645_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e297618297641_)))
                                    (_tl297616297648_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e297618297641_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl297616297648_))
                                    ((lambda (_L297651_)
                                       (let ((__tmp304780
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp304776
                                              (let ((__tmp304777
                                                     (let ((__tmp304779
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp304778
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L297651_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp304779 __tmp304778))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp304777 '()))))
                                         (declare (not safe))
                                         (cons __tmp304780 __tmp304776)))
                                     _hd297617297645_)
                                    (_g297610297624_ _g297611297628_))))
                            (_g297610297624_ _g297611297628_))))
                    (_g297610297624_ _g297611297628_)))))
        (_g297609297665_ _$stx297606_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx297669_)
      (let* ((_g297673297687_
              (lambda (_g297674297683_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g297674297683_))))
             (_g297672297728_
              (lambda (_g297674297691_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g297674297691_))
                    (let ((_e297678297694_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g297674297691_))))
                      (let ((_hd297677297698_
                             (let ()
                               (declare (not safe))
                               (##car _e297678297694_)))
                            (_tl297676297701_
                             (let ()
                               (declare (not safe))
                               (##cdr _e297678297694_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl297676297701_))
                            (let ((_e297681297704_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl297676297701_))))
                              (let ((_hd297680297708_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e297681297704_)))
                                    (_tl297679297711_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e297681297704_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl297679297711_))
                                    ((lambda (_L297714_)
                                       (let ((__tmp304785
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp304781
                                              (let ((__tmp304782
                                                     (let ((__tmp304784
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp304783
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L297714_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp304784 __tmp304783))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp304782 '()))))
                                         (declare (not safe))
                                         (cons __tmp304785 __tmp304781)))
                                     _hd297680297708_)
                                    (_g297673297687_ _g297674297691_))))
                            (_g297673297687_ _g297674297691_))))
                    (_g297673297687_ _g297674297691_)))))
        (_g297672297728_ _$stx297669_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx297732_)
      (let* ((_g297736297758_
              (lambda (_g297737297754_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g297737297754_))))
             (_g297735297827_
              (lambda (_g297737297762_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g297737297762_))
                    (let ((_e297743297765_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g297737297762_))))
                      (let ((_hd297742297769_
                             (let ()
                               (declare (not safe))
                               (##car _e297743297765_)))
                            (_tl297741297772_
                             (let ()
                               (declare (not safe))
                               (##cdr _e297743297765_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl297741297772_))
                            (let ((_e297746297775_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl297741297772_))))
                              (let ((_hd297745297779_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e297746297775_)))
                                    (_tl297744297782_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e297746297775_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl297744297782_))
                                    (let ((_e297749297785_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl297744297782_))))
                                      (let ((_hd297748297789_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e297749297785_)))
                                            (_tl297747297792_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e297749297785_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl297747297792_))
                                            (let ((_e297752297795_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl297747297792_))))
                                              (let ((_hd297751297799_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e297752297795_)))
                                                    (_tl297750297802_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e297752297795_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl297750297802_))
                                                    ((lambda (_L297805_
                                                              _L297807_
                                                              _L297808_)
                                                       (let ((__tmp304795
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp304786
                      (let ((__tmp304792
                             (let ((__tmp304794
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp304793
                                    (let ()
                                      (declare (not safe))
                                      (cons _L297808_ '()))))
                               (declare (not safe))
                               (cons __tmp304794 __tmp304793)))
                            (__tmp304787
                             (let ((__tmp304789
                                    (let ((__tmp304791
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp304790
                                           (let ()
                                             (declare (not safe))
                                             (cons _L297807_ '()))))
                                      (declare (not safe))
                                      (cons __tmp304791 __tmp304790)))
                                   (__tmp304788
                                    (let ()
                                      (declare (not safe))
                                      (cons _L297805_ '()))))
                               (declare (not safe))
                               (cons __tmp304789 __tmp304788))))
                        (declare (not safe))
                        (cons __tmp304792 __tmp304787))))
                 (declare (not safe))
                 (cons __tmp304795 __tmp304786)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd297751297799_
                                                     _hd297748297789_
                                                     _hd297745297779_)
                                                    (_g297736297758_
                                                     _g297737297762_))))
                                            (_g297736297758_
                                             _g297737297762_))))
                                    (_g297736297758_ _g297737297762_))))
                            (_g297736297758_ _g297737297762_))))
                    (_g297736297758_ _g297737297762_)))))
        (_g297735297827_ _$stx297732_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx297831_)
      (let* ((_g297835297857_
              (lambda (_g297836297853_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g297836297853_))))
             (_g297834297926_
              (lambda (_g297836297861_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g297836297861_))
                    (let ((_e297842297864_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g297836297861_))))
                      (let ((_hd297841297868_
                             (let ()
                               (declare (not safe))
                               (##car _e297842297864_)))
                            (_tl297840297871_
                             (let ()
                               (declare (not safe))
                               (##cdr _e297842297864_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl297840297871_))
                            (let ((_e297845297874_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl297840297871_))))
                              (let ((_hd297844297878_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e297845297874_)))
                                    (_tl297843297881_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e297845297874_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl297843297881_))
                                    (let ((_e297848297884_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl297843297881_))))
                                      (let ((_hd297847297888_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e297848297884_)))
                                            (_tl297846297891_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e297848297884_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl297846297891_))
                                            (let ((_e297851297894_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl297846297891_))))
                                              (let ((_hd297850297898_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e297851297894_)))
                                                    (_tl297849297901_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e297851297894_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl297849297901_))
                                                    ((lambda (_L297904_
                                                              _L297906_
                                                              _L297907_)
                                                       (let ((__tmp304805
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp304796
                      (let ((__tmp304802
                             (let ((__tmp304804
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp304803
                                    (let ()
                                      (declare (not safe))
                                      (cons _L297907_ '()))))
                               (declare (not safe))
                               (cons __tmp304804 __tmp304803)))
                            (__tmp304797
                             (let ((__tmp304799
                                    (let ((__tmp304801
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp304800
                                           (let ()
                                             (declare (not safe))
                                             (cons _L297906_ '()))))
                                      (declare (not safe))
                                      (cons __tmp304801 __tmp304800)))
                                   (__tmp304798
                                    (let ()
                                      (declare (not safe))
                                      (cons _L297904_ '()))))
                               (declare (not safe))
                               (cons __tmp304799 __tmp304798))))
                        (declare (not safe))
                        (cons __tmp304802 __tmp304797))))
                 (declare (not safe))
                 (cons __tmp304805 __tmp304796)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd297850297898_
                                                     _hd297847297888_
                                                     _hd297844297878_)
                                                    (_g297835297857_
                                                     _g297836297861_))))
                                            (_g297835297857_
                                             _g297836297861_))))
                                    (_g297835297857_ _g297836297861_))))
                            (_g297835297857_ _g297836297861_))))
                    (_g297835297857_ _g297836297861_)))))
        (_g297834297926_ _$stx297831_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx297930_)
      (let* ((___stx304313304314_ _$stx297930_)
             (_g297938298006_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx304313304314_)))))
        (let ((___kont304316304317_
               (lambda (_L298284_ _L298286_)
                 (let ((__tmp304821
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp304806
                        (let ((__tmp304817
                               (let ((__tmp304820
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp304818
                                      (let ((__tmp304819
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp304819 '()))))
                                 (declare (not safe))
                                 (cons __tmp304820 __tmp304818)))
                              (__tmp304807
                               (let ((__tmp304814
                                      (let ((__tmp304816
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp304815
                                             (let ()
                                               (declare (not safe))
                                               (cons _L298286_ '()))))
                                        (declare (not safe))
                                        (cons __tmp304816 __tmp304815)))
                                     (__tmp304808
                                      (let ((__tmp304809
                                             (let ((__tmp304810
                                                    (let ((__tmp304811
                                                           (let ((__tmp304813
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp304812
                          (let () (declare (not safe)) (cons _L298284_ '()))))
                     (declare (not safe))
                     (cons __tmp304813 __tmp304812))))
              (declare (not safe))
              (cons __tmp304811 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L298284_ __tmp304810))))
                                        (declare (not safe))
                                        (cons '#f __tmp304809))))
                                 (declare (not safe))
                                 (cons __tmp304814 __tmp304808))))
                          (declare (not safe))
                          (cons __tmp304817 __tmp304807))))
                   (declare (not safe))
                   (cons __tmp304821 __tmp304806))))
              (___kont304318304319_
               (lambda (_L298215_ _L298217_)
                 (let ((__tmp304822
                        (let ((__tmp304823
                               (let ((__tmp304824
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L298215_ __tmp304824))))
                          (declare (not safe))
                          (cons 'primitive: __tmp304823))))
                   (declare (not safe))
                   (cons _L298217_ __tmp304822))))
              (___kont304320304321_
               (lambda (_L298154_ _L298156_)
                 (let ((__tmp304838
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp304825
                        (let ((__tmp304834
                               (let ((__tmp304837
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp304835
                                      (let ((__tmp304836
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp304836 '()))))
                                 (declare (not safe))
                                 (cons __tmp304837 __tmp304835)))
                              (__tmp304826
                               (let ((__tmp304831
                                      (let ((__tmp304833
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp304832
                                             (let ()
                                               (declare (not safe))
                                               (cons _L298156_ '()))))
                                        (declare (not safe))
                                        (cons __tmp304833 __tmp304832)))
                                     (__tmp304827
                                      (let ((__tmp304828
                                             (let ((__tmp304830
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp304829
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L298154_ '()))))
                                               (declare (not safe))
                                               (cons __tmp304830
                                                     __tmp304829))))
                                        (declare (not safe))
                                        (cons __tmp304828 '()))))
                                 (declare (not safe))
                                 (cons __tmp304831 __tmp304827))))
                          (declare (not safe))
                          (cons __tmp304834 __tmp304826))))
                   (declare (not safe))
                   (cons __tmp304838 __tmp304825))))
              (___kont304322304323_
               (lambda (_L298086_ _L298088_)
                 (let ((__tmp304852
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp304839
                        (let ((__tmp304848
                               (let ((__tmp304851
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp304849
                                      (let ((__tmp304850
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp304850 '()))))
                                 (declare (not safe))
                                 (cons __tmp304851 __tmp304849)))
                              (__tmp304840
                               (let ((__tmp304845
                                      (let ((__tmp304847
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp304846
                                             (let ()
                                               (declare (not safe))
                                               (cons _L298088_ '()))))
                                        (declare (not safe))
                                        (cons __tmp304847 __tmp304846)))
                                     (__tmp304841
                                      (let ((__tmp304842
                                             (let ((__tmp304844
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp304843
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L298086_ '()))))
                                               (declare (not safe))
                                               (cons __tmp304844
                                                     __tmp304843))))
                                        (declare (not safe))
                                        (cons __tmp304842 '()))))
                                 (declare (not safe))
                                 (cons __tmp304845 __tmp304841))))
                          (declare (not safe))
                          (cons __tmp304848 __tmp304840))))
                   (declare (not safe))
                   (cons __tmp304852 __tmp304839))))
              (___kont304324304325_
               (lambda (_L298033_ _L298035_)
                 (let ((__tmp304853
                        (let ((__tmp304854
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L298033_ __tmp304854))))
                   (declare (not safe))
                   (cons _L298035_ __tmp304853)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx304313304314_))
              (let ((_e297944298240_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx304313304314_))))
                (let ((_tl297942298247_
                       (let () (declare (not safe)) (##cdr _e297944298240_)))
                      (_hd297943298244_
                       (let () (declare (not safe)) (##car _e297944298240_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl297942298247_))
                      (let ((_e297947298250_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl297942298247_))))
                        (let ((_tl297945298257_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e297947298250_)))
                              (_hd297946298254_
                               (let ()
                                 (declare (not safe))
                                 (##car _e297947298250_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl297945298257_))
                              (let ((_e297950298260_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl297945298257_))))
                                (let ((_tl297948298267_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e297950298260_)))
                                      (_hd297949298264_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e297950298260_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd297949298264_))
                                      (let ((_e297951298270_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd297949298264_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e297951298270_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl297948298267_))
                                                (let ((_e297954298274_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl297948298267_))))
                                                  (let ((_tl297952298281_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e297954298274_)))
                                                        (_hd297953298278_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e297954298274_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl297952298281_))
                                                        (___kont304316304317_
                                                         _hd297953298278_
                                                         _hd297946298254_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd297946298254_))
                                                            (let ((_e297963298201_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd297946298254_))))
                      (declare (not safe))
                      (_g297938298006_))
                    (let () (declare (not safe)) (_g297938298006_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd297946298254_))
                                                    (let ((_e297963298201_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd297946298254_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e297963298201_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl297948298267_))
                      (___kont304318304319_ _hd297949298264_ _hd297943298244_)
                      (let () (declare (not safe)) (_g297938298006_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl297948298267_))
                      (___kont304322304323_ _hd297949298264_ _hd297946298254_)
                      (let () (declare (not safe)) (_g297938298006_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl297948298267_))
                                                        (___kont304322304323_
                                                         _hd297949298264_
                                                         _hd297946298254_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g297938298006_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd297946298254_))
                                                (let ((_e297963298201_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd297946298254_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e297963298201_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl297948298267_))
                                                          (___kont304318304319_
                                                           _hd297949298264_
                                                           _hd297943298244_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl297948298267_))
                      (let ((_e297981298144_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl297948298267_))))
                        (let ((_tl297979298151_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e297981298144_)))
                              (_hd297980298148_
                               (let ()
                                 (declare (not safe))
                                 (##car _e297981298144_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl297979298151_))
                              (___kont304320304321_
                               _hd297980298148_
                               _hd297949298264_)
                              (let ()
                                (declare (not safe))
                                (_g297938298006_)))))
                      (let () (declare (not safe)) (_g297938298006_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl297948298267_))
                  (___kont304322304323_ _hd297949298264_ _hd297946298254_)
                  (let () (declare (not safe)) (_g297938298006_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl297948298267_))
                                                    (___kont304322304323_
                                                     _hd297949298264_
                                                     _hd297946298254_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g297938298006_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd297946298254_))
                                          (let ((_e297963298201_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd297946298254_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e297963298201_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl297948298267_))
                                                    (___kont304318304319_
                                                     _hd297949298264_
                                                     _hd297943298244_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl297948298267_))
                                                        (let ((_e297981298144_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl297948298267_))))
                  (let ((_tl297979298151_
                         (let () (declare (not safe)) (##cdr _e297981298144_)))
                        (_hd297980298148_
                         (let ()
                           (declare (not safe))
                           (##car _e297981298144_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl297979298151_))
                        (___kont304320304321_
                         _hd297980298148_
                         _hd297949298264_)
                        (let () (declare (not safe)) (_g297938298006_)))))
                (let () (declare (not safe)) (_g297938298006_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl297948298267_))
                                                    (___kont304322304323_
                                                     _hd297949298264_
                                                     _hd297946298254_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g297938298006_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl297948298267_))
                                              (___kont304322304323_
                                               _hd297949298264_
                                               _hd297946298254_)
                                              (let ()
                                                (declare (not safe))
                                                (_g297938298006_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd297946298254_))
                                  (let ((_e297963298201_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd297946298254_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl297945298257_))
                                        (___kont304324304325_
                                         _hd297946298254_
                                         _hd297943298244_)
                                        (let ()
                                          (declare (not safe))
                                          (_g297938298006_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl297945298257_))
                                      (___kont304324304325_
                                       _hd297946298254_
                                       _hd297943298244_)
                                      (let ()
                                        (declare (not safe))
                                        (_g297938298006_)))))))
                      (let () (declare (not safe)) (_g297938298006_)))))
              (let () (declare (not safe)) (_g297938298006_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx298308_)
      (let* ((___stx304453304454_ _$stx298308_)
             (_g298313298368_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx304453304454_)))))
        (let ((___kont304456304457_
               (lambda (_L298553_ _L298555_)
                 (let ((__tmp304870
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp304855
                        (let ((__tmp304866
                               (let ((__tmp304869
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp304867
                                      (let ((__tmp304868
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp304868 '()))))
                                 (declare (not safe))
                                 (cons __tmp304869 __tmp304867)))
                              (__tmp304856
                               (let ((__tmp304857
                                      (let ((__tmp304865
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp304858
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L298553_
                                                  _L298555_))
                                               (let ((__tmp304859
                                                      (lambda (_g298572298576_
                                                               _g298573298579_
                                                               _g298574298581_)
                                                        (let ((__tmp304860
                                                               (let ((__tmp304864
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp304861
                              (let ((__tmp304862
                                     (let ((__tmp304863
                                            (let ()
                                              (declare (not safe))
                                              (cons _g298572298576_ '()))))
                                       (declare (not safe))
                                       (cons _g298573298579_ __tmp304863))))
                                (declare (not safe))
                                (cons 'primitive: __tmp304862))))
                         (declare (not safe))
                         (cons __tmp304864 __tmp304861))))
                  (declare (not safe))
                  (cons __tmp304860 _g298574298581_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp304859
                                                         '()
                                                         _L298553_
                                                         _L298555_)))))
                                        (declare (not safe))
                                        (cons __tmp304865 __tmp304858))))
                                 (declare (not safe))
                                 (cons __tmp304857 '()))))
                          (declare (not safe))
                          (cons __tmp304866 __tmp304856))))
                   (declare (not safe))
                   (cons __tmp304870 __tmp304855))))
              (___kont304460304461_
               (lambda (_L298439_ _L298441_)
                 (let ((__tmp304885
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp304871
                        (let ((__tmp304881
                               (let ((__tmp304884
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp304882
                                      (let ((__tmp304883
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp304883 '()))))
                                 (declare (not safe))
                                 (cons __tmp304884 __tmp304882)))
                              (__tmp304872
                               (let ((__tmp304873
                                      (let ((__tmp304880
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp304874
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L298439_
                                                  _L298441_))
                                               (let ((__tmp304875
                                                      (lambda (_g298456298460_
                                                               _g298457298463_
                                                               _g298458298465_)
                                                        (let ((__tmp304876
                                                               (let ((__tmp304879
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp304877
                              (let ((__tmp304878
                                     (let ()
                                       (declare (not safe))
                                       (cons _g298456298460_ '()))))
                                (declare (not safe))
                                (cons _g298457298463_ __tmp304878))))
                         (declare (not safe))
                         (cons __tmp304879 __tmp304877))))
                  (declare (not safe))
                  (cons __tmp304876 _g298458298465_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp304875
                                                         '()
                                                         _L298439_
                                                         _L298441_)))))
                                        (declare (not safe))
                                        (cons __tmp304880 __tmp304874))))
                                 (declare (not safe))
                                 (cons __tmp304873 '()))))
                          (declare (not safe))
                          (cons __tmp304881 __tmp304872))))
                   (declare (not safe))
                   (cons __tmp304885 __tmp304871)))))
          (let* ((___match304504304505_
                  (lambda (_e298345298375_
                           _hd298344298379_
                           _tl298343298382_
                           ___splice304462304463_
                           _target298346298385_
                           _tl298348298388_)
                    (letrec ((_loop298349298391_
                              (lambda (_hd298347298395_
                                       _dispatch298353298398_
                                       _arity298354298400_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd298347298395_))
                                    (let ((_e298350298403_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd298347298395_))))
                                      (let ((_lp-tl298352298410_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e298350298403_)))
                                            (_lp-hd298351298407_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e298350298403_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd298351298407_))
                                            (let ((_e298359298413_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd298351298407_))))
                                              (let ((_tl298357298420_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e298359298413_)))
                                                    (_hd298358298417_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e298359298413_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl298357298420_))
                                                    (let ((_e298362298423_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl298357298420_))))
                                                      (let ((_tl298360298430_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e298362298423_)))
                    (_hd298361298427_
                     (let () (declare (not safe)) (##car _e298362298423_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl298360298430_))
                    (_loop298349298391_
                     _lp-tl298352298410_
                     (let ()
                       (declare (not safe))
                       (cons _hd298361298427_ _dispatch298353298398_))
                     (let ()
                       (declare (not safe))
                       (cons _hd298358298417_ _arity298354298400_)))
                    (let () (declare (not safe)) (_g298313298368_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g298313298368_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g298313298368_)))))
                                    (let ((_arity298356298436_
                                           (reverse _arity298354298400_))
                                          (_dispatch298355298433_
                                           (reverse _dispatch298353298398_)))
                                      (___kont304460304461_
                                       _dispatch298355298433_
                                       _arity298356298436_))))))
                      (_loop298349298391_ _target298346298385_ '() '()))))
                 (___match304496304497_
                  (lambda (_e298345298375_ _hd298344298379_ _tl298343298382_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl298343298382_))
                        (let ((___splice304462304463_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl298343298382_
                                  '0))))
                          (let ((_tl298348298388_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice304462304463_ '1)))
                                (_target298346298385_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice304462304463_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl298348298388_))
                                (___match304504304505_
                                 _e298345298375_
                                 _hd298344298379_
                                 _tl298343298382_
                                 ___splice304462304463_
                                 _target298346298385_
                                 _tl298348298388_)
                                (let ()
                                  (declare (not safe))
                                  (_g298313298368_)))))
                        (let () (declare (not safe)) (_g298313298368_)))))
                 (___match304490304491_
                  (lambda (_e298319298475_
                           _hd298318298479_
                           _tl298317298482_
                           _e298322298485_
                           _hd298321298489_
                           _tl298320298492_
                           _e298323298495_
                           ___splice304458304459_
                           _target298324298499_
                           _tl298326298502_)
                    (letrec ((_loop298327298505_
                              (lambda (_hd298325298509_
                                       _dispatch298331298512_
                                       _arity298332298514_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd298325298509_))
                                    (let ((_e298328298517_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd298325298509_))))
                                      (let ((_lp-tl298330298524_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e298328298517_)))
                                            (_lp-hd298329298521_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e298328298517_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd298329298521_))
                                            (let ((_e298337298527_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd298329298521_))))
                                              (let ((_tl298335298534_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e298337298527_)))
                                                    (_hd298336298531_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e298337298527_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl298335298534_))
                                                    (let ((_e298340298537_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl298335298534_))))
                                                      (let ((_tl298338298544_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e298340298537_)))
                    (_hd298339298541_
                     (let () (declare (not safe)) (##car _e298340298537_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl298338298544_))
                    (_loop298327298505_
                     _lp-tl298330298524_
                     (let ()
                       (declare (not safe))
                       (cons _hd298339298541_ _dispatch298331298512_))
                     (let ()
                       (declare (not safe))
                       (cons _hd298336298531_ _arity298332298514_)))
                    (___match304496304497_
                     _e298319298475_
                     _hd298318298479_
                     _tl298317298482_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match304496304497_
                                                     _e298319298475_
                                                     _hd298318298479_
                                                     _tl298317298482_))))
                                            (___match304496304497_
                                             _e298319298475_
                                             _hd298318298479_
                                             _tl298317298482_))))
                                    (let ((_arity298334298550_
                                           (reverse _arity298332298514_))
                                          (_dispatch298333298547_
                                           (reverse _dispatch298331298512_)))
                                      (___kont304456304457_
                                       _dispatch298333298547_
                                       _arity298334298550_))))))
                      (_loop298327298505_ _target298324298499_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx304453304454_))
                (let ((_e298319298475_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx304453304454_))))
                  (let ((_tl298317298482_
                         (let () (declare (not safe)) (##cdr _e298319298475_)))
                        (_hd298318298479_
                         (let ()
                           (declare (not safe))
                           (##car _e298319298475_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl298317298482_))
                        (let ((_e298322298485_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl298317298482_))))
                          (let ((_tl298320298492_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e298322298485_)))
                                (_hd298321298489_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e298322298485_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd298321298489_))
                                (let ((_e298323298495_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd298321298489_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e298323298495_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl298320298492_))
                                          (let ((___splice304458304459_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl298320298492_
                                                    '0))))
                                            (let ((_tl298326298502_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice304458304459_
                                                      '1)))
                                                  (_target298324298499_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice304458304459_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl298326298502_))
                                                  (___match304490304491_
                                                   _e298319298475_
                                                   _hd298318298479_
                                                   _tl298317298482_
                                                   _e298322298485_
                                                   _hd298321298489_
                                                   _tl298320298492_
                                                   _e298323298495_
                                                   ___splice304458304459_
                                                   _target298324298499_
                                                   _tl298326298502_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl298317298482_))
                                                      (let ((___splice304462304463_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl298317298482_ '0))))
                (let ((_tl298348298388_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice304462304463_ '1)))
                      (_target298346298385_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice304462304463_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl298348298388_))
                      (___match304504304505_
                       _e298319298475_
                       _hd298318298479_
                       _tl298317298482_
                       ___splice304462304463_
                       _target298346298385_
                       _tl298348298388_)
                      (let () (declare (not safe)) (_g298313298368_)))))
              (let () (declare (not safe)) (_g298313298368_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl298317298482_))
                                              (let ((___splice304462304463_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl298317298482_
                                                        '0))))
                                                (let ((_tl298348298388_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice304462304463_
                                                          '1)))
                                                      (_target298346298385_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice304462304463_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl298348298388_))
                                                      (___match304504304505_
                                                       _e298319298475_
                                                       _hd298318298479_
                                                       _tl298317298482_
                                                       ___splice304462304463_
                                                       _target298346298385_
                                                       _tl298348298388_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g298313298368_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g298313298368_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl298317298482_))
                                          (let ((___splice304462304463_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl298317298482_
                                                    '0))))
                                            (let ((_tl298348298388_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice304462304463_
                                                      '1)))
                                                  (_target298346298385_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice304462304463_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl298348298388_))
                                                  (___match304504304505_
                                                   _e298319298475_
                                                   _hd298318298479_
                                                   _tl298317298482_
                                                   ___splice304462304463_
                                                   _target298346298385_
                                                   _tl298348298388_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g298313298368_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g298313298368_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl298317298482_))
                                    (let ((___splice304462304463_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl298317298482_
                                              '0))))
                                      (let ((_tl298348298388_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice304462304463_
                                                '1)))
                                            (_target298346298385_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice304462304463_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl298348298388_))
                                            (___match304504304505_
                                             _e298319298475_
                                             _hd298318298479_
                                             _tl298317298482_
                                             ___splice304462304463_
                                             _target298346298385_
                                             _tl298348298388_)
                                            (let ()
                                              (declare (not safe))
                                              (_g298313298368_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g298313298368_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl298317298482_))
                            (let ((___splice304462304463_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl298317298482_
                                      '0))))
                              (let ((_tl298348298388_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice304462304463_
                                        '1)))
                                    (_target298346298385_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice304462304463_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl298348298388_))
                                    (___match304504304505_
                                     _e298319298475_
                                     _hd298318298479_
                                     _tl298317298482_
                                     ___splice304462304463_
                                     _target298346298385_
                                     _tl298348298388_)
                                    (let ()
                                      (declare (not safe))
                                      (_g298313298368_)))))
                            (let () (declare (not safe)) (_g298313298368_))))))
                (let () (declare (not safe)) (_g298313298368_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx298590_)
      (let* ((_g298594298612_
              (lambda (_g298595298608_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g298595298608_))))
             (_g298593298667_
              (lambda (_g298595298616_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g298595298616_))
                    (let ((_e298600298619_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g298595298616_))))
                      (let ((_hd298599298623_
                             (let ()
                               (declare (not safe))
                               (##car _e298600298619_)))
                            (_tl298598298626_
                             (let ()
                               (declare (not safe))
                               (##cdr _e298600298619_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl298598298626_))
                            (let ((_e298603298629_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl298598298626_))))
                              (let ((_hd298602298633_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e298603298629_)))
                                    (_tl298601298636_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e298603298629_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl298601298636_))
                                    (let ((_e298606298639_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl298601298636_))))
                                      (let ((_hd298605298643_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e298606298639_)))
                                            (_tl298604298646_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e298606298639_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl298604298646_))
                                            ((lambda (_L298649_ _L298651_)
                                               (let ((__tmp304899
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp304886
                                                      (let ((__tmp304895
                                                             (let ((__tmp304898
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp304896
                            (let ((__tmp304897
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp304897 '()))))
                       (declare (not safe))
                       (cons __tmp304898 __tmp304896)))
                    (__tmp304887
                     (let ((__tmp304892
                            (let ((__tmp304894
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp304893
                                   (let ()
                                     (declare (not safe))
                                     (cons _L298651_ '()))))
                              (declare (not safe))
                              (cons __tmp304894 __tmp304893)))
                           (__tmp304888
                            (let ((__tmp304889
                                   (let ((__tmp304891
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp304890
                                          (let ()
                                            (declare (not safe))
                                            (cons _L298649_ '()))))
                                     (declare (not safe))
                                     (cons __tmp304891 __tmp304890))))
                              (declare (not safe))
                              (cons __tmp304889 '()))))
                       (declare (not safe))
                       (cons __tmp304892 __tmp304888))))
                (declare (not safe))
                (cons __tmp304895 __tmp304887))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp304899
                                                       __tmp304886)))
                                             _hd298605298643_
                                             _hd298602298633_)
                                            (_g298594298612_
                                             _g298595298616_))))
                                    (_g298594298612_ _g298595298616_))))
                            (_g298594298612_ _g298595298616_))))
                    (_g298594298612_ _g298595298616_)))))
        (_g298593298667_ _$stx298590_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx298671_)
      (let* ((_g298675298693_
              (lambda (_g298676298689_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g298676298689_))))
             (_g298674298748_
              (lambda (_g298676298697_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g298676298697_))
                    (let ((_e298681298700_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g298676298697_))))
                      (let ((_hd298680298704_
                             (let ()
                               (declare (not safe))
                               (##car _e298681298700_)))
                            (_tl298679298707_
                             (let ()
                               (declare (not safe))
                               (##cdr _e298681298700_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl298679298707_))
                            (let ((_e298684298710_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl298679298707_))))
                              (let ((_hd298683298714_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e298684298710_)))
                                    (_tl298682298717_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e298684298710_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl298682298717_))
                                    (let ((_e298687298720_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl298682298717_))))
                                      (let ((_hd298686298724_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e298687298720_)))
                                            (_tl298685298727_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e298687298720_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl298685298727_))
                                            ((lambda (_L298730_ _L298732_)
                                               (let ((__tmp304913
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp304900
                                                      (let ((__tmp304909
                                                             (let ((__tmp304912
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp304910
                            (let ((__tmp304911
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp304911 '()))))
                       (declare (not safe))
                       (cons __tmp304912 __tmp304910)))
                    (__tmp304901
                     (let ((__tmp304906
                            (let ((__tmp304908
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp304907
                                   (let ()
                                     (declare (not safe))
                                     (cons _L298732_ '()))))
                              (declare (not safe))
                              (cons __tmp304908 __tmp304907)))
                           (__tmp304902
                            (let ((__tmp304903
                                   (let ((__tmp304905
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp304904
                                          (let ()
                                            (declare (not safe))
                                            (cons _L298730_ '()))))
                                     (declare (not safe))
                                     (cons __tmp304905 __tmp304904))))
                              (declare (not safe))
                              (cons __tmp304903 '()))))
                       (declare (not safe))
                       (cons __tmp304906 __tmp304902))))
                (declare (not safe))
                (cons __tmp304909 __tmp304901))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp304913
                                                       __tmp304900)))
                                             _hd298686298724_
                                             _hd298683298714_)
                                            (_g298675298693_
                                             _g298676298697_))))
                                    (_g298675298693_ _g298676298697_))))
                            (_g298675298693_ _g298676298697_))))
                    (_g298675298693_ _g298676298697_)))))
        (_g298674298748_ _$stx298671_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx298752_)
      (let* ((___stx304507304508_ _$stx298752_)
             (_g298759298830_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx304507304508_)))))
        (let ((___kont304510304511_
               (lambda (_L299121_ _L299123_)
                 (let ((__tmp304919
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp304914
                        (let ((__tmp304915
                               (let ((__tmp304916
                                      (let ((__tmp304918
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp304917
                                             (let ()
                                               (declare (not safe))
                                               (cons _L299121_ '()))))
                                        (declare (not safe))
                                        (cons __tmp304918 __tmp304917))))
                                 (declare (not safe))
                                 (cons __tmp304916 '()))))
                          (declare (not safe))
                          (cons _L299123_ __tmp304915))))
                   (declare (not safe))
                   (cons __tmp304919 __tmp304914))))
              (___kont304512304513_
               (lambda (_L299040_ _L299042_)
                 (let ((__tmp304928
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp304920
                        (let ((__tmp304921
                               (let ((__tmp304922
                                      (let ((__tmp304927
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp304923
                                             (let ((__tmp304924
                                                    (lambda (_g299061299064_
                                                             _g299062299067_)
                                                      (let ((__tmp304925
                                                             (let ((__tmp304926
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g299061299064_ __tmp304926))))
                (declare (not safe))
                (cons __tmp304925 _g299062299067_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp304924
                                                       '()
                                                       _L299040_))))
                                        (declare (not safe))
                                        (cons __tmp304927 __tmp304923))))
                                 (declare (not safe))
                                 (cons __tmp304922 '()))))
                          (declare (not safe))
                          (cons _L299042_ __tmp304921))))
                   (declare (not safe))
                   (cons __tmp304928 __tmp304920))))
              (___kont304516304517_
               (lambda (_L298952_ _L298954_)
                 (let ((__tmp304935
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp304929
                        (let ((__tmp304930
                               (let ((__tmp304931
                                      (let ((__tmp304934
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp304932
                                             (let ((__tmp304933
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L298952_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp304933))))
                                        (declare (not safe))
                                        (cons __tmp304934 __tmp304932))))
                                 (declare (not safe))
                                 (cons __tmp304931 '()))))
                          (declare (not safe))
                          (cons _L298954_ __tmp304930))))
                   (declare (not safe))
                   (cons __tmp304935 __tmp304929))))
              (___kont304518304519_
               (lambda (_L298887_ _L298889_)
                 (let ((__tmp304945
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp304936
                        (let ((__tmp304937
                               (let ((__tmp304938
                                      (let ((__tmp304944
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp304939
                                             (let ((__tmp304940
                                                    (let ((__tmp304941
                                                           (lambda (_g298906298909_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g298907298912_)
                     (let ((__tmp304942
                            (let ((__tmp304943
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g298906298909_ __tmp304943))))
                       (declare (not safe))
                       (cons __tmp304942 _g298907298912_)))))
              (declare (not safe))
              (foldr1 __tmp304941 '() _L298887_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp304940))))
                                        (declare (not safe))
                                        (cons __tmp304944 __tmp304939))))
                                 (declare (not safe))
                                 (cons __tmp304938 '()))))
                          (declare (not safe))
                          (cons _L298889_ __tmp304937))))
                   (declare (not safe))
                   (cons __tmp304945 __tmp304936)))))
          (let* ((___match304626304627_
                  (lambda (_e298812298837_
                           _hd298811298841_
                           _tl298810298844_
                           _e298815298847_
                           _hd298814298851_
                           _tl298813298854_
                           ___splice304520304521_
                           _target298816298857_
                           _tl298818298860_)
                    (letrec ((_loop298819298863_
                              (lambda (_hd298817298867_ _arity298823298870_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd298817298867_))
                                    (let ((_e298820298873_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd298817298867_))))
                                      (let ((_lp-tl298822298880_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e298820298873_)))
                                            (_lp-hd298821298877_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e298820298873_))))
                                        (_loop298819298863_
                                         _lp-tl298822298880_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd298821298877_
                                                 _arity298823298870_)))))
                                    (let ((_arity298824298883_
                                           (reverse _arity298823298870_)))
                                      (___kont304518304519_
                                       _arity298824298883_
                                       _hd298814298851_))))))
                      (_loop298819298863_ _target298816298857_ '()))))
                 (___match304586304587_
                  (lambda (_e298780298976_
                           _hd298779298980_
                           _tl298778298983_
                           _e298783298986_
                           _hd298782298990_
                           _tl298781298993_
                           _e298786298996_
                           _hd298785299000_
                           _tl298784299003_
                           _e298787299006_
                           ___splice304514304515_
                           _target298788299010_
                           _tl298790299013_)
                    (letrec ((_loop298791299016_
                              (lambda (_hd298789299020_ _arity298795299023_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd298789299020_))
                                    (let ((_e298792299026_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd298789299020_))))
                                      (let ((_lp-tl298794299033_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e298792299026_)))
                                            (_lp-hd298793299030_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e298792299026_))))
                                        (_loop298791299016_
                                         _lp-tl298794299033_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd298793299030_
                                                 _arity298795299023_)))))
                                    (let ((_arity298796299036_
                                           (reverse _arity298795299023_)))
                                      (___kont304512304513_
                                       _arity298796299036_
                                       _hd298782298990_))))))
                      (_loop298791299016_ _target298788299010_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx304507304508_))
                (let ((_e298765299077_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx304507304508_))))
                  (let ((_tl298763299084_
                         (let () (declare (not safe)) (##cdr _e298765299077_)))
                        (_hd298764299081_
                         (let ()
                           (declare (not safe))
                           (##car _e298765299077_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl298763299084_))
                        (let ((_e298768299087_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl298763299084_))))
                          (let ((_tl298766299094_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e298768299087_)))
                                (_hd298767299091_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e298768299087_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl298766299094_))
                                (let ((_e298771299097_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl298766299094_))))
                                  (let ((_tl298769299104_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e298771299097_)))
                                        (_hd298770299101_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e298771299097_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd298770299101_))
                                        (let ((_e298772299107_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd298770299101_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e298772299107_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl298769299104_))
                                                  (let ((_e298775299111_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl298769299104_))))
                                                    (let ((_tl298773299118_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e298775299111_)))
                                                          (_hd298774299115_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e298775299111_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl298773299118_))
                                                          (___kont304510304511_
                                                           _hd298774299115_
                                                           _hd298767299091_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl298769299104_))
                      (let ((___splice304514304515_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl298769299104_ '0))))
                        (let ((_tl298790299013_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice304514304515_ '1)))
                              (_target298788299010_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice304514304515_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl298790299013_))
                              (___match304586304587_
                               _e298765299077_
                               _hd298764299081_
                               _tl298763299084_
                               _e298768299087_
                               _hd298767299091_
                               _tl298766299094_
                               _e298771299097_
                               _hd298770299101_
                               _tl298769299104_
                               _e298772299107_
                               ___splice304514304515_
                               _target298788299010_
                               _tl298790299013_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl298766299094_))
                                  (let ((___splice304520304521_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl298766299094_
                                            '0))))
                                    (let ((_tl298818298860_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice304520304521_
                                              '1)))
                                          (_target298816298857_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice304520304521_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl298818298860_))
                                          (___match304626304627_
                                           _e298765299077_
                                           _hd298764299081_
                                           _tl298763299084_
                                           _e298768299087_
                                           _hd298767299091_
                                           _tl298766299094_
                                           ___splice304520304521_
                                           _target298816298857_
                                           _tl298818298860_)
                                          (let ()
                                            (declare (not safe))
                                            (_g298759298830_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g298759298830_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl298766299094_))
                          (let ((___splice304520304521_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl298766299094_
                                    '0))))
                            (let ((_tl298818298860_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice304520304521_ '1)))
                                  (_target298816298857_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice304520304521_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl298818298860_))
                                  (___match304626304627_
                                   _e298765299077_
                                   _hd298764299081_
                                   _tl298763299084_
                                   _e298768299087_
                                   _hd298767299091_
                                   _tl298766299094_
                                   ___splice304520304521_
                                   _target298816298857_
                                   _tl298818298860_)
                                  (let ()
                                    (declare (not safe))
                                    (_g298759298830_)))))
                          (let () (declare (not safe)) (_g298759298830_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl298769299104_))
                                                      (let ((___splice304514304515_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl298769299104_ '0))))
                (let ((_tl298790299013_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice304514304515_ '1)))
                      (_target298788299010_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice304514304515_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl298790299013_))
                      (___match304586304587_
                       _e298765299077_
                       _hd298764299081_
                       _tl298763299084_
                       _e298768299087_
                       _hd298767299091_
                       _tl298766299094_
                       _e298771299097_
                       _hd298770299101_
                       _tl298769299104_
                       _e298772299107_
                       ___splice304514304515_
                       _target298788299010_
                       _tl298790299013_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl298769299104_))
                          (___kont304516304517_
                           _hd298770299101_
                           _hd298767299091_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl298766299094_))
                              (let ((___splice304520304521_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl298766299094_
                                        '0))))
                                (let ((_tl298818298860_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice304520304521_
                                          '1)))
                                      (_target298816298857_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice304520304521_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl298818298860_))
                                      (___match304626304627_
                                       _e298765299077_
                                       _hd298764299081_
                                       _tl298763299084_
                                       _e298768299087_
                                       _hd298767299091_
                                       _tl298766299094_
                                       ___splice304520304521_
                                       _target298816298857_
                                       _tl298818298860_)
                                      (let ()
                                        (declare (not safe))
                                        (_g298759298830_)))))
                              (let ()
                                (declare (not safe))
                                (_g298759298830_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl298769299104_))
                  (___kont304516304517_ _hd298770299101_ _hd298767299091_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl298766299094_))
                      (let ((___splice304520304521_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl298766299094_ '0))))
                        (let ((_tl298818298860_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice304520304521_ '1)))
                              (_target298816298857_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice304520304521_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl298818298860_))
                              (___match304626304627_
                               _e298765299077_
                               _hd298764299081_
                               _tl298763299084_
                               _e298768299087_
                               _hd298767299091_
                               _tl298766299094_
                               ___splice304520304521_
                               _target298816298857_
                               _tl298818298860_)
                              (let ()
                                (declare (not safe))
                                (_g298759298830_)))))
                      (let () (declare (not safe)) (_g298759298830_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl298769299104_))
                                                  (___kont304516304517_
                                                   _hd298770299101_
                                                   _hd298767299091_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl298766299094_))
                                                      (let ((___splice304520304521_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl298766299094_ '0))))
                (let ((_tl298818298860_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice304520304521_ '1)))
                      (_target298816298857_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice304520304521_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl298818298860_))
                      (___match304626304627_
                       _e298765299077_
                       _hd298764299081_
                       _tl298763299084_
                       _e298768299087_
                       _hd298767299091_
                       _tl298766299094_
                       ___splice304520304521_
                       _target298816298857_
                       _tl298818298860_)
                      (let () (declare (not safe)) (_g298759298830_)))))
              (let () (declare (not safe)) (_g298759298830_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl298769299104_))
                                            (___kont304516304517_
                                             _hd298770299101_
                                             _hd298767299091_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl298766299094_))
                                                (let ((___splice304520304521_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl298766299094_
                                                          '0))))
                                                  (let ((_tl298818298860_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice304520304521_
                                                            '1)))
                                                        (_target298816298857_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice304520304521_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl298818298860_))
                                                        (___match304626304627_
                                                         _e298765299077_
                                                         _hd298764299081_
                                                         _tl298763299084_
                                                         _e298768299087_
                                                         _hd298767299091_
                                                         _tl298766299094_
                                                         ___splice304520304521_
                                                         _target298816298857_
                                                         _tl298818298860_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g298759298830_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g298759298830_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl298766299094_))
                                    (let ((___splice304520304521_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl298766299094_
                                              '0))))
                                      (let ((_tl298818298860_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice304520304521_
                                                '1)))
                                            (_target298816298857_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice304520304521_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl298818298860_))
                                            (___match304626304627_
                                             _e298765299077_
                                             _hd298764299081_
                                             _tl298763299084_
                                             _e298768299087_
                                             _hd298767299091_
                                             _tl298766299094_
                                             ___splice304520304521_
                                             _target298816298857_
                                             _tl298818298860_)
                                            (let ()
                                              (declare (not safe))
                                              (_g298759298830_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g298759298830_))))))
                        (let () (declare (not safe)) (_g298759298830_)))))
                (let () (declare (not safe)) (_g298759298830_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx299147_)
      (let* ((___stx304629304630_ _$stx299147_)
             (_g299152299187_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx304629304630_)))))
        (let ((___kont304632304633_
               (lambda (_L299309_ _L299311_)
                 (let ((__tmp304951
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp304946
                        (let ((__tmp304947
                               (let ((__tmp304948
                                      (let ((__tmp304950
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp304949
                                             (let ()
                                               (declare (not safe))
                                               (cons _L299309_ '()))))
                                        (declare (not safe))
                                        (cons __tmp304950 __tmp304949))))
                                 (declare (not safe))
                                 (cons __tmp304948 '()))))
                          (declare (not safe))
                          (cons _L299311_ __tmp304947))))
                   (declare (not safe))
                   (cons __tmp304951 __tmp304946))))
              (___kont304634304635_
               (lambda (_L299244_ _L299246_)
                 (let ((__tmp304960
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp304952
                        (let ((__tmp304953
                               (let ((__tmp304954
                                      (let ((__tmp304959
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp304955
                                             (let ((__tmp304956
                                                    (lambda (_g299263299266_
                                                             _g299264299269_)
                                                      (let ((__tmp304957
                                                             (let ((__tmp304958
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g299263299266_ __tmp304958))))
                (declare (not safe))
                (cons __tmp304957 _g299264299269_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp304956
                                                       '()
                                                       _L299244_))))
                                        (declare (not safe))
                                        (cons __tmp304959 __tmp304955))))
                                 (declare (not safe))
                                 (cons __tmp304954 '()))))
                          (declare (not safe))
                          (cons _L299246_ __tmp304953))))
                   (declare (not safe))
                   (cons __tmp304960 __tmp304952)))))
          (let ((___match304678304679_
                 (lambda (_e299169299194_
                          _hd299168299198_
                          _tl299167299201_
                          _e299172299204_
                          _hd299171299208_
                          _tl299170299211_
                          ___splice304636304637_
                          _target299173299214_
                          _tl299175299217_)
                   (letrec ((_loop299176299220_
                             (lambda (_hd299174299224_ _arity299180299227_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd299174299224_))
                                   (let ((_e299177299230_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd299174299224_))))
                                     (let ((_lp-tl299179299237_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e299177299230_)))
                                           (_lp-hd299178299234_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e299177299230_))))
                                       (_loop299176299220_
                                        _lp-tl299179299237_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd299178299234_
                                                _arity299180299227_)))))
                                   (let ((_arity299181299240_
                                          (reverse _arity299180299227_)))
                                     (___kont304634304635_
                                      _arity299181299240_
                                      _hd299171299208_))))))
                     (_loop299176299220_ _target299173299214_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx304629304630_))
                (let ((_e299158299279_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx304629304630_))))
                  (let ((_tl299156299286_
                         (let () (declare (not safe)) (##cdr _e299158299279_)))
                        (_hd299157299283_
                         (let ()
                           (declare (not safe))
                           (##car _e299158299279_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl299156299286_))
                        (let ((_e299161299289_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl299156299286_))))
                          (let ((_tl299159299296_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e299161299289_)))
                                (_hd299160299293_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e299161299289_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl299159299296_))
                                (let ((_e299164299299_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl299159299296_))))
                                  (let ((_tl299162299306_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e299164299299_)))
                                        (_hd299163299303_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e299164299299_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl299162299306_))
                                        (___kont304632304633_
                                         _hd299163299303_
                                         _hd299160299293_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl299159299296_))
                                            (let ((___splice304636304637_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl299159299296_
                                                      '0))))
                                              (let ((_tl299175299217_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice304636304637_
                                                        '1)))
                                                    (_target299173299214_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice304636304637_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl299175299217_))
                                                    (___match304678304679_
                                                     _e299158299279_
                                                     _hd299157299283_
                                                     _tl299156299286_
                                                     _e299161299289_
                                                     _hd299160299293_
                                                     _tl299159299296_
                                                     ___splice304636304637_
                                                     _target299173299214_
                                                     _tl299175299217_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g299152299187_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g299152299187_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl299159299296_))
                                    (let ((___splice304636304637_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl299159299296_
                                              '0))))
                                      (let ((_tl299175299217_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice304636304637_
                                                '1)))
                                            (_target299173299214_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice304636304637_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl299175299217_))
                                            (___match304678304679_
                                             _e299158299279_
                                             _hd299157299283_
                                             _tl299156299286_
                                             _e299161299289_
                                             _hd299160299293_
                                             _tl299159299296_
                                             ___splice304636304637_
                                             _target299173299214_
                                             _tl299175299217_)
                                            (let ()
                                              (declare (not safe))
                                              (_g299152299187_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g299152299187_))))))
                        (let () (declare (not safe)) (_g299152299187_)))))
                (let () (declare (not safe)) (_g299152299187_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx299331_)
      (let* ((_g299335299370_
              (lambda (_g299336299366_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g299336299366_))))
             (_g299334299498_
              (lambda (_g299336299374_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g299336299374_))
                    (let ((_e299341299377_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g299336299374_))))
                      (let ((_hd299340299381_
                             (let ()
                               (declare (not safe))
                               (##car _e299341299377_)))
                            (_tl299339299384_
                             (let ()
                               (declare (not safe))
                               (##cdr _e299341299377_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl299339299384_))
                            (let ((_g304961_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl299339299384_
                                      '0))))
                              (begin
                                (let ((_g304962_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g304961_)
                                             (##vector-length _g304961_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g304962_ 2)))
                                      (error "Context expects 2 values"
                                             _g304962_)))
                                (let ((_target299342299387_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g304961_ 0)))
                                      (_tl299344299390_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g304961_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl299344299390_))
                                      (letrec ((_loop299345299393_
                                                (lambda (_hd299343299397_
                                                         _arity299349299400_
                                                         _prim299350299402_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd299343299397_))
                                                      (let ((_e299346299405_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd299343299397_))))
                (let ((_lp-hd299347299409_
                       (let () (declare (not safe)) (##car _e299346299405_)))
                      (_lp-tl299348299412_
                       (let () (declare (not safe)) (##cdr _e299346299405_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd299347299409_))
                      (let ((_e299355299415_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd299347299409_))))
                        (let ((_hd299354299419_
                               (let ()
                                 (declare (not safe))
                                 (##car _e299355299415_)))
                              (_tl299353299422_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e299355299415_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl299353299422_))
                              (let ((_g304971_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl299353299422_
                                        '0))))
                                (begin
                                  (let ((_g304972_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g304971_)
                                               (##vector-length _g304971_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g304972_ 2)))
                                        (error "Context expects 2 values"
                                               _g304972_)))
                                  (let ((_target299356299425_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g304971_ 0)))
                                        (_tl299358299428_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g304971_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl299358299428_))
                                        (letrec ((_loop299359299431_
                                                  (lambda (_hd299357299435_
                                                           _arity299363299438_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd299357299435_))
                                                        (let ((_e299360299441_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd299357299435_))))
                  (let ((_lp-hd299361299445_
                         (let () (declare (not safe)) (##car _e299360299441_)))
                        (_lp-tl299362299448_
                         (let ()
                           (declare (not safe))
                           (##cdr _e299360299441_))))
                    (_loop299359299431_
                     _lp-tl299362299448_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd299361299445_ _arity299363299438_)))))
                (let ((_arity299364299451_ (reverse _arity299363299438_)))
                  (_loop299345299393_
                   _lp-tl299348299412_
                   (let ()
                     (declare (not safe))
                     (cons _arity299364299451_ _arity299349299400_))
                   (let ()
                     (declare (not safe))
                     (cons _hd299354299419_ _prim299350299402_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop299359299431_
                                           _target299356299425_
                                           '()))
                                        (_g299335299370_ _g299336299374_)))))
                              (_g299335299370_ _g299336299374_))))
                      (_g299335299370_ _g299336299374_))))
              (let ((_arity299351299455_ (reverse _arity299349299400_))
                    (_prim299352299458_ (reverse _prim299350299402_)))
                ((lambda (_L299461_ _L299463_)
                   (let ((__tmp304970
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp304963
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L299461_
                               _L299463_))
                            (let ((__tmp304964
                                   (lambda (_g299478299484_
                                            _g299479299487_
                                            _g299480299489_)
                                     (let ((__tmp304965
                                            (let ((__tmp304969
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp304966
                                                   (let ((__tmp304967
                                                          (let ((__tmp304968
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g299481299492_ _g299482299495_)
                           (let ()
                             (declare (not safe))
                             (cons _g299481299492_ _g299482299495_)))))
                    (declare (not safe))
                    (foldr1 __tmp304968 '() _g299478299484_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g299479299487_
                                                           __tmp304967))))
                                              (declare (not safe))
                                              (cons __tmp304969 __tmp304966))))
                                       (declare (not safe))
                                       (cons __tmp304965 _g299480299489_)))))
                              (declare (not safe))
                              (foldr2 __tmp304964 '() _L299461_ _L299463_)))))
                     (declare (not safe))
                     (cons __tmp304970 __tmp304963)))
                 _arity299351299455_
                 _prim299352299458_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop299345299393_
                                         _target299342299387_
                                         '()
                                         '()))
                                      (_g299335299370_ _g299336299374_)))))
                            (_g299335299370_ _g299336299374_))))
                    (_g299335299370_ _g299336299374_)))))
        (_g299334299498_ _$stx299331_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx299504_)
      (let* ((_g299508299543_
              (lambda (_g299509299539_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g299509299539_))))
             (_g299507299671_
              (lambda (_g299509299547_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g299509299547_))
                    (let ((_e299514299550_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g299509299547_))))
                      (let ((_hd299513299554_
                             (let ()
                               (declare (not safe))
                               (##car _e299514299550_)))
                            (_tl299512299557_
                             (let ()
                               (declare (not safe))
                               (##cdr _e299514299550_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl299512299557_))
                            (let ((_g304973_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl299512299557_
                                      '0))))
                              (begin
                                (let ((_g304974_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g304973_)
                                             (##vector-length _g304973_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g304974_ 2)))
                                      (error "Context expects 2 values"
                                             _g304974_)))
                                (let ((_target299515299560_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g304973_ 0)))
                                      (_tl299517299563_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g304973_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl299517299563_))
                                      (letrec ((_loop299518299566_
                                                (lambda (_hd299516299570_
                                                         _arity299522299573_
                                                         _prim299523299575_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd299516299570_))
                                                      (let ((_e299519299578_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd299516299570_))))
                (let ((_lp-hd299520299582_
                       (let () (declare (not safe)) (##car _e299519299578_)))
                      (_lp-tl299521299585_
                       (let () (declare (not safe)) (##cdr _e299519299578_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd299520299582_))
                      (let ((_e299528299588_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd299520299582_))))
                        (let ((_hd299527299592_
                               (let ()
                                 (declare (not safe))
                                 (##car _e299528299588_)))
                              (_tl299526299595_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e299528299588_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl299526299595_))
                              (let ((_g304983_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl299526299595_
                                        '0))))
                                (begin
                                  (let ((_g304984_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g304983_)
                                               (##vector-length _g304983_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g304984_ 2)))
                                        (error "Context expects 2 values"
                                               _g304984_)))
                                  (let ((_target299529299598_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g304983_ 0)))
                                        (_tl299531299601_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g304983_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl299531299601_))
                                        (letrec ((_loop299532299604_
                                                  (lambda (_hd299530299608_
                                                           _arity299536299611_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd299530299608_))
                                                        (let ((_e299533299614_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd299530299608_))))
                  (let ((_lp-hd299534299618_
                         (let () (declare (not safe)) (##car _e299533299614_)))
                        (_lp-tl299535299621_
                         (let ()
                           (declare (not safe))
                           (##cdr _e299533299614_))))
                    (_loop299532299604_
                     _lp-tl299535299621_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd299534299618_ _arity299536299611_)))))
                (let ((_arity299537299624_ (reverse _arity299536299611_)))
                  (_loop299518299566_
                   _lp-tl299521299585_
                   (let ()
                     (declare (not safe))
                     (cons _arity299537299624_ _arity299522299573_))
                   (let ()
                     (declare (not safe))
                     (cons _hd299527299592_ _prim299523299575_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop299532299604_
                                           _target299529299598_
                                           '()))
                                        (_g299508299543_ _g299509299547_)))))
                              (_g299508299543_ _g299509299547_))))
                      (_g299508299543_ _g299509299547_))))
              (let ((_arity299524299628_ (reverse _arity299522299573_))
                    (_prim299525299631_ (reverse _prim299523299575_)))
                ((lambda (_L299634_ _L299636_)
                   (let ((__tmp304982
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp304975
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L299634_
                               _L299636_))
                            (let ((__tmp304976
                                   (lambda (_g299651299657_
                                            _g299652299660_
                                            _g299653299662_)
                                     (let ((__tmp304977
                                            (let ((__tmp304981
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp304978
                                                   (let ((__tmp304979
                                                          (let ((__tmp304980
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g299654299665_ _g299655299668_)
                           (let ()
                             (declare (not safe))
                             (cons _g299654299665_ _g299655299668_)))))
                    (declare (not safe))
                    (foldr1 __tmp304980 '() _g299651299657_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g299652299660_
                                                           __tmp304979))))
                                              (declare (not safe))
                                              (cons __tmp304981 __tmp304978))))
                                       (declare (not safe))
                                       (cons __tmp304977 _g299653299662_)))))
                              (declare (not safe))
                              (foldr2 __tmp304976 '() _L299634_ _L299636_)))))
                     (declare (not safe))
                     (cons __tmp304982 __tmp304975)))
                 _arity299524299628_
                 _prim299525299631_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop299518299566_
                                         _target299515299560_
                                         '()
                                         '()))
                                      (_g299508299543_ _g299509299547_)))))
                            (_g299508299543_ _g299509299547_))))
                    (_g299508299543_ _g299509299547_)))))
        (_g299507299671_ _$stx299504_)))))
