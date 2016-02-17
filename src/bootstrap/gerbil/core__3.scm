(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<sugar>::<sugar:1>[1]#_g27984_|
    (gx#core-quote-syntax 'values))
  (define |gerbil/core::<sugar>::<sugar:1>[1]#_g27985_|
    (gx#core-quote-syntax 'values))
  (define |gerbil/core::<sugar>::<sugar:1>[1]#_g27988_|
    (gx#core-quote-syntax '=>))
  (define |gerbil/core::<sugar>::<sugar:1>[1]#_g27989_|
    (gx#core-quote-syntax 'else))
  (define |gerbil/core::<sugar>::<sugar:1>[1]#_g27990_|
    (gx#core-quote-syntax 'else))
  (begin
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#defrules|
      (lambda (_$stx1348_)
        (let ((_g13521380_
               (lambda (_g13531376_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g13531376_))))
          (let ((_g13511481_
                 (lambda (_g13531384_)
                   (if (gx#stx-pair? _g13531384_)
                       (let ((_e13571387_ (gx#syntax-e _g13531384_)))
                         (let ((_hd13581391_ (##car _e13571387_))
                               (_tl13591394_ (##cdr _e13571387_)))
                           (if (gx#stx-pair? _tl13591394_)
                               (let ((_e13601397_ (gx#syntax-e _tl13591394_)))
                                 (let ((_hd13611401_ (##car _e13601397_))
                                       (_tl13621404_ (##cdr _e13601397_)))
                                   (if (gx#stx-pair? _tl13621404_)
                                       (let ((_e13631407_
                                              (gx#syntax-e _tl13621404_)))
                                         (let ((_hd13641411_
                                                (##car _e13631407_))
                                               (_tl13651414_
                                                (##cdr _e13631407_)))
                                           (if (gx#stx-pair/null? _tl13651414_)
                                               (if (fx>= (gx#stx-length
                                                          _tl13651414_)
                                                         '0)
                                                   (let ((_g27956_
                                                          (gx#syntax-split-splice
                                                           _tl13651414_
                                                           '0)))
                                                     (begin
                                                       (let ((_g27957_
                                                              (values-count
                                                               _g27956_)))
                                                         (if (not (fx= _g27957_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g27957_)))
               (let ((_target13661417_ (values-ref _g27956_ 0))
                     (_tl13681420_ (values-ref _g27956_ 1)))
                 (if (gx#stx-null? _tl13681420_)
                     (letrec ((_loop13691423_
                               (lambda (_hd13671427_ _clauses13731430_)
                                 (if (gx#stx-pair? _hd13671427_)
                                     (let ((_e13701433_
                                            (gx#syntax-e _hd13671427_)))
                                       (let ((_lp-hd13711437_
                                              (##car _e13701433_))
                                             (_lp-tl13721440_
                                              (##cdr _e13701433_)))
                                         (_loop13691423_
                                          _lp-tl13721440_
                                          (cons _lp-hd13711437_
                                                _clauses13731430_))))
                                     (let ((_clauses13741443_
                                            (reverse _clauses13731430_)))
                                       ((lambda (_L1447_ _L1449_ _L1450_)
                                          (if (gx#identifier? _L1450_)
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'define-syntax)
                                                    (cons _L1450_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'syntax-rules)
                              (cons _L1449_
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g14721475_ _g14731478_)
                                               (cons _g14721475_ _g14731478_))
                                             '()
                                             _L1447_))))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g13521380_ _g13531384_)))
                                        _clauses13741443_
                                        _hd13641411_
                                        _hd13611401_))))))
                       (_loop13691423_ _target13661417_ '()))
                     (_g13521380_ _g13531384_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g13521380_ _g13531384_))
                                               (_g13521380_ _g13531384_))))
                                       (_g13521380_ _g13531384_))))
                               (_g13521380_ _g13531384_))))
                       (_g13521380_ _g13531384_)))))
            (_g13511481_ _$stx1348_)))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#defsyntax%|
      (lambda (_$stx1486_)
        (let ((_g14911530_
               (lambda (_g14921526_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g14921526_))))
          (let ((_g14901585_
                 (lambda (_g14921534_)
                   (if (gx#stx-pair? _g14921534_)
                       (let ((_e15161537_ (gx#syntax-e _g14921534_)))
                         (let ((_hd15171541_ (##car _e15161537_))
                               (_tl15181544_ (##cdr _e15161537_)))
                           (if (gx#stx-pair? _tl15181544_)
                               (let ((_e15191547_ (gx#syntax-e _tl15181544_)))
                                 (let ((_hd15201551_ (##car _e15191547_))
                                       (_tl15211554_ (##cdr _e15191547_)))
                                   (if (gx#stx-pair? _tl15211554_)
                                       (let ((_e15221557_
                                              (gx#syntax-e _tl15211554_)))
                                         (let ((_hd15231561_
                                                (##car _e15221557_))
                                               (_tl15241564_
                                                (##cdr _e15221557_)))
                                           (if (gx#stx-null? _tl15241564_)
                                               ((lambda (_L1567_ _L1569_)
                                                  (if (gx#identifier? _L1569_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'define-syntax)
                                                            (cons _L1569_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L1567_ '())))
              (_g14911530_ _g14921534_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd15231561_
                                                _hd15201551_)
                                               (_g14911530_ _g14921534_))))
                                       (_g14911530_ _g14921534_))))
                               (_g14911530_ _g14921534_))))
                       (_g14911530_ _g14921534_)))))
            (let ((_g14891683_
                   (lambda (_g14921589_)
                     (if (gx#stx-pair? _g14921589_)
                         (let ((_e14961592_ (gx#syntax-e _g14921589_)))
                           (let ((_hd14971596_ (##car _e14961592_))
                                 (_tl14981599_ (##cdr _e14961592_)))
                             (if (gx#stx-pair? _tl14981599_)
                                 (let ((_e14991602_
                                        (gx#syntax-e _tl14981599_)))
                                   (let ((_hd15001606_ (##car _e14991602_))
                                         (_tl15011609_ (##cdr _e14991602_)))
                                     (if (gx#stx-pair? _hd15001606_)
                                         (let ((_e15021612_
                                                (gx#syntax-e _hd15001606_)))
                                           (let ((_hd15031616_
                                                  (##car _e15021612_))
                                                 (_tl15041619_
                                                  (##cdr _e15021612_)))
                                             (if (gx#stx-pair/null?
                                                  _tl15011609_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl15011609_)
                                                           '0)
                                                     (let ((_g27958_
                                                            (gx#syntax-split-splice
                                                             _tl15011609_
                                                             '0)))
                                                       (begin
                                                         (let ((_g27959_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g27958_)))
                   (if (not (fx= _g27959_ 2))
                       (error "Context expects 2 values" _g27959_)))
                 (let ((_target15051622_ (values-ref _g27958_ 0))
                       (_tl15071625_ (values-ref _g27958_ 1)))
                   (if (gx#stx-null? _tl15071625_)
                       (letrec ((_loop15081628_
                                 (lambda (_hd15061632_ _body15121635_)
                                   (if (gx#stx-pair? _hd15061632_)
                                       (let ((_e15091638_
                                              (gx#syntax-e _hd15061632_)))
                                         (let ((_lp-hd15101642_
                                                (##car _e15091638_))
                                               (_lp-tl15111645_
                                                (##cdr _e15091638_)))
                                           (_loop15081628_
                                            _lp-tl15111645_
                                            (cons _lp-hd15101642_
                                                  _body15121635_))))
                                       (let ((_body15131648_
                                              (reverse _body15121635_)))
                                         ((lambda (_L1652_ _L1654_ _L1655_)
                                            (if (gx#identifier? _L1655_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'define-syntax)
                                                      (cons _L1655_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'lambda%)
                                (cons _L1654_
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g16741677_
                                                        _g16751680_)
                                                 (cons _g16741677_
                                                       _g16751680_))
                                               '()
                                               _L1652_))))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g14901585_ _g14921589_)))
                                          _body15131648_
                                          _tl15041619_
                                          _hd15031616_))))))
                         (_loop15081628_ _target15051622_ '()))
                       (_g14901585_ _g14921589_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g14901585_ _g14921589_))
                                                 (_g14901585_ _g14921589_))))
                                         (_g14901585_ _g14921589_))))
                                 (_g14901585_ _g14921589_))))
                         (_g14901585_ _g14921589_)))))
              (_g14891683_ _$stx1486_))))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#defalias|
      (lambda (_$stx1688_)
        (let ((_g16921710_
               (lambda (_g16931706_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g16931706_))))
          (let ((_g16911765_
                 (lambda (_g16931714_)
                   (if (gx#stx-pair? _g16931714_)
                       (let ((_e16961717_ (gx#syntax-e _g16931714_)))
                         (let ((_hd16971721_ (##car _e16961717_))
                               (_tl16981724_ (##cdr _e16961717_)))
                           (if (gx#stx-pair? _tl16981724_)
                               (let ((_e16991727_ (gx#syntax-e _tl16981724_)))
                                 (let ((_hd17001731_ (##car _e16991727_))
                                       (_tl17011734_ (##cdr _e16991727_)))
                                   (if (gx#stx-pair? _tl17011734_)
                                       (let ((_e17021737_
                                              (gx#syntax-e _tl17011734_)))
                                         (let ((_hd17031741_
                                                (##car _e17021737_))
                                               (_tl17041744_
                                                (##cdr _e17021737_)))
                                           (if (gx#stx-null? _tl17041744_)
                                               ((lambda (_L1747_ _L1749_)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'define-alias)
                                                        (cons _L1749_
                                                              (cons _L1747_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd17031741_
                                                _hd17001731_)
                                               (_g16921710_ _g16931714_))))
                                       (_g16921710_ _g16931714_))))
                               (_g16921710_ _g16931714_))))
                       (_g16921710_ _g16931714_)))))
            (_g16911765_ _$stx1688_)))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#define|
      (lambda (_$stx1769_)
        (let ((_g17741813_
               (lambda (_g17751809_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g17751809_))))
          (let ((_g17731868_
                 (lambda (_g17751817_)
                   (if (gx#stx-pair? _g17751817_)
                       (let ((_e17991820_ (gx#syntax-e _g17751817_)))
                         (let ((_hd18001824_ (##car _e17991820_))
                               (_tl18011827_ (##cdr _e17991820_)))
                           (if (gx#stx-pair? _tl18011827_)
                               (let ((_e18021830_ (gx#syntax-e _tl18011827_)))
                                 (let ((_hd18031834_ (##car _e18021830_))
                                       (_tl18041837_ (##cdr _e18021830_)))
                                   (if (gx#stx-pair? _tl18041837_)
                                       (let ((_e18051840_
                                              (gx#syntax-e _tl18041837_)))
                                         (let ((_hd18061844_
                                                (##car _e18051840_))
                                               (_tl18071847_
                                                (##cdr _e18051840_)))
                                           (if (gx#stx-null? _tl18071847_)
                                               ((lambda (_L1850_ _L1852_)
                                                  (if (gx#identifier? _L1852_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'define-values)
                                                            (cons (cons _L1852_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons _L1850_ '())))
              (_g17741813_ _g17751817_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd18061844_
                                                _hd18031834_)
                                               (_g17741813_ _g17751817_))))
                                       (_g17741813_ _g17751817_))))
                               (_g17741813_ _g17751817_))))
                       (_g17741813_ _g17751817_)))))
            (let ((_g17721966_
                   (lambda (_g17751872_)
                     (if (gx#stx-pair? _g17751872_)
                         (let ((_e17791875_ (gx#syntax-e _g17751872_)))
                           (let ((_hd17801879_ (##car _e17791875_))
                                 (_tl17811882_ (##cdr _e17791875_)))
                             (if (gx#stx-pair? _tl17811882_)
                                 (let ((_e17821885_
                                        (gx#syntax-e _tl17811882_)))
                                   (let ((_hd17831889_ (##car _e17821885_))
                                         (_tl17841892_ (##cdr _e17821885_)))
                                     (if (gx#stx-pair? _hd17831889_)
                                         (let ((_e17851895_
                                                (gx#syntax-e _hd17831889_)))
                                           (let ((_hd17861899_
                                                  (##car _e17851895_))
                                                 (_tl17871902_
                                                  (##cdr _e17851895_)))
                                             (if (gx#stx-pair/null?
                                                  _tl17841892_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl17841892_)
                                                           '0)
                                                     (let ((_g27960_
                                                            (gx#syntax-split-splice
                                                             _tl17841892_
                                                             '0)))
                                                       (begin
                                                         (let ((_g27961_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g27960_)))
                   (if (not (fx= _g27961_ 2))
                       (error "Context expects 2 values" _g27961_)))
                 (let ((_target17881905_ (values-ref _g27960_ 0))
                       (_tl17901908_ (values-ref _g27960_ 1)))
                   (if (gx#stx-null? _tl17901908_)
                       (letrec ((_loop17911911_
                                 (lambda (_hd17891915_ _body17951918_)
                                   (if (gx#stx-pair? _hd17891915_)
                                       (let ((_e17921921_
                                              (gx#syntax-e _hd17891915_)))
                                         (let ((_lp-hd17931925_
                                                (##car _e17921921_))
                                               (_lp-tl17941928_
                                                (##cdr _e17921921_)))
                                           (_loop17911911_
                                            _lp-tl17941928_
                                            (cons _lp-hd17931925_
                                                  _body17951918_))))
                                       (let ((_body17961931_
                                              (reverse _body17951918_)))
                                         ((lambda (_L1935_ _L1937_ _L1938_)
                                            (if (gx#identifier? _L1938_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'define-values)
                                                      (cons (cons _L1938_ '())
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'lambda%)
                                (cons _L1937_
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g19571960_
                                                        _g19581963_)
                                                 (cons _g19571960_
                                                       _g19581963_))
                                               '()
                                               _L1935_))))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g17731868_ _g17751872_)))
                                          _body17961931_
                                          _tl17871902_
                                          _hd17861899_))))))
                         (_loop17911911_ _target17881905_ '()))
                       (_g17731868_ _g17751872_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g17731868_ _g17751872_))
                                                 (_g17731868_ _g17751872_))))
                                         (_g17731868_ _g17751872_))))
                                 (_g17731868_ _g17751872_))))
                         (_g17731868_ _g17751872_)))))
              (_g17721966_ _$stx1769_))))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#let*-values|
      (lambda (_$stx1971_)
        (let ((_g19762021_
               (lambda (_g19772017_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g19772017_))))
          (let ((_g19752122_
                 (lambda (_g19772025_)
                   (if (gx#stx-pair? _g19772025_)
                       (let ((_e19982028_ (gx#syntax-e _g19772025_)))
                         (let ((_hd19992032_ (##car _e19982028_))
                               (_tl20002035_ (##cdr _e19982028_)))
                           (if (gx#stx-pair? _tl20002035_)
                               (let ((_e20012038_ (gx#syntax-e _tl20002035_)))
                                 (let ((_hd20022042_ (##car _e20012038_))
                                       (_tl20032045_ (##cdr _e20012038_)))
                                   (if (gx#stx-pair? _hd20022042_)
                                       (let ((_e20042048_
                                              (gx#syntax-e _hd20022042_)))
                                         (let ((_hd20052052_
                                                (##car _e20042048_))
                                               (_tl20062055_
                                                (##cdr _e20042048_)))
                                           (if (gx#stx-pair/null? _tl20032045_)
                                               (if (fx>= (gx#stx-length
                                                          _tl20032045_)
                                                         '0)
                                                   (let ((_g27962_
                                                          (gx#syntax-split-splice
                                                           _tl20032045_
                                                           '0)))
                                                     (begin
                                                       (let ((_g27963_
                                                              (values-count
                                                               _g27962_)))
                                                         (if (not (fx= _g27963_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g27963_)))
               (let ((_target20072058_ (values-ref _g27962_ 0))
                     (_tl20092061_ (values-ref _g27962_ 1)))
                 (if (gx#stx-null? _tl20092061_)
                     (letrec ((_loop20102064_
                               (lambda (_hd20082068_ _body20142071_)
                                 (if (gx#stx-pair? _hd20082068_)
                                     (let ((_e20112074_
                                            (gx#syntax-e _hd20082068_)))
                                       (let ((_lp-hd20122078_
                                              (##car _e20112074_))
                                             (_lp-tl20132081_
                                              (##cdr _e20112074_)))
                                         (_loop20102064_
                                          _lp-tl20132081_
                                          (cons _lp-hd20122078_
                                                _body20142071_))))
                                     (let ((_body20152084_
                                            (reverse _body20142071_)))
                                       ((lambda (_L2088_
                                                 _L2090_
                                                 _L2091_
                                                 _L2092_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'let-values)
                                                (cons (cons _L2091_ '())
                                                      (cons (cons _L2092_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L2090_
                                (begin
                                  '#!void
                                  (foldr (lambda (_g21132116_ _g21142119_)
                                           (cons _g21132116_ _g21142119_))
                                         '()
                                         _L2088_))))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body20152084_
                                        _tl20062055_
                                        _hd20052052_
                                        _hd19992032_))))))
                       (_loop20102064_ _target20072058_ '()))
                     (_g19762021_ _g19772025_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g19762021_ _g19772025_))
                                               (_g19762021_ _g19772025_))))
                                       (_g19762021_ _g19772025_))))
                               (_g19762021_ _g19772025_))))
                       (_g19762021_ _g19772025_)))))
            (let ((_g19742204_
                   (lambda (_g19772126_)
                     (if (gx#stx-pair? _g19772126_)
                         (let ((_e19792129_ (gx#syntax-e _g19772126_)))
                           (let ((_hd19802133_ (##car _e19792129_))
                                 (_tl19812136_ (##cdr _e19792129_)))
                             (if (gx#stx-pair? _tl19812136_)
                                 (let ((_e19822139_
                                        (gx#syntax-e _tl19812136_)))
                                   (let ((_hd19832143_ (##car _e19822139_))
                                         (_tl19842146_ (##cdr _e19822139_)))
                                     (if (gx#stx-null? _hd19832143_)
                                         (if (gx#stx-pair/null? _tl19842146_)
                                             (if (fx>= (gx#stx-length
                                                        _tl19842146_)
                                                       '0)
                                                 (let ((_g27964_
                                                        (gx#syntax-split-splice
                                                         _tl19842146_
                                                         '0)))
                                                   (begin
                                                     (let ((_g27965_
                                                            (values-count
                                                             _g27964_)))
                                                       (if (not (fx= _g27965_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g27965_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target19852149_
                                                            (values-ref
                                                             _g27964_
                                                             0))
                                                           (_tl19872152_
                                                            (values-ref
                                                             _g27964_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl19872152_)
                                                           (letrec ((_loop19882155_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd19862159_ _body19922162_)
                               (if (gx#stx-pair? _hd19862159_)
                                   (let ((_e19892165_
                                          (gx#syntax-e _hd19862159_)))
                                     (let ((_lp-hd19902169_
                                            (##car _e19892165_))
                                           (_lp-tl19912172_
                                            (##cdr _e19892165_)))
                                       (_loop19882155_
                                        _lp-tl19912172_
                                        (cons _lp-hd19902169_
                                              _body19922162_))))
                                   (let ((_body19932175_
                                          (reverse _body19922162_)))
                                     ((lambda (_L2179_)
                                        (cons (gx#datum->syntax
                                               '#f
                                               'let-values)
                                              (cons '()
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g21952198_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g21962201_)
                       (cons _g21952198_ _g21962201_))
                     '()
                     _L2179_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _body19932175_))))))
                     (_loop19882155_ _target19852149_ '()))
                   (_g19752122_ _g19772126_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g19752122_ _g19772126_))
                                             (_g19752122_ _g19772126_))
                                         (_g19752122_ _g19772126_))))
                                 (_g19752122_ _g19772126_))))
                         (_g19752122_ _g19772126_)))))
              (_g19742204_ _$stx1971_))))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#let|
      (lambda (_$stx2210_)
        (let ((_g22152279_
               (lambda (_g22162275_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g22162275_))))
          (let ((_g22142364_
                 (lambda (_g22162283_)
                   (if (gx#stx-pair? _g22162283_)
                       (let ((_e22592286_ (gx#syntax-e _g22162283_)))
                         (let ((_hd22602290_ (##car _e22592286_))
                               (_tl22612293_ (##cdr _e22592286_)))
                           (if (gx#stx-pair? _tl22612293_)
                               (let ((_e22622296_ (gx#syntax-e _tl22612293_)))
                                 (let ((_hd22632300_ (##car _e22622296_))
                                       (_tl22642303_ (##cdr _e22622296_)))
                                   (if (gx#stx-pair/null? _tl22642303_)
                                       (if (fx>= (gx#stx-length _tl22642303_)
                                                 '0)
                                           (let ((_g27966_
                                                  (gx#syntax-split-splice
                                                   _tl22642303_
                                                   '0)))
                                             (begin
                                               (let ((_g27967_
                                                      (values-count _g27966_)))
                                                 (if (not (fx= _g27967_ 2))
                                                     (error "Context expects 2 values"
                                                            _g27967_)))
                                               (let ((_target22652306_
                                                      (values-ref _g27966_ 0))
                                                     (_tl22672309_
                                                      (values-ref _g27966_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl22672309_)
                                                     (letrec ((_loop22682312_
                                                               (lambda (_hd22662316_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _body22722319_)
                         (if (gx#stx-pair? _hd22662316_)
                             (let ((_e22692322_ (gx#syntax-e _hd22662316_)))
                               (let ((_lp-hd22702326_ (##car _e22692322_))
                                     (_lp-tl22712329_ (##cdr _e22692322_)))
                                 (_loop22682312_
                                  _lp-tl22712329_
                                  (cons _lp-hd22702326_ _body22722319_))))
                             (let ((_body22732332_ (reverse _body22722319_)))
                               ((lambda (_L2336_ _L2338_)
                                  (cons (gx#datum->syntax '#f '~let)
                                        (cons (gx#datum->syntax
                                               '#f
                                               'let-values)
                                              (cons _L2338_
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g23552358_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g23562361_)
                       (cons _g23552358_ _g23562361_))
                     '()
                     _L2336_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _body22732332_
                                _hd22632300_))))))
               (_loop22682312_ _target22652306_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g22152279_
                                                      _g22162283_)))))
                                           (_g22152279_ _g22162283_))
                                       (_g22152279_ _g22162283_))))
                               (_g22152279_ _g22162283_))))
                       (_g22152279_ _g22162283_)))))
            (let ((_g22132540_
                   (lambda (_g22162368_)
                     (if (gx#stx-pair? _g22162368_)
                         (let ((_e22222371_ (gx#syntax-e _g22162368_)))
                           (let ((_hd22232375_ (##car _e22222371_))
                                 (_tl22242378_ (##cdr _e22222371_)))
                             (if (gx#stx-pair? _tl22242378_)
                                 (let ((_e22252381_
                                        (gx#syntax-e _tl22242378_)))
                                   (let ((_hd22262385_ (##car _e22252381_))
                                         (_tl22272388_ (##cdr _e22252381_)))
                                     (if (gx#stx-pair? _tl22272388_)
                                         (let ((_e22282391_
                                                (gx#syntax-e _tl22272388_)))
                                           (let ((_hd22292395_
                                                  (##car _e22282391_))
                                                 (_tl22302398_
                                                  (##cdr _e22282391_)))
                                             (if (gx#stx-pair/null?
                                                  _hd22292395_)
                                                 (if (fx>= (gx#stx-length
                                                            _hd22292395_)
                                                           '0)
                                                     (let ((_g27968_
                                                            (gx#syntax-split-splice
                                                             _hd22292395_
                                                             '0)))
                                                       (begin
                                                         (let ((_g27969_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g27968_)))
                   (if (not (fx= _g27969_ 2))
                       (error "Context expects 2 values" _g27969_)))
                 (let ((_target22312401_ (values-ref _g27968_ 0))
                       (_tl22332404_ (values-ref _g27968_ 1)))
                   (letrec ((_loop22342407_
                             (lambda (_hd22322411_ _arg22382414_ _var22392416_)
                               (if (gx#stx-pair? _hd22322411_)
                                   (let ((_e22352419_
                                          (gx#syntax-e _hd22322411_)))
                                     (let ((_lp-hd22362423_
                                            (##car _e22352419_))
                                           (_lp-tl22372426_
                                            (##cdr _e22352419_)))
                                       (if (gx#stx-pair? _lp-hd22362423_)
                                           (let ((_e22422429_
                                                  (gx#syntax-e
                                                   _lp-hd22362423_)))
                                             (let ((_hd22432433_
                                                    (##car _e22422429_))
                                                   (_tl22442436_
                                                    (##cdr _e22422429_)))
                                               (if (gx#stx-pair? _tl22442436_)
                                                   (let ((_e22452439_
                                                          (gx#syntax-e
                                                           _tl22442436_)))
                                                     (let ((_hd22462443_
                                                            (##car _e22452439_))
                                                           (_tl22472446_
                                                            (##cdr _e22452439_)))
                                                       (if (gx#stx-null?
                                                            _tl22472446_)
                                                           (_loop22342407_
                                                            _lp-tl22372426_
                                                            (cons _hd22462443_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _arg22382414_)
                    (cons _hd22432433_ _var22392416_))
                   (_g22142364_ _g22162368_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g22142364_ _g22162368_))))
                                           (_g22142364_ _g22162368_))))
                                   (let ((_arg22402449_
                                          (reverse _arg22382414_))
                                         (_var22412452_
                                          (reverse _var22392416_)))
                                     (if (gx#stx-pair/null? _tl22302398_)
                                         (if (fx>= (gx#stx-length _tl22302398_)
                                                   '0)
                                             (let ((_g27970_
                                                    (gx#syntax-split-splice
                                                     _tl22302398_
                                                     '0)))
                                               (begin
                                                 (let ((_g27971_
                                                        (values-count
                                                         _g27970_)))
                                                   (if (not (fx= _g27971_ 2))
                                                       (error "Context expects 2 values"
                                                              _g27971_)))
                                                 (let ((_target22482455_
                                                        (values-ref
                                                         _g27970_
                                                         0))
                                                       (_tl22502458_
                                                        (values-ref
                                                         _g27970_
                                                         1)))
                                                   (if (gx#stx-null?
                                                        _tl22502458_)
                                                       (letrec ((_loop22512461_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd22492465_ _body22552468_)
                           (if (gx#stx-pair? _hd22492465_)
                               (let ((_e22522471_ (gx#syntax-e _hd22492465_)))
                                 (let ((_lp-hd22532475_ (##car _e22522471_))
                                       (_lp-tl22542478_ (##cdr _e22522471_)))
                                   (_loop22512461_
                                    _lp-tl22542478_
                                    (cons _lp-hd22532475_ _body22552468_))))
                               (let ((_body22562481_ (reverse _body22552468_)))
                                 ((lambda (_L2485_
                                           _L2487_
                                           _L2488_
                                           _L2489_
                                           _L2490_)
                                    (if (gx#identifier? _L2490_)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'letrec-values)
                                                    (cons (cons (cons (cons _L2490_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons (cons (gx#datum->syntax '#f 'lambda%)
                                          (cons (begin
                                                  '#!void
                                                  (foldr (lambda (_g25152522_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g25162525_)
                   (cons _g25152522_ _g25162525_))
                 _L2487_
                 _L2489_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (begin
                                                  '#!void
                                                  (foldr (lambda (_g25172528_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g25182531_)
                   (cons _g25172528_ _g25182531_))
                 '()
                 _L2485_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))
                        '())
                  (cons _L2490_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g25192534_
                                                                _g25202537_)
                                                         (cons _g25192534_
                                                               _g25202537_))
                                                       '()
                                                       _L2488_)))
                                        (_g22142364_ _g22162368_)))
                                  _body22562481_
                                  _tl22332404_
                                  _arg22402449_
                                  _var22412452_
                                  _hd22262385_))))))
                 (_loop22512461_ _target22482455_ '()))
               (_g22142364_ _g22162368_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g22142364_ _g22162368_))
                                         (_g22142364_ _g22162368_)))))))
                     (_loop22342407_ _target22312401_ '() '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g22142364_ _g22162368_))
                                                 (_g22142364_ _g22162368_))))
                                         (_g22142364_ _g22162368_))))
                                 (_g22142364_ _g22162368_))))
                         (_g22142364_ _g22162368_)))))
              (_g22132540_ _$stx2210_))))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#let*|
      (lambda (_$stx2547_)
        (let ((_g25512575_
               (lambda (_g25522571_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g25522571_))))
          (let ((_g25502660_
                 (lambda (_g25522579_)
                   (if (gx#stx-pair? _g25522579_)
                       (let ((_e25552582_ (gx#syntax-e _g25522579_)))
                         (let ((_hd25562586_ (##car _e25552582_))
                               (_tl25572589_ (##cdr _e25552582_)))
                           (if (gx#stx-pair? _tl25572589_)
                               (let ((_e25582592_ (gx#syntax-e _tl25572589_)))
                                 (let ((_hd25592596_ (##car _e25582592_))
                                       (_tl25602599_ (##cdr _e25582592_)))
                                   (if (gx#stx-pair/null? _tl25602599_)
                                       (if (fx>= (gx#stx-length _tl25602599_)
                                                 '0)
                                           (let ((_g27972_
                                                  (gx#syntax-split-splice
                                                   _tl25602599_
                                                   '0)))
                                             (begin
                                               (let ((_g27973_
                                                      (values-count _g27972_)))
                                                 (if (not (fx= _g27973_ 2))
                                                     (error "Context expects 2 values"
                                                            _g27973_)))
                                               (let ((_target25612602_
                                                      (values-ref _g27972_ 0))
                                                     (_tl25632605_
                                                      (values-ref _g27972_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl25632605_)
                                                     (letrec ((_loop25642608_
                                                               (lambda (_hd25622612_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _body25682615_)
                         (if (gx#stx-pair? _hd25622612_)
                             (let ((_e25652618_ (gx#syntax-e _hd25622612_)))
                               (let ((_lp-hd25662622_ (##car _e25652618_))
                                     (_lp-tl25672625_ (##cdr _e25652618_)))
                                 (_loop25642608_
                                  _lp-tl25672625_
                                  (cons _lp-hd25662622_ _body25682615_))))
                             (let ((_body25692628_ (reverse _body25682615_)))
                               ((lambda (_L2632_ _L2634_)
                                  (cons (gx#datum->syntax '#f '~let)
                                        (cons (gx#datum->syntax
                                               '#f
                                               'let*-values)
                                              (cons _L2634_
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g26512654_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g26522657_)
                       (cons _g26512654_ _g26522657_))
                     '()
                     _L2632_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _body25692628_
                                _hd25592596_))))))
               (_loop25642608_ _target25612602_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g25512575_
                                                      _g25522579_)))))
                                           (_g25512575_ _g25522579_))
                                       (_g25512575_ _g25522579_))))
                               (_g25512575_ _g25522579_))))
                       (_g25512575_ _g25522579_)))))
            (_g25502660_ _$stx2547_)))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#letrec|
      (lambda (_$stx2665_)
        (let ((_g26692693_
               (lambda (_g26702689_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g26702689_))))
          (let ((_g26682778_
                 (lambda (_g26702697_)
                   (if (gx#stx-pair? _g26702697_)
                       (let ((_e26732700_ (gx#syntax-e _g26702697_)))
                         (let ((_hd26742704_ (##car _e26732700_))
                               (_tl26752707_ (##cdr _e26732700_)))
                           (if (gx#stx-pair? _tl26752707_)
                               (let ((_e26762710_ (gx#syntax-e _tl26752707_)))
                                 (let ((_hd26772714_ (##car _e26762710_))
                                       (_tl26782717_ (##cdr _e26762710_)))
                                   (if (gx#stx-pair/null? _tl26782717_)
                                       (if (fx>= (gx#stx-length _tl26782717_)
                                                 '0)
                                           (let ((_g27974_
                                                  (gx#syntax-split-splice
                                                   _tl26782717_
                                                   '0)))
                                             (begin
                                               (let ((_g27975_
                                                      (values-count _g27974_)))
                                                 (if (not (fx= _g27975_ 2))
                                                     (error "Context expects 2 values"
                                                            _g27975_)))
                                               (let ((_target26792720_
                                                      (values-ref _g27974_ 0))
                                                     (_tl26812723_
                                                      (values-ref _g27974_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl26812723_)
                                                     (letrec ((_loop26822726_
                                                               (lambda (_hd26802730_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _body26862733_)
                         (if (gx#stx-pair? _hd26802730_)
                             (let ((_e26832736_ (gx#syntax-e _hd26802730_)))
                               (let ((_lp-hd26842740_ (##car _e26832736_))
                                     (_lp-tl26852743_ (##cdr _e26832736_)))
                                 (_loop26822726_
                                  _lp-tl26852743_
                                  (cons _lp-hd26842740_ _body26862733_))))
                             (let ((_body26872746_ (reverse _body26862733_)))
                               ((lambda (_L2750_ _L2752_)
                                  (cons (gx#datum->syntax '#f '~let)
                                        (cons (gx#datum->syntax
                                               '#f
                                               'letrec-values)
                                              (cons _L2752_
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g27692772_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g27702775_)
                       (cons _g27692772_ _g27702775_))
                     '()
                     _L2750_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _body26872746_
                                _hd26772714_))))))
               (_loop26822726_ _target26792720_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g26692693_
                                                      _g26702697_)))))
                                           (_g26692693_ _g26702697_))
                                       (_g26692693_ _g26702697_))))
                               (_g26692693_ _g26702697_))))
                       (_g26692693_ _g26702697_)))))
            (_g26682778_ _$stx2665_)))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#letrec*|
      (lambda (_$stx2783_)
        (let ((_g27872811_
               (lambda (_g27882807_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g27882807_))))
          (let ((_g27862896_
                 (lambda (_g27882815_)
                   (if (gx#stx-pair? _g27882815_)
                       (let ((_e27912818_ (gx#syntax-e _g27882815_)))
                         (let ((_hd27922822_ (##car _e27912818_))
                               (_tl27932825_ (##cdr _e27912818_)))
                           (if (gx#stx-pair? _tl27932825_)
                               (let ((_e27942828_ (gx#syntax-e _tl27932825_)))
                                 (let ((_hd27952832_ (##car _e27942828_))
                                       (_tl27962835_ (##cdr _e27942828_)))
                                   (if (gx#stx-pair/null? _tl27962835_)
                                       (if (fx>= (gx#stx-length _tl27962835_)
                                                 '0)
                                           (let ((_g27976_
                                                  (gx#syntax-split-splice
                                                   _tl27962835_
                                                   '0)))
                                             (begin
                                               (let ((_g27977_
                                                      (values-count _g27976_)))
                                                 (if (not (fx= _g27977_ 2))
                                                     (error "Context expects 2 values"
                                                            _g27977_)))
                                               (let ((_target27972838_
                                                      (values-ref _g27976_ 0))
                                                     (_tl27992841_
                                                      (values-ref _g27976_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl27992841_)
                                                     (letrec ((_loop28002844_
                                                               (lambda (_hd27982848_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _body28042851_)
                         (if (gx#stx-pair? _hd27982848_)
                             (let ((_e28012854_ (gx#syntax-e _hd27982848_)))
                               (let ((_lp-hd28022858_ (##car _e28012854_))
                                     (_lp-tl28032861_ (##cdr _e28012854_)))
                                 (_loop28002844_
                                  _lp-tl28032861_
                                  (cons _lp-hd28022858_ _body28042851_))))
                             (let ((_body28052864_ (reverse _body28042851_)))
                               ((lambda (_L2868_ _L2870_)
                                  (cons (gx#datum->syntax '#f '~let)
                                        (cons (gx#datum->syntax
                                               '#f
                                               'letrec*-values)
                                              (cons _L2870_
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g28872890_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g28882893_)
                       (cons _g28872890_ _g28882893_))
                     '()
                     _L2868_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _body28052864_
                                _hd27952832_))))))
               (_loop28002844_ _target27972838_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g27872811_
                                                      _g27882815_)))))
                                           (_g27872811_ _g27882815_))
                                       (_g27872811_ _g27882815_))))
                               (_g27872811_ _g27882815_))))
                       (_g27872811_ _g27882815_)))))
            (_g27862896_ _$stx2783_)))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#~let|
      (lambda (_stx2901_)
        (let ((_let-head?2904_
               (lambda (_x3384_)
                 (let ((_g33883399_
                        (lambda (_g33893395_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g33893395_))))
                   (let ((_g33873410_
                          (lambda (_g33893403_)
                            ((lambda () (gx#identifier? _x3384_))))))
                     (let ((_g33863440_
                            (lambda (_g33893414_)
                              (if (gx#stx-pair? _g33893414_)
                                  (let ((_e33913417_
                                         (gx#syntax-e _g33893414_)))
                                    (let ((_hd33923421_ (##car _e33913417_))
                                          (_tl33933424_ (##cdr _e33913417_)))
                                      (if (gx#identifier? _hd33923421_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core::<sugar>::<sugar:1>[1]#_g27985_|
                                               _hd33923421_)
                                              ((lambda (_L3427_)
                                                 (gx#stx-andmap
                                                  gx#identifier?
                                                  _L3427_))
                                               _tl33933424_)
                                              (_g33873410_ _g33893414_))
                                          (_g33873410_ _g33893414_))))
                                  (_g33873410_ _g33893414_)))))
                       (_g33863440_ _x3384_)))))))
          (let ((_let-head2906_
                 (lambda (_x3324_)
                   (let ((_g33283339_
                          (lambda (_g33293335_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g33293335_))))
                     (let ((_g33273350_
                            (lambda (_g33293343_)
                              ((lambda () (list _x3324_))))))
                       (let ((_g33263380_
                              (lambda (_g33293354_)
                                (if (gx#stx-pair? _g33293354_)
                                    (let ((_e33313357_
                                           (gx#syntax-e _g33293354_)))
                                      (let ((_hd33323361_ (##car _e33313357_))
                                            (_tl33333364_ (##cdr _e33313357_)))
                                        (if (gx#identifier? _hd33323361_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core::<sugar>::<sugar:1>[1]#_g27984_|
                                                 _hd33323361_)
                                                ((lambda (_L3367_) _L3367_)
                                                 _tl33333364_)
                                                (_g33273350_ _g33293354_))
                                            (_g33273350_ _g33293354_))))
                                    (_g33273350_ _g33293354_)))))
                         (_g33263380_ _x3324_)))))))
            (let ((_g29092975_
                   (lambda (_g29102971_)
                     (gx#raise-syntax-error '#f '"Bad syntax" _g29102971_))))
              (let ((_g29083236_
                     (lambda (_g29102979_)
                       (if (gx#stx-pair? _g29102979_)
                           (let ((_e29352982_ (gx#syntax-e _g29102979_)))
                             (let ((_hd29362986_ (##car _e29352982_))
                                   (_tl29372989_ (##cdr _e29352982_)))
                               (if (gx#stx-pair? _tl29372989_)
                                   (let ((_e29382992_
                                          (gx#syntax-e _tl29372989_)))
                                     (let ((_hd29392996_ (##car _e29382992_))
                                           (_tl29402999_ (##cdr _e29382992_)))
                                       (if (gx#stx-pair? _tl29402999_)
                                           (let ((_e29413002_
                                                  (gx#syntax-e _tl29402999_)))
                                             (let ((_hd29423006_
                                                    (##car _e29413002_))
                                                   (_tl29433009_
                                                    (##cdr _e29413002_)))
                                               (if (gx#stx-pair/null?
                                                    _hd29423006_)
                                                   (if (fx>= (gx#stx-length
                                                              _hd29423006_)
                                                             '0)
                                                       (let ((_g27978_
                                                              (gx#syntax-split-splice
                                                               _hd29423006_
                                                               '0)))
                                                         (begin
                                                           (let ((_g27979_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g27978_)))
                     (if (not (fx= _g27979_ 2))
                         (error "Context expects 2 values" _g27979_)))
                   (let ((_target29443012_ (values-ref _g27978_ 0))
                         (_tl29463015_ (values-ref _g27978_ 1)))
                     (if (gx#stx-null? _tl29463015_)
                         (letrec ((_loop29473018_
                                   (lambda (_hd29453022_
                                            _e29513025_
                                            _hd29523027_)
                                     (if (gx#stx-pair? _hd29453022_)
                                         (let ((_e29483030_
                                                (gx#syntax-e _hd29453022_)))
                                           (let ((_lp-hd29493034_
                                                  (##car _e29483030_))
                                                 (_lp-tl29503037_
                                                  (##cdr _e29483030_)))
                                             (if (gx#stx-pair? _lp-hd29493034_)
                                                 (let ((_e29553040_
                                                        (gx#syntax-e
                                                         _lp-hd29493034_)))
                                                   (let ((_hd29563044_
                                                          (##car _e29553040_))
                                                         (_tl29573047_
                                                          (##cdr _e29553040_)))
                                                     (if (gx#stx-pair?
                                                          _tl29573047_)
                                                         (let ((_e29583050_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl29573047_)))
                   (let ((_hd29593054_ (##car _e29583050_))
                         (_tl29603057_ (##cdr _e29583050_)))
                     (if (gx#stx-null? _tl29603057_)
                         (_loop29473018_
                          _lp-tl29503037_
                          (cons _hd29593054_ _e29513025_)
                          (cons _hd29563044_ _hd29523027_))
                         (_g29092975_ _g29102979_))))
                 (_g29092975_ _g29102979_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g29092975_ _g29102979_))))
                                         (let ((_e29533060_
                                                (reverse _e29513025_))
                                               (_hd29543063_
                                                (reverse _hd29523027_)))
                                           (if (gx#stx-pair/null? _tl29433009_)
                                               (if (fx>= (gx#stx-length
                                                          _tl29433009_)
                                                         '0)
                                                   (let ((_g27980_
                                                          (gx#syntax-split-splice
                                                           _tl29433009_
                                                           '0)))
                                                     (begin
                                                       (let ((_g27981_
                                                              (values-count
                                                               _g27980_)))
                                                         (if (not (fx= _g27981_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g27981_)))
               (let ((_target29613066_ (values-ref _g27980_ 0))
                     (_tl29633069_ (values-ref _g27980_ 1)))
                 (if (gx#stx-null? _tl29633069_)
                     (letrec ((_loop29643072_
                               (lambda (_hd29623076_ _body29683079_)
                                 (if (gx#stx-pair? _hd29623076_)
                                     (let ((_e29653082_
                                            (gx#syntax-e _hd29623076_)))
                                       (let ((_lp-hd29663086_
                                              (##car _e29653082_))
                                             (_lp-tl29673089_
                                              (##cdr _e29653082_)))
                                         (_loop29643072_
                                          _lp-tl29673089_
                                          (cons _lp-hd29663086_
                                                _body29683079_))))
                                     (let ((_body29693092_
                                            (reverse _body29683079_)))
                                       ((lambda (_L3096_
                                                 _L3098_
                                                 _L3099_
                                                 _L3100_)
                                          (if (gx#stx-andmap
                                               _let-head?2904_
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g31263129_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g31273132_)
                  (cons _g31263129_ _g31273132_))
                '()
                _L3099_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g31353152_
                                                     (lambda (_g31363148_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g31363148_))))
                                                (let ((_g31343224_
                                                       (lambda (_g31363156_)
                                                         (if (gx#stx-pair/null?
                                                              _g31363156_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g31363156_)
                               '0)
                         (let ((_g27982_
                                (gx#syntax-split-splice _g31363156_ '0)))
                           (begin
                             (let ((_g27983_ (values-count _g27982_)))
                               (if (not (fx= _g27983_ 2))
                                   (error "Context expects 2 values"
                                          _g27983_)))
                             (let ((_target31383159_ (values-ref _g27982_ 0))
                                   (_tl31403162_ (values-ref _g27982_ 1)))
                               (if (gx#stx-null? _tl31403162_)
                                   (letrec ((_loop31413165_
                                             (lambda (_hd31393169_
                                                      _hd-bind31453172_)
                                               (if (gx#stx-pair? _hd31393169_)
                                                   (let ((_e31423175_
                                                          (gx#syntax-e
                                                           _hd31393169_)))
                                                     (let ((_lp-hd31433179_
                                                            (##car _e31423175_))
                                                           (_lp-tl31443182_
                                                            (##cdr _e31423175_)))
                                                       (_loop31413165_
                                                        _lp-tl31443182_
                                                        (cons _lp-hd31433179_
                                                              _hd-bind31453172_))))
                                                   (let ((_hd-bind31463185_
                                                          (reverse _hd-bind31453172_)))
                                                     ((lambda (_L3189_)
                                                        (let ()
                                                          (cons _L3100_
                                                                (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (gx#syntax-check-splice-targets
                                 _L3098_
                                 _L3189_)
                                (foldr (lambda (_g32043210_
                                                _g32053213_
                                                _g32063215_)
                                         (cons (cons _g32053213_
                                                     (cons _g32043210_ '()))
                                               _g32063215_))
                                       '()
                                       _L3098_
                                       _L3189_))
                              (begin
                                '#!void
                                (foldr (lambda (_g32073218_ _g32083221_)
                                         (cons _g32073218_ _g32083221_))
                                       '()
                                       _L3096_))))))
              _hd-bind31463185_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop31413165_ _target31383159_ '()))
                                   (_g31353152_ _g31363156_)))))
                         (_g31353152_ _g31363156_))
                     (_g31353152_ _g31363156_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g31343224_
                                                   (gx#stx-map
                                                    _let-head2906_
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g32273230_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g32283233_)
                       (cons _g32273230_ _g32283233_))
                     '()
                     _L3099_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g29092975_ _g29102979_)))
                                        _body29693092_
                                        _e29533060_
                                        _hd29543063_
                                        _hd29392996_))))))
                       (_loop29643072_ _target29613066_ '()))
                     (_g29092975_ _g29102979_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g29092975_ _g29102979_))
                                               (_g29092975_ _g29102979_)))))))
                           (_loop29473018_ _target29443012_ '() '()))
                         (_g29092975_ _g29102979_)))))
               (_g29092975_ _g29102979_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g29092975_ _g29102979_))))
                                           (_g29092975_ _g29102979_))))
                                   (_g29092975_ _g29102979_))))
                           (_g29092975_ _g29102979_)))))
                (let ((_g29073320_
                       (lambda (_g29103240_)
                         (if (gx#stx-pair? _g29103240_)
                             (let ((_e29163243_ (gx#syntax-e _g29103240_)))
                               (let ((_hd29173247_ (##car _e29163243_))
                                     (_tl29183250_ (##cdr _e29163243_)))
                                 (if (gx#stx-pair? _tl29183250_)
                                     (let ((_e29193253_
                                            (gx#syntax-e _tl29183250_)))
                                       (let ((_hd29203257_ (##car _e29193253_))
                                             (_tl29213260_
                                              (##cdr _e29193253_)))
                                         (if (gx#stx-pair? _tl29213260_)
                                             (let ((_e29223263_
                                                    (gx#syntax-e
                                                     _tl29213260_)))
                                               (let ((_hd29233267_
                                                      (##car _e29223263_))
                                                     (_tl29243270_
                                                      (##cdr _e29223263_)))
                                                 (if (gx#stx-pair?
                                                      _hd29233267_)
                                                     (let ((_e29253273_
                                                            (gx#syntax-e
                                                             _hd29233267_)))
                                                       (let ((_hd29263277_
                                                              (##car _e29253273_))
                                                             (_tl29273280_
                                                              (##cdr _e29253273_)))
                                                         (if (gx#stx-pair?
                                                              _tl29273280_)
                                                             (let ((_e29283283_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl29273280_)))
                       (let ((_hd29293287_ (##car _e29283283_))
                             (_tl29303290_ (##cdr _e29283283_)))
                         (if (gx#stx-null? _tl29303290_)
                             ((lambda (_L3293_ _L3295_ _L3296_ _L3297_ _L3298_)
                                (if (_let-head?2904_ _L3296_)
                                    (cons _L3298_
                                          (cons _L3297_
                                                (cons (cons (cons _L3296_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L3295_ '()))
                    '())
              _L3293_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_g29083236_ _g29103240_)))
                              _tl29243270_
                              _hd29293287_
                              _hd29263277_
                              _hd29203257_
                              _hd29173247_)
                             (_g29083236_ _g29103240_))))
                     (_g29083236_ _g29103240_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g29083236_
                                                      _g29103240_))))
                                             (_g29083236_ _g29103240_))))
                                     (_g29083236_ _g29103240_))))
                             (_g29083236_ _g29103240_)))))
                  (_g29073320_ _stx2901_))))))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#and|
      (lambda (_$stx3447_)
        (let ((_g34533479_
               (lambda (_g34543475_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g34543475_))))
          (let ((_g34523524_
                 (lambda (_g34543483_)
                   (if (gx#stx-pair? _g34543483_)
                       (let ((_e34683486_ (gx#syntax-e _g34543483_)))
                         (let ((_hd34693490_ (##car _e34683486_))
                               (_tl34703493_ (##cdr _e34683486_)))
                           (if (gx#stx-pair? _tl34703493_)
                               (let ((_e34713496_ (gx#syntax-e _tl34703493_)))
                                 (let ((_hd34723500_ (##car _e34713496_))
                                       (_tl34733503_ (##cdr _e34713496_)))
                                   ((lambda (_L3506_ _L3508_ _L3509_)
                                      (cons (gx#datum->syntax '#f 'if)
                                            (cons _L3508_
                                                  (cons (cons _L3509_ _L3506_)
                                                        (cons '#f '())))))
                                    _tl34733503_
                                    _hd34723500_
                                    _hd34693490_)))
                               (_g34533479_ _g34543483_))))
                       (_g34533479_ _g34543483_)))))
            (let ((_g34513564_
                   (lambda (_g34543528_)
                     (if (gx#stx-pair? _g34543528_)
                         (let ((_e34593531_ (gx#syntax-e _g34543528_)))
                           (let ((_hd34603535_ (##car _e34593531_))
                                 (_tl34613538_ (##cdr _e34593531_)))
                             (if (gx#stx-pair? _tl34613538_)
                                 (let ((_e34623541_
                                        (gx#syntax-e _tl34613538_)))
                                   (let ((_hd34633545_ (##car _e34623541_))
                                         (_tl34643548_ (##cdr _e34623541_)))
                                     (if (gx#stx-null? _tl34643548_)
                                         ((lambda (_L3551_) _L3551_)
                                          _hd34633545_)
                                         (_g34523524_ _g34543528_))))
                                 (_g34523524_ _g34543528_))))
                         (_g34523524_ _g34543528_)))))
              (let ((_g34503585_
                     (lambda (_g34543568_)
                       (if (gx#stx-pair? _g34543568_)
                           (let ((_e34553571_ (gx#syntax-e _g34543568_)))
                             (let ((_hd34563575_ (##car _e34553571_))
                                   (_tl34573578_ (##cdr _e34553571_)))
                               (if (gx#stx-null? _tl34573578_)
                                   ((lambda () '#t))
                                   (_g34513564_ _g34543568_))))
                           (_g34513564_ _g34543568_)))))
                (_g34503585_ _$stx3447_)))))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#or|
      (lambda (_$stx3589_)
        (let ((_g35953621_
               (lambda (_g35963617_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g35963617_))))
          (let ((_g35943666_
                 (lambda (_g35963625_)
                   (if (gx#stx-pair? _g35963625_)
                       (let ((_e36103628_ (gx#syntax-e _g35963625_)))
                         (let ((_hd36113632_ (##car _e36103628_))
                               (_tl36123635_ (##cdr _e36103628_)))
                           (if (gx#stx-pair? _tl36123635_)
                               (let ((_e36133638_ (gx#syntax-e _tl36123635_)))
                                 (let ((_hd36143642_ (##car _e36133638_))
                                       (_tl36153645_ (##cdr _e36133638_)))
                                   ((lambda (_L3648_ _L3650_ _L3651_)
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         '$e)
                                                        (cons _L3650_ '()))
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'if)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '$e)
                            (cons (gx#datum->syntax '#f '$e)
                                  (cons (cons _L3651_ _L3648_) '()))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _tl36153645_
                                    _hd36143642_
                                    _hd36113632_)))
                               (_g35953621_ _g35963625_))))
                       (_g35953621_ _g35963625_)))))
            (let ((_g35933706_
                   (lambda (_g35963670_)
                     (if (gx#stx-pair? _g35963670_)
                         (let ((_e36013673_ (gx#syntax-e _g35963670_)))
                           (let ((_hd36023677_ (##car _e36013673_))
                                 (_tl36033680_ (##cdr _e36013673_)))
                             (if (gx#stx-pair? _tl36033680_)
                                 (let ((_e36043683_
                                        (gx#syntax-e _tl36033680_)))
                                   (let ((_hd36053687_ (##car _e36043683_))
                                         (_tl36063690_ (##cdr _e36043683_)))
                                     (if (gx#stx-null? _tl36063690_)
                                         ((lambda (_L3693_) _L3693_)
                                          _hd36053687_)
                                         (_g35943666_ _g35963670_))))
                                 (_g35943666_ _g35963670_))))
                         (_g35943666_ _g35963670_)))))
              (let ((_g35923727_
                     (lambda (_g35963710_)
                       (if (gx#stx-pair? _g35963710_)
                           (let ((_e35973713_ (gx#syntax-e _g35963710_)))
                             (let ((_hd35983717_ (##car _e35973713_))
                                   (_tl35993720_ (##cdr _e35973713_)))
                               (if (gx#stx-null? _tl35993720_)
                                   ((lambda () '#f))
                                   (_g35933706_ _g35963710_))))
                           (_g35933706_ _g35963710_)))))
                (_g35923727_ _$stx3589_)))))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#cond|
      (lambda (_$stx3731_)
        (let ((_g37403831_
               (lambda (_g37413827_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g37413827_))))
          (let ((_g37393932_
                 (lambda (_g37413835_)
                   (if (gx#stx-pair? _g37413835_)
                       (let ((_e38083838_ (gx#syntax-e _g37413835_)))
                         (let ((_hd38093842_ (##car _e38083838_))
                               (_tl38103845_ (##cdr _e38083838_)))
                           (if (gx#stx-pair? _tl38103845_)
                               (let ((_e38113848_ (gx#syntax-e _tl38103845_)))
                                 (let ((_hd38123852_ (##car _e38113848_))
                                       (_tl38133855_ (##cdr _e38113848_)))
                                   (if (gx#stx-pair? _hd38123852_)
                                       (let ((_e38143858_
                                              (gx#syntax-e _hd38123852_)))
                                         (let ((_hd38153862_
                                                (##car _e38143858_))
                                               (_tl38163865_
                                                (##cdr _e38143858_)))
                                           (if (gx#stx-pair/null? _tl38163865_)
                                               (if (fx>= (gx#stx-length
                                                          _tl38163865_)
                                                         '0)
                                                   (let ((_g27986_
                                                          (gx#syntax-split-splice
                                                           _tl38163865_
                                                           '0)))
                                                     (begin
                                                       (let ((_g27987_
                                                              (values-count
                                                               _g27986_)))
                                                         (if (not (fx= _g27987_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g27987_)))
               (let ((_target38173868_ (values-ref _g27986_ 0))
                     (_tl38193871_ (values-ref _g27986_ 1)))
                 (if (gx#stx-null? _tl38193871_)
                     (letrec ((_loop38203874_
                               (lambda (_hd38183878_ _body38243881_)
                                 (if (gx#stx-pair? _hd38183878_)
                                     (let ((_e38213884_
                                            (gx#syntax-e _hd38183878_)))
                                       (let ((_lp-hd38223888_
                                              (##car _e38213884_))
                                             (_lp-tl38233891_
                                              (##cdr _e38213884_)))
                                         (_loop38203874_
                                          _lp-tl38233891_
                                          (cons _lp-hd38223888_
                                                _body38243881_))))
                                     (let ((_body38253894_
                                            (reverse _body38243881_)))
                                       ((lambda (_L3898_
                                                 _L3900_
                                                 _L3901_
                                                 _L3902_)
                                          (cons (gx#datum->syntax '#f 'if)
                                                (cons _L3901_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'begin)
                          (begin
                            '#!void
                            (foldr (lambda (_g39233926_ _g39243929_)
                                     (cons _g39233926_ _g39243929_))
                                   '()
                                   _L3900_)))
                    (cons (cons _L3902_ _L3898_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _tl38133855_
                                        _body38253894_
                                        _hd38153862_
                                        _hd38093842_))))))
                       (_loop38203874_ _target38173868_ '()))
                     (_g37403831_ _g37413835_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g37403831_ _g37413835_))
                                               (_g37403831_ _g37413835_))))
                                       (_g37403831_ _g37413835_))))
                               (_g37403831_ _g37413835_))))
                       (_g37403831_ _g37413835_)))))
            (let ((_g37383988_
                   (lambda (_g37413936_)
                     (if (gx#stx-pair? _g37413936_)
                         (let ((_e37953939_ (gx#syntax-e _g37413936_)))
                           (let ((_hd37963943_ (##car _e37953939_))
                                 (_tl37973946_ (##cdr _e37953939_)))
                             (if (gx#stx-pair? _tl37973946_)
                                 (let ((_e37983949_
                                        (gx#syntax-e _tl37973946_)))
                                   (let ((_hd37993953_ (##car _e37983949_))
                                         (_tl38003956_ (##cdr _e37983949_)))
                                     (if (gx#stx-pair? _hd37993953_)
                                         (let ((_e38013959_
                                                (gx#syntax-e _hd37993953_)))
                                           (let ((_hd38023963_
                                                  (##car _e38013959_))
                                                 (_tl38033966_
                                                  (##cdr _e38013959_)))
                                             (if (gx#stx-null? _tl38033966_)
                                                 ((lambda (_L3969_
                                                           _L3971_
                                                           _L3972_)
                                                    (cons _L3972_
                                                          (cons (cons _L3971_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#datum->syntax '#f '=>)
                                    (cons (gx#datum->syntax '#f 'values) '())))
                        _L3969_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _tl38003956_
                                                  _hd38023963_
                                                  _hd37963943_)
                                                 (_g37393932_ _g37413936_))))
                                         (_g37393932_ _g37413936_))))
                                 (_g37393932_ _g37413936_))))
                         (_g37393932_ _g37413936_)))))
              (let ((_g37374070_
                     (lambda (_g37413992_)
                       (if (gx#stx-pair? _g37413992_)
                           (let ((_e37773995_ (gx#syntax-e _g37413992_)))
                             (let ((_hd37783999_ (##car _e37773995_))
                                   (_tl37794002_ (##cdr _e37773995_)))
                               (if (gx#stx-pair? _tl37794002_)
                                   (let ((_e37804005_
                                          (gx#syntax-e _tl37794002_)))
                                     (let ((_hd37814009_ (##car _e37804005_))
                                           (_tl37824012_ (##cdr _e37804005_)))
                                       (if (gx#stx-pair? _hd37814009_)
                                           (let ((_e37834015_
                                                  (gx#syntax-e _hd37814009_)))
                                             (let ((_hd37844019_
                                                    (##car _e37834015_))
                                                   (_tl37854022_
                                                    (##cdr _e37834015_)))
                                               (if (gx#stx-pair? _tl37854022_)
                                                   (let ((_e37864025_
                                                          (gx#syntax-e
                                                           _tl37854022_)))
                                                     (let ((_hd37874029_
                                                            (##car _e37864025_))
                                                           (_tl37884032_
                                                            (##cdr _e37864025_)))
                                                       (if (gx#identifier?
                                                            _hd37874029_)
                                                           (if (gx#free-identifier=?
                                                                |gerbil/core::<sugar>::<sugar:1>[1]#_g27988_|
                                                                _hd37874029_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl37884032_)
                           (let ((_e37894035_ (gx#syntax-e _tl37884032_)))
                             (let ((_hd37904039_ (##car _e37894035_))
                                   (_tl37914042_ (##cdr _e37894035_)))
                               (if (gx#stx-null? _tl37914042_)
                                   ((lambda (_L4045_ _L4047_ _L4048_ _L4049_)
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         '$e)
                                                        (cons _L4048_ '()))
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'if)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '$e)
                            (cons (cons _L4047_
                                        (cons (gx#datum->syntax '#f '$e) '()))
                                  (cons (cons _L4049_ _L4045_) '()))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _tl37824012_
                                    _hd37904039_
                                    _hd37844019_
                                    _hd37783999_)
                                   (_g37383988_ _g37413992_))))
                           (_g37383988_ _g37413992_))
                       (_g37383988_ _g37413992_))
                   (_g37383988_ _g37413992_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g37383988_ _g37413992_))))
                                           (_g37383988_ _g37413992_))))
                                   (_g37383988_ _g37413992_))))
                           (_g37383988_ _g37413992_)))))
                (let ((_g37364111_
                       (lambda (_g37414074_)
                         (if (gx#stx-pair? _g37414074_)
                             (let ((_e37644077_ (gx#syntax-e _g37414074_)))
                               (let ((_hd37654081_ (##car _e37644077_))
                                     (_tl37664084_ (##cdr _e37644077_)))
                                 (if (gx#stx-pair? _tl37664084_)
                                     (let ((_e37674087_
                                            (gx#syntax-e _tl37664084_)))
                                       (let ((_hd37684091_ (##car _e37674087_))
                                             (_tl37694094_
                                              (##cdr _e37674087_)))
                                         (if (gx#stx-pair? _hd37684091_)
                                             (let ((_e37704097_
                                                    (gx#syntax-e
                                                     _hd37684091_)))
                                               (let ((_hd37714101_
                                                      (##car _e37704097_))
                                                     (_tl37724104_
                                                      (##cdr _e37704097_)))
                                                 (if (gx#identifier?
                                                      _hd37714101_)
                                                     (if (gx#free-identifier=?
                                                          |gerbil/core::<sugar>::<sugar:1>[1]#_g27989_|
                                                          _hd37714101_)
                                                         ((lambda ()
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'syntax-error)
                          (cons '"Bad syntax; misplaced else" '()))))
                 (_g37374070_ _g37414074_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g37374070_
                                                      _g37414074_))))
                                             (_g37374070_ _g37414074_))))
                                     (_g37374070_ _g37414074_))))
                             (_g37374070_ _g37414074_)))))
                  (let ((_g37354206_
                         (lambda (_g37414115_)
                           (if (gx#stx-pair? _g37414115_)
                               (let ((_e37464118_ (gx#syntax-e _g37414115_)))
                                 (let ((_hd37474122_ (##car _e37464118_))
                                       (_tl37484125_ (##cdr _e37464118_)))
                                   (if (gx#stx-pair? _tl37484125_)
                                       (let ((_e37494128_
                                              (gx#syntax-e _tl37484125_)))
                                         (let ((_hd37504132_
                                                (##car _e37494128_))
                                               (_tl37514135_
                                                (##cdr _e37494128_)))
                                           (if (gx#stx-pair? _hd37504132_)
                                               (let ((_e37524138_
                                                      (gx#syntax-e
                                                       _hd37504132_)))
                                                 (let ((_hd37534142_
                                                        (##car _e37524138_))
                                                       (_tl37544145_
                                                        (##cdr _e37524138_)))
                                                   (if (gx#identifier?
                                                        _hd37534142_)
                                                       (if (gx#free-identifier=?
                                                            |gerbil/core::<sugar>::<sugar:1>[1]#_g27990_|
                                                            _hd37534142_)
                                                           (if (gx#stx-pair/null?
                                                                _tl37544145_)
                                                               (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _tl37544145_)
                                 '0)
                           (let ((_g27991_
                                  (gx#syntax-split-splice _tl37544145_ '0)))
                             (begin
                               (let ((_g27992_ (values-count _g27991_)))
                                 (if (not (fx= _g27992_ 2))
                                     (error "Context expects 2 values"
                                            _g27992_)))
                               (let ((_target37554148_ (values-ref _g27991_ 0))
                                     (_tl37574151_ (values-ref _g27991_ 1)))
                                 (if (gx#stx-null? _tl37574151_)
                                     (letrec ((_loop37584154_
                                               (lambda (_hd37564158_
                                                        _body37624161_)
                                                 (if (gx#stx-pair?
                                                      _hd37564158_)
                                                     (let ((_e37594164_
                                                            (gx#syntax-e
                                                             _hd37564158_)))
                                                       (let ((_lp-hd37604168_
                                                              (##car _e37594164_))
                                                             (_lp-tl37614171_
                                                              (##cdr _e37594164_)))
                                                         (_loop37584154_
                                                          _lp-tl37614171_
                                                          (cons _lp-hd37604168_
                                                                _body37624161_))))
                                                     (let ((_body37634174_
                                                            (reverse _body37624161_)))
                                                       (if (gx#stx-null?
                                                            _tl37514135_)
                                                           ((lambda (_L4178_)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '%#expression)
                            (cons (cons (gx#datum->syntax '#f 'begin)
                                        (begin
                                          '#!void
                                          (foldr (lambda (_g41974200_
                                                          _g41984203_)
                                                   (cons _g41974200_
                                                         _g41984203_))
                                                 '()
                                                 _L4178_)))
                                  '())))
                    _body37634174_)
                   (_g37364111_ _g37414115_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop37584154_ _target37554148_ '()))
                                     (_g37364111_ _g37414115_)))))
                           (_g37364111_ _g37414115_))
                       (_g37364111_ _g37414115_))
                   (_g37364111_ _g37414115_))
               (_g37364111_ _g37414115_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g37364111_ _g37414115_))))
                                       (_g37364111_ _g37414115_))))
                               (_g37364111_ _g37414115_)))))
                    (let ((_g37344227_
                           (lambda (_g37414210_)
                             (if (gx#stx-pair? _g37414210_)
                                 (let ((_e37424213_ (gx#syntax-e _g37414210_)))
                                   (let ((_hd37434217_ (##car _e37424213_))
                                         (_tl37444220_ (##cdr _e37424213_)))
                                     (if (gx#stx-null? _tl37444220_)
                                         ((lambda () '#!void))
                                         (_g37354206_ _g37414210_))))
                                 (_g37354206_ _g37414210_)))))
                      (_g37344227_ _$stx3731_))))))))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#when|
      (lambda (_$stx4233_)
        (let ((_g42374261_
               (lambda (_g42384257_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g42384257_))))
          (let ((_g42364346_
                 (lambda (_g42384265_)
                   (if (gx#stx-pair? _g42384265_)
                       (let ((_e42414268_ (gx#syntax-e _g42384265_)))
                         (let ((_hd42424272_ (##car _e42414268_))
                               (_tl42434275_ (##cdr _e42414268_)))
                           (if (gx#stx-pair? _tl42434275_)
                               (let ((_e42444278_ (gx#syntax-e _tl42434275_)))
                                 (let ((_hd42454282_ (##car _e42444278_))
                                       (_tl42464285_ (##cdr _e42444278_)))
                                   (if (gx#stx-pair/null? _tl42464285_)
                                       (if (fx>= (gx#stx-length _tl42464285_)
                                                 '0)
                                           (let ((_g27993_
                                                  (gx#syntax-split-splice
                                                   _tl42464285_
                                                   '0)))
                                             (begin
                                               (let ((_g27994_
                                                      (values-count _g27993_)))
                                                 (if (not (fx= _g27994_ 2))
                                                     (error "Context expects 2 values"
                                                            _g27994_)))
                                               (let ((_target42474288_
                                                      (values-ref _g27993_ 0))
                                                     (_tl42494291_
                                                      (values-ref _g27993_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl42494291_)
                                                     (letrec ((_loop42504294_
                                                               (lambda (_hd42484298_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr42544301_)
                         (if (gx#stx-pair? _hd42484298_)
                             (let ((_e42514304_ (gx#syntax-e _hd42484298_)))
                               (let ((_lp-hd42524308_ (##car _e42514304_))
                                     (_lp-tl42534311_ (##cdr _e42514304_)))
                                 (_loop42504294_
                                  _lp-tl42534311_
                                  (cons _lp-hd42524308_ _expr42544301_))))
                             (let ((_expr42554314_ (reverse _expr42544301_)))
                               ((lambda (_L4318_ _L4320_)
                                  (cons (gx#datum->syntax '#f 'if)
                                        (cons _L4320_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'begin)
                                                          (begin
                                                            '#!void
                                                            (foldr (lambda (_g43374340_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g43384343_)
                             (cons _g43374340_ _g43384343_))
                           '()
                           _L4318_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons '#!void '())))))
                                _expr42554314_
                                _hd42454282_))))))
               (_loop42504294_ _target42474288_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g42374261_
                                                      _g42384265_)))))
                                           (_g42374261_ _g42384265_))
                                       (_g42374261_ _g42384265_))))
                               (_g42374261_ _g42384265_))))
                       (_g42374261_ _g42384265_)))))
            (_g42364346_ _$stx4233_)))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#unless|
      (lambda (_$stx4351_)
        (let ((_g43554379_
               (lambda (_g43564375_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g43564375_))))
          (let ((_g43544464_
                 (lambda (_g43564383_)
                   (if (gx#stx-pair? _g43564383_)
                       (let ((_e43594386_ (gx#syntax-e _g43564383_)))
                         (let ((_hd43604390_ (##car _e43594386_))
                               (_tl43614393_ (##cdr _e43594386_)))
                           (if (gx#stx-pair? _tl43614393_)
                               (let ((_e43624396_ (gx#syntax-e _tl43614393_)))
                                 (let ((_hd43634400_ (##car _e43624396_))
                                       (_tl43644403_ (##cdr _e43624396_)))
                                   (if (gx#stx-pair/null? _tl43644403_)
                                       (if (fx>= (gx#stx-length _tl43644403_)
                                                 '0)
                                           (let ((_g27995_
                                                  (gx#syntax-split-splice
                                                   _tl43644403_
                                                   '0)))
                                             (begin
                                               (let ((_g27996_
                                                      (values-count _g27995_)))
                                                 (if (not (fx= _g27996_ 2))
                                                     (error "Context expects 2 values"
                                                            _g27996_)))
                                               (let ((_target43654406_
                                                      (values-ref _g27995_ 0))
                                                     (_tl43674409_
                                                      (values-ref _g27995_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl43674409_)
                                                     (letrec ((_loop43684412_
                                                               (lambda (_hd43664416_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr43724419_)
                         (if (gx#stx-pair? _hd43664416_)
                             (let ((_e43694422_ (gx#syntax-e _hd43664416_)))
                               (let ((_lp-hd43704426_ (##car _e43694422_))
                                     (_lp-tl43714429_ (##cdr _e43694422_)))
                                 (_loop43684412_
                                  _lp-tl43714429_
                                  (cons _lp-hd43704426_ _expr43724419_))))
                             (let ((_expr43734432_ (reverse _expr43724419_)))
                               ((lambda (_L4436_ _L4438_)
                                  (cons (gx#datum->syntax '#f 'if)
                                        (cons _L4438_
                                              (cons '#!void
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'begin)
                        (begin
                          '#!void
                          (foldr (lambda (_g44554458_ _g44564461_)
                                   (cons _g44554458_ _g44564461_))
                                 '()
                                 _L4436_)))
                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _expr43734432_
                                _hd43634400_))))))
               (_loop43684412_ _target43654406_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g43554379_
                                                      _g43564383_)))))
                                           (_g43554379_ _g43564383_))
                                       (_g43554379_ _g43564383_))))
                               (_g43554379_ _g43564383_))))
                       (_g43554379_ _g43564383_)))))
            (_g43544464_ _$stx4351_)))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#syntax-error|
      (lambda (_stx4469_)
        (let ((_g44724496_
               (lambda (_g44734492_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g44734492_))))
          (let ((_g44714581_
                 (lambda (_g44734500_)
                   (if (gx#stx-pair? _g44734500_)
                       (let ((_e44764503_ (gx#syntax-e _g44734500_)))
                         (let ((_hd44774507_ (##car _e44764503_))
                               (_tl44784510_ (##cdr _e44764503_)))
                           (if (gx#stx-pair? _tl44784510_)
                               (let ((_e44794513_ (gx#syntax-e _tl44784510_)))
                                 (let ((_hd44804517_ (##car _e44794513_))
                                       (_tl44814520_ (##cdr _e44794513_)))
                                   (if (gx#stx-pair/null? _tl44814520_)
                                       (if (fx>= (gx#stx-length _tl44814520_)
                                                 '0)
                                           (let ((_g27997_
                                                  (gx#syntax-split-splice
                                                   _tl44814520_
                                                   '0)))
                                             (begin
                                               (let ((_g27998_
                                                      (values-count _g27997_)))
                                                 (if (not (fx= _g27998_ 2))
                                                     (error "Context expects 2 values"
                                                            _g27998_)))
                                               (let ((_target44824523_
                                                      (values-ref _g27997_ 0))
                                                     (_tl44844526_
                                                      (values-ref _g27997_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl44844526_)
                                                     (letrec ((_loop44854529_
                                                               (lambda (_hd44834533_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _detail44894536_)
                         (if (gx#stx-pair? _hd44834533_)
                             (let ((_e44864539_ (gx#syntax-e _hd44834533_)))
                               (let ((_lp-hd44874543_ (##car _e44864539_))
                                     (_lp-tl44884546_ (##cdr _e44864539_)))
                                 (_loop44854529_
                                  _lp-tl44884546_
                                  (cons _lp-hd44874543_ _detail44894536_))))
                             (let ((_detail44904549_
                                    (reverse _detail44894536_)))
                               ((lambda (_L4553_ _L4555_)
                                  (if (gx#stx-string? _L4555_)
                                      (apply gx#raise-syntax-error
                                             '#f
                                             (gx#stx-e _L4555_)
                                             _stx4469_
                                             (gx#syntax->list
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g45724575_
                                                                _g45734578_)
                                                         (cons _g45724575_
                                                               _g45734578_))
                                                       '()
                                                       _L4553_))))
                                      (_g44724496_ _g44734500_)))
                                _detail44904549_
                                _hd44804517_))))))
               (_loop44854529_ _target44824523_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g44724496_
                                                      _g44734500_)))))
                                           (_g44724496_ _g44734500_))
                                       (_g44724496_ _g44734500_))))
                               (_g44724496_ _g44734500_))))
                       (_g44724496_ _g44734500_)))))
            (_g44714581_ _stx4469_)))))))
