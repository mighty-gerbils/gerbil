(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx158448_)
      (let* ((_g158452158470_
              (lambda (_g158453158466_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158453158466_))))
             (_g158451158525_
              (lambda (_g158453158474_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158453158474_))
                    (let ((_e158458158477_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158453158474_))))
                      (let ((_hd158457158481_
                             (let ()
                               (declare (not safe))
                               (##car _e158458158477_)))
                            (_tl158456158484_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158458158477_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158456158484_))
                            (let ((_e158461158487_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158456158484_))))
                              (let ((_hd158460158491_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158461158487_)))
                                    (_tl158459158494_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158461158487_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl158459158494_))
                                    (let ((_e158464158497_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl158459158494_))))
                                      (let ((_hd158463158501_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e158464158497_)))
                                            (_tl158462158504_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e158464158497_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl158462158504_))
                                            ((lambda (_L158507_ _L158509_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L158509_))
                                                   (let ((__tmp161989
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp161984
                                                          (let ((__tmp161986
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp161988
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp161987
                                (let ()
                                  (declare (not safe))
                                  (cons _L158509_ '()))))
                           (declare (not safe))
                           (cons __tmp161988 __tmp161987)))
                        (__tmp161985
                         (let () (declare (not safe)) (cons _L158507_ '()))))
                    (declare (not safe))
                    (cons __tmp161986 __tmp161985))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp161989
                                                           __tmp161984))
                                                   (_g158452158470_
                                                    _g158453158474_)))
                                             _hd158463158501_
                                             _hd158460158491_)
                                            (_g158452158470_
                                             _g158453158474_))))
                                    (_g158452158470_ _g158453158474_))))
                            (_g158452158470_ _g158453158474_))))
                    (_g158452158470_ _g158453158474_)))))
        (_g158451158525_ _$stx158448_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx158529_)
      (let* ((_g158533158562_
              (lambda (_g158534158558_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158534158558_))))
             (_g158532158662_
              (lambda (_g158534158566_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158534158566_))
                    (let ((_e158539158569_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158534158566_))))
                      (let ((_hd158538158573_
                             (let ()
                               (declare (not safe))
                               (##car _e158539158569_)))
                            (_tl158537158576_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158539158569_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl158537158576_))
                            (let ((_g161990_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl158537158576_
                                      '0))))
                              (begin
                                (let ((_g161991_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g161990_)
                                             (##vector-length _g161990_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g161991_ 2)))
                                      (error "Context expects 2 values"
                                             _g161991_)))
                                (let ((_target158540158579_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161990_ 0)))
                                      (_tl158542158582_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161990_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl158542158582_))
                                      (letrec ((_loop158543158585_
                                                (lambda (_hd158541158589_
                                                         _type158547158592_
                                                         _symbol158548158594_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd158541158589_))
                                                      (let ((_e158544158597_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd158541158589_))))
                (let ((_lp-hd158545158601_
                       (let () (declare (not safe)) (##car _e158544158597_)))
                      (_lp-tl158546158604_
                       (let () (declare (not safe)) (##cdr _e158544158597_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd158545158601_))
                      (let ((_e158553158607_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd158545158601_))))
                        (let ((_hd158552158611_
                               (let ()
                                 (declare (not safe))
                                 (##car _e158553158607_)))
                              (_tl158551158614_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e158553158607_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl158551158614_))
                              (let ((_e158556158617_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl158551158614_))))
                                (let ((_hd158555158621_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e158556158617_)))
                                      (_tl158554158624_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e158556158617_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl158554158624_))
                                      (_loop158543158585_
                                       _lp-tl158546158604_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd158555158621_
                                               _type158547158592_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd158552158611_
                                               _symbol158548158594_)))
                                      (_g158533158562_ _g158534158566_))))
                              (_g158533158562_ _g158534158566_))))
                      (_g158533158562_ _g158534158566_))))
              (let ((_type158549158627_ (reverse _type158547158592_))
                    (_symbol158550158630_ (reverse _symbol158548158594_)))
                ((lambda (_L158633_ _L158635_)
                   (let ((__tmp161998
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp161992
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L158633_
                               _L158635_))
                            (let ((__tmp161993
                                   (lambda (_g158650158654_
                                            _g158651158657_
                                            _g158652158659_)
                                     (let ((__tmp161994
                                            (let ((__tmp161997
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp161995
                                                   (let ((__tmp161996
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g158650158654_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g158651158657_
                                                           __tmp161996))))
                                              (declare (not safe))
                                              (cons __tmp161997 __tmp161995))))
                                       (declare (not safe))
                                       (cons __tmp161994 _g158652158659_)))))
                              (declare (not safe))
                              (foldr2 __tmp161993 '() _L158633_ _L158635_)))))
                     (declare (not safe))
                     (cons __tmp161998 __tmp161992)))
                 _type158549158627_
                 _symbol158550158630_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop158543158585_
                                         _target158540158579_
                                         '()
                                         '()))
                                      (_g158533158562_ _g158534158566_)))))
                            (_g158533158562_ _g158534158566_))))
                    (_g158533158562_ _g158534158566_)))))
        (_g158532158662_ _$stx158529_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx158667_)
      (let* ((___stx161549161550_ _$stx158667_)
             (_g158672158714_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161549161550_)))))
        (let ((___kont161552161553_
               (lambda (_L158842_ _L158844_ _L158845_ _L158846_)
                 (let ((__tmp162012
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp161999
                        (let ((__tmp162009
                               (let ((__tmp162011
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp162010
                                      (let ()
                                        (declare (not safe))
                                        (cons _L158846_ '()))))
                                 (declare (not safe))
                                 (cons __tmp162011 __tmp162010)))
                              (__tmp162000
                               (let ((__tmp162006
                                      (let ((__tmp162008
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp162007
                                             (let ()
                                               (declare (not safe))
                                               (cons _L158845_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162008 __tmp162007)))
                                     (__tmp162001
                                      (let ((__tmp162003
                                             (let ((__tmp162005
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp162004
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L158844_ '()))))
                                               (declare (not safe))
                                               (cons __tmp162005 __tmp162004)))
                                            (__tmp162002
                                             (let ()
                                               (declare (not safe))
                                               (cons _L158842_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162003 __tmp162002))))
                                 (declare (not safe))
                                 (cons __tmp162006 __tmp162001))))
                          (declare (not safe))
                          (cons __tmp162009 __tmp162000))))
                   (declare (not safe))
                   (cons __tmp162012 __tmp161999))))
              (___kont161554161555_
               (lambda (_L158761_ _L158763_ _L158764_ _L158765_)
                 (let ((__tmp162013
                        (let ((__tmp162014
                               (let ((__tmp162015
                                      (let ((__tmp162016
                                             (let ((__tmp162017
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp162017 '()))))
                                        (declare (not safe))
                                        (cons _L158761_ __tmp162016))))
                                 (declare (not safe))
                                 (cons _L158763_ __tmp162015))))
                          (declare (not safe))
                          (cons _L158764_ __tmp162014))))
                   (declare (not safe))
                   (cons _L158765_ __tmp162013)))))
          (let ((___match161588161589_
                 (lambda (_e158680158792_
                          _hd158679158796_
                          _tl158678158799_
                          _e158683158802_
                          _hd158682158806_
                          _tl158681158809_
                          _e158686158812_
                          _hd158685158816_
                          _tl158684158819_
                          _e158689158822_
                          _hd158688158826_
                          _tl158687158829_
                          _e158692158832_
                          _hd158691158836_
                          _tl158690158839_)
                   (let ((_L158842_ _hd158691158836_)
                         (_L158844_ _hd158688158826_)
                         (_L158845_ _hd158685158816_)
                         (_L158846_ _hd158682158806_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L158846_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L158845_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L158844_)))
                         (___kont161552161553_
                          _L158842_
                          _L158844_
                          _L158845_
                          _L158846_)
                         (let () (declare (not safe)) (_g158672158714_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx161549161550_))
                (let ((_e158680158792_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx161549161550_))))
                  (let ((_tl158678158799_
                         (let () (declare (not safe)) (##cdr _e158680158792_)))
                        (_hd158679158796_
                         (let ()
                           (declare (not safe))
                           (##car _e158680158792_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl158678158799_))
                        (let ((_e158683158802_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl158678158799_))))
                          (let ((_tl158681158809_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e158683158802_)))
                                (_hd158682158806_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e158683158802_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl158681158809_))
                                (let ((_e158686158812_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl158681158809_))))
                                  (let ((_tl158684158819_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e158686158812_)))
                                        (_hd158685158816_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e158686158812_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl158684158819_))
                                        (let ((_e158689158822_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl158684158819_))))
                                          (let ((_tl158687158829_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e158689158822_)))
                                                (_hd158688158826_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e158689158822_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl158687158829_))
                                                (let ((_e158692158832_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl158687158829_))))
                                                  (let ((_tl158690158839_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e158692158832_)))
                                                        (_hd158691158836_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e158692158832_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl158690158839_))
                                                        (___match161588161589_
                                                         _e158680158792_
                                                         _hd158679158796_
                                                         _tl158678158799_
                                                         _e158683158802_
                                                         _hd158682158806_
                                                         _tl158681158809_
                                                         _e158686158812_
                                                         _hd158685158816_
                                                         _tl158684158819_
                                                         _e158689158822_
                                                         _hd158688158826_
                                                         _tl158687158829_
                                                         _e158692158832_
                                                         _hd158691158836_
                                                         _tl158690158839_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g158672158714_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl158687158829_))
                                                    (___kont161554161555_
                                                     _hd158688158826_
                                                     _hd158685158816_
                                                     _hd158682158806_
                                                     _hd158679158796_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g158672158714_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g158672158714_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g158672158714_)))))
                        (let () (declare (not safe)) (_g158672158714_)))))
                (let () (declare (not safe)) (_g158672158714_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx158871_)
      (let* ((_g158875158910_
              (lambda (_g158876158906_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158876158906_))))
             (_g158874159029_
              (lambda (_g158876158914_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158876158914_))
                    (let ((_e158882158917_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158876158914_))))
                      (let ((_hd158881158921_
                             (let ()
                               (declare (not safe))
                               (##car _e158882158917_)))
                            (_tl158880158924_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158882158917_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl158880158924_))
                            (let ((_g162018_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl158880158924_
                                      '0))))
                              (begin
                                (let ((_g162019_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g162018_)
                                             (##vector-length _g162018_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g162019_ 2)))
                                      (error "Context expects 2 values"
                                             _g162019_)))
                                (let ((_target158883158927_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162018_ 0)))
                                      (_tl158885158930_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162018_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl158885158930_))
                                      (letrec ((_loop158886158933_
                                                (lambda (_hd158884158937_
                                                         _symbol158890158940_
                                                         _method158891158942_
                                                         _type-t158892158944_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd158884158937_))
                                                      (let ((_e158887158947_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd158884158937_))))
                (let ((_lp-hd158888158951_
                       (let () (declare (not safe)) (##car _e158887158947_)))
                      (_lp-tl158889158954_
                       (let () (declare (not safe)) (##cdr _e158887158947_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd158888158951_))
                      (let ((_e158898158957_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd158888158951_))))
                        (let ((_hd158897158961_
                               (let ()
                                 (declare (not safe))
                                 (##car _e158898158957_)))
                              (_tl158896158964_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e158898158957_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl158896158964_))
                              (let ((_e158901158967_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl158896158964_))))
                                (let ((_hd158900158971_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e158901158967_)))
                                      (_tl158899158974_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e158901158967_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl158899158974_))
                                      (let ((_e158904158977_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl158899158974_))))
                                        (let ((_hd158903158981_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e158904158977_)))
                                              (_tl158902158984_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e158904158977_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl158902158984_))
                                              (_loop158886158933_
                                               _lp-tl158889158954_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd158903158981_
                                                       _symbol158890158940_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd158900158971_
                                                       _method158891158942_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd158897158961_
                                                       _type-t158892158944_)))
                                              (_g158875158910_
                                               _g158876158914_))))
                                      (_g158875158910_ _g158876158914_))))
                              (_g158875158910_ _g158876158914_))))
                      (_g158875158910_ _g158876158914_))))
              (let ((_symbol158893158987_ (reverse _symbol158890158940_))
                    (_method158894158990_ (reverse _method158891158942_))
                    (_type-t158895158992_ (reverse _type-t158892158944_)))
                ((lambda (_L158995_ _L158997_ _L158998_)
                   (let ((__tmp162027
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp162020
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L158995_
                               _L158997_
                               _L158998_))
                            (let ((__tmp162021
                                   (lambda (_g159014159019_
                                            _g159015159022_
                                            _g159016159024_
                                            _g159017159026_)
                                     (let ((__tmp162022
                                            (let ((__tmp162026
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp162023
                                                   (let ((__tmp162024
                                                          (let ((__tmp162025
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g159014159019_ '()))))
                    (declare (not safe))
                    (cons _g159015159022_ __tmp162025))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g159016159024_
                                                           __tmp162024))))
                                              (declare (not safe))
                                              (cons __tmp162026 __tmp162023))))
                                       (declare (not safe))
                                       (cons __tmp162022 _g159017159026_)))))
                              (declare (not safe))
                              (foldr* __tmp162021
                                      '()
                                      _L158995_
                                      _L158997_
                                      _L158998_)))))
                     (declare (not safe))
                     (cons __tmp162027 __tmp162020)))
                 _symbol158893158987_
                 _method158894158990_
                 _type-t158895158992_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop158886158933_
                                         _target158883158927_
                                         '()
                                         '()
                                         '()))
                                      (_g158875158910_ _g158876158914_)))))
                            (_g158875158910_ _g158876158914_))))
                    (_g158875158910_ _g158876158914_)))))
        (_g158874159029_ _$stx158871_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx159034_)
      (let* ((_g159038159071_
              (lambda (_g159039159067_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159039159067_))))
             (_g159037159185_
              (lambda (_g159039159075_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159039159075_))
                    (let ((_e159045159078_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159039159075_))))
                      (let ((_hd159044159082_
                             (let ()
                               (declare (not safe))
                               (##car _e159045159078_)))
                            (_tl159043159085_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159045159078_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159043159085_))
                            (let ((_e159048159088_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159043159085_))))
                              (let ((_hd159047159092_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159048159088_)))
                                    (_tl159046159095_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159048159088_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl159046159095_))
                                    (let ((_g162028_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl159046159095_
                                              '0))))
                                      (begin
                                        (let ((_g162029_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g162028_)
                                                     (##vector-length
                                                      _g162028_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g162029_ 2)))
                                              (error "Context expects 2 values"
                                                     _g162029_)))
                                        (let ((_target159049159098_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g162028_ 0)))
                                              (_tl159051159101_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g162028_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl159051159101_))
                                              (letrec ((_loop159052159104_
                                                        (lambda (_hd159050159108_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol159056159111_
                         _method159057159113_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd159050159108_))
                      (let ((_e159053159116_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd159050159108_))))
                        (let ((_lp-hd159054159120_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159053159116_)))
                              (_lp-tl159055159123_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159053159116_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd159054159120_))
                              (let ((_e159062159126_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd159054159120_))))
                                (let ((_hd159061159130_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e159062159126_)))
                                      (_tl159060159133_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e159062159126_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl159060159133_))
                                      (let ((_e159065159136_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl159060159133_))))
                                        (let ((_hd159064159140_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e159065159136_)))
                                              (_tl159063159143_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e159065159136_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl159063159143_))
                                              (_loop159052159104_
                                               _lp-tl159055159123_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd159064159140_
                                                       _symbol159056159111_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd159061159130_
                                                       _method159057159113_)))
                                              (_g159038159071_
                                               _g159039159075_))))
                                      (_g159038159071_ _g159039159075_))))
                              (_g159038159071_ _g159039159075_))))
                      (let ((_symbol159058159146_
                             (reverse _symbol159056159111_))
                            (_method159059159149_
                             (reverse _method159057159113_)))
                        ((lambda (_L159152_ _L159154_ _L159155_)
                           (let ((__tmp162037
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp162030
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L159152_
                                       _L159154_))
                                    (let ((__tmp162031
                                           (lambda (_g159173159177_
                                                    _g159174159180_
                                                    _g159175159182_)
                                             (let ((__tmp162032
                                                    (let ((__tmp162036
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp162033
                                                           (let ((__tmp162034
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp162035
                                 (let ()
                                   (declare (not safe))
                                   (cons _g159173159177_ '()))))
                            (declare (not safe))
                            (cons _g159174159180_ __tmp162035))))
                     (declare (not safe))
                     (cons _L159155_ __tmp162034))))
              (declare (not safe))
              (cons __tmp162036 __tmp162033))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp162032
                                                     _g159175159182_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp162031
                                              '()
                                              _L159152_
                                              _L159154_)))))
                             (declare (not safe))
                             (cons __tmp162037 __tmp162030)))
                         _symbol159058159146_
                         _method159059159149_
                         _hd159047159092_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop159052159104_
                                                 _target159049159098_
                                                 '()
                                                 '()))
                                              (_g159038159071_
                                               _g159039159075_)))))
                                    (_g159038159071_ _g159039159075_))))
                            (_g159038159071_ _g159039159075_))))
                    (_g159038159071_ _g159039159075_)))))
        (_g159037159185_ _$stx159034_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx159190_)
      (let* ((_g159194159208_
              (lambda (_g159195159204_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159195159204_))))
             (_g159193159249_
              (lambda (_g159195159212_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159195159212_))
                    (let ((_e159199159215_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159195159212_))))
                      (let ((_hd159198159219_
                             (let ()
                               (declare (not safe))
                               (##car _e159199159215_)))
                            (_tl159197159222_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159199159215_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159197159222_))
                            (let ((_e159202159225_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159197159222_))))
                              (let ((_hd159201159229_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159202159225_)))
                                    (_tl159200159232_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159202159225_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl159200159232_))
                                    ((lambda (_L159235_)
                                       (let ((__tmp162042
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp162038
                                              (let ((__tmp162039
                                                     (let ((__tmp162041
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp162040
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L159235_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp162041 __tmp162040))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp162039 '()))))
                                         (declare (not safe))
                                         (cons __tmp162042 __tmp162038)))
                                     _hd159201159229_)
                                    (_g159194159208_ _g159195159212_))))
                            (_g159194159208_ _g159195159212_))))
                    (_g159194159208_ _g159195159212_)))))
        (_g159193159249_ _$stx159190_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx159253_)
      (let* ((_g159257159307_
              (lambda (_g159258159303_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159258159303_))))
             (_g159256159474_
              (lambda (_g159258159311_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159258159311_))
                    (let ((_e159271159314_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159258159311_))))
                      (let ((_hd159270159318_
                             (let ()
                               (declare (not safe))
                               (##car _e159271159314_)))
                            (_tl159269159321_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159271159314_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159269159321_))
                            (let ((_e159274159324_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159269159321_))))
                              (let ((_hd159273159328_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159274159324_)))
                                    (_tl159272159331_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159274159324_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl159272159331_))
                                    (let ((_e159277159334_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl159272159331_))))
                                      (let ((_hd159276159338_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159277159334_)))
                                            (_tl159275159341_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159277159334_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl159275159341_))
                                            (let ((_e159280159344_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl159275159341_))))
                                              (let ((_hd159279159348_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159280159344_)))
                                                    (_tl159278159351_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159280159344_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl159278159351_))
                                                    (let ((_e159283159354_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl159278159351_))))
                                                      (let ((_hd159282159358_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e159283159354_)))
                    (_tl159281159361_
                     (let () (declare (not safe)) (##cdr _e159283159354_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl159281159361_))
                    (let ((_e159286159364_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl159281159361_))))
                      (let ((_hd159285159368_
                             (let ()
                               (declare (not safe))
                               (##car _e159286159364_)))
                            (_tl159284159371_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159286159364_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159284159371_))
                            (let ((_e159289159374_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159284159371_))))
                              (let ((_hd159288159378_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159289159374_)))
                                    (_tl159287159381_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159289159374_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl159287159381_))
                                    (let ((_e159292159384_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl159287159381_))))
                                      (let ((_hd159291159388_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159292159384_)))
                                            (_tl159290159391_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159292159384_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl159290159391_))
                                            (let ((_e159295159394_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl159290159391_))))
                                              (let ((_hd159294159398_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159295159394_)))
                                                    (_tl159293159401_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159295159394_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl159293159401_))
                                                    (let ((_e159298159404_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl159293159401_))))
                                                      (let ((_hd159297159408_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e159298159404_)))
                    (_tl159296159411_
                     (let () (declare (not safe)) (##cdr _e159298159404_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl159296159411_))
                    (let ((_e159301159414_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl159296159411_))))
                      (let ((_hd159300159418_
                             (let ()
                               (declare (not safe))
                               (##car _e159301159414_)))
                            (_tl159299159421_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159301159414_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl159299159421_))
                            ((lambda (_L159424_
                                      _L159426_
                                      _L159427_
                                      _L159428_
                                      _L159429_
                                      _L159430_
                                      _L159431_
                                      _L159432_
                                      _L159433_
                                      _L159434_)
                               (let ((__tmp162077
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0
                                         '#f
                                         'make-!class)))
                                     (__tmp162043
                                      (let ((__tmp162074
                                             (let ((__tmp162076
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp162075
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L159434_ '()))))
                                               (declare (not safe))
                                               (cons __tmp162076 __tmp162075)))
                                            (__tmp162044
                                             (let ((__tmp162071
                                                    (let ((__tmp162073
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote)))
                                                          (__tmp162072
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L159433_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp162073 __tmp162072)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp162045
                                                    (let ((__tmp162068
                                                           (let ((__tmp162070
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp162069
                          (let () (declare (not safe)) (cons _L159432_ '()))))
                     (declare (not safe))
                     (cons __tmp162070 __tmp162069)))
                  (__tmp162046
                   (let ((__tmp162065
                          (let ((__tmp162067
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote)))
                                (__tmp162066
                                 (let ()
                                   (declare (not safe))
                                   (cons _L159431_ '()))))
                            (declare (not safe))
                            (cons __tmp162067 __tmp162066)))
                         (__tmp162047
                          (let ((__tmp162062
                                 (let ((__tmp162064
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'quote)))
                                       (__tmp162063
                                        (let ()
                                          (declare (not safe))
                                          (cons _L159430_ '()))))
                                   (declare (not safe))
                                   (cons __tmp162064 __tmp162063)))
                                (__tmp162048
                                 (let ((__tmp162059
                                        (let ((__tmp162061
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'quote)))
                                              (__tmp162060
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L159429_ '()))))
                                          (declare (not safe))
                                          (cons __tmp162061 __tmp162060)))
                                       (__tmp162049
                                        (let ((__tmp162050
                                               (let ((__tmp162051
                                                      (let ((__tmp162056
                                                             (let ((__tmp162058
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp162057
                            (let ()
                              (declare (not safe))
                              (cons _L159426_ '()))))
                       (declare (not safe))
                       (cons __tmp162058 __tmp162057)))
                    (__tmp162052
                     (let ((__tmp162053
                            (let ((__tmp162055
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp162054
                                   (let ()
                                     (declare (not safe))
                                     (cons _L159424_ '()))))
                              (declare (not safe))
                              (cons __tmp162055 __tmp162054))))
                       (declare (not safe))
                       (cons __tmp162053 '()))))
                (declare (not safe))
                (cons __tmp162056 __tmp162052))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L159427_
                                                       __tmp162051))))
                                          (declare (not safe))
                                          (cons _L159428_ __tmp162050))))
                                   (declare (not safe))
                                   (cons __tmp162059 __tmp162049))))
                            (declare (not safe))
                            (cons __tmp162062 __tmp162048))))
                     (declare (not safe))
                     (cons __tmp162065 __tmp162047))))
              (declare (not safe))
              (cons __tmp162068 __tmp162046))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp162071
                                                     __tmp162045))))
                                        (declare (not safe))
                                        (cons __tmp162074 __tmp162044))))
                                 (declare (not safe))
                                 (cons __tmp162077 __tmp162043)))
                             _hd159300159418_
                             _hd159297159408_
                             _hd159294159398_
                             _hd159291159388_
                             _hd159288159378_
                             _hd159285159368_
                             _hd159282159358_
                             _hd159279159348_
                             _hd159276159338_
                             _hd159273159328_)
                            (_g159257159307_ _g159258159311_))))
                    (_g159257159307_ _g159258159311_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g159257159307_
                                                     _g159258159311_))))
                                            (_g159257159307_
                                             _g159258159311_))))
                                    (_g159257159307_ _g159258159311_))))
                            (_g159257159307_ _g159258159311_))))
                    (_g159257159307_ _g159258159311_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g159257159307_
                                                     _g159258159311_))))
                                            (_g159257159307_
                                             _g159258159311_))))
                                    (_g159257159307_ _g159258159311_))))
                            (_g159257159307_ _g159258159311_))))
                    (_g159257159307_ _g159258159311_)))))
        (_g159256159474_ _$stx159253_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx159478_)
      (let* ((_g159482159496_
              (lambda (_g159483159492_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159483159492_))))
             (_g159481159537_
              (lambda (_g159483159500_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159483159500_))
                    (let ((_e159487159503_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159483159500_))))
                      (let ((_hd159486159507_
                             (let ()
                               (declare (not safe))
                               (##car _e159487159503_)))
                            (_tl159485159510_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159487159503_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159485159510_))
                            (let ((_e159490159513_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159485159510_))))
                              (let ((_hd159489159517_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159490159513_)))
                                    (_tl159488159520_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159490159513_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl159488159520_))
                                    ((lambda (_L159523_)
                                       (let ((__tmp162082
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp162078
                                              (let ((__tmp162079
                                                     (let ((__tmp162081
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp162080
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L159523_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp162081 __tmp162080))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp162079 '()))))
                                         (declare (not safe))
                                         (cons __tmp162082 __tmp162078)))
                                     _hd159489159517_)
                                    (_g159482159496_ _g159483159500_))))
                            (_g159482159496_ _g159483159500_))))
                    (_g159482159496_ _g159483159500_)))))
        (_g159481159537_ _$stx159478_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx159541_)
      (let* ((_g159545159559_
              (lambda (_g159546159555_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159546159555_))))
             (_g159544159600_
              (lambda (_g159546159563_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159546159563_))
                    (let ((_e159550159566_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159546159563_))))
                      (let ((_hd159549159570_
                             (let ()
                               (declare (not safe))
                               (##car _e159550159566_)))
                            (_tl159548159573_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159550159566_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159548159573_))
                            (let ((_e159553159576_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159548159573_))))
                              (let ((_hd159552159580_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159553159576_)))
                                    (_tl159551159583_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159553159576_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl159551159583_))
                                    ((lambda (_L159586_)
                                       (let ((__tmp162087
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp162083
                                              (let ((__tmp162084
                                                     (let ((__tmp162086
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp162085
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L159586_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp162086 __tmp162085))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp162084 '()))))
                                         (declare (not safe))
                                         (cons __tmp162087 __tmp162083)))
                                     _hd159552159580_)
                                    (_g159545159559_ _g159546159563_))))
                            (_g159545159559_ _g159546159563_))))
                    (_g159545159559_ _g159546159563_)))))
        (_g159544159600_ _$stx159541_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx159604_)
      (let* ((_g159608159630_
              (lambda (_g159609159626_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159609159626_))))
             (_g159607159699_
              (lambda (_g159609159634_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159609159634_))
                    (let ((_e159615159637_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159609159634_))))
                      (let ((_hd159614159641_
                             (let ()
                               (declare (not safe))
                               (##car _e159615159637_)))
                            (_tl159613159644_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159615159637_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159613159644_))
                            (let ((_e159618159647_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159613159644_))))
                              (let ((_hd159617159651_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159618159647_)))
                                    (_tl159616159654_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159618159647_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl159616159654_))
                                    (let ((_e159621159657_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl159616159654_))))
                                      (let ((_hd159620159661_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159621159657_)))
                                            (_tl159619159664_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159621159657_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl159619159664_))
                                            (let ((_e159624159667_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl159619159664_))))
                                              (let ((_hd159623159671_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159624159667_)))
                                                    (_tl159622159674_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159624159667_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159622159674_))
                                                    ((lambda (_L159677_
                                                              _L159679_
                                                              _L159680_)
                                                       (let ((__tmp162097
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp162088
                      (let ((__tmp162094
                             (let ((__tmp162096
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp162095
                                    (let ()
                                      (declare (not safe))
                                      (cons _L159680_ '()))))
                               (declare (not safe))
                               (cons __tmp162096 __tmp162095)))
                            (__tmp162089
                             (let ((__tmp162091
                                    (let ((__tmp162093
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp162092
                                           (let ()
                                             (declare (not safe))
                                             (cons _L159679_ '()))))
                                      (declare (not safe))
                                      (cons __tmp162093 __tmp162092)))
                                   (__tmp162090
                                    (let ()
                                      (declare (not safe))
                                      (cons _L159677_ '()))))
                               (declare (not safe))
                               (cons __tmp162091 __tmp162090))))
                        (declare (not safe))
                        (cons __tmp162094 __tmp162089))))
                 (declare (not safe))
                 (cons __tmp162097 __tmp162088)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd159623159671_
                                                     _hd159620159661_
                                                     _hd159617159651_)
                                                    (_g159608159630_
                                                     _g159609159634_))))
                                            (_g159608159630_
                                             _g159609159634_))))
                                    (_g159608159630_ _g159609159634_))))
                            (_g159608159630_ _g159609159634_))))
                    (_g159608159630_ _g159609159634_)))))
        (_g159607159699_ _$stx159604_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx159703_)
      (let* ((_g159707159729_
              (lambda (_g159708159725_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159708159725_))))
             (_g159706159798_
              (lambda (_g159708159733_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159708159733_))
                    (let ((_e159714159736_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159708159733_))))
                      (let ((_hd159713159740_
                             (let ()
                               (declare (not safe))
                               (##car _e159714159736_)))
                            (_tl159712159743_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159714159736_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159712159743_))
                            (let ((_e159717159746_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159712159743_))))
                              (let ((_hd159716159750_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159717159746_)))
                                    (_tl159715159753_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159717159746_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl159715159753_))
                                    (let ((_e159720159756_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl159715159753_))))
                                      (let ((_hd159719159760_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159720159756_)))
                                            (_tl159718159763_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159720159756_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl159718159763_))
                                            (let ((_e159723159766_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl159718159763_))))
                                              (let ((_hd159722159770_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159723159766_)))
                                                    (_tl159721159773_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159723159766_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159721159773_))
                                                    ((lambda (_L159776_
                                                              _L159778_
                                                              _L159779_)
                                                       (let ((__tmp162107
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp162098
                      (let ((__tmp162104
                             (let ((__tmp162106
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp162105
                                    (let ()
                                      (declare (not safe))
                                      (cons _L159779_ '()))))
                               (declare (not safe))
                               (cons __tmp162106 __tmp162105)))
                            (__tmp162099
                             (let ((__tmp162101
                                    (let ((__tmp162103
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp162102
                                           (let ()
                                             (declare (not safe))
                                             (cons _L159778_ '()))))
                                      (declare (not safe))
                                      (cons __tmp162103 __tmp162102)))
                                   (__tmp162100
                                    (let ()
                                      (declare (not safe))
                                      (cons _L159776_ '()))))
                               (declare (not safe))
                               (cons __tmp162101 __tmp162100))))
                        (declare (not safe))
                        (cons __tmp162104 __tmp162099))))
                 (declare (not safe))
                 (cons __tmp162107 __tmp162098)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd159722159770_
                                                     _hd159719159760_
                                                     _hd159716159750_)
                                                    (_g159707159729_
                                                     _g159708159733_))))
                                            (_g159707159729_
                                             _g159708159733_))))
                                    (_g159707159729_ _g159708159733_))))
                            (_g159707159729_ _g159708159733_))))
                    (_g159707159729_ _g159708159733_)))))
        (_g159706159798_ _$stx159703_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx159802_)
      (let* ((___stx161617161618_ _$stx159802_)
             (_g159810159878_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161617161618_)))))
        (let ((___kont161620161621_
               (lambda (_L160156_ _L160158_)
                 (let ((__tmp162123
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp162108
                        (let ((__tmp162119
                               (let ((__tmp162122
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp162120
                                      (let ((__tmp162121
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp162121 '()))))
                                 (declare (not safe))
                                 (cons __tmp162122 __tmp162120)))
                              (__tmp162109
                               (let ((__tmp162116
                                      (let ((__tmp162118
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp162117
                                             (let ()
                                               (declare (not safe))
                                               (cons _L160158_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162118 __tmp162117)))
                                     (__tmp162110
                                      (let ((__tmp162111
                                             (let ((__tmp162112
                                                    (let ((__tmp162113
                                                           (let ((__tmp162115
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp162114
                          (let () (declare (not safe)) (cons _L160156_ '()))))
                     (declare (not safe))
                     (cons __tmp162115 __tmp162114))))
              (declare (not safe))
              (cons __tmp162113 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L160156_ __tmp162112))))
                                        (declare (not safe))
                                        (cons '#f __tmp162111))))
                                 (declare (not safe))
                                 (cons __tmp162116 __tmp162110))))
                          (declare (not safe))
                          (cons __tmp162119 __tmp162109))))
                   (declare (not safe))
                   (cons __tmp162123 __tmp162108))))
              (___kont161622161623_
               (lambda (_L160087_ _L160089_)
                 (let ((__tmp162124
                        (let ((__tmp162125
                               (let ((__tmp162126
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L160087_ __tmp162126))))
                          (declare (not safe))
                          (cons 'primitive: __tmp162125))))
                   (declare (not safe))
                   (cons _L160089_ __tmp162124))))
              (___kont161624161625_
               (lambda (_L160026_ _L160028_)
                 (let ((__tmp162140
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp162127
                        (let ((__tmp162136
                               (let ((__tmp162139
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp162137
                                      (let ((__tmp162138
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp162138 '()))))
                                 (declare (not safe))
                                 (cons __tmp162139 __tmp162137)))
                              (__tmp162128
                               (let ((__tmp162133
                                      (let ((__tmp162135
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp162134
                                             (let ()
                                               (declare (not safe))
                                               (cons _L160028_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162135 __tmp162134)))
                                     (__tmp162129
                                      (let ((__tmp162130
                                             (let ((__tmp162132
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp162131
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L160026_ '()))))
                                               (declare (not safe))
                                               (cons __tmp162132
                                                     __tmp162131))))
                                        (declare (not safe))
                                        (cons __tmp162130 '()))))
                                 (declare (not safe))
                                 (cons __tmp162133 __tmp162129))))
                          (declare (not safe))
                          (cons __tmp162136 __tmp162128))))
                   (declare (not safe))
                   (cons __tmp162140 __tmp162127))))
              (___kont161626161627_
               (lambda (_L159958_ _L159960_)
                 (let ((__tmp162154
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp162141
                        (let ((__tmp162150
                               (let ((__tmp162153
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp162151
                                      (let ((__tmp162152
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp162152 '()))))
                                 (declare (not safe))
                                 (cons __tmp162153 __tmp162151)))
                              (__tmp162142
                               (let ((__tmp162147
                                      (let ((__tmp162149
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp162148
                                             (let ()
                                               (declare (not safe))
                                               (cons _L159960_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162149 __tmp162148)))
                                     (__tmp162143
                                      (let ((__tmp162144
                                             (let ((__tmp162146
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp162145
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L159958_ '()))))
                                               (declare (not safe))
                                               (cons __tmp162146
                                                     __tmp162145))))
                                        (declare (not safe))
                                        (cons __tmp162144 '()))))
                                 (declare (not safe))
                                 (cons __tmp162147 __tmp162143))))
                          (declare (not safe))
                          (cons __tmp162150 __tmp162142))))
                   (declare (not safe))
                   (cons __tmp162154 __tmp162141))))
              (___kont161628161629_
               (lambda (_L159905_ _L159907_)
                 (let ((__tmp162155
                        (let ((__tmp162156
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L159905_ __tmp162156))))
                   (declare (not safe))
                   (cons _L159907_ __tmp162155)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx161617161618_))
              (let ((_e159816160112_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx161617161618_))))
                (let ((_tl159814160119_
                       (let () (declare (not safe)) (##cdr _e159816160112_)))
                      (_hd159815160116_
                       (let () (declare (not safe)) (##car _e159816160112_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl159814160119_))
                      (let ((_e159819160122_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl159814160119_))))
                        (let ((_tl159817160129_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159819160122_)))
                              (_hd159818160126_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159819160122_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl159817160129_))
                              (let ((_e159822160132_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl159817160129_))))
                                (let ((_tl159820160139_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e159822160132_)))
                                      (_hd159821160136_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e159822160132_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd159821160136_))
                                      (let ((_e159823160142_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd159821160136_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e159823160142_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl159820160139_))
                                                (let ((_e159826160146_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl159820160139_))))
                                                  (let ((_tl159824160153_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e159826160146_)))
                                                        (_hd159825160150_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e159826160146_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl159824160153_))
                                                        (___kont161620161621_
                                                         _hd159825160150_
                                                         _hd159818160126_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd159818160126_))
                                                            (let ((_e159835160073_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd159818160126_))))
                      (declare (not safe))
                      (_g159810159878_))
                    (let () (declare (not safe)) (_g159810159878_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd159818160126_))
                                                    (let ((_e159835160073_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd159818160126_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e159835160073_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl159820160139_))
                      (___kont161622161623_ _hd159821160136_ _hd159815160116_)
                      (let () (declare (not safe)) (_g159810159878_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl159820160139_))
                      (___kont161626161627_ _hd159821160136_ _hd159818160126_)
                      (let () (declare (not safe)) (_g159810159878_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl159820160139_))
                                                        (___kont161626161627_
                                                         _hd159821160136_
                                                         _hd159818160126_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g159810159878_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd159818160126_))
                                                (let ((_e159835160073_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd159818160126_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e159835160073_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl159820160139_))
                                                          (___kont161622161623_
                                                           _hd159821160136_
                                                           _hd159815160116_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl159820160139_))
                      (let ((_e159853160016_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl159820160139_))))
                        (let ((_tl159851160023_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159853160016_)))
                              (_hd159852160020_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159853160016_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl159851160023_))
                              (___kont161624161625_
                               _hd159852160020_
                               _hd159821160136_)
                              (let ()
                                (declare (not safe))
                                (_g159810159878_)))))
                      (let () (declare (not safe)) (_g159810159878_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl159820160139_))
                  (___kont161626161627_ _hd159821160136_ _hd159818160126_)
                  (let () (declare (not safe)) (_g159810159878_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159820160139_))
                                                    (___kont161626161627_
                                                     _hd159821160136_
                                                     _hd159818160126_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g159810159878_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd159818160126_))
                                          (let ((_e159835160073_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd159818160126_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e159835160073_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159820160139_))
                                                    (___kont161622161623_
                                                     _hd159821160136_
                                                     _hd159815160116_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl159820160139_))
                                                        (let ((_e159853160016_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl159820160139_))))
                  (let ((_tl159851160023_
                         (let () (declare (not safe)) (##cdr _e159853160016_)))
                        (_hd159852160020_
                         (let ()
                           (declare (not safe))
                           (##car _e159853160016_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl159851160023_))
                        (___kont161624161625_
                         _hd159852160020_
                         _hd159821160136_)
                        (let () (declare (not safe)) (_g159810159878_)))))
                (let () (declare (not safe)) (_g159810159878_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159820160139_))
                                                    (___kont161626161627_
                                                     _hd159821160136_
                                                     _hd159818160126_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g159810159878_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl159820160139_))
                                              (___kont161626161627_
                                               _hd159821160136_
                                               _hd159818160126_)
                                              (let ()
                                                (declare (not safe))
                                                (_g159810159878_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd159818160126_))
                                  (let ((_e159835160073_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd159818160126_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl159817160129_))
                                        (___kont161628161629_
                                         _hd159818160126_
                                         _hd159815160116_)
                                        (let ()
                                          (declare (not safe))
                                          (_g159810159878_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl159817160129_))
                                      (___kont161628161629_
                                       _hd159818160126_
                                       _hd159815160116_)
                                      (let ()
                                        (declare (not safe))
                                        (_g159810159878_)))))))
                      (let () (declare (not safe)) (_g159810159878_)))))
              (let () (declare (not safe)) (_g159810159878_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx160180_)
      (let* ((___stx161757161758_ _$stx160180_)
             (_g160185160240_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161757161758_)))))
        (let ((___kont161760161761_
               (lambda (_L160425_ _L160427_)
                 (let ((__tmp162172
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp162157
                        (let ((__tmp162168
                               (let ((__tmp162171
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp162169
                                      (let ((__tmp162170
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp162170 '()))))
                                 (declare (not safe))
                                 (cons __tmp162171 __tmp162169)))
                              (__tmp162158
                               (let ((__tmp162159
                                      (let ((__tmp162167
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp162160
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L160425_
                                                  _L160427_))
                                               (let ((__tmp162161
                                                      (lambda (_g160444160448_
                                                               _g160445160451_
                                                               _g160446160453_)
                                                        (let ((__tmp162162
                                                               (let ((__tmp162166
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp162163
                              (let ((__tmp162164
                                     (let ((__tmp162165
                                            (let ()
                                              (declare (not safe))
                                              (cons _g160444160448_ '()))))
                                       (declare (not safe))
                                       (cons _g160445160451_ __tmp162165))))
                                (declare (not safe))
                                (cons 'primitive: __tmp162164))))
                         (declare (not safe))
                         (cons __tmp162166 __tmp162163))))
                  (declare (not safe))
                  (cons __tmp162162 _g160446160453_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp162161
                                                         '()
                                                         _L160425_
                                                         _L160427_)))))
                                        (declare (not safe))
                                        (cons __tmp162167 __tmp162160))))
                                 (declare (not safe))
                                 (cons __tmp162159 '()))))
                          (declare (not safe))
                          (cons __tmp162168 __tmp162158))))
                   (declare (not safe))
                   (cons __tmp162172 __tmp162157))))
              (___kont161764161765_
               (lambda (_L160311_ _L160313_)
                 (let ((__tmp162187
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp162173
                        (let ((__tmp162183
                               (let ((__tmp162186
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp162184
                                      (let ((__tmp162185
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp162185 '()))))
                                 (declare (not safe))
                                 (cons __tmp162186 __tmp162184)))
                              (__tmp162174
                               (let ((__tmp162175
                                      (let ((__tmp162182
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp162176
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L160311_
                                                  _L160313_))
                                               (let ((__tmp162177
                                                      (lambda (_g160328160332_
                                                               _g160329160335_
                                                               _g160330160337_)
                                                        (let ((__tmp162178
                                                               (let ((__tmp162181
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp162179
                              (let ((__tmp162180
                                     (let ()
                                       (declare (not safe))
                                       (cons _g160328160332_ '()))))
                                (declare (not safe))
                                (cons _g160329160335_ __tmp162180))))
                         (declare (not safe))
                         (cons __tmp162181 __tmp162179))))
                  (declare (not safe))
                  (cons __tmp162178 _g160330160337_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp162177
                                                         '()
                                                         _L160311_
                                                         _L160313_)))))
                                        (declare (not safe))
                                        (cons __tmp162182 __tmp162176))))
                                 (declare (not safe))
                                 (cons __tmp162175 '()))))
                          (declare (not safe))
                          (cons __tmp162183 __tmp162174))))
                   (declare (not safe))
                   (cons __tmp162187 __tmp162173)))))
          (let* ((___match161808161809_
                  (lambda (_e160217160247_
                           _hd160216160251_
                           _tl160215160254_
                           ___splice161766161767_
                           _target160218160257_
                           _tl160220160260_)
                    (letrec ((_loop160221160263_
                              (lambda (_hd160219160267_
                                       _dispatch160225160270_
                                       _arity160226160272_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd160219160267_))
                                    (let ((_e160222160275_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd160219160267_))))
                                      (let ((_lp-tl160224160282_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160222160275_)))
                                            (_lp-hd160223160279_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160222160275_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd160223160279_))
                                            (let ((_e160231160285_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd160223160279_))))
                                              (let ((_tl160229160292_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e160231160285_)))
                                                    (_hd160230160289_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e160231160285_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl160229160292_))
                                                    (let ((_e160234160295_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl160229160292_))))
                                                      (let ((_tl160232160302_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e160234160295_)))
                    (_hd160233160299_
                     (let () (declare (not safe)) (##car _e160234160295_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl160232160302_))
                    (_loop160221160263_
                     _lp-tl160224160282_
                     (let ()
                       (declare (not safe))
                       (cons _hd160233160299_ _dispatch160225160270_))
                     (let ()
                       (declare (not safe))
                       (cons _hd160230160289_ _arity160226160272_)))
                    (let () (declare (not safe)) (_g160185160240_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g160185160240_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g160185160240_)))))
                                    (let ((_arity160228160308_
                                           (reverse _arity160226160272_))
                                          (_dispatch160227160305_
                                           (reverse _dispatch160225160270_)))
                                      (___kont161764161765_
                                       _dispatch160227160305_
                                       _arity160228160308_))))))
                      (_loop160221160263_ _target160218160257_ '() '()))))
                 (___match161800161801_
                  (lambda (_e160217160247_ _hd160216160251_ _tl160215160254_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl160215160254_))
                        (let ((___splice161766161767_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl160215160254_
                                  '0))))
                          (let ((_tl160220160260_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice161766161767_ '1)))
                                (_target160218160257_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice161766161767_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl160220160260_))
                                (___match161808161809_
                                 _e160217160247_
                                 _hd160216160251_
                                 _tl160215160254_
                                 ___splice161766161767_
                                 _target160218160257_
                                 _tl160220160260_)
                                (let ()
                                  (declare (not safe))
                                  (_g160185160240_)))))
                        (let () (declare (not safe)) (_g160185160240_)))))
                 (___match161794161795_
                  (lambda (_e160191160347_
                           _hd160190160351_
                           _tl160189160354_
                           _e160194160357_
                           _hd160193160361_
                           _tl160192160364_
                           _e160195160367_
                           ___splice161762161763_
                           _target160196160371_
                           _tl160198160374_)
                    (letrec ((_loop160199160377_
                              (lambda (_hd160197160381_
                                       _dispatch160203160384_
                                       _arity160204160386_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd160197160381_))
                                    (let ((_e160200160389_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd160197160381_))))
                                      (let ((_lp-tl160202160396_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160200160389_)))
                                            (_lp-hd160201160393_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160200160389_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd160201160393_))
                                            (let ((_e160209160399_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd160201160393_))))
                                              (let ((_tl160207160406_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e160209160399_)))
                                                    (_hd160208160403_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e160209160399_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl160207160406_))
                                                    (let ((_e160212160409_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl160207160406_))))
                                                      (let ((_tl160210160416_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e160212160409_)))
                    (_hd160211160413_
                     (let () (declare (not safe)) (##car _e160212160409_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl160210160416_))
                    (_loop160199160377_
                     _lp-tl160202160396_
                     (let ()
                       (declare (not safe))
                       (cons _hd160211160413_ _dispatch160203160384_))
                     (let ()
                       (declare (not safe))
                       (cons _hd160208160403_ _arity160204160386_)))
                    (___match161800161801_
                     _e160191160347_
                     _hd160190160351_
                     _tl160189160354_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match161800161801_
                                                     _e160191160347_
                                                     _hd160190160351_
                                                     _tl160189160354_))))
                                            (___match161800161801_
                                             _e160191160347_
                                             _hd160190160351_
                                             _tl160189160354_))))
                                    (let ((_arity160206160422_
                                           (reverse _arity160204160386_))
                                          (_dispatch160205160419_
                                           (reverse _dispatch160203160384_)))
                                      (___kont161760161761_
                                       _dispatch160205160419_
                                       _arity160206160422_))))))
                      (_loop160199160377_ _target160196160371_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx161757161758_))
                (let ((_e160191160347_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx161757161758_))))
                  (let ((_tl160189160354_
                         (let () (declare (not safe)) (##cdr _e160191160347_)))
                        (_hd160190160351_
                         (let ()
                           (declare (not safe))
                           (##car _e160191160347_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl160189160354_))
                        (let ((_e160194160357_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl160189160354_))))
                          (let ((_tl160192160364_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e160194160357_)))
                                (_hd160193160361_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e160194160357_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd160193160361_))
                                (let ((_e160195160367_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd160193160361_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e160195160367_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl160192160364_))
                                          (let ((___splice161762161763_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl160192160364_
                                                    '0))))
                                            (let ((_tl160198160374_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice161762161763_
                                                      '1)))
                                                  (_target160196160371_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice161762161763_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl160198160374_))
                                                  (___match161794161795_
                                                   _e160191160347_
                                                   _hd160190160351_
                                                   _tl160189160354_
                                                   _e160194160357_
                                                   _hd160193160361_
                                                   _tl160192160364_
                                                   _e160195160367_
                                                   ___splice161762161763_
                                                   _target160196160371_
                                                   _tl160198160374_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl160189160354_))
                                                      (let ((___splice161766161767_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl160189160354_ '0))))
                (let ((_tl160220160260_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161766161767_ '1)))
                      (_target160218160257_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161766161767_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl160220160260_))
                      (___match161808161809_
                       _e160191160347_
                       _hd160190160351_
                       _tl160189160354_
                       ___splice161766161767_
                       _target160218160257_
                       _tl160220160260_)
                      (let () (declare (not safe)) (_g160185160240_)))))
              (let () (declare (not safe)) (_g160185160240_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl160189160354_))
                                              (let ((___splice161766161767_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl160189160354_
                                                        '0))))
                                                (let ((_tl160220160260_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice161766161767_
                                                          '1)))
                                                      (_target160218160257_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice161766161767_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl160220160260_))
                                                      (___match161808161809_
                                                       _e160191160347_
                                                       _hd160190160351_
                                                       _tl160189160354_
                                                       ___splice161766161767_
                                                       _target160218160257_
                                                       _tl160220160260_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g160185160240_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g160185160240_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl160189160354_))
                                          (let ((___splice161766161767_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl160189160354_
                                                    '0))))
                                            (let ((_tl160220160260_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice161766161767_
                                                      '1)))
                                                  (_target160218160257_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice161766161767_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl160220160260_))
                                                  (___match161808161809_
                                                   _e160191160347_
                                                   _hd160190160351_
                                                   _tl160189160354_
                                                   ___splice161766161767_
                                                   _target160218160257_
                                                   _tl160220160260_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g160185160240_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g160185160240_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl160189160354_))
                                    (let ((___splice161766161767_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl160189160354_
                                              '0))))
                                      (let ((_tl160220160260_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161766161767_
                                                '1)))
                                            (_target160218160257_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161766161767_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160220160260_))
                                            (___match161808161809_
                                             _e160191160347_
                                             _hd160190160351_
                                             _tl160189160354_
                                             ___splice161766161767_
                                             _target160218160257_
                                             _tl160220160260_)
                                            (let ()
                                              (declare (not safe))
                                              (_g160185160240_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g160185160240_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl160189160354_))
                            (let ((___splice161766161767_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl160189160354_
                                      '0))))
                              (let ((_tl160220160260_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice161766161767_
                                        '1)))
                                    (_target160218160257_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice161766161767_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl160220160260_))
                                    (___match161808161809_
                                     _e160191160347_
                                     _hd160190160351_
                                     _tl160189160354_
                                     ___splice161766161767_
                                     _target160218160257_
                                     _tl160220160260_)
                                    (let ()
                                      (declare (not safe))
                                      (_g160185160240_)))))
                            (let () (declare (not safe)) (_g160185160240_))))))
                (let () (declare (not safe)) (_g160185160240_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx160462_)
      (let* ((_g160466160484_
              (lambda (_g160467160480_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160467160480_))))
             (_g160465160539_
              (lambda (_g160467160488_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160467160488_))
                    (let ((_e160472160491_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160467160488_))))
                      (let ((_hd160471160495_
                             (let ()
                               (declare (not safe))
                               (##car _e160472160491_)))
                            (_tl160470160498_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160472160491_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160470160498_))
                            (let ((_e160475160501_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160470160498_))))
                              (let ((_hd160474160505_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160475160501_)))
                                    (_tl160473160508_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160475160501_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl160473160508_))
                                    (let ((_e160478160511_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl160473160508_))))
                                      (let ((_hd160477160515_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160478160511_)))
                                            (_tl160476160518_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160478160511_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160476160518_))
                                            ((lambda (_L160521_ _L160523_)
                                               (let ((__tmp162201
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp162188
                                                      (let ((__tmp162197
                                                             (let ((__tmp162200
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp162198
                            (let ((__tmp162199
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp162199 '()))))
                       (declare (not safe))
                       (cons __tmp162200 __tmp162198)))
                    (__tmp162189
                     (let ((__tmp162194
                            (let ((__tmp162196
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp162195
                                   (let ()
                                     (declare (not safe))
                                     (cons _L160523_ '()))))
                              (declare (not safe))
                              (cons __tmp162196 __tmp162195)))
                           (__tmp162190
                            (let ((__tmp162191
                                   (let ((__tmp162193
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp162192
                                          (let ()
                                            (declare (not safe))
                                            (cons _L160521_ '()))))
                                     (declare (not safe))
                                     (cons __tmp162193 __tmp162192))))
                              (declare (not safe))
                              (cons __tmp162191 '()))))
                       (declare (not safe))
                       (cons __tmp162194 __tmp162190))))
                (declare (not safe))
                (cons __tmp162197 __tmp162189))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp162201
                                                       __tmp162188)))
                                             _hd160477160515_
                                             _hd160474160505_)
                                            (_g160466160484_
                                             _g160467160488_))))
                                    (_g160466160484_ _g160467160488_))))
                            (_g160466160484_ _g160467160488_))))
                    (_g160466160484_ _g160467160488_)))))
        (_g160465160539_ _$stx160462_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx160543_)
      (let* ((_g160547160565_
              (lambda (_g160548160561_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160548160561_))))
             (_g160546160620_
              (lambda (_g160548160569_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160548160569_))
                    (let ((_e160553160572_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160548160569_))))
                      (let ((_hd160552160576_
                             (let ()
                               (declare (not safe))
                               (##car _e160553160572_)))
                            (_tl160551160579_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160553160572_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160551160579_))
                            (let ((_e160556160582_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160551160579_))))
                              (let ((_hd160555160586_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160556160582_)))
                                    (_tl160554160589_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160556160582_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl160554160589_))
                                    (let ((_e160559160592_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl160554160589_))))
                                      (let ((_hd160558160596_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160559160592_)))
                                            (_tl160557160599_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160559160592_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160557160599_))
                                            ((lambda (_L160602_ _L160604_)
                                               (let ((__tmp162215
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp162202
                                                      (let ((__tmp162211
                                                             (let ((__tmp162214
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp162212
                            (let ((__tmp162213
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp162213 '()))))
                       (declare (not safe))
                       (cons __tmp162214 __tmp162212)))
                    (__tmp162203
                     (let ((__tmp162208
                            (let ((__tmp162210
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp162209
                                   (let ()
                                     (declare (not safe))
                                     (cons _L160604_ '()))))
                              (declare (not safe))
                              (cons __tmp162210 __tmp162209)))
                           (__tmp162204
                            (let ((__tmp162205
                                   (let ((__tmp162207
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp162206
                                          (let ()
                                            (declare (not safe))
                                            (cons _L160602_ '()))))
                                     (declare (not safe))
                                     (cons __tmp162207 __tmp162206))))
                              (declare (not safe))
                              (cons __tmp162205 '()))))
                       (declare (not safe))
                       (cons __tmp162208 __tmp162204))))
                (declare (not safe))
                (cons __tmp162211 __tmp162203))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp162215
                                                       __tmp162202)))
                                             _hd160558160596_
                                             _hd160555160586_)
                                            (_g160547160565_
                                             _g160548160569_))))
                                    (_g160547160565_ _g160548160569_))))
                            (_g160547160565_ _g160548160569_))))
                    (_g160547160565_ _g160548160569_)))))
        (_g160546160620_ _$stx160543_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx160624_)
      (let* ((___stx161811161812_ _$stx160624_)
             (_g160631160702_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161811161812_)))))
        (let ((___kont161814161815_
               (lambda (_L160993_ _L160995_)
                 (let ((__tmp162221
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp162216
                        (let ((__tmp162217
                               (let ((__tmp162218
                                      (let ((__tmp162220
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp162219
                                             (let ()
                                               (declare (not safe))
                                               (cons _L160993_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162220 __tmp162219))))
                                 (declare (not safe))
                                 (cons __tmp162218 '()))))
                          (declare (not safe))
                          (cons _L160995_ __tmp162217))))
                   (declare (not safe))
                   (cons __tmp162221 __tmp162216))))
              (___kont161816161817_
               (lambda (_L160912_ _L160914_)
                 (let ((__tmp162230
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp162222
                        (let ((__tmp162223
                               (let ((__tmp162224
                                      (let ((__tmp162229
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp162225
                                             (let ((__tmp162226
                                                    (lambda (_g160933160936_
                                                             _g160934160939_)
                                                      (let ((__tmp162227
                                                             (let ((__tmp162228
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g160933160936_ __tmp162228))))
                (declare (not safe))
                (cons __tmp162227 _g160934160939_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp162226
                                                       '()
                                                       _L160912_))))
                                        (declare (not safe))
                                        (cons __tmp162229 __tmp162225))))
                                 (declare (not safe))
                                 (cons __tmp162224 '()))))
                          (declare (not safe))
                          (cons _L160914_ __tmp162223))))
                   (declare (not safe))
                   (cons __tmp162230 __tmp162222))))
              (___kont161820161821_
               (lambda (_L160824_ _L160826_)
                 (let ((__tmp162237
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp162231
                        (let ((__tmp162232
                               (let ((__tmp162233
                                      (let ((__tmp162236
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp162234
                                             (let ((__tmp162235
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L160824_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp162235))))
                                        (declare (not safe))
                                        (cons __tmp162236 __tmp162234))))
                                 (declare (not safe))
                                 (cons __tmp162233 '()))))
                          (declare (not safe))
                          (cons _L160826_ __tmp162232))))
                   (declare (not safe))
                   (cons __tmp162237 __tmp162231))))
              (___kont161822161823_
               (lambda (_L160759_ _L160761_)
                 (let ((__tmp162247
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp162238
                        (let ((__tmp162239
                               (let ((__tmp162240
                                      (let ((__tmp162246
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp162241
                                             (let ((__tmp162242
                                                    (let ((__tmp162243
                                                           (lambda (_g160778160781_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g160779160784_)
                     (let ((__tmp162244
                            (let ((__tmp162245
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g160778160781_ __tmp162245))))
                       (declare (not safe))
                       (cons __tmp162244 _g160779160784_)))))
              (declare (not safe))
              (foldr1 __tmp162243 '() _L160759_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp162242))))
                                        (declare (not safe))
                                        (cons __tmp162246 __tmp162241))))
                                 (declare (not safe))
                                 (cons __tmp162240 '()))))
                          (declare (not safe))
                          (cons _L160761_ __tmp162239))))
                   (declare (not safe))
                   (cons __tmp162247 __tmp162238)))))
          (let* ((___match161930161931_
                  (lambda (_e160684160709_
                           _hd160683160713_
                           _tl160682160716_
                           _e160687160719_
                           _hd160686160723_
                           _tl160685160726_
                           ___splice161824161825_
                           _target160688160729_
                           _tl160690160732_)
                    (letrec ((_loop160691160735_
                              (lambda (_hd160689160739_ _arity160695160742_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd160689160739_))
                                    (let ((_e160692160745_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd160689160739_))))
                                      (let ((_lp-tl160694160752_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160692160745_)))
                                            (_lp-hd160693160749_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160692160745_))))
                                        (_loop160691160735_
                                         _lp-tl160694160752_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd160693160749_
                                                 _arity160695160742_)))))
                                    (let ((_arity160696160755_
                                           (reverse _arity160695160742_)))
                                      (___kont161822161823_
                                       _arity160696160755_
                                       _hd160686160723_))))))
                      (_loop160691160735_ _target160688160729_ '()))))
                 (___match161890161891_
                  (lambda (_e160652160848_
                           _hd160651160852_
                           _tl160650160855_
                           _e160655160858_
                           _hd160654160862_
                           _tl160653160865_
                           _e160658160868_
                           _hd160657160872_
                           _tl160656160875_
                           _e160659160878_
                           ___splice161818161819_
                           _target160660160882_
                           _tl160662160885_)
                    (letrec ((_loop160663160888_
                              (lambda (_hd160661160892_ _arity160667160895_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd160661160892_))
                                    (let ((_e160664160898_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd160661160892_))))
                                      (let ((_lp-tl160666160905_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160664160898_)))
                                            (_lp-hd160665160902_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160664160898_))))
                                        (_loop160663160888_
                                         _lp-tl160666160905_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd160665160902_
                                                 _arity160667160895_)))))
                                    (let ((_arity160668160908_
                                           (reverse _arity160667160895_)))
                                      (___kont161816161817_
                                       _arity160668160908_
                                       _hd160654160862_))))))
                      (_loop160663160888_ _target160660160882_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx161811161812_))
                (let ((_e160637160949_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx161811161812_))))
                  (let ((_tl160635160956_
                         (let () (declare (not safe)) (##cdr _e160637160949_)))
                        (_hd160636160953_
                         (let ()
                           (declare (not safe))
                           (##car _e160637160949_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl160635160956_))
                        (let ((_e160640160959_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl160635160956_))))
                          (let ((_tl160638160966_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e160640160959_)))
                                (_hd160639160963_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e160640160959_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl160638160966_))
                                (let ((_e160643160969_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl160638160966_))))
                                  (let ((_tl160641160976_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e160643160969_)))
                                        (_hd160642160973_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e160643160969_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd160642160973_))
                                        (let ((_e160644160979_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd160642160973_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e160644160979_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl160641160976_))
                                                  (let ((_e160647160983_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl160641160976_))))
                                                    (let ((_tl160645160990_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e160647160983_)))
                                                          (_hd160646160987_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e160647160983_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl160645160990_))
                                                          (___kont161814161815_
                                                           _hd160646160987_
                                                           _hd160639160963_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl160641160976_))
                      (let ((___splice161818161819_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl160641160976_ '0))))
                        (let ((_tl160662160885_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice161818161819_ '1)))
                              (_target160660160882_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice161818161819_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl160662160885_))
                              (___match161890161891_
                               _e160637160949_
                               _hd160636160953_
                               _tl160635160956_
                               _e160640160959_
                               _hd160639160963_
                               _tl160638160966_
                               _e160643160969_
                               _hd160642160973_
                               _tl160641160976_
                               _e160644160979_
                               ___splice161818161819_
                               _target160660160882_
                               _tl160662160885_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl160638160966_))
                                  (let ((___splice161824161825_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl160638160966_
                                            '0))))
                                    (let ((_tl160690160732_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice161824161825_
                                              '1)))
                                          (_target160688160729_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice161824161825_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl160690160732_))
                                          (___match161930161931_
                                           _e160637160949_
                                           _hd160636160953_
                                           _tl160635160956_
                                           _e160640160959_
                                           _hd160639160963_
                                           _tl160638160966_
                                           ___splice161824161825_
                                           _target160688160729_
                                           _tl160690160732_)
                                          (let ()
                                            (declare (not safe))
                                            (_g160631160702_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g160631160702_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl160638160966_))
                          (let ((___splice161824161825_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl160638160966_
                                    '0))))
                            (let ((_tl160690160732_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice161824161825_ '1)))
                                  (_target160688160729_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice161824161825_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl160690160732_))
                                  (___match161930161931_
                                   _e160637160949_
                                   _hd160636160953_
                                   _tl160635160956_
                                   _e160640160959_
                                   _hd160639160963_
                                   _tl160638160966_
                                   ___splice161824161825_
                                   _target160688160729_
                                   _tl160690160732_)
                                  (let ()
                                    (declare (not safe))
                                    (_g160631160702_)))))
                          (let () (declare (not safe)) (_g160631160702_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl160641160976_))
                                                      (let ((___splice161818161819_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl160641160976_ '0))))
                (let ((_tl160662160885_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161818161819_ '1)))
                      (_target160660160882_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161818161819_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl160662160885_))
                      (___match161890161891_
                       _e160637160949_
                       _hd160636160953_
                       _tl160635160956_
                       _e160640160959_
                       _hd160639160963_
                       _tl160638160966_
                       _e160643160969_
                       _hd160642160973_
                       _tl160641160976_
                       _e160644160979_
                       ___splice161818161819_
                       _target160660160882_
                       _tl160662160885_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl160641160976_))
                          (___kont161820161821_
                           _hd160642160973_
                           _hd160639160963_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl160638160966_))
                              (let ((___splice161824161825_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl160638160966_
                                        '0))))
                                (let ((_tl160690160732_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice161824161825_
                                          '1)))
                                      (_target160688160729_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice161824161825_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl160690160732_))
                                      (___match161930161931_
                                       _e160637160949_
                                       _hd160636160953_
                                       _tl160635160956_
                                       _e160640160959_
                                       _hd160639160963_
                                       _tl160638160966_
                                       ___splice161824161825_
                                       _target160688160729_
                                       _tl160690160732_)
                                      (let ()
                                        (declare (not safe))
                                        (_g160631160702_)))))
                              (let ()
                                (declare (not safe))
                                (_g160631160702_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl160641160976_))
                  (___kont161820161821_ _hd160642160973_ _hd160639160963_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl160638160966_))
                      (let ((___splice161824161825_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl160638160966_ '0))))
                        (let ((_tl160690160732_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice161824161825_ '1)))
                              (_target160688160729_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice161824161825_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl160690160732_))
                              (___match161930161931_
                               _e160637160949_
                               _hd160636160953_
                               _tl160635160956_
                               _e160640160959_
                               _hd160639160963_
                               _tl160638160966_
                               ___splice161824161825_
                               _target160688160729_
                               _tl160690160732_)
                              (let ()
                                (declare (not safe))
                                (_g160631160702_)))))
                      (let () (declare (not safe)) (_g160631160702_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl160641160976_))
                                                  (___kont161820161821_
                                                   _hd160642160973_
                                                   _hd160639160963_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl160638160966_))
                                                      (let ((___splice161824161825_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl160638160966_ '0))))
                (let ((_tl160690160732_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161824161825_ '1)))
                      (_target160688160729_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161824161825_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl160690160732_))
                      (___match161930161931_
                       _e160637160949_
                       _hd160636160953_
                       _tl160635160956_
                       _e160640160959_
                       _hd160639160963_
                       _tl160638160966_
                       ___splice161824161825_
                       _target160688160729_
                       _tl160690160732_)
                      (let () (declare (not safe)) (_g160631160702_)))))
              (let () (declare (not safe)) (_g160631160702_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160641160976_))
                                            (___kont161820161821_
                                             _hd160642160973_
                                             _hd160639160963_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl160638160966_))
                                                (let ((___splice161824161825_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl160638160966_
                                                          '0))))
                                                  (let ((_tl160690160732_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice161824161825_
                                                            '1)))
                                                        (_target160688160729_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice161824161825_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl160690160732_))
                                                        (___match161930161931_
                                                         _e160637160949_
                                                         _hd160636160953_
                                                         _tl160635160956_
                                                         _e160640160959_
                                                         _hd160639160963_
                                                         _tl160638160966_
                                                         ___splice161824161825_
                                                         _target160688160729_
                                                         _tl160690160732_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g160631160702_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g160631160702_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl160638160966_))
                                    (let ((___splice161824161825_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl160638160966_
                                              '0))))
                                      (let ((_tl160690160732_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161824161825_
                                                '1)))
                                            (_target160688160729_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161824161825_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160690160732_))
                                            (___match161930161931_
                                             _e160637160949_
                                             _hd160636160953_
                                             _tl160635160956_
                                             _e160640160959_
                                             _hd160639160963_
                                             _tl160638160966_
                                             ___splice161824161825_
                                             _target160688160729_
                                             _tl160690160732_)
                                            (let ()
                                              (declare (not safe))
                                              (_g160631160702_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g160631160702_))))))
                        (let () (declare (not safe)) (_g160631160702_)))))
                (let () (declare (not safe)) (_g160631160702_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx161019_)
      (let* ((___stx161933161934_ _$stx161019_)
             (_g161024161059_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161933161934_)))))
        (let ((___kont161936161937_
               (lambda (_L161181_ _L161183_)
                 (let ((__tmp162253
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp162248
                        (let ((__tmp162249
                               (let ((__tmp162250
                                      (let ((__tmp162252
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp162251
                                             (let ()
                                               (declare (not safe))
                                               (cons _L161181_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162252 __tmp162251))))
                                 (declare (not safe))
                                 (cons __tmp162250 '()))))
                          (declare (not safe))
                          (cons _L161183_ __tmp162249))))
                   (declare (not safe))
                   (cons __tmp162253 __tmp162248))))
              (___kont161938161939_
               (lambda (_L161116_ _L161118_)
                 (let ((__tmp162262
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp162254
                        (let ((__tmp162255
                               (let ((__tmp162256
                                      (let ((__tmp162261
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp162257
                                             (let ((__tmp162258
                                                    (lambda (_g161135161138_
                                                             _g161136161141_)
                                                      (let ((__tmp162259
                                                             (let ((__tmp162260
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g161135161138_ __tmp162260))))
                (declare (not safe))
                (cons __tmp162259 _g161136161141_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp162258
                                                       '()
                                                       _L161116_))))
                                        (declare (not safe))
                                        (cons __tmp162261 __tmp162257))))
                                 (declare (not safe))
                                 (cons __tmp162256 '()))))
                          (declare (not safe))
                          (cons _L161118_ __tmp162255))))
                   (declare (not safe))
                   (cons __tmp162262 __tmp162254)))))
          (let ((___match161982161983_
                 (lambda (_e161041161066_
                          _hd161040161070_
                          _tl161039161073_
                          _e161044161076_
                          _hd161043161080_
                          _tl161042161083_
                          ___splice161940161941_
                          _target161045161086_
                          _tl161047161089_)
                   (letrec ((_loop161048161092_
                             (lambda (_hd161046161096_ _arity161052161099_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd161046161096_))
                                   (let ((_e161049161102_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd161046161096_))))
                                     (let ((_lp-tl161051161109_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e161049161102_)))
                                           (_lp-hd161050161106_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e161049161102_))))
                                       (_loop161048161092_
                                        _lp-tl161051161109_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd161050161106_
                                                _arity161052161099_)))))
                                   (let ((_arity161053161112_
                                          (reverse _arity161052161099_)))
                                     (___kont161938161939_
                                      _arity161053161112_
                                      _hd161043161080_))))))
                     (_loop161048161092_ _target161045161086_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx161933161934_))
                (let ((_e161030161151_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx161933161934_))))
                  (let ((_tl161028161158_
                         (let () (declare (not safe)) (##cdr _e161030161151_)))
                        (_hd161029161155_
                         (let ()
                           (declare (not safe))
                           (##car _e161030161151_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl161028161158_))
                        (let ((_e161033161161_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl161028161158_))))
                          (let ((_tl161031161168_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e161033161161_)))
                                (_hd161032161165_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e161033161161_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl161031161168_))
                                (let ((_e161036161171_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl161031161168_))))
                                  (let ((_tl161034161178_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e161036161171_)))
                                        (_hd161035161175_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e161036161171_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl161034161178_))
                                        (___kont161936161937_
                                         _hd161035161175_
                                         _hd161032161165_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl161031161168_))
                                            (let ((___splice161940161941_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl161031161168_
                                                      '0))))
                                              (let ((_tl161047161089_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice161940161941_
                                                        '1)))
                                                    (_target161045161086_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice161940161941_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl161047161089_))
                                                    (___match161982161983_
                                                     _e161030161151_
                                                     _hd161029161155_
                                                     _tl161028161158_
                                                     _e161033161161_
                                                     _hd161032161165_
                                                     _tl161031161168_
                                                     ___splice161940161941_
                                                     _target161045161086_
                                                     _tl161047161089_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g161024161059_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g161024161059_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl161031161168_))
                                    (let ((___splice161940161941_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl161031161168_
                                              '0))))
                                      (let ((_tl161047161089_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161940161941_
                                                '1)))
                                            (_target161045161086_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161940161941_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl161047161089_))
                                            (___match161982161983_
                                             _e161030161151_
                                             _hd161029161155_
                                             _tl161028161158_
                                             _e161033161161_
                                             _hd161032161165_
                                             _tl161031161168_
                                             ___splice161940161941_
                                             _target161045161086_
                                             _tl161047161089_)
                                            (let ()
                                              (declare (not safe))
                                              (_g161024161059_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g161024161059_))))))
                        (let () (declare (not safe)) (_g161024161059_)))))
                (let () (declare (not safe)) (_g161024161059_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx161203_)
      (let* ((_g161207161242_
              (lambda (_g161208161238_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161208161238_))))
             (_g161206161370_
              (lambda (_g161208161246_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161208161246_))
                    (let ((_e161213161249_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161208161246_))))
                      (let ((_hd161212161253_
                             (let ()
                               (declare (not safe))
                               (##car _e161213161249_)))
                            (_tl161211161256_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161213161249_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl161211161256_))
                            (let ((_g162263_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl161211161256_
                                      '0))))
                              (begin
                                (let ((_g162264_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g162263_)
                                             (##vector-length _g162263_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g162264_ 2)))
                                      (error "Context expects 2 values"
                                             _g162264_)))
                                (let ((_target161214161259_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162263_ 0)))
                                      (_tl161216161262_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162263_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl161216161262_))
                                      (letrec ((_loop161217161265_
                                                (lambda (_hd161215161269_
                                                         _arity161221161272_
                                                         _prim161222161274_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd161215161269_))
                                                      (let ((_e161218161277_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd161215161269_))))
                (let ((_lp-hd161219161281_
                       (let () (declare (not safe)) (##car _e161218161277_)))
                      (_lp-tl161220161284_
                       (let () (declare (not safe)) (##cdr _e161218161277_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd161219161281_))
                      (let ((_e161227161287_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd161219161281_))))
                        (let ((_hd161226161291_
                               (let ()
                                 (declare (not safe))
                                 (##car _e161227161287_)))
                              (_tl161225161294_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e161227161287_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl161225161294_))
                              (let ((_g162273_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl161225161294_
                                        '0))))
                                (begin
                                  (let ((_g162274_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g162273_)
                                               (##vector-length _g162273_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g162274_ 2)))
                                        (error "Context expects 2 values"
                                               _g162274_)))
                                  (let ((_target161228161297_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g162273_ 0)))
                                        (_tl161230161300_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g162273_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl161230161300_))
                                        (letrec ((_loop161231161303_
                                                  (lambda (_hd161229161307_
                                                           _arity161235161310_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd161229161307_))
                                                        (let ((_e161232161313_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd161229161307_))))
                  (let ((_lp-hd161233161317_
                         (let () (declare (not safe)) (##car _e161232161313_)))
                        (_lp-tl161234161320_
                         (let ()
                           (declare (not safe))
                           (##cdr _e161232161313_))))
                    (_loop161231161303_
                     _lp-tl161234161320_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd161233161317_ _arity161235161310_)))))
                (let ((_arity161236161323_ (reverse _arity161235161310_)))
                  (_loop161217161265_
                   _lp-tl161220161284_
                   (let ()
                     (declare (not safe))
                     (cons _arity161236161323_ _arity161221161272_))
                   (let ()
                     (declare (not safe))
                     (cons _hd161226161291_ _prim161222161274_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop161231161303_
                                           _target161228161297_
                                           '()))
                                        (_g161207161242_ _g161208161246_)))))
                              (_g161207161242_ _g161208161246_))))
                      (_g161207161242_ _g161208161246_))))
              (let ((_arity161223161327_ (reverse _arity161221161272_))
                    (_prim161224161330_ (reverse _prim161222161274_)))
                ((lambda (_L161333_ _L161335_)
                   (let ((__tmp162272
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp162265
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L161333_
                               _L161335_))
                            (let ((__tmp162266
                                   (lambda (_g161350161356_
                                            _g161351161359_
                                            _g161352161361_)
                                     (let ((__tmp162267
                                            (let ((__tmp162271
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp162268
                                                   (let ((__tmp162269
                                                          (let ((__tmp162270
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g161353161364_ _g161354161367_)
                           (let ()
                             (declare (not safe))
                             (cons _g161353161364_ _g161354161367_)))))
                    (declare (not safe))
                    (foldr1 __tmp162270 '() _g161350161356_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g161351161359_
                                                           __tmp162269))))
                                              (declare (not safe))
                                              (cons __tmp162271 __tmp162268))))
                                       (declare (not safe))
                                       (cons __tmp162267 _g161352161361_)))))
                              (declare (not safe))
                              (foldr2 __tmp162266 '() _L161333_ _L161335_)))))
                     (declare (not safe))
                     (cons __tmp162272 __tmp162265)))
                 _arity161223161327_
                 _prim161224161330_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop161217161265_
                                         _target161214161259_
                                         '()
                                         '()))
                                      (_g161207161242_ _g161208161246_)))))
                            (_g161207161242_ _g161208161246_))))
                    (_g161207161242_ _g161208161246_)))))
        (_g161206161370_ _$stx161203_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx161376_)
      (let* ((_g161380161415_
              (lambda (_g161381161411_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161381161411_))))
             (_g161379161543_
              (lambda (_g161381161419_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161381161419_))
                    (let ((_e161386161422_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161381161419_))))
                      (let ((_hd161385161426_
                             (let ()
                               (declare (not safe))
                               (##car _e161386161422_)))
                            (_tl161384161429_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161386161422_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl161384161429_))
                            (let ((_g162275_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl161384161429_
                                      '0))))
                              (begin
                                (let ((_g162276_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g162275_)
                                             (##vector-length _g162275_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g162276_ 2)))
                                      (error "Context expects 2 values"
                                             _g162276_)))
                                (let ((_target161387161432_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162275_ 0)))
                                      (_tl161389161435_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162275_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl161389161435_))
                                      (letrec ((_loop161390161438_
                                                (lambda (_hd161388161442_
                                                         _arity161394161445_
                                                         _prim161395161447_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd161388161442_))
                                                      (let ((_e161391161450_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd161388161442_))))
                (let ((_lp-hd161392161454_
                       (let () (declare (not safe)) (##car _e161391161450_)))
                      (_lp-tl161393161457_
                       (let () (declare (not safe)) (##cdr _e161391161450_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd161392161454_))
                      (let ((_e161400161460_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd161392161454_))))
                        (let ((_hd161399161464_
                               (let ()
                                 (declare (not safe))
                                 (##car _e161400161460_)))
                              (_tl161398161467_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e161400161460_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl161398161467_))
                              (let ((_g162285_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl161398161467_
                                        '0))))
                                (begin
                                  (let ((_g162286_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g162285_)
                                               (##vector-length _g162285_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g162286_ 2)))
                                        (error "Context expects 2 values"
                                               _g162286_)))
                                  (let ((_target161401161470_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g162285_ 0)))
                                        (_tl161403161473_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g162285_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl161403161473_))
                                        (letrec ((_loop161404161476_
                                                  (lambda (_hd161402161480_
                                                           _arity161408161483_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd161402161480_))
                                                        (let ((_e161405161486_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd161402161480_))))
                  (let ((_lp-hd161406161490_
                         (let () (declare (not safe)) (##car _e161405161486_)))
                        (_lp-tl161407161493_
                         (let ()
                           (declare (not safe))
                           (##cdr _e161405161486_))))
                    (_loop161404161476_
                     _lp-tl161407161493_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd161406161490_ _arity161408161483_)))))
                (let ((_arity161409161496_ (reverse _arity161408161483_)))
                  (_loop161390161438_
                   _lp-tl161393161457_
                   (let ()
                     (declare (not safe))
                     (cons _arity161409161496_ _arity161394161445_))
                   (let ()
                     (declare (not safe))
                     (cons _hd161399161464_ _prim161395161447_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop161404161476_
                                           _target161401161470_
                                           '()))
                                        (_g161380161415_ _g161381161419_)))))
                              (_g161380161415_ _g161381161419_))))
                      (_g161380161415_ _g161381161419_))))
              (let ((_arity161396161500_ (reverse _arity161394161445_))
                    (_prim161397161503_ (reverse _prim161395161447_)))
                ((lambda (_L161506_ _L161508_)
                   (let ((__tmp162284
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp162277
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L161506_
                               _L161508_))
                            (let ((__tmp162278
                                   (lambda (_g161523161529_
                                            _g161524161532_
                                            _g161525161534_)
                                     (let ((__tmp162279
                                            (let ((__tmp162283
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp162280
                                                   (let ((__tmp162281
                                                          (let ((__tmp162282
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g161526161537_ _g161527161540_)
                           (let ()
                             (declare (not safe))
                             (cons _g161526161537_ _g161527161540_)))))
                    (declare (not safe))
                    (foldr1 __tmp162282 '() _g161523161529_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g161524161532_
                                                           __tmp162281))))
                                              (declare (not safe))
                                              (cons __tmp162283 __tmp162280))))
                                       (declare (not safe))
                                       (cons __tmp162279 _g161525161534_)))))
                              (declare (not safe))
                              (foldr2 __tmp162278 '() _L161506_ _L161508_)))))
                     (declare (not safe))
                     (cons __tmp162284 __tmp162277)))
                 _arity161396161500_
                 _prim161397161503_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop161390161438_
                                         _target161387161432_
                                         '()
                                         '()))
                                      (_g161380161415_ _g161381161419_)))))
                            (_g161380161415_ _g161381161419_))))
                    (_g161380161415_ _g161381161419_)))))
        (_g161379161543_ _$stx161376_)))))
