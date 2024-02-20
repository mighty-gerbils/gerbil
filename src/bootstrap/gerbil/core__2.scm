(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<syntax-sugar>[1]#_g47042_|
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
                      (let ((_e5582_ (gx#syntax-e _g5279_)))
                        (let ((_hd5686_
                               (let () (declare (not safe)) (##car _e5582_)))
                              (_tl5789_
                               (let () (declare (not safe)) (##cdr _e5582_))))
                          (if (gx#stx-pair? _tl5789_)
                              (let ((_e5892_ (gx#syntax-e _tl5789_)))
                                (let ((_hd5996_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5892_)))
                                      (_tl6099_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5892_))))
                                  (if (gx#stx-pair/null? _tl6099_)
                                      (let ((_g46972_
                                             (gx#syntax-split-splice
                                              _tl6099_
                                              '0)))
                                        (begin
                                          (let ((_g46973_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g46972_)
                                                       (##vector-length
                                                        _g46972_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g46973_ 2)))
                                                (error "Context expects 2 values"
                                                       _g46973_)))
                                          (let ((_target61102_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g46972_ 0)))
                                                (_tl63105_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g46972_ 1))))
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
                                            (let* ((___stx4129041291_
                                                    _clause154_)
                                                   (_g158185_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx4129041291_))))
                                              (let ((___kont4129341294_
                                                     (lambda (_L270_ _L272_)
                                                       (let ((__tmp46974
                                                              (let ((__tmp46975
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp46977 (gx#datum->syntax '#f 'syntax))
                                   (__tmp46976
                                    (let ()
                                      (declare (not safe))
                                      (cons _L270_ '()))))
                               (declare (not safe))
                               (cons __tmp46977 __tmp46976))))
                        (declare (not safe))
                        (cons __tmp46975 '()))))
                 (declare (not safe))
                 (cons _L272_ __tmp46974))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4129541296_
                                                     (lambda (_L222_
                                                              _L224_
                                                              _L225_)
                                                       (let ((__tmp46978
                                                              (let ((__tmp46979
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp46980
                                    (let ((__tmp46982
                                           (gx#datum->syntax '#f 'syntax))
                                          (__tmp46981
                                           (let ()
                                             (declare (not safe))
                                             (cons _L222_ '()))))
                                      (declare (not safe))
                                      (cons __tmp46982 __tmp46981))))
                               (declare (not safe))
                               (cons __tmp46980 '()))))
                        (declare (not safe))
                        (cons _L224_ __tmp46979))))
                 (declare (not safe))
                 (cons _L225_ __tmp46978)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx4129041291_)
                                                    (let ((_e162250_
                                                           (gx#syntax-e
                                                            ___stx4129041291_)))
                                                      (let ((_tl164257_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e162250_)))
                    (_hd163254_
                     (let () (declare (not safe)) (##car _e162250_))))
                (if (gx#stx-pair? _tl164257_)
                    (let ((_e165260_ (gx#syntax-e _tl164257_)))
                      (let ((_tl167267_
                             (let () (declare (not safe)) (##cdr _e165260_)))
                            (_hd166264_
                             (let () (declare (not safe)) (##car _e165260_))))
                        (if (gx#stx-null? _tl167267_)
                            (___kont4129341294_ _hd166264_ _hd163254_)
                            (if (gx#stx-pair? _tl167267_)
                                (let ((_e177212_ (gx#syntax-e _tl167267_)))
                                  (let ((_tl179219_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e177212_)))
                                        (_hd178216_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e177212_))))
                                    (if (gx#stx-null? _tl179219_)
                                        (___kont4129541296_
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
                                          (foldr (lambda (_g288291_ _g289294_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g288291_
                                                           _g289294_)))
                                                 '()
                                                 _L132_)))
                                        (_g300317_
                                         (lambda (_g301313_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g301313_)))
                                        (_g299376_
                                         (lambda (_g301321_)
                                           (if (gx#stx-pair/null? _g301321_)
                                               (let ((_g46983_
                                                      (gx#syntax-split-splice
                                                       _g301321_
                                                       '0)))
                                                 (begin
                                                   (let ((_g46984_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g46983_)
                        (##vector-length _g46983_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g46984_ 2)))
                 (error "Context expects 2 values" _g46984_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target303324_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g46983_
                                                             0)))
                                                         (_tl305327_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g46983_
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
                                      (let ((__tmp46995
                                             (gx#datum->syntax '#f 'lambda%))
                                            (__tmp46985
                                             (let ((__tmp46993
                                                    (let ((__tmp46994
                                                           (gx#datum->syntax
                                                            '#f
                                                            '$stx)))
                                                      (declare (not safe))
                                                      (cons __tmp46994 '())))
                                                   (__tmp46986
                                                    (let ((__tmp46987
                                                           (let ((__tmp46992
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'syntax-case))
                         (__tmp46988
                          (let ((__tmp46991 (gx#datum->syntax '#f '$stx))
                                (__tmp46989
                                 (let ((__tmp46990
                                        (foldr (lambda (_g367370_ _g368373_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g367370_ _g368373_)))
                                               '()
                                               _L354_)))
                                   (declare (not safe))
                                   (cons _L134_ __tmp46990))))
                            (declare (not safe))
                            (cons __tmp46991 __tmp46989))))
                     (declare (not safe))
                     (cons __tmp46992 __tmp46988))))
              (declare (not safe))
              (cons __tmp46987 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp46993 __tmp46986))))
                                        (declare (not safe))
                                        (cons __tmp46995 __tmp46985)))
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
        (let* ((___stx4133441335_ _stx386_)
               (_g391476_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4133441335_))))
          (let ((___kont4133741338_
                 (lambda (_L816_)
                   (let ((__tmp46998 (gx#datum->syntax '#f 'let-values))
                         (__tmp46996
                          (let ((__tmp46997
                                 (foldr (lambda (_g832835_ _g833838_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g832835_ _g833838_)))
                                        '()
                                        _L816_)))
                            (declare (not safe))
                            (cons '() __tmp46997))))
                     (declare (not safe))
                     (cons __tmp46998 __tmp46996))))
                (___kont4134141342_
                 (lambda (_L724_ _L726_ _L727_)
                   (let ((__tmp47008 (gx#datum->syntax '#f 'syntax-case))
                         (__tmp46999
                          (let ((__tmp47000
                                 (let ((__tmp47001
                                        (let ((__tmp47002
                                               (let ((__tmp47003
                                                      (let ((__tmp47004
                                                             (let ((__tmp47007
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'let-values))
                           (__tmp47005
                            (let ((__tmp47006
                                   (foldr (lambda (_g750753_ _g751756_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g750753_ _g751756_)))
                                          '()
                                          _L724_)))
                              (declare (not safe))
                              (cons '() __tmp47006))))
                       (declare (not safe))
                       (cons __tmp47007 __tmp47005))))
                (declare (not safe))
                (cons __tmp47004 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L727_ __tmp47003))))
                                          (declare (not safe))
                                          (cons __tmp47002 '()))))
                                   (declare (not safe))
                                   (cons '() __tmp47001))))
                            (declare (not safe))
                            (cons _L726_ __tmp47000))))
                     (declare (not safe))
                     (cons __tmp47008 __tmp46999))))
                (___kont4134541346_
                 (lambda (_L587_ _L589_ _L590_)
                   (let ((__tmp47022 (gx#datum->syntax '#f 'syntax-case))
                         (__tmp47009
                          (let ((__tmp47019
                                 (let ((__tmp47021
                                        (gx#datum->syntax '#f 'list))
                                       (__tmp47020
                                        (foldr (lambda (_g612619_ _g613622_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g612619_ _g613622_)))
                                               '()
                                               _L589_)))
                                   (declare (not safe))
                                   (cons __tmp47021 __tmp47020)))
                                (__tmp47010
                                 (let ((__tmp47011
                                        (let ((__tmp47012
                                               (let ((__tmp47018
                                                      (foldr (lambda (_g614625_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g615628_)
                       (let ()
                         (declare (not safe))
                         (cons _g614625_ _g615628_)))
                     '()
                     _L590_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp47013
                                                      (let ((__tmp47014
                                                             (let ((__tmp47017
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'let-values))
                           (__tmp47015
                            (let ((__tmp47016
                                   (foldr (lambda (_g616631_ _g617634_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g616631_ _g617634_)))
                                          '()
                                          _L587_)))
                              (declare (not safe))
                              (cons '() __tmp47016))))
                       (declare (not safe))
                       (cons __tmp47017 __tmp47015))))
                (declare (not safe))
                (cons __tmp47014 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp47018
                                                       __tmp47013))))
                                          (declare (not safe))
                                          (cons __tmp47012 '()))))
                                   (declare (not safe))
                                   (cons '() __tmp47011))))
                            (declare (not safe))
                            (cons __tmp47019 __tmp47010))))
                     (declare (not safe))
                     (cons __tmp47022 __tmp47009)))))
            (let* ((___match4143541436_
                    (lambda (_e439483_
                             _hd440487_
                             _tl441490_
                             _e442493_
                             _hd443497_
                             _tl444500_
                             ___splice4134741348_
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
                                              (let ((_e456531_
                                                     (gx#syntax-e
                                                      _lp-hd450525_)))
                                                (let ((_tl458538_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e456531_)))
                                                      (_hd457535_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e456531_))))
                                                  (if (gx#stx-pair? _tl458538_)
                                                      (let ((_e459541_
                                                             (gx#syntax-e
                                                              _tl458538_)))
                                                        (let ((_tl461548_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e459541_)))
                      (_hd460545_
                       (let () (declare (not safe)) (##car _e459541_))))
                  (if (gx#stx-null? _tl461548_)
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
                                        (if (gx#stx-pair/null? _tl444500_)
                                            (let ((___splice4134941350_
                                                   (gx#syntax-split-splice
                                                    _tl444500_
                                                    '0)))
                                              (let ((_tl464560_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4134941350_
                                                        '1)))
                                                    (_target462557_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4134941350_
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
                              (___kont4134541346_
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
                   (___match4141541416_
                    (lambda (_e412644_
                             _hd413648_
                             _tl414651_
                             _e415654_
                             _hd416658_
                             _tl417661_
                             _e418664_
                             _hd419668_
                             _tl420671_
                             _e421674_
                             _hd422678_
                             _tl423681_
                             _e424684_
                             _hd425688_
                             _tl426691_
                             ___splice4134341344_
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
                                        (___kont4134141342_
                                         _body435720_
                                         _hd425688_
                                         _hd422678_))))))
                        (_loop430700_ _target427694_ '()))))
                   (___match4137341374_
                    (lambda (_e394766_
                             _hd395770_
                             _tl396773_
                             _e397776_
                             _hd398780_
                             _tl399783_
                             ___splice4133941340_
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
                                        (___kont4133741338_ _body408812_))))))
                        (_loop403792_ _target400786_ '())))))
              (if (gx#stx-pair? ___stx4133441335_)
                  (let ((_e394766_ (gx#syntax-e ___stx4133441335_)))
                    (let ((_tl396773_
                           (let () (declare (not safe)) (##cdr _e394766_)))
                          (_hd395770_
                           (let () (declare (not safe)) (##car _e394766_))))
                      (if (gx#stx-pair? _tl396773_)
                          (let ((_e397776_ (gx#syntax-e _tl396773_)))
                            (let ((_tl399783_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e397776_)))
                                  (_hd398780_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e397776_))))
                              (if (gx#stx-null? _hd398780_)
                                  (if (gx#stx-pair/null? _tl399783_)
                                      (let ((___splice4133941340_
                                             (gx#syntax-split-splice
                                              _tl399783_
                                              '0)))
                                        (let ((_tl402789_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4133941340_
                                                  '1)))
                                              (_target400786_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4133941340_
                                                  '0))))
                                          (if (gx#stx-null? _tl402789_)
                                              (___match4137341374_
                                               _e394766_
                                               _hd395770_
                                               _tl396773_
                                               _e397776_
                                               _hd398780_
                                               _tl399783_
                                               ___splice4133941340_
                                               _target400786_
                                               _tl402789_)
                                              (if (gx#stx-pair/null?
                                                   _hd398780_)
                                                  (let ((___splice4134741348_
                                                         (gx#syntax-split-splice
                                                          _hd398780_
                                                          '0)))
                                                    (let ((_tl447506_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4134741348_
                                                              '1)))
                                                          (_target445503_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4134741348_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl447506_)
                                                          (___match4143541436_
                                                           _e394766_
                                                           _hd395770_
                                                           _tl396773_
                                                           _e397776_
                                                           _hd398780_
                                                           _tl399783_
                                                           ___splice4134741348_
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
                                          (let ((___splice4134741348_
                                                 (gx#syntax-split-splice
                                                  _hd398780_
                                                  '0)))
                                            (let ((_tl447506_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4134741348_
                                                      '1)))
                                                  (_target445503_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4134741348_
                                                      '0))))
                                              (if (gx#stx-null? _tl447506_)
                                                  (___match4143541436_
                                                   _e394766_
                                                   _hd395770_
                                                   _tl396773_
                                                   _e397776_
                                                   _hd398780_
                                                   _tl399783_
                                                   ___splice4134741348_
                                                   _target445503_
                                                   _tl447506_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g391476_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g391476_))))
                                  (if (gx#stx-pair? _hd398780_)
                                      (let ((_e418664_
                                             (gx#syntax-e _hd398780_)))
                                        (let ((_tl420671_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e418664_)))
                                              (_hd419668_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e418664_))))
                                          (if (gx#stx-pair? _hd419668_)
                                              (let ((_e421674_
                                                     (gx#syntax-e _hd419668_)))
                                                (let ((_tl423681_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e421674_)))
                                                      (_hd422678_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e421674_))))
                                                  (if (gx#stx-pair? _tl423681_)
                                                      (let ((_e424684_
                                                             (gx#syntax-e
                                                              _tl423681_)))
                                                        (let ((_tl426691_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e424684_)))
                      (_hd425688_
                       (let () (declare (not safe)) (##car _e424684_))))
                  (if (gx#stx-null? _tl426691_)
                      (if (gx#stx-null? _tl420671_)
                          (if (gx#stx-pair/null? _tl399783_)
                              (let ((___splice4134341344_
                                     (gx#syntax-split-splice _tl399783_ '0)))
                                (let ((_tl429697_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4134341344_
                                          '1)))
                                      (_target427694_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4134341344_
                                          '0))))
                                  (if (gx#stx-null? _tl429697_)
                                      (___match4141541416_
                                       _e394766_
                                       _hd395770_
                                       _tl396773_
                                       _e397776_
                                       _hd398780_
                                       _tl399783_
                                       _e418664_
                                       _hd419668_
                                       _tl420671_
                                       _e421674_
                                       _hd422678_
                                       _tl423681_
                                       _e424684_
                                       _hd425688_
                                       _tl426691_
                                       ___splice4134341344_
                                       _target427694_
                                       _tl429697_)
                                      (if (gx#stx-pair/null? _hd398780_)
                                          (let ((___splice4134741348_
                                                 (gx#syntax-split-splice
                                                  _hd398780_
                                                  '0)))
                                            (let ((_tl447506_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4134741348_
                                                      '1)))
                                                  (_target445503_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4134741348_
                                                      '0))))
                                              (if (gx#stx-null? _tl447506_)
                                                  (___match4143541436_
                                                   _e394766_
                                                   _hd395770_
                                                   _tl396773_
                                                   _e397776_
                                                   _hd398780_
                                                   _tl399783_
                                                   ___splice4134741348_
                                                   _target445503_
                                                   _tl447506_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g391476_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g391476_))))))
                              (if (gx#stx-pair/null? _hd398780_)
                                  (let ((___splice4134741348_
                                         (gx#syntax-split-splice
                                          _hd398780_
                                          '0)))
                                    (let ((_tl447506_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice4134741348_
                                              '1)))
                                          (_target445503_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice4134741348_
                                              '0))))
                                      (if (gx#stx-null? _tl447506_)
                                          (___match4143541436_
                                           _e394766_
                                           _hd395770_
                                           _tl396773_
                                           _e397776_
                                           _hd398780_
                                           _tl399783_
                                           ___splice4134741348_
                                           _target445503_
                                           _tl447506_)
                                          (let ()
                                            (declare (not safe))
                                            (_g391476_)))))
                                  (let () (declare (not safe)) (_g391476_))))
                          (if (gx#stx-pair/null? _hd398780_)
                              (let ((___splice4134741348_
                                     (gx#syntax-split-splice _hd398780_ '0)))
                                (let ((_tl447506_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4134741348_
                                          '1)))
                                      (_target445503_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4134741348_
                                          '0))))
                                  (if (gx#stx-null? _tl447506_)
                                      (___match4143541436_
                                       _e394766_
                                       _hd395770_
                                       _tl396773_
                                       _e397776_
                                       _hd398780_
                                       _tl399783_
                                       ___splice4134741348_
                                       _target445503_
                                       _tl447506_)
                                      (let ()
                                        (declare (not safe))
                                        (_g391476_)))))
                              (let () (declare (not safe)) (_g391476_))))
                      (if (gx#stx-pair/null? _hd398780_)
                          (let ((___splice4134741348_
                                 (gx#syntax-split-splice _hd398780_ '0)))
                            (let ((_tl447506_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice4134741348_ '1)))
                                  (_target445503_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice4134741348_ '0))))
                              (if (gx#stx-null? _tl447506_)
                                  (___match4143541436_
                                   _e394766_
                                   _hd395770_
                                   _tl396773_
                                   _e397776_
                                   _hd398780_
                                   _tl399783_
                                   ___splice4134741348_
                                   _target445503_
                                   _tl447506_)
                                  (let () (declare (not safe)) (_g391476_)))))
                          (let () (declare (not safe)) (_g391476_))))))
              (if (gx#stx-pair/null? _hd398780_)
                  (let ((___splice4134741348_
                         (gx#syntax-split-splice _hd398780_ '0)))
                    (let ((_tl447506_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4134741348_ '1)))
                          (_target445503_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4134741348_ '0))))
                      (if (gx#stx-null? _tl447506_)
                          (___match4143541436_
                           _e394766_
                           _hd395770_
                           _tl396773_
                           _e397776_
                           _hd398780_
                           _tl399783_
                           ___splice4134741348_
                           _target445503_
                           _tl447506_)
                          (let () (declare (not safe)) (_g391476_)))))
                  (let () (declare (not safe)) (_g391476_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _hd398780_)
                                                  (let ((___splice4134741348_
                                                         (gx#syntax-split-splice
                                                          _hd398780_
                                                          '0)))
                                                    (let ((_tl447506_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4134741348_
                                                              '1)))
                                                          (_target445503_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4134741348_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl447506_)
                                                          (___match4143541436_
                                                           _e394766_
                                                           _hd395770_
                                                           _tl396773_
                                                           _e397776_
                                                           _hd398780_
                                                           _tl399783_
                                                           ___splice4134741348_
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
                                          (let ((___splice4134741348_
                                                 (gx#syntax-split-splice
                                                  _hd398780_
                                                  '0)))
                                            (let ((_tl447506_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4134741348_
                                                      '1)))
                                                  (_target445503_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4134741348_
                                                      '0))))
                                              (if (gx#stx-null? _tl447506_)
                                                  (___match4143541436_
                                                   _e394766_
                                                   _hd395770_
                                                   _tl396773_
                                                   _e397776_
                                                   _hd398780_
                                                   _tl399783_
                                                   ___splice4134741348_
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
        (let* ((___stx4143841439_ _stx849_)
               (_g854931_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4143841439_))))
          (let ((___kont4144141442_
                 (lambda (_L1227_)
                   (let ((__tmp47025 (gx#datum->syntax '#f 'let-values))
                         (__tmp47023
                          (let ((__tmp47024
                                 (foldr (lambda (_g12431246_ _g12441249_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g12431246_ _g12441249_)))
                                        '()
                                        _L1227_)))
                            (declare (not safe))
                            (cons '() __tmp47024))))
                     (declare (not safe))
                     (cons __tmp47025 __tmp47023))))
                (___kont4144541446_
                 (lambda (_L1129_ _L1131_ _L1132_ _L1133_ _L1134_)
                   (let ((__tmp47034 (gx#datum->syntax '#f 'let-values))
                         (__tmp47026
                          (let ((__tmp47031
                                 (let ((__tmp47032
                                        (let ((__tmp47033
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L1132_ '()))))
                                          (declare (not safe))
                                          (cons _L1133_ __tmp47033))))
                                   (declare (not safe))
                                   (cons __tmp47032 '())))
                                (__tmp47027
                                 (let ((__tmp47028
                                        (let ((__tmp47029
                                               (let ((__tmp47030
                                                      (foldr (lambda (_g11611164_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g11621167_)
                       (let ()
                         (declare (not safe))
                         (cons _g11611164_ _g11621167_)))
                     '()
                     _L1129_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L1131_ __tmp47030))))
                                          (declare (not safe))
                                          (cons _L1134_ __tmp47029))))
                                   (declare (not safe))
                                   (cons __tmp47028 '()))))
                            (declare (not safe))
                            (cons __tmp47031 __tmp47027))))
                     (declare (not safe))
                     (cons __tmp47034 __tmp47026))))
                (___kont4144941450_
                 (lambda (_L998_ _L1000_ _L1001_ _L1002_)
                   (let ((__tmp47041 (gx#datum->syntax '#f 'with-syntax))
                         (__tmp47035
                          (let ((__tmp47040
                                 (let ()
                                   (declare (not safe))
                                   (cons _L1001_ '())))
                                (__tmp47036
                                 (let ((__tmp47037
                                        (let ((__tmp47038
                                               (let ((__tmp47039
                                                      (foldr (lambda (_g10231026_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g10241029_)
                       (let ()
                         (declare (not safe))
                         (cons _g10231026_ _g10241029_)))
                     '()
                     _L998_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L1000_ __tmp47039))))
                                          (declare (not safe))
                                          (cons _L1002_ __tmp47038))))
                                   (declare (not safe))
                                   (cons __tmp47037 '()))))
                            (declare (not safe))
                            (cons __tmp47040 __tmp47036))))
                     (declare (not safe))
                     (cons __tmp47041 __tmp47035)))))
            (let* ((___match4155141552_
                    (lambda (_e908938_
                             _hd909942_
                             _tl910945_
                             _e911948_
                             _hd912952_
                             _tl913955_
                             _e914958_
                             _hd915962_
                             _tl916965_
                             ___splice4145141452_
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
                                        (___kont4144941450_
                                         _body925994_
                                         _tl916965_
                                         _hd915962_
                                         _hd909942_))))))
                        (_loop920974_ _target917968_ '()))))
                   (___match4152541526_
                    (lambda (_e8771039_
                             _hd8781043_
                             _tl8791046_
                             _e8801049_
                             _hd8811053_
                             _tl8821056_
                             _e8831059_
                             _hd8841063_
                             _tl8851066_
                             _e8861069_
                             _hd8871073_
                             _tl8881076_
                             _e8891079_
                             _hd8901083_
                             _tl8911086_
                             _e8921089_
                             _hd8931093_
                             _tl8941096_
                             ___splice4144741448_
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
                                        (___kont4144541446_
                                         _body9031125_
                                         _tl8851066_
                                         _hd8931093_
                                         _tl8911086_
                                         _hd8781043_))))))
                        (_loop8981105_ _target8951099_ '()))))
                   (___match4147541476_
                    (lambda (_e8571177_
                             _hd8581181_
                             _tl8591184_
                             _e8601187_
                             _hd8611191_
                             _tl8621194_
                             ___splice4144341444_
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
                                        (___kont4144141442_ _body8711223_))))))
                        (_loop8661203_ _target8631197_ '())))))
              (if (gx#stx-pair? ___stx4143841439_)
                  (let ((_e8571177_ (gx#syntax-e ___stx4143841439_)))
                    (let ((_tl8591184_
                           (let () (declare (not safe)) (##cdr _e8571177_)))
                          (_hd8581181_
                           (let () (declare (not safe)) (##car _e8571177_))))
                      (if (gx#stx-pair? _tl8591184_)
                          (let ((_e8601187_ (gx#syntax-e _tl8591184_)))
                            (let ((_tl8621194_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e8601187_)))
                                  (_hd8611191_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e8601187_))))
                              (if (gx#stx-null? _hd8611191_)
                                  (if (gx#stx-pair/null? _tl8621194_)
                                      (let ((___splice4144341444_
                                             (gx#syntax-split-splice
                                              _tl8621194_
                                              '0)))
                                        (let ((_tl8651200_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4144341444_
                                                  '1)))
                                              (_target8631197_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4144341444_
                                                  '0))))
                                          (if (gx#stx-null? _tl8651200_)
                                              (___match4147541476_
                                               _e8571177_
                                               _hd8581181_
                                               _tl8591184_
                                               _e8601187_
                                               _hd8611191_
                                               _tl8621194_
                                               ___splice4144341444_
                                               _target8631197_
                                               _tl8651200_)
                                              (let ()
                                                (declare (not safe))
                                                (_g854931_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g854931_)))
                                  (if (gx#stx-pair? _hd8611191_)
                                      (let ((_e8831059_
                                             (gx#syntax-e _hd8611191_)))
                                        (let ((_tl8851066_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e8831059_)))
                                              (_hd8841063_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e8831059_))))
                                          (if (gx#stx-pair? _hd8841063_)
                                              (let ((_e8861069_
                                                     (gx#syntax-e
                                                      _hd8841063_)))
                                                (let ((_tl8881076_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e8861069_)))
                                                      (_hd8871073_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e8861069_))))
                                                  (if (gx#stx-pair?
                                                       _hd8871073_)
                                                      (let ((_e8891079_
                                                             (gx#syntax-e
                                                              _hd8871073_)))
                                                        (let ((_tl8911086_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e8891079_)))
                      (_hd8901083_
                       (let () (declare (not safe)) (##car _e8891079_))))
                  (if (gx#identifier? _hd8901083_)
                      (if (gx#free-identifier=?
                           |gerbil/core$<syntax-sugar>[1]#_g47042_|
                           _hd8901083_)
                          (if (gx#stx-pair? _tl8881076_)
                              (let ((_e8921089_ (gx#syntax-e _tl8881076_)))
                                (let ((_tl8941096_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e8921089_)))
                                      (_hd8931093_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e8921089_))))
                                  (if (gx#stx-null? _tl8941096_)
                                      (if (gx#stx-pair/null? _tl8621194_)
                                          (let ((___splice4144741448_
                                                 (gx#syntax-split-splice
                                                  _tl8621194_
                                                  '0)))
                                            (let ((_tl8971102_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4144741448_
                                                      '1)))
                                                  (_target8951099_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4144741448_
                                                      '0))))
                                              (if (gx#stx-null? _tl8971102_)
                                                  (___match4152541526_
                                                   _e8571177_
                                                   _hd8581181_
                                                   _tl8591184_
                                                   _e8601187_
                                                   _hd8611191_
                                                   _tl8621194_
                                                   _e8831059_
                                                   _hd8841063_
                                                   _tl8851066_
                                                   _e8861069_
                                                   _hd8871073_
                                                   _tl8881076_
                                                   _e8891079_
                                                   _hd8901083_
                                                   _tl8911086_
                                                   _e8921089_
                                                   _hd8931093_
                                                   _tl8941096_
                                                   ___splice4144741448_
                                                   _target8951099_
                                                   _tl8971102_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g854931_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g854931_)))
                                      (if (gx#stx-pair/null? _tl8621194_)
                                          (let ((___splice4145141452_
                                                 (gx#syntax-split-splice
                                                  _tl8621194_
                                                  '0)))
                                            (let ((_tl919971_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4145141452_
                                                      '1)))
                                                  (_target917968_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4145141452_
                                                      '0))))
                                              (if (gx#stx-null? _tl919971_)
                                                  (___match4155141552_
                                                   _e8571177_
                                                   _hd8581181_
                                                   _tl8591184_
                                                   _e8601187_
                                                   _hd8611191_
                                                   _tl8621194_
                                                   _e8831059_
                                                   _hd8841063_
                                                   _tl8851066_
                                                   ___splice4145141452_
                                                   _target917968_
                                                   _tl919971_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g854931_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g854931_))))))
                              (if (gx#stx-pair/null? _tl8621194_)
                                  (let ((___splice4145141452_
                                         (gx#syntax-split-splice
                                          _tl8621194_
                                          '0)))
                                    (let ((_tl919971_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice4145141452_
                                              '1)))
                                          (_target917968_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice4145141452_
                                              '0))))
                                      (if (gx#stx-null? _tl919971_)
                                          (___match4155141552_
                                           _e8571177_
                                           _hd8581181_
                                           _tl8591184_
                                           _e8601187_
                                           _hd8611191_
                                           _tl8621194_
                                           _e8831059_
                                           _hd8841063_
                                           _tl8851066_
                                           ___splice4145141452_
                                           _target917968_
                                           _tl919971_)
                                          (let ()
                                            (declare (not safe))
                                            (_g854931_)))))
                                  (let () (declare (not safe)) (_g854931_))))
                          (if (gx#stx-pair/null? _tl8621194_)
                              (let ((___splice4145141452_
                                     (gx#syntax-split-splice _tl8621194_ '0)))
                                (let ((_tl919971_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4145141452_
                                          '1)))
                                      (_target917968_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4145141452_
                                          '0))))
                                  (if (gx#stx-null? _tl919971_)
                                      (___match4155141552_
                                       _e8571177_
                                       _hd8581181_
                                       _tl8591184_
                                       _e8601187_
                                       _hd8611191_
                                       _tl8621194_
                                       _e8831059_
                                       _hd8841063_
                                       _tl8851066_
                                       ___splice4145141452_
                                       _target917968_
                                       _tl919971_)
                                      (let ()
                                        (declare (not safe))
                                        (_g854931_)))))
                              (let () (declare (not safe)) (_g854931_))))
                      (if (gx#stx-pair/null? _tl8621194_)
                          (let ((___splice4145141452_
                                 (gx#syntax-split-splice _tl8621194_ '0)))
                            (let ((_tl919971_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice4145141452_ '1)))
                                  (_target917968_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice4145141452_ '0))))
                              (if (gx#stx-null? _tl919971_)
                                  (___match4155141552_
                                   _e8571177_
                                   _hd8581181_
                                   _tl8591184_
                                   _e8601187_
                                   _hd8611191_
                                   _tl8621194_
                                   _e8831059_
                                   _hd8841063_
                                   _tl8851066_
                                   ___splice4145141452_
                                   _target917968_
                                   _tl919971_)
                                  (let () (declare (not safe)) (_g854931_)))))
                          (let () (declare (not safe)) (_g854931_))))))
              (if (gx#stx-pair/null? _tl8621194_)
                  (let ((___splice4145141452_
                         (gx#syntax-split-splice _tl8621194_ '0)))
                    (let ((_tl919971_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4145141452_ '1)))
                          (_target917968_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4145141452_ '0))))
                      (if (gx#stx-null? _tl919971_)
                          (___match4155141552_
                           _e8571177_
                           _hd8581181_
                           _tl8591184_
                           _e8601187_
                           _hd8611191_
                           _tl8621194_
                           _e8831059_
                           _hd8841063_
                           _tl8851066_
                           ___splice4145141452_
                           _target917968_
                           _tl919971_)
                          (let () (declare (not safe)) (_g854931_)))))
                  (let () (declare (not safe)) (_g854931_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _tl8621194_)
                                                  (let ((___splice4145141452_
                                                         (gx#syntax-split-splice
                                                          _tl8621194_
                                                          '0)))
                                                    (let ((_tl919971_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4145141452_
                                                              '1)))
                                                          (_target917968_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4145141452_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl919971_)
                                                          (___match4155141552_
                                                           _e8571177_
                                                           _hd8581181_
                                                           _tl8591184_
                                                           _e8601187_
                                                           _hd8611191_
                                                           _tl8621194_
                                                           _e8831059_
                                                           _hd8841063_
                                                           _tl8851066_
                                                           ___splice4145141452_
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
                      (let ((_e12661287_ (gx#syntax-e _g12631284_)))
                        (let ((_hd12671291_
                               (let ()
                                 (declare (not safe))
                                 (##car _e12661287_)))
                              (_tl12681294_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e12661287_))))
                          (if (gx#stx-pair? _tl12681294_)
                              (let ((_e12691297_ (gx#syntax-e _tl12681294_)))
                                (let ((_hd12701301_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e12691297_)))
                                      (_tl12711304_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e12691297_))))
                                  (if (gx#stx-pair? _tl12711304_)
                                      (let ((_e12721307_
                                             (gx#syntax-e _tl12711304_)))
                                        (let ((_hd12731311_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e12721307_)))
                                              (_tl12741314_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e12721307_))))
                                          (if (gx#stx-null? _tl12741314_)
                                              ((lambda (_L1317_ _L1319_)
                                                 (let ((__tmp47051
                                                        (gx#datum->syntax
                                                         '#f
                                                         'stx-wrap-source))
                                                       (__tmp47043
                                                        (let ((__tmp47048
                                                               (let ((__tmp47050
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'syntax))
                             (__tmp47049
                              (let ()
                                (declare (not safe))
                                (cons _L1317_ '()))))
                         (declare (not safe))
                         (cons __tmp47050 __tmp47049)))
                      (__tmp47044
                       (let ((__tmp47045
                              (let ((__tmp47047
                                     (gx#datum->syntax '#f 'stx-source))
                                    (__tmp47046
                                     (let ()
                                       (declare (not safe))
                                       (cons _L1319_ '()))))
                                (declare (not safe))
                                (cons __tmp47047 __tmp47046))))
                         (declare (not safe))
                         (cons __tmp47045 '()))))
                  (declare (not safe))
                  (cons __tmp47048 __tmp47044))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp47051
                                                         __tmp47043)))
                                               _hd12731311_
                                               _hd12701301_)
                                              (_g12621280_ _g12631284_))))
                                      (_g12621280_ _g12631284_))))
                              (_g12621280_ _g12631284_))))
                      (_g12621280_ _g12631284_)))))
          (_g12611335_ _stx1259_))))))
