(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<syntax-sugar>[1]#_g47450_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core$<syntax-sugar>[:0:]#syntax-rules|
      (lambda (_stx48_)
        (let* ((_g5175_ (lambda (_g5271_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g5271_)))
               (_g50380_
                (lambda (_g5279_)
                  (if (gx#stx-pair? _g5279_)
                      (let ((_e5782_ (gx#syntax-e _g5279_)))
                        (let ((_hd5686_
                               (let () (declare (not safe)) (##car _e5782_)))
                              (_tl5589_
                               (let () (declare (not safe)) (##cdr _e5782_))))
                          (if (gx#stx-pair? _tl5589_)
                              (let ((_e6092_ (gx#syntax-e _tl5589_)))
                                (let ((_hd5996_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6092_)))
                                      (_tl5899_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6092_))))
                                  (if (gx#stx-pair/null? _tl5899_)
                                      (let ((_g47370_
                                             (gx#syntax-split-splice
                                              _tl5899_
                                              '0)))
                                        (begin
                                          (let ((_g47371_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g47370_)
                                                       (##vector-length
                                                        _g47370_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g47371_ 2)))
                                                (error "Context expects 2 values"
                                                       _g47371_)))
                                          (let ((_target61102_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g47370_ 0)))
                                                (_tl63105_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g47370_ 1))))
                                            (if (gx#stx-null? _tl63105_)
                                                (letrec ((_loop64108_
                                                          (lambda (_hd62112_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clauses68115_)
                    (if (gx#stx-pair? _hd62112_)
                        (let ((_e65118_ (gx#syntax-e _hd62112_)))
                          (let ((_lp-hd66122_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e65118_)))
                                (_lp-tl67125_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e65118_))))
                            (_loop64108_
                             _lp-tl67125_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd66122_ _clauses68115_)))))
                        (let ((_clauses69128_ (reverse _clauses68115_)))
                          ((lambda (_L132_ _L134_)
                             (if (gx#identifier-list? _L134_)
                                 (let* ((_body297_
                                         (gx#stx-map
                                          (lambda (_clause154_)
                                            (let* ((___stx4168541686_
                                                    _clause154_)
                                                   (_g158185_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx4168541686_))))
                                              (let ((___kont4168841689_
                                                     (lambda (_L270_ _L272_)
                                                       (let ((__tmp47372
                                                              (let ((__tmp47373
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp47375 (gx#datum->syntax '#f 'syntax))
                                   (__tmp47374
                                    (let ()
                                      (declare (not safe))
                                      (cons _L270_ '()))))
                               (declare (not safe))
                               (cons __tmp47375 __tmp47374))))
                        (declare (not safe))
                        (cons __tmp47373 '()))))
                 (declare (not safe))
                 (cons _L272_ __tmp47372))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4169041691_
                                                     (lambda (_L222_
                                                              _L224_
                                                              _L225_)
                                                       (let ((__tmp47376
                                                              (let ((__tmp47377
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp47378
                                    (let ((__tmp47380
                                           (gx#datum->syntax '#f 'syntax))
                                          (__tmp47379
                                           (let ()
                                             (declare (not safe))
                                             (cons _L222_ '()))))
                                      (declare (not safe))
                                      (cons __tmp47380 __tmp47379))))
                               (declare (not safe))
                               (cons __tmp47378 '()))))
                        (declare (not safe))
                        (cons _L224_ __tmp47377))))
                 (declare (not safe))
                 (cons _L225_ __tmp47376)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx4168541686_)
                                                    (let ((_e164250_
                                                           (gx#syntax-e
                                                            ___stx4168541686_)))
                                                      (let ((_tl162257_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e164250_)))
                    (_hd163254_
                     (let () (declare (not safe)) (##car _e164250_))))
                (if (gx#stx-pair? _tl162257_)
                    (let ((_e167260_ (gx#syntax-e _tl162257_)))
                      (let ((_tl165267_
                             (let () (declare (not safe)) (##cdr _e167260_)))
                            (_hd166264_
                             (let () (declare (not safe)) (##car _e167260_))))
                        (if (gx#stx-null? _tl165267_)
                            (___kont4168841689_ _hd166264_ _hd163254_)
                            (if (gx#stx-pair? _tl165267_)
                                (let ((_e179212_ (gx#syntax-e _tl165267_)))
                                  (let ((_tl177219_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e179212_)))
                                        (_hd178216_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e179212_))))
                                    (if (gx#stx-null? _tl177219_)
                                        (___kont4169041691_
                                         _hd178216_
                                         _hd166264_
                                         _hd163254_)
                                        (let ()
                                          (declare (not safe))
                                          (_g158185_)))))
                                (let () (declare (not safe)) (_g158185_))))))
                    (let () (declare (not safe)) (_g158185_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g158185_))))))
                                          (let ((__tmp47381
                                                 (lambda (_g288291_ _g289294_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g288291_
                                                           _g289294_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp47381 '() _L132_))))
                                        (_g300317_
                                         (lambda (_g301313_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g301313_)))
                                        (_g299376_
                                         (lambda (_g301321_)
                                           (if (gx#stx-pair/null? _g301321_)
                                               (let ((_g47382_
                                                      (gx#syntax-split-splice
                                                       _g301321_
                                                       '0)))
                                                 (begin
                                                   (let ((_g47383_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g47382_)
                        (##vector-length _g47382_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g47383_ 2)))
                 (error "Context expects 2 values" _g47383_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target303324_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g47382_
                                                             0)))
                                                         (_tl305327_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g47382_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _tl305327_)
                                                         (letrec ((_loop306330_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd304334_ _clause310337_)
                             (if (gx#stx-pair? _hd304334_)
                                 (let ((_e307340_ (gx#syntax-e _hd304334_)))
                                   (let ((_lp-hd308344_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e307340_)))
                                         (_lp-tl309347_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e307340_))))
                                     (_loop306330_
                                      _lp-tl309347_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd308344_ _clause310337_)))))
                                 (let ((_clause311350_
                                        (reverse _clause310337_)))
                                   ((lambda (_L354_)
                                      (let ((__tmp47395
                                             (gx#datum->syntax '#f 'lambda%))
                                            (__tmp47384
                                             (let ((__tmp47393
                                                    (let ((__tmp47394
                                                           (gx#datum->syntax
                                                            '#f
                                                            '$stx)))
                                                      (declare (not safe))
                                                      (cons __tmp47394 '())))
                                                   (__tmp47385
                                                    (let ((__tmp47386
                                                           (let ((__tmp47392
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'syntax-case))
                         (__tmp47387
                          (let ((__tmp47391 (gx#datum->syntax '#f '$stx))
                                (__tmp47388
                                 (let ((__tmp47389
                                        (let ((__tmp47390
                                               (lambda (_g367370_ _g368373_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g367370_
                                                         _g368373_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp47390 '() _L354_))))
                                   (declare (not safe))
                                   (cons _L134_ __tmp47389))))
                            (declare (not safe))
                            (cons __tmp47391 __tmp47388))))
                     (declare (not safe))
                     (cons __tmp47392 __tmp47387))))
              (declare (not safe))
              (cons __tmp47386 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp47393 __tmp47385))))
                                        (declare (not safe))
                                        (cons __tmp47395 __tmp47384)))
                                    _clause311350_))))))
                   (_loop306330_ _target303324_ '()))
                 (_g300317_ _g301321_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g300317_ _g301321_)))))
                                   (_g299376_ _body297_))
                                 (_g5175_ _g5279_)))
                           _clauses69128_
                           _hd5996_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop64108_
                                                   _target61102_
                                                   '()))
                                                (_g5175_ _g5279_)))))
                                      (_g5175_ _g5279_))))
                              (_g5175_ _g5279_))))
                      (_g5175_ _g5279_)))))
          (_g50380_ _stx48_))))
    (define |gerbil/core$<syntax-sugar>[:0:]#with-syntax|
      (lambda (_stx386_)
        (let* ((___stx4172941730_ _stx386_)
               (_g391476_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4172941730_))))
          (let ((___kont4173241733_
                 (lambda (_L816_)
                   (let ((__tmp47399 (gx#datum->syntax '#f 'let-values))
                         (__tmp47396
                          (let ((__tmp47397
                                 (let ((__tmp47398
                                        (lambda (_g832835_ _g833838_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g832835_ _g833838_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp47398 '() _L816_))))
                            (declare (not safe))
                            (cons '() __tmp47397))))
                     (declare (not safe))
                     (cons __tmp47399 __tmp47396))))
                (___kont4173641737_
                 (lambda (_L724_ _L726_ _L727_)
                   (let ((__tmp47410 (gx#datum->syntax '#f 'syntax-case))
                         (__tmp47400
                          (let ((__tmp47401
                                 (let ((__tmp47402
                                        (let ((__tmp47403
                                               (let ((__tmp47404
                                                      (let ((__tmp47405
                                                             (let ((__tmp47409
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'let-values))
                           (__tmp47406
                            (let ((__tmp47407
                                   (let ((__tmp47408
                                          (lambda (_g750753_ _g751756_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g750753_ _g751756_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp47408 '() _L724_))))
                              (declare (not safe))
                              (cons '() __tmp47407))))
                       (declare (not safe))
                       (cons __tmp47409 __tmp47406))))
                (declare (not safe))
                (cons __tmp47405 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L727_ __tmp47404))))
                                          (declare (not safe))
                                          (cons __tmp47403 '()))))
                                   (declare (not safe))
                                   (cons '() __tmp47402))))
                            (declare (not safe))
                            (cons _L726_ __tmp47401))))
                     (declare (not safe))
                     (cons __tmp47410 __tmp47400))))
                (___kont4174041741_
                 (lambda (_L587_ _L589_ _L590_)
                   (let ((__tmp47427 (gx#datum->syntax '#f 'syntax-case))
                         (__tmp47411
                          (let ((__tmp47423
                                 (let ((__tmp47426
                                        (gx#datum->syntax '#f 'list))
                                       (__tmp47424
                                        (let ((__tmp47425
                                               (lambda (_g616619_ _g617622_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g616619_
                                                         _g617622_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp47425 '() _L589_))))
                                   (declare (not safe))
                                   (cons __tmp47426 __tmp47424)))
                                (__tmp47412
                                 (let ((__tmp47413
                                        (let ((__tmp47414
                                               (let ((__tmp47421
                                                      (let ((__tmp47422
                                                             (lambda (_g614625_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g615628_)
                       (let ()
                         (declare (not safe))
                         (cons _g614625_ _g615628_)))))
                (declare (not safe))
                (foldr1 __tmp47422 '() _L590_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp47415
                                                      (let ((__tmp47416
                                                             (let ((__tmp47420
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'let-values))
                           (__tmp47417
                            (let ((__tmp47418
                                   (let ((__tmp47419
                                          (lambda (_g612631_ _g613634_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g612631_ _g613634_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp47419 '() _L587_))))
                              (declare (not safe))
                              (cons '() __tmp47418))))
                       (declare (not safe))
                       (cons __tmp47420 __tmp47417))))
                (declare (not safe))
                (cons __tmp47416 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp47421
                                                       __tmp47415))))
                                          (declare (not safe))
                                          (cons __tmp47414 '()))))
                                   (declare (not safe))
                                   (cons '() __tmp47413))))
                            (declare (not safe))
                            (cons __tmp47423 __tmp47412))))
                     (declare (not safe))
                     (cons __tmp47427 __tmp47411)))))
            (let* ((___match4183041831_
                    (lambda (_e441483_
                             _hd440487_
                             _tl439490_
                             _e444493_
                             _hd443497_
                             _tl442500_
                             ___splice4174241743_
                             _target445503_
                             _tl447506_)
                      (letrec ((_loop448509_
                                (lambda (_hd446513_ _e452516_ _pat453518_)
                                  (if (gx#stx-pair? _hd446513_)
                                      (let ((_e449521_
                                             (gx#syntax-e _hd446513_)))
                                        (let ((_lp-tl451528_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e449521_)))
                                              (_lp-hd450525_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e449521_))))
                                          (if (gx#stx-pair? _lp-hd450525_)
                                              (let ((_e458531_
                                                     (gx#syntax-e
                                                      _lp-hd450525_)))
                                                (let ((_tl456538_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e458531_)))
                                                      (_hd457535_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e458531_))))
                                                  (if (gx#stx-pair? _tl456538_)
                                                      (let ((_e461541_
                                                             (gx#syntax-e
                                                              _tl456538_)))
                                                        (let ((_tl459548_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e461541_)))
                      (_hd460545_
                       (let () (declare (not safe)) (##car _e461541_))))
                  (if (gx#stx-null? _tl459548_)
                      (_loop448509_
                       _lp-tl451528_
                       (let ()
                         (declare (not safe))
                         (cons _hd460545_ _e452516_))
                       (let ()
                         (declare (not safe))
                         (cons _hd457535_ _pat453518_)))
                      (let () (declare (not safe)) (_g391476_)))))
              (let () (declare (not safe)) (_g391476_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g391476_)))))
                                      (let ((_pat455554_ (reverse _pat453518_))
                                            (_e454551_ (reverse _e452516_)))
                                        (if (gx#stx-pair/null? _tl442500_)
                                            (let ((___splice4174441745_
                                                   (gx#syntax-split-splice
                                                    _tl442500_
                                                    '0)))
                                              (let ((_tl464560_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4174441745_
                                                        '1)))
                                                    (_target462557_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4174441745_
                                                        '0))))
                                                (if (gx#stx-null? _tl464560_)
                                                    (letrec ((_loop465563_
                                                              (lambda (_hd463567_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body469570_)
                        (if (gx#stx-pair? _hd463567_)
                            (let ((_e466573_ (gx#syntax-e _hd463567_)))
                              (let ((_lp-tl468580_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e466573_)))
                                    (_lp-hd467577_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e466573_))))
                                (_loop465563_
                                 _lp-tl468580_
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd467577_ _body469570_)))))
                            (let ((_body470583_ (reverse _body469570_)))
                              (___kont4174041741_
                               _body470583_
                               _e454551_
                               _pat455554_))))))
              (_loop465563_ _target462557_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g391476_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g391476_))))))))
                        (_loop448509_ _target445503_ '() '()))))
                   (___match4181041811_
                    (lambda (_e414644_
                             _hd413648_
                             _tl412651_
                             _e417654_
                             _hd416658_
                             _tl415661_
                             _e420664_
                             _hd419668_
                             _tl418671_
                             _e423674_
                             _hd422678_
                             _tl421681_
                             _e426684_
                             _hd425688_
                             _tl424691_
                             ___splice4173841739_
                             _target427694_
                             _tl429697_)
                      (letrec ((_loop430700_
                                (lambda (_hd428704_ _body434707_)
                                  (if (gx#stx-pair? _hd428704_)
                                      (let ((_e431710_
                                             (gx#syntax-e _hd428704_)))
                                        (let ((_lp-tl433717_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e431710_)))
                                              (_lp-hd432714_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e431710_))))
                                          (_loop430700_
                                           _lp-tl433717_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd432714_
                                                   _body434707_)))))
                                      (let ((_body435720_
                                             (reverse _body434707_)))
                                        (___kont4173641737_
                                         _body435720_
                                         _hd425688_
                                         _hd422678_))))))
                        (_loop430700_ _target427694_ '()))))
                   (___match4176841769_
                    (lambda (_e396766_
                             _hd395770_
                             _tl394773_
                             _e399776_
                             _hd398780_
                             _tl397783_
                             ___splice4173441735_
                             _target400786_
                             _tl402789_)
                      (letrec ((_loop403792_
                                (lambda (_hd401796_ _body407799_)
                                  (if (gx#stx-pair? _hd401796_)
                                      (let ((_e404802_
                                             (gx#syntax-e _hd401796_)))
                                        (let ((_lp-tl406809_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e404802_)))
                                              (_lp-hd405806_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e404802_))))
                                          (_loop403792_
                                           _lp-tl406809_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd405806_
                                                   _body407799_)))))
                                      (let ((_body408812_
                                             (reverse _body407799_)))
                                        (___kont4173241733_ _body408812_))))))
                        (_loop403792_ _target400786_ '())))))
              (if (gx#stx-pair? ___stx4172941730_)
                  (let ((_e396766_ (gx#syntax-e ___stx4172941730_)))
                    (let ((_tl394773_
                           (let () (declare (not safe)) (##cdr _e396766_)))
                          (_hd395770_
                           (let () (declare (not safe)) (##car _e396766_))))
                      (if (gx#stx-pair? _tl394773_)
                          (let ((_e399776_ (gx#syntax-e _tl394773_)))
                            (let ((_tl397783_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e399776_)))
                                  (_hd398780_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e399776_))))
                              (if (gx#stx-null? _hd398780_)
                                  (if (gx#stx-pair/null? _tl397783_)
                                      (let ((___splice4173441735_
                                             (gx#syntax-split-splice
                                              _tl397783_
                                              '0)))
                                        (let ((_tl402789_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4173441735_
                                                  '1)))
                                              (_target400786_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4173441735_
                                                  '0))))
                                          (if (gx#stx-null? _tl402789_)
                                              (___match4176841769_
                                               _e396766_
                                               _hd395770_
                                               _tl394773_
                                               _e399776_
                                               _hd398780_
                                               _tl397783_
                                               ___splice4173441735_
                                               _target400786_
                                               _tl402789_)
                                              (if (gx#stx-pair/null?
                                                   _hd398780_)
                                                  (let ((___splice4174241743_
                                                         (gx#syntax-split-splice
                                                          _hd398780_
                                                          '0)))
                                                    (let ((_tl447506_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4174241743_
                                                              '1)))
                                                          (_target445503_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4174241743_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl447506_)
                                                          (___match4183041831_
                                                           _e396766_
                                                           _hd395770_
                                                           _tl394773_
                                                           _e399776_
                                                           _hd398780_
                                                           _tl397783_
                                                           ___splice4174241743_
                                                           _target445503_
                                                           _tl447506_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g391476_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g391476_))))))
                                      (if (gx#stx-pair/null? _hd398780_)
                                          (let ((___splice4174241743_
                                                 (gx#syntax-split-splice
                                                  _hd398780_
                                                  '0)))
                                            (let ((_tl447506_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4174241743_
                                                      '1)))
                                                  (_target445503_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4174241743_
                                                      '0))))
                                              (if (gx#stx-null? _tl447506_)
                                                  (___match4183041831_
                                                   _e396766_
                                                   _hd395770_
                                                   _tl394773_
                                                   _e399776_
                                                   _hd398780_
                                                   _tl397783_
                                                   ___splice4174241743_
                                                   _target445503_
                                                   _tl447506_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g391476_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g391476_))))
                                  (if (gx#stx-pair? _hd398780_)
                                      (let ((_e420664_
                                             (gx#syntax-e _hd398780_)))
                                        (let ((_tl418671_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e420664_)))
                                              (_hd419668_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e420664_))))
                                          (if (gx#stx-pair? _hd419668_)
                                              (let ((_e423674_
                                                     (gx#syntax-e _hd419668_)))
                                                (let ((_tl421681_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e423674_)))
                                                      (_hd422678_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e423674_))))
                                                  (if (gx#stx-pair? _tl421681_)
                                                      (let ((_e426684_
                                                             (gx#syntax-e
                                                              _tl421681_)))
                                                        (let ((_tl424691_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e426684_)))
                      (_hd425688_
                       (let () (declare (not safe)) (##car _e426684_))))
                  (if (gx#stx-null? _tl424691_)
                      (if (gx#stx-null? _tl418671_)
                          (if (gx#stx-pair/null? _tl397783_)
                              (let ((___splice4173841739_
                                     (gx#syntax-split-splice _tl397783_ '0)))
                                (let ((_tl429697_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4173841739_
                                          '1)))
                                      (_target427694_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4173841739_
                                          '0))))
                                  (if (gx#stx-null? _tl429697_)
                                      (___match4181041811_
                                       _e396766_
                                       _hd395770_
                                       _tl394773_
                                       _e399776_
                                       _hd398780_
                                       _tl397783_
                                       _e420664_
                                       _hd419668_
                                       _tl418671_
                                       _e423674_
                                       _hd422678_
                                       _tl421681_
                                       _e426684_
                                       _hd425688_
                                       _tl424691_
                                       ___splice4173841739_
                                       _target427694_
                                       _tl429697_)
                                      (if (gx#stx-pair/null? _hd398780_)
                                          (let ((___splice4174241743_
                                                 (gx#syntax-split-splice
                                                  _hd398780_
                                                  '0)))
                                            (let ((_tl447506_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4174241743_
                                                      '1)))
                                                  (_target445503_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4174241743_
                                                      '0))))
                                              (if (gx#stx-null? _tl447506_)
                                                  (___match4183041831_
                                                   _e396766_
                                                   _hd395770_
                                                   _tl394773_
                                                   _e399776_
                                                   _hd398780_
                                                   _tl397783_
                                                   ___splice4174241743_
                                                   _target445503_
                                                   _tl447506_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g391476_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g391476_))))))
                              (if (gx#stx-pair/null? _hd398780_)
                                  (let ((___splice4174241743_
                                         (gx#syntax-split-splice
                                          _hd398780_
                                          '0)))
                                    (let ((_tl447506_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice4174241743_
                                              '1)))
                                          (_target445503_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice4174241743_
                                              '0))))
                                      (if (gx#stx-null? _tl447506_)
                                          (___match4183041831_
                                           _e396766_
                                           _hd395770_
                                           _tl394773_
                                           _e399776_
                                           _hd398780_
                                           _tl397783_
                                           ___splice4174241743_
                                           _target445503_
                                           _tl447506_)
                                          (let ()
                                            (declare (not safe))
                                            (_g391476_)))))
                                  (let () (declare (not safe)) (_g391476_))))
                          (if (gx#stx-pair/null? _hd398780_)
                              (let ((___splice4174241743_
                                     (gx#syntax-split-splice _hd398780_ '0)))
                                (let ((_tl447506_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4174241743_
                                          '1)))
                                      (_target445503_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4174241743_
                                          '0))))
                                  (if (gx#stx-null? _tl447506_)
                                      (___match4183041831_
                                       _e396766_
                                       _hd395770_
                                       _tl394773_
                                       _e399776_
                                       _hd398780_
                                       _tl397783_
                                       ___splice4174241743_
                                       _target445503_
                                       _tl447506_)
                                      (let ()
                                        (declare (not safe))
                                        (_g391476_)))))
                              (let () (declare (not safe)) (_g391476_))))
                      (if (gx#stx-pair/null? _hd398780_)
                          (let ((___splice4174241743_
                                 (gx#syntax-split-splice _hd398780_ '0)))
                            (let ((_tl447506_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice4174241743_ '1)))
                                  (_target445503_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice4174241743_ '0))))
                              (if (gx#stx-null? _tl447506_)
                                  (___match4183041831_
                                   _e396766_
                                   _hd395770_
                                   _tl394773_
                                   _e399776_
                                   _hd398780_
                                   _tl397783_
                                   ___splice4174241743_
                                   _target445503_
                                   _tl447506_)
                                  (let () (declare (not safe)) (_g391476_)))))
                          (let () (declare (not safe)) (_g391476_))))))
              (if (gx#stx-pair/null? _hd398780_)
                  (let ((___splice4174241743_
                         (gx#syntax-split-splice _hd398780_ '0)))
                    (let ((_tl447506_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4174241743_ '1)))
                          (_target445503_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4174241743_ '0))))
                      (if (gx#stx-null? _tl447506_)
                          (___match4183041831_
                           _e396766_
                           _hd395770_
                           _tl394773_
                           _e399776_
                           _hd398780_
                           _tl397783_
                           ___splice4174241743_
                           _target445503_
                           _tl447506_)
                          (let () (declare (not safe)) (_g391476_)))))
                  (let () (declare (not safe)) (_g391476_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _hd398780_)
                                                  (let ((___splice4174241743_
                                                         (gx#syntax-split-splice
                                                          _hd398780_
                                                          '0)))
                                                    (let ((_tl447506_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4174241743_
                                                              '1)))
                                                          (_target445503_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4174241743_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl447506_)
                                                          (___match4183041831_
                                                           _e396766_
                                                           _hd395770_
                                                           _tl394773_
                                                           _e399776_
                                                           _hd398780_
                                                           _tl397783_
                                                           ___splice4174241743_
                                                           _target445503_
                                                           _tl447506_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g391476_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g391476_))))))
                                      (if (gx#stx-pair/null? _hd398780_)
                                          (let ((___splice4174241743_
                                                 (gx#syntax-split-splice
                                                  _hd398780_
                                                  '0)))
                                            (let ((_tl447506_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4174241743_
                                                      '1)))
                                                  (_target445503_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4174241743_
                                                      '0))))
                                              (if (gx#stx-null? _tl447506_)
                                                  (___match4183041831_
                                                   _e396766_
                                                   _hd395770_
                                                   _tl394773_
                                                   _e399776_
                                                   _hd398780_
                                                   _tl397783_
                                                   ___splice4174241743_
                                                   _target445503_
                                                   _tl447506_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g391476_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g391476_)))))))
                          (let () (declare (not safe)) (_g391476_)))))
                  (let () (declare (not safe)) (_g391476_))))))))
    (define |gerbil/core$<syntax-sugar>[:0:]#with-syntax*|
      (lambda (_stx849_)
        (let* ((___stx4183341834_ _stx849_)
               (_g854931_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4183341834_))))
          (let ((___kont4183641837_
                 (lambda (_L1227_)
                   (let ((__tmp47431 (gx#datum->syntax '#f 'let-values))
                         (__tmp47428
                          (let ((__tmp47429
                                 (let ((__tmp47430
                                        (lambda (_g12431246_ _g12441249_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g12431246_ _g12441249_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp47430 '() _L1227_))))
                            (declare (not safe))
                            (cons '() __tmp47429))))
                     (declare (not safe))
                     (cons __tmp47431 __tmp47428))))
                (___kont4184041841_
                 (lambda (_L1129_ _L1131_ _L1132_ _L1133_ _L1134_)
                   (let ((__tmp47441 (gx#datum->syntax '#f 'let-values))
                         (__tmp47432
                          (let ((__tmp47438
                                 (let ((__tmp47439
                                        (let ((__tmp47440
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L1132_ '()))))
                                          (declare (not safe))
                                          (cons _L1133_ __tmp47440))))
                                   (declare (not safe))
                                   (cons __tmp47439 '())))
                                (__tmp47433
                                 (let ((__tmp47434
                                        (let ((__tmp47435
                                               (let ((__tmp47436
                                                      (let ((__tmp47437
                                                             (lambda (_g11611164_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g11621167_)
                       (let ()
                         (declare (not safe))
                         (cons _g11611164_ _g11621167_)))))
                (declare (not safe))
                (foldr1 __tmp47437 '() _L1129_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L1131_ __tmp47436))))
                                          (declare (not safe))
                                          (cons _L1134_ __tmp47435))))
                                   (declare (not safe))
                                   (cons __tmp47434 '()))))
                            (declare (not safe))
                            (cons __tmp47438 __tmp47433))))
                     (declare (not safe))
                     (cons __tmp47441 __tmp47432))))
                (___kont4184441845_
                 (lambda (_L998_ _L1000_ _L1001_ _L1002_)
                   (let ((__tmp47449 (gx#datum->syntax '#f 'with-syntax))
                         (__tmp47442
                          (let ((__tmp47448
                                 (let ()
                                   (declare (not safe))
                                   (cons _L1001_ '())))
                                (__tmp47443
                                 (let ((__tmp47444
                                        (let ((__tmp47445
                                               (let ((__tmp47446
                                                      (let ((__tmp47447
                                                             (lambda (_g10231026_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g10241029_)
                       (let ()
                         (declare (not safe))
                         (cons _g10231026_ _g10241029_)))))
                (declare (not safe))
                (foldr1 __tmp47447 '() _L998_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L1000_ __tmp47446))))
                                          (declare (not safe))
                                          (cons _L1002_ __tmp47445))))
                                   (declare (not safe))
                                   (cons __tmp47444 '()))))
                            (declare (not safe))
                            (cons __tmp47448 __tmp47443))))
                     (declare (not safe))
                     (cons __tmp47449 __tmp47442)))))
            (let* ((___match4194641947_
                    (lambda (_e910938_
                             _hd909942_
                             _tl908945_
                             _e913948_
                             _hd912952_
                             _tl911955_
                             _e916958_
                             _hd915962_
                             _tl914965_
                             ___splice4184641847_
                             _target917968_
                             _tl919971_)
                      (letrec ((_loop920974_
                                (lambda (_hd918978_ _body924981_)
                                  (if (gx#stx-pair? _hd918978_)
                                      (let ((_e921984_
                                             (gx#syntax-e _hd918978_)))
                                        (let ((_lp-tl923991_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e921984_)))
                                              (_lp-hd922988_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e921984_))))
                                          (_loop920974_
                                           _lp-tl923991_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd922988_
                                                   _body924981_)))))
                                      (let ((_body925994_
                                             (reverse _body924981_)))
                                        (___kont4184441845_
                                         _body925994_
                                         _tl914965_
                                         _hd915962_
                                         _hd909942_))))))
                        (_loop920974_ _target917968_ '()))))
                   (___match4192041921_
                    (lambda (_e8791039_
                             _hd8781043_
                             _tl8771046_
                             _e8821049_
                             _hd8811053_
                             _tl8801056_
                             _e8851059_
                             _hd8841063_
                             _tl8831066_
                             _e8881069_
                             _hd8871073_
                             _tl8861076_
                             _e8911079_
                             _hd8901083_
                             _tl8891086_
                             _e8941089_
                             _hd8931093_
                             _tl8921096_
                             ___splice4184241843_
                             _target8951099_
                             _tl8971102_)
                      (letrec ((_loop8981105_
                                (lambda (_hd8961109_ _body9021112_)
                                  (if (gx#stx-pair? _hd8961109_)
                                      (let ((_e8991115_
                                             (gx#syntax-e _hd8961109_)))
                                        (let ((_lp-tl9011122_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e8991115_)))
                                              (_lp-hd9001119_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e8991115_))))
                                          (_loop8981105_
                                           _lp-tl9011122_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd9001119_
                                                   _body9021112_)))))
                                      (let ((_body9031125_
                                             (reverse _body9021112_)))
                                        (___kont4184041841_
                                         _body9031125_
                                         _tl8831066_
                                         _hd8931093_
                                         _tl8891086_
                                         _hd8781043_))))))
                        (_loop8981105_ _target8951099_ '()))))
                   (___match4187041871_
                    (lambda (_e8591177_
                             _hd8581181_
                             _tl8571184_
                             _e8621187_
                             _hd8611191_
                             _tl8601194_
                             ___splice4183841839_
                             _target8631197_
                             _tl8651200_)
                      (letrec ((_loop8661203_
                                (lambda (_hd8641207_ _body8701210_)
                                  (if (gx#stx-pair? _hd8641207_)
                                      (let ((_e8671213_
                                             (gx#syntax-e _hd8641207_)))
                                        (let ((_lp-tl8691220_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e8671213_)))
                                              (_lp-hd8681217_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e8671213_))))
                                          (_loop8661203_
                                           _lp-tl8691220_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd8681217_
                                                   _body8701210_)))))
                                      (let ((_body8711223_
                                             (reverse _body8701210_)))
                                        (___kont4183641837_ _body8711223_))))))
                        (_loop8661203_ _target8631197_ '())))))
              (if (gx#stx-pair? ___stx4183341834_)
                  (let ((_e8591177_ (gx#syntax-e ___stx4183341834_)))
                    (let ((_tl8571184_
                           (let () (declare (not safe)) (##cdr _e8591177_)))
                          (_hd8581181_
                           (let () (declare (not safe)) (##car _e8591177_))))
                      (if (gx#stx-pair? _tl8571184_)
                          (let ((_e8621187_ (gx#syntax-e _tl8571184_)))
                            (let ((_tl8601194_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e8621187_)))
                                  (_hd8611191_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e8621187_))))
                              (if (gx#stx-null? _hd8611191_)
                                  (if (gx#stx-pair/null? _tl8601194_)
                                      (let ((___splice4183841839_
                                             (gx#syntax-split-splice
                                              _tl8601194_
                                              '0)))
                                        (let ((_tl8651200_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4183841839_
                                                  '1)))
                                              (_target8631197_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4183841839_
                                                  '0))))
                                          (if (gx#stx-null? _tl8651200_)
                                              (___match4187041871_
                                               _e8591177_
                                               _hd8581181_
                                               _tl8571184_
                                               _e8621187_
                                               _hd8611191_
                                               _tl8601194_
                                               ___splice4183841839_
                                               _target8631197_
                                               _tl8651200_)
                                              (let ()
                                                (declare (not safe))
                                                (_g854931_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g854931_)))
                                  (if (gx#stx-pair? _hd8611191_)
                                      (let ((_e8851059_
                                             (gx#syntax-e _hd8611191_)))
                                        (let ((_tl8831066_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e8851059_)))
                                              (_hd8841063_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e8851059_))))
                                          (if (gx#stx-pair? _hd8841063_)
                                              (let ((_e8881069_
                                                     (gx#syntax-e
                                                      _hd8841063_)))
                                                (let ((_tl8861076_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e8881069_)))
                                                      (_hd8871073_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e8881069_))))
                                                  (if (gx#stx-pair?
                                                       _hd8871073_)
                                                      (let ((_e8911079_
                                                             (gx#syntax-e
                                                              _hd8871073_)))
                                                        (let ((_tl8891086_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e8911079_)))
                      (_hd8901083_
                       (let () (declare (not safe)) (##car _e8911079_))))
                  (if (gx#identifier? _hd8901083_)
                      (if (gx#free-identifier=?
                           |gerbil/core$<syntax-sugar>[1]#_g47450_|
                           _hd8901083_)
                          (if (gx#stx-pair? _tl8861076_)
                              (let ((_e8941089_ (gx#syntax-e _tl8861076_)))
                                (let ((_tl8921096_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e8941089_)))
                                      (_hd8931093_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e8941089_))))
                                  (if (gx#stx-null? _tl8921096_)
                                      (if (gx#stx-pair/null? _tl8601194_)
                                          (let ((___splice4184241843_
                                                 (gx#syntax-split-splice
                                                  _tl8601194_
                                                  '0)))
                                            (let ((_tl8971102_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4184241843_
                                                      '1)))
                                                  (_target8951099_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4184241843_
                                                      '0))))
                                              (if (gx#stx-null? _tl8971102_)
                                                  (___match4192041921_
                                                   _e8591177_
                                                   _hd8581181_
                                                   _tl8571184_
                                                   _e8621187_
                                                   _hd8611191_
                                                   _tl8601194_
                                                   _e8851059_
                                                   _hd8841063_
                                                   _tl8831066_
                                                   _e8881069_
                                                   _hd8871073_
                                                   _tl8861076_
                                                   _e8911079_
                                                   _hd8901083_
                                                   _tl8891086_
                                                   _e8941089_
                                                   _hd8931093_
                                                   _tl8921096_
                                                   ___splice4184241843_
                                                   _target8951099_
                                                   _tl8971102_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g854931_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g854931_)))
                                      (if (gx#stx-pair/null? _tl8601194_)
                                          (let ((___splice4184641847_
                                                 (gx#syntax-split-splice
                                                  _tl8601194_
                                                  '0)))
                                            (let ((_tl919971_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4184641847_
                                                      '1)))
                                                  (_target917968_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4184641847_
                                                      '0))))
                                              (if (gx#stx-null? _tl919971_)
                                                  (___match4194641947_
                                                   _e8591177_
                                                   _hd8581181_
                                                   _tl8571184_
                                                   _e8621187_
                                                   _hd8611191_
                                                   _tl8601194_
                                                   _e8851059_
                                                   _hd8841063_
                                                   _tl8831066_
                                                   ___splice4184641847_
                                                   _target917968_
                                                   _tl919971_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g854931_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g854931_))))))
                              (if (gx#stx-pair/null? _tl8601194_)
                                  (let ((___splice4184641847_
                                         (gx#syntax-split-splice
                                          _tl8601194_
                                          '0)))
                                    (let ((_tl919971_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice4184641847_
                                              '1)))
                                          (_target917968_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice4184641847_
                                              '0))))
                                      (if (gx#stx-null? _tl919971_)
                                          (___match4194641947_
                                           _e8591177_
                                           _hd8581181_
                                           _tl8571184_
                                           _e8621187_
                                           _hd8611191_
                                           _tl8601194_
                                           _e8851059_
                                           _hd8841063_
                                           _tl8831066_
                                           ___splice4184641847_
                                           _target917968_
                                           _tl919971_)
                                          (let ()
                                            (declare (not safe))
                                            (_g854931_)))))
                                  (let () (declare (not safe)) (_g854931_))))
                          (if (gx#stx-pair/null? _tl8601194_)
                              (let ((___splice4184641847_
                                     (gx#syntax-split-splice _tl8601194_ '0)))
                                (let ((_tl919971_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4184641847_
                                          '1)))
                                      (_target917968_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4184641847_
                                          '0))))
                                  (if (gx#stx-null? _tl919971_)
                                      (___match4194641947_
                                       _e8591177_
                                       _hd8581181_
                                       _tl8571184_
                                       _e8621187_
                                       _hd8611191_
                                       _tl8601194_
                                       _e8851059_
                                       _hd8841063_
                                       _tl8831066_
                                       ___splice4184641847_
                                       _target917968_
                                       _tl919971_)
                                      (let ()
                                        (declare (not safe))
                                        (_g854931_)))))
                              (let () (declare (not safe)) (_g854931_))))
                      (if (gx#stx-pair/null? _tl8601194_)
                          (let ((___splice4184641847_
                                 (gx#syntax-split-splice _tl8601194_ '0)))
                            (let ((_tl919971_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice4184641847_ '1)))
                                  (_target917968_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice4184641847_ '0))))
                              (if (gx#stx-null? _tl919971_)
                                  (___match4194641947_
                                   _e8591177_
                                   _hd8581181_
                                   _tl8571184_
                                   _e8621187_
                                   _hd8611191_
                                   _tl8601194_
                                   _e8851059_
                                   _hd8841063_
                                   _tl8831066_
                                   ___splice4184641847_
                                   _target917968_
                                   _tl919971_)
                                  (let () (declare (not safe)) (_g854931_)))))
                          (let () (declare (not safe)) (_g854931_))))))
              (if (gx#stx-pair/null? _tl8601194_)
                  (let ((___splice4184641847_
                         (gx#syntax-split-splice _tl8601194_ '0)))
                    (let ((_tl919971_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4184641847_ '1)))
                          (_target917968_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4184641847_ '0))))
                      (if (gx#stx-null? _tl919971_)
                          (___match4194641947_
                           _e8591177_
                           _hd8581181_
                           _tl8571184_
                           _e8621187_
                           _hd8611191_
                           _tl8601194_
                           _e8851059_
                           _hd8841063_
                           _tl8831066_
                           ___splice4184641847_
                           _target917968_
                           _tl919971_)
                          (let () (declare (not safe)) (_g854931_)))))
                  (let () (declare (not safe)) (_g854931_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _tl8601194_)
                                                  (let ((___splice4184641847_
                                                         (gx#syntax-split-splice
                                                          _tl8601194_
                                                          '0)))
                                                    (let ((_tl919971_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4184641847_
                                                              '1)))
                                                          (_target917968_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4184641847_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl919971_)
                                                          (___match4194641947_
                                                           _e8591177_
                                                           _hd8581181_
                                                           _tl8571184_
                                                           _e8621187_
                                                           _hd8611191_
                                                           _tl8601194_
                                                           _e8851059_
                                                           _hd8841063_
                                                           _tl8831066_
                                                           ___splice4184641847_
                                                           _target917968_
                                                           _tl919971_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g854931_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g854931_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g854931_))))))
                          (let () (declare (not safe)) (_g854931_)))))
                  (let () (declare (not safe)) (_g854931_))))))))
    (define |gerbil/core$<syntax-sugar>[:0:]#syntax/loc|
      (lambda (_stx1259_)
        (let* ((_g12621280_
                (lambda (_g12631276_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g12631276_)))
               (_g12611335_
                (lambda (_g12631284_)
                  (if (gx#stx-pair? _g12631284_)
                      (let ((_e12681287_ (gx#syntax-e _g12631284_)))
                        (let ((_hd12671291_
                               (let ()
                                 (declare (not safe))
                                 (##car _e12681287_)))
                              (_tl12661294_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e12681287_))))
                          (if (gx#stx-pair? _tl12661294_)
                              (let ((_e12711297_ (gx#syntax-e _tl12661294_)))
                                (let ((_hd12701301_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e12711297_)))
                                      (_tl12691304_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e12711297_))))
                                  (if (gx#stx-pair? _tl12691304_)
                                      (let ((_e12741307_
                                             (gx#syntax-e _tl12691304_)))
                                        (let ((_hd12731311_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e12741307_)))
                                              (_tl12721314_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e12741307_))))
                                          (if (gx#stx-null? _tl12721314_)
                                              ((lambda (_L1317_ _L1319_)
                                                 (let ((__tmp47459
                                                        (gx#datum->syntax
                                                         '#f
                                                         'stx-wrap-source))
                                                       (__tmp47451
                                                        (let ((__tmp47456
                                                               (let ((__tmp47458
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'syntax))
                             (__tmp47457
                              (let ()
                                (declare (not safe))
                                (cons _L1317_ '()))))
                         (declare (not safe))
                         (cons __tmp47458 __tmp47457)))
                      (__tmp47452
                       (let ((__tmp47453
                              (let ((__tmp47455
                                     (gx#datum->syntax '#f 'stx-source))
                                    (__tmp47454
                                     (let ()
                                       (declare (not safe))
                                       (cons _L1319_ '()))))
                                (declare (not safe))
                                (cons __tmp47455 __tmp47454))))
                         (declare (not safe))
                         (cons __tmp47453 '()))))
                  (declare (not safe))
                  (cons __tmp47456 __tmp47452))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp47459
                                                         __tmp47451)))
                                               _hd12731311_
                                               _hd12701301_)
                                              (_g12621280_ _g12631284_))))
                                      (_g12621280_ _g12631284_))))
                              (_g12621280_ _g12631284_))))
                      (_g12621280_ _g12631284_)))))
          (_g12611335_ _stx1259_))))))
