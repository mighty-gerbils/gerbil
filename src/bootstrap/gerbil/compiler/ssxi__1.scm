(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx296586_)
      (let* ((_g296590296608_
              (lambda (_g296591296604_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g296591296604_))))
             (_g296589296663_
              (lambda (_g296591296612_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g296591296612_))
                    (let ((_e296596296615_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g296591296612_))))
                      (let ((_hd296595296619_
                             (let ()
                               (declare (not safe))
                               (##car _e296596296615_)))
                            (_tl296594296622_
                             (let ()
                               (declare (not safe))
                               (##cdr _e296596296615_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl296594296622_))
                            (let ((_e296599296625_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl296594296622_))))
                              (let ((_hd296598296629_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e296599296625_)))
                                    (_tl296597296632_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e296599296625_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl296597296632_))
                                    (let ((_e296602296635_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl296597296632_))))
                                      (let ((_hd296601296639_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e296602296635_)))
                                            (_tl296600296642_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e296602296635_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl296600296642_))
                                            ((lambda (_L296645_ _L296647_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L296647_))
                                                   (let ((__tmp304677
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp304672
                                                          (let ((__tmp304674
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp304676
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp304675
                                (let ()
                                  (declare (not safe))
                                  (cons _L296647_ '()))))
                           (declare (not safe))
                           (cons __tmp304676 __tmp304675)))
                        (__tmp304673
                         (let () (declare (not safe)) (cons _L296645_ '()))))
                    (declare (not safe))
                    (cons __tmp304674 __tmp304673))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp304677
                                                           __tmp304672))
                                                   (_g296590296608_
                                                    _g296591296612_)))
                                             _hd296601296639_
                                             _hd296598296629_)
                                            (_g296590296608_
                                             _g296591296612_))))
                                    (_g296590296608_ _g296591296612_))))
                            (_g296590296608_ _g296591296612_))))
                    (_g296590296608_ _g296591296612_)))))
        (_g296589296663_ _$stx296586_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx296667_)
      (let* ((_g296671296700_
              (lambda (_g296672296696_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g296672296696_))))
             (_g296670296800_
              (lambda (_g296672296704_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g296672296704_))
                    (let ((_e296677296707_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g296672296704_))))
                      (let ((_hd296676296711_
                             (let ()
                               (declare (not safe))
                               (##car _e296677296707_)))
                            (_tl296675296714_
                             (let ()
                               (declare (not safe))
                               (##cdr _e296677296707_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl296675296714_))
                            (let ((_g304678_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl296675296714_
                                      '0))))
                              (begin
                                (let ((_g304679_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g304678_)
                                             (##vector-length _g304678_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g304679_ 2)))
                                      (error "Context expects 2 values"
                                             _g304679_)))
                                (let ((_target296678296717_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g304678_ 0)))
                                      (_tl296680296720_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g304678_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl296680296720_))
                                      (letrec ((_loop296681296723_
                                                (lambda (_hd296679296727_
                                                         _type296685296730_
                                                         _symbol296686296732_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd296679296727_))
                                                      (let ((_e296682296735_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd296679296727_))))
                (let ((_lp-hd296683296739_
                       (let () (declare (not safe)) (##car _e296682296735_)))
                      (_lp-tl296684296742_
                       (let () (declare (not safe)) (##cdr _e296682296735_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd296683296739_))
                      (let ((_e296691296745_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd296683296739_))))
                        (let ((_hd296690296749_
                               (let ()
                                 (declare (not safe))
                                 (##car _e296691296745_)))
                              (_tl296689296752_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e296691296745_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl296689296752_))
                              (let ((_e296694296755_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl296689296752_))))
                                (let ((_hd296693296759_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e296694296755_)))
                                      (_tl296692296762_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e296694296755_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl296692296762_))
                                      (_loop296681296723_
                                       _lp-tl296684296742_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd296693296759_
                                               _type296685296730_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd296690296749_
                                               _symbol296686296732_)))
                                      (_g296671296700_ _g296672296704_))))
                              (_g296671296700_ _g296672296704_))))
                      (_g296671296700_ _g296672296704_))))
              (let ((_type296687296765_ (reverse _type296685296730_))
                    (_symbol296688296768_ (reverse _symbol296686296732_)))
                ((lambda (_L296771_ _L296773_)
                   (let ((__tmp304686
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp304680
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L296771_
                               _L296773_))
                            (let ((__tmp304681
                                   (lambda (_g296788296792_
                                            _g296789296795_
                                            _g296790296797_)
                                     (let ((__tmp304682
                                            (let ((__tmp304685
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp304683
                                                   (let ((__tmp304684
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g296788296792_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g296789296795_
                                                           __tmp304684))))
                                              (declare (not safe))
                                              (cons __tmp304685 __tmp304683))))
                                       (declare (not safe))
                                       (cons __tmp304682 _g296790296797_)))))
                              (declare (not safe))
                              (foldr2 __tmp304681 '() _L296771_ _L296773_)))))
                     (declare (not safe))
                     (cons __tmp304686 __tmp304680)))
                 _type296687296765_
                 _symbol296688296768_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop296681296723_
                                         _target296678296717_
                                         '()
                                         '()))
                                      (_g296671296700_ _g296672296704_)))))
                            (_g296671296700_ _g296672296704_))))
                    (_g296671296700_ _g296672296704_)))))
        (_g296670296800_ _$stx296667_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx296805_)
      (let* ((___stx304237304238_ _$stx296805_)
             (_g296810296852_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx304237304238_)))))
        (let ((___kont304240304241_
               (lambda (_L296980_ _L296982_ _L296983_ _L296984_)
                 (let ((__tmp304700
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp304687
                        (let ((__tmp304697
                               (let ((__tmp304699
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp304698
                                      (let ()
                                        (declare (not safe))
                                        (cons _L296984_ '()))))
                                 (declare (not safe))
                                 (cons __tmp304699 __tmp304698)))
                              (__tmp304688
                               (let ((__tmp304694
                                      (let ((__tmp304696
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp304695
                                             (let ()
                                               (declare (not safe))
                                               (cons _L296983_ '()))))
                                        (declare (not safe))
                                        (cons __tmp304696 __tmp304695)))
                                     (__tmp304689
                                      (let ((__tmp304691
                                             (let ((__tmp304693
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp304692
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L296982_ '()))))
                                               (declare (not safe))
                                               (cons __tmp304693 __tmp304692)))
                                            (__tmp304690
                                             (let ()
                                               (declare (not safe))
                                               (cons _L296980_ '()))))
                                        (declare (not safe))
                                        (cons __tmp304691 __tmp304690))))
                                 (declare (not safe))
                                 (cons __tmp304694 __tmp304689))))
                          (declare (not safe))
                          (cons __tmp304697 __tmp304688))))
                   (declare (not safe))
                   (cons __tmp304700 __tmp304687))))
              (___kont304242304243_
               (lambda (_L296899_ _L296901_ _L296902_ _L296903_)
                 (let ((__tmp304701
                        (let ((__tmp304702
                               (let ((__tmp304703
                                      (let ((__tmp304704
                                             (let ((__tmp304705
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp304705 '()))))
                                        (declare (not safe))
                                        (cons _L296899_ __tmp304704))))
                                 (declare (not safe))
                                 (cons _L296901_ __tmp304703))))
                          (declare (not safe))
                          (cons _L296902_ __tmp304702))))
                   (declare (not safe))
                   (cons _L296903_ __tmp304701)))))
          (let ((___match304276304277_
                 (lambda (_e296818296930_
                          _hd296817296934_
                          _tl296816296937_
                          _e296821296940_
                          _hd296820296944_
                          _tl296819296947_
                          _e296824296950_
                          _hd296823296954_
                          _tl296822296957_
                          _e296827296960_
                          _hd296826296964_
                          _tl296825296967_
                          _e296830296970_
                          _hd296829296974_
                          _tl296828296977_)
                   (let ((_L296980_ _hd296829296974_)
                         (_L296982_ _hd296826296964_)
                         (_L296983_ _hd296823296954_)
                         (_L296984_ _hd296820296944_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L296984_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L296983_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L296982_)))
                         (___kont304240304241_
                          _L296980_
                          _L296982_
                          _L296983_
                          _L296984_)
                         (let () (declare (not safe)) (_g296810296852_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx304237304238_))
                (let ((_e296818296930_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx304237304238_))))
                  (let ((_tl296816296937_
                         (let () (declare (not safe)) (##cdr _e296818296930_)))
                        (_hd296817296934_
                         (let ()
                           (declare (not safe))
                           (##car _e296818296930_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl296816296937_))
                        (let ((_e296821296940_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl296816296937_))))
                          (let ((_tl296819296947_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e296821296940_)))
                                (_hd296820296944_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e296821296940_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl296819296947_))
                                (let ((_e296824296950_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl296819296947_))))
                                  (let ((_tl296822296957_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e296824296950_)))
                                        (_hd296823296954_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e296824296950_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl296822296957_))
                                        (let ((_e296827296960_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl296822296957_))))
                                          (let ((_tl296825296967_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e296827296960_)))
                                                (_hd296826296964_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e296827296960_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl296825296967_))
                                                (let ((_e296830296970_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl296825296967_))))
                                                  (let ((_tl296828296977_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e296830296970_)))
                                                        (_hd296829296974_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e296830296970_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl296828296977_))
                                                        (___match304276304277_
                                                         _e296818296930_
                                                         _hd296817296934_
                                                         _tl296816296937_
                                                         _e296821296940_
                                                         _hd296820296944_
                                                         _tl296819296947_
                                                         _e296824296950_
                                                         _hd296823296954_
                                                         _tl296822296957_
                                                         _e296827296960_
                                                         _hd296826296964_
                                                         _tl296825296967_
                                                         _e296830296970_
                                                         _hd296829296974_
                                                         _tl296828296977_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g296810296852_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl296825296967_))
                                                    (___kont304242304243_
                                                     _hd296826296964_
                                                     _hd296823296954_
                                                     _hd296820296944_
                                                     _hd296817296934_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g296810296852_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g296810296852_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g296810296852_)))))
                        (let () (declare (not safe)) (_g296810296852_)))))
                (let () (declare (not safe)) (_g296810296852_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx297009_)
      (let* ((_g297013297048_
              (lambda (_g297014297044_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g297014297044_))))
             (_g297012297167_
              (lambda (_g297014297052_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g297014297052_))
                    (let ((_e297020297055_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g297014297052_))))
                      (let ((_hd297019297059_
                             (let ()
                               (declare (not safe))
                               (##car _e297020297055_)))
                            (_tl297018297062_
                             (let ()
                               (declare (not safe))
                               (##cdr _e297020297055_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl297018297062_))
                            (let ((_g304706_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl297018297062_
                                      '0))))
                              (begin
                                (let ((_g304707_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g304706_)
                                             (##vector-length _g304706_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g304707_ 2)))
                                      (error "Context expects 2 values"
                                             _g304707_)))
                                (let ((_target297021297065_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g304706_ 0)))
                                      (_tl297023297068_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g304706_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl297023297068_))
                                      (letrec ((_loop297024297071_
                                                (lambda (_hd297022297075_
                                                         _symbol297028297078_
                                                         _method297029297080_
                                                         _type-t297030297082_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd297022297075_))
                                                      (let ((_e297025297085_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd297022297075_))))
                (let ((_lp-hd297026297089_
                       (let () (declare (not safe)) (##car _e297025297085_)))
                      (_lp-tl297027297092_
                       (let () (declare (not safe)) (##cdr _e297025297085_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd297026297089_))
                      (let ((_e297036297095_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd297026297089_))))
                        (let ((_hd297035297099_
                               (let ()
                                 (declare (not safe))
                                 (##car _e297036297095_)))
                              (_tl297034297102_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e297036297095_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl297034297102_))
                              (let ((_e297039297105_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl297034297102_))))
                                (let ((_hd297038297109_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e297039297105_)))
                                      (_tl297037297112_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e297039297105_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl297037297112_))
                                      (let ((_e297042297115_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl297037297112_))))
                                        (let ((_hd297041297119_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e297042297115_)))
                                              (_tl297040297122_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e297042297115_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl297040297122_))
                                              (_loop297024297071_
                                               _lp-tl297027297092_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd297041297119_
                                                       _symbol297028297078_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd297038297109_
                                                       _method297029297080_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd297035297099_
                                                       _type-t297030297082_)))
                                              (_g297013297048_
                                               _g297014297052_))))
                                      (_g297013297048_ _g297014297052_))))
                              (_g297013297048_ _g297014297052_))))
                      (_g297013297048_ _g297014297052_))))
              (let ((_symbol297031297125_ (reverse _symbol297028297078_))
                    (_method297032297128_ (reverse _method297029297080_))
                    (_type-t297033297130_ (reverse _type-t297030297082_)))
                ((lambda (_L297133_ _L297135_ _L297136_)
                   (let ((__tmp304715
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp304708
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L297133_
                               _L297135_
                               _L297136_))
                            (let ((__tmp304709
                                   (lambda (_g297152297157_
                                            _g297153297160_
                                            _g297154297162_
                                            _g297155297164_)
                                     (let ((__tmp304710
                                            (let ((__tmp304714
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp304711
                                                   (let ((__tmp304712
                                                          (let ((__tmp304713
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g297152297157_ '()))))
                    (declare (not safe))
                    (cons _g297153297160_ __tmp304713))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g297154297162_
                                                           __tmp304712))))
                                              (declare (not safe))
                                              (cons __tmp304714 __tmp304711))))
                                       (declare (not safe))
                                       (cons __tmp304710 _g297155297164_)))))
                              (declare (not safe))
                              (foldr* __tmp304709
                                      '()
                                      _L297133_
                                      _L297135_
                                      _L297136_)))))
                     (declare (not safe))
                     (cons __tmp304715 __tmp304708)))
                 _symbol297031297125_
                 _method297032297128_
                 _type-t297033297130_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop297024297071_
                                         _target297021297065_
                                         '()
                                         '()
                                         '()))
                                      (_g297013297048_ _g297014297052_)))))
                            (_g297013297048_ _g297014297052_))))
                    (_g297013297048_ _g297014297052_)))))
        (_g297012297167_ _$stx297009_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx297172_)
      (let* ((_g297176297209_
              (lambda (_g297177297205_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g297177297205_))))
             (_g297175297323_
              (lambda (_g297177297213_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g297177297213_))
                    (let ((_e297183297216_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g297177297213_))))
                      (let ((_hd297182297220_
                             (let ()
                               (declare (not safe))
                               (##car _e297183297216_)))
                            (_tl297181297223_
                             (let ()
                               (declare (not safe))
                               (##cdr _e297183297216_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl297181297223_))
                            (let ((_e297186297226_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl297181297223_))))
                              (let ((_hd297185297230_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e297186297226_)))
                                    (_tl297184297233_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e297186297226_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl297184297233_))
                                    (let ((_g304716_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl297184297233_
                                              '0))))
                                      (begin
                                        (let ((_g304717_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g304716_)
                                                     (##vector-length
                                                      _g304716_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g304717_ 2)))
                                              (error "Context expects 2 values"
                                                     _g304717_)))
                                        (let ((_target297187297236_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g304716_ 0)))
                                              (_tl297189297239_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g304716_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl297189297239_))
                                              (letrec ((_loop297190297242_
                                                        (lambda (_hd297188297246_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol297194297249_
                         _method297195297251_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd297188297246_))
                      (let ((_e297191297254_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd297188297246_))))
                        (let ((_lp-hd297192297258_
                               (let ()
                                 (declare (not safe))
                                 (##car _e297191297254_)))
                              (_lp-tl297193297261_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e297191297254_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd297192297258_))
                              (let ((_e297200297264_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd297192297258_))))
                                (let ((_hd297199297268_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e297200297264_)))
                                      (_tl297198297271_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e297200297264_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl297198297271_))
                                      (let ((_e297203297274_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl297198297271_))))
                                        (let ((_hd297202297278_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e297203297274_)))
                                              (_tl297201297281_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e297203297274_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl297201297281_))
                                              (_loop297190297242_
                                               _lp-tl297193297261_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd297202297278_
                                                       _symbol297194297249_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd297199297268_
                                                       _method297195297251_)))
                                              (_g297176297209_
                                               _g297177297213_))))
                                      (_g297176297209_ _g297177297213_))))
                              (_g297176297209_ _g297177297213_))))
                      (let ((_symbol297196297284_
                             (reverse _symbol297194297249_))
                            (_method297197297287_
                             (reverse _method297195297251_)))
                        ((lambda (_L297290_ _L297292_ _L297293_)
                           (let ((__tmp304725
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp304718
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L297290_
                                       _L297292_))
                                    (let ((__tmp304719
                                           (lambda (_g297311297315_
                                                    _g297312297318_
                                                    _g297313297320_)
                                             (let ((__tmp304720
                                                    (let ((__tmp304724
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp304721
                                                           (let ((__tmp304722
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp304723
                                 (let ()
                                   (declare (not safe))
                                   (cons _g297311297315_ '()))))
                            (declare (not safe))
                            (cons _g297312297318_ __tmp304723))))
                     (declare (not safe))
                     (cons _L297293_ __tmp304722))))
              (declare (not safe))
              (cons __tmp304724 __tmp304721))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp304720
                                                     _g297313297320_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp304719
                                              '()
                                              _L297290_
                                              _L297292_)))))
                             (declare (not safe))
                             (cons __tmp304725 __tmp304718)))
                         _symbol297196297284_
                         _method297197297287_
                         _hd297185297230_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop297190297242_
                                                 _target297187297236_
                                                 '()
                                                 '()))
                                              (_g297176297209_
                                               _g297177297213_)))))
                                    (_g297176297209_ _g297177297213_))))
                            (_g297176297209_ _g297177297213_))))
                    (_g297176297209_ _g297177297213_)))))
        (_g297175297323_ _$stx297172_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx297328_)
      (let* ((_g297332297346_
              (lambda (_g297333297342_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g297333297342_))))
             (_g297331297387_
              (lambda (_g297333297350_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g297333297350_))
                    (let ((_e297337297353_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g297333297350_))))
                      (let ((_hd297336297357_
                             (let ()
                               (declare (not safe))
                               (##car _e297337297353_)))
                            (_tl297335297360_
                             (let ()
                               (declare (not safe))
                               (##cdr _e297337297353_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl297335297360_))
                            (let ((_e297340297363_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl297335297360_))))
                              (let ((_hd297339297367_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e297340297363_)))
                                    (_tl297338297370_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e297340297363_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl297338297370_))
                                    ((lambda (_L297373_)
                                       (let ((__tmp304730
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp304726
                                              (let ((__tmp304727
                                                     (let ((__tmp304729
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp304728
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L297373_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp304729 __tmp304728))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp304727 '()))))
                                         (declare (not safe))
                                         (cons __tmp304730 __tmp304726)))
                                     _hd297339297367_)
                                    (_g297332297346_ _g297333297350_))))
                            (_g297332297346_ _g297333297350_))))
                    (_g297332297346_ _g297333297350_)))))
        (_g297331297387_ _$stx297328_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx297391_)
      (let* ((_g297395297441_
              (lambda (_g297396297437_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g297396297437_))))
             (_g297394297594_
              (lambda (_g297396297445_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g297396297445_))
                    (let ((_e297408297448_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g297396297445_))))
                      (let ((_hd297407297452_
                             (let ()
                               (declare (not safe))
                               (##car _e297408297448_)))
                            (_tl297406297455_
                             (let ()
                               (declare (not safe))
                               (##cdr _e297408297448_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl297406297455_))
                            (let ((_e297411297458_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl297406297455_))))
                              (let ((_hd297410297462_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e297411297458_)))
                                    (_tl297409297465_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e297411297458_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl297409297465_))
                                    (let ((_e297414297468_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl297409297465_))))
                                      (let ((_hd297413297472_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e297414297468_)))
                                            (_tl297412297475_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e297414297468_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl297412297475_))
                                            (let ((_e297417297478_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl297412297475_))))
                                              (let ((_hd297416297482_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e297417297478_)))
                                                    (_tl297415297485_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e297417297478_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl297415297485_))
                                                    (let ((_e297420297488_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl297415297485_))))
                                                      (let ((_hd297419297492_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e297420297488_)))
                    (_tl297418297495_
                     (let () (declare (not safe)) (##cdr _e297420297488_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl297418297495_))
                    (let ((_e297423297498_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl297418297495_))))
                      (let ((_hd297422297502_
                             (let ()
                               (declare (not safe))
                               (##car _e297423297498_)))
                            (_tl297421297505_
                             (let ()
                               (declare (not safe))
                               (##cdr _e297423297498_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl297421297505_))
                            (let ((_e297426297508_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl297421297505_))))
                              (let ((_hd297425297512_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e297426297508_)))
                                    (_tl297424297515_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e297426297508_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl297424297515_))
                                    (let ((_e297429297518_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl297424297515_))))
                                      (let ((_hd297428297522_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e297429297518_)))
                                            (_tl297427297525_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e297429297518_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl297427297525_))
                                            (let ((_e297432297528_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl297427297525_))))
                                              (let ((_hd297431297532_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e297432297528_)))
                                                    (_tl297430297535_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e297432297528_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl297430297535_))
                                                    (let ((_e297435297538_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl297430297535_))))
                                                      (let ((_hd297434297542_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e297435297538_)))
                    (_tl297433297545_
                     (let () (declare (not safe)) (##cdr _e297435297538_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl297433297545_))
                    ((lambda (_L297548_
                              _L297550_
                              _L297551_
                              _L297552_
                              _L297553_
                              _L297554_
                              _L297555_
                              _L297556_
                              _L297557_)
                       (let ((__tmp304767
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'make-!class)))
                             (__tmp304731
                              (let ((__tmp304764
                                     (let ((__tmp304766
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'quote)))
                                           (__tmp304765
                                            (let ()
                                              (declare (not safe))
                                              (cons _L297557_ '()))))
                                       (declare (not safe))
                                       (cons __tmp304766 __tmp304765)))
                                    (__tmp304732
                                     (let ((__tmp304761
                                            (let ((__tmp304763
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote)))
                                                  (__tmp304762
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L297556_ '()))))
                                              (declare (not safe))
                                              (cons __tmp304763 __tmp304762)))
                                           (__tmp304733
                                            (let ((__tmp304758
                                                   (let ((__tmp304760
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'quote)))
                                                         (__tmp304759
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L297555_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp304760
                                                           __tmp304759)))
                                                  (__tmp304734
                                                   (let ((__tmp304755
                                                          (let ((__tmp304757
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote)))
                        (__tmp304756
                         (let () (declare (not safe)) (cons _L297554_ '()))))
                    (declare (not safe))
                    (cons __tmp304757 __tmp304756)))
                 (__tmp304735
                  (let ((__tmp304752
                         (let ((__tmp304754
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp304753
                                (let ()
                                  (declare (not safe))
                                  (cons _L297553_ '()))))
                           (declare (not safe))
                           (cons __tmp304754 __tmp304753)))
                        (__tmp304736
                         (let ((__tmp304749
                                (let ((__tmp304751
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote)))
                                      (__tmp304750
                                       (let ()
                                         (declare (not safe))
                                         (cons _L297552_ '()))))
                                  (declare (not safe))
                                  (cons __tmp304751 __tmp304750)))
                               (__tmp304737
                                (let ((__tmp304746
                                       (let ((__tmp304748
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'quote)))
                                             (__tmp304747
                                              (let ()
                                                (declare (not safe))
                                                (cons _L297551_ '()))))
                                         (declare (not safe))
                                         (cons __tmp304748 __tmp304747)))
                                      (__tmp304738
                                       (let ((__tmp304743
                                              (let ((__tmp304745
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'quote)))
                                                    (__tmp304744
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L297550_ '()))))
                                                (declare (not safe))
                                                (cons __tmp304745
                                                      __tmp304744)))
                                             (__tmp304739
                                              (let ((__tmp304740
                                                     (let ((__tmp304742
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp304741
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L297548_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp304742 __tmp304741))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp304740 '()))))
                                         (declare (not safe))
                                         (cons __tmp304743 __tmp304739))))
                                  (declare (not safe))
                                  (cons __tmp304746 __tmp304738))))
                           (declare (not safe))
                           (cons __tmp304749 __tmp304737))))
                    (declare (not safe))
                    (cons __tmp304752 __tmp304736))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp304755
                                                           __tmp304735))))
                                              (declare (not safe))
                                              (cons __tmp304758 __tmp304734))))
                                       (declare (not safe))
                                       (cons __tmp304761 __tmp304733))))
                                (declare (not safe))
                                (cons __tmp304764 __tmp304732))))
                         (declare (not safe))
                         (cons __tmp304767 __tmp304731)))
                     _hd297434297542_
                     _hd297431297532_
                     _hd297428297522_
                     _hd297425297512_
                     _hd297422297502_
                     _hd297419297492_
                     _hd297416297482_
                     _hd297413297472_
                     _hd297410297462_)
                    (_g297395297441_ _g297396297445_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g297395297441_
                                                     _g297396297445_))))
                                            (_g297395297441_
                                             _g297396297445_))))
                                    (_g297395297441_ _g297396297445_))))
                            (_g297395297441_ _g297396297445_))))
                    (_g297395297441_ _g297396297445_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g297395297441_
                                                     _g297396297445_))))
                                            (_g297395297441_
                                             _g297396297445_))))
                                    (_g297395297441_ _g297396297445_))))
                            (_g297395297441_ _g297396297445_))))
                    (_g297395297441_ _g297396297445_)))))
        (_g297394297594_ _$stx297391_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx297598_)
      (let* ((_g297602297616_
              (lambda (_g297603297612_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g297603297612_))))
             (_g297601297657_
              (lambda (_g297603297620_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g297603297620_))
                    (let ((_e297607297623_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g297603297620_))))
                      (let ((_hd297606297627_
                             (let ()
                               (declare (not safe))
                               (##car _e297607297623_)))
                            (_tl297605297630_
                             (let ()
                               (declare (not safe))
                               (##cdr _e297607297623_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl297605297630_))
                            (let ((_e297610297633_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl297605297630_))))
                              (let ((_hd297609297637_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e297610297633_)))
                                    (_tl297608297640_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e297610297633_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl297608297640_))
                                    ((lambda (_L297643_)
                                       (let ((__tmp304772
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp304768
                                              (let ((__tmp304769
                                                     (let ((__tmp304771
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp304770
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L297643_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp304771 __tmp304770))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp304769 '()))))
                                         (declare (not safe))
                                         (cons __tmp304772 __tmp304768)))
                                     _hd297609297637_)
                                    (_g297602297616_ _g297603297620_))))
                            (_g297602297616_ _g297603297620_))))
                    (_g297602297616_ _g297603297620_)))))
        (_g297601297657_ _$stx297598_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx297661_)
      (let* ((_g297665297679_
              (lambda (_g297666297675_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g297666297675_))))
             (_g297664297720_
              (lambda (_g297666297683_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g297666297683_))
                    (let ((_e297670297686_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g297666297683_))))
                      (let ((_hd297669297690_
                             (let ()
                               (declare (not safe))
                               (##car _e297670297686_)))
                            (_tl297668297693_
                             (let ()
                               (declare (not safe))
                               (##cdr _e297670297686_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl297668297693_))
                            (let ((_e297673297696_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl297668297693_))))
                              (let ((_hd297672297700_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e297673297696_)))
                                    (_tl297671297703_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e297673297696_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl297671297703_))
                                    ((lambda (_L297706_)
                                       (let ((__tmp304777
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp304773
                                              (let ((__tmp304774
                                                     (let ((__tmp304776
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp304775
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L297706_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp304776 __tmp304775))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp304774 '()))))
                                         (declare (not safe))
                                         (cons __tmp304777 __tmp304773)))
                                     _hd297672297700_)
                                    (_g297665297679_ _g297666297683_))))
                            (_g297665297679_ _g297666297683_))))
                    (_g297665297679_ _g297666297683_)))))
        (_g297664297720_ _$stx297661_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx297724_)
      (let* ((_g297728297750_
              (lambda (_g297729297746_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g297729297746_))))
             (_g297727297819_
              (lambda (_g297729297754_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g297729297754_))
                    (let ((_e297735297757_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g297729297754_))))
                      (let ((_hd297734297761_
                             (let ()
                               (declare (not safe))
                               (##car _e297735297757_)))
                            (_tl297733297764_
                             (let ()
                               (declare (not safe))
                               (##cdr _e297735297757_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl297733297764_))
                            (let ((_e297738297767_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl297733297764_))))
                              (let ((_hd297737297771_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e297738297767_)))
                                    (_tl297736297774_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e297738297767_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl297736297774_))
                                    (let ((_e297741297777_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl297736297774_))))
                                      (let ((_hd297740297781_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e297741297777_)))
                                            (_tl297739297784_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e297741297777_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl297739297784_))
                                            (let ((_e297744297787_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl297739297784_))))
                                              (let ((_hd297743297791_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e297744297787_)))
                                                    (_tl297742297794_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e297744297787_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl297742297794_))
                                                    ((lambda (_L297797_
                                                              _L297799_
                                                              _L297800_)
                                                       (let ((__tmp304787
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp304778
                      (let ((__tmp304784
                             (let ((__tmp304786
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp304785
                                    (let ()
                                      (declare (not safe))
                                      (cons _L297800_ '()))))
                               (declare (not safe))
                               (cons __tmp304786 __tmp304785)))
                            (__tmp304779
                             (let ((__tmp304781
                                    (let ((__tmp304783
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp304782
                                           (let ()
                                             (declare (not safe))
                                             (cons _L297799_ '()))))
                                      (declare (not safe))
                                      (cons __tmp304783 __tmp304782)))
                                   (__tmp304780
                                    (let ()
                                      (declare (not safe))
                                      (cons _L297797_ '()))))
                               (declare (not safe))
                               (cons __tmp304781 __tmp304780))))
                        (declare (not safe))
                        (cons __tmp304784 __tmp304779))))
                 (declare (not safe))
                 (cons __tmp304787 __tmp304778)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd297743297791_
                                                     _hd297740297781_
                                                     _hd297737297771_)
                                                    (_g297728297750_
                                                     _g297729297754_))))
                                            (_g297728297750_
                                             _g297729297754_))))
                                    (_g297728297750_ _g297729297754_))))
                            (_g297728297750_ _g297729297754_))))
                    (_g297728297750_ _g297729297754_)))))
        (_g297727297819_ _$stx297724_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx297823_)
      (let* ((_g297827297849_
              (lambda (_g297828297845_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g297828297845_))))
             (_g297826297918_
              (lambda (_g297828297853_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g297828297853_))
                    (let ((_e297834297856_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g297828297853_))))
                      (let ((_hd297833297860_
                             (let ()
                               (declare (not safe))
                               (##car _e297834297856_)))
                            (_tl297832297863_
                             (let ()
                               (declare (not safe))
                               (##cdr _e297834297856_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl297832297863_))
                            (let ((_e297837297866_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl297832297863_))))
                              (let ((_hd297836297870_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e297837297866_)))
                                    (_tl297835297873_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e297837297866_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl297835297873_))
                                    (let ((_e297840297876_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl297835297873_))))
                                      (let ((_hd297839297880_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e297840297876_)))
                                            (_tl297838297883_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e297840297876_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl297838297883_))
                                            (let ((_e297843297886_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl297838297883_))))
                                              (let ((_hd297842297890_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e297843297886_)))
                                                    (_tl297841297893_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e297843297886_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl297841297893_))
                                                    ((lambda (_L297896_
                                                              _L297898_
                                                              _L297899_)
                                                       (let ((__tmp304797
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp304788
                      (let ((__tmp304794
                             (let ((__tmp304796
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp304795
                                    (let ()
                                      (declare (not safe))
                                      (cons _L297899_ '()))))
                               (declare (not safe))
                               (cons __tmp304796 __tmp304795)))
                            (__tmp304789
                             (let ((__tmp304791
                                    (let ((__tmp304793
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp304792
                                           (let ()
                                             (declare (not safe))
                                             (cons _L297898_ '()))))
                                      (declare (not safe))
                                      (cons __tmp304793 __tmp304792)))
                                   (__tmp304790
                                    (let ()
                                      (declare (not safe))
                                      (cons _L297896_ '()))))
                               (declare (not safe))
                               (cons __tmp304791 __tmp304790))))
                        (declare (not safe))
                        (cons __tmp304794 __tmp304789))))
                 (declare (not safe))
                 (cons __tmp304797 __tmp304788)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd297842297890_
                                                     _hd297839297880_
                                                     _hd297836297870_)
                                                    (_g297827297849_
                                                     _g297828297853_))))
                                            (_g297827297849_
                                             _g297828297853_))))
                                    (_g297827297849_ _g297828297853_))))
                            (_g297827297849_ _g297828297853_))))
                    (_g297827297849_ _g297828297853_)))))
        (_g297826297918_ _$stx297823_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx297922_)
      (let* ((___stx304305304306_ _$stx297922_)
             (_g297930297998_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx304305304306_)))))
        (let ((___kont304308304309_
               (lambda (_L298276_ _L298278_)
                 (let ((__tmp304813
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp304798
                        (let ((__tmp304809
                               (let ((__tmp304812
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp304810
                                      (let ((__tmp304811
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp304811 '()))))
                                 (declare (not safe))
                                 (cons __tmp304812 __tmp304810)))
                              (__tmp304799
                               (let ((__tmp304806
                                      (let ((__tmp304808
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp304807
                                             (let ()
                                               (declare (not safe))
                                               (cons _L298278_ '()))))
                                        (declare (not safe))
                                        (cons __tmp304808 __tmp304807)))
                                     (__tmp304800
                                      (let ((__tmp304801
                                             (let ((__tmp304802
                                                    (let ((__tmp304803
                                                           (let ((__tmp304805
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp304804
                          (let () (declare (not safe)) (cons _L298276_ '()))))
                     (declare (not safe))
                     (cons __tmp304805 __tmp304804))))
              (declare (not safe))
              (cons __tmp304803 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L298276_ __tmp304802))))
                                        (declare (not safe))
                                        (cons '#f __tmp304801))))
                                 (declare (not safe))
                                 (cons __tmp304806 __tmp304800))))
                          (declare (not safe))
                          (cons __tmp304809 __tmp304799))))
                   (declare (not safe))
                   (cons __tmp304813 __tmp304798))))
              (___kont304310304311_
               (lambda (_L298207_ _L298209_)
                 (let ((__tmp304814
                        (let ((__tmp304815
                               (let ((__tmp304816
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L298207_ __tmp304816))))
                          (declare (not safe))
                          (cons 'primitive: __tmp304815))))
                   (declare (not safe))
                   (cons _L298209_ __tmp304814))))
              (___kont304312304313_
               (lambda (_L298146_ _L298148_)
                 (let ((__tmp304830
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp304817
                        (let ((__tmp304826
                               (let ((__tmp304829
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp304827
                                      (let ((__tmp304828
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp304828 '()))))
                                 (declare (not safe))
                                 (cons __tmp304829 __tmp304827)))
                              (__tmp304818
                               (let ((__tmp304823
                                      (let ((__tmp304825
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp304824
                                             (let ()
                                               (declare (not safe))
                                               (cons _L298148_ '()))))
                                        (declare (not safe))
                                        (cons __tmp304825 __tmp304824)))
                                     (__tmp304819
                                      (let ((__tmp304820
                                             (let ((__tmp304822
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp304821
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L298146_ '()))))
                                               (declare (not safe))
                                               (cons __tmp304822
                                                     __tmp304821))))
                                        (declare (not safe))
                                        (cons __tmp304820 '()))))
                                 (declare (not safe))
                                 (cons __tmp304823 __tmp304819))))
                          (declare (not safe))
                          (cons __tmp304826 __tmp304818))))
                   (declare (not safe))
                   (cons __tmp304830 __tmp304817))))
              (___kont304314304315_
               (lambda (_L298078_ _L298080_)
                 (let ((__tmp304844
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp304831
                        (let ((__tmp304840
                               (let ((__tmp304843
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp304841
                                      (let ((__tmp304842
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp304842 '()))))
                                 (declare (not safe))
                                 (cons __tmp304843 __tmp304841)))
                              (__tmp304832
                               (let ((__tmp304837
                                      (let ((__tmp304839
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp304838
                                             (let ()
                                               (declare (not safe))
                                               (cons _L298080_ '()))))
                                        (declare (not safe))
                                        (cons __tmp304839 __tmp304838)))
                                     (__tmp304833
                                      (let ((__tmp304834
                                             (let ((__tmp304836
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp304835
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L298078_ '()))))
                                               (declare (not safe))
                                               (cons __tmp304836
                                                     __tmp304835))))
                                        (declare (not safe))
                                        (cons __tmp304834 '()))))
                                 (declare (not safe))
                                 (cons __tmp304837 __tmp304833))))
                          (declare (not safe))
                          (cons __tmp304840 __tmp304832))))
                   (declare (not safe))
                   (cons __tmp304844 __tmp304831))))
              (___kont304316304317_
               (lambda (_L298025_ _L298027_)
                 (let ((__tmp304845
                        (let ((__tmp304846
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L298025_ __tmp304846))))
                   (declare (not safe))
                   (cons _L298027_ __tmp304845)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx304305304306_))
              (let ((_e297936298232_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx304305304306_))))
                (let ((_tl297934298239_
                       (let () (declare (not safe)) (##cdr _e297936298232_)))
                      (_hd297935298236_
                       (let () (declare (not safe)) (##car _e297936298232_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl297934298239_))
                      (let ((_e297939298242_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl297934298239_))))
                        (let ((_tl297937298249_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e297939298242_)))
                              (_hd297938298246_
                               (let ()
                                 (declare (not safe))
                                 (##car _e297939298242_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl297937298249_))
                              (let ((_e297942298252_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl297937298249_))))
                                (let ((_tl297940298259_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e297942298252_)))
                                      (_hd297941298256_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e297942298252_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd297941298256_))
                                      (let ((_e297943298262_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd297941298256_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e297943298262_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl297940298259_))
                                                (let ((_e297946298266_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl297940298259_))))
                                                  (let ((_tl297944298273_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e297946298266_)))
                                                        (_hd297945298270_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e297946298266_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl297944298273_))
                                                        (___kont304308304309_
                                                         _hd297945298270_
                                                         _hd297938298246_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd297938298246_))
                                                            (let ((_e297955298193_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd297938298246_))))
                      (declare (not safe))
                      (_g297930297998_))
                    (let () (declare (not safe)) (_g297930297998_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd297938298246_))
                                                    (let ((_e297955298193_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd297938298246_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e297955298193_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl297940298259_))
                      (___kont304310304311_ _hd297941298256_ _hd297935298236_)
                      (let () (declare (not safe)) (_g297930297998_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl297940298259_))
                      (___kont304314304315_ _hd297941298256_ _hd297938298246_)
                      (let () (declare (not safe)) (_g297930297998_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl297940298259_))
                                                        (___kont304314304315_
                                                         _hd297941298256_
                                                         _hd297938298246_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g297930297998_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd297938298246_))
                                                (let ((_e297955298193_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd297938298246_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e297955298193_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl297940298259_))
                                                          (___kont304310304311_
                                                           _hd297941298256_
                                                           _hd297935298236_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl297940298259_))
                      (let ((_e297973298136_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl297940298259_))))
                        (let ((_tl297971298143_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e297973298136_)))
                              (_hd297972298140_
                               (let ()
                                 (declare (not safe))
                                 (##car _e297973298136_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl297971298143_))
                              (___kont304312304313_
                               _hd297972298140_
                               _hd297941298256_)
                              (let ()
                                (declare (not safe))
                                (_g297930297998_)))))
                      (let () (declare (not safe)) (_g297930297998_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl297940298259_))
                  (___kont304314304315_ _hd297941298256_ _hd297938298246_)
                  (let () (declare (not safe)) (_g297930297998_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl297940298259_))
                                                    (___kont304314304315_
                                                     _hd297941298256_
                                                     _hd297938298246_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g297930297998_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd297938298246_))
                                          (let ((_e297955298193_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd297938298246_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e297955298193_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl297940298259_))
                                                    (___kont304310304311_
                                                     _hd297941298256_
                                                     _hd297935298236_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl297940298259_))
                                                        (let ((_e297973298136_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl297940298259_))))
                  (let ((_tl297971298143_
                         (let () (declare (not safe)) (##cdr _e297973298136_)))
                        (_hd297972298140_
                         (let ()
                           (declare (not safe))
                           (##car _e297973298136_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl297971298143_))
                        (___kont304312304313_
                         _hd297972298140_
                         _hd297941298256_)
                        (let () (declare (not safe)) (_g297930297998_)))))
                (let () (declare (not safe)) (_g297930297998_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl297940298259_))
                                                    (___kont304314304315_
                                                     _hd297941298256_
                                                     _hd297938298246_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g297930297998_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl297940298259_))
                                              (___kont304314304315_
                                               _hd297941298256_
                                               _hd297938298246_)
                                              (let ()
                                                (declare (not safe))
                                                (_g297930297998_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd297938298246_))
                                  (let ((_e297955298193_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd297938298246_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl297937298249_))
                                        (___kont304316304317_
                                         _hd297938298246_
                                         _hd297935298236_)
                                        (let ()
                                          (declare (not safe))
                                          (_g297930297998_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl297937298249_))
                                      (___kont304316304317_
                                       _hd297938298246_
                                       _hd297935298236_)
                                      (let ()
                                        (declare (not safe))
                                        (_g297930297998_)))))))
                      (let () (declare (not safe)) (_g297930297998_)))))
              (let () (declare (not safe)) (_g297930297998_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx298300_)
      (let* ((___stx304445304446_ _$stx298300_)
             (_g298305298360_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx304445304446_)))))
        (let ((___kont304448304449_
               (lambda (_L298545_ _L298547_)
                 (let ((__tmp304862
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp304847
                        (let ((__tmp304858
                               (let ((__tmp304861
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp304859
                                      (let ((__tmp304860
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp304860 '()))))
                                 (declare (not safe))
                                 (cons __tmp304861 __tmp304859)))
                              (__tmp304848
                               (let ((__tmp304849
                                      (let ((__tmp304857
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp304850
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L298545_
                                                  _L298547_))
                                               (let ((__tmp304851
                                                      (lambda (_g298564298568_
                                                               _g298565298571_
                                                               _g298566298573_)
                                                        (let ((__tmp304852
                                                               (let ((__tmp304856
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp304853
                              (let ((__tmp304854
                                     (let ((__tmp304855
                                            (let ()
                                              (declare (not safe))
                                              (cons _g298564298568_ '()))))
                                       (declare (not safe))
                                       (cons _g298565298571_ __tmp304855))))
                                (declare (not safe))
                                (cons 'primitive: __tmp304854))))
                         (declare (not safe))
                         (cons __tmp304856 __tmp304853))))
                  (declare (not safe))
                  (cons __tmp304852 _g298566298573_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp304851
                                                         '()
                                                         _L298545_
                                                         _L298547_)))))
                                        (declare (not safe))
                                        (cons __tmp304857 __tmp304850))))
                                 (declare (not safe))
                                 (cons __tmp304849 '()))))
                          (declare (not safe))
                          (cons __tmp304858 __tmp304848))))
                   (declare (not safe))
                   (cons __tmp304862 __tmp304847))))
              (___kont304452304453_
               (lambda (_L298431_ _L298433_)
                 (let ((__tmp304877
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp304863
                        (let ((__tmp304873
                               (let ((__tmp304876
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp304874
                                      (let ((__tmp304875
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp304875 '()))))
                                 (declare (not safe))
                                 (cons __tmp304876 __tmp304874)))
                              (__tmp304864
                               (let ((__tmp304865
                                      (let ((__tmp304872
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp304866
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L298431_
                                                  _L298433_))
                                               (let ((__tmp304867
                                                      (lambda (_g298448298452_
                                                               _g298449298455_
                                                               _g298450298457_)
                                                        (let ((__tmp304868
                                                               (let ((__tmp304871
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp304869
                              (let ((__tmp304870
                                     (let ()
                                       (declare (not safe))
                                       (cons _g298448298452_ '()))))
                                (declare (not safe))
                                (cons _g298449298455_ __tmp304870))))
                         (declare (not safe))
                         (cons __tmp304871 __tmp304869))))
                  (declare (not safe))
                  (cons __tmp304868 _g298450298457_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp304867
                                                         '()
                                                         _L298431_
                                                         _L298433_)))))
                                        (declare (not safe))
                                        (cons __tmp304872 __tmp304866))))
                                 (declare (not safe))
                                 (cons __tmp304865 '()))))
                          (declare (not safe))
                          (cons __tmp304873 __tmp304864))))
                   (declare (not safe))
                   (cons __tmp304877 __tmp304863)))))
          (let* ((___match304496304497_
                  (lambda (_e298337298367_
                           _hd298336298371_
                           _tl298335298374_
                           ___splice304454304455_
                           _target298338298377_
                           _tl298340298380_)
                    (letrec ((_loop298341298383_
                              (lambda (_hd298339298387_
                                       _dispatch298345298390_
                                       _arity298346298392_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd298339298387_))
                                    (let ((_e298342298395_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd298339298387_))))
                                      (let ((_lp-tl298344298402_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e298342298395_)))
                                            (_lp-hd298343298399_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e298342298395_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd298343298399_))
                                            (let ((_e298351298405_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd298343298399_))))
                                              (let ((_tl298349298412_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e298351298405_)))
                                                    (_hd298350298409_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e298351298405_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl298349298412_))
                                                    (let ((_e298354298415_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl298349298412_))))
                                                      (let ((_tl298352298422_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e298354298415_)))
                    (_hd298353298419_
                     (let () (declare (not safe)) (##car _e298354298415_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl298352298422_))
                    (_loop298341298383_
                     _lp-tl298344298402_
                     (let ()
                       (declare (not safe))
                       (cons _hd298353298419_ _dispatch298345298390_))
                     (let ()
                       (declare (not safe))
                       (cons _hd298350298409_ _arity298346298392_)))
                    (let () (declare (not safe)) (_g298305298360_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g298305298360_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g298305298360_)))))
                                    (let ((_arity298348298428_
                                           (reverse _arity298346298392_))
                                          (_dispatch298347298425_
                                           (reverse _dispatch298345298390_)))
                                      (___kont304452304453_
                                       _dispatch298347298425_
                                       _arity298348298428_))))))
                      (_loop298341298383_ _target298338298377_ '() '()))))
                 (___match304488304489_
                  (lambda (_e298337298367_ _hd298336298371_ _tl298335298374_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl298335298374_))
                        (let ((___splice304454304455_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl298335298374_
                                  '0))))
                          (let ((_tl298340298380_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice304454304455_ '1)))
                                (_target298338298377_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice304454304455_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl298340298380_))
                                (___match304496304497_
                                 _e298337298367_
                                 _hd298336298371_
                                 _tl298335298374_
                                 ___splice304454304455_
                                 _target298338298377_
                                 _tl298340298380_)
                                (let ()
                                  (declare (not safe))
                                  (_g298305298360_)))))
                        (let () (declare (not safe)) (_g298305298360_)))))
                 (___match304482304483_
                  (lambda (_e298311298467_
                           _hd298310298471_
                           _tl298309298474_
                           _e298314298477_
                           _hd298313298481_
                           _tl298312298484_
                           _e298315298487_
                           ___splice304450304451_
                           _target298316298491_
                           _tl298318298494_)
                    (letrec ((_loop298319298497_
                              (lambda (_hd298317298501_
                                       _dispatch298323298504_
                                       _arity298324298506_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd298317298501_))
                                    (let ((_e298320298509_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd298317298501_))))
                                      (let ((_lp-tl298322298516_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e298320298509_)))
                                            (_lp-hd298321298513_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e298320298509_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd298321298513_))
                                            (let ((_e298329298519_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd298321298513_))))
                                              (let ((_tl298327298526_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e298329298519_)))
                                                    (_hd298328298523_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e298329298519_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl298327298526_))
                                                    (let ((_e298332298529_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl298327298526_))))
                                                      (let ((_tl298330298536_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e298332298529_)))
                    (_hd298331298533_
                     (let () (declare (not safe)) (##car _e298332298529_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl298330298536_))
                    (_loop298319298497_
                     _lp-tl298322298516_
                     (let ()
                       (declare (not safe))
                       (cons _hd298331298533_ _dispatch298323298504_))
                     (let ()
                       (declare (not safe))
                       (cons _hd298328298523_ _arity298324298506_)))
                    (___match304488304489_
                     _e298311298467_
                     _hd298310298471_
                     _tl298309298474_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match304488304489_
                                                     _e298311298467_
                                                     _hd298310298471_
                                                     _tl298309298474_))))
                                            (___match304488304489_
                                             _e298311298467_
                                             _hd298310298471_
                                             _tl298309298474_))))
                                    (let ((_arity298326298542_
                                           (reverse _arity298324298506_))
                                          (_dispatch298325298539_
                                           (reverse _dispatch298323298504_)))
                                      (___kont304448304449_
                                       _dispatch298325298539_
                                       _arity298326298542_))))))
                      (_loop298319298497_ _target298316298491_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx304445304446_))
                (let ((_e298311298467_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx304445304446_))))
                  (let ((_tl298309298474_
                         (let () (declare (not safe)) (##cdr _e298311298467_)))
                        (_hd298310298471_
                         (let ()
                           (declare (not safe))
                           (##car _e298311298467_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl298309298474_))
                        (let ((_e298314298477_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl298309298474_))))
                          (let ((_tl298312298484_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e298314298477_)))
                                (_hd298313298481_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e298314298477_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd298313298481_))
                                (let ((_e298315298487_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd298313298481_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e298315298487_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl298312298484_))
                                          (let ((___splice304450304451_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl298312298484_
                                                    '0))))
                                            (let ((_tl298318298494_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice304450304451_
                                                      '1)))
                                                  (_target298316298491_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice304450304451_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl298318298494_))
                                                  (___match304482304483_
                                                   _e298311298467_
                                                   _hd298310298471_
                                                   _tl298309298474_
                                                   _e298314298477_
                                                   _hd298313298481_
                                                   _tl298312298484_
                                                   _e298315298487_
                                                   ___splice304450304451_
                                                   _target298316298491_
                                                   _tl298318298494_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl298309298474_))
                                                      (let ((___splice304454304455_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl298309298474_ '0))))
                (let ((_tl298340298380_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice304454304455_ '1)))
                      (_target298338298377_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice304454304455_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl298340298380_))
                      (___match304496304497_
                       _e298311298467_
                       _hd298310298471_
                       _tl298309298474_
                       ___splice304454304455_
                       _target298338298377_
                       _tl298340298380_)
                      (let () (declare (not safe)) (_g298305298360_)))))
              (let () (declare (not safe)) (_g298305298360_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl298309298474_))
                                              (let ((___splice304454304455_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl298309298474_
                                                        '0))))
                                                (let ((_tl298340298380_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice304454304455_
                                                          '1)))
                                                      (_target298338298377_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice304454304455_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl298340298380_))
                                                      (___match304496304497_
                                                       _e298311298467_
                                                       _hd298310298471_
                                                       _tl298309298474_
                                                       ___splice304454304455_
                                                       _target298338298377_
                                                       _tl298340298380_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g298305298360_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g298305298360_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl298309298474_))
                                          (let ((___splice304454304455_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl298309298474_
                                                    '0))))
                                            (let ((_tl298340298380_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice304454304455_
                                                      '1)))
                                                  (_target298338298377_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice304454304455_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl298340298380_))
                                                  (___match304496304497_
                                                   _e298311298467_
                                                   _hd298310298471_
                                                   _tl298309298474_
                                                   ___splice304454304455_
                                                   _target298338298377_
                                                   _tl298340298380_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g298305298360_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g298305298360_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl298309298474_))
                                    (let ((___splice304454304455_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl298309298474_
                                              '0))))
                                      (let ((_tl298340298380_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice304454304455_
                                                '1)))
                                            (_target298338298377_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice304454304455_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl298340298380_))
                                            (___match304496304497_
                                             _e298311298467_
                                             _hd298310298471_
                                             _tl298309298474_
                                             ___splice304454304455_
                                             _target298338298377_
                                             _tl298340298380_)
                                            (let ()
                                              (declare (not safe))
                                              (_g298305298360_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g298305298360_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl298309298474_))
                            (let ((___splice304454304455_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl298309298474_
                                      '0))))
                              (let ((_tl298340298380_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice304454304455_
                                        '1)))
                                    (_target298338298377_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice304454304455_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl298340298380_))
                                    (___match304496304497_
                                     _e298311298467_
                                     _hd298310298471_
                                     _tl298309298474_
                                     ___splice304454304455_
                                     _target298338298377_
                                     _tl298340298380_)
                                    (let ()
                                      (declare (not safe))
                                      (_g298305298360_)))))
                            (let () (declare (not safe)) (_g298305298360_))))))
                (let () (declare (not safe)) (_g298305298360_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx298582_)
      (let* ((_g298586298604_
              (lambda (_g298587298600_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g298587298600_))))
             (_g298585298659_
              (lambda (_g298587298608_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g298587298608_))
                    (let ((_e298592298611_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g298587298608_))))
                      (let ((_hd298591298615_
                             (let ()
                               (declare (not safe))
                               (##car _e298592298611_)))
                            (_tl298590298618_
                             (let ()
                               (declare (not safe))
                               (##cdr _e298592298611_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl298590298618_))
                            (let ((_e298595298621_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl298590298618_))))
                              (let ((_hd298594298625_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e298595298621_)))
                                    (_tl298593298628_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e298595298621_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl298593298628_))
                                    (let ((_e298598298631_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl298593298628_))))
                                      (let ((_hd298597298635_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e298598298631_)))
                                            (_tl298596298638_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e298598298631_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl298596298638_))
                                            ((lambda (_L298641_ _L298643_)
                                               (let ((__tmp304891
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp304878
                                                      (let ((__tmp304887
                                                             (let ((__tmp304890
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp304888
                            (let ((__tmp304889
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp304889 '()))))
                       (declare (not safe))
                       (cons __tmp304890 __tmp304888)))
                    (__tmp304879
                     (let ((__tmp304884
                            (let ((__tmp304886
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp304885
                                   (let ()
                                     (declare (not safe))
                                     (cons _L298643_ '()))))
                              (declare (not safe))
                              (cons __tmp304886 __tmp304885)))
                           (__tmp304880
                            (let ((__tmp304881
                                   (let ((__tmp304883
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp304882
                                          (let ()
                                            (declare (not safe))
                                            (cons _L298641_ '()))))
                                     (declare (not safe))
                                     (cons __tmp304883 __tmp304882))))
                              (declare (not safe))
                              (cons __tmp304881 '()))))
                       (declare (not safe))
                       (cons __tmp304884 __tmp304880))))
                (declare (not safe))
                (cons __tmp304887 __tmp304879))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp304891
                                                       __tmp304878)))
                                             _hd298597298635_
                                             _hd298594298625_)
                                            (_g298586298604_
                                             _g298587298608_))))
                                    (_g298586298604_ _g298587298608_))))
                            (_g298586298604_ _g298587298608_))))
                    (_g298586298604_ _g298587298608_)))))
        (_g298585298659_ _$stx298582_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx298663_)
      (let* ((_g298667298685_
              (lambda (_g298668298681_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g298668298681_))))
             (_g298666298740_
              (lambda (_g298668298689_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g298668298689_))
                    (let ((_e298673298692_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g298668298689_))))
                      (let ((_hd298672298696_
                             (let ()
                               (declare (not safe))
                               (##car _e298673298692_)))
                            (_tl298671298699_
                             (let ()
                               (declare (not safe))
                               (##cdr _e298673298692_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl298671298699_))
                            (let ((_e298676298702_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl298671298699_))))
                              (let ((_hd298675298706_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e298676298702_)))
                                    (_tl298674298709_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e298676298702_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl298674298709_))
                                    (let ((_e298679298712_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl298674298709_))))
                                      (let ((_hd298678298716_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e298679298712_)))
                                            (_tl298677298719_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e298679298712_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl298677298719_))
                                            ((lambda (_L298722_ _L298724_)
                                               (let ((__tmp304905
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp304892
                                                      (let ((__tmp304901
                                                             (let ((__tmp304904
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp304902
                            (let ((__tmp304903
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp304903 '()))))
                       (declare (not safe))
                       (cons __tmp304904 __tmp304902)))
                    (__tmp304893
                     (let ((__tmp304898
                            (let ((__tmp304900
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp304899
                                   (let ()
                                     (declare (not safe))
                                     (cons _L298724_ '()))))
                              (declare (not safe))
                              (cons __tmp304900 __tmp304899)))
                           (__tmp304894
                            (let ((__tmp304895
                                   (let ((__tmp304897
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp304896
                                          (let ()
                                            (declare (not safe))
                                            (cons _L298722_ '()))))
                                     (declare (not safe))
                                     (cons __tmp304897 __tmp304896))))
                              (declare (not safe))
                              (cons __tmp304895 '()))))
                       (declare (not safe))
                       (cons __tmp304898 __tmp304894))))
                (declare (not safe))
                (cons __tmp304901 __tmp304893))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp304905
                                                       __tmp304892)))
                                             _hd298678298716_
                                             _hd298675298706_)
                                            (_g298667298685_
                                             _g298668298689_))))
                                    (_g298667298685_ _g298668298689_))))
                            (_g298667298685_ _g298668298689_))))
                    (_g298667298685_ _g298668298689_)))))
        (_g298666298740_ _$stx298663_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx298744_)
      (let* ((___stx304499304500_ _$stx298744_)
             (_g298751298822_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx304499304500_)))))
        (let ((___kont304502304503_
               (lambda (_L299113_ _L299115_)
                 (let ((__tmp304911
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp304906
                        (let ((__tmp304907
                               (let ((__tmp304908
                                      (let ((__tmp304910
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp304909
                                             (let ()
                                               (declare (not safe))
                                               (cons _L299113_ '()))))
                                        (declare (not safe))
                                        (cons __tmp304910 __tmp304909))))
                                 (declare (not safe))
                                 (cons __tmp304908 '()))))
                          (declare (not safe))
                          (cons _L299115_ __tmp304907))))
                   (declare (not safe))
                   (cons __tmp304911 __tmp304906))))
              (___kont304504304505_
               (lambda (_L299032_ _L299034_)
                 (let ((__tmp304920
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp304912
                        (let ((__tmp304913
                               (let ((__tmp304914
                                      (let ((__tmp304919
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp304915
                                             (let ((__tmp304916
                                                    (lambda (_g299053299056_
                                                             _g299054299059_)
                                                      (let ((__tmp304917
                                                             (let ((__tmp304918
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g299053299056_ __tmp304918))))
                (declare (not safe))
                (cons __tmp304917 _g299054299059_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp304916
                                                       '()
                                                       _L299032_))))
                                        (declare (not safe))
                                        (cons __tmp304919 __tmp304915))))
                                 (declare (not safe))
                                 (cons __tmp304914 '()))))
                          (declare (not safe))
                          (cons _L299034_ __tmp304913))))
                   (declare (not safe))
                   (cons __tmp304920 __tmp304912))))
              (___kont304508304509_
               (lambda (_L298944_ _L298946_)
                 (let ((__tmp304927
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp304921
                        (let ((__tmp304922
                               (let ((__tmp304923
                                      (let ((__tmp304926
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp304924
                                             (let ((__tmp304925
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L298944_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp304925))))
                                        (declare (not safe))
                                        (cons __tmp304926 __tmp304924))))
                                 (declare (not safe))
                                 (cons __tmp304923 '()))))
                          (declare (not safe))
                          (cons _L298946_ __tmp304922))))
                   (declare (not safe))
                   (cons __tmp304927 __tmp304921))))
              (___kont304510304511_
               (lambda (_L298879_ _L298881_)
                 (let ((__tmp304937
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp304928
                        (let ((__tmp304929
                               (let ((__tmp304930
                                      (let ((__tmp304936
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp304931
                                             (let ((__tmp304932
                                                    (let ((__tmp304933
                                                           (lambda (_g298898298901_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g298899298904_)
                     (let ((__tmp304934
                            (let ((__tmp304935
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g298898298901_ __tmp304935))))
                       (declare (not safe))
                       (cons __tmp304934 _g298899298904_)))))
              (declare (not safe))
              (foldr1 __tmp304933 '() _L298879_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp304932))))
                                        (declare (not safe))
                                        (cons __tmp304936 __tmp304931))))
                                 (declare (not safe))
                                 (cons __tmp304930 '()))))
                          (declare (not safe))
                          (cons _L298881_ __tmp304929))))
                   (declare (not safe))
                   (cons __tmp304937 __tmp304928)))))
          (let* ((___match304618304619_
                  (lambda (_e298804298829_
                           _hd298803298833_
                           _tl298802298836_
                           _e298807298839_
                           _hd298806298843_
                           _tl298805298846_
                           ___splice304512304513_
                           _target298808298849_
                           _tl298810298852_)
                    (letrec ((_loop298811298855_
                              (lambda (_hd298809298859_ _arity298815298862_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd298809298859_))
                                    (let ((_e298812298865_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd298809298859_))))
                                      (let ((_lp-tl298814298872_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e298812298865_)))
                                            (_lp-hd298813298869_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e298812298865_))))
                                        (_loop298811298855_
                                         _lp-tl298814298872_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd298813298869_
                                                 _arity298815298862_)))))
                                    (let ((_arity298816298875_
                                           (reverse _arity298815298862_)))
                                      (___kont304510304511_
                                       _arity298816298875_
                                       _hd298806298843_))))))
                      (_loop298811298855_ _target298808298849_ '()))))
                 (___match304578304579_
                  (lambda (_e298772298968_
                           _hd298771298972_
                           _tl298770298975_
                           _e298775298978_
                           _hd298774298982_
                           _tl298773298985_
                           _e298778298988_
                           _hd298777298992_
                           _tl298776298995_
                           _e298779298998_
                           ___splice304506304507_
                           _target298780299002_
                           _tl298782299005_)
                    (letrec ((_loop298783299008_
                              (lambda (_hd298781299012_ _arity298787299015_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd298781299012_))
                                    (let ((_e298784299018_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd298781299012_))))
                                      (let ((_lp-tl298786299025_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e298784299018_)))
                                            (_lp-hd298785299022_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e298784299018_))))
                                        (_loop298783299008_
                                         _lp-tl298786299025_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd298785299022_
                                                 _arity298787299015_)))))
                                    (let ((_arity298788299028_
                                           (reverse _arity298787299015_)))
                                      (___kont304504304505_
                                       _arity298788299028_
                                       _hd298774298982_))))))
                      (_loop298783299008_ _target298780299002_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx304499304500_))
                (let ((_e298757299069_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx304499304500_))))
                  (let ((_tl298755299076_
                         (let () (declare (not safe)) (##cdr _e298757299069_)))
                        (_hd298756299073_
                         (let ()
                           (declare (not safe))
                           (##car _e298757299069_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl298755299076_))
                        (let ((_e298760299079_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl298755299076_))))
                          (let ((_tl298758299086_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e298760299079_)))
                                (_hd298759299083_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e298760299079_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl298758299086_))
                                (let ((_e298763299089_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl298758299086_))))
                                  (let ((_tl298761299096_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e298763299089_)))
                                        (_hd298762299093_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e298763299089_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd298762299093_))
                                        (let ((_e298764299099_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd298762299093_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e298764299099_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl298761299096_))
                                                  (let ((_e298767299103_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl298761299096_))))
                                                    (let ((_tl298765299110_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e298767299103_)))
                                                          (_hd298766299107_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e298767299103_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl298765299110_))
                                                          (___kont304502304503_
                                                           _hd298766299107_
                                                           _hd298759299083_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl298761299096_))
                      (let ((___splice304506304507_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl298761299096_ '0))))
                        (let ((_tl298782299005_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice304506304507_ '1)))
                              (_target298780299002_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice304506304507_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl298782299005_))
                              (___match304578304579_
                               _e298757299069_
                               _hd298756299073_
                               _tl298755299076_
                               _e298760299079_
                               _hd298759299083_
                               _tl298758299086_
                               _e298763299089_
                               _hd298762299093_
                               _tl298761299096_
                               _e298764299099_
                               ___splice304506304507_
                               _target298780299002_
                               _tl298782299005_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl298758299086_))
                                  (let ((___splice304512304513_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl298758299086_
                                            '0))))
                                    (let ((_tl298810298852_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice304512304513_
                                              '1)))
                                          (_target298808298849_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice304512304513_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl298810298852_))
                                          (___match304618304619_
                                           _e298757299069_
                                           _hd298756299073_
                                           _tl298755299076_
                                           _e298760299079_
                                           _hd298759299083_
                                           _tl298758299086_
                                           ___splice304512304513_
                                           _target298808298849_
                                           _tl298810298852_)
                                          (let ()
                                            (declare (not safe))
                                            (_g298751298822_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g298751298822_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl298758299086_))
                          (let ((___splice304512304513_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl298758299086_
                                    '0))))
                            (let ((_tl298810298852_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice304512304513_ '1)))
                                  (_target298808298849_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice304512304513_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl298810298852_))
                                  (___match304618304619_
                                   _e298757299069_
                                   _hd298756299073_
                                   _tl298755299076_
                                   _e298760299079_
                                   _hd298759299083_
                                   _tl298758299086_
                                   ___splice304512304513_
                                   _target298808298849_
                                   _tl298810298852_)
                                  (let ()
                                    (declare (not safe))
                                    (_g298751298822_)))))
                          (let () (declare (not safe)) (_g298751298822_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl298761299096_))
                                                      (let ((___splice304506304507_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl298761299096_ '0))))
                (let ((_tl298782299005_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice304506304507_ '1)))
                      (_target298780299002_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice304506304507_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl298782299005_))
                      (___match304578304579_
                       _e298757299069_
                       _hd298756299073_
                       _tl298755299076_
                       _e298760299079_
                       _hd298759299083_
                       _tl298758299086_
                       _e298763299089_
                       _hd298762299093_
                       _tl298761299096_
                       _e298764299099_
                       ___splice304506304507_
                       _target298780299002_
                       _tl298782299005_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl298761299096_))
                          (___kont304508304509_
                           _hd298762299093_
                           _hd298759299083_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl298758299086_))
                              (let ((___splice304512304513_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl298758299086_
                                        '0))))
                                (let ((_tl298810298852_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice304512304513_
                                          '1)))
                                      (_target298808298849_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice304512304513_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl298810298852_))
                                      (___match304618304619_
                                       _e298757299069_
                                       _hd298756299073_
                                       _tl298755299076_
                                       _e298760299079_
                                       _hd298759299083_
                                       _tl298758299086_
                                       ___splice304512304513_
                                       _target298808298849_
                                       _tl298810298852_)
                                      (let ()
                                        (declare (not safe))
                                        (_g298751298822_)))))
                              (let ()
                                (declare (not safe))
                                (_g298751298822_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl298761299096_))
                  (___kont304508304509_ _hd298762299093_ _hd298759299083_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl298758299086_))
                      (let ((___splice304512304513_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl298758299086_ '0))))
                        (let ((_tl298810298852_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice304512304513_ '1)))
                              (_target298808298849_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice304512304513_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl298810298852_))
                              (___match304618304619_
                               _e298757299069_
                               _hd298756299073_
                               _tl298755299076_
                               _e298760299079_
                               _hd298759299083_
                               _tl298758299086_
                               ___splice304512304513_
                               _target298808298849_
                               _tl298810298852_)
                              (let ()
                                (declare (not safe))
                                (_g298751298822_)))))
                      (let () (declare (not safe)) (_g298751298822_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl298761299096_))
                                                  (___kont304508304509_
                                                   _hd298762299093_
                                                   _hd298759299083_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl298758299086_))
                                                      (let ((___splice304512304513_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl298758299086_ '0))))
                (let ((_tl298810298852_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice304512304513_ '1)))
                      (_target298808298849_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice304512304513_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl298810298852_))
                      (___match304618304619_
                       _e298757299069_
                       _hd298756299073_
                       _tl298755299076_
                       _e298760299079_
                       _hd298759299083_
                       _tl298758299086_
                       ___splice304512304513_
                       _target298808298849_
                       _tl298810298852_)
                      (let () (declare (not safe)) (_g298751298822_)))))
              (let () (declare (not safe)) (_g298751298822_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl298761299096_))
                                            (___kont304508304509_
                                             _hd298762299093_
                                             _hd298759299083_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl298758299086_))
                                                (let ((___splice304512304513_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl298758299086_
                                                          '0))))
                                                  (let ((_tl298810298852_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice304512304513_
                                                            '1)))
                                                        (_target298808298849_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice304512304513_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl298810298852_))
                                                        (___match304618304619_
                                                         _e298757299069_
                                                         _hd298756299073_
                                                         _tl298755299076_
                                                         _e298760299079_
                                                         _hd298759299083_
                                                         _tl298758299086_
                                                         ___splice304512304513_
                                                         _target298808298849_
                                                         _tl298810298852_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g298751298822_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g298751298822_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl298758299086_))
                                    (let ((___splice304512304513_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl298758299086_
                                              '0))))
                                      (let ((_tl298810298852_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice304512304513_
                                                '1)))
                                            (_target298808298849_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice304512304513_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl298810298852_))
                                            (___match304618304619_
                                             _e298757299069_
                                             _hd298756299073_
                                             _tl298755299076_
                                             _e298760299079_
                                             _hd298759299083_
                                             _tl298758299086_
                                             ___splice304512304513_
                                             _target298808298849_
                                             _tl298810298852_)
                                            (let ()
                                              (declare (not safe))
                                              (_g298751298822_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g298751298822_))))))
                        (let () (declare (not safe)) (_g298751298822_)))))
                (let () (declare (not safe)) (_g298751298822_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx299139_)
      (let* ((___stx304621304622_ _$stx299139_)
             (_g299144299179_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx304621304622_)))))
        (let ((___kont304624304625_
               (lambda (_L299301_ _L299303_)
                 (let ((__tmp304943
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp304938
                        (let ((__tmp304939
                               (let ((__tmp304940
                                      (let ((__tmp304942
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp304941
                                             (let ()
                                               (declare (not safe))
                                               (cons _L299301_ '()))))
                                        (declare (not safe))
                                        (cons __tmp304942 __tmp304941))))
                                 (declare (not safe))
                                 (cons __tmp304940 '()))))
                          (declare (not safe))
                          (cons _L299303_ __tmp304939))))
                   (declare (not safe))
                   (cons __tmp304943 __tmp304938))))
              (___kont304626304627_
               (lambda (_L299236_ _L299238_)
                 (let ((__tmp304952
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp304944
                        (let ((__tmp304945
                               (let ((__tmp304946
                                      (let ((__tmp304951
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp304947
                                             (let ((__tmp304948
                                                    (lambda (_g299255299258_
                                                             _g299256299261_)
                                                      (let ((__tmp304949
                                                             (let ((__tmp304950
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g299255299258_ __tmp304950))))
                (declare (not safe))
                (cons __tmp304949 _g299256299261_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp304948
                                                       '()
                                                       _L299236_))))
                                        (declare (not safe))
                                        (cons __tmp304951 __tmp304947))))
                                 (declare (not safe))
                                 (cons __tmp304946 '()))))
                          (declare (not safe))
                          (cons _L299238_ __tmp304945))))
                   (declare (not safe))
                   (cons __tmp304952 __tmp304944)))))
          (let ((___match304670304671_
                 (lambda (_e299161299186_
                          _hd299160299190_
                          _tl299159299193_
                          _e299164299196_
                          _hd299163299200_
                          _tl299162299203_
                          ___splice304628304629_
                          _target299165299206_
                          _tl299167299209_)
                   (letrec ((_loop299168299212_
                             (lambda (_hd299166299216_ _arity299172299219_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd299166299216_))
                                   (let ((_e299169299222_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd299166299216_))))
                                     (let ((_lp-tl299171299229_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e299169299222_)))
                                           (_lp-hd299170299226_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e299169299222_))))
                                       (_loop299168299212_
                                        _lp-tl299171299229_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd299170299226_
                                                _arity299172299219_)))))
                                   (let ((_arity299173299232_
                                          (reverse _arity299172299219_)))
                                     (___kont304626304627_
                                      _arity299173299232_
                                      _hd299163299200_))))))
                     (_loop299168299212_ _target299165299206_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx304621304622_))
                (let ((_e299150299271_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx304621304622_))))
                  (let ((_tl299148299278_
                         (let () (declare (not safe)) (##cdr _e299150299271_)))
                        (_hd299149299275_
                         (let ()
                           (declare (not safe))
                           (##car _e299150299271_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl299148299278_))
                        (let ((_e299153299281_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl299148299278_))))
                          (let ((_tl299151299288_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e299153299281_)))
                                (_hd299152299285_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e299153299281_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl299151299288_))
                                (let ((_e299156299291_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl299151299288_))))
                                  (let ((_tl299154299298_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e299156299291_)))
                                        (_hd299155299295_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e299156299291_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl299154299298_))
                                        (___kont304624304625_
                                         _hd299155299295_
                                         _hd299152299285_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl299151299288_))
                                            (let ((___splice304628304629_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl299151299288_
                                                      '0))))
                                              (let ((_tl299167299209_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice304628304629_
                                                        '1)))
                                                    (_target299165299206_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice304628304629_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl299167299209_))
                                                    (___match304670304671_
                                                     _e299150299271_
                                                     _hd299149299275_
                                                     _tl299148299278_
                                                     _e299153299281_
                                                     _hd299152299285_
                                                     _tl299151299288_
                                                     ___splice304628304629_
                                                     _target299165299206_
                                                     _tl299167299209_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g299144299179_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g299144299179_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl299151299288_))
                                    (let ((___splice304628304629_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl299151299288_
                                              '0))))
                                      (let ((_tl299167299209_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice304628304629_
                                                '1)))
                                            (_target299165299206_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice304628304629_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl299167299209_))
                                            (___match304670304671_
                                             _e299150299271_
                                             _hd299149299275_
                                             _tl299148299278_
                                             _e299153299281_
                                             _hd299152299285_
                                             _tl299151299288_
                                             ___splice304628304629_
                                             _target299165299206_
                                             _tl299167299209_)
                                            (let ()
                                              (declare (not safe))
                                              (_g299144299179_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g299144299179_))))))
                        (let () (declare (not safe)) (_g299144299179_)))))
                (let () (declare (not safe)) (_g299144299179_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx299323_)
      (let* ((_g299327299362_
              (lambda (_g299328299358_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g299328299358_))))
             (_g299326299490_
              (lambda (_g299328299366_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g299328299366_))
                    (let ((_e299333299369_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g299328299366_))))
                      (let ((_hd299332299373_
                             (let ()
                               (declare (not safe))
                               (##car _e299333299369_)))
                            (_tl299331299376_
                             (let ()
                               (declare (not safe))
                               (##cdr _e299333299369_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl299331299376_))
                            (let ((_g304953_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl299331299376_
                                      '0))))
                              (begin
                                (let ((_g304954_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g304953_)
                                             (##vector-length _g304953_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g304954_ 2)))
                                      (error "Context expects 2 values"
                                             _g304954_)))
                                (let ((_target299334299379_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g304953_ 0)))
                                      (_tl299336299382_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g304953_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl299336299382_))
                                      (letrec ((_loop299337299385_
                                                (lambda (_hd299335299389_
                                                         _arity299341299392_
                                                         _prim299342299394_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd299335299389_))
                                                      (let ((_e299338299397_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd299335299389_))))
                (let ((_lp-hd299339299401_
                       (let () (declare (not safe)) (##car _e299338299397_)))
                      (_lp-tl299340299404_
                       (let () (declare (not safe)) (##cdr _e299338299397_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd299339299401_))
                      (let ((_e299347299407_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd299339299401_))))
                        (let ((_hd299346299411_
                               (let ()
                                 (declare (not safe))
                                 (##car _e299347299407_)))
                              (_tl299345299414_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e299347299407_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl299345299414_))
                              (let ((_g304963_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl299345299414_
                                        '0))))
                                (begin
                                  (let ((_g304964_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g304963_)
                                               (##vector-length _g304963_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g304964_ 2)))
                                        (error "Context expects 2 values"
                                               _g304964_)))
                                  (let ((_target299348299417_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g304963_ 0)))
                                        (_tl299350299420_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g304963_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl299350299420_))
                                        (letrec ((_loop299351299423_
                                                  (lambda (_hd299349299427_
                                                           _arity299355299430_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd299349299427_))
                                                        (let ((_e299352299433_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd299349299427_))))
                  (let ((_lp-hd299353299437_
                         (let () (declare (not safe)) (##car _e299352299433_)))
                        (_lp-tl299354299440_
                         (let ()
                           (declare (not safe))
                           (##cdr _e299352299433_))))
                    (_loop299351299423_
                     _lp-tl299354299440_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd299353299437_ _arity299355299430_)))))
                (let ((_arity299356299443_ (reverse _arity299355299430_)))
                  (_loop299337299385_
                   _lp-tl299340299404_
                   (let ()
                     (declare (not safe))
                     (cons _arity299356299443_ _arity299341299392_))
                   (let ()
                     (declare (not safe))
                     (cons _hd299346299411_ _prim299342299394_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop299351299423_
                                           _target299348299417_
                                           '()))
                                        (_g299327299362_ _g299328299366_)))))
                              (_g299327299362_ _g299328299366_))))
                      (_g299327299362_ _g299328299366_))))
              (let ((_arity299343299447_ (reverse _arity299341299392_))
                    (_prim299344299450_ (reverse _prim299342299394_)))
                ((lambda (_L299453_ _L299455_)
                   (let ((__tmp304962
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp304955
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L299453_
                               _L299455_))
                            (let ((__tmp304956
                                   (lambda (_g299470299476_
                                            _g299471299479_
                                            _g299472299481_)
                                     (let ((__tmp304957
                                            (let ((__tmp304961
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp304958
                                                   (let ((__tmp304959
                                                          (let ((__tmp304960
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g299473299484_ _g299474299487_)
                           (let ()
                             (declare (not safe))
                             (cons _g299473299484_ _g299474299487_)))))
                    (declare (not safe))
                    (foldr1 __tmp304960 '() _g299470299476_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g299471299479_
                                                           __tmp304959))))
                                              (declare (not safe))
                                              (cons __tmp304961 __tmp304958))))
                                       (declare (not safe))
                                       (cons __tmp304957 _g299472299481_)))))
                              (declare (not safe))
                              (foldr2 __tmp304956 '() _L299453_ _L299455_)))))
                     (declare (not safe))
                     (cons __tmp304962 __tmp304955)))
                 _arity299343299447_
                 _prim299344299450_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop299337299385_
                                         _target299334299379_
                                         '()
                                         '()))
                                      (_g299327299362_ _g299328299366_)))))
                            (_g299327299362_ _g299328299366_))))
                    (_g299327299362_ _g299328299366_)))))
        (_g299326299490_ _$stx299323_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx299496_)
      (let* ((_g299500299535_
              (lambda (_g299501299531_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g299501299531_))))
             (_g299499299663_
              (lambda (_g299501299539_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g299501299539_))
                    (let ((_e299506299542_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g299501299539_))))
                      (let ((_hd299505299546_
                             (let ()
                               (declare (not safe))
                               (##car _e299506299542_)))
                            (_tl299504299549_
                             (let ()
                               (declare (not safe))
                               (##cdr _e299506299542_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl299504299549_))
                            (let ((_g304965_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl299504299549_
                                      '0))))
                              (begin
                                (let ((_g304966_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g304965_)
                                             (##vector-length _g304965_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g304966_ 2)))
                                      (error "Context expects 2 values"
                                             _g304966_)))
                                (let ((_target299507299552_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g304965_ 0)))
                                      (_tl299509299555_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g304965_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl299509299555_))
                                      (letrec ((_loop299510299558_
                                                (lambda (_hd299508299562_
                                                         _arity299514299565_
                                                         _prim299515299567_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd299508299562_))
                                                      (let ((_e299511299570_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd299508299562_))))
                (let ((_lp-hd299512299574_
                       (let () (declare (not safe)) (##car _e299511299570_)))
                      (_lp-tl299513299577_
                       (let () (declare (not safe)) (##cdr _e299511299570_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd299512299574_))
                      (let ((_e299520299580_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd299512299574_))))
                        (let ((_hd299519299584_
                               (let ()
                                 (declare (not safe))
                                 (##car _e299520299580_)))
                              (_tl299518299587_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e299520299580_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl299518299587_))
                              (let ((_g304975_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl299518299587_
                                        '0))))
                                (begin
                                  (let ((_g304976_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g304975_)
                                               (##vector-length _g304975_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g304976_ 2)))
                                        (error "Context expects 2 values"
                                               _g304976_)))
                                  (let ((_target299521299590_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g304975_ 0)))
                                        (_tl299523299593_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g304975_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl299523299593_))
                                        (letrec ((_loop299524299596_
                                                  (lambda (_hd299522299600_
                                                           _arity299528299603_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd299522299600_))
                                                        (let ((_e299525299606_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd299522299600_))))
                  (let ((_lp-hd299526299610_
                         (let () (declare (not safe)) (##car _e299525299606_)))
                        (_lp-tl299527299613_
                         (let ()
                           (declare (not safe))
                           (##cdr _e299525299606_))))
                    (_loop299524299596_
                     _lp-tl299527299613_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd299526299610_ _arity299528299603_)))))
                (let ((_arity299529299616_ (reverse _arity299528299603_)))
                  (_loop299510299558_
                   _lp-tl299513299577_
                   (let ()
                     (declare (not safe))
                     (cons _arity299529299616_ _arity299514299565_))
                   (let ()
                     (declare (not safe))
                     (cons _hd299519299584_ _prim299515299567_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop299524299596_
                                           _target299521299590_
                                           '()))
                                        (_g299500299535_ _g299501299539_)))))
                              (_g299500299535_ _g299501299539_))))
                      (_g299500299535_ _g299501299539_))))
              (let ((_arity299516299620_ (reverse _arity299514299565_))
                    (_prim299517299623_ (reverse _prim299515299567_)))
                ((lambda (_L299626_ _L299628_)
                   (let ((__tmp304974
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp304967
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L299626_
                               _L299628_))
                            (let ((__tmp304968
                                   (lambda (_g299643299649_
                                            _g299644299652_
                                            _g299645299654_)
                                     (let ((__tmp304969
                                            (let ((__tmp304973
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp304970
                                                   (let ((__tmp304971
                                                          (let ((__tmp304972
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g299646299657_ _g299647299660_)
                           (let ()
                             (declare (not safe))
                             (cons _g299646299657_ _g299647299660_)))))
                    (declare (not safe))
                    (foldr1 __tmp304972 '() _g299643299649_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g299644299652_
                                                           __tmp304971))))
                                              (declare (not safe))
                                              (cons __tmp304973 __tmp304970))))
                                       (declare (not safe))
                                       (cons __tmp304969 _g299645299654_)))))
                              (declare (not safe))
                              (foldr2 __tmp304968 '() _L299626_ _L299628_)))))
                     (declare (not safe))
                     (cons __tmp304974 __tmp304967)))
                 _arity299516299620_
                 _prim299517299623_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop299510299558_
                                         _target299507299552_
                                         '()
                                         '()))
                                      (_g299500299535_ _g299501299539_)))))
                            (_g299500299535_ _g299501299539_))))
                    (_g299500299535_ _g299501299539_)))))
        (_g299499299663_ _$stx299496_)))))
