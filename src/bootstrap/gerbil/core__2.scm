(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<syntax-sugar>[1]#_g42124_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core$<syntax-sugar>[:0:]#syntax-rules|
      (lambda (_stx41_)
        (let* ((_g4468_ (lambda (_g4564_)
                          (gx#raise-syntax-error '#f '"Bad syntax" _g4564_)))
               (_g43374_
                (lambda (_g4572_)
                  (if (gx#stx-pair? _g4572_)
                      (let ((_e4875_ (gx#syntax-e _g4572_)))
                        (let ((_hd4979_
                               (let () (declare (not safe)) (##car _e4875_)))
                              (_tl5082_
                               (let () (declare (not safe)) (##cdr _e4875_))))
                          (if (gx#stx-pair? _tl5082_)
                              (let ((_e5185_ (gx#syntax-e _tl5082_)))
                                (let ((_hd5289_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5185_)))
                                      (_tl5392_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5185_))))
                                  (if (gx#stx-pair/null? _tl5392_)
                                      (let ((_g42120_
                                             (gx#syntax-split-splice
                                              _tl5392_
                                              '0)))
                                        (begin
                                          (let ((_g42121_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g42120_)
                                                       (##vector-length
                                                        _g42120_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g42121_ 2)))
                                                (error "Context expects 2 values"
                                                       _g42121_)))
                                          (let ((_target5495_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g42120_ 0)))
                                                (_tl5698_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g42120_ 1))))
                                            (if (gx#stx-null? _tl5698_)
                                                (letrec ((_loop57101_
                                                          (lambda (_hd55105_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clauses61108_)
                    (if (gx#stx-pair? _hd55105_)
                        (let ((_e58111_ (gx#syntax-e _hd55105_)))
                          (let ((_lp-hd59115_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e58111_)))
                                (_lp-tl60118_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e58111_))))
                            (_loop57101_
                             _lp-tl60118_
                             (cons _lp-hd59115_ _clauses61108_))))
                        (let ((_clauses62121_ (reverse _clauses61108_)))
                          ((lambda (_L125_ _L127_)
                             (if (gx#identifier-list? _L127_)
                                 (let* ((_body291_
                                         (gx#stx-map
                                          (lambda (_clause148_)
                                            (let* ((___stx3647336474_
                                                    _clause148_)
                                                   (_g152179_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       ___stx3647336474_))))
                                              (let ((___kont3647636477_
                                                     (lambda (_L264_ _L266_)
                                                       (cons _L266_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'syntax)
                                 (cons _L264_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont3647836479_
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
                                                     ___stx3647336474_)
                                                    (let ((_e156244_
                                                           (gx#syntax-e
                                                            ___stx3647336474_)))
                                                      (let ((_tl158251_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e156244_)))
                    (_hd157248_
                     (let () (declare (not safe)) (##car _e156244_))))
                (if (gx#stx-pair? _tl158251_)
                    (let ((_e159254_ (gx#syntax-e _tl158251_)))
                      (let ((_tl161261_
                             (let () (declare (not safe)) (##cdr _e159254_)))
                            (_hd160258_
                             (let () (declare (not safe)) (##car _e159254_))))
                        (if (gx#stx-null? _tl161261_)
                            (___kont3647636477_ _hd160258_ _hd157248_)
                            (if (gx#stx-pair? _tl161261_)
                                (let ((_e171206_ (gx#syntax-e _tl161261_)))
                                  (let ((_tl173213_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e171206_)))
                                        (_hd172210_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e171206_))))
                                    (if (gx#stx-null? _tl173213_)
                                        (___kont3647836479_
                                         _hd172210_
                                         _hd160258_
                                         _hd157248_)
                                        (_g152179_))))
                                (_g152179_)))))
                    (_g152179_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g152179_)))))
                                          (foldr (lambda (_g282285_ _g283288_)
                                                   (cons _g282285_ _g283288_))
                                                 '()
                                                 _L125_)))
                                        (_g294311_
                                         (lambda (_g295307_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g295307_)))
                                        (_g293370_
                                         (lambda (_g295315_)
                                           (if (gx#stx-pair/null? _g295315_)
                                               (let ((_g42122_
                                                      (gx#syntax-split-splice
                                                       _g295315_
                                                       '0)))
                                                 (begin
                                                   (let ((_g42123_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g42122_)
                        (##vector-length _g42122_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g42123_ 2)))
                 (error "Context expects 2 values" _g42123_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target297318_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g42122_
                                                             0)))
                                                         (_tl299321_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g42122_
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
                            (cons _L127_
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
                                 (_g4468_ _g4572_)))
                           _clauses62121_
                           _hd5289_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop57101_
                                                   _target5495_
                                                   '()))
                                                (_g4468_ _g4572_)))))
                                      (_g4468_ _g4572_))))
                              (_g4468_ _g4572_))))
                      (_g4468_ _g4572_)))))
          (_g43374_ _stx41_))))
    (define |gerbil/core$<syntax-sugar>[:0:]#with-syntax|
      (lambda (_stx380_)
        (let* ((___stx3651736518_ _stx380_)
               (_g385470_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3651736518_))))
          (let ((___kont3652036521_
                 (lambda (_L810_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons '()
                               (foldr (lambda (_g826829_ _g827832_)
                                        (cons _g826829_ _g827832_))
                                      '()
                                      _L810_)))))
                (___kont3652436525_
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
                (___kont3652836529_
                 (lambda (_L581_ _L583_ _L584_)
                   (cons (gx#datum->syntax '#f 'syntax-case)
                         (cons (cons (gx#datum->syntax '#f 'list)
                                     (foldr (lambda (_g606613_ _g607616_)
                                              (cons _g606613_ _g607616_))
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
                           (foldr (lambda (_g610625_ _g611628_)
                                    (cons _g610625_ _g611628_))
                                  '()
                                  _L581_)))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))))
            (let* ((___match3661836619_
                    (lambda (_e433477_
                             _hd434481_
                             _tl435484_
                             _e436487_
                             _hd437491_
                             _tl438494_
                             ___splice3653036531_
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
                                              (let ((_e450525_
                                                     (gx#syntax-e
                                                      _lp-hd444519_)))
                                                (let ((_tl452532_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e450525_)))
                                                      (_hd451529_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e450525_))))
                                                  (if (gx#stx-pair? _tl452532_)
                                                      (let ((_e453535_
                                                             (gx#syntax-e
                                                              _tl452532_)))
                                                        (let ((_tl455542_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e453535_)))
                      (_hd454539_
                       (let () (declare (not safe)) (##car _e453535_))))
                  (if (gx#stx-null? _tl455542_)
                      (_loop442503_
                       _lp-tl445522_
                       (cons _hd454539_ _e446510_)
                       (cons _hd451529_ _pat447512_))
                      (_g385470_))))
              (_g385470_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g385470_))))
                                      (let ((_pat449548_ (reverse _pat447512_))
                                            (_e448545_ (reverse _e446510_)))
                                        (if (gx#stx-pair/null? _tl438494_)
                                            (let ((___splice3653236533_
                                                   (gx#syntax-split-splice
                                                    _tl438494_
                                                    '0)))
                                              (let ((_tl458554_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice3653236533_
                                                        '1)))
                                                    (_target456551_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice3653236533_
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
                              (___kont3652836529_
                               _body464577_
                               _e448545_
                               _pat449548_))))))
              (_loop459557_ _target456551_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g385470_))))
                                            (_g385470_)))))))
                        (_loop442503_ _target439497_ '() '()))))
                   (___match3659836599_
                    (lambda (_e406638_
                             _hd407642_
                             _tl408645_
                             _e409648_
                             _hd410652_
                             _tl411655_
                             _e412658_
                             _hd413662_
                             _tl414665_
                             _e415668_
                             _hd416672_
                             _tl417675_
                             _e418678_
                             _hd419682_
                             _tl420685_
                             ___splice3652636527_
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
                                        (___kont3652436525_
                                         _body429714_
                                         _hd419682_
                                         _hd416672_))))))
                        (_loop424694_ _target421688_ '()))))
                   (___match3655636557_
                    (lambda (_e388760_
                             _hd389764_
                             _tl390767_
                             _e391770_
                             _hd392774_
                             _tl393777_
                             ___splice3652236523_
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
                                        (___kont3652036521_ _body402806_))))))
                        (_loop397786_ _target394780_ '())))))
              (if (gx#stx-pair? ___stx3651736518_)
                  (let ((_e388760_ (gx#syntax-e ___stx3651736518_)))
                    (let ((_tl390767_
                           (let () (declare (not safe)) (##cdr _e388760_)))
                          (_hd389764_
                           (let () (declare (not safe)) (##car _e388760_))))
                      (if (gx#stx-pair? _tl390767_)
                          (let ((_e391770_ (gx#syntax-e _tl390767_)))
                            (let ((_tl393777_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e391770_)))
                                  (_hd392774_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e391770_))))
                              (if (gx#stx-null? _hd392774_)
                                  (if (gx#stx-pair/null? _tl393777_)
                                      (let ((___splice3652236523_
                                             (gx#syntax-split-splice
                                              _tl393777_
                                              '0)))
                                        (let ((_tl396783_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice3652236523_
                                                  '1)))
                                              (_target394780_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice3652236523_
                                                  '0))))
                                          (if (gx#stx-null? _tl396783_)
                                              (___match3655636557_
                                               _e388760_
                                               _hd389764_
                                               _tl390767_
                                               _e391770_
                                               _hd392774_
                                               _tl393777_
                                               ___splice3652236523_
                                               _target394780_
                                               _tl396783_)
                                              (if (gx#stx-pair/null?
                                                   _hd392774_)
                                                  (let ((___splice3653036531_
                                                         (gx#syntax-split-splice
                                                          _hd392774_
                                                          '0)))
                                                    (let ((_tl441500_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice3653036531_
                                                              '1)))
                                                          (_target439497_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice3653036531_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl441500_)
                                                          (___match3661836619_
                                                           _e388760_
                                                           _hd389764_
                                                           _tl390767_
                                                           _e391770_
                                                           _hd392774_
                                                           _tl393777_
                                                           ___splice3653036531_
                                                           _target439497_
                                                           _tl441500_)
                                                          (_g385470_))))
                                                  (_g385470_)))))
                                      (if (gx#stx-pair/null? _hd392774_)
                                          (let ((___splice3653036531_
                                                 (gx#syntax-split-splice
                                                  _hd392774_
                                                  '0)))
                                            (let ((_tl441500_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice3653036531_
                                                      '1)))
                                                  (_target439497_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice3653036531_
                                                      '0))))
                                              (if (gx#stx-null? _tl441500_)
                                                  (___match3661836619_
                                                   _e388760_
                                                   _hd389764_
                                                   _tl390767_
                                                   _e391770_
                                                   _hd392774_
                                                   _tl393777_
                                                   ___splice3653036531_
                                                   _target439497_
                                                   _tl441500_)
                                                  (_g385470_))))
                                          (_g385470_)))
                                  (if (gx#stx-pair? _hd392774_)
                                      (let ((_e412658_
                                             (gx#syntax-e _hd392774_)))
                                        (let ((_tl414665_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e412658_)))
                                              (_hd413662_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e412658_))))
                                          (if (gx#stx-pair? _hd413662_)
                                              (let ((_e415668_
                                                     (gx#syntax-e _hd413662_)))
                                                (let ((_tl417675_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e415668_)))
                                                      (_hd416672_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e415668_))))
                                                  (if (gx#stx-pair? _tl417675_)
                                                      (let ((_e418678_
                                                             (gx#syntax-e
                                                              _tl417675_)))
                                                        (let ((_tl420685_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e418678_)))
                      (_hd419682_
                       (let () (declare (not safe)) (##car _e418678_))))
                  (if (gx#stx-null? _tl420685_)
                      (if (gx#stx-null? _tl414665_)
                          (if (gx#stx-pair/null? _tl393777_)
                              (let ((___splice3652636527_
                                     (gx#syntax-split-splice _tl393777_ '0)))
                                (let ((_tl423691_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice3652636527_
                                          '1)))
                                      (_target421688_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice3652636527_
                                          '0))))
                                  (if (gx#stx-null? _tl423691_)
                                      (___match3659836599_
                                       _e388760_
                                       _hd389764_
                                       _tl390767_
                                       _e391770_
                                       _hd392774_
                                       _tl393777_
                                       _e412658_
                                       _hd413662_
                                       _tl414665_
                                       _e415668_
                                       _hd416672_
                                       _tl417675_
                                       _e418678_
                                       _hd419682_
                                       _tl420685_
                                       ___splice3652636527_
                                       _target421688_
                                       _tl423691_)
                                      (if (gx#stx-pair/null? _hd392774_)
                                          (let ((___splice3653036531_
                                                 (gx#syntax-split-splice
                                                  _hd392774_
                                                  '0)))
                                            (let ((_tl441500_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice3653036531_
                                                      '1)))
                                                  (_target439497_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice3653036531_
                                                      '0))))
                                              (if (gx#stx-null? _tl441500_)
                                                  (___match3661836619_
                                                   _e388760_
                                                   _hd389764_
                                                   _tl390767_
                                                   _e391770_
                                                   _hd392774_
                                                   _tl393777_
                                                   ___splice3653036531_
                                                   _target439497_
                                                   _tl441500_)
                                                  (_g385470_))))
                                          (_g385470_)))))
                              (if (gx#stx-pair/null? _hd392774_)
                                  (let ((___splice3653036531_
                                         (gx#syntax-split-splice
                                          _hd392774_
                                          '0)))
                                    (let ((_tl441500_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice3653036531_
                                              '1)))
                                          (_target439497_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice3653036531_
                                              '0))))
                                      (if (gx#stx-null? _tl441500_)
                                          (___match3661836619_
                                           _e388760_
                                           _hd389764_
                                           _tl390767_
                                           _e391770_
                                           _hd392774_
                                           _tl393777_
                                           ___splice3653036531_
                                           _target439497_
                                           _tl441500_)
                                          (_g385470_))))
                                  (_g385470_)))
                          (if (gx#stx-pair/null? _hd392774_)
                              (let ((___splice3653036531_
                                     (gx#syntax-split-splice _hd392774_ '0)))
                                (let ((_tl441500_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice3653036531_
                                          '1)))
                                      (_target439497_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice3653036531_
                                          '0))))
                                  (if (gx#stx-null? _tl441500_)
                                      (___match3661836619_
                                       _e388760_
                                       _hd389764_
                                       _tl390767_
                                       _e391770_
                                       _hd392774_
                                       _tl393777_
                                       ___splice3653036531_
                                       _target439497_
                                       _tl441500_)
                                      (_g385470_))))
                              (_g385470_)))
                      (if (gx#stx-pair/null? _hd392774_)
                          (let ((___splice3653036531_
                                 (gx#syntax-split-splice _hd392774_ '0)))
                            (let ((_tl441500_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice3653036531_ '1)))
                                  (_target439497_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice3653036531_ '0))))
                              (if (gx#stx-null? _tl441500_)
                                  (___match3661836619_
                                   _e388760_
                                   _hd389764_
                                   _tl390767_
                                   _e391770_
                                   _hd392774_
                                   _tl393777_
                                   ___splice3653036531_
                                   _target439497_
                                   _tl441500_)
                                  (_g385470_))))
                          (_g385470_)))))
              (if (gx#stx-pair/null? _hd392774_)
                  (let ((___splice3653036531_
                         (gx#syntax-split-splice _hd392774_ '0)))
                    (let ((_tl441500_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice3653036531_ '1)))
                          (_target439497_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice3653036531_ '0))))
                      (if (gx#stx-null? _tl441500_)
                          (___match3661836619_
                           _e388760_
                           _hd389764_
                           _tl390767_
                           _e391770_
                           _hd392774_
                           _tl393777_
                           ___splice3653036531_
                           _target439497_
                           _tl441500_)
                          (_g385470_))))
                  (_g385470_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _hd392774_)
                                                  (let ((___splice3653036531_
                                                         (gx#syntax-split-splice
                                                          _hd392774_
                                                          '0)))
                                                    (let ((_tl441500_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice3653036531_
                                                              '1)))
                                                          (_target439497_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice3653036531_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl441500_)
                                                          (___match3661836619_
                                                           _e388760_
                                                           _hd389764_
                                                           _tl390767_
                                                           _e391770_
                                                           _hd392774_
                                                           _tl393777_
                                                           ___splice3653036531_
                                                           _target439497_
                                                           _tl441500_)
                                                          (_g385470_))))
                                                  (_g385470_)))))
                                      (if (gx#stx-pair/null? _hd392774_)
                                          (let ((___splice3653036531_
                                                 (gx#syntax-split-splice
                                                  _hd392774_
                                                  '0)))
                                            (let ((_tl441500_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice3653036531_
                                                      '1)))
                                                  (_target439497_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice3653036531_
                                                      '0))))
                                              (if (gx#stx-null? _tl441500_)
                                                  (___match3661836619_
                                                   _e388760_
                                                   _hd389764_
                                                   _tl390767_
                                                   _e391770_
                                                   _hd392774_
                                                   _tl393777_
                                                   ___splice3653036531_
                                                   _target439497_
                                                   _tl441500_)
                                                  (_g385470_))))
                                          (_g385470_))))))
                          (_g385470_))))
                  (_g385470_)))))))
    (define |gerbil/core$<syntax-sugar>[:0:]#with-syntax*|
      (lambda (_stx843_)
        (let* ((___stx3662136622_ _stx843_)
               (_g848925_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3662136622_))))
          (let ((___kont3662436625_
                 (lambda (_L1221_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons '()
                               (foldr (lambda (_g12371240_ _g12381243_)
                                        (cons _g12371240_ _g12381243_))
                                      '()
                                      _L1221_)))))
                (___kont3662836629_
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
                (___kont3663236633_
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
            (let* ((___match3673436735_
                    (lambda (_e902932_
                             _hd903936_
                             _tl904939_
                             _e905942_
                             _hd906946_
                             _tl907949_
                             _e908952_
                             _hd909956_
                             _tl910959_
                             ___splice3663436635_
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
                                        (___kont3663236633_
                                         _body919988_
                                         _tl910959_
                                         _hd909956_
                                         _hd903936_))))))
                        (_loop914968_ _target911962_ '()))))
                   (___match3670836709_
                    (lambda (_e8711033_
                             _hd8721037_
                             _tl8731040_
                             _e8741043_
                             _hd8751047_
                             _tl8761050_
                             _e8771053_
                             _hd8781057_
                             _tl8791060_
                             _e8801063_
                             _hd8811067_
                             _tl8821070_
                             _e8831073_
                             _hd8841077_
                             _tl8851080_
                             _e8861083_
                             _hd8871087_
                             _tl8881090_
                             ___splice3663036631_
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
                                        (___kont3662836629_
                                         _body8971119_
                                         _tl8791060_
                                         _hd8871087_
                                         _tl8851080_
                                         _hd8721037_))))))
                        (_loop8921099_ _target8891093_ '()))))
                   (___match3665836659_
                    (lambda (_e8511171_
                             _hd8521175_
                             _tl8531178_
                             _e8541181_
                             _hd8551185_
                             _tl8561188_
                             ___splice3662636627_
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
                                        (___kont3662436625_ _body8651217_))))))
                        (_loop8601197_ _target8571191_ '())))))
              (if (gx#stx-pair? ___stx3662136622_)
                  (let ((_e8511171_ (gx#syntax-e ___stx3662136622_)))
                    (let ((_tl8531178_
                           (let () (declare (not safe)) (##cdr _e8511171_)))
                          (_hd8521175_
                           (let () (declare (not safe)) (##car _e8511171_))))
                      (if (gx#stx-pair? _tl8531178_)
                          (let ((_e8541181_ (gx#syntax-e _tl8531178_)))
                            (let ((_tl8561188_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e8541181_)))
                                  (_hd8551185_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e8541181_))))
                              (if (gx#stx-null? _hd8551185_)
                                  (if (gx#stx-pair/null? _tl8561188_)
                                      (let ((___splice3662636627_
                                             (gx#syntax-split-splice
                                              _tl8561188_
                                              '0)))
                                        (let ((_tl8591194_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice3662636627_
                                                  '1)))
                                              (_target8571191_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice3662636627_
                                                  '0))))
                                          (if (gx#stx-null? _tl8591194_)
                                              (___match3665836659_
                                               _e8511171_
                                               _hd8521175_
                                               _tl8531178_
                                               _e8541181_
                                               _hd8551185_
                                               _tl8561188_
                                               ___splice3662636627_
                                               _target8571191_
                                               _tl8591194_)
                                              (_g848925_))))
                                      (_g848925_))
                                  (if (gx#stx-pair? _hd8551185_)
                                      (let ((_e8771053_
                                             (gx#syntax-e _hd8551185_)))
                                        (let ((_tl8791060_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e8771053_)))
                                              (_hd8781057_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e8771053_))))
                                          (if (gx#stx-pair? _hd8781057_)
                                              (let ((_e8801063_
                                                     (gx#syntax-e
                                                      _hd8781057_)))
                                                (let ((_tl8821070_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e8801063_)))
                                                      (_hd8811067_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e8801063_))))
                                                  (if (gx#stx-pair?
                                                       _hd8811067_)
                                                      (let ((_e8831073_
                                                             (gx#syntax-e
                                                              _hd8811067_)))
                                                        (let ((_tl8851080_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e8831073_)))
                      (_hd8841077_
                       (let () (declare (not safe)) (##car _e8831073_))))
                  (if (gx#identifier? _hd8841077_)
                      (if (gx#free-identifier=?
                           |gerbil/core$<syntax-sugar>[1]#_g42124_|
                           _hd8841077_)
                          (if (gx#stx-pair? _tl8821070_)
                              (let ((_e8861083_ (gx#syntax-e _tl8821070_)))
                                (let ((_tl8881090_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e8861083_)))
                                      (_hd8871087_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e8861083_))))
                                  (if (gx#stx-null? _tl8881090_)
                                      (if (gx#stx-pair/null? _tl8561188_)
                                          (let ((___splice3663036631_
                                                 (gx#syntax-split-splice
                                                  _tl8561188_
                                                  '0)))
                                            (let ((_tl8911096_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice3663036631_
                                                      '1)))
                                                  (_target8891093_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice3663036631_
                                                      '0))))
                                              (if (gx#stx-null? _tl8911096_)
                                                  (___match3670836709_
                                                   _e8511171_
                                                   _hd8521175_
                                                   _tl8531178_
                                                   _e8541181_
                                                   _hd8551185_
                                                   _tl8561188_
                                                   _e8771053_
                                                   _hd8781057_
                                                   _tl8791060_
                                                   _e8801063_
                                                   _hd8811067_
                                                   _tl8821070_
                                                   _e8831073_
                                                   _hd8841077_
                                                   _tl8851080_
                                                   _e8861083_
                                                   _hd8871087_
                                                   _tl8881090_
                                                   ___splice3663036631_
                                                   _target8891093_
                                                   _tl8911096_)
                                                  (_g848925_))))
                                          (_g848925_))
                                      (if (gx#stx-pair/null? _tl8561188_)
                                          (let ((___splice3663436635_
                                                 (gx#syntax-split-splice
                                                  _tl8561188_
                                                  '0)))
                                            (let ((_tl913965_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice3663436635_
                                                      '1)))
                                                  (_target911962_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice3663436635_
                                                      '0))))
                                              (if (gx#stx-null? _tl913965_)
                                                  (___match3673436735_
                                                   _e8511171_
                                                   _hd8521175_
                                                   _tl8531178_
                                                   _e8541181_
                                                   _hd8551185_
                                                   _tl8561188_
                                                   _e8771053_
                                                   _hd8781057_
                                                   _tl8791060_
                                                   ___splice3663436635_
                                                   _target911962_
                                                   _tl913965_)
                                                  (_g848925_))))
                                          (_g848925_)))))
                              (if (gx#stx-pair/null? _tl8561188_)
                                  (let ((___splice3663436635_
                                         (gx#syntax-split-splice
                                          _tl8561188_
                                          '0)))
                                    (let ((_tl913965_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice3663436635_
                                              '1)))
                                          (_target911962_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice3663436635_
                                              '0))))
                                      (if (gx#stx-null? _tl913965_)
                                          (___match3673436735_
                                           _e8511171_
                                           _hd8521175_
                                           _tl8531178_
                                           _e8541181_
                                           _hd8551185_
                                           _tl8561188_
                                           _e8771053_
                                           _hd8781057_
                                           _tl8791060_
                                           ___splice3663436635_
                                           _target911962_
                                           _tl913965_)
                                          (_g848925_))))
                                  (_g848925_)))
                          (if (gx#stx-pair/null? _tl8561188_)
                              (let ((___splice3663436635_
                                     (gx#syntax-split-splice _tl8561188_ '0)))
                                (let ((_tl913965_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice3663436635_
                                          '1)))
                                      (_target911962_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice3663436635_
                                          '0))))
                                  (if (gx#stx-null? _tl913965_)
                                      (___match3673436735_
                                       _e8511171_
                                       _hd8521175_
                                       _tl8531178_
                                       _e8541181_
                                       _hd8551185_
                                       _tl8561188_
                                       _e8771053_
                                       _hd8781057_
                                       _tl8791060_
                                       ___splice3663436635_
                                       _target911962_
                                       _tl913965_)
                                      (_g848925_))))
                              (_g848925_)))
                      (if (gx#stx-pair/null? _tl8561188_)
                          (let ((___splice3663436635_
                                 (gx#syntax-split-splice _tl8561188_ '0)))
                            (let ((_tl913965_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice3663436635_ '1)))
                                  (_target911962_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice3663436635_ '0))))
                              (if (gx#stx-null? _tl913965_)
                                  (___match3673436735_
                                   _e8511171_
                                   _hd8521175_
                                   _tl8531178_
                                   _e8541181_
                                   _hd8551185_
                                   _tl8561188_
                                   _e8771053_
                                   _hd8781057_
                                   _tl8791060_
                                   ___splice3663436635_
                                   _target911962_
                                   _tl913965_)
                                  (_g848925_))))
                          (_g848925_)))))
              (if (gx#stx-pair/null? _tl8561188_)
                  (let ((___splice3663436635_
                         (gx#syntax-split-splice _tl8561188_ '0)))
                    (let ((_tl913965_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice3663436635_ '1)))
                          (_target911962_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice3663436635_ '0))))
                      (if (gx#stx-null? _tl913965_)
                          (___match3673436735_
                           _e8511171_
                           _hd8521175_
                           _tl8531178_
                           _e8541181_
                           _hd8551185_
                           _tl8561188_
                           _e8771053_
                           _hd8781057_
                           _tl8791060_
                           ___splice3663436635_
                           _target911962_
                           _tl913965_)
                          (_g848925_))))
                  (_g848925_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _tl8561188_)
                                                  (let ((___splice3663436635_
                                                         (gx#syntax-split-splice
                                                          _tl8561188_
                                                          '0)))
                                                    (let ((_tl913965_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice3663436635_
                                                              '1)))
                                                          (_target911962_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice3663436635_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl913965_)
                                                          (___match3673436735_
                                                           _e8511171_
                                                           _hd8521175_
                                                           _tl8531178_
                                                           _e8541181_
                                                           _hd8551185_
                                                           _tl8561188_
                                                           _e8771053_
                                                           _hd8781057_
                                                           _tl8791060_
                                                           ___splice3663436635_
                                                           _target911962_
                                                           _tl913965_)
                                                          (_g848925_))))
                                                  (_g848925_)))))
                                      (_g848925_)))))
                          (_g848925_))))
                  (_g848925_)))))))
    (define |gerbil/core$<syntax-sugar>[:0:]#syntax/loc|
      (lambda (_stx1253_)
        (let* ((_g12561274_
                (lambda (_g12571270_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g12571270_)))
               (_g12551329_
                (lambda (_g12571278_)
                  (if (gx#stx-pair? _g12571278_)
                      (let ((_e12601281_ (gx#syntax-e _g12571278_)))
                        (let ((_hd12611285_
                               (let ()
                                 (declare (not safe))
                                 (##car _e12601281_)))
                              (_tl12621288_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e12601281_))))
                          (if (gx#stx-pair? _tl12621288_)
                              (let ((_e12631291_ (gx#syntax-e _tl12621288_)))
                                (let ((_hd12641295_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e12631291_)))
                                      (_tl12651298_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e12631291_))))
                                  (if (gx#stx-pair? _tl12651298_)
                                      (let ((_e12661301_
                                             (gx#syntax-e _tl12651298_)))
                                        (let ((_hd12671305_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e12661301_)))
                                              (_tl12681308_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e12661301_))))
                                          (if (gx#stx-null? _tl12681308_)
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
