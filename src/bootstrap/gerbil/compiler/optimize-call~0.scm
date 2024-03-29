(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1711709202)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp152566 (list gxc#::basic-xform::t))
            (__tmp152565 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp152566
         '()
         __tmp152565
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _$args152094_
        (apply make-instance gxc#::optimize-call::t _$args152094_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp152567
             (lambda ()
               (force gxc#::basic-xform-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::optimize-call::t
                  '%#call
                  gxc#optimize-call%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::optimize-call::t)))))
        (declare (not safe))
        (__make-promise __tmp152567)))
    (define gxc#apply-optimize-call
      (lambda (_stx152086_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_self152089_
                (let ((__obj152559
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj152559))
               (__tmp152568
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self152089_ _stx152086_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp152568
           gxc#current-compile-method
           _self152089_))))
    (define gxc#optimize-call%
      (lambda (_self151707_ _stx151708_)
        (let* ((___stx152181152182_ _stx151708_)
               (_g151711151757_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx152181152182_)))))
          (let ((___kont152183152184_
                 (lambda (_L151894_ _L151895_)
                   (let* ((_rator-id151915_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L151895_)))
                          (_rator-type151917_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id151915_))))
                     (if (or (let ()
                               (declare (not safe))
                               (not _rator-type151917_))
                             (eq? (##structure-ref
                                   _rator-type151917_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _self151707_ _stx151708_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _rator-type151917_
                                'gxc#!procedure::t))
                             (begin
                               (let ((__tmp152569
                                      (##structure-ref
                                       _rator-type151917_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _rator-id151915_
                                  '" => "
                                  _rator-type151917_
                                  '" "
                                  __tmp152569))
                               (let* ((_optimized151930_
                                       (let ((__method152560
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _rator-type151917_
                                                 'optimize-call))))
                                         (if __method152560
                                             (__method152560
                                              _rator-type151917_
                                              _self151707_
                                              _stx151708_
                                              (let ((__tmp152570
                                                     (lambda (_g151922151925_
                                                              _g151923151927_)
                                                       (cons _g151922151925_
                                                             _g151923151927_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp152570
                                                 '()
                                                 _L151894_)))
                                             (let ()
                                               (declare (not safe))
                                               (error '"Missing method"
                                                      _rator-type151917_
                                                      'optimize-call)))))
                                      (___stx152129152130_ _optimized151930_)
                                      (_g151933151962_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx152129152130_)))))
                                 (let ((___kont152131152132_
                                        (lambda (_L152030_ _L152031_)
                                          (let ((_optimized-rator-id152057_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L152031_))))
                                            (if (or (and (let ()
                                                           (declare (not safe))
                                                           (class-instance?
                                                            gxc#!primitive::t
                                                            _rator-type151917_))
                                                         (eq? _optimized-rator-id152057_
                                                              _rator-id151915_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _optimized-rator-id152057_
                                                              gxc#checked-primitives)))
                                                _optimized151930_
                                                (let ((__tmp152571
                                                       (let ((__tmp152572
                                                              (let ((__tmp152575
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#ref))
                                   (cons _L152031_ '())))
                            (__tmp152573
                             (let ((__tmp152574
                                    (lambda (_g152061152064_ _g152062152066_)
                                      (cons _g152061152064_ _g152062152066_))))
                               (declare (not safe))
                               (__foldr1 __tmp152574 '() _L152030_))))
                        (declare (not safe))
                        (cons __tmp152575 __tmp152573))))
                 (declare (not safe))
                 (cons '%#call-unchecked __tmp152572))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp152571
                                                   _stx151708_))))))
                                       (___kont152135152136_
                                        (lambda () _optimized151930_)))
                                   (let ((___match152178152179_
                                          (lambda (_e151939151974_
                                                   _hd151938151977_
                                                   _tl151937151979_
                                                   _e151942151982_
                                                   _hd151941151985_
                                                   _tl151940151987_
                                                   _e151945151990_
                                                   _hd151944151993_
                                                   _tl151943151995_
                                                   _e151948151998_
                                                   _hd151947152001_
                                                   _tl151946152003_
                                                   ___splice152133152134_
                                                   _target151949152006_
                                                   _tl151951152008_)
                                            (letrec ((_loop151952152011_
                                                      (lambda (_hd151950152014_
                                                               _arg151956152016_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _hd151950152014_))
                                                            (let ((_e151953152019_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd151950152014_))))
                      (let ((_lp-tl151955152024_
                             (let ()
                               (declare (not safe))
                               (##cdr _e151953152019_)))
                            (_lp-hd151954152022_
                             (let ()
                               (declare (not safe))
                               (##car _e151953152019_))))
                        (let ((__tmp152576
                               (cons _lp-hd151954152022_ _arg151956152016_)))
                          (declare (not safe))
                          (_loop151952152011_
                           _lp-tl151955152024_
                           __tmp152576))))
                    (let ((_arg151957152027_ (reverse _arg151956152016_)))
                      (___kont152131152132_
                       _arg151957152027_
                       _hd151947152001_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_loop151952152011_
                                                 _target151949152006_
                                                 '()))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx152129152130_))
                                         (let ((_e151939151974_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx152129152130_))))
                                           (let ((_tl151937151979_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e151939151974_)))
                                                 (_hd151938151977_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e151939151974_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd151938151977_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd151938151977_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _tl151937151979_))
                                                         (let ((_e151942151982_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _tl151937151979_))))
                   (let ((_tl151940151987_
                          (let ()
                            (declare (not safe))
                            (##cdr _e151942151982_)))
                         (_hd151941151985_
                          (let ()
                            (declare (not safe))
                            (##car _e151942151982_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd151941151985_))
                         (let ((_e151945151990_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd151941151985_))))
                           (let ((_tl151943151995_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e151945151990_)))
                                 (_hd151944151993_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e151945151990_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _hd151944151993_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _hd151944151993_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _tl151943151995_))
                                         (let ((_e151948151998_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _tl151943151995_))))
                                           (let ((_tl151946152003_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e151948151998_)))
                                                 (_hd151947152001_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e151948151998_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _tl151946152003_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _tl151940151987_))
                                                     (let ((___splice152133152134_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice
                                                               _tl151940151987_
                                                               '0))))
                                                       (let ((_tl151951152008_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref ___splice152133152134_ '1)))
                     (_target151949152006_
                      (let ()
                        (declare (not safe))
                        (##vector-ref ___splice152133152134_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _tl151951152008_))
                     (___match152178152179_
                      _e151939151974_
                      _hd151938151977_
                      _tl151937151979_
                      _e151942151982_
                      _hd151941151985_
                      _tl151940151987_
                      _e151945151990_
                      _hd151944151993_
                      _tl151943151995_
                      _e151948151998_
                      _hd151947152001_
                      _tl151946152003_
                      ___splice152133152134_
                      _target151949152006_
                      _tl151951152008_)
                     (___kont152135152136_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont152135152136_))
                                                 (___kont152135152136_))))
                                         (___kont152135152136_))
                                     (___kont152135152136_))
                                 (___kont152135152136_))))
                         (___kont152135152136_))))
                 (___kont152135152136_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont152135152136_))
                                                 (___kont152135152136_))))
                                         (___kont152135152136_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _rator-type151917_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _rator-type151917_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp152577
                                        (let ((__tmp152578
                                               (let ((__tmp152581
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#ref))
                                                            (cons _L151895_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp152579
                                                      (map (lambda (_g152071152073_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__1 _self151707_ _g152071152073_)))
                   (let ((__tmp152580
                          (lambda (_g152075152078_ _g152076152080_)
                            (cons _g152075152078_ _g152076152080_))))
                     (declare (not safe))
                     (__foldr1 __tmp152580 '() _L151894_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp152581
                                                       __tmp152579))))
                                          (declare (not safe))
                                          (cons '%#call-unchecked
                                                __tmp152578))))
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp152577
                                    _stx151708_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _stx151708_
                                    _rator-type151917_))))))))
                (___kont152187152188_
                 (lambda (_L151802_ _L151803_)
                   (let ((_rator-type151820_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type _L151803_))))
                     (if (and _rator-type151820_
                              (eq? (##structure-ref
                                    _rator-type151820_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (let ((__tmp152582
                                     (let ()
                                       (declare (not safe))
                                       (class-instance?
                                        gxc#!primitive::t
                                        _rator-type151820_))))
                                (declare (not safe))
                                (not __tmp152582)))
                         (let ((__tmp152583
                                (let ((__tmp152584
                                       (let ((__tmp152587
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self151707_
                                                 _L151803_)))
                                             (__tmp152585
                                              (map (lambda (_g151821151823_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _self151707_
                                                        _g151821151823_)))
                                                   (let ((__tmp152586
                                                          (lambda (_g151825151828_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g151826151830_)
                    (cons _g151825151828_ _g151826151830_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      __tmp152586
                                                      '()
                                                      _L151802_)))))
                                         (declare (not safe))
                                         (cons __tmp152587 __tmp152585))))
                                  (declare (not safe))
                                  (cons '%#call-unchecked __tmp152584))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp152583 _stx151708_))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _self151707_ _stx151708_)))))))
            (let* ((___match152248152249_
                    (lambda (_e151740151762_
                             _hd151739151765_
                             _tl151738151767_
                             _e151743151770_
                             _hd151742151773_
                             _tl151741151775_
                             ___splice152189152190_
                             _target151744151778_
                             _tl151746151780_)
                      (letrec ((_loop151747151783_
                                (lambda (_hd151745151786_ _rand151751151788_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd151745151786_))
                                      (let ((_e151748151791_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd151745151786_))))
                                        (let ((_lp-tl151750151796_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e151748151791_)))
                                              (_lp-hd151749151794_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e151748151791_))))
                                          (let ((__tmp152588
                                                 (cons _lp-hd151749151794_
                                                       _rand151751151788_)))
                                            (declare (not safe))
                                            (_loop151747151783_
                                             _lp-tl151750151796_
                                             __tmp152588))))
                                      (let ((_rand151752151799_
                                             (reverse _rand151751151788_)))
                                        (___kont152187152188_
                                         _rand151752151799_
                                         _hd151742151773_))))))
                        (let ()
                          (declare (not safe))
                          (_loop151747151783_ _target151744151778_ '())))))
                   (___match152228152229_
                    (lambda (_e151717151838_
                             _hd151716151841_
                             _tl151715151843_
                             _e151720151846_
                             _hd151719151849_
                             _tl151718151851_
                             _e151723151854_
                             _hd151722151857_
                             _tl151721151859_
                             _e151726151862_
                             _hd151725151865_
                             _tl151724151867_
                             ___splice152185152186_
                             _target151727151870_
                             _tl151729151872_)
                      (letrec ((_loop151730151875_
                                (lambda (_hd151728151878_ _rand151734151880_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd151728151878_))
                                      (let ((_e151731151883_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd151728151878_))))
                                        (let ((_lp-tl151733151888_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e151731151883_)))
                                              (_lp-hd151732151886_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e151731151883_))))
                                          (let ((__tmp152589
                                                 (cons _lp-hd151732151886_
                                                       _rand151734151880_)))
                                            (declare (not safe))
                                            (_loop151730151875_
                                             _lp-tl151733151888_
                                             __tmp152589))))
                                      (let ((_rand151735151891_
                                             (reverse _rand151734151880_)))
                                        (___kont152183152184_
                                         _rand151735151891_
                                         _hd151725151865_))))))
                        (let ()
                          (declare (not safe))
                          (_loop151730151875_ _target151727151870_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx152181152182_))
                  (let ((_e151717151838_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx152181152182_))))
                    (let ((_tl151715151843_
                           (let ()
                             (declare (not safe))
                             (##cdr _e151717151838_)))
                          (_hd151716151841_
                           (let ()
                             (declare (not safe))
                             (##car _e151717151838_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl151715151843_))
                          (let ((_e151720151846_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl151715151843_))))
                            (let ((_tl151718151851_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e151720151846_)))
                                  (_hd151719151849_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e151720151846_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd151719151849_))
                                  (let ((_e151723151854_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd151719151849_))))
                                    (let ((_tl151721151859_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e151723151854_)))
                                          (_hd151722151857_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e151723151854_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd151722151857_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd151722151857_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl151721151859_))
                                                  (let ((_e151726151862_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl151721151859_))))
                                                    (let ((_tl151724151867_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e151726151862_)))
                                                          (_hd151725151865_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e151726151862_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl151724151867_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl151718151851_))
                      (let ((___splice152185152186_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl151718151851_ '0))))
                        (let ((_tl151729151872_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice152185152186_ '1)))
                              (_target151727151870_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice152185152186_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl151729151872_))
                              (___match152228152229_
                               _e151717151838_
                               _hd151716151841_
                               _tl151715151843_
                               _e151720151846_
                               _hd151719151849_
                               _tl151718151851_
                               _e151723151854_
                               _hd151722151857_
                               _tl151721151859_
                               _e151726151862_
                               _hd151725151865_
                               _tl151724151867_
                               ___splice152185152186_
                               _target151727151870_
                               _tl151729151872_)
                              (let ()
                                (declare (not safe))
                                (_g151711151757_)))))
                      (let () (declare (not safe)) (_g151711151757_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl151718151851_))
                      (let ((___splice152189152190_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl151718151851_ '0))))
                        (let ((_tl151746151780_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice152189152190_ '1)))
                              (_target151744151778_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice152189152190_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl151746151780_))
                              (___match152248152249_
                               _e151717151838_
                               _hd151716151841_
                               _tl151715151843_
                               _e151720151846_
                               _hd151719151849_
                               _tl151718151851_
                               ___splice152189152190_
                               _target151744151778_
                               _tl151746151780_)
                              (let ()
                                (declare (not safe))
                                (_g151711151757_)))))
                      (let () (declare (not safe)) (_g151711151757_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl151718151851_))
                                                      (let ((___splice152189152190_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl151718151851_ '0))))
                (let ((_tl151746151780_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice152189152190_ '1)))
                      (_target151744151778_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice152189152190_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl151746151780_))
                      (___match152248152249_
                       _e151717151838_
                       _hd151716151841_
                       _tl151715151843_
                       _e151720151846_
                       _hd151719151849_
                       _tl151718151851_
                       ___splice152189152190_
                       _target151744151778_
                       _tl151746151780_)
                      (let () (declare (not safe)) (_g151711151757_)))))
              (let () (declare (not safe)) (_g151711151757_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl151718151851_))
                                                  (let ((___splice152189152190_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl151718151851_
                                                            '0))))
                                                    (let ((_tl151746151780_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice152189152190_
                                                              '1)))
                                                          (_target151744151778_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice152189152190_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl151746151780_))
                                                          (___match152248152249_
                                                           _e151717151838_
                                                           _hd151716151841_
                                                           _tl151715151843_
                                                           _e151720151846_
                                                           _hd151719151849_
                                                           _tl151718151851_
                                                           ___splice152189152190_
                                                           _target151744151778_
                                                           _tl151746151780_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g151711151757_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g151711151757_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl151718151851_))
                                              (let ((___splice152189152190_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl151718151851_
                                                        '0))))
                                                (let ((_tl151746151780_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice152189152190_
                                                          '1)))
                                                      (_target151744151778_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice152189152190_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl151746151780_))
                                                      (___match152248152249_
                                                       _e151717151838_
                                                       _hd151716151841_
                                                       _tl151715151843_
                                                       _e151720151846_
                                                       _hd151719151849_
                                                       _tl151718151851_
                                                       ___splice152189152190_
                                                       _target151744151778_
                                                       _tl151746151780_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g151711151757_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g151711151757_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl151718151851_))
                                      (let ((___splice152189152190_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl151718151851_
                                                '0))))
                                        (let ((_tl151746151780_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice152189152190_
                                                  '1)))
                                              (_target151744151778_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice152189152190_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl151746151780_))
                                              (___match152248152249_
                                               _e151717151838_
                                               _hd151716151841_
                                               _tl151715151843_
                                               _e151720151846_
                                               _hd151719151849_
                                               _tl151718151851_
                                               ___splice152189152190_
                                               _target151744151778_
                                               _tl151746151780_)
                                              (let ()
                                                (declare (not safe))
                                                (_g151711151757_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g151711151757_))))))
                          (let () (declare (not safe)) (_g151711151757_)))))
                  (let () (declare (not safe)) (_g151711151757_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_self151691_ _ctx151692_ _stx151693_ _args151694_)
        (if (let ((__method152561
                   (let ()
                     (declare (not safe))
                     (__method-ref _self151691_ 'check-arguments))))
              (if __method152561
                  (__method152561
                   _self151691_
                   _ctx151692_
                   _stx151693_
                   _args151694_)
                  (let ()
                    (declare (not safe))
                    (error '"Missing method" _self151691_ 'check-arguments))))
            (let* ((_signature151696_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _self151691_ '2 '#f '#f)))
                   (_$e151698_
                    (##direct-structure-ref
                     _signature151696_
                     '4
                     gxc#!signature::t
                     '#f)))
              (if _$e151698_
                  ((lambda (_unchecked151701_)
                     (let ((__tmp152590
                            (let ((__tmp152591
                                   (let ((__tmp152593
                                          (cons '%#ref
                                                (cons _unchecked151701_ '())))
                                         (__tmp152592
                                          (map (lambda (_g151702151704_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _ctx151692_
                                                    _g151702151704_)))
                                               _args151694_)))
                                     (declare (not safe))
                                     (cons __tmp152593 __tmp152592))))
                              (declare (not safe))
                              (cons '%#call __tmp152591))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp152590 _stx151693_)))
                   _$e151698_)
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _ctx151692_ _stx151693_))))
            (let ()
              (declare (not safe))
              (gxc#xform-call% _ctx151692_ _stx151693_)))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass152096 __method-table152097)
        (let ((__check-arguments152098
               (let ((__tmp152594
                      (lambda ()
                        (let ((__method152099
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table152097
                                  'check-arguments
                                  '#f))))
                          (if __method152099
                              __method152099
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp152594))))
          (lambda (_self151691_ _ctx151692_ _stx151693_ _args151694_)
            (if ((force __check-arguments152098)
                 _self151691_
                 _ctx151692_
                 _stx151693_
                 _args151694_)
                (let* ((_signature151696_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref _self151691_ '2 '#f '#f)))
                       (_$e151698_
                        (##direct-structure-ref
                         _signature151696_
                         '4
                         gxc#!signature::t
                         '#f)))
                  (if _$e151698_
                      ((lambda (_unchecked151701_)
                         (let ((__tmp152595
                                (let ((__tmp152596
                                       (let ((__tmp152598
                                              (cons '%#ref
                                                    (cons _unchecked151701_
                                                          '())))
                                             (__tmp152597
                                              (map (lambda (_g151702151704_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _ctx151692_
                                                        _g151702151704_)))
                                                   _args151694_)))
                                         (declare (not safe))
                                         (cons __tmp152598 __tmp152597))))
                                  (declare (not safe))
                                  (cons '%#call __tmp152596))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp152595 _stx151693_)))
                       _$e151698_)
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _ctx151692_ _stx151693_))))
                (let ()
                  (declare (not safe))
                  (gxc#xform-call% _ctx151692_ _stx151693_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!procedure::optimize-call
       gxc#!procedure::optimize-call::specialize))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!procedure::t
       'optimize-call
       gxc#!procedure::optimize-call
       '#f))
    (define gxc#!procedure::check-arguments
      (lambda (_self151453_ _ctx151454_ _stx151455_ _args151456_)
        (let ((_signature151457151459_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _self151453_ '2 '#f '#f))))
          (if _signature151457151459_
              (let* ((_signature151462_ _signature151457151459_)
                     (_argument-types151463151465_
                      (##direct-structure-ref
                       _signature151462_
                       '3
                       gxc#!signature::t
                       '#f)))
                (if _argument-types151463151465_
                    (let ((_argument-types151468_
                           _argument-types151463151465_))
                      (let ((_argument-types151473_
                             (let ((__tmp152599
                                    (lambda (_t151471_)
                                      (if _t151471_
                                          (let ()
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             _stx151455_
                                             _t151471_))
                                          '#f))))
                               (declare (not safe))
                               (gxc#map* __tmp152599 _argument-types151468_))))
                        (let _loop151475_ ((_rest-args151477_ _args151456_)
                                           (_rest-types151478_
                                            _argument-types151473_)
                                           (_result151479_ '#t))
                          (let* ((_rest-args151480151488_ _rest-args151477_)
                                 (_else151482151496_
                                  (lambda () _result151479_))
                                 (_K151484151557_
                                  (lambda (_rest-args151499_ _arg151500_)
                                    (let* ((_rest-types151501151512_
                                            _rest-types151478_)
                                           (_E151505151516_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (error '"No clause matching"
                                                       _rest-types151501151512_)))))
                                      (let ((_K151508151545_
                                             (lambda (_rest-types151542_
                                                      _type151543_)
                                               (let ((__tmp152600
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#check-expression-type!
                                                             _stx151455_
                                                             _arg151500_
                                                             _type151543_))
                                                          _result151479_
                                                          '#f)))
                                                 (declare (not safe))
                                                 (_loop151475_
                                                  _rest-args151499_
                                                  _rest-types151542_
                                                  __tmp152600))))
                                            (_K151507151536_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"signature arity mismatch"
                                                  _stx151455_
                                                  _argument-types151473_))))
                                            (_K151506151526_
                                             (lambda (_tail-type151520_)
                                               (if (let ((__tmp152601
                                                          (lambda (_g151521151523_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#check-expression-type!
                                                               _stx151455_
                                                               _g151521151523_
                                                               _tail-type151520_)))))
                                                     (declare (not safe))
                                                     (__andmap1
                                                      __tmp152601
                                                      _rest-args151499_))
                                                   _result151479_
                                                   '#f))))
                                        (let ((_try-match151503151539_
                                               (lambda ()
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##null? _rest-types151501151512_))
                                                     (let ()
                                                       (declare (not safe))
                                                       (_K151507151536_))
                                                     (let ((_tail-type151529_
                                                            _rest-types151501151512_))
                                                       (declare (not safe))
                                                       (_K151506151526_
                                                        _tail-type151529_))))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _rest-types151501151512_))
                                              (let ((_tl151510151550_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _rest-types151501151512_)))
                                                    (_hd151509151548_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _rest-types151501151512_))))
                                                (let ((_type151553_
                                                       _hd151509151548_)
                                                      (_rest-types151555_
                                                       _tl151510151550_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_K151508151545_
                                                     _rest-types151555_
                                                     _type151553_))))
                                              (let ()
                                                (declare (not safe))
                                                (_try-match151503151539_)))))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _rest-args151480151488_))
                                (let ((_hd151485151560_
                                       (let ()
                                         (declare (not safe))
                                         (##car _rest-args151480151488_)))
                                      (_tl151486151562_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _rest-args151480151488_))))
                                  (let* ((_arg151565_ _hd151485151560_)
                                         (_rest-args151567_ _tl151486151562_))
                                    (declare (not safe))
                                    (_K151484151557_
                                     _rest-args151567_
                                     _arg151565_)))
                                (let ()
                                  (declare (not safe))
                                  (_else151482151496_)))))))
                    '#f))
              '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!procedure::t
       'check-arguments
       gxc#!procedure::check-arguments
       '#f))
    (define gxc#!primitive-predicate::optimize-call
      (lambda (_self151276_ _ctx151277_ _stx151278_ _args151279_)
        (let* ((_g151281151291_
                (lambda (_g151282151288_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g151282151288_))))
               (_g151280151328_
                (lambda (_g151282151294_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g151282151294_))
                      (let ((_e151286151296_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g151282151294_))))
                        (let ((_hd151285151299_
                               (let ()
                                 (declare (not safe))
                                 (##car _e151286151296_)))
                              (_tl151284151301_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e151286151296_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl151284151301_))
                              ((lambda (_L151304_)
                                 (let* ((_klass151315_
                                         (let ((__tmp152602
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _self151276_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx151278_
                                            __tmp152602)))
                                        (_object151317_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _ctx151277_
                                            _L151304_)))
                                        (_instance?151322_
                                         (let ((_$e151319_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#expression-type?
                                                   _object151317_
                                                   _klass151315_))))
                                           (if _$e151319_
                                               _$e151319_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#expression-type?
                                                  _L151304_
                                                  _klass151315_))))))
                                   (if _instance?151322_
                                       (let ((__tmp152603
                                              (if (or (let ()
                                                        (declare (not safe))
                                                        (gxc#expression-no-side-effects?
                                                         _object151317_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#expression-no-side-effects?
                                                         _L151304_)))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _object151317_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp152603
                                          _stx151278_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _ctx151277_
                                          _stx151278_)))))
                               _hd151285151299_)
                              (let ()
                                (declare (not safe))
                                (_g151281151291_ _g151282151294_)))))
                      (let ()
                        (declare (not safe))
                        (_g151281151291_ _g151282151294_))))))
          (declare (not safe))
          (_g151280151328_ _args151279_))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_self151099_ _ctx151100_ _stx151101_ _args151102_)
        (let* ((_g151104151114_
                (lambda (_g151105151111_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g151105151111_))))
               (_g151103151151_
                (lambda (_g151105151117_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g151105151117_))
                      (let ((_e151109151119_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g151105151117_))))
                        (let ((_hd151108151122_
                               (let ()
                                 (declare (not safe))
                                 (##car _e151109151119_)))
                              (_tl151107151124_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e151109151119_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl151107151124_))
                              ((lambda (_L151127_)
                                 (let* ((_klass151138_
                                         (let ((__tmp152604
                                                (##structure-ref
                                                 _self151099_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx151101_
                                            __tmp152604)))
                                        (_object151140_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _ctx151100_
                                            _L151127_)))
                                        (_instance?151145_
                                         (let ((_$e151142_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#expression-type?
                                                   _object151140_
                                                   _klass151138_))))
                                           (if _$e151142_
                                               _$e151142_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#expression-type?
                                                  _L151127_
                                                  _klass151138_))))))
                                   (if _instance?151145_
                                       (let ((__tmp152605
                                              (if (or (let ()
                                                        (declare (not safe))
                                                        (gxc#expression-no-side-effects?
                                                         _object151140_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#expression-no-side-effects?
                                                         _L151127_)))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _object151140_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp152605
                                          _stx151101_))
                                       (if (##structure-ref
                                            _klass151138_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp152606
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (##structure-ref
                                   _klass151138_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  '()))
                      (cons _object151140_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp152606
                                              _stx151101_))
                                           (if (##structure-ref
                                                _klass151138_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp152607
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (##structure-ref
                                       _klass151138_
                                       '1
                                       gxc#!type::t
                                       '#f)
                                      '()))
                          (cons _object151140_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp152607
                                                  _stx151101_))
                                               (let ((__tmp152608
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (##structure-ref
                                             _self151099_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            '()))
                                (cons _object151140_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp152608
                                                  _stx151101_)))))))
                               _hd151108151122_)
                              (let ()
                                (declare (not safe))
                                (_g151104151114_ _g151105151117_)))))
                      (let ()
                        (declare (not safe))
                        (_g151104151114_ _g151105151117_))))))
          (declare (not safe))
          (_g151103151151_ _args151102_))))
    (define gxc#!predicate::optimize-call::specialize
      (lambda (__klass152100 __method-table152101)
        (let ((__id152102
               (let ((__slot152103
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152100 'id))))
                 (if __slot152103
                     __slot152103
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self151099_ _ctx151100_ _stx151101_ _args151102_)
            (let* ((_g151104151114_
                    (lambda (_g151105151111_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g151105151111_))))
                   (_g151103151151_
                    (lambda (_g151105151117_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g151105151117_))
                          (let ((_e151109151119_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g151105151117_))))
                            (let ((_hd151108151122_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e151109151119_)))
                                  (_tl151107151124_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e151109151119_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl151107151124_))
                                  ((lambda (_L151127_)
                                     (let* ((_klass151138_
                                             (let ((__tmp152609
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self151099_
                                                       __id152102
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx151101_
                                                __tmp152609)))
                                            (_object151140_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _ctx151100_
                                                _L151127_)))
                                            (_instance?151145_
                                             (let ((_$e151142_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#expression-type?
                                                       _object151140_
                                                       _klass151138_))))
                                               (if _$e151142_
                                                   _$e151142_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#expression-type?
                                                      _L151127_
                                                      _klass151138_))))))
                                       (if _instance?151145_
                                           (let ((__tmp152610
                                                  (if (or (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#expression-no-side-effects?
                                                             _object151140_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#expression-no-side-effects?
                                                             _L151127_)))
                                                      (cons '%#quote
                                                            (cons '#t '()))
                                                      (cons '%#begin
                                                            (cons _object151140_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '#t '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp152610
                                              _stx151101_))
                                           (if (##structure-ref
                                                _klass151138_
                                                '8
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp152611
                                                      (cons '%#struct-direct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (##structure-ref
                                       _klass151138_
                                       '1
                                       gxc#!type::t
                                       '#f)
                                      '()))
                          (cons _object151140_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp152611
                                                  _stx151101_))
                                               (if (##structure-ref
                                                    _klass151138_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp152612
                                                          (cons '%#struct-instance?
                                                                (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (##structure-ref
                                           _klass151138_
                                           '1
                                           gxc#!type::t
                                           '#f)
                                          '()))
                              (cons _object151140_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp152612
                                                      _stx151101_))
                                                   (let ((__tmp152613
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'class-instance? '()))
                              (cons (cons '%#ref
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _self151099_
                                                   __id152102
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons _object151140_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp152613
                                                      _stx151101_)))))))
                                   _hd151108151122_)
                                  (let ()
                                    (declare (not safe))
                                    (_g151104151114_ _g151105151117_)))))
                          (let ()
                            (declare (not safe))
                            (_g151104151114_ _g151105151117_))))))
              (declare (not safe))
              (_g151103151151_ _args151102_))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!predicate::optimize-call
       gxc#!predicate::optimize-call::specialize))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_stx150762_)
        (let* ((___stx152258152259_ _stx150762_)
               (_g150767150808_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx152258152259_)))))
          (let ((___kont152260152261_ (lambda () '#t))
                (___kont152262152263_ (lambda () '#t))
                (___kont152264152265_
                 (lambda (_L150876_ _L150877_)
                   (let ((_rator-type150898150900_
                          (let ((__tmp152614
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L150877_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp152614))))
                     (if _rator-type150898150900_
                         (let* ((_rator-type150903_ _rator-type150898150900_)
                                (_rator-signature150904150906_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _rator-type150903_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _rator-type150903_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _rator-signature150904150906_
                               (let* ((_rator-signature150909_
                                       _rator-signature150904150906_)
                                      (_rator-effect150910150912_
                                       (if _rator-signature150909_
                                           (##direct-structure-ref
                                            _rator-signature150909_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _rator-effect150910150912_
                                     (let ((_rator-effect150915_
                                            _rator-effect150910150912_))
                                       (if (or (equal? '(pure)
                                                       _rator-effect150915_)
                                               (equal? '(alloc)
                                                       _rator-effect150915_))
                                           (let ((__tmp152615
                                                  (let ((__tmp152616
                                                         (lambda (_g150920150923_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g150921150925_)
                   (cons _g150920150923_ _g150921150925_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp152616
                                                     '()
                                                     _L150876_))))
                                             (declare (not safe))
                                             (__andmap1
                                              gxc#expression-no-side-effects?
                                              __tmp152615))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (___kont152268152269_ (lambda () '#f)))
            (let ((___match152347152348_
                   (lambda (_e150785150820_
                            _hd150784150823_
                            _tl150783150825_
                            _e150788150828_
                            _hd150787150831_
                            _tl150786150833_
                            _e150791150836_
                            _hd150790150839_
                            _tl150789150841_
                            _e150794150844_
                            _hd150793150847_
                            _tl150792150849_
                            ___splice152266152267_
                            _target150795150852_
                            _tl150797150854_)
                     (letrec ((_loop150798150857_
                               (lambda (_hd150796150860_ _rand150802150862_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd150796150860_))
                                     (let ((_e150799150865_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd150796150860_))))
                                       (let ((_lp-tl150801150870_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e150799150865_)))
                                             (_lp-hd150800150868_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e150799150865_))))
                                         (let ((__tmp152617
                                                (cons _lp-hd150800150868_
                                                      _rand150802150862_)))
                                           (declare (not safe))
                                           (_loop150798150857_
                                            _lp-tl150801150870_
                                            __tmp152617))))
                                     (let ((_rand150803150873_
                                            (reverse _rand150802150862_)))
                                       (___kont152264152265_
                                        _rand150803150873_
                                        _hd150793150847_))))))
                       (let ()
                         (declare (not safe))
                         (_loop150798150857_ _target150795150852_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx152258152259_))
                  (let ((_e150771150956_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx152258152259_))))
                    (let ((_tl150769150961_
                           (let ()
                             (declare (not safe))
                             (##cdr _e150771150956_)))
                          (_hd150770150959_
                           (let ()
                             (declare (not safe))
                             (##car _e150771150956_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd150770150959_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd150770150959_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl150769150961_))
                                  (let ((_e150774150964_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl150769150961_))))
                                    (let ((_tl150772150969_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e150774150964_)))
                                          (_hd150773150967_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e150774150964_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl150772150969_))
                                          (___kont152260152261_)
                                          (___kont152268152269_))))
                                  (___kont152268152269_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd150770150959_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl150769150961_))
                                      (let ((_e150780150941_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl150769150961_))))
                                        (let ((_tl150778150946_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e150780150941_)))
                                              (_hd150779150944_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e150780150941_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl150778150946_))
                                              (___kont152262152263_)
                                              (___kont152268152269_))))
                                      (___kont152268152269_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#call _hd150770150959_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl150769150961_))
                                          (let ((_e150788150828_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl150769150961_))))
                                            (let ((_tl150786150833_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e150788150828_)))
                                                  (_hd150787150831_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e150788150828_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd150787150831_))
                                                  (let ((_e150791150836_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd150787150831_))))
                                                    (let ((_tl150789150841_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e150791150836_)))
                                                          (_hd150790150839_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e150791150836_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd150790150839_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _hd150790150839_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl150789150841_))
                          (let ((_e150794150844_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl150789150841_))))
                            (let ((_tl150792150849_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e150794150844_)))
                                  (_hd150793150847_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e150794150844_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl150792150849_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl150786150833_))
                                      (let ((___splice152266152267_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl150786150833_
                                                '0))))
                                        (let ((_tl150797150854_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice152266152267_
                                                  '1)))
                                              (_target150795150852_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice152266152267_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl150797150854_))
                                              (___match152347152348_
                                               _e150771150956_
                                               _hd150770150959_
                                               _tl150769150961_
                                               _e150788150828_
                                               _hd150787150831_
                                               _tl150786150833_
                                               _e150791150836_
                                               _hd150790150839_
                                               _tl150789150841_
                                               _e150794150844_
                                               _hd150793150847_
                                               _tl150792150849_
                                               ___splice152266152267_
                                               _target150795150852_
                                               _tl150797150854_)
                                              (___kont152268152269_))))
                                      (___kont152268152269_))
                                  (___kont152268152269_))))
                          (___kont152268152269_))
                      (___kont152268152269_))
                  (___kont152268152269_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont152268152269_))))
                                          (___kont152268152269_))
                                      (___kont152268152269_))))
                          (___kont152268152269_))))
                  (___kont152268152269_)))))))
    (define gxc#expression-type?
      (lambda (_stx150757_ _klass150758_)
        (let ((_expr-type150760_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _stx150757_))))
          (if _expr-type150760_
              (let ()
                (declare (not safe))
                (gxc#!type-subclass? _expr-type150760_ _klass150758_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_stx150745_ _expr150746_ _type150747_)
        (if (let () (declare (not safe)) (not _type150747_))
            '#f
            (let ((_$e150749_
                   (eq? (##structure-ref _type150747_ '1 gxc#!type::t '#f)
                        't)))
              (if _$e150749_
                  _$e150749_
                  (let ((_expr-type150752_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _expr150746_))))
                    (if (let () (declare (not safe)) (not _expr-type150752_))
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _expr-type150752_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_$e150754_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!type-subclass?
                                      _expr-type150752_
                                      _type150747_))))
                              (if _$e150754_
                                  _$e150754_
                                  (if (let ()
                                        (declare (not safe))
                                        (gxc#!interface-instance?
                                         _type150747_))
                                      '#f
                                      (if (let ()
                                            (declare (not safe))
                                            (gxc#!type-subclass?
                                             _type150747_
                                             _expr-type150752_))
                                          '#f
                                          (let ()
                                            (declare (not safe))
                                            (gxc#raise-compile-error
                                             '"signature type mismatch"
                                             _stx150745_
                                             _expr150746_
                                             _expr-type150752_
                                             _type150747_))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_self150582_ _ctx150583_ _stx150584_ _args150585_)
        (let* ((_klass150587_
                (let ((__tmp152618
                       (##structure-ref _self150582_ '1 gxc#!type::t '#f)))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _stx150584_ __tmp152618)))
               (_fields150589_
                (length (##structure-ref _klass150587_ '5 gxc#!class::t '#f)))
               (_args150595_
                (map (lambda (_g150590150592_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _ctx150583_ _g150590150592_)))
                     _args150585_))
               (_inline-make-object150597_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (##structure-ref
                                         _self150582_
                                         '1
                                         gxc#!type::t
                                         '#f)
                                        '()))
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons '##structure '()))
                                              (cons (cons '%#ref
                                                          (cons (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _self150582_
                         '1
                         gxc#!type::t
                         '#f)
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _fields150589_
                                                     '(%#quote #f)))))
                                  '())))))
          (let ((_$e150600_
                 (##structure-ref _klass150587_ '6 gxc#!class::t '#f)))
            (if _$e150600_
                ((lambda (_ctor150603_)
                   (let ((_$obj150605_
                          (let ((__tmp152619
                                 (let ()
                                   (declare (not safe))
                                   (##gensym '__obj))))
                            (declare (not safe))
                            (make-symbol__0 __tmp152619)))
                         (_ctor-impl150606_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass150587_
                             _ctor150603_))))
                     (let ((__tmp152620
                            (cons '%#let-values
                                  (cons (cons (cons (cons _$obj150605_ '())
                                                    (cons _inline-make-object150597_
                                                          '()))
                                              '())
                                        (cons (cons '%#begin
                                                    (cons (if _ctor-impl150606_
                                                              (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons '%#ref (cons _ctor-impl150606_ '()))
                                  (cons (cons '%#ref (cons _$obj150605_ '()))
                                        _args150595_)))
                      (let ((_$ctor150608_
                             (let ((__tmp152621
                                    (let ()
                                      (declare (not safe))
                                      (##gensym '__constructor))))
                               (declare (not safe))
                               (make-symbol__0 __tmp152621))))
                        (cons '%#let-values
                              (cons (cons (cons (cons _$ctor150608_ '())
                                                (cons (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'direct-method-ref '()))
                          (cons (cons '%#ref
                                      (cons (##structure-ref
                                             _self150582_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            '()))
                                (cons (cons '%#ref (cons _$obj150605_ '()))
                                      (cons (cons '%#quote
                                                  (cons _ctor150603_ '()))
                                            '())))))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())
                                    (cons (cons '%#if
                                                (cons (cons '%#ref
                                                            (cons _$ctor150608_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#call
                          (cons (cons '%#ref (cons _$ctor150608_ '()))
                                (cons (cons '%#ref (cons _$obj150605_ '()))
                                      _args150595_)))
                    (cons (cons '%#call
                                (cons (cons '%#ref (cons 'error '()))
                                      (cons (cons '%#quote
                                                  (cons '"missing constructor method implementation"
                                                        '()))
                                            (cons (cons '%#quote
                                                        (cons 'class: '()))
                                                  (cons (cons '%#ref
                                                              (cons (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _self150582_
                             '1
                             gxc#!type::t
                             '#f)
                            '()))
                (cons (cons '%#quote (cons 'method: '()))
                      (cons (cons '%#quote (cons _ctor150603_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))))
                  (cons (cons '%#ref (cons _$obj150605_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp152620 _stx150584_))))
                 _$e150600_)
                (let ((_$e150610_
                       (##structure-ref _klass150587_ '10 gxc#!class::t '#f)))
                  (if _$e150610_
                      ((lambda (_metaclass150613_)
                         (let* ((_$obj150615_
                                 (let ((__tmp152622
                                        (let ()
                                          (declare (not safe))
                                          (##gensym '__obj))))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp152622)))
                                (_metakons150617_
                                 (let ((__tmp152623
                                        (let ()
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-class
                                           _stx150584_
                                           _metaclass150613_))))
                                   (declare (not safe))
                                   (gxc#!class-lookup-method
                                    __tmp152623
                                    'instance-init!))))
                           (let ((__tmp152624
                                  (cons '%#let-values
                                        (cons (cons (cons (cons _$obj150615_
                                                                '())
                                                          (cons _inline-make-object150597_
                                                                '()))
                                                    '())
                                              (cons (cons '%#begin
                                                          (cons (if _metakons150617_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons _metakons150617_ '()))
                                        (cons (cons '%#ref
                                                    (cons (##structure-ref
                                                           _self150582_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _$obj150615_
                                                                '()))
                                                    _args150595_))))
                            (cons '%#call
                                  (cons (cons '%#ref (cons 'call-method '()))
                                        (cons (cons '%#ref
                                                    (cons (##structure-ref
                                                           _self150582_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)
                                                          '()))
                                              (cons (cons '%#quote
                                                          (cons 'instance-init!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _$obj150615_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  _args150595_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        (cons (cons '%#ref (cons _$obj150615_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp152624 _stx150584_))))
                       _$e150610_)
                      (if (##structure-ref _klass150587_ '7 gxc#!class::t '#f)
                          (if (let ((__tmp152625 (length _args150595_)))
                                (declare (not safe))
                                (##fx= __tmp152625 _fields150589_))
                              (let ((__tmp152626
                                     (cons '%#begin-annotation
                                           (cons (cons '@type
                                                       (cons (##structure-ref
                                                              _self150582_
                                                              '1
                                                              gxc#!type::t
                                                              '#f)
                                                             '()))
                                                 (cons (cons '%#call
                                                             (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons '##structure '()))
                           (cons (cons '%#ref
                                       (cons (##structure-ref
                                              _self150582_
                                              '1
                                              gxc#!type::t
                                              '#f)
                                             '()))
                                 _args150595_)))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (declare (not safe))
                                (gxc#xform-wrap-source
                                 __tmp152626
                                 _stx150584_))
                              (let ((__tmp152628
                                     (##structure-ref
                                      _self150582_
                                      '1
                                      gxc#!type::t
                                      '#f))
                                    (__tmp152627
                                     (length (##structure-ref
                                              _klass150587_
                                              '5
                                              gxc#!class::t
                                              '#f))))
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"illegal struct constructor application; arity mismatch"
                                 _stx150584_
                                 __tmp152628
                                 __tmp152627)))
                          (let ((_$obj150620_
                                 (let ((__tmp152629
                                        (let ()
                                          (declare (not safe))
                                          (##gensym '__obj))))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp152629))))
                            (let _lp150622_ ((_rest150624_ _args150595_)
                                             (_initializers150625_ '()))
                              (let* ((___stx152350152351_ _rest150624_)
                                     (_g150629150650_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx152350152351_)))))
                                (let ((___kont152352152353_
                                       (lambda (_L150704_ _L150705_ _L150706_)
                                         (let* ((_slot150737_
                                                 (let ((__tmp152630
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L150706_))))
                                                   (declare (not safe))
                                                   (keyword->symbol
                                                    __tmp152630)))
                                                (_off150739_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass150587_
                                                    _slot150737_))))
                                           (if _off150739_
                                               (let ((__tmp152631
                                                      (cons (cons _off150739_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L150705_)
                    _initializers150625_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp150622_
                                                  _L150704_
                                                  __tmp152631))
                                               (let ((__tmp152632
                                                      (##structure-ref
                                                       _self150582_
                                                       '1
                                                       gxc#!type::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"unknown slot"
                                                  _stx150584_
                                                  __tmp152632
                                                  _slot150737_))))))
                                      (___kont152354152355_
                                       (lambda ()
                                         (let ((__tmp152633
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _$obj150620_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons _inline-make-object150597_ '()))
                          '())
                    (cons (cons '%#begin
                                (let ((__tmp152636
                                       (cons (cons '%#ref
                                                   (cons _$obj150620_ '()))
                                             '()))
                                      (__tmp152634
                                       (let ((__tmp152635
                                              (lambda (_i150664_ _r150665_)
                                                (cons (cons '%#struct-unchecked-set!
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (##structure-ref
                                       _self150582_
                                       '1
                                       gxc#!type::t
                                       '#f)
                                      '()))
                          (cons (cons '%#quote (cons (car _i150664_) '()))
                                (cons (cons '%#ref (cons _$obj150620_ '()))
                                      (cons (cdr _i150664_) '())))))
              _r150665_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldl1
                                          __tmp152635
                                          '()
                                          _initializers150625_))))
                                  (declare (not safe))
                                  (__foldr1 cons __tmp152636 __tmp152634)))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp152633
                                            _stx150584_))))
                                      (___kont152356152357_
                                       (lambda ()
                                         (let ((__tmp152637
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _$obj150620_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons _inline-make-object150597_ '()))
                          '())
                    (cons (cons '%#begin
                                (cons (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons 'class-instance-init!
                                                              '()))
                                                  (cons (cons '%#ref
                                                              (cons _$obj150620_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _args150595_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (cons (cons '%#ref
                                                  (cons _$obj150620_ '()))
                                            '())))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp152637
                                            _stx150584_)))))
                                  (let* ((_g150627150667_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   ___stx152350152351_))
                                                (___kont152354152355_)
                                                (___kont152356152357_))))
                                         (___match152387152388_
                                          (lambda (_e150636150672_
                                                   _hd150635150675_
                                                   _tl150634150677_
                                                   _e150639150680_
                                                   _hd150638150683_
                                                   _tl150637150685_
                                                   _e150642150688_
                                                   _hd150641150691_
                                                   _tl150640150693_
                                                   _e150645150696_
                                                   _hd150644150699_
                                                   _tl150643150701_)
                                            (let ((_L150704_ _tl150643150701_)
                                                  (_L150705_ _hd150644150699_)
                                                  (_L150706_ _hd150641150691_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-keyword?
                                                     _L150706_))
                                                  (___kont152352152353_
                                                   _L150704_
                                                   _L150705_
                                                   _L150706_)
                                                  (___kont152356152357_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx152350152351_))
                                        (let ((_e150636150672_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx152350152351_))))
                                          (let ((_tl150634150677_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e150636150672_)))
                                                (_hd150635150675_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e150636150672_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd150635150675_))
                                                (let ((_e150639150680_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd150635150675_))))
                                                  (let ((_tl150637150685_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e150639150680_)))
                                                        (_hd150638150683_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e150639150680_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd150638150683_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#quote
                                                               _hd150638150683_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl150637150685_))
                        (let ((_e150642150688_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl150637150685_))))
                          (let ((_tl150640150693_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e150642150688_)))
                                (_hd150641150691_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e150642150688_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl150640150693_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl150634150677_))
                                    (let ((_e150645150696_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl150634150677_))))
                                      (let ((_tl150643150701_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e150645150696_)))
                                            (_hd150644150699_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e150645150696_))))
                                        (___match152387152388_
                                         _e150636150672_
                                         _hd150635150675_
                                         _tl150634150677_
                                         _e150639150680_
                                         _hd150638150683_
                                         _tl150637150685_
                                         _e150642150688_
                                         _hd150641150691_
                                         _tl150640150693_
                                         _e150645150696_
                                         _hd150644150699_
                                         _tl150643150701_)))
                                    (___kont152356152357_))
                                (___kont152356152357_))))
                        (___kont152356152357_))
                    (___kont152356152357_))
                (___kont152356152357_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont152356152357_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g150627150667_))))))))))))))))
    (define gxc#!constructor::optimize-call::specialize
      (lambda (__klass152104 __method-table152105)
        (let ((__id152106
               (let ((__slot152107
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152104 'id))))
                 (if __slot152107
                     __slot152107
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self150582_ _ctx150583_ _stx150584_ _args150585_)
            (let* ((_klass150587_
                    (let ((__tmp152638
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _self150582_
                              __id152106
                              '#f
                              '#f))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-class _stx150584_ __tmp152638)))
                   (_fields150589_
                    (length (##structure-ref
                             _klass150587_
                             '5
                             gxc#!class::t
                             '#f)))
                   (_args150595_
                    (map (lambda (_g150590150592_)
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _ctx150583_ _g150590150592_)))
                         _args150585_))
                   (_inline-make-object150597_
                    (cons '%#begin-annotation
                          (cons (cons '@type
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _self150582_
                                               __id152106
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons '##structure
                                                              '()))
                                                  (cons (cons '%#ref
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _self150582_
                               __id152106
                               '#f
                               '#f))
                            '()))
                (make-list _fields150589_ '(%#quote #f)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))
              (let ((_$e150600_
                     (##structure-ref _klass150587_ '6 gxc#!class::t '#f)))
                (if _$e150600_
                    ((lambda (_ctor150603_)
                       (let ((_$obj150605_
                              (let ((__tmp152639
                                     (let ()
                                       (declare (not safe))
                                       (##gensym '__obj))))
                                (declare (not safe))
                                (make-symbol__0 __tmp152639)))
                             (_ctor-impl150606_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass150587_
                                 _ctor150603_))))
                         (let ((__tmp152640
                                (cons '%#let-values
                                      (cons (cons (cons (cons _$obj150605_ '())
                                                        (cons _inline-make-object150597_
                                                              '()))
                                                  '())
                                            (cons (cons '%#begin
                                                        (cons (if _ctor-impl150606_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '%#call
                                (cons (cons '%#ref
                                            (cons _ctor-impl150606_ '()))
                                      (cons (cons '%#ref
                                                  (cons _$obj150605_ '()))
                                            _args150595_)))
                          (let ((_$ctor150608_
                                 (let ((__tmp152641
                                        (let ()
                                          (declare (not safe))
                                          (##gensym '__constructor))))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp152641))))
                            (cons '%#let-values
                                  (cons (cons (cons (cons _$ctor150608_ '())
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'direct-method-ref '()))
                              (cons (cons '%#ref
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _self150582_
                                                   __id152106
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#ref (cons _$obj150605_ '()))
                                          (cons (cons '%#quote
                                                      (cons _ctor150603_ '()))
                                                '())))))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())
                                        (cons (cons '%#if
                                                    (cons (cons '%#ref
                                                                (cons _$ctor150608_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#call
                              (cons (cons '%#ref (cons _$ctor150608_ '()))
                                    (cons (cons '%#ref (cons _$obj150605_ '()))
                                          _args150595_)))
                        (cons (cons '%#call
                                    (cons (cons '%#ref (cons 'error '()))
                                          (cons (cons '%#quote
                                                      (cons '"missing constructor method implementation"
                                                            '()))
                                                (cons (cons '%#quote
                                                            (cons 'class: '()))
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self150582_
                                   __id152106
                                   '#f
                                   '#f))
                                '()))
                    (cons (cons '%#quote (cons 'method: '()))
                          (cons (cons '%#quote (cons _ctor150603_ '()))
                                '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))))
                      (cons (cons '%#ref (cons _$obj150605_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp152640 _stx150584_))))
                     _$e150600_)
                    (let ((_$e150610_
                           (##structure-ref
                            _klass150587_
                            '10
                            gxc#!class::t
                            '#f)))
                      (if _$e150610_
                          ((lambda (_metaclass150613_)
                             (let* ((_$obj150615_
                                     (let ((__tmp152642
                                            (let ()
                                              (declare (not safe))
                                              (##gensym '__obj))))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp152642)))
                                    (_metakons150617_
                                     (let ((__tmp152643
                                            (let ()
                                              (declare (not safe))
                                              (gxc#optimizer-resolve-class
                                               _stx150584_
                                               _metaclass150613_))))
                                       (declare (not safe))
                                       (gxc#!class-lookup-method
                                        __tmp152643
                                        'instance-init!))))
                               (let ((__tmp152644
                                      (cons '%#let-values
                                            (cons (cons (cons (cons _$obj150615_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons _inline-make-object150597_ '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#begin
                                                              (cons (if _metakons150617_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons _metakons150617_ '()))
                                            (cons (cons '%#ref
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self150582_
                         __id152106
                         '#f
                         '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _$obj150615_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _args150595_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'call-method '()))
                                            (cons (cons '%#ref
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self150582_
                         __id152106
                         '#f
                         '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#quote
                                                              (cons 'instance-init!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#ref (cons _$obj150615_ '())) _args150595_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (cons (cons '%#ref (cons _$obj150615_ '())) '())))
                '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp152644
                                  _stx150584_))))
                           _$e150610_)
                          (if (##structure-ref
                               _klass150587_
                               '7
                               gxc#!class::t
                               '#f)
                              (if (let ((__tmp152645 (length _args150595_)))
                                    (declare (not safe))
                                    (##fx= __tmp152645 _fields150589_))
                                  (let ((__tmp152646
                                         (cons '%#begin-annotation
                                               (cons (cons '@type
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self150582_
                            __id152106
                            '#f
                            '#f))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons '##structure '()))
                               (cons (cons '%#ref
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self150582_
                                                    __id152106
                                                    '#f
                                                    '#f))
                                                 '()))
                                     _args150595_)))
                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp152646
                                     _stx150584_))
                                  (let ((__tmp152648
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _self150582_
                                            __id152106
                                            '#f
                                            '#f)))
                                        (__tmp152647
                                         (length (##structure-ref
                                                  _klass150587_
                                                  '5
                                                  gxc#!class::t
                                                  '#f))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"illegal struct constructor application; arity mismatch"
                                     _stx150584_
                                     __tmp152648
                                     __tmp152647)))
                              (let ((_$obj150620_
                                     (let ((__tmp152649
                                            (let ()
                                              (declare (not safe))
                                              (##gensym '__obj))))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp152649))))
                                (let _lp150622_ ((_rest150624_ _args150595_)
                                                 (_initializers150625_ '()))
                                  (let* ((___stx152392152393_ _rest150624_)
                                         (_g150629150650_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               ___stx152392152393_)))))
                                    (let ((___kont152394152395_
                                           (lambda (_L150704_
                                                    _L150705_
                                                    _L150706_)
                                             (let* ((_slot150737_
                                                     (let ((__tmp152650
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _L150706_))))
                                                       (declare (not safe))
                                                       (keyword->symbol
                                                        __tmp152650)))
                                                    (_off150739_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass150587_
                                                        _slot150737_))))
                                               (if _off150739_
                                                   (let ((__tmp152651
                                                          (cons (cons _off150739_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L150705_)
                        _initializers150625_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp150622_
                                                      _L150704_
                                                      __tmp152651))
                                                   (let ((__tmp152652
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _self150582_
                                                             __id152106
                                                             '#f
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"unknown slot"
                                                      _stx150584_
                                                      __tmp152652
                                                      _slot150737_))))))
                                          (___kont152396152397_
                                           (lambda ()
                                             (let ((__tmp152653
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _$obj150620_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _inline-make-object150597_ '()))
                              '())
                        (cons (cons '%#begin
                                    (let ((__tmp152656
                                           (cons (cons '%#ref
                                                       (cons _$obj150620_ '()))
                                                 '()))
                                          (__tmp152654
                                           (let ((__tmp152655
                                                  (lambda (_i150664_ _r150665_)
                                                    (cons (cons '%#struct-unchecked-set!
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self150582_
                                             __id152106
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons (car _i150664_) '()))
                                    (cons (cons '%#ref (cons _$obj150620_ '()))
                                          (cons (cdr _i150664_) '())))))
                  _r150665_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (__foldl1
                                              __tmp152655
                                              '()
                                              _initializers150625_))))
                                      (declare (not safe))
                                      (__foldr1 cons __tmp152656 __tmp152654)))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp152653
                                                _stx150584_))))
                                          (___kont152398152399_
                                           (lambda ()
                                             (let ((__tmp152657
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _$obj150620_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _inline-make-object150597_ '()))
                              '())
                        (cons (cons '%#begin
                                    (cons (cons '%#call
                                                (cons (cons '%#ref
                                                            (cons 'class-instance-init!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#ref (cons _$obj150620_ '())) _args150595_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons '%#ref
                                                      (cons _$obj150620_ '()))
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp152657
                                                _stx150584_)))))
                                      (let* ((_g150627150667_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       ___stx152392152393_))
                                                    (___kont152396152397_)
                                                    (___kont152398152399_))))
                                             (___match152429152430_
                                              (lambda (_e150636150672_
                                                       _hd150635150675_
                                                       _tl150634150677_
                                                       _e150639150680_
                                                       _hd150638150683_
                                                       _tl150637150685_
                                                       _e150642150688_
                                                       _hd150641150691_
                                                       _tl150640150693_
                                                       _e150645150696_
                                                       _hd150644150699_
                                                       _tl150643150701_)
                                                (let ((_L150704_
                                                       _tl150643150701_)
                                                      (_L150705_
                                                       _hd150644150699_)
                                                      (_L150706_
                                                       _hd150641150691_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-keyword?
                                                         _L150706_))
                                                      (___kont152394152395_
                                                       _L150704_
                                                       _L150705_
                                                       _L150706_)
                                                      (___kont152398152399_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               ___stx152392152393_))
                                            (let ((_e150636150672_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      ___stx152392152393_))))
                                              (let ((_tl150634150677_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e150636150672_)))
                                                    (_hd150635150675_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e150636150672_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd150635150675_))
                                                    (let ((_e150639150680_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd150635150675_))))
                                                      (let ((_tl150637150685_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e150639150680_)))
                    (_hd150638150683_
                     (let () (declare (not safe)) (##car _e150639150680_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd150638150683_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd150638150683_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl150637150685_))
                            (let ((_e150642150688_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl150637150685_))))
                              (let ((_tl150640150693_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e150642150688_)))
                                    (_hd150641150691_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e150642150688_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl150640150693_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl150634150677_))
                                        (let ((_e150645150696_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl150634150677_))))
                                          (let ((_tl150643150701_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e150645150696_)))
                                                (_hd150644150699_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e150645150696_))))
                                            (___match152429152430_
                                             _e150636150672_
                                             _hd150635150675_
                                             _tl150634150677_
                                             _e150639150680_
                                             _hd150638150683_
                                             _tl150637150685_
                                             _e150642150688_
                                             _hd150641150691_
                                             _tl150640150693_
                                             _e150645150696_
                                             _hd150644150699_
                                             _tl150643150701_)))
                                        (___kont152398152399_))
                                    (___kont152398152399_))))
                            (___kont152398152399_))
                        (___kont152398152399_))
                    (___kont152398152399_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont152398152399_))))
                                            (let ()
                                              (declare (not safe))
                                              (_g150627150667_))))))))))))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!constructor::optimize-call
       gxc#!constructor::optimize-call::specialize))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_self150392_ _ctx150393_ _stx150394_ _args150395_)
        (let* ((_arguments-ok?150397_
                (let ((__method152562
                       (let ()
                         (declare (not safe))
                         (__method-ref _self150392_ 'check-arguments))))
                  (if __method152562
                      (__method152562
                       _self150392_
                       _ctx150393_
                       _stx150394_
                       _args150395_)
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _self150392_
                               'check-arguments)))))
               (_g150399150409_
                (lambda (_g150400150406_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g150400150406_))))
               (_g150398150457_
                (lambda (_g150400150412_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g150400150412_))
                      (let ((_e150404150414_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g150400150412_))))
                        (let ((_hd150403150417_
                               (let ()
                                 (declare (not safe))
                                 (##car _e150404150414_)))
                              (_tl150402150419_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e150404150414_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl150402150419_))
                              ((lambda (_L150422_)
                                 (let* ((_klass150434_
                                         (let ((__tmp152658
                                                (##structure-ref
                                                 _self150392_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx150394_
                                            __tmp152658)))
                                        (_field150436_
                                         (let ((__tmp152659
                                                (##structure-ref
                                                 _self150392_
                                                 '3
                                                 gxc#!accessor::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _klass150434_
                                            __tmp152659)))
                                        (_object150438_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _ctx150393_
                                            _L150422_))))
                                   (if (##structure-ref
                                        _klass150434_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp152660
                                              (cons (if (or _arguments-ok?150397_
                                                            (let ((__tmp152661
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##structure-ref
                            _self150392_
                            '4
                            gxc#!accessor::t
                            '#f)))
                      (declare (not safe))
                      (not __tmp152661)))
                '%#struct-unchecked-ref
                '%#struct-direct-ref)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#ref
                                                                (cons (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _self150392_
                               '1
                               gxc#!type::t
                               '#f)
                              '()))
                  (cons (cons '%#quote (cons _field150436_ '()))
                        (cons _object150438_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp152660
                                          _stx150394_))
                                       (if (##structure-ref
                                            _klass150434_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp152662
                                                  (cons (if (or _arguments-ok?150397_
                                                                (let ((__tmp152663
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (##structure-ref
                                _self150392_
                                '4
                                gxc#!accessor::t
                                '#f)))
                          (declare (not safe))
                          (not __tmp152663)))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (##structure-ref
                                   _self150392_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  '()))
                      (cons (cons '%#quote (cons _field150436_ '()))
                            (cons _object150438_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp152662
                                              _stx150394_))
                                           (let ((_$e150447_
                                                  (let ((__tmp152664
                                                         (##structure-ref
                                                          _self150392_
                                                          '3
                                                          gxc#!accessor::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass150434_
                                                     __tmp152664))))
                                             (if _$e150447_
                                                 ((lambda (_klass150450_)
                                                    (let ((__tmp152665
                                                           (cons (if (or _arguments-ok?150397_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (let ((__tmp152666
                                        (##structure-ref
                                         _self150392_
                                         '4
                                         gxc#!accessor::t
                                         '#f)))
                                   (declare (not safe))
                                   (not __tmp152666)))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (##structure-ref
                                            _self150392_
                                            '1
                                            gxc#!type::t
                                            '#f)
                                           '()))
                               (cons (cons '%#quote (cons _field150436_ '()))
                                     (cons _object150438_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp152665 _stx150394_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e150447_)
                                                 (if (##structure-ref
                                                      _self150392_
                                                      '4
                                                      gxc#!accessor::t
                                                      '#f)
                                                     (let ((__tmp152667
                                                            (let ((_$obj150455_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152668
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp152668))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _$obj150455_ '())
                                              (cons _object150438_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (##structure-ref
                                     _klass150434_
                                     '1
                                     gxc#!type::t
                                     '#f)
                                    '()))
                        (cons (cons '%#ref (cons _$obj150455_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (##structure-ref
                                           _self150392_
                                           '1
                                           gxc#!type::t
                                           '#f)
                                          '()))
                              (cons (cons '%#quote (cons _field150436_ '()))
                                    (cons (cons '%#ref (cons _$obj150455_ '()))
                                          '()))))
                  (cons (if _arguments-ok?150397_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _$obj150455_ '()))
                                              (cons (cons '%#quote
                                                          (cons (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _self150392_
                         '3
                         gxc#!accessor::t
                         '#f)
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'class-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons (##structure-ref
                                                           _self150392_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _$obj150455_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _self150392_
                               '3
                               gxc#!accessor::t
                               '#f)
                              '()))
                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp152667 _stx150394_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp152669
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _object150438_
                                      (cons (cons '%#quote
                                                  (cons (##structure-ref
                                                         _self150392_
                                                         '3
                                                         gxc#!accessor::t
                                                         '#f)
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp152669 _stx150394_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _hd150403150417_)
                              (let ()
                                (declare (not safe))
                                (_g150399150409_ _g150400150412_)))))
                      (let ()
                        (declare (not safe))
                        (_g150399150409_ _g150400150412_))))))
          (declare (not safe))
          (_g150398150457_ _args150395_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass152108 __method-table152109)
        (let ((__check-arguments152110
               (let ((__tmp152670
                      (lambda ()
                        (let ((__method152111
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table152109
                                  'check-arguments
                                  '#f))))
                          (if __method152111
                              __method152111
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp152670)))
              (__id152112
               (let ((__slot152115
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152108 'id))))
                 (if __slot152115
                     __slot152115
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__slot152113
               (let ((__slot152116
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152108 'slot))))
                 (if __slot152116
                     __slot152116
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__checked?152114
               (let ((__slot152117
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152108 'checked?))))
                 (if __slot152117
                     __slot152117
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?))))))
          (lambda (_self150392_ _ctx150393_ _stx150394_ _args150395_)
            (let* ((_arguments-ok?150397_
                    ((force __check-arguments152110)
                     _self150392_
                     _ctx150393_
                     _stx150394_
                     _args150395_))
                   (_g150399150409_
                    (lambda (_g150400150406_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g150400150406_))))
                   (_g150398150457_
                    (lambda (_g150400150412_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g150400150412_))
                          (let ((_e150404150414_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g150400150412_))))
                            (let ((_hd150403150417_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e150404150414_)))
                                  (_tl150402150419_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e150404150414_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl150402150419_))
                                  ((lambda (_L150422_)
                                     (let* ((_klass150434_
                                             (let ((__tmp152671
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self150392_
                                                       __id152112
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx150394_
                                                __tmp152671)))
                                            (_field150436_
                                             (let ((__tmp152672
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self150392_
                                                       __slot152113
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _klass150434_
                                                __tmp152672)))
                                            (_object150438_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _ctx150393_
                                                _L150422_))))
                                       (if (##structure-ref
                                            _klass150434_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp152673
                                                  (cons (if (or _arguments-ok?150397_
                                                                (let ((__tmp152674
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _self150392_
                                  __checked?152114
                                  '#f
                                  '#f))))
                          (declare (not safe))
                          (not __tmp152674)))
                    '%#struct-unchecked-ref
                    '%#struct-direct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self150392_
                                     __id152112
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _field150436_ '()))
                            (cons _object150438_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp152673
                                              _stx150394_))
                                           (if (##structure-ref
                                                _klass150434_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp152675
                                                      (cons (if (or _arguments-ok?150397_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp152676
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _self150392_
                                      __checked?152114
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (not __tmp152676)))
                        '%#struct-unchecked-ref
                        '%#struct-ref)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self150392_
                                         __id152112
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _field150436_ '()))
                                (cons _object150438_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp152675
                                                  _stx150394_))
                                               (let ((_$e150447_
                                                      (let ((__tmp152677
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self150392_
                        __slot152113
                        '#f
                        '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _klass150434_ __tmp152677))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e150447_
                                                     ((lambda (_klass150450_)
                                                        (let ((__tmp152678
                                                               (cons (if (or _arguments-ok?150397_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (let ((__tmp152679
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _self150392_
                                               __checked?152114
                                               '#f
                                               '#f))))
                                       (declare (not safe))
                                       (not __tmp152679)))
                                 '%#struct-unchecked-ref
                                 '%#struct-ref)
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _self150392_
                                                  __id152112
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _field150436_ '()))
                                         (cons _object150438_ '()))))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp152678 _stx150394_)))
              _$e150447_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self150392_
                                                            __checked?152114
                                                            '#f
                                                            '#f))
                                                         (let ((__tmp152680
                                                                (let ((_$obj150455_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp152681
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp152681))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _$obj150455_ '())
                                                  (cons _object150438_ '()))
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#struct-direct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (##structure-ref
                                         _klass150434_
                                         '1
                                         gxc#!type::t
                                         '#f)
                                        '()))
                            (cons (cons '%#ref (cons _$obj150455_ '())) '())))
                (cons (cons '%#struct-unchecked-ref
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self150392_
                                                 __id152112
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _field150436_ '()))
                                        (cons (cons '%#ref
                                                    (cons _$obj150455_ '()))
                                              '()))))
                      (cons (if _arguments-ok?150397_
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-ref
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _$obj150455_
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _self150392_
                               __slot152113
                               '#f
                               '#f))
                            '()))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'class-slot-ref '()))
                                            (cons (cons '%#ref
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self150392_
                         __id152112
                         '#f
                         '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _$obj150455_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self150392_
                                     __slot152113
                                     '#f
                                     '#f))
                                  '()))
                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp152680 _stx150394_))
                 (let ((__tmp152682
                        (cons '%#call
                              (cons (cons '%#ref
                                          (cons 'unchecked-slot-ref '()))
                                    (cons _object150438_
                                          (cons (cons '%#quote
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self150392_
                                                               __slot152113
                                                               '#f
                                                               '#f))
                                                            '()))
                                                '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp152682 _stx150394_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd150403150417_)
                                  (let ()
                                    (declare (not safe))
                                    (_g150399150409_ _g150400150412_)))))
                          (let ()
                            (declare (not safe))
                            (_g150399150409_ _g150400150412_))))))
              (declare (not safe))
              (_g150398150457_ _args150395_))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!accessor::optimize-call
       gxc#!accessor::optimize-call::specialize))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!accessor::t
       'optimize-call
       gxc#!accessor::optimize-call
       '#f))
    (define gxc#!mutator::optimize-call
      (lambda (_self150184_ _ctx150185_ _stx150186_ _args150187_)
        (let* ((_arguments-ok?150189_
                (let ((__method152563
                       (let ()
                         (declare (not safe))
                         (__method-ref _self150184_ 'check-arguments))))
                  (if __method152563
                      (__method152563
                       _self150184_
                       _ctx150185_
                       _stx150186_
                       _args150187_)
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _self150184_
                               'check-arguments)))))
               (_g150191150205_
                (lambda (_g150192150202_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g150192150202_))))
               (_g150190150267_
                (lambda (_g150192150208_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g150192150208_))
                      (let ((_e150197150210_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g150192150208_))))
                        (let ((_hd150196150213_
                               (let ()
                                 (declare (not safe))
                                 (##car _e150197150210_)))
                              (_tl150195150215_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e150197150210_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl150195150215_))
                              (let ((_e150200150218_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl150195150215_))))
                                (let ((_hd150199150221_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e150200150218_)))
                                      (_tl150198150223_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e150200150218_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl150198150223_))
                                      ((lambda (_L150226_ _L150227_)
                                         (let* ((_klass150242_
                                                 (let ((__tmp152683
                                                        (##structure-ref
                                                         _self150184_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _stx150186_
                                                    __tmp152683)))
                                                (_field150244_
                                                 (let ((__tmp152684
                                                        (##structure-ref
                                                         _self150184_
                                                         '3
                                                         gxc#!mutator::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass150242_
                                                    __tmp152684)))
                                                (_object150246_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _ctx150185_
                                                    _L150227_)))
                                                (_value150248_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _ctx150185_
                                                    _L150226_))))
                                           (if (##structure-ref
                                                _klass150242_
                                                '8
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp152685
                                                      (cons (if (or _arguments-ok?150189_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp152686
                                   (##structure-ref
                                    _self150184_
                                    '4
                                    gxc#!mutator::t
                                    '#f)))
                              (declare (not safe))
                              (not __tmp152686)))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (##structure-ref
                                       _self150184_
                                       '1
                                       gxc#!type::t
                                       '#f)
                                      '()))
                          (cons (cons '%#quote (cons _field150244_ '()))
                                (cons _object150246_
                                      (cons _value150248_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp152685
                                                  _stx150186_))
                                               (if (##structure-ref
                                                    _klass150242_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp152687
                                                          (cons (if (or _arguments-ok?150189_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp152688
                                       (##structure-ref
                                        _self150184_
                                        '4
                                        gxc#!mutator::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp152688)))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (##structure-ref
                                           _self150184_
                                           '1
                                           gxc#!type::t
                                           '#f)
                                          '()))
                              (cons (cons '%#quote (cons _field150244_ '()))
                                    (cons _object150246_
                                          (cons _value150248_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp152687
                                                      _stx150186_))
                                                   (let ((_$e150257_
                                                          (let ((__tmp152689
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref
                          _self150184_
                          '3
                          gxc#!mutator::t
                          '#f)))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass150242_ __tmp152689))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e150257_
                                                         ((lambda (_klass150260_)
                                                            (let ((__tmp152690
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _arguments-ok?150189_
                                         (let ((__tmp152691
                                                (##structure-ref
                                                 _self150184_
                                                 '4
                                                 gxc#!mutator::t
                                                 '#f)))
                                           (declare (not safe))
                                           (not __tmp152691)))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (##structure-ref
                                                    _self150184_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _field150244_ '()))
                                             (cons _object150246_
                                                   (cons _value150248_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp152690 _stx150186_)))
                  _$e150257_)
                 (if (##structure-ref _self150184_ '4 gxc#!mutator::t '#f)
                     (let ((__tmp152692
                            (let ((_$obj150265_
                                   (let ((__tmp152693
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp152693))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _$obj150265_ '())
                                                      (cons _object150246_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (##structure-ref
                                             _klass150242_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            '()))
                                (cons (cons '%#ref (cons _$obj150265_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (##structure-ref
                                                   _self150184_
                                                   '1
                                                   gxc#!type::t
                                                   '#f)
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _field150244_ '()))
                                            (cons (cons '%#ref
                                                        (cons _$obj150265_
                                                              '()))
                                                  (cons _value150248_ '())))))
                          (cons (if _arguments-ok?150189_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _$obj150265_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (##structure-ref
                                 _self150184_
                                 '3
                                 gxc#!mutator::t
                                 '#f)
                                '()))
                    (cons _value150248_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _self150184_
                           '1
                           gxc#!type::t
                           '#f)
                          '()))
              (cons (cons '%#ref (cons _$obj150265_ '()))
                    (cons (cons '%#quote
                                (cons (##structure-ref
                                       _self150184_
                                       '3
                                       gxc#!mutator::t
                                       '#f)
                                      '()))
                          (cons _value150248_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp152692 _stx150186_))
                     (let ((__tmp152694
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _object150246_
                                              (cons (cons '%#quote
                                                          (cons (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _self150184_
                         '3
                         gxc#!mutator::t
                         '#f)
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _value150248_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp152694 _stx150186_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd150199150221_
                                       _hd150196150213_)
                                      (let ()
                                        (declare (not safe))
                                        (_g150191150205_ _g150192150208_)))))
                              (let ()
                                (declare (not safe))
                                (_g150191150205_ _g150192150208_)))))
                      (let ()
                        (declare (not safe))
                        (_g150191150205_ _g150192150208_))))))
          (declare (not safe))
          (_g150190150267_ _args150187_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass152118 __method-table152119)
        (let ((__check-arguments152120
               (let ((__tmp152695
                      (lambda ()
                        (let ((__method152121
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table152119
                                  'check-arguments
                                  '#f))))
                          (if __method152121
                              __method152121
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp152695)))
              (__id152122
               (let ((__slot152125
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152118 'id))))
                 (if __slot152125
                     __slot152125
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__slot152123
               (let ((__slot152126
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152118 'slot))))
                 (if __slot152126
                     __slot152126
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__checked?152124
               (let ((__slot152127
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152118 'checked?))))
                 (if __slot152127
                     __slot152127
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?))))))
          (lambda (_self150184_ _ctx150185_ _stx150186_ _args150187_)
            (let* ((_arguments-ok?150189_
                    ((force __check-arguments152120)
                     _self150184_
                     _ctx150185_
                     _stx150186_
                     _args150187_))
                   (_g150191150205_
                    (lambda (_g150192150202_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g150192150202_))))
                   (_g150190150267_
                    (lambda (_g150192150208_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g150192150208_))
                          (let ((_e150197150210_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g150192150208_))))
                            (let ((_hd150196150213_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e150197150210_)))
                                  (_tl150195150215_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e150197150210_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl150195150215_))
                                  (let ((_e150200150218_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl150195150215_))))
                                    (let ((_hd150199150221_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e150200150218_)))
                                          (_tl150198150223_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e150200150218_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl150198150223_))
                                          ((lambda (_L150226_ _L150227_)
                                             (let* ((_klass150242_
                                                     (let ((__tmp152696
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self150184_
                                                               __id152122
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _stx150186_
                                                        __tmp152696)))
                                                    (_field150244_
                                                     (let ((__tmp152697
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self150184_
                                                               __slot152123
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass150242_
                                                        __tmp152697)))
                                                    (_object150246_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _ctx150185_
                                                        _L150227_)))
                                                    (_value150248_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _ctx150185_
                                                        _L150226_))))
                                               (if (##structure-ref
                                                    _klass150242_
                                                    '8
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp152698
                                                          (cons (if (or _arguments-ok?150189_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp152699
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _self150184_
                                          __checked?152124
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (not __tmp152699)))
                            '%#struct-unchecked-set!
                            '%#struct-direct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self150184_
                                             __id152122
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _field150244_ '()))
                                    (cons _object150246_
                                          (cons _value150248_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp152698
                                                      _stx150186_))
                                                   (if (##structure-ref
                                                        _klass150242_
                                                        '7
                                                        gxc#!class::t
                                                        '#f)
                                                       (let ((__tmp152700
                                                              (cons (if (or _arguments-ok?150189_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (let ((__tmp152701
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self150184_
                                              __checked?152124
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (not __tmp152701)))
                                '%#struct-unchecked-set!
                                '%#struct-set!)
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self150184_
                                                 __id152122
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _field150244_ '()))
                                        (cons _object150246_
                                              (cons _value150248_ '())))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp152700 _stx150186_))
               (let ((_$e150257_
                      (let ((__tmp152702
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self150184_
                                __slot152123
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _klass150242_
                         __tmp152702))))
                 (if _$e150257_
                     ((lambda (_klass150260_)
                        (let ((__tmp152703
                               (cons (if (or _arguments-ok?150189_
                                             (let ((__tmp152704
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self150184_
                                                       __checked?152124
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (not __tmp152704)))
                                         '%#struct-unchecked-set!
                                         '%#struct-set!)
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self150184_
                                                          __id152122
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons _field150244_
                                                             '()))
                                                 (cons _object150246_
                                                       (cons _value150248_
                                                             '())))))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp152703 _stx150186_)))
                      _$e150257_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self150184_
                            __checked?152124
                            '#f
                            '#f))
                         (let ((__tmp152705
                                (let ((_$obj150265_
                                       (let ((__tmp152706
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__obj))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp152706))))
                                  (cons '%#let-values
                                        (cons (cons (cons (cons _$obj150265_
                                                                '())
                                                          (cons _object150246_
                                                                '()))
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (##structure-ref
                                                 _klass150242_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)
                                                '()))
                                    (cons (cons '%#ref (cons _$obj150265_ '()))
                                          '())))
                        (cons (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _self150184_
                                                         __id152122
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons _field150244_ '()))
                                                (cons (cons '%#ref
                                                            (cons _$obj150265_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _value150248_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons (if _arguments-ok?150189_
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'unchecked-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _$obj150265_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _self150184_
                                       __slot152123
                                       '#f
                                       '#f))
                                    '()))
                        (cons _value150248_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'class-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self150184_
                                 __id152122
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#ref (cons _$obj150265_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self150184_
                                             __slot152123
                                             '#f
                                             '#f))
                                          '()))
                              (cons _value150248_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp152705 _stx150186_))
                         (let ((__tmp152707
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-set!
                                                        '()))
                                            (cons _object150246_
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _self150184_
                               __slot152123
                               '#f
                               '#f))
                            '()))
                (cons _value150248_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp152707
                            _stx150186_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _hd150199150221_
                                           _hd150196150213_)
                                          (let ()
                                            (declare (not safe))
                                            (_g150191150205_
                                             _g150192150208_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g150191150205_ _g150192150208_)))))
                          (let ()
                            (declare (not safe))
                            (_g150191150205_ _g150192150208_))))))
              (declare (not safe))
              (_g150190150267_ _args150187_))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!mutator::optimize-call
       gxc#!mutator::optimize-call::specialize))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!mutator::t
       'optimize-call
       gxc#!mutator::optimize-call
       '#f))
    (define gxc#!lambda::optimize-call
      (lambda (_self150013_ _ctx150014_ _stx150015_ _args150016_)
        (let* ((_self150017150027_ _self150013_)
               (_E150019150031_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self150017150027_))))
               (_K150020150038_
                (lambda (_inline150034_ _dispatch150035_ _arity150036_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self150013_ _args150016_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx150015_
                         _arity150036_)))
                  (if _inline150034_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp152708
                               (let ((__tmp152709
                                      (_inline150034_ _stx150015_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp152709
                                  _stx150015_))))
                          (declare (not safe))
                          (gxc#compile-e__1 _ctx150014_ __tmp152708)))
                      (if _dispatch150035_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch150035_))
                            (let ((__tmp152710
                                   (let ((__tmp152711
                                          (cons '%#call
                                                (cons (cons '%#ref
                                                            (cons _dispatch150035_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _args150016_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp152711
                                      _stx150015_))))
                              (declare (not safe))
                              (gxc#compile-e__1 _ctx150014_ __tmp152710)))
                          (let ()
                            (declare (not safe))
                            (gxc#!procedure::optimize-call
                             _self150013_
                             _ctx150014_
                             _stx150015_
                             _args150016_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self150017150027_ 'gxc#!lambda::t))
              (let* ((_e150021150041_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150017150027_
                         '1
                         '#f
                         '#f)))
                     (_e150022150044_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150017150027_
                         '2
                         '#f
                         '#f)))
                     (_e150023150047_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150017150027_
                         '3
                         '#f
                         '#f)))
                     (_arity150050_ _e150023150047_)
                     (_e150024150052_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150017150027_
                         '4
                         '#f
                         '#f)))
                     (_dispatch150055_ _e150024150052_)
                     (_e150025150057_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150017150027_
                         '5
                         '#f
                         '#f)))
                     (_inline150060_ _e150025150057_))
                (declare (not safe))
                (_K150020150038_
                 _inline150060_
                 _dispatch150055_
                 _arity150050_))
              (let () (declare (not safe)) (_E150019150031_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self149875_ _ctx149876_ _stx149877_ _args149878_)
        (let* ((_clauses149880_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _self149875_ '3 '#f '#f)))
               (_$e149886_
                (let ((__tmp152712
                       (lambda (_g149881149883_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _g149881149883_
                            _args149878_)))))
                  (declare (not safe))
                  (__find __tmp152712 _clauses149880_))))
          (if _$e149886_
              ((lambda (_clause149889_)
                 (let ((__method152564
                        (let ()
                          (declare (not safe))
                          (__method-ref _clause149889_ 'optimize-call))))
                   (if __method152564
                       (__method152564
                        _clause149889_
                        _ctx149876_
                        _stx149877_
                        _args149878_)
                       (let ()
                         (declare (not safe))
                         (error '"Missing method"
                                _clause149889_
                                'optimize-call)))))
               _$e149886_)
              (let ((__tmp152713 (map gxc#!lambda-arity _clauses149880_)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _stx149877_
                 __tmp152713))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self149685_ _args149686_)
        (let* ((_self149687149695_ _self149685_)
               (_E149689149699_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self149687149695_))))
               (_K149690149739_
                (lambda (_arity149702_)
                  (let* ((_arity149703149712_ _arity149702_)
                         (_E149706149716_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (error '"No clause matching"
                                     _arity149703149712_)))))
                    (let ((_K149710149736_
                           (lambda ()
                             (fx= (length _args149686_) _arity149702_)))
                          (_K149707149722_
                           (lambda (_arity149720_)
                             (fx>= (length _args149686_) _arity149720_))))
                      (let ((_try-match149705149732_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity149703149712_))
                                   (let ((_tl149709149727_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity149703149712_)))
                                         (_hd149708149725_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity149703149712_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl149709149727_))
                                         (let ((_arity149730_
                                                _hd149708149725_))
                                           (declare (not safe))
                                           (_K149707149722_ _arity149730_))
                                         (let ()
                                           (declare (not safe))
                                           (_E149706149716_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E149706149716_))))))
                        (if (let ()
                              (declare (not safe))
                              (fixnum? _arity149703149712_))
                            (let () (declare (not safe)) (_K149710149736_))
                            (let ()
                              (declare (not safe))
                              (_try-match149705149732_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self149687149695_ 'gxc#!lambda::t))
              (let* ((_e149691149742_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self149687149695_
                         '1
                         '#f
                         '#f)))
                     (_e149692149745_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self149687149695_
                         '2
                         '#f
                         '#f)))
                     (_e149693149748_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self149687149695_
                         '3
                         '#f
                         '#f)))
                     (_arity149751_ _e149693149748_))
                (declare (not safe))
                (_K149690149739_ _arity149751_))
              (let () (declare (not safe)) (_E149689149699_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self149564_ _ctx149565_ _stx149566_ _args149567_)
        (let* ((_self149568149577_ _self149564_)
               (_E149570149581_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self149568149577_))))
               (_K149571149666_
                (lambda (_dispatch149584_ _table149585_)
                  (let* ((_g149586149595_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch149584_)))
                         (_else149588149603_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch149584_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _ctx149565_ _stx149566_))))
                         (_K149590149650_
                          (lambda (_main149606_ _keys149607_)
                            (let ((_g152714_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx149566_
                                      _args149567_))))
                              (begin
                                (let ((_g152715_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g152714_)
                                             (##vector-length _g152714_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g152715_ 2)))
                                      (error "Context expects 2 values"
                                             _g152715_)))
                                (let ((_pargs149609_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g152714_ 0)))
                                      (_kwargs149610_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g152714_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main149606_))
                                    (if _table149585_
                                        (let ((_xargs149617_
                                               (map (lambda (_key149612_)
                                                      (let ((_$e149614_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (agetq__0 _key149612_ _kwargs149610_))))
                (if _$e149614_ (values _$e149614_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys149607_)))
                                          (for-each
                                           (lambda (_kw149619_)
                                             (if (memq (car _kw149619_)
                                                       _keys149607_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx149566_
                                                    _keys149607_
                                                    _kw149619_))))
                                           _kwargs149610_)
                                          (let ((__tmp152716
                                                 (let ((__tmp152717
                                                        (cons '%#call
                                                              (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons _main149606_ '()))
                            (cons (cons '%#quote (cons '#f '()))
                                  (let ()
                                    (declare (not safe))
                                    (__foldr1
                                     cons
                                     _pargs149609_
                                     _xargs149617_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp152717
                                                    _stx149566_))))
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _ctx149565_
                                             __tmp152716)))
                                        (let* ((_kwt149621_
                                                (let ((__tmp152718
                                                       (let ()
                                                         (declare (not safe))
                                                         (##gensym '__kwt))))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp152718)))
                                               (_kwvars149625_
                                                (map (lambda (__149623_)
                                                       (let ((__tmp152719
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__kw))))
                 (declare (not safe))
                 (make-symbol__0 __tmp152719)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs149610_))
                                               (_kwbind149630_
                                                (map (lambda (_kw149627_
                                                              _kwvar149628_)
                                                       (cons (cons _kwvar149628_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (cdr _kw149627_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs149610_
                                                     _kwvars149625_))
                                               (_kwset149635_
                                                (map (lambda (_kw149632_
                                                              _kwvar149633_)
                                                       (cons '%#call
                                                             (cons '(%#ref symbolic-table-set!)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons '%#ref (cons _kwt149621_ '()))
                                 (cons (cons '%#quote
                                             (cons (car _kw149632_) '()))
                                       (cons (cons '%#ref
                                                   (cons _kwvar149633_ '()))
                                             '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs149610_
                                                     _kwvars149625_))
                                               (_xkwargs149640_
                                                (map (lambda (_kw149637_
                                                              _kwvar149638_)
                                                       (cons (car _kw149637_)
                                                             (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _kwvar149638_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs149610_
                                                     _kwvars149625_))
                                               (_xargs149647_
                                                (map (lambda (_key149642_)
                                                       (let ((_$e149644_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (agetq__0 _key149642_ _xkwargs149640_))))
                 (if _$e149644_ (values _$e149644_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys149607_)))
                                          (let ((__tmp152720
                                                 (let ((__tmp152721
                                                        (cons '%#let-values
                                                              (cons _kwbind149630_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _kwt149621_
                                                                '())
                                                          (cons (let ((__tmp152722
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons '%#call
                                     (cons '(%#ref make-symbolic-table)
                                           (cons (cons '%#quote
                                                       (cons (length _kwargs149610_)
                                                             '()))
                                                 (cons '(%#quote 0) '()))))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp152722 _stx149566_))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#begin
                                                          (let ((__tmp152723
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ((__tmp152724
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons _main149606_
                                                              '()))
                                                  (cons (cons '%#ref
                                                              (cons _kwt149621_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (let ()
                  (declare (not safe))
                  (__foldr1 cons _pargs149609_ _xargs149647_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp152724
                                  _stx149566_))
                               '())))
                    (declare (not safe))
                    (__foldr1 cons __tmp152723 _kwset149635_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp152721
                                                    _stx149566_))))
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _ctx149565_
                                             __tmp152720)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g149586149595_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e149591149653_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g149586149595_
                                   '1
                                   '#f
                                   '#f)))
                               (_e149592149656_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g149586149595_
                                   '2
                                   '#f
                                   '#f)))
                               (_keys149659_ _e149592149656_)
                               (_e149593149661_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g149586149595_
                                   '3
                                   '#f
                                   '#f)))
                               (_main149664_ _e149593149661_))
                          (declare (not safe))
                          (_K149590149650_ _main149664_ _keys149659_))
                        (let () (declare (not safe)) (_else149588149603_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self149568149577_
                 'gxc#!kw-lambda::t))
              (let* ((_e149572149669_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self149568149577_
                         '1
                         '#f
                         '#f)))
                     (_e149573149672_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self149568149577_
                         '2
                         '#f
                         '#f)))
                     (_e149574149675_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self149568149577_
                         '3
                         '#f
                         '#f)))
                     (_table149678_ _e149574149675_)
                     (_e149575149680_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self149568149577_
                         '4
                         '#f
                         '#f)))
                     (_dispatch149683_ _e149575149680_))
                (declare (not safe))
                (_K149571149666_ _dispatch149683_ _table149678_))
              (let () (declare (not safe)) (_E149570149581_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx149177_ _args149178_)
        (let _lp149180_ ((_rest149182_ _args149178_)
                         (_pargs149183_ '())
                         (_kwargs149184_ '()))
          (let* ((___stx152443152444_ _rest149182_)
                 (_g149190149242_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx152443152444_)))))
            (let ((___kont152445152446_
                   (lambda (_L149421_ _L149422_)
                     (let ((__tmp152725 (cons _L149422_ _pargs149183_)))
                       (declare (not safe))
                       (_lp149180_ _L149421_ __tmp152725 _kwargs149184_))))
                  (___kont152447152448_
                   (lambda (_L149367_)
                     (values (let ()
                               (declare (not safe))
                               (__foldl1 cons _L149367_ _pargs149183_))
                             (reverse _kwargs149184_))))
                  (___kont152449152450_
                   (lambda (_L149314_ _L149315_ _L149316_)
                     (let ((_kw149333_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L149316_))))
                       (if (assq _kw149333_ _kwargs149184_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx149177_
                              _kw149333_))
                           (let ((__tmp152726
                                  (cons (cons _kw149333_ _L149315_)
                                        _kwargs149184_)))
                             (declare (not safe))
                             (_lp149180_
                              _L149314_
                              _pargs149183_
                              __tmp152726))))))
                  (___kont152451152452_
                   (lambda (_L149262_ _L149263_)
                     (let ((__tmp152727 (cons _L149263_ _pargs149183_)))
                       (declare (not safe))
                       (_lp149180_ _L149262_ __tmp152727 _kwargs149184_))))
                  (___kont152453152454_
                   (lambda ()
                     (values (reverse _pargs149183_)
                             (reverse _kwargs149184_)))))
              (let ((___match152550152551_
                     (lambda (_e149223149282_
                              _hd149222149285_
                              _tl149221149287_
                              _e149226149290_
                              _hd149225149293_
                              _tl149224149295_
                              _e149229149298_
                              _hd149228149301_
                              _tl149227149303_
                              _e149232149306_
                              _hd149231149309_
                              _tl149230149311_)
                       (let ((_L149314_ _tl149230149311_)
                             (_L149315_ _hd149231149309_)
                             (_L149316_ _hd149228149301_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _L149316_))
                             (___kont152449152450_
                              _L149314_
                              _L149315_
                              _L149316_)
                             (___kont152451152452_
                              _tl149221149287_
                              _hd149222149285_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx152443152444_))
                    (let ((_e149196149386_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx152443152444_))))
                      (let ((_tl149194149391_
                             (let ()
                               (declare (not safe))
                               (##cdr _e149196149386_)))
                            (_hd149195149389_
                             (let ()
                               (declare (not safe))
                               (##car _e149196149386_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd149195149389_))
                            (let ((_e149199149394_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd149195149389_))))
                              (let ((_tl149197149399_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e149199149394_)))
                                    (_hd149198149397_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e149199149394_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd149198149397_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd149198149397_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl149197149399_))
                                            (let ((_e149202149402_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl149197149399_))))
                                              (let ((_tl149200149407_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e149202149402_)))
                                                    (_hd149201149405_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e149202149402_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd149201149405_))
                                                    (let ((_e149203149410_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd149201149405_))))
                                                      (if (equal? _e149203149410_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl149200149407_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl149194149391_))
                          (let ((_e149206149413_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl149194149391_))))
                            (let ((_tl149204149418_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e149206149413_)))
                                  (_hd149205149416_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e149206149413_))))
                              (___kont152445152446_
                               _tl149204149418_
                               _hd149205149416_)))
                          (___kont152451152452_
                           _tl149194149391_
                           _hd149195149389_))
                      (___kont152451152452_ _tl149194149391_ _hd149195149389_))
                  (if (equal? _e149203149410_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl149200149407_))
                          (___kont152447152448_ _tl149194149391_)
                          (___kont152451152452_
                           _tl149194149391_
                           _hd149195149389_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl149200149407_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl149194149391_))
                              (let ((_e149232149306_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl149194149391_))))
                                (let ((_tl149230149311_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e149232149306_)))
                                      (_hd149231149309_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e149232149306_))))
                                  (___match152550152551_
                                   _e149196149386_
                                   _hd149195149389_
                                   _tl149194149391_
                                   _e149199149394_
                                   _hd149198149397_
                                   _tl149197149399_
                                   _e149202149402_
                                   _hd149201149405_
                                   _tl149200149407_
                                   _e149232149306_
                                   _hd149231149309_
                                   _tl149230149311_)))
                              (___kont152451152452_
                               _tl149194149391_
                               _hd149195149389_))
                          (___kont152451152452_
                           _tl149194149391_
                           _hd149195149389_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl149200149407_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl149194149391_))
                                                            (let ((_e149232149306_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl149194149391_))))
                      (let ((_tl149230149311_
                             (let ()
                               (declare (not safe))
                               (##cdr _e149232149306_)))
                            (_hd149231149309_
                             (let ()
                               (declare (not safe))
                               (##car _e149232149306_))))
                        (___match152550152551_
                         _e149196149386_
                         _hd149195149389_
                         _tl149194149391_
                         _e149199149394_
                         _hd149198149397_
                         _tl149197149399_
                         _e149202149402_
                         _hd149201149405_
                         _tl149200149407_
                         _e149232149306_
                         _hd149231149309_
                         _tl149230149311_)))
                    (___kont152451152452_ _tl149194149391_ _hd149195149389_))
                (___kont152451152452_ _tl149194149391_ _hd149195149389_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont152451152452_
                                             _tl149194149391_
                                             _hd149195149389_))
                                        (___kont152451152452_
                                         _tl149194149391_
                                         _hd149195149389_))
                                    (___kont152451152452_
                                     _tl149194149391_
                                     _hd149195149389_))))
                            (___kont152451152452_
                             _tl149194149391_
                             _hd149195149389_))))
                    (___kont152453152454_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self149172_ _ctx149173_ _stx149174_ _args149175_)
        (let ()
          (declare (not safe))
          (gxc#xform-call% _ctx149173_ _stx149174_))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
