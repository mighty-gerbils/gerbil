(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx48878_)
      (let* ((_g4888248900_
              (lambda (_g4888348896_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4888348896_)))
             (_g4888148955_
              (lambda (_g4888348904_)
                (if (gx#stx-pair? _g4888348904_)
                    (let ((_e4888648907_ (gx#syntax-e _g4888348904_)))
                      (let ((_hd4888748911_ (##car _e4888648907_))
                            (_tl4888848914_ (##cdr _e4888648907_)))
                        (if (gx#stx-pair? _tl4888848914_)
                            (let ((_e4888948917_ (gx#syntax-e _tl4888848914_)))
                              (let ((_hd4889048921_ (##car _e4888948917_))
                                    (_tl4889148924_ (##cdr _e4888948917_)))
                                (if (gx#stx-pair? _tl4889148924_)
                                    (let ((_e4889248927_
                                           (gx#syntax-e _tl4889148924_)))
                                      (let ((_hd4889348931_
                                             (##car _e4889248927_))
                                            (_tl4889448934_
                                             (##cdr _e4889248927_)))
                                        (if (gx#stx-null? _tl4889448934_)
                                            ((lambda (_L48937_ _L48939_)
                                               (if (gx#identifier? _L48939_)
                                                   (cons (gx#datum->syntax__0
                                                          '#f
                                                          'optimizer-declare-type!)
                                                         (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'quote)
                             (cons _L48939_ '()))
                       (cons _L48937_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g4888248900_
                                                    _g4888348904_)))
                                             _hd4889348931_
                                             _hd4889048921_)
                                            (_g4888248900_ _g4888348904_))))
                                    (_g4888248900_ _g4888348904_))))
                            (_g4888248900_ _g4888348904_))))
                    (_g4888248900_ _g4888348904_)))))
        (_g4888148955_ _$stx48878_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx48959_)
      (let* ((_g4896348992_
              (lambda (_g4896448988_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4896448988_)))
             (_g4896249092_
              (lambda (_g4896448996_)
                (if (gx#stx-pair? _g4896448996_)
                    (let ((_e4896748999_ (gx#syntax-e _g4896448996_)))
                      (let ((_hd4896849003_ (##car _e4896748999_))
                            (_tl4896949006_ (##cdr _e4896748999_)))
                        (if (gx#stx-pair/null? _tl4896949006_)
                            (let ((_g51700_
                                   (gx#syntax-split-splice _tl4896949006_ '0)))
                              (begin
                                (let ((_g51701_
                                       (if (##values? _g51700_)
                                           (##vector-length _g51700_)
                                           1)))
                                  (if (not (##fx= _g51701_ 2))
                                      (error "Context expects 2 values"
                                             _g51701_)))
                                (let ((_target4897049009_
                                       (##vector-ref _g51700_ 0))
                                      (_tl4897249012_
                                       (##vector-ref _g51700_ 1)))
                                  (if (gx#stx-null? _tl4897249012_)
                                      (letrec ((_loop4897349015_
                                                (lambda (_hd4897149019_
                                                         _type4897749022_
                                                         _symbol4897849024_)
                                                  (if (gx#stx-pair?
                                                       _hd4897149019_)
                                                      (let ((_e4897449027_
                                                             (gx#syntax-e
                                                              _hd4897149019_)))
                                                        (let ((_lp-hd4897549031_
                                                               (##car _e4897449027_))
                                                              (_lp-tl4897649034_
                                                               (##cdr _e4897449027_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd4897549031_)
                                                              (let ((_e4898149037_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _lp-hd4897549031_)))
                        (let ((_hd4898249041_ (##car _e4898149037_))
                              (_tl4898349044_ (##cdr _e4898149037_)))
                          (if (gx#stx-pair? _tl4898349044_)
                              (let ((_e4898449047_
                                     (gx#syntax-e _tl4898349044_)))
                                (let ((_hd4898549051_ (##car _e4898449047_))
                                      (_tl4898649054_ (##cdr _e4898449047_)))
                                  (if (gx#stx-null? _tl4898649054_)
                                      (_loop4897349015_
                                       _lp-tl4897649034_
                                       (cons _hd4898549051_ _type4897749022_)
                                       (cons _hd4898249041_
                                             _symbol4897849024_))
                                      (_g4896348992_ _g4896448996_))))
                              (_g4896348992_ _g4896448996_))))
                      (_g4896348992_ _g4896448996_))))
              (let ((_type4897949057_ (reverse _type4897749022_))
                    (_symbol4898049060_ (reverse _symbol4897849024_)))
                ((lambda (_L49063_ _L49065_)
                   (cons (gx#datum->syntax__0 '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets _L49063_ _L49065_)
                           (foldr2 (lambda (_g4908049084_
                                            _g4908149087_
                                            _g4908249089_)
                                     (cons (cons (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type)
                                                 (cons _g4908149087_
                                                       (cons _g4908049084_
                                                             '())))
                                           _g4908249089_))
                                   '()
                                   _L49063_
                                   _L49065_))))
                 _type4897949057_
                 _symbol4898049060_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop4897349015_
                                         _target4897049009_
                                         '()
                                         '()))
                                      (_g4896348992_ _g4896448996_)))))
                            (_g4896348992_ _g4896448996_))))
                    (_g4896348992_ _g4896448996_)))))
        (_g4896249092_ _$stx48959_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx49097_)
      (let* ((___stx5124351244_ _$stx49097_)
             (_g4910249144_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5124351244_))))
        (let ((___kont5124651247_
               (lambda (_L49272_ _L49274_ _L49275_ _L49276_)
                 (cons (gx#datum->syntax__0 '#f 'optimizer-declare-method!)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L49276_ '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L49275_ '()))
                                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                               (cons _L49274_ '()))
                                         (cons _L49272_ '())))))))
              (___kont5124851249_
               (lambda (_L49191_ _L49193_ _L49194_ _L49195_)
                 (cons _L49195_
                       (cons _L49194_
                             (cons _L49193_
                                   (cons _L49191_
                                         (cons (gx#datum->syntax__0
                                                '#f
                                                'rebind?)
                                               '()))))))))
          (let ((___match5128251283_
                 (lambda (_e4910849222_
                          _hd4910949226_
                          _tl4911049229_
                          _e4911149232_
                          _hd4911249236_
                          _tl4911349239_
                          _e4911449242_
                          _hd4911549246_
                          _tl4911649249_
                          _e4911749252_
                          _hd4911849256_
                          _tl4911949259_
                          _e4912049262_
                          _hd4912149266_
                          _tl4912249269_)
                   (let ((_L49272_ _hd4912149266_)
                         (_L49274_ _hd4911849256_)
                         (_L49275_ _hd4911549246_)
                         (_L49276_ _hd4911249236_))
                     (if (if (gx#identifier? _L49276_)
                             (if (gx#identifier? _L49275_)
                                 (gx#identifier? _L49274_)
                                 '#f)
                             '#f)
                         (___kont5124651247_
                          _L49272_
                          _L49274_
                          _L49275_
                          _L49276_)
                         (_g4910249144_))))))
            (if (gx#stx-pair? ___stx5124351244_)
                (let ((_e4910849222_ (gx#syntax-e ___stx5124351244_)))
                  (let ((_tl4911049229_ (##cdr _e4910849222_))
                        (_hd4910949226_ (##car _e4910849222_)))
                    (if (gx#stx-pair? _tl4911049229_)
                        (let ((_e4911149232_ (gx#syntax-e _tl4911049229_)))
                          (let ((_tl4911349239_ (##cdr _e4911149232_))
                                (_hd4911249236_ (##car _e4911149232_)))
                            (if (gx#stx-pair? _tl4911349239_)
                                (let ((_e4911449242_
                                       (gx#syntax-e _tl4911349239_)))
                                  (let ((_tl4911649249_ (##cdr _e4911449242_))
                                        (_hd4911549246_ (##car _e4911449242_)))
                                    (if (gx#stx-pair? _tl4911649249_)
                                        (let ((_e4911749252_
                                               (gx#syntax-e _tl4911649249_)))
                                          (let ((_tl4911949259_
                                                 (##cdr _e4911749252_))
                                                (_hd4911849256_
                                                 (##car _e4911749252_)))
                                            (if (gx#stx-pair? _tl4911949259_)
                                                (let ((_e4912049262_
                                                       (gx#syntax-e
                                                        _tl4911949259_)))
                                                  (let ((_tl4912249269_
                                                         (##cdr _e4912049262_))
                                                        (_hd4912149266_
                                                         (##car _e4912049262_)))
                                                    (if (gx#stx-null?
                                                         _tl4912249269_)
                                                        (___match5128251283_
                                                         _e4910849222_
                                                         _hd4910949226_
                                                         _tl4911049229_
                                                         _e4911149232_
                                                         _hd4911249236_
                                                         _tl4911349239_
                                                         _e4911449242_
                                                         _hd4911549246_
                                                         _tl4911649249_
                                                         _e4911749252_
                                                         _hd4911849256_
                                                         _tl4911949259_
                                                         _e4912049262_
                                                         _hd4912149266_
                                                         _tl4912249269_)
                                                        (_g4910249144_))))
                                                (if (gx#stx-null?
                                                     _tl4911949259_)
                                                    (___kont5124851249_
                                                     _hd4911849256_
                                                     _hd4911549246_
                                                     _hd4911249236_
                                                     _hd4910949226_)
                                                    (_g4910249144_)))))
                                        (_g4910249144_))))
                                (_g4910249144_))))
                        (_g4910249144_))))
                (_g4910249144_)))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx49301_)
      (let* ((_g4930549340_
              (lambda (_g4930649336_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4930649336_)))
             (_g4930449459_
              (lambda (_g4930649344_)
                (if (gx#stx-pair? _g4930649344_)
                    (let ((_e4931049347_ (gx#syntax-e _g4930649344_)))
                      (let ((_hd4931149351_ (##car _e4931049347_))
                            (_tl4931249354_ (##cdr _e4931049347_)))
                        (if (gx#stx-pair/null? _tl4931249354_)
                            (let ((_g51702_
                                   (gx#syntax-split-splice _tl4931249354_ '0)))
                              (begin
                                (let ((_g51703_
                                       (if (##values? _g51702_)
                                           (##vector-length _g51702_)
                                           1)))
                                  (if (not (##fx= _g51703_ 2))
                                      (error "Context expects 2 values"
                                             _g51703_)))
                                (let ((_target4931349357_
                                       (##vector-ref _g51702_ 0))
                                      (_tl4931549360_
                                       (##vector-ref _g51702_ 1)))
                                  (if (gx#stx-null? _tl4931549360_)
                                      (letrec ((_loop4931649363_
                                                (lambda (_hd4931449367_
                                                         _symbol4932049370_
                                                         _method4932149372_
                                                         _type-t4932249374_)
                                                  (if (gx#stx-pair?
                                                       _hd4931449367_)
                                                      (let ((_e4931749377_
                                                             (gx#syntax-e
                                                              _hd4931449367_)))
                                                        (let ((_lp-hd4931849381_
                                                               (##car _e4931749377_))
                                                              (_lp-tl4931949384_
                                                               (##cdr _e4931749377_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd4931849381_)
                                                              (let ((_e4932649387_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _lp-hd4931849381_)))
                        (let ((_hd4932749391_ (##car _e4932649387_))
                              (_tl4932849394_ (##cdr _e4932649387_)))
                          (if (gx#stx-pair? _tl4932849394_)
                              (let ((_e4932949397_
                                     (gx#syntax-e _tl4932849394_)))
                                (let ((_hd4933049401_ (##car _e4932949397_))
                                      (_tl4933149404_ (##cdr _e4932949397_)))
                                  (if (gx#stx-pair? _tl4933149404_)
                                      (let ((_e4933249407_
                                             (gx#syntax-e _tl4933149404_)))
                                        (let ((_hd4933349411_
                                               (##car _e4933249407_))
                                              (_tl4933449414_
                                               (##cdr _e4933249407_)))
                                          (if (gx#stx-null? _tl4933449414_)
                                              (_loop4931649363_
                                               _lp-tl4931949384_
                                               (cons _hd4933349411_
                                                     _symbol4932049370_)
                                               (cons _hd4933049401_
                                                     _method4932149372_)
                                               (cons _hd4932749391_
                                                     _type-t4932249374_))
                                              (_g4930549340_ _g4930649344_))))
                                      (_g4930549340_ _g4930649344_))))
                              (_g4930549340_ _g4930649344_))))
                      (_g4930549340_ _g4930649344_))))
              (let ((_symbol4932349417_ (reverse _symbol4932049370_))
                    (_method4932449420_ (reverse _method4932149372_))
                    (_type-t4932549422_ (reverse _type-t4932249374_)))
                ((lambda (_L49425_ _L49427_ _L49428_)
                   (cons (gx#datum->syntax__0 '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _L49425_
                            _L49427_
                            _L49428_)
                           (foldr (lambda (_g4944449449_
                                           _g4944549452_
                                           _g4944649454_
                                           _g4944749456_)
                                    (cons (cons (gx#datum->syntax__0
                                                 '#f
                                                 'declare-method)
                                                (cons _g4944649454_
                                                      (cons _g4944549452_
                                                            (cons _g4944449449_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g4944749456_))
                                  '()
                                  _L49425_
                                  _L49427_
                                  _L49428_))))
                 _symbol4932349417_
                 _method4932449420_
                 _type-t4932549422_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop4931649363_
                                         _target4931349357_
                                         '()
                                         '()
                                         '()))
                                      (_g4930549340_ _g4930649344_)))))
                            (_g4930549340_ _g4930649344_))))
                    (_g4930549340_ _g4930649344_)))))
        (_g4930449459_ _$stx49301_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx49464_)
      (let* ((_g4946849501_
              (lambda (_g4946949497_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4946949497_)))
             (_g4946749615_
              (lambda (_g4946949505_)
                (if (gx#stx-pair? _g4946949505_)
                    (let ((_e4947349508_ (gx#syntax-e _g4946949505_)))
                      (let ((_hd4947449512_ (##car _e4947349508_))
                            (_tl4947549515_ (##cdr _e4947349508_)))
                        (if (gx#stx-pair? _tl4947549515_)
                            (let ((_e4947649518_ (gx#syntax-e _tl4947549515_)))
                              (let ((_hd4947749522_ (##car _e4947649518_))
                                    (_tl4947849525_ (##cdr _e4947649518_)))
                                (if (gx#stx-pair/null? _tl4947849525_)
                                    (let ((_g51704_
                                           (gx#syntax-split-splice
                                            _tl4947849525_
                                            '0)))
                                      (begin
                                        (let ((_g51705_
                                               (if (##values? _g51704_)
                                                   (##vector-length _g51704_)
                                                   1)))
                                          (if (not (##fx= _g51705_ 2))
                                              (error "Context expects 2 values"
                                                     _g51705_)))
                                        (let ((_target4947949528_
                                               (##vector-ref _g51704_ 0))
                                              (_tl4948149531_
                                               (##vector-ref _g51704_ 1)))
                                          (if (gx#stx-null? _tl4948149531_)
                                              (letrec ((_loop4948249534_
                                                        (lambda (_hd4948049538_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol4948649541_
                         _method4948749543_)
                  (if (gx#stx-pair? _hd4948049538_)
                      (let ((_e4948349546_ (gx#syntax-e _hd4948049538_)))
                        (let ((_lp-hd4948449550_ (##car _e4948349546_))
                              (_lp-tl4948549553_ (##cdr _e4948349546_)))
                          (if (gx#stx-pair? _lp-hd4948449550_)
                              (let ((_e4949049556_
                                     (gx#syntax-e _lp-hd4948449550_)))
                                (let ((_hd4949149560_ (##car _e4949049556_))
                                      (_tl4949249563_ (##cdr _e4949049556_)))
                                  (if (gx#stx-pair? _tl4949249563_)
                                      (let ((_e4949349566_
                                             (gx#syntax-e _tl4949249563_)))
                                        (let ((_hd4949449570_
                                               (##car _e4949349566_))
                                              (_tl4949549573_
                                               (##cdr _e4949349566_)))
                                          (if (gx#stx-null? _tl4949549573_)
                                              (_loop4948249534_
                                               _lp-tl4948549553_
                                               (cons _hd4949449570_
                                                     _symbol4948649541_)
                                               (cons _hd4949149560_
                                                     _method4948749543_))
                                              (_g4946849501_ _g4946949505_))))
                                      (_g4946849501_ _g4946949505_))))
                              (_g4946849501_ _g4946949505_))))
                      (let ((_symbol4948849576_ (reverse _symbol4948649541_))
                            (_method4948949579_ (reverse _method4948749543_)))
                        ((lambda (_L49582_ _L49584_ _L49585_)
                           (cons (gx#datum->syntax__0 '#f 'begin)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _L49582_
                                    _L49584_)
                                   (foldr2 (lambda (_g4960349607_
                                                    _g4960449610_
                                                    _g4960549612_)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'declare-method)
                                                         (cons _L49585_
                                                               (cons _g4960449610_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _g4960349607_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g4960549612_))
                                           '()
                                           _L49582_
                                           _L49584_))))
                         _symbol4948849576_
                         _method4948949579_
                         _hd4947749522_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop4948249534_
                                                 _target4947949528_
                                                 '()
                                                 '()))
                                              (_g4946849501_ _g4946949505_)))))
                                    (_g4946849501_ _g4946949505_))))
                            (_g4946849501_ _g4946949505_))))
                    (_g4946849501_ _g4946949505_)))))
        (_g4946749615_ _$stx49464_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx49620_)
      (let* ((_g4962449638_
              (lambda (_g4962549634_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4962549634_)))
             (_g4962349679_
              (lambda (_g4962549642_)
                (if (gx#stx-pair? _g4962549642_)
                    (let ((_e4962749645_ (gx#syntax-e _g4962549642_)))
                      (let ((_hd4962849649_ (##car _e4962749645_))
                            (_tl4962949652_ (##cdr _e4962749645_)))
                        (if (gx#stx-pair? _tl4962949652_)
                            (let ((_e4963049655_ (gx#syntax-e _tl4962949652_)))
                              (let ((_hd4963149659_ (##car _e4963049655_))
                                    (_tl4963249662_ (##cdr _e4963049655_)))
                                (if (gx#stx-null? _tl4963249662_)
                                    ((lambda (_L49665_)
                                       (cons (gx#datum->syntax__0
                                              '#f
                                              'make-!alias)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'quote)
                                                         (cons _L49665_ '()))
                                                   '())))
                                     _hd4963149659_)
                                    (_g4962449638_ _g4962549642_))))
                            (_g4962449638_ _g4962549642_))))
                    (_g4962449638_ _g4962549642_)))))
        (_g4962349679_ _$stx49620_))))
  (define |gxc[:0:]#@struct-type|
    (lambda (_$stx49683_)
      (let* ((___stx5131151312_ _$stx49683_)
             (_g4968949755_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5131151312_))))
        (let ((___kont5131451315_
               (lambda (_L49977_ _L49979_ _L49980_ _L49981_ _L49982_)
                 (cons (gx#datum->syntax__0 '#f '@make-struct-type)
                       (cons _L49982_
                             (cons _L49981_
                                   (cons _L49980_
                                         (cons _L49979_
                                               (cons _L49977_ '()))))))))
              (___kont5131651317_
               (lambda (_L49887_ _L49889_ _L49890_ _L49891_)
                 (cons _L49891_
                       (cons _L49890_
                             (cons _L49889_
                                   (cons _L49887_
                                         (cons '#f (cons '#f '()))))))))
              (___kont5131851319_
               (lambda (_L49812_ _L49814_ _L49815_ _L49816_ _L49817_)
                 (cons _L49817_
                       (cons (gx#datum->syntax__0 '#f 'type)
                             (cons _L49815_
                                   (cons _L49814_
                                         (cons _L49812_ (cons '#f '())))))))))
          (if (gx#stx-pair? ___stx5131151312_)
              (let ((_e4969649917_ (gx#syntax-e ___stx5131151312_)))
                (let ((_tl4969849924_ (##cdr _e4969649917_))
                      (_hd4969749921_ (##car _e4969649917_)))
                  (if (gx#stx-pair? _tl4969849924_)
                      (let ((_e4969949927_ (gx#syntax-e _tl4969849924_)))
                        (let ((_tl4970149934_ (##cdr _e4969949927_))
                              (_hd4970049931_ (##car _e4969949927_)))
                          (if (gx#stx-pair? _tl4970149934_)
                              (let ((_e4970249937_
                                     (gx#syntax-e _tl4970149934_)))
                                (let ((_tl4970449944_ (##cdr _e4970249937_))
                                      (_hd4970349941_ (##car _e4970249937_)))
                                  (if (gx#stx-pair? _tl4970449944_)
                                      (let ((_e4970549947_
                                             (gx#syntax-e _tl4970449944_)))
                                        (let ((_tl4970749954_
                                               (##cdr _e4970549947_))
                                              (_hd4970649951_
                                               (##car _e4970549947_)))
                                          (if (gx#stx-pair? _tl4970749954_)
                                              (let ((_e4970849957_
                                                     (gx#syntax-e
                                                      _tl4970749954_)))
                                                (let ((_tl4971049964_
                                                       (##cdr _e4970849957_))
                                                      (_hd4970949961_
                                                       (##car _e4970849957_)))
                                                  (if (gx#stx-pair?
                                                       _tl4971049964_)
                                                      (let ((_e4971149967_
                                                             (gx#syntax-e
                                                              _tl4971049964_)))
                                                        (let ((_tl4971349974_
                                                               (##cdr _e4971149967_))
                                                              (_hd4971249971_
                                                               (##car _e4971149967_)))
                                                          (if (gx#stx-null?
                                                               _tl4971349974_)
                                                              (___kont5131451315_
                                                               _hd4971249971_
                                                               _hd4970949961_
                                                               _hd4970649951_
                                                               _hd4970349941_
                                                               _hd4970049931_)
                                                              (_g4968949755_))))
                                                      (if (gx#stx-null?
                                                           _tl4971049964_)
                                                          (___kont5131851319_
                                                           _hd4970949961_
                                                           _hd4970649951_
                                                           _hd4970349941_
                                                           _hd4970049931_
                                                           _hd4969749921_)
                                                          (_g4968949755_)))))
                                              (if (gx#stx-null? _tl4970749954_)
                                                  (___kont5131651317_
                                                   _hd4970649951_
                                                   _hd4970349941_
                                                   _hd4970049931_
                                                   _hd4969749921_)
                                                  (_g4968949755_)))))
                                      (_g4968949755_))))
                              (_g4968949755_))))
                      (_g4968949755_))))
              (_g4968949755_))))))
  (define |gxc[:0:]#@make-struct-type|
    (lambda (_$stx50010_)
      (let* ((___stx5141951420_ _$stx50010_)
             (_g5001550068_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5141951420_))))
        (let ((___kont5142251423_
               (lambda (_L50236_ _L50238_ _L50239_ _L50240_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-type)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L50240_ '()))
                             (cons '#f
                                   (cons _L50239_
                                         (cons '0
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            'quote)
                                                           (cons _L50238_ '()))
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L50236_ '()))
                   '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              (___kont5142451425_
               (lambda (_L50135_ _L50137_ _L50138_ _L50139_ _L50140_)
                 (cons (gx#datum->syntax__0 '#f 'let*)
                       (cons (cons (cons (gx#datum->syntax__0 '#f 'super-type)
                                         (cons (cons (gx#datum->syntax__0
                                                      '#f
                                                      'optimizer-resolve-type)
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L50139_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons (gx#datum->syntax__0
                                                '#f
                                                'xfields)
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            'and)
                                                           (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'super-type)
                         (cons (cons (gx#datum->syntax__0 '#f 'alet)
                                     (cons (cons (gx#datum->syntax__0
                                                  '#f
                                                  'xfields)
                                                 (cons (cons (gx#datum->syntax__0
                                                              '#f
                                                              '!struct-type-xfields)
                                                             (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'super-type)
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons (gx#datum->syntax__0
                                                        '#f
                                                        'fx+)
                                                       (cons (gx#datum->syntax__0
                                                              '#f
                                                              'xfields)
                                                             (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '!struct-type-fields)
                                 (cons (gx#datum->syntax__0 '#f 'super-type)
                                       '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax__0
                                                      '#f
                                                      'xtor)
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'or)
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons _L50137_ '()))
                               (cons (cons (gx#datum->syntax__0 '#f 'if)
                                           (cons (gx#datum->syntax__0
                                                  '#f
                                                  'super-type)
                                                 (cons (cons (gx#datum->syntax__0
                                                              '#f
                                                              '!struct-type-ctor)
                                                             (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'super-type)
                           '()))
               (cons '#!void '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))
                             (cons (cons (gx#datum->syntax__0
                                          '#f
                                          'make-!struct-type)
                                         (cons (cons (gx#datum->syntax__0
                                                      '#f
                                                      'quote)
                                                     (cons _L50140_ '()))
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            'quote)
                                                           (cons _L50139_ '()))
                                                     (cons _L50138_
                                                           (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'xfields)
                         (cons (gx#datum->syntax__0 '#f 'xtor)
                               (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                           (cons _L50135_ '()))
                                     '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   '()))))))
          (if (gx#stx-pair? ___stx5141951420_)
              (let ((_e5002150172_ (gx#syntax-e ___stx5141951420_)))
                (let ((_tl5002350179_ (##cdr _e5002150172_))
                      (_hd5002250176_ (##car _e5002150172_)))
                  (if (gx#stx-pair? _tl5002350179_)
                      (let ((_e5002450182_ (gx#syntax-e _tl5002350179_)))
                        (let ((_tl5002650189_ (##cdr _e5002450182_))
                              (_hd5002550186_ (##car _e5002450182_)))
                          (if (gx#stx-pair? _tl5002650189_)
                              (let ((_e5002750192_
                                     (gx#syntax-e _tl5002650189_)))
                                (let ((_tl5002950199_ (##cdr _e5002750192_))
                                      (_hd5002850196_ (##car _e5002750192_)))
                                  (if (gx#stx-datum? _hd5002850196_)
                                      (let ((_e5003050202_
                                             (gx#stx-e _hd5002850196_)))
                                        (if (equal? _e5003050202_ '#f)
                                            (if (gx#stx-pair? _tl5002950199_)
                                                (let ((_e5003150206_
                                                       (gx#syntax-e
                                                        _tl5002950199_)))
                                                  (let ((_tl5003350213_
                                                         (##cdr _e5003150206_))
                                                        (_hd5003250210_
                                                         (##car _e5003150206_)))
                                                    (if (gx#stx-pair?
                                                         _tl5003350213_)
                                                        (let ((_e5003450216_
                                                               (gx#syntax-e
                                                                _tl5003350213_)))
                                                          (let ((_tl5003650223_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e5003450216_))
                        (_hd5003550220_ (##car _e5003450216_)))
                    (if (gx#stx-pair? _tl5003650223_)
                        (let ((_e5003750226_ (gx#syntax-e _tl5003650223_)))
                          (let ((_tl5003950233_ (##cdr _e5003750226_))
                                (_hd5003850230_ (##car _e5003750226_)))
                            (if (gx#stx-null? _tl5003950233_)
                                (___kont5142251423_
                                 _hd5003850230_
                                 _hd5003550220_
                                 _hd5003250210_
                                 _hd5002550186_)
                                (_g5001550068_))))
                        (_g5001550068_))))
                (_g5001550068_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g5001550068_))
                                            (if (gx#stx-pair? _tl5002950199_)
                                                (let ((_e5005450105_
                                                       (gx#syntax-e
                                                        _tl5002950199_)))
                                                  (let ((_tl5005650112_
                                                         (##cdr _e5005450105_))
                                                        (_hd5005550109_
                                                         (##car _e5005450105_)))
                                                    (if (gx#stx-pair?
                                                         _tl5005650112_)
                                                        (let ((_e5005750115_
                                                               (gx#syntax-e
                                                                _tl5005650112_)))
                                                          (let ((_tl5005950122_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e5005750115_))
                        (_hd5005850119_ (##car _e5005750115_)))
                    (if (gx#stx-pair? _tl5005950122_)
                        (let ((_e5006050125_ (gx#syntax-e _tl5005950122_)))
                          (let ((_tl5006250132_ (##cdr _e5006050125_))
                                (_hd5006150129_ (##car _e5006050125_)))
                            (if (gx#stx-null? _tl5006250132_)
                                (___kont5142451425_
                                 _hd5006150129_
                                 _hd5005850119_
                                 _hd5005550109_
                                 _hd5002850196_
                                 _hd5002550186_)
                                (_g5001550068_))))
                        (_g5001550068_))))
                (_g5001550068_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g5001550068_))))
                                      (if (gx#stx-pair? _tl5002950199_)
                                          (let ((_e5005450105_
                                                 (gx#syntax-e _tl5002950199_)))
                                            (let ((_tl5005650112_
                                                   (##cdr _e5005450105_))
                                                  (_hd5005550109_
                                                   (##car _e5005450105_)))
                                              (if (gx#stx-pair? _tl5005650112_)
                                                  (let ((_e5005750115_
                                                         (gx#syntax-e
                                                          _tl5005650112_)))
                                                    (let ((_tl5005950122_
                                                           (##cdr _e5005750115_))
                                                          (_hd5005850119_
                                                           (##car _e5005750115_)))
                                                      (if (gx#stx-pair?
                                                           _tl5005950122_)
                                                          (let ((_e5006050125_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl5005950122_)))
                    (let ((_tl5006250132_ (##cdr _e5006050125_))
                          (_hd5006150129_ (##car _e5006050125_)))
                      (if (gx#stx-null? _tl5006250132_)
                          (___kont5142451425_
                           _hd5006150129_
                           _hd5005850119_
                           _hd5005550109_
                           _hd5002850196_
                           _hd5002550186_)
                          (_g5001550068_))))
                  (_g5001550068_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g5001550068_))))
                                          (_g5001550068_)))))
                              (_g5001550068_))))
                      (_g5001550068_))))
              (_g5001550068_))))))
  (define |gxc[:0:]#@struct-pred|
    (lambda (_$stx50268_)
      (let* ((_g5027250286_
              (lambda (_g5027350282_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5027350282_)))
             (_g5027150327_
              (lambda (_g5027350290_)
                (if (gx#stx-pair? _g5027350290_)
                    (let ((_e5027550293_ (gx#syntax-e _g5027350290_)))
                      (let ((_hd5027650297_ (##car _e5027550293_))
                            (_tl5027750300_ (##cdr _e5027550293_)))
                        (if (gx#stx-pair? _tl5027750300_)
                            (let ((_e5027850303_ (gx#syntax-e _tl5027750300_)))
                              (let ((_hd5027950307_ (##car _e5027850303_))
                                    (_tl5028050310_ (##cdr _e5027850303_)))
                                (if (gx#stx-null? _tl5028050310_)
                                    ((lambda (_L50313_)
                                       (cons (gx#datum->syntax__0
                                              '#f
                                              'make-!struct-pred)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'quote)
                                                         (cons _L50313_ '()))
                                                   '())))
                                     _hd5027950307_)
                                    (_g5027250286_ _g5027350290_))))
                            (_g5027250286_ _g5027350290_))))
                    (_g5027250286_ _g5027350290_)))))
        (_g5027150327_ _$stx50268_))))
  (define |gxc[:0:]#@struct-cons|
    (lambda (_$stx50331_)
      (let* ((_g5033550349_
              (lambda (_g5033650345_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5033650345_)))
             (_g5033450390_
              (lambda (_g5033650353_)
                (if (gx#stx-pair? _g5033650353_)
                    (let ((_e5033850356_ (gx#syntax-e _g5033650353_)))
                      (let ((_hd5033950360_ (##car _e5033850356_))
                            (_tl5034050363_ (##cdr _e5033850356_)))
                        (if (gx#stx-pair? _tl5034050363_)
                            (let ((_e5034150366_ (gx#syntax-e _tl5034050363_)))
                              (let ((_hd5034250370_ (##car _e5034150366_))
                                    (_tl5034350373_ (##cdr _e5034150366_)))
                                (if (gx#stx-null? _tl5034350373_)
                                    ((lambda (_L50376_)
                                       (cons (gx#datum->syntax__0
                                              '#f
                                              'make-!struct-cons)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'quote)
                                                         (cons _L50376_ '()))
                                                   '())))
                                     _hd5034250370_)
                                    (_g5033550349_ _g5033650353_))))
                            (_g5033550349_ _g5033650353_))))
                    (_g5033550349_ _g5033650353_)))))
        (_g5033450390_ _$stx50331_))))
  (define |gxc[:0:]#@struct-getf|
    (lambda (_$stx50394_)
      (let* ((___stx5151151512_ _$stx50394_)
             (_g5039950432_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5151151512_))))
        (let ((___kont5151451515_
               (lambda (_L50534_ _L50536_ _L50537_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-getf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L50537_ '()))
                             (cons _L50536_ (cons _L50534_ '()))))))
              (___kont5151651517_
               (lambda (_L50469_ _L50471_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-getf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L50471_ '()))
                             (cons _L50469_ (cons '#f '())))))))
          (if (gx#stx-pair? ___stx5151151512_)
              (let ((_e5040450494_ (gx#syntax-e ___stx5151151512_)))
                (let ((_tl5040650501_ (##cdr _e5040450494_))
                      (_hd5040550498_ (##car _e5040450494_)))
                  (if (gx#stx-pair? _tl5040650501_)
                      (let ((_e5040750504_ (gx#syntax-e _tl5040650501_)))
                        (let ((_tl5040950511_ (##cdr _e5040750504_))
                              (_hd5040850508_ (##car _e5040750504_)))
                          (if (gx#stx-pair? _tl5040950511_)
                              (let ((_e5041050514_
                                     (gx#syntax-e _tl5040950511_)))
                                (let ((_tl5041250521_ (##cdr _e5041050514_))
                                      (_hd5041150518_ (##car _e5041050514_)))
                                  (if (gx#stx-pair? _tl5041250521_)
                                      (let ((_e5041350524_
                                             (gx#syntax-e _tl5041250521_)))
                                        (let ((_tl5041550531_
                                               (##cdr _e5041350524_))
                                              (_hd5041450528_
                                               (##car _e5041350524_)))
                                          (if (gx#stx-null? _tl5041550531_)
                                              (___kont5151451515_
                                               _hd5041450528_
                                               _hd5041150518_
                                               _hd5040850508_)
                                              (_g5039950432_))))
                                      (if (gx#stx-null? _tl5041250521_)
                                          (___kont5151651517_
                                           _hd5041150518_
                                           _hd5040850508_)
                                          (_g5039950432_)))))
                              (_g5039950432_))))
                      (_g5039950432_))))
              (_g5039950432_))))))
  (define |gxc[:0:]#@struct-setf|
    (lambda (_$stx50559_)
      (let* ((___stx5156751568_ _$stx50559_)
             (_g5056450597_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5156751568_))))
        (let ((___kont5157051571_
               (lambda (_L50699_ _L50701_ _L50702_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-setf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L50702_ '()))
                             (cons _L50701_ (cons _L50699_ '()))))))
              (___kont5157251573_
               (lambda (_L50634_ _L50636_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-setf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L50636_ '()))
                             (cons _L50634_ (cons '#f '())))))))
          (if (gx#stx-pair? ___stx5156751568_)
              (let ((_e5056950659_ (gx#syntax-e ___stx5156751568_)))
                (let ((_tl5057150666_ (##cdr _e5056950659_))
                      (_hd5057050663_ (##car _e5056950659_)))
                  (if (gx#stx-pair? _tl5057150666_)
                      (let ((_e5057250669_ (gx#syntax-e _tl5057150666_)))
                        (let ((_tl5057450676_ (##cdr _e5057250669_))
                              (_hd5057350673_ (##car _e5057250669_)))
                          (if (gx#stx-pair? _tl5057450676_)
                              (let ((_e5057550679_
                                     (gx#syntax-e _tl5057450676_)))
                                (let ((_tl5057750686_ (##cdr _e5057550679_))
                                      (_hd5057650683_ (##car _e5057550679_)))
                                  (if (gx#stx-pair? _tl5057750686_)
                                      (let ((_e5057850689_
                                             (gx#syntax-e _tl5057750686_)))
                                        (let ((_tl5058050696_
                                               (##cdr _e5057850689_))
                                              (_hd5057950693_
                                               (##car _e5057850689_)))
                                          (if (gx#stx-null? _tl5058050696_)
                                              (___kont5157051571_
                                               _hd5057950693_
                                               _hd5057650683_
                                               _hd5057350673_)
                                              (_g5056450597_))))
                                      (if (gx#stx-null? _tl5057750686_)
                                          (___kont5157251573_
                                           _hd5057650683_
                                           _hd5057350673_)
                                          (_g5056450597_)))))
                              (_g5056450597_))))
                      (_g5056450597_))))
              (_g5056450597_))))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx50724_)
      (let* ((___stx5162351624_ _$stx50724_)
             (_g5073050771_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5162351624_))))
        (let ((___kont5162651627_
               (lambda (_L50919_ _L50921_)
                 (cons (gx#datum->syntax__0 '#f 'make-!lambda)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons (gx#datum->syntax__0 '#f 'lambda)
                                         '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L50921_ '()))
                                   (cons '#f
                                         (cons _L50919_
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            'quote)
                                                           (cons _L50919_ '()))
                                                     '()))))))))
              (___kont5162851629_
               (lambda (_L50851_ _L50853_)
                 (cons (gx#datum->syntax__0 '#f 'make-!lambda)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons (gx#datum->syntax__0 '#f 'lambda)
                                         '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L50853_ '()))
                                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                               (cons _L50851_ '()))
                                         '()))))))
              (___kont5163051631_
               (lambda (_L50798_ _L50800_)
                 (cons _L50800_ (cons _L50798_ (cons '#f '()))))))
          (if (gx#stx-pair? ___stx5162351624_)
              (let ((_e5073450875_ (gx#syntax-e ___stx5162351624_)))
                (let ((_tl5073650882_ (##cdr _e5073450875_))
                      (_hd5073550879_ (##car _e5073450875_)))
                  (if (gx#stx-pair? _tl5073650882_)
                      (let ((_e5073750885_ (gx#syntax-e _tl5073650882_)))
                        (let ((_tl5073950892_ (##cdr _e5073750885_))
                              (_hd5073850889_ (##car _e5073750885_)))
                          (if (gx#stx-pair? _tl5073950892_)
                              (let ((_e5074050895_
                                     (gx#syntax-e _tl5073950892_)))
                                (let ((_tl5074250902_ (##cdr _e5074050895_))
                                      (_hd5074150899_ (##car _e5074050895_)))
                                  (if (gx#stx-datum? _hd5074150899_)
                                      (let ((_e5074350905_
                                             (gx#stx-e _hd5074150899_)))
                                        (if (equal? _e5074350905_ 'inline:)
                                            (if (gx#stx-pair? _tl5074250902_)
                                                (let ((_e5074450909_
                                                       (gx#syntax-e
                                                        _tl5074250902_)))
                                                  (let ((_tl5074650916_
                                                         (##cdr _e5074450909_))
                                                        (_hd5074550913_
                                                         (##car _e5074450909_)))
                                                    (if (gx#stx-null?
                                                         _tl5074650916_)
                                                        (___kont5162651627_
                                                         _hd5074550913_
                                                         _hd5073850889_)
                                                        (_g5073050771_))))
                                                (if (gx#stx-null?
                                                     _tl5074250902_)
                                                    (___kont5162851629_
                                                     _hd5074150899_
                                                     _hd5073850889_)
                                                    (_g5073050771_)))
                                            (if (gx#stx-null? _tl5074250902_)
                                                (___kont5162851629_
                                                 _hd5074150899_
                                                 _hd5073850889_)
                                                (_g5073050771_))))
                                      (if (gx#stx-null? _tl5074250902_)
                                          (___kont5162851629_
                                           _hd5074150899_
                                           _hd5073850889_)
                                          (_g5073050771_)))))
                              (if (gx#stx-null? _tl5073950892_)
                                  (___kont5163051631_
                                   _hd5073850889_
                                   _hd5073550879_)
                                  (_g5073050771_)))))
                      (_g5073050771_))))
              (_g5073050771_))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx50943_)
      (let* ((_g5094750976_
              (lambda (_g5094850972_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5094850972_)))
             (_g5094651076_
              (lambda (_g5094850980_)
                (if (gx#stx-pair? _g5094850980_)
                    (let ((_e5095150983_ (gx#syntax-e _g5094850980_)))
                      (let ((_hd5095250987_ (##car _e5095150983_))
                            (_tl5095350990_ (##cdr _e5095150983_)))
                        (if (gx#stx-pair/null? _tl5095350990_)
                            (let ((_g51706_
                                   (gx#syntax-split-splice _tl5095350990_ '0)))
                              (begin
                                (let ((_g51707_
                                       (if (##values? _g51706_)
                                           (##vector-length _g51706_)
                                           1)))
                                  (if (not (##fx= _g51707_ 2))
                                      (error "Context expects 2 values"
                                             _g51707_)))
                                (let ((_target5095450993_
                                       (##vector-ref _g51706_ 0))
                                      (_tl5095650996_
                                       (##vector-ref _g51706_ 1)))
                                  (if (gx#stx-null? _tl5095650996_)
                                      (letrec ((_loop5095750999_
                                                (lambda (_hd5095551003_
                                                         _dispatch5096151006_
                                                         _arity5096251008_)
                                                  (if (gx#stx-pair?
                                                       _hd5095551003_)
                                                      (let ((_e5095851011_
                                                             (gx#syntax-e
                                                              _hd5095551003_)))
                                                        (let ((_lp-hd5095951015_
                                                               (##car _e5095851011_))
                                                              (_lp-tl5096051018_
                                                               (##cdr _e5095851011_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd5095951015_)
                                                              (let ((_e5096551021_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _lp-hd5095951015_)))
                        (let ((_hd5096651025_ (##car _e5096551021_))
                              (_tl5096751028_ (##cdr _e5096551021_)))
                          (if (gx#stx-pair? _tl5096751028_)
                              (let ((_e5096851031_
                                     (gx#syntax-e _tl5096751028_)))
                                (let ((_hd5096951035_ (##car _e5096851031_))
                                      (_tl5097051038_ (##cdr _e5096851031_)))
                                  (if (gx#stx-null? _tl5097051038_)
                                      (_loop5095750999_
                                       _lp-tl5096051018_
                                       (cons _hd5096951035_
                                             _dispatch5096151006_)
                                       (cons _hd5096651025_ _arity5096251008_))
                                      (_g5094750976_ _g5094850980_))))
                              (_g5094750976_ _g5094850980_))))
                      (_g5094750976_ _g5094850980_))))
              (let ((_dispatch5096351041_ (reverse _dispatch5096151006_))
                    (_arity5096451044_ (reverse _arity5096251008_)))
                ((lambda (_L51047_ _L51049_)
                   (cons (gx#datum->syntax__0 '#f 'make-!case-lambda)
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons (gx#datum->syntax__0
                                            '#f
                                            'case-lambda)
                                           '()))
                               (cons (cons (gx#datum->syntax__0 '#f '@list)
                                           (begin
                                             (gx#syntax-check-splice-targets
                                              _L51047_
                                              _L51049_)
                                             (foldr2 (lambda (_g5106451068_
                                                              _g5106551071_
                                                              _g5106651073_)
                                                       (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@lambda)
                           (cons _g5106551071_ (cons _g5106451068_ '())))
                     _g5106651073_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()
                                                     _L51047_
                                                     _L51049_)))
                                     '()))))
                 _dispatch5096351041_
                 _arity5096451044_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop5095750999_
                                         _target5095450993_
                                         '()
                                         '()))
                                      (_g5094750976_ _g5094850980_)))))
                            (_g5094750976_ _g5094850980_))))
                    (_g5094750976_ _g5094850980_)))))
        (_g5094651076_ _$stx50943_))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx51081_)
      (let* ((_g5108551103_
              (lambda (_g5108651099_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5108651099_)))
             (_g5108451158_
              (lambda (_g5108651107_)
                (if (gx#stx-pair? _g5108651107_)
                    (let ((_e5108951110_ (gx#syntax-e _g5108651107_)))
                      (let ((_hd5109051114_ (##car _e5108951110_))
                            (_tl5109151117_ (##cdr _e5108951110_)))
                        (if (gx#stx-pair? _tl5109151117_)
                            (let ((_e5109251120_ (gx#syntax-e _tl5109151117_)))
                              (let ((_hd5109351124_ (##car _e5109251120_))
                                    (_tl5109451127_ (##cdr _e5109251120_)))
                                (if (gx#stx-pair? _tl5109451127_)
                                    (let ((_e5109551130_
                                           (gx#syntax-e _tl5109451127_)))
                                      (let ((_hd5109651134_
                                             (##car _e5109551130_))
                                            (_tl5109751137_
                                             (##cdr _e5109551130_)))
                                        (if (gx#stx-null? _tl5109751137_)
                                            ((lambda (_L51140_ _L51142_)
                                               (cons (gx#datum->syntax__0
                                                      '#f
                                                      'make-!kw-lambda)
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons (gx#datum->syntax__0 '#f 'kw-lambda) '()))
                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                               (cons _L51142_ '()))
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons _L51140_ '()))
                               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd5109651134_
                                             _hd5109351124_)
                                            (_g5108551103_ _g5108651107_))))
                                    (_g5108551103_ _g5108651107_))))
                            (_g5108551103_ _g5108651107_))))
                    (_g5108551103_ _g5108651107_)))))
        (_g5108451158_ _$stx51081_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx51162_)
      (let* ((_g5116651184_
              (lambda (_g5116751180_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5116751180_)))
             (_g5116551239_
              (lambda (_g5116751188_)
                (if (gx#stx-pair? _g5116751188_)
                    (let ((_e5117051191_ (gx#syntax-e _g5116751188_)))
                      (let ((_hd5117151195_ (##car _e5117051191_))
                            (_tl5117251198_ (##cdr _e5117051191_)))
                        (if (gx#stx-pair? _tl5117251198_)
                            (let ((_e5117351201_ (gx#syntax-e _tl5117251198_)))
                              (let ((_hd5117451205_ (##car _e5117351201_))
                                    (_tl5117551208_ (##cdr _e5117351201_)))
                                (if (gx#stx-pair? _tl5117551208_)
                                    (let ((_e5117651211_
                                           (gx#syntax-e _tl5117551208_)))
                                      (let ((_hd5117751215_
                                             (##car _e5117651211_))
                                            (_tl5117851218_
                                             (##cdr _e5117651211_)))
                                        (if (gx#stx-null? _tl5117851218_)
                                            ((lambda (_L51221_ _L51223_)
                                               (cons (gx#datum->syntax__0
                                                      '#f
                                                      'make-!kw-lambda-primary)
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons (gx#datum->syntax__0 '#f 'kw-lambda-dispatch)
                               '()))
                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                               (cons _L51223_ '()))
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons _L51221_ '()))
                               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd5117751215_
                                             _hd5117451205_)
                                            (_g5116651184_ _g5116751188_))))
                                    (_g5116651184_ _g5116751188_))))
                            (_g5116651184_ _g5116751188_))))
                    (_g5116651184_ _g5116751188_)))))
        (_g5116551239_ _$stx51162_)))))
