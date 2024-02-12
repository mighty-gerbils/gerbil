(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx296596_)
      (let* ((_g296600296618_
              (lambda (_g296601296614_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g296601296614_))))
             (_g296599296673_
              (lambda (_g296601296622_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g296601296622_))
                    (let ((_e296606296625_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g296601296622_))))
                      (let ((_hd296605296629_
                             (let ()
                               (declare (not safe))
                               (##car _e296606296625_)))
                            (_tl296604296632_
                             (let ()
                               (declare (not safe))
                               (##cdr _e296606296625_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl296604296632_))
                            (let ((_e296609296635_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl296604296632_))))
                              (let ((_hd296608296639_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e296609296635_)))
                                    (_tl296607296642_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e296609296635_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl296607296642_))
                                    (let ((_e296612296645_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl296607296642_))))
                                      (let ((_hd296611296649_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e296612296645_)))
                                            (_tl296610296652_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e296612296645_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl296610296652_))
                                            ((lambda (_L296655_ _L296657_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L296657_))
                                                   (let ((__tmp304687
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp304682
                                                          (let ((__tmp304684
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp304686
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp304685
                                (let ()
                                  (declare (not safe))
                                  (cons _L296657_ '()))))
                           (declare (not safe))
                           (cons __tmp304686 __tmp304685)))
                        (__tmp304683
                         (let () (declare (not safe)) (cons _L296655_ '()))))
                    (declare (not safe))
                    (cons __tmp304684 __tmp304683))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp304687
                                                           __tmp304682))
                                                   (_g296600296618_
                                                    _g296601296622_)))
                                             _hd296611296649_
                                             _hd296608296639_)
                                            (_g296600296618_
                                             _g296601296622_))))
                                    (_g296600296618_ _g296601296622_))))
                            (_g296600296618_ _g296601296622_))))
                    (_g296600296618_ _g296601296622_)))))
        (_g296599296673_ _$stx296596_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx296677_)
      (let* ((_g296681296710_
              (lambda (_g296682296706_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g296682296706_))))
             (_g296680296810_
              (lambda (_g296682296714_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g296682296714_))
                    (let ((_e296687296717_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g296682296714_))))
                      (let ((_hd296686296721_
                             (let ()
                               (declare (not safe))
                               (##car _e296687296717_)))
                            (_tl296685296724_
                             (let ()
                               (declare (not safe))
                               (##cdr _e296687296717_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl296685296724_))
                            (let ((_g304688_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl296685296724_
                                      '0))))
                              (begin
                                (let ((_g304689_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g304688_)
                                             (##vector-length _g304688_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g304689_ 2)))
                                      (error "Context expects 2 values"
                                             _g304689_)))
                                (let ((_target296688296727_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g304688_ 0)))
                                      (_tl296690296730_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g304688_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl296690296730_))
                                      (letrec ((_loop296691296733_
                                                (lambda (_hd296689296737_
                                                         _type296695296740_
                                                         _symbol296696296742_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd296689296737_))
                                                      (let ((_e296692296745_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd296689296737_))))
                (let ((_lp-hd296693296749_
                       (let () (declare (not safe)) (##car _e296692296745_)))
                      (_lp-tl296694296752_
                       (let () (declare (not safe)) (##cdr _e296692296745_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd296693296749_))
                      (let ((_e296701296755_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd296693296749_))))
                        (let ((_hd296700296759_
                               (let ()
                                 (declare (not safe))
                                 (##car _e296701296755_)))
                              (_tl296699296762_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e296701296755_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl296699296762_))
                              (let ((_e296704296765_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl296699296762_))))
                                (let ((_hd296703296769_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e296704296765_)))
                                      (_tl296702296772_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e296704296765_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl296702296772_))
                                      (_loop296691296733_
                                       _lp-tl296694296752_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd296703296769_
                                               _type296695296740_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd296700296759_
                                               _symbol296696296742_)))
                                      (_g296681296710_ _g296682296714_))))
                              (_g296681296710_ _g296682296714_))))
                      (_g296681296710_ _g296682296714_))))
              (let ((_type296697296775_ (reverse _type296695296740_))
                    (_symbol296698296778_ (reverse _symbol296696296742_)))
                ((lambda (_L296781_ _L296783_)
                   (let ((__tmp304696
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp304690
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L296781_
                               _L296783_))
                            (let ((__tmp304691
                                   (lambda (_g296798296802_
                                            _g296799296805_
                                            _g296800296807_)
                                     (let ((__tmp304692
                                            (let ((__tmp304695
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp304693
                                                   (let ((__tmp304694
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g296798296802_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g296799296805_
                                                           __tmp304694))))
                                              (declare (not safe))
                                              (cons __tmp304695 __tmp304693))))
                                       (declare (not safe))
                                       (cons __tmp304692 _g296800296807_)))))
                              (declare (not safe))
                              (foldr2 __tmp304691 '() _L296781_ _L296783_)))))
                     (declare (not safe))
                     (cons __tmp304696 __tmp304690)))
                 _type296697296775_
                 _symbol296698296778_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop296691296733_
                                         _target296688296727_
                                         '()
                                         '()))
                                      (_g296681296710_ _g296682296714_)))))
                            (_g296681296710_ _g296682296714_))))
                    (_g296681296710_ _g296682296714_)))))
        (_g296680296810_ _$stx296677_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx296815_)
      (let* ((___stx304247304248_ _$stx296815_)
             (_g296820296862_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx304247304248_)))))
        (let ((___kont304250304251_
               (lambda (_L296990_ _L296992_ _L296993_ _L296994_)
                 (let ((__tmp304710
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp304697
                        (let ((__tmp304707
                               (let ((__tmp304709
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp304708
                                      (let ()
                                        (declare (not safe))
                                        (cons _L296994_ '()))))
                                 (declare (not safe))
                                 (cons __tmp304709 __tmp304708)))
                              (__tmp304698
                               (let ((__tmp304704
                                      (let ((__tmp304706
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp304705
                                             (let ()
                                               (declare (not safe))
                                               (cons _L296993_ '()))))
                                        (declare (not safe))
                                        (cons __tmp304706 __tmp304705)))
                                     (__tmp304699
                                      (let ((__tmp304701
                                             (let ((__tmp304703
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp304702
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L296992_ '()))))
                                               (declare (not safe))
                                               (cons __tmp304703 __tmp304702)))
                                            (__tmp304700
                                             (let ()
                                               (declare (not safe))
                                               (cons _L296990_ '()))))
                                        (declare (not safe))
                                        (cons __tmp304701 __tmp304700))))
                                 (declare (not safe))
                                 (cons __tmp304704 __tmp304699))))
                          (declare (not safe))
                          (cons __tmp304707 __tmp304698))))
                   (declare (not safe))
                   (cons __tmp304710 __tmp304697))))
              (___kont304252304253_
               (lambda (_L296909_ _L296911_ _L296912_ _L296913_)
                 (let ((__tmp304711
                        (let ((__tmp304712
                               (let ((__tmp304713
                                      (let ((__tmp304714
                                             (let ((__tmp304715
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp304715 '()))))
                                        (declare (not safe))
                                        (cons _L296909_ __tmp304714))))
                                 (declare (not safe))
                                 (cons _L296911_ __tmp304713))))
                          (declare (not safe))
                          (cons _L296912_ __tmp304712))))
                   (declare (not safe))
                   (cons _L296913_ __tmp304711)))))
          (let ((___match304286304287_
                 (lambda (_e296828296940_
                          _hd296827296944_
                          _tl296826296947_
                          _e296831296950_
                          _hd296830296954_
                          _tl296829296957_
                          _e296834296960_
                          _hd296833296964_
                          _tl296832296967_
                          _e296837296970_
                          _hd296836296974_
                          _tl296835296977_
                          _e296840296980_
                          _hd296839296984_
                          _tl296838296987_)
                   (let ((_L296990_ _hd296839296984_)
                         (_L296992_ _hd296836296974_)
                         (_L296993_ _hd296833296964_)
                         (_L296994_ _hd296830296954_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L296994_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L296993_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L296992_)))
                         (___kont304250304251_
                          _L296990_
                          _L296992_
                          _L296993_
                          _L296994_)
                         (let () (declare (not safe)) (_g296820296862_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx304247304248_))
                (let ((_e296828296940_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx304247304248_))))
                  (let ((_tl296826296947_
                         (let () (declare (not safe)) (##cdr _e296828296940_)))
                        (_hd296827296944_
                         (let ()
                           (declare (not safe))
                           (##car _e296828296940_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl296826296947_))
                        (let ((_e296831296950_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl296826296947_))))
                          (let ((_tl296829296957_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e296831296950_)))
                                (_hd296830296954_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e296831296950_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl296829296957_))
                                (let ((_e296834296960_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl296829296957_))))
                                  (let ((_tl296832296967_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e296834296960_)))
                                        (_hd296833296964_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e296834296960_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl296832296967_))
                                        (let ((_e296837296970_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl296832296967_))))
                                          (let ((_tl296835296977_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e296837296970_)))
                                                (_hd296836296974_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e296837296970_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl296835296977_))
                                                (let ((_e296840296980_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl296835296977_))))
                                                  (let ((_tl296838296987_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e296840296980_)))
                                                        (_hd296839296984_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e296840296980_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl296838296987_))
                                                        (___match304286304287_
                                                         _e296828296940_
                                                         _hd296827296944_
                                                         _tl296826296947_
                                                         _e296831296950_
                                                         _hd296830296954_
                                                         _tl296829296957_
                                                         _e296834296960_
                                                         _hd296833296964_
                                                         _tl296832296967_
                                                         _e296837296970_
                                                         _hd296836296974_
                                                         _tl296835296977_
                                                         _e296840296980_
                                                         _hd296839296984_
                                                         _tl296838296987_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g296820296862_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl296835296977_))
                                                    (___kont304252304253_
                                                     _hd296836296974_
                                                     _hd296833296964_
                                                     _hd296830296954_
                                                     _hd296827296944_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g296820296862_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g296820296862_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g296820296862_)))))
                        (let () (declare (not safe)) (_g296820296862_)))))
                (let () (declare (not safe)) (_g296820296862_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx297019_)
      (let* ((_g297023297058_
              (lambda (_g297024297054_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g297024297054_))))
             (_g297022297177_
              (lambda (_g297024297062_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g297024297062_))
                    (let ((_e297030297065_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g297024297062_))))
                      (let ((_hd297029297069_
                             (let ()
                               (declare (not safe))
                               (##car _e297030297065_)))
                            (_tl297028297072_
                             (let ()
                               (declare (not safe))
                               (##cdr _e297030297065_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl297028297072_))
                            (let ((_g304716_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl297028297072_
                                      '0))))
                              (begin
                                (let ((_g304717_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g304716_)
                                             (##vector-length _g304716_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g304717_ 2)))
                                      (error "Context expects 2 values"
                                             _g304717_)))
                                (let ((_target297031297075_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g304716_ 0)))
                                      (_tl297033297078_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g304716_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl297033297078_))
                                      (letrec ((_loop297034297081_
                                                (lambda (_hd297032297085_
                                                         _symbol297038297088_
                                                         _method297039297090_
                                                         _type-t297040297092_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd297032297085_))
                                                      (let ((_e297035297095_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd297032297085_))))
                (let ((_lp-hd297036297099_
                       (let () (declare (not safe)) (##car _e297035297095_)))
                      (_lp-tl297037297102_
                       (let () (declare (not safe)) (##cdr _e297035297095_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd297036297099_))
                      (let ((_e297046297105_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd297036297099_))))
                        (let ((_hd297045297109_
                               (let ()
                                 (declare (not safe))
                                 (##car _e297046297105_)))
                              (_tl297044297112_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e297046297105_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl297044297112_))
                              (let ((_e297049297115_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl297044297112_))))
                                (let ((_hd297048297119_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e297049297115_)))
                                      (_tl297047297122_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e297049297115_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl297047297122_))
                                      (let ((_e297052297125_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl297047297122_))))
                                        (let ((_hd297051297129_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e297052297125_)))
                                              (_tl297050297132_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e297052297125_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl297050297132_))
                                              (_loop297034297081_
                                               _lp-tl297037297102_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd297051297129_
                                                       _symbol297038297088_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd297048297119_
                                                       _method297039297090_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd297045297109_
                                                       _type-t297040297092_)))
                                              (_g297023297058_
                                               _g297024297062_))))
                                      (_g297023297058_ _g297024297062_))))
                              (_g297023297058_ _g297024297062_))))
                      (_g297023297058_ _g297024297062_))))
              (let ((_symbol297041297135_ (reverse _symbol297038297088_))
                    (_method297042297138_ (reverse _method297039297090_))
                    (_type-t297043297140_ (reverse _type-t297040297092_)))
                ((lambda (_L297143_ _L297145_ _L297146_)
                   (let ((__tmp304725
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp304718
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L297143_
                               _L297145_
                               _L297146_))
                            (let ((__tmp304719
                                   (lambda (_g297162297167_
                                            _g297163297170_
                                            _g297164297172_
                                            _g297165297174_)
                                     (let ((__tmp304720
                                            (let ((__tmp304724
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp304721
                                                   (let ((__tmp304722
                                                          (let ((__tmp304723
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g297162297167_ '()))))
                    (declare (not safe))
                    (cons _g297163297170_ __tmp304723))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g297164297172_
                                                           __tmp304722))))
                                              (declare (not safe))
                                              (cons __tmp304724 __tmp304721))))
                                       (declare (not safe))
                                       (cons __tmp304720 _g297165297174_)))))
                              (declare (not safe))
                              (foldr* __tmp304719
                                      '()
                                      _L297143_
                                      _L297145_
                                      _L297146_)))))
                     (declare (not safe))
                     (cons __tmp304725 __tmp304718)))
                 _symbol297041297135_
                 _method297042297138_
                 _type-t297043297140_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop297034297081_
                                         _target297031297075_
                                         '()
                                         '()
                                         '()))
                                      (_g297023297058_ _g297024297062_)))))
                            (_g297023297058_ _g297024297062_))))
                    (_g297023297058_ _g297024297062_)))))
        (_g297022297177_ _$stx297019_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx297182_)
      (let* ((_g297186297219_
              (lambda (_g297187297215_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g297187297215_))))
             (_g297185297333_
              (lambda (_g297187297223_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g297187297223_))
                    (let ((_e297193297226_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g297187297223_))))
                      (let ((_hd297192297230_
                             (let ()
                               (declare (not safe))
                               (##car _e297193297226_)))
                            (_tl297191297233_
                             (let ()
                               (declare (not safe))
                               (##cdr _e297193297226_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl297191297233_))
                            (let ((_e297196297236_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl297191297233_))))
                              (let ((_hd297195297240_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e297196297236_)))
                                    (_tl297194297243_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e297196297236_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl297194297243_))
                                    (let ((_g304726_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl297194297243_
                                              '0))))
                                      (begin
                                        (let ((_g304727_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g304726_)
                                                     (##vector-length
                                                      _g304726_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g304727_ 2)))
                                              (error "Context expects 2 values"
                                                     _g304727_)))
                                        (let ((_target297197297246_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g304726_ 0)))
                                              (_tl297199297249_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g304726_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl297199297249_))
                                              (letrec ((_loop297200297252_
                                                        (lambda (_hd297198297256_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol297204297259_
                         _method297205297261_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd297198297256_))
                      (let ((_e297201297264_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd297198297256_))))
                        (let ((_lp-hd297202297268_
                               (let ()
                                 (declare (not safe))
                                 (##car _e297201297264_)))
                              (_lp-tl297203297271_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e297201297264_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd297202297268_))
                              (let ((_e297210297274_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd297202297268_))))
                                (let ((_hd297209297278_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e297210297274_)))
                                      (_tl297208297281_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e297210297274_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl297208297281_))
                                      (let ((_e297213297284_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl297208297281_))))
                                        (let ((_hd297212297288_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e297213297284_)))
                                              (_tl297211297291_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e297213297284_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl297211297291_))
                                              (_loop297200297252_
                                               _lp-tl297203297271_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd297212297288_
                                                       _symbol297204297259_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd297209297278_
                                                       _method297205297261_)))
                                              (_g297186297219_
                                               _g297187297223_))))
                                      (_g297186297219_ _g297187297223_))))
                              (_g297186297219_ _g297187297223_))))
                      (let ((_symbol297206297294_
                             (reverse _symbol297204297259_))
                            (_method297207297297_
                             (reverse _method297205297261_)))
                        ((lambda (_L297300_ _L297302_ _L297303_)
                           (let ((__tmp304735
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp304728
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L297300_
                                       _L297302_))
                                    (let ((__tmp304729
                                           (lambda (_g297321297325_
                                                    _g297322297328_
                                                    _g297323297330_)
                                             (let ((__tmp304730
                                                    (let ((__tmp304734
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp304731
                                                           (let ((__tmp304732
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp304733
                                 (let ()
                                   (declare (not safe))
                                   (cons _g297321297325_ '()))))
                            (declare (not safe))
                            (cons _g297322297328_ __tmp304733))))
                     (declare (not safe))
                     (cons _L297303_ __tmp304732))))
              (declare (not safe))
              (cons __tmp304734 __tmp304731))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp304730
                                                     _g297323297330_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp304729
                                              '()
                                              _L297300_
                                              _L297302_)))))
                             (declare (not safe))
                             (cons __tmp304735 __tmp304728)))
                         _symbol297206297294_
                         _method297207297297_
                         _hd297195297240_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop297200297252_
                                                 _target297197297246_
                                                 '()
                                                 '()))
                                              (_g297186297219_
                                               _g297187297223_)))))
                                    (_g297186297219_ _g297187297223_))))
                            (_g297186297219_ _g297187297223_))))
                    (_g297186297219_ _g297187297223_)))))
        (_g297185297333_ _$stx297182_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx297338_)
      (let* ((_g297342297356_
              (lambda (_g297343297352_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g297343297352_))))
             (_g297341297397_
              (lambda (_g297343297360_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g297343297360_))
                    (let ((_e297347297363_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g297343297360_))))
                      (let ((_hd297346297367_
                             (let ()
                               (declare (not safe))
                               (##car _e297347297363_)))
                            (_tl297345297370_
                             (let ()
                               (declare (not safe))
                               (##cdr _e297347297363_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl297345297370_))
                            (let ((_e297350297373_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl297345297370_))))
                              (let ((_hd297349297377_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e297350297373_)))
                                    (_tl297348297380_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e297350297373_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl297348297380_))
                                    ((lambda (_L297383_)
                                       (let ((__tmp304740
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp304736
                                              (let ((__tmp304737
                                                     (let ((__tmp304739
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp304738
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L297383_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp304739 __tmp304738))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp304737 '()))))
                                         (declare (not safe))
                                         (cons __tmp304740 __tmp304736)))
                                     _hd297349297377_)
                                    (_g297342297356_ _g297343297360_))))
                            (_g297342297356_ _g297343297360_))))
                    (_g297342297356_ _g297343297360_)))))
        (_g297341297397_ _$stx297338_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx297401_)
      (let* ((_g297405297451_
              (lambda (_g297406297447_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g297406297447_))))
             (_g297404297604_
              (lambda (_g297406297455_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g297406297455_))
                    (let ((_e297418297458_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g297406297455_))))
                      (let ((_hd297417297462_
                             (let ()
                               (declare (not safe))
                               (##car _e297418297458_)))
                            (_tl297416297465_
                             (let ()
                               (declare (not safe))
                               (##cdr _e297418297458_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl297416297465_))
                            (let ((_e297421297468_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl297416297465_))))
                              (let ((_hd297420297472_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e297421297468_)))
                                    (_tl297419297475_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e297421297468_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl297419297475_))
                                    (let ((_e297424297478_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl297419297475_))))
                                      (let ((_hd297423297482_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e297424297478_)))
                                            (_tl297422297485_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e297424297478_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl297422297485_))
                                            (let ((_e297427297488_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl297422297485_))))
                                              (let ((_hd297426297492_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e297427297488_)))
                                                    (_tl297425297495_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e297427297488_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl297425297495_))
                                                    (let ((_e297430297498_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl297425297495_))))
                                                      (let ((_hd297429297502_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e297430297498_)))
                    (_tl297428297505_
                     (let () (declare (not safe)) (##cdr _e297430297498_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl297428297505_))
                    (let ((_e297433297508_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl297428297505_))))
                      (let ((_hd297432297512_
                             (let ()
                               (declare (not safe))
                               (##car _e297433297508_)))
                            (_tl297431297515_
                             (let ()
                               (declare (not safe))
                               (##cdr _e297433297508_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl297431297515_))
                            (let ((_e297436297518_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl297431297515_))))
                              (let ((_hd297435297522_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e297436297518_)))
                                    (_tl297434297525_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e297436297518_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl297434297525_))
                                    (let ((_e297439297528_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl297434297525_))))
                                      (let ((_hd297438297532_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e297439297528_)))
                                            (_tl297437297535_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e297439297528_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl297437297535_))
                                            (let ((_e297442297538_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl297437297535_))))
                                              (let ((_hd297441297542_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e297442297538_)))
                                                    (_tl297440297545_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e297442297538_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl297440297545_))
                                                    (let ((_e297445297548_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl297440297545_))))
                                                      (let ((_hd297444297552_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e297445297548_)))
                    (_tl297443297555_
                     (let () (declare (not safe)) (##cdr _e297445297548_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl297443297555_))
                    ((lambda (_L297558_
                              _L297560_
                              _L297561_
                              _L297562_
                              _L297563_
                              _L297564_
                              _L297565_
                              _L297566_
                              _L297567_)
                       (let ((__tmp304777
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'make-!class)))
                             (__tmp304741
                              (let ((__tmp304774
                                     (let ((__tmp304776
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'quote)))
                                           (__tmp304775
                                            (let ()
                                              (declare (not safe))
                                              (cons _L297567_ '()))))
                                       (declare (not safe))
                                       (cons __tmp304776 __tmp304775)))
                                    (__tmp304742
                                     (let ((__tmp304771
                                            (let ((__tmp304773
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote)))
                                                  (__tmp304772
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L297566_ '()))))
                                              (declare (not safe))
                                              (cons __tmp304773 __tmp304772)))
                                           (__tmp304743
                                            (let ((__tmp304768
                                                   (let ((__tmp304770
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'quote)))
                                                         (__tmp304769
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L297565_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp304770
                                                           __tmp304769)))
                                                  (__tmp304744
                                                   (let ((__tmp304765
                                                          (let ((__tmp304767
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote)))
                        (__tmp304766
                         (let () (declare (not safe)) (cons _L297564_ '()))))
                    (declare (not safe))
                    (cons __tmp304767 __tmp304766)))
                 (__tmp304745
                  (let ((__tmp304762
                         (let ((__tmp304764
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp304763
                                (let ()
                                  (declare (not safe))
                                  (cons _L297563_ '()))))
                           (declare (not safe))
                           (cons __tmp304764 __tmp304763)))
                        (__tmp304746
                         (let ((__tmp304759
                                (let ((__tmp304761
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote)))
                                      (__tmp304760
                                       (let ()
                                         (declare (not safe))
                                         (cons _L297562_ '()))))
                                  (declare (not safe))
                                  (cons __tmp304761 __tmp304760)))
                               (__tmp304747
                                (let ((__tmp304756
                                       (let ((__tmp304758
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'quote)))
                                             (__tmp304757
                                              (let ()
                                                (declare (not safe))
                                                (cons _L297561_ '()))))
                                         (declare (not safe))
                                         (cons __tmp304758 __tmp304757)))
                                      (__tmp304748
                                       (let ((__tmp304753
                                              (let ((__tmp304755
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'quote)))
                                                    (__tmp304754
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L297560_ '()))))
                                                (declare (not safe))
                                                (cons __tmp304755
                                                      __tmp304754)))
                                             (__tmp304749
                                              (let ((__tmp304750
                                                     (let ((__tmp304752
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp304751
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L297558_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp304752 __tmp304751))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp304750 '()))))
                                         (declare (not safe))
                                         (cons __tmp304753 __tmp304749))))
                                  (declare (not safe))
                                  (cons __tmp304756 __tmp304748))))
                           (declare (not safe))
                           (cons __tmp304759 __tmp304747))))
                    (declare (not safe))
                    (cons __tmp304762 __tmp304746))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp304765
                                                           __tmp304745))))
                                              (declare (not safe))
                                              (cons __tmp304768 __tmp304744))))
                                       (declare (not safe))
                                       (cons __tmp304771 __tmp304743))))
                                (declare (not safe))
                                (cons __tmp304774 __tmp304742))))
                         (declare (not safe))
                         (cons __tmp304777 __tmp304741)))
                     _hd297444297552_
                     _hd297441297542_
                     _hd297438297532_
                     _hd297435297522_
                     _hd297432297512_
                     _hd297429297502_
                     _hd297426297492_
                     _hd297423297482_
                     _hd297420297472_)
                    (_g297405297451_ _g297406297455_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g297405297451_
                                                     _g297406297455_))))
                                            (_g297405297451_
                                             _g297406297455_))))
                                    (_g297405297451_ _g297406297455_))))
                            (_g297405297451_ _g297406297455_))))
                    (_g297405297451_ _g297406297455_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g297405297451_
                                                     _g297406297455_))))
                                            (_g297405297451_
                                             _g297406297455_))))
                                    (_g297405297451_ _g297406297455_))))
                            (_g297405297451_ _g297406297455_))))
                    (_g297405297451_ _g297406297455_)))))
        (_g297404297604_ _$stx297401_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx297608_)
      (let* ((_g297612297626_
              (lambda (_g297613297622_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g297613297622_))))
             (_g297611297667_
              (lambda (_g297613297630_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g297613297630_))
                    (let ((_e297617297633_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g297613297630_))))
                      (let ((_hd297616297637_
                             (let ()
                               (declare (not safe))
                               (##car _e297617297633_)))
                            (_tl297615297640_
                             (let ()
                               (declare (not safe))
                               (##cdr _e297617297633_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl297615297640_))
                            (let ((_e297620297643_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl297615297640_))))
                              (let ((_hd297619297647_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e297620297643_)))
                                    (_tl297618297650_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e297620297643_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl297618297650_))
                                    ((lambda (_L297653_)
                                       (let ((__tmp304782
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp304778
                                              (let ((__tmp304779
                                                     (let ((__tmp304781
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp304780
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L297653_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp304781 __tmp304780))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp304779 '()))))
                                         (declare (not safe))
                                         (cons __tmp304782 __tmp304778)))
                                     _hd297619297647_)
                                    (_g297612297626_ _g297613297630_))))
                            (_g297612297626_ _g297613297630_))))
                    (_g297612297626_ _g297613297630_)))))
        (_g297611297667_ _$stx297608_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx297671_)
      (let* ((_g297675297689_
              (lambda (_g297676297685_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g297676297685_))))
             (_g297674297730_
              (lambda (_g297676297693_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g297676297693_))
                    (let ((_e297680297696_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g297676297693_))))
                      (let ((_hd297679297700_
                             (let ()
                               (declare (not safe))
                               (##car _e297680297696_)))
                            (_tl297678297703_
                             (let ()
                               (declare (not safe))
                               (##cdr _e297680297696_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl297678297703_))
                            (let ((_e297683297706_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl297678297703_))))
                              (let ((_hd297682297710_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e297683297706_)))
                                    (_tl297681297713_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e297683297706_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl297681297713_))
                                    ((lambda (_L297716_)
                                       (let ((__tmp304787
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp304783
                                              (let ((__tmp304784
                                                     (let ((__tmp304786
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp304785
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L297716_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp304786 __tmp304785))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp304784 '()))))
                                         (declare (not safe))
                                         (cons __tmp304787 __tmp304783)))
                                     _hd297682297710_)
                                    (_g297675297689_ _g297676297693_))))
                            (_g297675297689_ _g297676297693_))))
                    (_g297675297689_ _g297676297693_)))))
        (_g297674297730_ _$stx297671_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx297734_)
      (let* ((_g297738297760_
              (lambda (_g297739297756_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g297739297756_))))
             (_g297737297829_
              (lambda (_g297739297764_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g297739297764_))
                    (let ((_e297745297767_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g297739297764_))))
                      (let ((_hd297744297771_
                             (let ()
                               (declare (not safe))
                               (##car _e297745297767_)))
                            (_tl297743297774_
                             (let ()
                               (declare (not safe))
                               (##cdr _e297745297767_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl297743297774_))
                            (let ((_e297748297777_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl297743297774_))))
                              (let ((_hd297747297781_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e297748297777_)))
                                    (_tl297746297784_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e297748297777_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl297746297784_))
                                    (let ((_e297751297787_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl297746297784_))))
                                      (let ((_hd297750297791_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e297751297787_)))
                                            (_tl297749297794_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e297751297787_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl297749297794_))
                                            (let ((_e297754297797_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl297749297794_))))
                                              (let ((_hd297753297801_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e297754297797_)))
                                                    (_tl297752297804_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e297754297797_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl297752297804_))
                                                    ((lambda (_L297807_
                                                              _L297809_
                                                              _L297810_)
                                                       (let ((__tmp304797
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp304788
                      (let ((__tmp304794
                             (let ((__tmp304796
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp304795
                                    (let ()
                                      (declare (not safe))
                                      (cons _L297810_ '()))))
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
                                             (cons _L297809_ '()))))
                                      (declare (not safe))
                                      (cons __tmp304793 __tmp304792)))
                                   (__tmp304790
                                    (let ()
                                      (declare (not safe))
                                      (cons _L297807_ '()))))
                               (declare (not safe))
                               (cons __tmp304791 __tmp304790))))
                        (declare (not safe))
                        (cons __tmp304794 __tmp304789))))
                 (declare (not safe))
                 (cons __tmp304797 __tmp304788)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd297753297801_
                                                     _hd297750297791_
                                                     _hd297747297781_)
                                                    (_g297738297760_
                                                     _g297739297764_))))
                                            (_g297738297760_
                                             _g297739297764_))))
                                    (_g297738297760_ _g297739297764_))))
                            (_g297738297760_ _g297739297764_))))
                    (_g297738297760_ _g297739297764_)))))
        (_g297737297829_ _$stx297734_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx297833_)
      (let* ((_g297837297859_
              (lambda (_g297838297855_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g297838297855_))))
             (_g297836297928_
              (lambda (_g297838297863_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g297838297863_))
                    (let ((_e297844297866_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g297838297863_))))
                      (let ((_hd297843297870_
                             (let ()
                               (declare (not safe))
                               (##car _e297844297866_)))
                            (_tl297842297873_
                             (let ()
                               (declare (not safe))
                               (##cdr _e297844297866_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl297842297873_))
                            (let ((_e297847297876_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl297842297873_))))
                              (let ((_hd297846297880_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e297847297876_)))
                                    (_tl297845297883_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e297847297876_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl297845297883_))
                                    (let ((_e297850297886_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl297845297883_))))
                                      (let ((_hd297849297890_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e297850297886_)))
                                            (_tl297848297893_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e297850297886_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl297848297893_))
                                            (let ((_e297853297896_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl297848297893_))))
                                              (let ((_hd297852297900_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e297853297896_)))
                                                    (_tl297851297903_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e297853297896_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl297851297903_))
                                                    ((lambda (_L297906_
                                                              _L297908_
                                                              _L297909_)
                                                       (let ((__tmp304807
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp304798
                      (let ((__tmp304804
                             (let ((__tmp304806
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp304805
                                    (let ()
                                      (declare (not safe))
                                      (cons _L297909_ '()))))
                               (declare (not safe))
                               (cons __tmp304806 __tmp304805)))
                            (__tmp304799
                             (let ((__tmp304801
                                    (let ((__tmp304803
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp304802
                                           (let ()
                                             (declare (not safe))
                                             (cons _L297908_ '()))))
                                      (declare (not safe))
                                      (cons __tmp304803 __tmp304802)))
                                   (__tmp304800
                                    (let ()
                                      (declare (not safe))
                                      (cons _L297906_ '()))))
                               (declare (not safe))
                               (cons __tmp304801 __tmp304800))))
                        (declare (not safe))
                        (cons __tmp304804 __tmp304799))))
                 (declare (not safe))
                 (cons __tmp304807 __tmp304798)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd297852297900_
                                                     _hd297849297890_
                                                     _hd297846297880_)
                                                    (_g297837297859_
                                                     _g297838297863_))))
                                            (_g297837297859_
                                             _g297838297863_))))
                                    (_g297837297859_ _g297838297863_))))
                            (_g297837297859_ _g297838297863_))))
                    (_g297837297859_ _g297838297863_)))))
        (_g297836297928_ _$stx297833_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx297932_)
      (let* ((___stx304315304316_ _$stx297932_)
             (_g297940298008_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx304315304316_)))))
        (let ((___kont304318304319_
               (lambda (_L298286_ _L298288_)
                 (let ((__tmp304823
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp304808
                        (let ((__tmp304819
                               (let ((__tmp304822
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp304820
                                      (let ((__tmp304821
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp304821 '()))))
                                 (declare (not safe))
                                 (cons __tmp304822 __tmp304820)))
                              (__tmp304809
                               (let ((__tmp304816
                                      (let ((__tmp304818
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp304817
                                             (let ()
                                               (declare (not safe))
                                               (cons _L298288_ '()))))
                                        (declare (not safe))
                                        (cons __tmp304818 __tmp304817)))
                                     (__tmp304810
                                      (let ((__tmp304811
                                             (let ((__tmp304812
                                                    (let ((__tmp304813
                                                           (let ((__tmp304815
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp304814
                          (let () (declare (not safe)) (cons _L298286_ '()))))
                     (declare (not safe))
                     (cons __tmp304815 __tmp304814))))
              (declare (not safe))
              (cons __tmp304813 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L298286_ __tmp304812))))
                                        (declare (not safe))
                                        (cons '#f __tmp304811))))
                                 (declare (not safe))
                                 (cons __tmp304816 __tmp304810))))
                          (declare (not safe))
                          (cons __tmp304819 __tmp304809))))
                   (declare (not safe))
                   (cons __tmp304823 __tmp304808))))
              (___kont304320304321_
               (lambda (_L298217_ _L298219_)
                 (let ((__tmp304824
                        (let ((__tmp304825
                               (let ((__tmp304826
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L298217_ __tmp304826))))
                          (declare (not safe))
                          (cons 'primitive: __tmp304825))))
                   (declare (not safe))
                   (cons _L298219_ __tmp304824))))
              (___kont304322304323_
               (lambda (_L298156_ _L298158_)
                 (let ((__tmp304840
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp304827
                        (let ((__tmp304836
                               (let ((__tmp304839
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp304837
                                      (let ((__tmp304838
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp304838 '()))))
                                 (declare (not safe))
                                 (cons __tmp304839 __tmp304837)))
                              (__tmp304828
                               (let ((__tmp304833
                                      (let ((__tmp304835
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp304834
                                             (let ()
                                               (declare (not safe))
                                               (cons _L298158_ '()))))
                                        (declare (not safe))
                                        (cons __tmp304835 __tmp304834)))
                                     (__tmp304829
                                      (let ((__tmp304830
                                             (let ((__tmp304832
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp304831
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L298156_ '()))))
                                               (declare (not safe))
                                               (cons __tmp304832
                                                     __tmp304831))))
                                        (declare (not safe))
                                        (cons __tmp304830 '()))))
                                 (declare (not safe))
                                 (cons __tmp304833 __tmp304829))))
                          (declare (not safe))
                          (cons __tmp304836 __tmp304828))))
                   (declare (not safe))
                   (cons __tmp304840 __tmp304827))))
              (___kont304324304325_
               (lambda (_L298088_ _L298090_)
                 (let ((__tmp304854
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp304841
                        (let ((__tmp304850
                               (let ((__tmp304853
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp304851
                                      (let ((__tmp304852
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp304852 '()))))
                                 (declare (not safe))
                                 (cons __tmp304853 __tmp304851)))
                              (__tmp304842
                               (let ((__tmp304847
                                      (let ((__tmp304849
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp304848
                                             (let ()
                                               (declare (not safe))
                                               (cons _L298090_ '()))))
                                        (declare (not safe))
                                        (cons __tmp304849 __tmp304848)))
                                     (__tmp304843
                                      (let ((__tmp304844
                                             (let ((__tmp304846
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp304845
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L298088_ '()))))
                                               (declare (not safe))
                                               (cons __tmp304846
                                                     __tmp304845))))
                                        (declare (not safe))
                                        (cons __tmp304844 '()))))
                                 (declare (not safe))
                                 (cons __tmp304847 __tmp304843))))
                          (declare (not safe))
                          (cons __tmp304850 __tmp304842))))
                   (declare (not safe))
                   (cons __tmp304854 __tmp304841))))
              (___kont304326304327_
               (lambda (_L298035_ _L298037_)
                 (let ((__tmp304855
                        (let ((__tmp304856
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L298035_ __tmp304856))))
                   (declare (not safe))
                   (cons _L298037_ __tmp304855)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx304315304316_))
              (let ((_e297946298242_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx304315304316_))))
                (let ((_tl297944298249_
                       (let () (declare (not safe)) (##cdr _e297946298242_)))
                      (_hd297945298246_
                       (let () (declare (not safe)) (##car _e297946298242_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl297944298249_))
                      (let ((_e297949298252_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl297944298249_))))
                        (let ((_tl297947298259_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e297949298252_)))
                              (_hd297948298256_
                               (let ()
                                 (declare (not safe))
                                 (##car _e297949298252_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl297947298259_))
                              (let ((_e297952298262_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl297947298259_))))
                                (let ((_tl297950298269_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e297952298262_)))
                                      (_hd297951298266_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e297952298262_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd297951298266_))
                                      (let ((_e297953298272_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd297951298266_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e297953298272_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl297950298269_))
                                                (let ((_e297956298276_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl297950298269_))))
                                                  (let ((_tl297954298283_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e297956298276_)))
                                                        (_hd297955298280_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e297956298276_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl297954298283_))
                                                        (___kont304318304319_
                                                         _hd297955298280_
                                                         _hd297948298256_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd297948298256_))
                                                            (let ((_e297965298203_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd297948298256_))))
                      (declare (not safe))
                      (_g297940298008_))
                    (let () (declare (not safe)) (_g297940298008_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd297948298256_))
                                                    (let ((_e297965298203_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd297948298256_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e297965298203_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl297950298269_))
                      (___kont304320304321_ _hd297951298266_ _hd297945298246_)
                      (let () (declare (not safe)) (_g297940298008_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl297950298269_))
                      (___kont304324304325_ _hd297951298266_ _hd297948298256_)
                      (let () (declare (not safe)) (_g297940298008_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl297950298269_))
                                                        (___kont304324304325_
                                                         _hd297951298266_
                                                         _hd297948298256_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g297940298008_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd297948298256_))
                                                (let ((_e297965298203_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd297948298256_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e297965298203_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl297950298269_))
                                                          (___kont304320304321_
                                                           _hd297951298266_
                                                           _hd297945298246_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl297950298269_))
                      (let ((_e297983298146_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl297950298269_))))
                        (let ((_tl297981298153_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e297983298146_)))
                              (_hd297982298150_
                               (let ()
                                 (declare (not safe))
                                 (##car _e297983298146_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl297981298153_))
                              (___kont304322304323_
                               _hd297982298150_
                               _hd297951298266_)
                              (let ()
                                (declare (not safe))
                                (_g297940298008_)))))
                      (let () (declare (not safe)) (_g297940298008_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl297950298269_))
                  (___kont304324304325_ _hd297951298266_ _hd297948298256_)
                  (let () (declare (not safe)) (_g297940298008_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl297950298269_))
                                                    (___kont304324304325_
                                                     _hd297951298266_
                                                     _hd297948298256_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g297940298008_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd297948298256_))
                                          (let ((_e297965298203_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd297948298256_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e297965298203_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl297950298269_))
                                                    (___kont304320304321_
                                                     _hd297951298266_
                                                     _hd297945298246_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl297950298269_))
                                                        (let ((_e297983298146_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl297950298269_))))
                  (let ((_tl297981298153_
                         (let () (declare (not safe)) (##cdr _e297983298146_)))
                        (_hd297982298150_
                         (let ()
                           (declare (not safe))
                           (##car _e297983298146_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl297981298153_))
                        (___kont304322304323_
                         _hd297982298150_
                         _hd297951298266_)
                        (let () (declare (not safe)) (_g297940298008_)))))
                (let () (declare (not safe)) (_g297940298008_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl297950298269_))
                                                    (___kont304324304325_
                                                     _hd297951298266_
                                                     _hd297948298256_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g297940298008_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl297950298269_))
                                              (___kont304324304325_
                                               _hd297951298266_
                                               _hd297948298256_)
                                              (let ()
                                                (declare (not safe))
                                                (_g297940298008_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd297948298256_))
                                  (let ((_e297965298203_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd297948298256_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl297947298259_))
                                        (___kont304326304327_
                                         _hd297948298256_
                                         _hd297945298246_)
                                        (let ()
                                          (declare (not safe))
                                          (_g297940298008_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl297947298259_))
                                      (___kont304326304327_
                                       _hd297948298256_
                                       _hd297945298246_)
                                      (let ()
                                        (declare (not safe))
                                        (_g297940298008_)))))))
                      (let () (declare (not safe)) (_g297940298008_)))))
              (let () (declare (not safe)) (_g297940298008_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx298310_)
      (let* ((___stx304455304456_ _$stx298310_)
             (_g298315298370_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx304455304456_)))))
        (let ((___kont304458304459_
               (lambda (_L298555_ _L298557_)
                 (let ((__tmp304872
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp304857
                        (let ((__tmp304868
                               (let ((__tmp304871
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp304869
                                      (let ((__tmp304870
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp304870 '()))))
                                 (declare (not safe))
                                 (cons __tmp304871 __tmp304869)))
                              (__tmp304858
                               (let ((__tmp304859
                                      (let ((__tmp304867
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp304860
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L298555_
                                                  _L298557_))
                                               (let ((__tmp304861
                                                      (lambda (_g298574298578_
                                                               _g298575298581_
                                                               _g298576298583_)
                                                        (let ((__tmp304862
                                                               (let ((__tmp304866
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp304863
                              (let ((__tmp304864
                                     (let ((__tmp304865
                                            (let ()
                                              (declare (not safe))
                                              (cons _g298574298578_ '()))))
                                       (declare (not safe))
                                       (cons _g298575298581_ __tmp304865))))
                                (declare (not safe))
                                (cons 'primitive: __tmp304864))))
                         (declare (not safe))
                         (cons __tmp304866 __tmp304863))))
                  (declare (not safe))
                  (cons __tmp304862 _g298576298583_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp304861
                                                         '()
                                                         _L298555_
                                                         _L298557_)))))
                                        (declare (not safe))
                                        (cons __tmp304867 __tmp304860))))
                                 (declare (not safe))
                                 (cons __tmp304859 '()))))
                          (declare (not safe))
                          (cons __tmp304868 __tmp304858))))
                   (declare (not safe))
                   (cons __tmp304872 __tmp304857))))
              (___kont304462304463_
               (lambda (_L298441_ _L298443_)
                 (let ((__tmp304887
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp304873
                        (let ((__tmp304883
                               (let ((__tmp304886
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp304884
                                      (let ((__tmp304885
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp304885 '()))))
                                 (declare (not safe))
                                 (cons __tmp304886 __tmp304884)))
                              (__tmp304874
                               (let ((__tmp304875
                                      (let ((__tmp304882
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp304876
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L298441_
                                                  _L298443_))
                                               (let ((__tmp304877
                                                      (lambda (_g298458298462_
                                                               _g298459298465_
                                                               _g298460298467_)
                                                        (let ((__tmp304878
                                                               (let ((__tmp304881
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp304879
                              (let ((__tmp304880
                                     (let ()
                                       (declare (not safe))
                                       (cons _g298458298462_ '()))))
                                (declare (not safe))
                                (cons _g298459298465_ __tmp304880))))
                         (declare (not safe))
                         (cons __tmp304881 __tmp304879))))
                  (declare (not safe))
                  (cons __tmp304878 _g298460298467_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp304877
                                                         '()
                                                         _L298441_
                                                         _L298443_)))))
                                        (declare (not safe))
                                        (cons __tmp304882 __tmp304876))))
                                 (declare (not safe))
                                 (cons __tmp304875 '()))))
                          (declare (not safe))
                          (cons __tmp304883 __tmp304874))))
                   (declare (not safe))
                   (cons __tmp304887 __tmp304873)))))
          (let* ((___match304506304507_
                  (lambda (_e298347298377_
                           _hd298346298381_
                           _tl298345298384_
                           ___splice304464304465_
                           _target298348298387_
                           _tl298350298390_)
                    (letrec ((_loop298351298393_
                              (lambda (_hd298349298397_
                                       _dispatch298355298400_
                                       _arity298356298402_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd298349298397_))
                                    (let ((_e298352298405_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd298349298397_))))
                                      (let ((_lp-tl298354298412_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e298352298405_)))
                                            (_lp-hd298353298409_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e298352298405_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd298353298409_))
                                            (let ((_e298361298415_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd298353298409_))))
                                              (let ((_tl298359298422_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e298361298415_)))
                                                    (_hd298360298419_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e298361298415_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl298359298422_))
                                                    (let ((_e298364298425_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl298359298422_))))
                                                      (let ((_tl298362298432_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e298364298425_)))
                    (_hd298363298429_
                     (let () (declare (not safe)) (##car _e298364298425_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl298362298432_))
                    (_loop298351298393_
                     _lp-tl298354298412_
                     (let ()
                       (declare (not safe))
                       (cons _hd298363298429_ _dispatch298355298400_))
                     (let ()
                       (declare (not safe))
                       (cons _hd298360298419_ _arity298356298402_)))
                    (let () (declare (not safe)) (_g298315298370_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g298315298370_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g298315298370_)))))
                                    (let ((_arity298358298438_
                                           (reverse _arity298356298402_))
                                          (_dispatch298357298435_
                                           (reverse _dispatch298355298400_)))
                                      (___kont304462304463_
                                       _dispatch298357298435_
                                       _arity298358298438_))))))
                      (_loop298351298393_ _target298348298387_ '() '()))))
                 (___match304498304499_
                  (lambda (_e298347298377_ _hd298346298381_ _tl298345298384_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl298345298384_))
                        (let ((___splice304464304465_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl298345298384_
                                  '0))))
                          (let ((_tl298350298390_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice304464304465_ '1)))
                                (_target298348298387_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice304464304465_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl298350298390_))
                                (___match304506304507_
                                 _e298347298377_
                                 _hd298346298381_
                                 _tl298345298384_
                                 ___splice304464304465_
                                 _target298348298387_
                                 _tl298350298390_)
                                (let ()
                                  (declare (not safe))
                                  (_g298315298370_)))))
                        (let () (declare (not safe)) (_g298315298370_)))))
                 (___match304492304493_
                  (lambda (_e298321298477_
                           _hd298320298481_
                           _tl298319298484_
                           _e298324298487_
                           _hd298323298491_
                           _tl298322298494_
                           _e298325298497_
                           ___splice304460304461_
                           _target298326298501_
                           _tl298328298504_)
                    (letrec ((_loop298329298507_
                              (lambda (_hd298327298511_
                                       _dispatch298333298514_
                                       _arity298334298516_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd298327298511_))
                                    (let ((_e298330298519_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd298327298511_))))
                                      (let ((_lp-tl298332298526_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e298330298519_)))
                                            (_lp-hd298331298523_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e298330298519_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd298331298523_))
                                            (let ((_e298339298529_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd298331298523_))))
                                              (let ((_tl298337298536_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e298339298529_)))
                                                    (_hd298338298533_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e298339298529_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl298337298536_))
                                                    (let ((_e298342298539_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl298337298536_))))
                                                      (let ((_tl298340298546_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e298342298539_)))
                    (_hd298341298543_
                     (let () (declare (not safe)) (##car _e298342298539_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl298340298546_))
                    (_loop298329298507_
                     _lp-tl298332298526_
                     (let ()
                       (declare (not safe))
                       (cons _hd298341298543_ _dispatch298333298514_))
                     (let ()
                       (declare (not safe))
                       (cons _hd298338298533_ _arity298334298516_)))
                    (___match304498304499_
                     _e298321298477_
                     _hd298320298481_
                     _tl298319298484_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match304498304499_
                                                     _e298321298477_
                                                     _hd298320298481_
                                                     _tl298319298484_))))
                                            (___match304498304499_
                                             _e298321298477_
                                             _hd298320298481_
                                             _tl298319298484_))))
                                    (let ((_arity298336298552_
                                           (reverse _arity298334298516_))
                                          (_dispatch298335298549_
                                           (reverse _dispatch298333298514_)))
                                      (___kont304458304459_
                                       _dispatch298335298549_
                                       _arity298336298552_))))))
                      (_loop298329298507_ _target298326298501_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx304455304456_))
                (let ((_e298321298477_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx304455304456_))))
                  (let ((_tl298319298484_
                         (let () (declare (not safe)) (##cdr _e298321298477_)))
                        (_hd298320298481_
                         (let ()
                           (declare (not safe))
                           (##car _e298321298477_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl298319298484_))
                        (let ((_e298324298487_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl298319298484_))))
                          (let ((_tl298322298494_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e298324298487_)))
                                (_hd298323298491_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e298324298487_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd298323298491_))
                                (let ((_e298325298497_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd298323298491_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e298325298497_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl298322298494_))
                                          (let ((___splice304460304461_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl298322298494_
                                                    '0))))
                                            (let ((_tl298328298504_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice304460304461_
                                                      '1)))
                                                  (_target298326298501_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice304460304461_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl298328298504_))
                                                  (___match304492304493_
                                                   _e298321298477_
                                                   _hd298320298481_
                                                   _tl298319298484_
                                                   _e298324298487_
                                                   _hd298323298491_
                                                   _tl298322298494_
                                                   _e298325298497_
                                                   ___splice304460304461_
                                                   _target298326298501_
                                                   _tl298328298504_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl298319298484_))
                                                      (let ((___splice304464304465_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl298319298484_ '0))))
                (let ((_tl298350298390_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice304464304465_ '1)))
                      (_target298348298387_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice304464304465_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl298350298390_))
                      (___match304506304507_
                       _e298321298477_
                       _hd298320298481_
                       _tl298319298484_
                       ___splice304464304465_
                       _target298348298387_
                       _tl298350298390_)
                      (let () (declare (not safe)) (_g298315298370_)))))
              (let () (declare (not safe)) (_g298315298370_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl298319298484_))
                                              (let ((___splice304464304465_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl298319298484_
                                                        '0))))
                                                (let ((_tl298350298390_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice304464304465_
                                                          '1)))
                                                      (_target298348298387_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice304464304465_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl298350298390_))
                                                      (___match304506304507_
                                                       _e298321298477_
                                                       _hd298320298481_
                                                       _tl298319298484_
                                                       ___splice304464304465_
                                                       _target298348298387_
                                                       _tl298350298390_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g298315298370_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g298315298370_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl298319298484_))
                                          (let ((___splice304464304465_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl298319298484_
                                                    '0))))
                                            (let ((_tl298350298390_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice304464304465_
                                                      '1)))
                                                  (_target298348298387_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice304464304465_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl298350298390_))
                                                  (___match304506304507_
                                                   _e298321298477_
                                                   _hd298320298481_
                                                   _tl298319298484_
                                                   ___splice304464304465_
                                                   _target298348298387_
                                                   _tl298350298390_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g298315298370_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g298315298370_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl298319298484_))
                                    (let ((___splice304464304465_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl298319298484_
                                              '0))))
                                      (let ((_tl298350298390_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice304464304465_
                                                '1)))
                                            (_target298348298387_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice304464304465_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl298350298390_))
                                            (___match304506304507_
                                             _e298321298477_
                                             _hd298320298481_
                                             _tl298319298484_
                                             ___splice304464304465_
                                             _target298348298387_
                                             _tl298350298390_)
                                            (let ()
                                              (declare (not safe))
                                              (_g298315298370_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g298315298370_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl298319298484_))
                            (let ((___splice304464304465_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl298319298484_
                                      '0))))
                              (let ((_tl298350298390_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice304464304465_
                                        '1)))
                                    (_target298348298387_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice304464304465_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl298350298390_))
                                    (___match304506304507_
                                     _e298321298477_
                                     _hd298320298481_
                                     _tl298319298484_
                                     ___splice304464304465_
                                     _target298348298387_
                                     _tl298350298390_)
                                    (let ()
                                      (declare (not safe))
                                      (_g298315298370_)))))
                            (let () (declare (not safe)) (_g298315298370_))))))
                (let () (declare (not safe)) (_g298315298370_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx298592_)
      (let* ((_g298596298614_
              (lambda (_g298597298610_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g298597298610_))))
             (_g298595298669_
              (lambda (_g298597298618_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g298597298618_))
                    (let ((_e298602298621_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g298597298618_))))
                      (let ((_hd298601298625_
                             (let ()
                               (declare (not safe))
                               (##car _e298602298621_)))
                            (_tl298600298628_
                             (let ()
                               (declare (not safe))
                               (##cdr _e298602298621_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl298600298628_))
                            (let ((_e298605298631_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl298600298628_))))
                              (let ((_hd298604298635_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e298605298631_)))
                                    (_tl298603298638_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e298605298631_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl298603298638_))
                                    (let ((_e298608298641_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl298603298638_))))
                                      (let ((_hd298607298645_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e298608298641_)))
                                            (_tl298606298648_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e298608298641_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl298606298648_))
                                            ((lambda (_L298651_ _L298653_)
                                               (let ((__tmp304901
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp304888
                                                      (let ((__tmp304897
                                                             (let ((__tmp304900
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp304898
                            (let ((__tmp304899
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp304899 '()))))
                       (declare (not safe))
                       (cons __tmp304900 __tmp304898)))
                    (__tmp304889
                     (let ((__tmp304894
                            (let ((__tmp304896
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp304895
                                   (let ()
                                     (declare (not safe))
                                     (cons _L298653_ '()))))
                              (declare (not safe))
                              (cons __tmp304896 __tmp304895)))
                           (__tmp304890
                            (let ((__tmp304891
                                   (let ((__tmp304893
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp304892
                                          (let ()
                                            (declare (not safe))
                                            (cons _L298651_ '()))))
                                     (declare (not safe))
                                     (cons __tmp304893 __tmp304892))))
                              (declare (not safe))
                              (cons __tmp304891 '()))))
                       (declare (not safe))
                       (cons __tmp304894 __tmp304890))))
                (declare (not safe))
                (cons __tmp304897 __tmp304889))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp304901
                                                       __tmp304888)))
                                             _hd298607298645_
                                             _hd298604298635_)
                                            (_g298596298614_
                                             _g298597298618_))))
                                    (_g298596298614_ _g298597298618_))))
                            (_g298596298614_ _g298597298618_))))
                    (_g298596298614_ _g298597298618_)))))
        (_g298595298669_ _$stx298592_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx298673_)
      (let* ((_g298677298695_
              (lambda (_g298678298691_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g298678298691_))))
             (_g298676298750_
              (lambda (_g298678298699_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g298678298699_))
                    (let ((_e298683298702_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g298678298699_))))
                      (let ((_hd298682298706_
                             (let ()
                               (declare (not safe))
                               (##car _e298683298702_)))
                            (_tl298681298709_
                             (let ()
                               (declare (not safe))
                               (##cdr _e298683298702_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl298681298709_))
                            (let ((_e298686298712_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl298681298709_))))
                              (let ((_hd298685298716_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e298686298712_)))
                                    (_tl298684298719_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e298686298712_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl298684298719_))
                                    (let ((_e298689298722_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl298684298719_))))
                                      (let ((_hd298688298726_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e298689298722_)))
                                            (_tl298687298729_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e298689298722_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl298687298729_))
                                            ((lambda (_L298732_ _L298734_)
                                               (let ((__tmp304915
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp304902
                                                      (let ((__tmp304911
                                                             (let ((__tmp304914
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp304912
                            (let ((__tmp304913
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp304913 '()))))
                       (declare (not safe))
                       (cons __tmp304914 __tmp304912)))
                    (__tmp304903
                     (let ((__tmp304908
                            (let ((__tmp304910
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp304909
                                   (let ()
                                     (declare (not safe))
                                     (cons _L298734_ '()))))
                              (declare (not safe))
                              (cons __tmp304910 __tmp304909)))
                           (__tmp304904
                            (let ((__tmp304905
                                   (let ((__tmp304907
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp304906
                                          (let ()
                                            (declare (not safe))
                                            (cons _L298732_ '()))))
                                     (declare (not safe))
                                     (cons __tmp304907 __tmp304906))))
                              (declare (not safe))
                              (cons __tmp304905 '()))))
                       (declare (not safe))
                       (cons __tmp304908 __tmp304904))))
                (declare (not safe))
                (cons __tmp304911 __tmp304903))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp304915
                                                       __tmp304902)))
                                             _hd298688298726_
                                             _hd298685298716_)
                                            (_g298677298695_
                                             _g298678298699_))))
                                    (_g298677298695_ _g298678298699_))))
                            (_g298677298695_ _g298678298699_))))
                    (_g298677298695_ _g298678298699_)))))
        (_g298676298750_ _$stx298673_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx298754_)
      (let* ((___stx304509304510_ _$stx298754_)
             (_g298761298832_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx304509304510_)))))
        (let ((___kont304512304513_
               (lambda (_L299123_ _L299125_)
                 (let ((__tmp304921
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp304916
                        (let ((__tmp304917
                               (let ((__tmp304918
                                      (let ((__tmp304920
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp304919
                                             (let ()
                                               (declare (not safe))
                                               (cons _L299123_ '()))))
                                        (declare (not safe))
                                        (cons __tmp304920 __tmp304919))))
                                 (declare (not safe))
                                 (cons __tmp304918 '()))))
                          (declare (not safe))
                          (cons _L299125_ __tmp304917))))
                   (declare (not safe))
                   (cons __tmp304921 __tmp304916))))
              (___kont304514304515_
               (lambda (_L299042_ _L299044_)
                 (let ((__tmp304930
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp304922
                        (let ((__tmp304923
                               (let ((__tmp304924
                                      (let ((__tmp304929
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp304925
                                             (let ((__tmp304926
                                                    (lambda (_g299063299066_
                                                             _g299064299069_)
                                                      (let ((__tmp304927
                                                             (let ((__tmp304928
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g299063299066_ __tmp304928))))
                (declare (not safe))
                (cons __tmp304927 _g299064299069_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp304926
                                                       '()
                                                       _L299042_))))
                                        (declare (not safe))
                                        (cons __tmp304929 __tmp304925))))
                                 (declare (not safe))
                                 (cons __tmp304924 '()))))
                          (declare (not safe))
                          (cons _L299044_ __tmp304923))))
                   (declare (not safe))
                   (cons __tmp304930 __tmp304922))))
              (___kont304518304519_
               (lambda (_L298954_ _L298956_)
                 (let ((__tmp304937
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp304931
                        (let ((__tmp304932
                               (let ((__tmp304933
                                      (let ((__tmp304936
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp304934
                                             (let ((__tmp304935
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L298954_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp304935))))
                                        (declare (not safe))
                                        (cons __tmp304936 __tmp304934))))
                                 (declare (not safe))
                                 (cons __tmp304933 '()))))
                          (declare (not safe))
                          (cons _L298956_ __tmp304932))))
                   (declare (not safe))
                   (cons __tmp304937 __tmp304931))))
              (___kont304520304521_
               (lambda (_L298889_ _L298891_)
                 (let ((__tmp304947
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp304938
                        (let ((__tmp304939
                               (let ((__tmp304940
                                      (let ((__tmp304946
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp304941
                                             (let ((__tmp304942
                                                    (let ((__tmp304943
                                                           (lambda (_g298908298911_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g298909298914_)
                     (let ((__tmp304944
                            (let ((__tmp304945
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g298908298911_ __tmp304945))))
                       (declare (not safe))
                       (cons __tmp304944 _g298909298914_)))))
              (declare (not safe))
              (foldr1 __tmp304943 '() _L298889_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp304942))))
                                        (declare (not safe))
                                        (cons __tmp304946 __tmp304941))))
                                 (declare (not safe))
                                 (cons __tmp304940 '()))))
                          (declare (not safe))
                          (cons _L298891_ __tmp304939))))
                   (declare (not safe))
                   (cons __tmp304947 __tmp304938)))))
          (let* ((___match304628304629_
                  (lambda (_e298814298839_
                           _hd298813298843_
                           _tl298812298846_
                           _e298817298849_
                           _hd298816298853_
                           _tl298815298856_
                           ___splice304522304523_
                           _target298818298859_
                           _tl298820298862_)
                    (letrec ((_loop298821298865_
                              (lambda (_hd298819298869_ _arity298825298872_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd298819298869_))
                                    (let ((_e298822298875_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd298819298869_))))
                                      (let ((_lp-tl298824298882_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e298822298875_)))
                                            (_lp-hd298823298879_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e298822298875_))))
                                        (_loop298821298865_
                                         _lp-tl298824298882_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd298823298879_
                                                 _arity298825298872_)))))
                                    (let ((_arity298826298885_
                                           (reverse _arity298825298872_)))
                                      (___kont304520304521_
                                       _arity298826298885_
                                       _hd298816298853_))))))
                      (_loop298821298865_ _target298818298859_ '()))))
                 (___match304588304589_
                  (lambda (_e298782298978_
                           _hd298781298982_
                           _tl298780298985_
                           _e298785298988_
                           _hd298784298992_
                           _tl298783298995_
                           _e298788298998_
                           _hd298787299002_
                           _tl298786299005_
                           _e298789299008_
                           ___splice304516304517_
                           _target298790299012_
                           _tl298792299015_)
                    (letrec ((_loop298793299018_
                              (lambda (_hd298791299022_ _arity298797299025_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd298791299022_))
                                    (let ((_e298794299028_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd298791299022_))))
                                      (let ((_lp-tl298796299035_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e298794299028_)))
                                            (_lp-hd298795299032_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e298794299028_))))
                                        (_loop298793299018_
                                         _lp-tl298796299035_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd298795299032_
                                                 _arity298797299025_)))))
                                    (let ((_arity298798299038_
                                           (reverse _arity298797299025_)))
                                      (___kont304514304515_
                                       _arity298798299038_
                                       _hd298784298992_))))))
                      (_loop298793299018_ _target298790299012_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx304509304510_))
                (let ((_e298767299079_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx304509304510_))))
                  (let ((_tl298765299086_
                         (let () (declare (not safe)) (##cdr _e298767299079_)))
                        (_hd298766299083_
                         (let ()
                           (declare (not safe))
                           (##car _e298767299079_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl298765299086_))
                        (let ((_e298770299089_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl298765299086_))))
                          (let ((_tl298768299096_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e298770299089_)))
                                (_hd298769299093_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e298770299089_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl298768299096_))
                                (let ((_e298773299099_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl298768299096_))))
                                  (let ((_tl298771299106_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e298773299099_)))
                                        (_hd298772299103_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e298773299099_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd298772299103_))
                                        (let ((_e298774299109_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd298772299103_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e298774299109_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl298771299106_))
                                                  (let ((_e298777299113_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl298771299106_))))
                                                    (let ((_tl298775299120_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e298777299113_)))
                                                          (_hd298776299117_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e298777299113_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl298775299120_))
                                                          (___kont304512304513_
                                                           _hd298776299117_
                                                           _hd298769299093_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl298771299106_))
                      (let ((___splice304516304517_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl298771299106_ '0))))
                        (let ((_tl298792299015_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice304516304517_ '1)))
                              (_target298790299012_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice304516304517_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl298792299015_))
                              (___match304588304589_
                               _e298767299079_
                               _hd298766299083_
                               _tl298765299086_
                               _e298770299089_
                               _hd298769299093_
                               _tl298768299096_
                               _e298773299099_
                               _hd298772299103_
                               _tl298771299106_
                               _e298774299109_
                               ___splice304516304517_
                               _target298790299012_
                               _tl298792299015_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl298768299096_))
                                  (let ((___splice304522304523_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl298768299096_
                                            '0))))
                                    (let ((_tl298820298862_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice304522304523_
                                              '1)))
                                          (_target298818298859_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice304522304523_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl298820298862_))
                                          (___match304628304629_
                                           _e298767299079_
                                           _hd298766299083_
                                           _tl298765299086_
                                           _e298770299089_
                                           _hd298769299093_
                                           _tl298768299096_
                                           ___splice304522304523_
                                           _target298818298859_
                                           _tl298820298862_)
                                          (let ()
                                            (declare (not safe))
                                            (_g298761298832_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g298761298832_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl298768299096_))
                          (let ((___splice304522304523_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl298768299096_
                                    '0))))
                            (let ((_tl298820298862_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice304522304523_ '1)))
                                  (_target298818298859_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice304522304523_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl298820298862_))
                                  (___match304628304629_
                                   _e298767299079_
                                   _hd298766299083_
                                   _tl298765299086_
                                   _e298770299089_
                                   _hd298769299093_
                                   _tl298768299096_
                                   ___splice304522304523_
                                   _target298818298859_
                                   _tl298820298862_)
                                  (let ()
                                    (declare (not safe))
                                    (_g298761298832_)))))
                          (let () (declare (not safe)) (_g298761298832_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl298771299106_))
                                                      (let ((___splice304516304517_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl298771299106_ '0))))
                (let ((_tl298792299015_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice304516304517_ '1)))
                      (_target298790299012_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice304516304517_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl298792299015_))
                      (___match304588304589_
                       _e298767299079_
                       _hd298766299083_
                       _tl298765299086_
                       _e298770299089_
                       _hd298769299093_
                       _tl298768299096_
                       _e298773299099_
                       _hd298772299103_
                       _tl298771299106_
                       _e298774299109_
                       ___splice304516304517_
                       _target298790299012_
                       _tl298792299015_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl298771299106_))
                          (___kont304518304519_
                           _hd298772299103_
                           _hd298769299093_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl298768299096_))
                              (let ((___splice304522304523_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl298768299096_
                                        '0))))
                                (let ((_tl298820298862_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice304522304523_
                                          '1)))
                                      (_target298818298859_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice304522304523_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl298820298862_))
                                      (___match304628304629_
                                       _e298767299079_
                                       _hd298766299083_
                                       _tl298765299086_
                                       _e298770299089_
                                       _hd298769299093_
                                       _tl298768299096_
                                       ___splice304522304523_
                                       _target298818298859_
                                       _tl298820298862_)
                                      (let ()
                                        (declare (not safe))
                                        (_g298761298832_)))))
                              (let ()
                                (declare (not safe))
                                (_g298761298832_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl298771299106_))
                  (___kont304518304519_ _hd298772299103_ _hd298769299093_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl298768299096_))
                      (let ((___splice304522304523_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl298768299096_ '0))))
                        (let ((_tl298820298862_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice304522304523_ '1)))
                              (_target298818298859_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice304522304523_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl298820298862_))
                              (___match304628304629_
                               _e298767299079_
                               _hd298766299083_
                               _tl298765299086_
                               _e298770299089_
                               _hd298769299093_
                               _tl298768299096_
                               ___splice304522304523_
                               _target298818298859_
                               _tl298820298862_)
                              (let ()
                                (declare (not safe))
                                (_g298761298832_)))))
                      (let () (declare (not safe)) (_g298761298832_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl298771299106_))
                                                  (___kont304518304519_
                                                   _hd298772299103_
                                                   _hd298769299093_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl298768299096_))
                                                      (let ((___splice304522304523_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl298768299096_ '0))))
                (let ((_tl298820298862_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice304522304523_ '1)))
                      (_target298818298859_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice304522304523_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl298820298862_))
                      (___match304628304629_
                       _e298767299079_
                       _hd298766299083_
                       _tl298765299086_
                       _e298770299089_
                       _hd298769299093_
                       _tl298768299096_
                       ___splice304522304523_
                       _target298818298859_
                       _tl298820298862_)
                      (let () (declare (not safe)) (_g298761298832_)))))
              (let () (declare (not safe)) (_g298761298832_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl298771299106_))
                                            (___kont304518304519_
                                             _hd298772299103_
                                             _hd298769299093_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl298768299096_))
                                                (let ((___splice304522304523_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl298768299096_
                                                          '0))))
                                                  (let ((_tl298820298862_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice304522304523_
                                                            '1)))
                                                        (_target298818298859_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice304522304523_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl298820298862_))
                                                        (___match304628304629_
                                                         _e298767299079_
                                                         _hd298766299083_
                                                         _tl298765299086_
                                                         _e298770299089_
                                                         _hd298769299093_
                                                         _tl298768299096_
                                                         ___splice304522304523_
                                                         _target298818298859_
                                                         _tl298820298862_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g298761298832_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g298761298832_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl298768299096_))
                                    (let ((___splice304522304523_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl298768299096_
                                              '0))))
                                      (let ((_tl298820298862_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice304522304523_
                                                '1)))
                                            (_target298818298859_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice304522304523_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl298820298862_))
                                            (___match304628304629_
                                             _e298767299079_
                                             _hd298766299083_
                                             _tl298765299086_
                                             _e298770299089_
                                             _hd298769299093_
                                             _tl298768299096_
                                             ___splice304522304523_
                                             _target298818298859_
                                             _tl298820298862_)
                                            (let ()
                                              (declare (not safe))
                                              (_g298761298832_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g298761298832_))))))
                        (let () (declare (not safe)) (_g298761298832_)))))
                (let () (declare (not safe)) (_g298761298832_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx299149_)
      (let* ((___stx304631304632_ _$stx299149_)
             (_g299154299189_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx304631304632_)))))
        (let ((___kont304634304635_
               (lambda (_L299311_ _L299313_)
                 (let ((__tmp304953
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp304948
                        (let ((__tmp304949
                               (let ((__tmp304950
                                      (let ((__tmp304952
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp304951
                                             (let ()
                                               (declare (not safe))
                                               (cons _L299311_ '()))))
                                        (declare (not safe))
                                        (cons __tmp304952 __tmp304951))))
                                 (declare (not safe))
                                 (cons __tmp304950 '()))))
                          (declare (not safe))
                          (cons _L299313_ __tmp304949))))
                   (declare (not safe))
                   (cons __tmp304953 __tmp304948))))
              (___kont304636304637_
               (lambda (_L299246_ _L299248_)
                 (let ((__tmp304962
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp304954
                        (let ((__tmp304955
                               (let ((__tmp304956
                                      (let ((__tmp304961
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp304957
                                             (let ((__tmp304958
                                                    (lambda (_g299265299268_
                                                             _g299266299271_)
                                                      (let ((__tmp304959
                                                             (let ((__tmp304960
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g299265299268_ __tmp304960))))
                (declare (not safe))
                (cons __tmp304959 _g299266299271_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp304958
                                                       '()
                                                       _L299246_))))
                                        (declare (not safe))
                                        (cons __tmp304961 __tmp304957))))
                                 (declare (not safe))
                                 (cons __tmp304956 '()))))
                          (declare (not safe))
                          (cons _L299248_ __tmp304955))))
                   (declare (not safe))
                   (cons __tmp304962 __tmp304954)))))
          (let ((___match304680304681_
                 (lambda (_e299171299196_
                          _hd299170299200_
                          _tl299169299203_
                          _e299174299206_
                          _hd299173299210_
                          _tl299172299213_
                          ___splice304638304639_
                          _target299175299216_
                          _tl299177299219_)
                   (letrec ((_loop299178299222_
                             (lambda (_hd299176299226_ _arity299182299229_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd299176299226_))
                                   (let ((_e299179299232_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd299176299226_))))
                                     (let ((_lp-tl299181299239_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e299179299232_)))
                                           (_lp-hd299180299236_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e299179299232_))))
                                       (_loop299178299222_
                                        _lp-tl299181299239_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd299180299236_
                                                _arity299182299229_)))))
                                   (let ((_arity299183299242_
                                          (reverse _arity299182299229_)))
                                     (___kont304636304637_
                                      _arity299183299242_
                                      _hd299173299210_))))))
                     (_loop299178299222_ _target299175299216_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx304631304632_))
                (let ((_e299160299281_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx304631304632_))))
                  (let ((_tl299158299288_
                         (let () (declare (not safe)) (##cdr _e299160299281_)))
                        (_hd299159299285_
                         (let ()
                           (declare (not safe))
                           (##car _e299160299281_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl299158299288_))
                        (let ((_e299163299291_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl299158299288_))))
                          (let ((_tl299161299298_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e299163299291_)))
                                (_hd299162299295_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e299163299291_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl299161299298_))
                                (let ((_e299166299301_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl299161299298_))))
                                  (let ((_tl299164299308_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e299166299301_)))
                                        (_hd299165299305_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e299166299301_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl299164299308_))
                                        (___kont304634304635_
                                         _hd299165299305_
                                         _hd299162299295_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl299161299298_))
                                            (let ((___splice304638304639_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl299161299298_
                                                      '0))))
                                              (let ((_tl299177299219_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice304638304639_
                                                        '1)))
                                                    (_target299175299216_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice304638304639_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl299177299219_))
                                                    (___match304680304681_
                                                     _e299160299281_
                                                     _hd299159299285_
                                                     _tl299158299288_
                                                     _e299163299291_
                                                     _hd299162299295_
                                                     _tl299161299298_
                                                     ___splice304638304639_
                                                     _target299175299216_
                                                     _tl299177299219_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g299154299189_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g299154299189_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl299161299298_))
                                    (let ((___splice304638304639_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl299161299298_
                                              '0))))
                                      (let ((_tl299177299219_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice304638304639_
                                                '1)))
                                            (_target299175299216_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice304638304639_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl299177299219_))
                                            (___match304680304681_
                                             _e299160299281_
                                             _hd299159299285_
                                             _tl299158299288_
                                             _e299163299291_
                                             _hd299162299295_
                                             _tl299161299298_
                                             ___splice304638304639_
                                             _target299175299216_
                                             _tl299177299219_)
                                            (let ()
                                              (declare (not safe))
                                              (_g299154299189_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g299154299189_))))))
                        (let () (declare (not safe)) (_g299154299189_)))))
                (let () (declare (not safe)) (_g299154299189_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx299333_)
      (let* ((_g299337299372_
              (lambda (_g299338299368_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g299338299368_))))
             (_g299336299500_
              (lambda (_g299338299376_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g299338299376_))
                    (let ((_e299343299379_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g299338299376_))))
                      (let ((_hd299342299383_
                             (let ()
                               (declare (not safe))
                               (##car _e299343299379_)))
                            (_tl299341299386_
                             (let ()
                               (declare (not safe))
                               (##cdr _e299343299379_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl299341299386_))
                            (let ((_g304963_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl299341299386_
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
                                (let ((_target299344299389_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g304963_ 0)))
                                      (_tl299346299392_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g304963_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl299346299392_))
                                      (letrec ((_loop299347299395_
                                                (lambda (_hd299345299399_
                                                         _arity299351299402_
                                                         _prim299352299404_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd299345299399_))
                                                      (let ((_e299348299407_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd299345299399_))))
                (let ((_lp-hd299349299411_
                       (let () (declare (not safe)) (##car _e299348299407_)))
                      (_lp-tl299350299414_
                       (let () (declare (not safe)) (##cdr _e299348299407_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd299349299411_))
                      (let ((_e299357299417_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd299349299411_))))
                        (let ((_hd299356299421_
                               (let ()
                                 (declare (not safe))
                                 (##car _e299357299417_)))
                              (_tl299355299424_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e299357299417_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl299355299424_))
                              (let ((_g304973_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl299355299424_
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
                                  (let ((_target299358299427_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g304973_ 0)))
                                        (_tl299360299430_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g304973_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl299360299430_))
                                        (letrec ((_loop299361299433_
                                                  (lambda (_hd299359299437_
                                                           _arity299365299440_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd299359299437_))
                                                        (let ((_e299362299443_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd299359299437_))))
                  (let ((_lp-hd299363299447_
                         (let () (declare (not safe)) (##car _e299362299443_)))
                        (_lp-tl299364299450_
                         (let ()
                           (declare (not safe))
                           (##cdr _e299362299443_))))
                    (_loop299361299433_
                     _lp-tl299364299450_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd299363299447_ _arity299365299440_)))))
                (let ((_arity299366299453_ (reverse _arity299365299440_)))
                  (_loop299347299395_
                   _lp-tl299350299414_
                   (let ()
                     (declare (not safe))
                     (cons _arity299366299453_ _arity299351299402_))
                   (let ()
                     (declare (not safe))
                     (cons _hd299356299421_ _prim299352299404_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop299361299433_
                                           _target299358299427_
                                           '()))
                                        (_g299337299372_ _g299338299376_)))))
                              (_g299337299372_ _g299338299376_))))
                      (_g299337299372_ _g299338299376_))))
              (let ((_arity299353299457_ (reverse _arity299351299402_))
                    (_prim299354299460_ (reverse _prim299352299404_)))
                ((lambda (_L299463_ _L299465_)
                   (let ((__tmp304972
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp304965
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L299463_
                               _L299465_))
                            (let ((__tmp304966
                                   (lambda (_g299480299486_
                                            _g299481299489_
                                            _g299482299491_)
                                     (let ((__tmp304967
                                            (let ((__tmp304971
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp304968
                                                   (let ((__tmp304969
                                                          (let ((__tmp304970
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g299483299494_ _g299484299497_)
                           (let ()
                             (declare (not safe))
                             (cons _g299483299494_ _g299484299497_)))))
                    (declare (not safe))
                    (foldr1 __tmp304970 '() _g299480299486_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g299481299489_
                                                           __tmp304969))))
                                              (declare (not safe))
                                              (cons __tmp304971 __tmp304968))))
                                       (declare (not safe))
                                       (cons __tmp304967 _g299482299491_)))))
                              (declare (not safe))
                              (foldr2 __tmp304966 '() _L299463_ _L299465_)))))
                     (declare (not safe))
                     (cons __tmp304972 __tmp304965)))
                 _arity299353299457_
                 _prim299354299460_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop299347299395_
                                         _target299344299389_
                                         '()
                                         '()))
                                      (_g299337299372_ _g299338299376_)))))
                            (_g299337299372_ _g299338299376_))))
                    (_g299337299372_ _g299338299376_)))))
        (_g299336299500_ _$stx299333_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx299506_)
      (let* ((_g299510299545_
              (lambda (_g299511299541_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g299511299541_))))
             (_g299509299673_
              (lambda (_g299511299549_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g299511299549_))
                    (let ((_e299516299552_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g299511299549_))))
                      (let ((_hd299515299556_
                             (let ()
                               (declare (not safe))
                               (##car _e299516299552_)))
                            (_tl299514299559_
                             (let ()
                               (declare (not safe))
                               (##cdr _e299516299552_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl299514299559_))
                            (let ((_g304975_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl299514299559_
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
                                (let ((_target299517299562_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g304975_ 0)))
                                      (_tl299519299565_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g304975_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl299519299565_))
                                      (letrec ((_loop299520299568_
                                                (lambda (_hd299518299572_
                                                         _arity299524299575_
                                                         _prim299525299577_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd299518299572_))
                                                      (let ((_e299521299580_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd299518299572_))))
                (let ((_lp-hd299522299584_
                       (let () (declare (not safe)) (##car _e299521299580_)))
                      (_lp-tl299523299587_
                       (let () (declare (not safe)) (##cdr _e299521299580_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd299522299584_))
                      (let ((_e299530299590_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd299522299584_))))
                        (let ((_hd299529299594_
                               (let ()
                                 (declare (not safe))
                                 (##car _e299530299590_)))
                              (_tl299528299597_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e299530299590_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl299528299597_))
                              (let ((_g304985_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl299528299597_
                                        '0))))
                                (begin
                                  (let ((_g304986_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g304985_)
                                               (##vector-length _g304985_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g304986_ 2)))
                                        (error "Context expects 2 values"
                                               _g304986_)))
                                  (let ((_target299531299600_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g304985_ 0)))
                                        (_tl299533299603_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g304985_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl299533299603_))
                                        (letrec ((_loop299534299606_
                                                  (lambda (_hd299532299610_
                                                           _arity299538299613_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd299532299610_))
                                                        (let ((_e299535299616_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd299532299610_))))
                  (let ((_lp-hd299536299620_
                         (let () (declare (not safe)) (##car _e299535299616_)))
                        (_lp-tl299537299623_
                         (let ()
                           (declare (not safe))
                           (##cdr _e299535299616_))))
                    (_loop299534299606_
                     _lp-tl299537299623_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd299536299620_ _arity299538299613_)))))
                (let ((_arity299539299626_ (reverse _arity299538299613_)))
                  (_loop299520299568_
                   _lp-tl299523299587_
                   (let ()
                     (declare (not safe))
                     (cons _arity299539299626_ _arity299524299575_))
                   (let ()
                     (declare (not safe))
                     (cons _hd299529299594_ _prim299525299577_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop299534299606_
                                           _target299531299600_
                                           '()))
                                        (_g299510299545_ _g299511299549_)))))
                              (_g299510299545_ _g299511299549_))))
                      (_g299510299545_ _g299511299549_))))
              (let ((_arity299526299630_ (reverse _arity299524299575_))
                    (_prim299527299633_ (reverse _prim299525299577_)))
                ((lambda (_L299636_ _L299638_)
                   (let ((__tmp304984
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp304977
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L299636_
                               _L299638_))
                            (let ((__tmp304978
                                   (lambda (_g299653299659_
                                            _g299654299662_
                                            _g299655299664_)
                                     (let ((__tmp304979
                                            (let ((__tmp304983
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp304980
                                                   (let ((__tmp304981
                                                          (let ((__tmp304982
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g299656299667_ _g299657299670_)
                           (let ()
                             (declare (not safe))
                             (cons _g299656299667_ _g299657299670_)))))
                    (declare (not safe))
                    (foldr1 __tmp304982 '() _g299653299659_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g299654299662_
                                                           __tmp304981))))
                                              (declare (not safe))
                                              (cons __tmp304983 __tmp304980))))
                                       (declare (not safe))
                                       (cons __tmp304979 _g299655299664_)))))
                              (declare (not safe))
                              (foldr2 __tmp304978 '() _L299636_ _L299638_)))))
                     (declare (not safe))
                     (cons __tmp304984 __tmp304977)))
                 _arity299526299630_
                 _prim299527299633_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop299520299568_
                                         _target299517299562_
                                         '()
                                         '()))
                                      (_g299510299545_ _g299511299549_)))))
                            (_g299510299545_ _g299511299549_))))
                    (_g299510299545_ _g299511299549_)))))
        (_g299509299673_ _$stx299506_)))))
