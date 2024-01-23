(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<syntax-sugar>[1]#_g42603_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core$<syntax-sugar>[:0:]#syntax-rules|
      (lambda (_stx42_)
        (let* ((_g4569_ (lambda (_g4665_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g4665_)))
               (_g44374_
                (lambda (_g4673_)
                  (if (gx#stx-pair? _g4673_)
                      (let ((_e5176_ (gx#syntax-e _g4673_)))
                        (let ((_hd5080_
                               (let () (declare (not safe)) (##car _e5176_)))
                              (_tl4983_
                               (let () (declare (not safe)) (##cdr _e5176_))))
                          (if (gx#stx-pair? _tl4983_)
                              (let ((_e5486_ (gx#syntax-e _tl4983_)))
                                (let ((_hd5390_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5486_)))
                                      (_tl5293_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5486_))))
                                  (if (gx#stx-pair/null? _tl5293_)
                                      (let ((_g42599_
                                             (gx#syntax-split-splice
                                              _tl5293_
                                              '0)))
                                        (begin
                                          (let ((_g42600_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g42599_)
                                                       (##vector-length
                                                        _g42599_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g42600_ 2)))
                                                (error "Context expects 2 values"
                                                       _g42600_)))
                                          (let ((_target5596_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g42599_ 0)))
                                                (_tl5799_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g42599_ 1))))
                                            (if (gx#stx-null? _tl5799_)
                                                (letrec ((_loop58102_
                                                          (lambda (_hd56106_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clauses62109_)
                    (if (gx#stx-pair? _hd56106_)
                        (let ((_e59112_ (gx#syntax-e _hd56106_)))
                          (let ((_lp-hd60116_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e59112_)))
                                (_lp-tl61119_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e59112_))))
                            (_loop58102_
                             _lp-tl61119_
                             (cons _lp-hd60116_ _clauses62109_))))
                        (let ((_clauses63122_ (reverse _clauses62109_)))
                          ((lambda (_L126_ _L128_)
                             (if (gx#identifier-list? _L128_)
                                 (let* ((_body291_
                                         (gx#stx-map
                                          (lambda (_clause148_)
                                            (let* ((___stx3694036941_
                                                    _clause148_)
                                                   (_g152179_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx3694036941_))))
                                              (let ((___kont3694336944_
                                                     (lambda (_L264_ _L266_)
                                                       (cons _L266_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'syntax)
                                 (cons _L264_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont3694536946_
                                                     (lambda (_L216_
                                                              _L218_
                                                              _L219_)
                                                       (cons _L219_
                                                             (cons _L218_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'syntax)
                                       (cons _L216_ '()))
                                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx3694036941_)
                                                    (let ((_e158244_
                                                           (gx#syntax-e
                                                            ___stx3694036941_)))
                                                      (let ((_tl156251_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e158244_)))
                    (_hd157248_
                     (let () (declare (not safe)) (##car _e158244_))))
                (if (gx#stx-pair? _tl156251_)
                    (let ((_e161254_ (gx#syntax-e _tl156251_)))
                      (let ((_tl159261_
                             (let () (declare (not safe)) (##cdr _e161254_)))
                            (_hd160258_
                             (let () (declare (not safe)) (##car _e161254_))))
                        (if (gx#stx-null? _tl159261_)
                            (___kont3694336944_ _hd160258_ _hd157248_)
                            (if (gx#stx-pair? _tl159261_)
                                (let ((_e173206_ (gx#syntax-e _tl159261_)))
                                  (let ((_tl171213_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e173206_)))
                                        (_hd172210_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e173206_))))
                                    (if (gx#stx-null? _tl171213_)
                                        (___kont3694536946_
                                         _hd172210_
                                         _hd160258_
                                         _hd157248_)
                                        (let ()
                                          (declare (not safe))
                                          (_g152179_)))))
                                (let () (declare (not safe)) (_g152179_))))))
                    (let () (declare (not safe)) (_g152179_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g152179_))))))
                                          (foldr (lambda (_g282285_ _g283288_)
                                                   (cons _g282285_ _g283288_))
                                                 '()
                                                 _L126_)))
                                        (_g294311_
                                         (lambda (_g295307_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g295307_)))
                                        (_g293370_
                                         (lambda (_g295315_)
                                           (if (gx#stx-pair/null? _g295315_)
                                               (let ((_g42601_
                                                      (gx#syntax-split-splice
                                                       _g295315_
                                                       '0)))
                                                 (begin
                                                   (let ((_g42602_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g42601_)
                        (##vector-length _g42601_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g42602_ 2)))
                 (error "Context expects 2 values" _g42602_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target297318_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g42601_
                                                             0)))
                                                         (_tl299321_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g42601_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _tl299321_)
                                                         (letrec ((_loop300324_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd298328_ _clause304331_)
                             (if (gx#stx-pair? _hd298328_)
                                 (let ((_e301334_ (gx#syntax-e _hd298328_)))
                                   (let ((_lp-hd302338_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e301334_)))
                                         (_lp-tl303341_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e301334_))))
                                     (_loop300324_
                                      _lp-tl303341_
                                      (cons _lp-hd302338_ _clause304331_))))
                                 (let ((_clause305344_
                                        (reverse _clause304331_)))
                                   ((lambda (_L348_)
                                      (cons (gx#datum->syntax '#f 'lambda%)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         '$stx)
                                                        '())
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'syntax-case)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '$stx)
                            (cons _L128_
                                  (foldr (lambda (_g361364_ _g362367_)
                                           (cons _g361364_ _g362367_))
                                         '()
                                         _L348_))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _clause305344_))))))
                   (_loop300324_ _target297318_ '()))
                 (_g294311_ _g295315_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g294311_ _g295315_)))))
                                   (_g293370_ _body291_))
                                 (_g4569_ _g4673_)))
                           _clauses63122_
                           _hd5390_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop58102_
                                                   _target5596_
                                                   '()))
                                                (_g4569_ _g4673_)))))
                                      (_g4569_ _g4673_))))
                              (_g4569_ _g4673_))))
                      (_g4569_ _g4673_)))))
          (_g44374_ _stx42_))))
    (define |gerbil/core$<syntax-sugar>[:0:]#with-syntax|
      (lambda (_stx380_)
        (let* ((___stx3698436985_ _stx380_)
               (_g385470_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx3698436985_))))
          (let ((___kont3698736988_
                 (lambda (_L810_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons '()
                               (foldr (lambda (_g826829_ _g827832_)
                                        (cons _g826829_ _g827832_))
                                      '()
                                      _L810_)))))
                (___kont3699136992_
                 (lambda (_L718_ _L720_ _L721_)
                   (cons (gx#datum->syntax '#f 'syntax-case)
                         (cons _L720_
                               (cons '()
                                     (cons (cons _L721_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'let-values)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (foldr (lambda (_g744747_ _g745750_)
                                    (cons _g744747_ _g745750_))
                                  '()
                                  _L718_)))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
                (___kont3699536996_
                 (lambda (_L581_ _L583_ _L584_)
                   (cons (gx#datum->syntax '#f 'syntax-case)
                         (cons (cons (gx#datum->syntax '#f 'list)
                                     (foldr (lambda (_g610613_ _g611616_)
                                              (cons _g610613_ _g611616_))
                                            '()
                                            _L583_))
                               (cons '()
                                     (cons (cons (foldr (lambda (_g608619_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g609622_)
                  (cons _g608619_ _g609622_))
                '()
                _L584_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'let-values)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (foldr (lambda (_g606625_ _g607628_)
                                    (cons _g606625_ _g607628_))
                                  '()
                                  _L581_)))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))))
            (let* ((___match3708537086_
                    (lambda (_e435477_
                             _hd434481_
                             _tl433484_
                             _e438487_
                             _hd437491_
                             _tl436494_
                             ___splice3699736998_
                             _target439497_
                             _tl441500_)
                      (letrec ((_loop442503_
                                (lambda (_hd440507_ _e446510_ _pat447512_)
                                  (if (gx#stx-pair? _hd440507_)
                                      (let ((_e443515_
                                             (gx#syntax-e _hd440507_)))
                                        (let ((_lp-tl445522_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e443515_)))
                                              (_lp-hd444519_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e443515_))))
                                          (if (gx#stx-pair? _lp-hd444519_)
                                              (let ((_e452525_
                                                     (gx#syntax-e
                                                      _lp-hd444519_)))
                                                (let ((_tl450532_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e452525_)))
                                                      (_hd451529_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e452525_))))
                                                  (if (gx#stx-pair? _tl450532_)
                                                      (let ((_e455535_
                                                             (gx#syntax-e
                                                              _tl450532_)))
                                                        (let ((_tl453542_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e455535_)))
                      (_hd454539_
                       (let () (declare (not safe)) (##car _e455535_))))
                  (if (gx#stx-null? _tl453542_)
                      (_loop442503_
                       _lp-tl445522_
                       (cons _hd454539_ _e446510_)
                       (cons _hd451529_ _pat447512_))
                      (let () (declare (not safe)) (_g385470_)))))
              (let () (declare (not safe)) (_g385470_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g385470_)))))
                                      (let ((_pat449548_ (reverse _pat447512_))
                                            (_e448545_ (reverse _e446510_)))
                                        (if (gx#stx-pair/null? _tl436494_)
                                            (let ((___splice3699937000_
                                                   (gx#syntax-split-splice
                                                    _tl436494_
                                                    '0)))
                                              (let ((_tl458554_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice3699937000_
                                                        '1)))
                                                    (_target456551_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice3699937000_
                                                        '0))))
                                                (if (gx#stx-null? _tl458554_)
                                                    (letrec ((_loop459557_
                                                              (lambda (_hd457561_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body463564_)
                        (if (gx#stx-pair? _hd457561_)
                            (let ((_e460567_ (gx#syntax-e _hd457561_)))
                              (let ((_lp-tl462574_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e460567_)))
                                    (_lp-hd461571_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e460567_))))
                                (_loop459557_
                                 _lp-tl462574_
                                 (cons _lp-hd461571_ _body463564_))))
                            (let ((_body464577_ (reverse _body463564_)))
                              (___kont3699536996_
                               _body464577_
                               _e448545_
                               _pat449548_))))))
              (_loop459557_ _target456551_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g385470_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g385470_))))))))
                        (_loop442503_ _target439497_ '() '()))))
                   (___match3706537066_
                    (lambda (_e408638_
                             _hd407642_
                             _tl406645_
                             _e411648_
                             _hd410652_
                             _tl409655_
                             _e414658_
                             _hd413662_
                             _tl412665_
                             _e417668_
                             _hd416672_
                             _tl415675_
                             _e420678_
                             _hd419682_
                             _tl418685_
                             ___splice3699336994_
                             _target421688_
                             _tl423691_)
                      (letrec ((_loop424694_
                                (lambda (_hd422698_ _body428701_)
                                  (if (gx#stx-pair? _hd422698_)
                                      (let ((_e425704_
                                             (gx#syntax-e _hd422698_)))
                                        (let ((_lp-tl427711_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e425704_)))
                                              (_lp-hd426708_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e425704_))))
                                          (_loop424694_
                                           _lp-tl427711_
                                           (cons _lp-hd426708_ _body428701_))))
                                      (let ((_body429714_
                                             (reverse _body428701_)))
                                        (___kont3699136992_
                                         _body429714_
                                         _hd419682_
                                         _hd416672_))))))
                        (_loop424694_ _target421688_ '()))))
                   (___match3702337024_
                    (lambda (_e390760_
                             _hd389764_
                             _tl388767_
                             _e393770_
                             _hd392774_
                             _tl391777_
                             ___splice3698936990_
                             _target394780_
                             _tl396783_)
                      (letrec ((_loop397786_
                                (lambda (_hd395790_ _body401793_)
                                  (if (gx#stx-pair? _hd395790_)
                                      (let ((_e398796_
                                             (gx#syntax-e _hd395790_)))
                                        (let ((_lp-tl400803_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e398796_)))
                                              (_lp-hd399800_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e398796_))))
                                          (_loop397786_
                                           _lp-tl400803_
                                           (cons _lp-hd399800_ _body401793_))))
                                      (let ((_body402806_
                                             (reverse _body401793_)))
                                        (___kont3698736988_ _body402806_))))))
                        (_loop397786_ _target394780_ '())))))
              (if (gx#stx-pair? ___stx3698436985_)
                  (let ((_e390760_ (gx#syntax-e ___stx3698436985_)))
                    (let ((_tl388767_
                           (let () (declare (not safe)) (##cdr _e390760_)))
                          (_hd389764_
                           (let () (declare (not safe)) (##car _e390760_))))
                      (if (gx#stx-pair? _tl388767_)
                          (let ((_e393770_ (gx#syntax-e _tl388767_)))
                            (let ((_tl391777_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e393770_)))
                                  (_hd392774_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e393770_))))
                              (if (gx#stx-null? _hd392774_)
                                  (if (gx#stx-pair/null? _tl391777_)
                                      (let ((___splice3698936990_
                                             (gx#syntax-split-splice
                                              _tl391777_
                                              '0)))
                                        (let ((_tl396783_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice3698936990_
                                                  '1)))
                                              (_target394780_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice3698936990_
                                                  '0))))
                                          (if (gx#stx-null? _tl396783_)
                                              (___match3702337024_
                                               _e390760_
                                               _hd389764_
                                               _tl388767_
                                               _e393770_
                                               _hd392774_
                                               _tl391777_
                                               ___splice3698936990_
                                               _target394780_
                                               _tl396783_)
                                              (if (gx#stx-pair/null?
                                                   _hd392774_)
                                                  (let ((___splice3699736998_
                                                         (gx#syntax-split-splice
                                                          _hd392774_
                                                          '0)))
                                                    (let ((_tl441500_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice3699736998_
                                                              '1)))
                                                          (_target439497_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice3699736998_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl441500_)
                                                          (___match3708537086_
                                                           _e390760_
                                                           _hd389764_
                                                           _tl388767_
                                                           _e393770_
                                                           _hd392774_
                                                           _tl391777_
                                                           ___splice3699736998_
                                                           _target439497_
                                                           _tl441500_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g385470_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g385470_))))))
                                      (if (gx#stx-pair/null? _hd392774_)
                                          (let ((___splice3699736998_
                                                 (gx#syntax-split-splice
                                                  _hd392774_
                                                  '0)))
                                            (let ((_tl441500_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice3699736998_
                                                      '1)))
                                                  (_target439497_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice3699736998_
                                                      '0))))
                                              (if (gx#stx-null? _tl441500_)
                                                  (___match3708537086_
                                                   _e390760_
                                                   _hd389764_
                                                   _tl388767_
                                                   _e393770_
                                                   _hd392774_
                                                   _tl391777_
                                                   ___splice3699736998_
                                                   _target439497_
                                                   _tl441500_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g385470_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g385470_))))
                                  (if (gx#stx-pair? _hd392774_)
                                      (let ((_e414658_
                                             (gx#syntax-e _hd392774_)))
                                        (let ((_tl412665_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e414658_)))
                                              (_hd413662_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e414658_))))
                                          (if (gx#stx-pair? _hd413662_)
                                              (let ((_e417668_
                                                     (gx#syntax-e _hd413662_)))
                                                (let ((_tl415675_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e417668_)))
                                                      (_hd416672_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e417668_))))
                                                  (if (gx#stx-pair? _tl415675_)
                                                      (let ((_e420678_
                                                             (gx#syntax-e
                                                              _tl415675_)))
                                                        (let ((_tl418685_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e420678_)))
                      (_hd419682_
                       (let () (declare (not safe)) (##car _e420678_))))
                  (if (gx#stx-null? _tl418685_)
                      (if (gx#stx-null? _tl412665_)
                          (if (gx#stx-pair/null? _tl391777_)
                              (let ((___splice3699336994_
                                     (gx#syntax-split-splice _tl391777_ '0)))
                                (let ((_tl423691_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice3699336994_
                                          '1)))
                                      (_target421688_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice3699336994_
                                          '0))))
                                  (if (gx#stx-null? _tl423691_)
                                      (___match3706537066_
                                       _e390760_
                                       _hd389764_
                                       _tl388767_
                                       _e393770_
                                       _hd392774_
                                       _tl391777_
                                       _e414658_
                                       _hd413662_
                                       _tl412665_
                                       _e417668_
                                       _hd416672_
                                       _tl415675_
                                       _e420678_
                                       _hd419682_
                                       _tl418685_
                                       ___splice3699336994_
                                       _target421688_
                                       _tl423691_)
                                      (if (gx#stx-pair/null? _hd392774_)
                                          (let ((___splice3699736998_
                                                 (gx#syntax-split-splice
                                                  _hd392774_
                                                  '0)))
                                            (let ((_tl441500_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice3699736998_
                                                      '1)))
                                                  (_target439497_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice3699736998_
                                                      '0))))
                                              (if (gx#stx-null? _tl441500_)
                                                  (___match3708537086_
                                                   _e390760_
                                                   _hd389764_
                                                   _tl388767_
                                                   _e393770_
                                                   _hd392774_
                                                   _tl391777_
                                                   ___splice3699736998_
                                                   _target439497_
                                                   _tl441500_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g385470_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g385470_))))))
                              (if (gx#stx-pair/null? _hd392774_)
                                  (let ((___splice3699736998_
                                         (gx#syntax-split-splice
                                          _hd392774_
                                          '0)))
                                    (let ((_tl441500_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice3699736998_
                                              '1)))
                                          (_target439497_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice3699736998_
                                              '0))))
                                      (if (gx#stx-null? _tl441500_)
                                          (___match3708537086_
                                           _e390760_
                                           _hd389764_
                                           _tl388767_
                                           _e393770_
                                           _hd392774_
                                           _tl391777_
                                           ___splice3699736998_
                                           _target439497_
                                           _tl441500_)
                                          (let ()
                                            (declare (not safe))
                                            (_g385470_)))))
                                  (let () (declare (not safe)) (_g385470_))))
                          (if (gx#stx-pair/null? _hd392774_)
                              (let ((___splice3699736998_
                                     (gx#syntax-split-splice _hd392774_ '0)))
                                (let ((_tl441500_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice3699736998_
                                          '1)))
                                      (_target439497_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice3699736998_
                                          '0))))
                                  (if (gx#stx-null? _tl441500_)
                                      (___match3708537086_
                                       _e390760_
                                       _hd389764_
                                       _tl388767_
                                       _e393770_
                                       _hd392774_
                                       _tl391777_
                                       ___splice3699736998_
                                       _target439497_
                                       _tl441500_)
                                      (let ()
                                        (declare (not safe))
                                        (_g385470_)))))
                              (let () (declare (not safe)) (_g385470_))))
                      (if (gx#stx-pair/null? _hd392774_)
                          (let ((___splice3699736998_
                                 (gx#syntax-split-splice _hd392774_ '0)))
                            (let ((_tl441500_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice3699736998_ '1)))
                                  (_target439497_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice3699736998_ '0))))
                              (if (gx#stx-null? _tl441500_)
                                  (___match3708537086_
                                   _e390760_
                                   _hd389764_
                                   _tl388767_
                                   _e393770_
                                   _hd392774_
                                   _tl391777_
                                   ___splice3699736998_
                                   _target439497_
                                   _tl441500_)
                                  (let () (declare (not safe)) (_g385470_)))))
                          (let () (declare (not safe)) (_g385470_))))))
              (if (gx#stx-pair/null? _hd392774_)
                  (let ((___splice3699736998_
                         (gx#syntax-split-splice _hd392774_ '0)))
                    (let ((_tl441500_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice3699736998_ '1)))
                          (_target439497_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice3699736998_ '0))))
                      (if (gx#stx-null? _tl441500_)
                          (___match3708537086_
                           _e390760_
                           _hd389764_
                           _tl388767_
                           _e393770_
                           _hd392774_
                           _tl391777_
                           ___splice3699736998_
                           _target439497_
                           _tl441500_)
                          (let () (declare (not safe)) (_g385470_)))))
                  (let () (declare (not safe)) (_g385470_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _hd392774_)
                                                  (let ((___splice3699736998_
                                                         (gx#syntax-split-splice
                                                          _hd392774_
                                                          '0)))
                                                    (let ((_tl441500_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice3699736998_
                                                              '1)))
                                                          (_target439497_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice3699736998_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl441500_)
                                                          (___match3708537086_
                                                           _e390760_
                                                           _hd389764_
                                                           _tl388767_
                                                           _e393770_
                                                           _hd392774_
                                                           _tl391777_
                                                           ___splice3699736998_
                                                           _target439497_
                                                           _tl441500_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g385470_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g385470_))))))
                                      (if (gx#stx-pair/null? _hd392774_)
                                          (let ((___splice3699736998_
                                                 (gx#syntax-split-splice
                                                  _hd392774_
                                                  '0)))
                                            (let ((_tl441500_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice3699736998_
                                                      '1)))
                                                  (_target439497_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice3699736998_
                                                      '0))))
                                              (if (gx#stx-null? _tl441500_)
                                                  (___match3708537086_
                                                   _e390760_
                                                   _hd389764_
                                                   _tl388767_
                                                   _e393770_
                                                   _hd392774_
                                                   _tl391777_
                                                   ___splice3699736998_
                                                   _target439497_
                                                   _tl441500_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g385470_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g385470_)))))))
                          (let () (declare (not safe)) (_g385470_)))))
                  (let () (declare (not safe)) (_g385470_))))))))
    (define |gerbil/core$<syntax-sugar>[:0:]#with-syntax*|
      (lambda (_stx843_)
        (let* ((___stx3708837089_ _stx843_)
               (_g848925_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx3708837089_))))
          (let ((___kont3709137092_
                 (lambda (_L1221_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons '()
                               (foldr (lambda (_g12371240_ _g12381243_)
                                        (cons _g12371240_ _g12381243_))
                                      '()
                                      _L1221_)))))
                (___kont3709537096_
                 (lambda (_L1123_ _L1125_ _L1126_ _L1127_ _L1128_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons (cons (cons _L1127_ (cons _L1126_ '())) '())
                               (cons (cons _L1128_
                                           (cons _L1125_
                                                 (foldr (lambda (_g11551158_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g11561161_)
                  (cons _g11551158_ _g11561161_))
                '()
                _L1123_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (___kont3709937100_
                 (lambda (_L992_ _L994_ _L995_ _L996_)
                   (cons (gx#datum->syntax '#f 'with-syntax)
                         (cons (cons _L995_ '())
                               (cons (cons _L996_
                                           (cons _L994_
                                                 (foldr (lambda (_g10171020_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g10181023_)
                  (cons _g10171020_ _g10181023_))
                '()
                _L992_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((___match3720137202_
                    (lambda (_e904932_
                             _hd903936_
                             _tl902939_
                             _e907942_
                             _hd906946_
                             _tl905949_
                             _e910952_
                             _hd909956_
                             _tl908959_
                             ___splice3710137102_
                             _target911962_
                             _tl913965_)
                      (letrec ((_loop914968_
                                (lambda (_hd912972_ _body918975_)
                                  (if (gx#stx-pair? _hd912972_)
                                      (let ((_e915978_
                                             (gx#syntax-e _hd912972_)))
                                        (let ((_lp-tl917985_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e915978_)))
                                              (_lp-hd916982_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e915978_))))
                                          (_loop914968_
                                           _lp-tl917985_
                                           (cons _lp-hd916982_ _body918975_))))
                                      (let ((_body919988_
                                             (reverse _body918975_)))
                                        (___kont3709937100_
                                         _body919988_
                                         _tl908959_
                                         _hd909956_
                                         _hd903936_))))))
                        (_loop914968_ _target911962_ '()))))
                   (___match3717537176_
                    (lambda (_e8731033_
                             _hd8721037_
                             _tl8711040_
                             _e8761043_
                             _hd8751047_
                             _tl8741050_
                             _e8791053_
                             _hd8781057_
                             _tl8771060_
                             _e8821063_
                             _hd8811067_
                             _tl8801070_
                             _e8851073_
                             _hd8841077_
                             _tl8831080_
                             _e8881083_
                             _hd8871087_
                             _tl8861090_
                             ___splice3709737098_
                             _target8891093_
                             _tl8911096_)
                      (letrec ((_loop8921099_
                                (lambda (_hd8901103_ _body8961106_)
                                  (if (gx#stx-pair? _hd8901103_)
                                      (let ((_e8931109_
                                             (gx#syntax-e _hd8901103_)))
                                        (let ((_lp-tl8951116_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e8931109_)))
                                              (_lp-hd8941113_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e8931109_))))
                                          (_loop8921099_
                                           _lp-tl8951116_
                                           (cons _lp-hd8941113_
                                                 _body8961106_))))
                                      (let ((_body8971119_
                                             (reverse _body8961106_)))
                                        (___kont3709537096_
                                         _body8971119_
                                         _tl8771060_
                                         _hd8871087_
                                         _tl8831080_
                                         _hd8721037_))))))
                        (_loop8921099_ _target8891093_ '()))))
                   (___match3712537126_
                    (lambda (_e8531171_
                             _hd8521175_
                             _tl8511178_
                             _e8561181_
                             _hd8551185_
                             _tl8541188_
                             ___splice3709337094_
                             _target8571191_
                             _tl8591194_)
                      (letrec ((_loop8601197_
                                (lambda (_hd8581201_ _body8641204_)
                                  (if (gx#stx-pair? _hd8581201_)
                                      (let ((_e8611207_
                                             (gx#syntax-e _hd8581201_)))
                                        (let ((_lp-tl8631214_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e8611207_)))
                                              (_lp-hd8621211_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e8611207_))))
                                          (_loop8601197_
                                           _lp-tl8631214_
                                           (cons _lp-hd8621211_
                                                 _body8641204_))))
                                      (let ((_body8651217_
                                             (reverse _body8641204_)))
                                        (___kont3709137092_ _body8651217_))))))
                        (_loop8601197_ _target8571191_ '())))))
              (if (gx#stx-pair? ___stx3708837089_)
                  (let ((_e8531171_ (gx#syntax-e ___stx3708837089_)))
                    (let ((_tl8511178_
                           (let () (declare (not safe)) (##cdr _e8531171_)))
                          (_hd8521175_
                           (let () (declare (not safe)) (##car _e8531171_))))
                      (if (gx#stx-pair? _tl8511178_)
                          (let ((_e8561181_ (gx#syntax-e _tl8511178_)))
                            (let ((_tl8541188_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e8561181_)))
                                  (_hd8551185_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e8561181_))))
                              (if (gx#stx-null? _hd8551185_)
                                  (if (gx#stx-pair/null? _tl8541188_)
                                      (let ((___splice3709337094_
                                             (gx#syntax-split-splice
                                              _tl8541188_
                                              '0)))
                                        (let ((_tl8591194_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice3709337094_
                                                  '1)))
                                              (_target8571191_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice3709337094_
                                                  '0))))
                                          (if (gx#stx-null? _tl8591194_)
                                              (___match3712537126_
                                               _e8531171_
                                               _hd8521175_
                                               _tl8511178_
                                               _e8561181_
                                               _hd8551185_
                                               _tl8541188_
                                               ___splice3709337094_
                                               _target8571191_
                                               _tl8591194_)
                                              (let ()
                                                (declare (not safe))
                                                (_g848925_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g848925_)))
                                  (if (gx#stx-pair? _hd8551185_)
                                      (let ((_e8791053_
                                             (gx#syntax-e _hd8551185_)))
                                        (let ((_tl8771060_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e8791053_)))
                                              (_hd8781057_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e8791053_))))
                                          (if (gx#stx-pair? _hd8781057_)
                                              (let ((_e8821063_
                                                     (gx#syntax-e
                                                      _hd8781057_)))
                                                (let ((_tl8801070_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e8821063_)))
                                                      (_hd8811067_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e8821063_))))
                                                  (if (gx#stx-pair?
                                                       _hd8811067_)
                                                      (let ((_e8851073_
                                                             (gx#syntax-e
                                                              _hd8811067_)))
                                                        (let ((_tl8831080_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e8851073_)))
                      (_hd8841077_
                       (let () (declare (not safe)) (##car _e8851073_))))
                  (if (gx#identifier? _hd8841077_)
                      (if (gx#free-identifier=?
                           |gerbil/core$<syntax-sugar>[1]#_g42603_|
                           _hd8841077_)
                          (if (gx#stx-pair? _tl8801070_)
                              (let ((_e8881083_ (gx#syntax-e _tl8801070_)))
                                (let ((_tl8861090_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e8881083_)))
                                      (_hd8871087_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e8881083_))))
                                  (if (gx#stx-null? _tl8861090_)
                                      (if (gx#stx-pair/null? _tl8541188_)
                                          (let ((___splice3709737098_
                                                 (gx#syntax-split-splice
                                                  _tl8541188_
                                                  '0)))
                                            (let ((_tl8911096_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice3709737098_
                                                      '1)))
                                                  (_target8891093_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice3709737098_
                                                      '0))))
                                              (if (gx#stx-null? _tl8911096_)
                                                  (___match3717537176_
                                                   _e8531171_
                                                   _hd8521175_
                                                   _tl8511178_
                                                   _e8561181_
                                                   _hd8551185_
                                                   _tl8541188_
                                                   _e8791053_
                                                   _hd8781057_
                                                   _tl8771060_
                                                   _e8821063_
                                                   _hd8811067_
                                                   _tl8801070_
                                                   _e8851073_
                                                   _hd8841077_
                                                   _tl8831080_
                                                   _e8881083_
                                                   _hd8871087_
                                                   _tl8861090_
                                                   ___splice3709737098_
                                                   _target8891093_
                                                   _tl8911096_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g848925_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g848925_)))
                                      (if (gx#stx-pair/null? _tl8541188_)
                                          (let ((___splice3710137102_
                                                 (gx#syntax-split-splice
                                                  _tl8541188_
                                                  '0)))
                                            (let ((_tl913965_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice3710137102_
                                                      '1)))
                                                  (_target911962_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice3710137102_
                                                      '0))))
                                              (if (gx#stx-null? _tl913965_)
                                                  (___match3720137202_
                                                   _e8531171_
                                                   _hd8521175_
                                                   _tl8511178_
                                                   _e8561181_
                                                   _hd8551185_
                                                   _tl8541188_
                                                   _e8791053_
                                                   _hd8781057_
                                                   _tl8771060_
                                                   ___splice3710137102_
                                                   _target911962_
                                                   _tl913965_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g848925_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g848925_))))))
                              (if (gx#stx-pair/null? _tl8541188_)
                                  (let ((___splice3710137102_
                                         (gx#syntax-split-splice
                                          _tl8541188_
                                          '0)))
                                    (let ((_tl913965_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice3710137102_
                                              '1)))
                                          (_target911962_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice3710137102_
                                              '0))))
                                      (if (gx#stx-null? _tl913965_)
                                          (___match3720137202_
                                           _e8531171_
                                           _hd8521175_
                                           _tl8511178_
                                           _e8561181_
                                           _hd8551185_
                                           _tl8541188_
                                           _e8791053_
                                           _hd8781057_
                                           _tl8771060_
                                           ___splice3710137102_
                                           _target911962_
                                           _tl913965_)
                                          (let ()
                                            (declare (not safe))
                                            (_g848925_)))))
                                  (let () (declare (not safe)) (_g848925_))))
                          (if (gx#stx-pair/null? _tl8541188_)
                              (let ((___splice3710137102_
                                     (gx#syntax-split-splice _tl8541188_ '0)))
                                (let ((_tl913965_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice3710137102_
                                          '1)))
                                      (_target911962_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice3710137102_
                                          '0))))
                                  (if (gx#stx-null? _tl913965_)
                                      (___match3720137202_
                                       _e8531171_
                                       _hd8521175_
                                       _tl8511178_
                                       _e8561181_
                                       _hd8551185_
                                       _tl8541188_
                                       _e8791053_
                                       _hd8781057_
                                       _tl8771060_
                                       ___splice3710137102_
                                       _target911962_
                                       _tl913965_)
                                      (let ()
                                        (declare (not safe))
                                        (_g848925_)))))
                              (let () (declare (not safe)) (_g848925_))))
                      (if (gx#stx-pair/null? _tl8541188_)
                          (let ((___splice3710137102_
                                 (gx#syntax-split-splice _tl8541188_ '0)))
                            (let ((_tl913965_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice3710137102_ '1)))
                                  (_target911962_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice3710137102_ '0))))
                              (if (gx#stx-null? _tl913965_)
                                  (___match3720137202_
                                   _e8531171_
                                   _hd8521175_
                                   _tl8511178_
                                   _e8561181_
                                   _hd8551185_
                                   _tl8541188_
                                   _e8791053_
                                   _hd8781057_
                                   _tl8771060_
                                   ___splice3710137102_
                                   _target911962_
                                   _tl913965_)
                                  (let () (declare (not safe)) (_g848925_)))))
                          (let () (declare (not safe)) (_g848925_))))))
              (if (gx#stx-pair/null? _tl8541188_)
                  (let ((___splice3710137102_
                         (gx#syntax-split-splice _tl8541188_ '0)))
                    (let ((_tl913965_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice3710137102_ '1)))
                          (_target911962_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice3710137102_ '0))))
                      (if (gx#stx-null? _tl913965_)
                          (___match3720137202_
                           _e8531171_
                           _hd8521175_
                           _tl8511178_
                           _e8561181_
                           _hd8551185_
                           _tl8541188_
                           _e8791053_
                           _hd8781057_
                           _tl8771060_
                           ___splice3710137102_
                           _target911962_
                           _tl913965_)
                          (let () (declare (not safe)) (_g848925_)))))
                  (let () (declare (not safe)) (_g848925_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _tl8541188_)
                                                  (let ((___splice3710137102_
                                                         (gx#syntax-split-splice
                                                          _tl8541188_
                                                          '0)))
                                                    (let ((_tl913965_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice3710137102_
                                                              '1)))
                                                          (_target911962_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice3710137102_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl913965_)
                                                          (___match3720137202_
                                                           _e8531171_
                                                           _hd8521175_
                                                           _tl8511178_
                                                           _e8561181_
                                                           _hd8551185_
                                                           _tl8541188_
                                                           _e8791053_
                                                           _hd8781057_
                                                           _tl8771060_
                                                           ___splice3710137102_
                                                           _target911962_
                                                           _tl913965_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g848925_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g848925_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g848925_))))))
                          (let () (declare (not safe)) (_g848925_)))))
                  (let () (declare (not safe)) (_g848925_))))))))
    (define |gerbil/core$<syntax-sugar>[:0:]#syntax/loc|
      (lambda (_stx1253_)
        (let* ((_g12561274_
                (lambda (_g12571270_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g12571270_)))
               (_g12551329_
                (lambda (_g12571278_)
                  (if (gx#stx-pair? _g12571278_)
                      (let ((_e12621281_ (gx#syntax-e _g12571278_)))
                        (let ((_hd12611285_
                               (let ()
                                 (declare (not safe))
                                 (##car _e12621281_)))
                              (_tl12601288_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e12621281_))))
                          (if (gx#stx-pair? _tl12601288_)
                              (let ((_e12651291_ (gx#syntax-e _tl12601288_)))
                                (let ((_hd12641295_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e12651291_)))
                                      (_tl12631298_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e12651291_))))
                                  (if (gx#stx-pair? _tl12631298_)
                                      (let ((_e12681301_
                                             (gx#syntax-e _tl12631298_)))
                                        (let ((_hd12671305_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e12681301_)))
                                              (_tl12661308_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e12681301_))))
                                          (if (gx#stx-null? _tl12661308_)
                                              ((lambda (_L1311_ _L1313_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'stx-wrap-source)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax)
                           (cons _L1311_ '()))
                     (cons (cons (gx#datum->syntax '#f 'stx-source)
                                 (cons _L1313_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd12671305_
                                               _hd12641295_)
                                              (_g12561274_ _g12571278_))))
                                      (_g12561274_ _g12571278_))))
                              (_g12561274_ _g12571278_))))
                      (_g12561274_ _g12571278_)))))
          (_g12551329_ _stx1253_))))))
