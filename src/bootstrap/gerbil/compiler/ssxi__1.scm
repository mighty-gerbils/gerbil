(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx158441_)
      (let* ((_g158445158463_
              (lambda (_g158446158459_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158446158459_))))
             (_g158444158518_
              (lambda (_g158446158467_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158446158467_))
                    (let ((_e158451158470_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158446158467_))))
                      (let ((_hd158450158474_
                             (let ()
                               (declare (not safe))
                               (##car _e158451158470_)))
                            (_tl158449158477_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158451158470_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158449158477_))
                            (let ((_e158454158480_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158449158477_))))
                              (let ((_hd158453158484_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158454158480_)))
                                    (_tl158452158487_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158454158480_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl158452158487_))
                                    (let ((_e158457158490_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl158452158487_))))
                                      (let ((_hd158456158494_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e158457158490_)))
                                            (_tl158455158497_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e158457158490_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl158455158497_))
                                            ((lambda (_L158500_ _L158502_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L158502_))
                                                   (let ((__tmp161982
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp161977
                                                          (let ((__tmp161979
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp161981
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp161980
                                (let ()
                                  (declare (not safe))
                                  (cons _L158502_ '()))))
                           (declare (not safe))
                           (cons __tmp161981 __tmp161980)))
                        (__tmp161978
                         (let () (declare (not safe)) (cons _L158500_ '()))))
                    (declare (not safe))
                    (cons __tmp161979 __tmp161978))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp161982
                                                           __tmp161977))
                                                   (_g158445158463_
                                                    _g158446158467_)))
                                             _hd158456158494_
                                             _hd158453158484_)
                                            (_g158445158463_
                                             _g158446158467_))))
                                    (_g158445158463_ _g158446158467_))))
                            (_g158445158463_ _g158446158467_))))
                    (_g158445158463_ _g158446158467_)))))
        (_g158444158518_ _$stx158441_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx158522_)
      (let* ((_g158526158555_
              (lambda (_g158527158551_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158527158551_))))
             (_g158525158655_
              (lambda (_g158527158559_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158527158559_))
                    (let ((_e158532158562_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158527158559_))))
                      (let ((_hd158531158566_
                             (let ()
                               (declare (not safe))
                               (##car _e158532158562_)))
                            (_tl158530158569_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158532158562_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl158530158569_))
                            (let ((_g161983_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl158530158569_
                                      '0))))
                              (begin
                                (let ((_g161984_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g161983_)
                                             (##vector-length _g161983_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g161984_ 2)))
                                      (error "Context expects 2 values"
                                             _g161984_)))
                                (let ((_target158533158572_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161983_ 0)))
                                      (_tl158535158575_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161983_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl158535158575_))
                                      (letrec ((_loop158536158578_
                                                (lambda (_hd158534158582_
                                                         _type158540158585_
                                                         _symbol158541158587_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd158534158582_))
                                                      (let ((_e158537158590_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd158534158582_))))
                (let ((_lp-hd158538158594_
                       (let () (declare (not safe)) (##car _e158537158590_)))
                      (_lp-tl158539158597_
                       (let () (declare (not safe)) (##cdr _e158537158590_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd158538158594_))
                      (let ((_e158546158600_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd158538158594_))))
                        (let ((_hd158545158604_
                               (let ()
                                 (declare (not safe))
                                 (##car _e158546158600_)))
                              (_tl158544158607_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e158546158600_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl158544158607_))
                              (let ((_e158549158610_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl158544158607_))))
                                (let ((_hd158548158614_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e158549158610_)))
                                      (_tl158547158617_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e158549158610_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl158547158617_))
                                      (_loop158536158578_
                                       _lp-tl158539158597_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd158548158614_
                                               _type158540158585_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd158545158604_
                                               _symbol158541158587_)))
                                      (_g158526158555_ _g158527158559_))))
                              (_g158526158555_ _g158527158559_))))
                      (_g158526158555_ _g158527158559_))))
              (let ((_type158542158620_ (reverse _type158540158585_))
                    (_symbol158543158623_ (reverse _symbol158541158587_)))
                ((lambda (_L158626_ _L158628_)
                   (let ((__tmp161991
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp161985
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L158626_
                               _L158628_))
                            (let ((__tmp161986
                                   (lambda (_g158643158647_
                                            _g158644158650_
                                            _g158645158652_)
                                     (let ((__tmp161987
                                            (let ((__tmp161990
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp161988
                                                   (let ((__tmp161989
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g158643158647_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g158644158650_
                                                           __tmp161989))))
                                              (declare (not safe))
                                              (cons __tmp161990 __tmp161988))))
                                       (declare (not safe))
                                       (cons __tmp161987 _g158645158652_)))))
                              (declare (not safe))
                              (foldr2 __tmp161986 '() _L158626_ _L158628_)))))
                     (declare (not safe))
                     (cons __tmp161991 __tmp161985)))
                 _type158542158620_
                 _symbol158543158623_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop158536158578_
                                         _target158533158572_
                                         '()
                                         '()))
                                      (_g158526158555_ _g158527158559_)))))
                            (_g158526158555_ _g158527158559_))))
                    (_g158526158555_ _g158527158559_)))))
        (_g158525158655_ _$stx158522_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx158660_)
      (let* ((___stx161542161543_ _$stx158660_)
             (_g158665158707_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161542161543_)))))
        (let ((___kont161545161546_
               (lambda (_L158835_ _L158837_ _L158838_ _L158839_)
                 (let ((__tmp162005
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp161992
                        (let ((__tmp162002
                               (let ((__tmp162004
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp162003
                                      (let ()
                                        (declare (not safe))
                                        (cons _L158839_ '()))))
                                 (declare (not safe))
                                 (cons __tmp162004 __tmp162003)))
                              (__tmp161993
                               (let ((__tmp161999
                                      (let ((__tmp162001
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp162000
                                             (let ()
                                               (declare (not safe))
                                               (cons _L158838_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162001 __tmp162000)))
                                     (__tmp161994
                                      (let ((__tmp161996
                                             (let ((__tmp161998
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp161997
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L158837_ '()))))
                                               (declare (not safe))
                                               (cons __tmp161998 __tmp161997)))
                                            (__tmp161995
                                             (let ()
                                               (declare (not safe))
                                               (cons _L158835_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161996 __tmp161995))))
                                 (declare (not safe))
                                 (cons __tmp161999 __tmp161994))))
                          (declare (not safe))
                          (cons __tmp162002 __tmp161993))))
                   (declare (not safe))
                   (cons __tmp162005 __tmp161992))))
              (___kont161547161548_
               (lambda (_L158754_ _L158756_ _L158757_ _L158758_)
                 (let ((__tmp162006
                        (let ((__tmp162007
                               (let ((__tmp162008
                                      (let ((__tmp162009
                                             (let ((__tmp162010
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp162010 '()))))
                                        (declare (not safe))
                                        (cons _L158754_ __tmp162009))))
                                 (declare (not safe))
                                 (cons _L158756_ __tmp162008))))
                          (declare (not safe))
                          (cons _L158757_ __tmp162007))))
                   (declare (not safe))
                   (cons _L158758_ __tmp162006)))))
          (let ((___match161581161582_
                 (lambda (_e158673158785_
                          _hd158672158789_
                          _tl158671158792_
                          _e158676158795_
                          _hd158675158799_
                          _tl158674158802_
                          _e158679158805_
                          _hd158678158809_
                          _tl158677158812_
                          _e158682158815_
                          _hd158681158819_
                          _tl158680158822_
                          _e158685158825_
                          _hd158684158829_
                          _tl158683158832_)
                   (let ((_L158835_ _hd158684158829_)
                         (_L158837_ _hd158681158819_)
                         (_L158838_ _hd158678158809_)
                         (_L158839_ _hd158675158799_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L158839_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L158838_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L158837_)))
                         (___kont161545161546_
                          _L158835_
                          _L158837_
                          _L158838_
                          _L158839_)
                         (let () (declare (not safe)) (_g158665158707_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx161542161543_))
                (let ((_e158673158785_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx161542161543_))))
                  (let ((_tl158671158792_
                         (let () (declare (not safe)) (##cdr _e158673158785_)))
                        (_hd158672158789_
                         (let ()
                           (declare (not safe))
                           (##car _e158673158785_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl158671158792_))
                        (let ((_e158676158795_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl158671158792_))))
                          (let ((_tl158674158802_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e158676158795_)))
                                (_hd158675158799_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e158676158795_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl158674158802_))
                                (let ((_e158679158805_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl158674158802_))))
                                  (let ((_tl158677158812_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e158679158805_)))
                                        (_hd158678158809_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e158679158805_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl158677158812_))
                                        (let ((_e158682158815_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl158677158812_))))
                                          (let ((_tl158680158822_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e158682158815_)))
                                                (_hd158681158819_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e158682158815_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl158680158822_))
                                                (let ((_e158685158825_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl158680158822_))))
                                                  (let ((_tl158683158832_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e158685158825_)))
                                                        (_hd158684158829_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e158685158825_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl158683158832_))
                                                        (___match161581161582_
                                                         _e158673158785_
                                                         _hd158672158789_
                                                         _tl158671158792_
                                                         _e158676158795_
                                                         _hd158675158799_
                                                         _tl158674158802_
                                                         _e158679158805_
                                                         _hd158678158809_
                                                         _tl158677158812_
                                                         _e158682158815_
                                                         _hd158681158819_
                                                         _tl158680158822_
                                                         _e158685158825_
                                                         _hd158684158829_
                                                         _tl158683158832_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g158665158707_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl158680158822_))
                                                    (___kont161547161548_
                                                     _hd158681158819_
                                                     _hd158678158809_
                                                     _hd158675158799_
                                                     _hd158672158789_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g158665158707_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g158665158707_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g158665158707_)))))
                        (let () (declare (not safe)) (_g158665158707_)))))
                (let () (declare (not safe)) (_g158665158707_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx158864_)
      (let* ((_g158868158903_
              (lambda (_g158869158899_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158869158899_))))
             (_g158867159022_
              (lambda (_g158869158907_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158869158907_))
                    (let ((_e158875158910_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158869158907_))))
                      (let ((_hd158874158914_
                             (let ()
                               (declare (not safe))
                               (##car _e158875158910_)))
                            (_tl158873158917_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158875158910_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl158873158917_))
                            (let ((_g162011_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl158873158917_
                                      '0))))
                              (begin
                                (let ((_g162012_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g162011_)
                                             (##vector-length _g162011_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g162012_ 2)))
                                      (error "Context expects 2 values"
                                             _g162012_)))
                                (let ((_target158876158920_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162011_ 0)))
                                      (_tl158878158923_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162011_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl158878158923_))
                                      (letrec ((_loop158879158926_
                                                (lambda (_hd158877158930_
                                                         _symbol158883158933_
                                                         _method158884158935_
                                                         _type-t158885158937_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd158877158930_))
                                                      (let ((_e158880158940_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd158877158930_))))
                (let ((_lp-hd158881158944_
                       (let () (declare (not safe)) (##car _e158880158940_)))
                      (_lp-tl158882158947_
                       (let () (declare (not safe)) (##cdr _e158880158940_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd158881158944_))
                      (let ((_e158891158950_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd158881158944_))))
                        (let ((_hd158890158954_
                               (let ()
                                 (declare (not safe))
                                 (##car _e158891158950_)))
                              (_tl158889158957_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e158891158950_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl158889158957_))
                              (let ((_e158894158960_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl158889158957_))))
                                (let ((_hd158893158964_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e158894158960_)))
                                      (_tl158892158967_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e158894158960_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl158892158967_))
                                      (let ((_e158897158970_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl158892158967_))))
                                        (let ((_hd158896158974_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e158897158970_)))
                                              (_tl158895158977_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e158897158970_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl158895158977_))
                                              (_loop158879158926_
                                               _lp-tl158882158947_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd158896158974_
                                                       _symbol158883158933_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd158893158964_
                                                       _method158884158935_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd158890158954_
                                                       _type-t158885158937_)))
                                              (_g158868158903_
                                               _g158869158907_))))
                                      (_g158868158903_ _g158869158907_))))
                              (_g158868158903_ _g158869158907_))))
                      (_g158868158903_ _g158869158907_))))
              (let ((_symbol158886158980_ (reverse _symbol158883158933_))
                    (_method158887158983_ (reverse _method158884158935_))
                    (_type-t158888158985_ (reverse _type-t158885158937_)))
                ((lambda (_L158988_ _L158990_ _L158991_)
                   (let ((__tmp162020
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp162013
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L158988_
                               _L158990_
                               _L158991_))
                            (let ((__tmp162014
                                   (lambda (_g159007159012_
                                            _g159008159015_
                                            _g159009159017_
                                            _g159010159019_)
                                     (let ((__tmp162015
                                            (let ((__tmp162019
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp162016
                                                   (let ((__tmp162017
                                                          (let ((__tmp162018
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g159007159012_ '()))))
                    (declare (not safe))
                    (cons _g159008159015_ __tmp162018))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g159009159017_
                                                           __tmp162017))))
                                              (declare (not safe))
                                              (cons __tmp162019 __tmp162016))))
                                       (declare (not safe))
                                       (cons __tmp162015 _g159010159019_)))))
                              (declare (not safe))
                              (foldr* __tmp162014
                                      '()
                                      _L158988_
                                      _L158990_
                                      _L158991_)))))
                     (declare (not safe))
                     (cons __tmp162020 __tmp162013)))
                 _symbol158886158980_
                 _method158887158983_
                 _type-t158888158985_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop158879158926_
                                         _target158876158920_
                                         '()
                                         '()
                                         '()))
                                      (_g158868158903_ _g158869158907_)))))
                            (_g158868158903_ _g158869158907_))))
                    (_g158868158903_ _g158869158907_)))))
        (_g158867159022_ _$stx158864_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx159027_)
      (let* ((_g159031159064_
              (lambda (_g159032159060_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159032159060_))))
             (_g159030159178_
              (lambda (_g159032159068_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159032159068_))
                    (let ((_e159038159071_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159032159068_))))
                      (let ((_hd159037159075_
                             (let ()
                               (declare (not safe))
                               (##car _e159038159071_)))
                            (_tl159036159078_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159038159071_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159036159078_))
                            (let ((_e159041159081_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159036159078_))))
                              (let ((_hd159040159085_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159041159081_)))
                                    (_tl159039159088_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159041159081_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl159039159088_))
                                    (let ((_g162021_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl159039159088_
                                              '0))))
                                      (begin
                                        (let ((_g162022_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g162021_)
                                                     (##vector-length
                                                      _g162021_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g162022_ 2)))
                                              (error "Context expects 2 values"
                                                     _g162022_)))
                                        (let ((_target159042159091_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g162021_ 0)))
                                              (_tl159044159094_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g162021_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl159044159094_))
                                              (letrec ((_loop159045159097_
                                                        (lambda (_hd159043159101_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol159049159104_
                         _method159050159106_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd159043159101_))
                      (let ((_e159046159109_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd159043159101_))))
                        (let ((_lp-hd159047159113_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159046159109_)))
                              (_lp-tl159048159116_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159046159109_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd159047159113_))
                              (let ((_e159055159119_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd159047159113_))))
                                (let ((_hd159054159123_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e159055159119_)))
                                      (_tl159053159126_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e159055159119_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl159053159126_))
                                      (let ((_e159058159129_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl159053159126_))))
                                        (let ((_hd159057159133_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e159058159129_)))
                                              (_tl159056159136_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e159058159129_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl159056159136_))
                                              (_loop159045159097_
                                               _lp-tl159048159116_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd159057159133_
                                                       _symbol159049159104_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd159054159123_
                                                       _method159050159106_)))
                                              (_g159031159064_
                                               _g159032159068_))))
                                      (_g159031159064_ _g159032159068_))))
                              (_g159031159064_ _g159032159068_))))
                      (let ((_symbol159051159139_
                             (reverse _symbol159049159104_))
                            (_method159052159142_
                             (reverse _method159050159106_)))
                        ((lambda (_L159145_ _L159147_ _L159148_)
                           (let ((__tmp162030
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp162023
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L159145_
                                       _L159147_))
                                    (let ((__tmp162024
                                           (lambda (_g159166159170_
                                                    _g159167159173_
                                                    _g159168159175_)
                                             (let ((__tmp162025
                                                    (let ((__tmp162029
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp162026
                                                           (let ((__tmp162027
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp162028
                                 (let ()
                                   (declare (not safe))
                                   (cons _g159166159170_ '()))))
                            (declare (not safe))
                            (cons _g159167159173_ __tmp162028))))
                     (declare (not safe))
                     (cons _L159148_ __tmp162027))))
              (declare (not safe))
              (cons __tmp162029 __tmp162026))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp162025
                                                     _g159168159175_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp162024
                                              '()
                                              _L159145_
                                              _L159147_)))))
                             (declare (not safe))
                             (cons __tmp162030 __tmp162023)))
                         _symbol159051159139_
                         _method159052159142_
                         _hd159040159085_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop159045159097_
                                                 _target159042159091_
                                                 '()
                                                 '()))
                                              (_g159031159064_
                                               _g159032159068_)))))
                                    (_g159031159064_ _g159032159068_))))
                            (_g159031159064_ _g159032159068_))))
                    (_g159031159064_ _g159032159068_)))))
        (_g159030159178_ _$stx159027_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx159183_)
      (let* ((_g159187159201_
              (lambda (_g159188159197_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159188159197_))))
             (_g159186159242_
              (lambda (_g159188159205_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159188159205_))
                    (let ((_e159192159208_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159188159205_))))
                      (let ((_hd159191159212_
                             (let ()
                               (declare (not safe))
                               (##car _e159192159208_)))
                            (_tl159190159215_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159192159208_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159190159215_))
                            (let ((_e159195159218_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159190159215_))))
                              (let ((_hd159194159222_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159195159218_)))
                                    (_tl159193159225_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159195159218_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl159193159225_))
                                    ((lambda (_L159228_)
                                       (let ((__tmp162035
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp162031
                                              (let ((__tmp162032
                                                     (let ((__tmp162034
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp162033
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L159228_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp162034 __tmp162033))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp162032 '()))))
                                         (declare (not safe))
                                         (cons __tmp162035 __tmp162031)))
                                     _hd159194159222_)
                                    (_g159187159201_ _g159188159205_))))
                            (_g159187159201_ _g159188159205_))))
                    (_g159187159201_ _g159188159205_)))))
        (_g159186159242_ _$stx159183_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx159246_)
      (let* ((_g159250159300_
              (lambda (_g159251159296_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159251159296_))))
             (_g159249159467_
              (lambda (_g159251159304_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159251159304_))
                    (let ((_e159264159307_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159251159304_))))
                      (let ((_hd159263159311_
                             (let ()
                               (declare (not safe))
                               (##car _e159264159307_)))
                            (_tl159262159314_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159264159307_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159262159314_))
                            (let ((_e159267159317_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159262159314_))))
                              (let ((_hd159266159321_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159267159317_)))
                                    (_tl159265159324_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159267159317_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl159265159324_))
                                    (let ((_e159270159327_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl159265159324_))))
                                      (let ((_hd159269159331_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159270159327_)))
                                            (_tl159268159334_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159270159327_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl159268159334_))
                                            (let ((_e159273159337_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl159268159334_))))
                                              (let ((_hd159272159341_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159273159337_)))
                                                    (_tl159271159344_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159273159337_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl159271159344_))
                                                    (let ((_e159276159347_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl159271159344_))))
                                                      (let ((_hd159275159351_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e159276159347_)))
                    (_tl159274159354_
                     (let () (declare (not safe)) (##cdr _e159276159347_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl159274159354_))
                    (let ((_e159279159357_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl159274159354_))))
                      (let ((_hd159278159361_
                             (let ()
                               (declare (not safe))
                               (##car _e159279159357_)))
                            (_tl159277159364_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159279159357_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159277159364_))
                            (let ((_e159282159367_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159277159364_))))
                              (let ((_hd159281159371_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159282159367_)))
                                    (_tl159280159374_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159282159367_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl159280159374_))
                                    (let ((_e159285159377_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl159280159374_))))
                                      (let ((_hd159284159381_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159285159377_)))
                                            (_tl159283159384_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159285159377_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl159283159384_))
                                            (let ((_e159288159387_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl159283159384_))))
                                              (let ((_hd159287159391_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159288159387_)))
                                                    (_tl159286159394_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159288159387_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl159286159394_))
                                                    (let ((_e159291159397_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl159286159394_))))
                                                      (let ((_hd159290159401_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e159291159397_)))
                    (_tl159289159404_
                     (let () (declare (not safe)) (##cdr _e159291159397_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl159289159404_))
                    (let ((_e159294159407_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl159289159404_))))
                      (let ((_hd159293159411_
                             (let ()
                               (declare (not safe))
                               (##car _e159294159407_)))
                            (_tl159292159414_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159294159407_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl159292159414_))
                            ((lambda (_L159417_
                                      _L159419_
                                      _L159420_
                                      _L159421_
                                      _L159422_
                                      _L159423_
                                      _L159424_
                                      _L159425_
                                      _L159426_
                                      _L159427_)
                               (let ((__tmp162070
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0
                                         '#f
                                         'make-!class)))
                                     (__tmp162036
                                      (let ((__tmp162067
                                             (let ((__tmp162069
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp162068
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L159427_ '()))))
                                               (declare (not safe))
                                               (cons __tmp162069 __tmp162068)))
                                            (__tmp162037
                                             (let ((__tmp162064
                                                    (let ((__tmp162066
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote)))
                                                          (__tmp162065
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L159426_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp162066 __tmp162065)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp162038
                                                    (let ((__tmp162061
                                                           (let ((__tmp162063
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp162062
                          (let () (declare (not safe)) (cons _L159425_ '()))))
                     (declare (not safe))
                     (cons __tmp162063 __tmp162062)))
                  (__tmp162039
                   (let ((__tmp162058
                          (let ((__tmp162060
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote)))
                                (__tmp162059
                                 (let ()
                                   (declare (not safe))
                                   (cons _L159424_ '()))))
                            (declare (not safe))
                            (cons __tmp162060 __tmp162059)))
                         (__tmp162040
                          (let ((__tmp162055
                                 (let ((__tmp162057
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'quote)))
                                       (__tmp162056
                                        (let ()
                                          (declare (not safe))
                                          (cons _L159423_ '()))))
                                   (declare (not safe))
                                   (cons __tmp162057 __tmp162056)))
                                (__tmp162041
                                 (let ((__tmp162052
                                        (let ((__tmp162054
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'quote)))
                                              (__tmp162053
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L159422_ '()))))
                                          (declare (not safe))
                                          (cons __tmp162054 __tmp162053)))
                                       (__tmp162042
                                        (let ((__tmp162043
                                               (let ((__tmp162044
                                                      (let ((__tmp162049
                                                             (let ((__tmp162051
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp162050
                            (let ()
                              (declare (not safe))
                              (cons _L159419_ '()))))
                       (declare (not safe))
                       (cons __tmp162051 __tmp162050)))
                    (__tmp162045
                     (let ((__tmp162046
                            (let ((__tmp162048
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp162047
                                   (let ()
                                     (declare (not safe))
                                     (cons _L159417_ '()))))
                              (declare (not safe))
                              (cons __tmp162048 __tmp162047))))
                       (declare (not safe))
                       (cons __tmp162046 '()))))
                (declare (not safe))
                (cons __tmp162049 __tmp162045))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L159420_
                                                       __tmp162044))))
                                          (declare (not safe))
                                          (cons _L159421_ __tmp162043))))
                                   (declare (not safe))
                                   (cons __tmp162052 __tmp162042))))
                            (declare (not safe))
                            (cons __tmp162055 __tmp162041))))
                     (declare (not safe))
                     (cons __tmp162058 __tmp162040))))
              (declare (not safe))
              (cons __tmp162061 __tmp162039))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp162064
                                                     __tmp162038))))
                                        (declare (not safe))
                                        (cons __tmp162067 __tmp162037))))
                                 (declare (not safe))
                                 (cons __tmp162070 __tmp162036)))
                             _hd159293159411_
                             _hd159290159401_
                             _hd159287159391_
                             _hd159284159381_
                             _hd159281159371_
                             _hd159278159361_
                             _hd159275159351_
                             _hd159272159341_
                             _hd159269159331_
                             _hd159266159321_)
                            (_g159250159300_ _g159251159304_))))
                    (_g159250159300_ _g159251159304_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g159250159300_
                                                     _g159251159304_))))
                                            (_g159250159300_
                                             _g159251159304_))))
                                    (_g159250159300_ _g159251159304_))))
                            (_g159250159300_ _g159251159304_))))
                    (_g159250159300_ _g159251159304_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g159250159300_
                                                     _g159251159304_))))
                                            (_g159250159300_
                                             _g159251159304_))))
                                    (_g159250159300_ _g159251159304_))))
                            (_g159250159300_ _g159251159304_))))
                    (_g159250159300_ _g159251159304_)))))
        (_g159249159467_ _$stx159246_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx159471_)
      (let* ((_g159475159489_
              (lambda (_g159476159485_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159476159485_))))
             (_g159474159530_
              (lambda (_g159476159493_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159476159493_))
                    (let ((_e159480159496_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159476159493_))))
                      (let ((_hd159479159500_
                             (let ()
                               (declare (not safe))
                               (##car _e159480159496_)))
                            (_tl159478159503_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159480159496_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159478159503_))
                            (let ((_e159483159506_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159478159503_))))
                              (let ((_hd159482159510_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159483159506_)))
                                    (_tl159481159513_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159483159506_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl159481159513_))
                                    ((lambda (_L159516_)
                                       (let ((__tmp162075
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp162071
                                              (let ((__tmp162072
                                                     (let ((__tmp162074
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp162073
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L159516_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp162074 __tmp162073))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp162072 '()))))
                                         (declare (not safe))
                                         (cons __tmp162075 __tmp162071)))
                                     _hd159482159510_)
                                    (_g159475159489_ _g159476159493_))))
                            (_g159475159489_ _g159476159493_))))
                    (_g159475159489_ _g159476159493_)))))
        (_g159474159530_ _$stx159471_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx159534_)
      (let* ((_g159538159552_
              (lambda (_g159539159548_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159539159548_))))
             (_g159537159593_
              (lambda (_g159539159556_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159539159556_))
                    (let ((_e159543159559_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159539159556_))))
                      (let ((_hd159542159563_
                             (let ()
                               (declare (not safe))
                               (##car _e159543159559_)))
                            (_tl159541159566_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159543159559_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159541159566_))
                            (let ((_e159546159569_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159541159566_))))
                              (let ((_hd159545159573_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159546159569_)))
                                    (_tl159544159576_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159546159569_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl159544159576_))
                                    ((lambda (_L159579_)
                                       (let ((__tmp162080
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp162076
                                              (let ((__tmp162077
                                                     (let ((__tmp162079
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp162078
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L159579_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp162079 __tmp162078))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp162077 '()))))
                                         (declare (not safe))
                                         (cons __tmp162080 __tmp162076)))
                                     _hd159545159573_)
                                    (_g159538159552_ _g159539159556_))))
                            (_g159538159552_ _g159539159556_))))
                    (_g159538159552_ _g159539159556_)))))
        (_g159537159593_ _$stx159534_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx159597_)
      (let* ((_g159601159623_
              (lambda (_g159602159619_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159602159619_))))
             (_g159600159692_
              (lambda (_g159602159627_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159602159627_))
                    (let ((_e159608159630_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159602159627_))))
                      (let ((_hd159607159634_
                             (let ()
                               (declare (not safe))
                               (##car _e159608159630_)))
                            (_tl159606159637_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159608159630_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159606159637_))
                            (let ((_e159611159640_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159606159637_))))
                              (let ((_hd159610159644_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159611159640_)))
                                    (_tl159609159647_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159611159640_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl159609159647_))
                                    (let ((_e159614159650_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl159609159647_))))
                                      (let ((_hd159613159654_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159614159650_)))
                                            (_tl159612159657_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159614159650_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl159612159657_))
                                            (let ((_e159617159660_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl159612159657_))))
                                              (let ((_hd159616159664_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159617159660_)))
                                                    (_tl159615159667_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159617159660_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159615159667_))
                                                    ((lambda (_L159670_
                                                              _L159672_
                                                              _L159673_)
                                                       (let ((__tmp162090
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp162081
                      (let ((__tmp162087
                             (let ((__tmp162089
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp162088
                                    (let ()
                                      (declare (not safe))
                                      (cons _L159673_ '()))))
                               (declare (not safe))
                               (cons __tmp162089 __tmp162088)))
                            (__tmp162082
                             (let ((__tmp162084
                                    (let ((__tmp162086
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp162085
                                           (let ()
                                             (declare (not safe))
                                             (cons _L159672_ '()))))
                                      (declare (not safe))
                                      (cons __tmp162086 __tmp162085)))
                                   (__tmp162083
                                    (let ()
                                      (declare (not safe))
                                      (cons _L159670_ '()))))
                               (declare (not safe))
                               (cons __tmp162084 __tmp162083))))
                        (declare (not safe))
                        (cons __tmp162087 __tmp162082))))
                 (declare (not safe))
                 (cons __tmp162090 __tmp162081)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd159616159664_
                                                     _hd159613159654_
                                                     _hd159610159644_)
                                                    (_g159601159623_
                                                     _g159602159627_))))
                                            (_g159601159623_
                                             _g159602159627_))))
                                    (_g159601159623_ _g159602159627_))))
                            (_g159601159623_ _g159602159627_))))
                    (_g159601159623_ _g159602159627_)))))
        (_g159600159692_ _$stx159597_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx159696_)
      (let* ((_g159700159722_
              (lambda (_g159701159718_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159701159718_))))
             (_g159699159791_
              (lambda (_g159701159726_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159701159726_))
                    (let ((_e159707159729_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159701159726_))))
                      (let ((_hd159706159733_
                             (let ()
                               (declare (not safe))
                               (##car _e159707159729_)))
                            (_tl159705159736_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159707159729_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159705159736_))
                            (let ((_e159710159739_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159705159736_))))
                              (let ((_hd159709159743_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159710159739_)))
                                    (_tl159708159746_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159710159739_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl159708159746_))
                                    (let ((_e159713159749_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl159708159746_))))
                                      (let ((_hd159712159753_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159713159749_)))
                                            (_tl159711159756_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159713159749_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl159711159756_))
                                            (let ((_e159716159759_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl159711159756_))))
                                              (let ((_hd159715159763_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159716159759_)))
                                                    (_tl159714159766_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159716159759_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159714159766_))
                                                    ((lambda (_L159769_
                                                              _L159771_
                                                              _L159772_)
                                                       (let ((__tmp162100
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp162091
                      (let ((__tmp162097
                             (let ((__tmp162099
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp162098
                                    (let ()
                                      (declare (not safe))
                                      (cons _L159772_ '()))))
                               (declare (not safe))
                               (cons __tmp162099 __tmp162098)))
                            (__tmp162092
                             (let ((__tmp162094
                                    (let ((__tmp162096
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp162095
                                           (let ()
                                             (declare (not safe))
                                             (cons _L159771_ '()))))
                                      (declare (not safe))
                                      (cons __tmp162096 __tmp162095)))
                                   (__tmp162093
                                    (let ()
                                      (declare (not safe))
                                      (cons _L159769_ '()))))
                               (declare (not safe))
                               (cons __tmp162094 __tmp162093))))
                        (declare (not safe))
                        (cons __tmp162097 __tmp162092))))
                 (declare (not safe))
                 (cons __tmp162100 __tmp162091)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd159715159763_
                                                     _hd159712159753_
                                                     _hd159709159743_)
                                                    (_g159700159722_
                                                     _g159701159726_))))
                                            (_g159700159722_
                                             _g159701159726_))))
                                    (_g159700159722_ _g159701159726_))))
                            (_g159700159722_ _g159701159726_))))
                    (_g159700159722_ _g159701159726_)))))
        (_g159699159791_ _$stx159696_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx159795_)
      (let* ((___stx161610161611_ _$stx159795_)
             (_g159803159871_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161610161611_)))))
        (let ((___kont161613161614_
               (lambda (_L160149_ _L160151_)
                 (let ((__tmp162116
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp162101
                        (let ((__tmp162112
                               (let ((__tmp162115
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp162113
                                      (let ((__tmp162114
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp162114 '()))))
                                 (declare (not safe))
                                 (cons __tmp162115 __tmp162113)))
                              (__tmp162102
                               (let ((__tmp162109
                                      (let ((__tmp162111
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp162110
                                             (let ()
                                               (declare (not safe))
                                               (cons _L160151_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162111 __tmp162110)))
                                     (__tmp162103
                                      (let ((__tmp162104
                                             (let ((__tmp162105
                                                    (let ((__tmp162106
                                                           (let ((__tmp162108
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp162107
                          (let () (declare (not safe)) (cons _L160149_ '()))))
                     (declare (not safe))
                     (cons __tmp162108 __tmp162107))))
              (declare (not safe))
              (cons __tmp162106 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L160149_ __tmp162105))))
                                        (declare (not safe))
                                        (cons '#f __tmp162104))))
                                 (declare (not safe))
                                 (cons __tmp162109 __tmp162103))))
                          (declare (not safe))
                          (cons __tmp162112 __tmp162102))))
                   (declare (not safe))
                   (cons __tmp162116 __tmp162101))))
              (___kont161615161616_
               (lambda (_L160080_ _L160082_)
                 (let ((__tmp162117
                        (let ((__tmp162118
                               (let ((__tmp162119
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L160080_ __tmp162119))))
                          (declare (not safe))
                          (cons 'primitive: __tmp162118))))
                   (declare (not safe))
                   (cons _L160082_ __tmp162117))))
              (___kont161617161618_
               (lambda (_L160019_ _L160021_)
                 (let ((__tmp162133
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp162120
                        (let ((__tmp162129
                               (let ((__tmp162132
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp162130
                                      (let ((__tmp162131
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp162131 '()))))
                                 (declare (not safe))
                                 (cons __tmp162132 __tmp162130)))
                              (__tmp162121
                               (let ((__tmp162126
                                      (let ((__tmp162128
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp162127
                                             (let ()
                                               (declare (not safe))
                                               (cons _L160021_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162128 __tmp162127)))
                                     (__tmp162122
                                      (let ((__tmp162123
                                             (let ((__tmp162125
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp162124
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L160019_ '()))))
                                               (declare (not safe))
                                               (cons __tmp162125
                                                     __tmp162124))))
                                        (declare (not safe))
                                        (cons __tmp162123 '()))))
                                 (declare (not safe))
                                 (cons __tmp162126 __tmp162122))))
                          (declare (not safe))
                          (cons __tmp162129 __tmp162121))))
                   (declare (not safe))
                   (cons __tmp162133 __tmp162120))))
              (___kont161619161620_
               (lambda (_L159951_ _L159953_)
                 (let ((__tmp162147
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp162134
                        (let ((__tmp162143
                               (let ((__tmp162146
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp162144
                                      (let ((__tmp162145
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp162145 '()))))
                                 (declare (not safe))
                                 (cons __tmp162146 __tmp162144)))
                              (__tmp162135
                               (let ((__tmp162140
                                      (let ((__tmp162142
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp162141
                                             (let ()
                                               (declare (not safe))
                                               (cons _L159953_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162142 __tmp162141)))
                                     (__tmp162136
                                      (let ((__tmp162137
                                             (let ((__tmp162139
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp162138
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L159951_ '()))))
                                               (declare (not safe))
                                               (cons __tmp162139
                                                     __tmp162138))))
                                        (declare (not safe))
                                        (cons __tmp162137 '()))))
                                 (declare (not safe))
                                 (cons __tmp162140 __tmp162136))))
                          (declare (not safe))
                          (cons __tmp162143 __tmp162135))))
                   (declare (not safe))
                   (cons __tmp162147 __tmp162134))))
              (___kont161621161622_
               (lambda (_L159898_ _L159900_)
                 (let ((__tmp162148
                        (let ((__tmp162149
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L159898_ __tmp162149))))
                   (declare (not safe))
                   (cons _L159900_ __tmp162148)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx161610161611_))
              (let ((_e159809160105_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx161610161611_))))
                (let ((_tl159807160112_
                       (let () (declare (not safe)) (##cdr _e159809160105_)))
                      (_hd159808160109_
                       (let () (declare (not safe)) (##car _e159809160105_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl159807160112_))
                      (let ((_e159812160115_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl159807160112_))))
                        (let ((_tl159810160122_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159812160115_)))
                              (_hd159811160119_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159812160115_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl159810160122_))
                              (let ((_e159815160125_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl159810160122_))))
                                (let ((_tl159813160132_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e159815160125_)))
                                      (_hd159814160129_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e159815160125_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd159814160129_))
                                      (let ((_e159816160135_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd159814160129_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e159816160135_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl159813160132_))
                                                (let ((_e159819160139_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl159813160132_))))
                                                  (let ((_tl159817160146_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e159819160139_)))
                                                        (_hd159818160143_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e159819160139_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl159817160146_))
                                                        (___kont161613161614_
                                                         _hd159818160143_
                                                         _hd159811160119_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd159811160119_))
                                                            (let ((_e159828160066_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd159811160119_))))
                      (declare (not safe))
                      (_g159803159871_))
                    (let () (declare (not safe)) (_g159803159871_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd159811160119_))
                                                    (let ((_e159828160066_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd159811160119_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e159828160066_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl159813160132_))
                      (___kont161615161616_ _hd159814160129_ _hd159808160109_)
                      (let () (declare (not safe)) (_g159803159871_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl159813160132_))
                      (___kont161619161620_ _hd159814160129_ _hd159811160119_)
                      (let () (declare (not safe)) (_g159803159871_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl159813160132_))
                                                        (___kont161619161620_
                                                         _hd159814160129_
                                                         _hd159811160119_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g159803159871_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd159811160119_))
                                                (let ((_e159828160066_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd159811160119_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e159828160066_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl159813160132_))
                                                          (___kont161615161616_
                                                           _hd159814160129_
                                                           _hd159808160109_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl159813160132_))
                      (let ((_e159846160009_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl159813160132_))))
                        (let ((_tl159844160016_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159846160009_)))
                              (_hd159845160013_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159846160009_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl159844160016_))
                              (___kont161617161618_
                               _hd159845160013_
                               _hd159814160129_)
                              (let ()
                                (declare (not safe))
                                (_g159803159871_)))))
                      (let () (declare (not safe)) (_g159803159871_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl159813160132_))
                  (___kont161619161620_ _hd159814160129_ _hd159811160119_)
                  (let () (declare (not safe)) (_g159803159871_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159813160132_))
                                                    (___kont161619161620_
                                                     _hd159814160129_
                                                     _hd159811160119_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g159803159871_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd159811160119_))
                                          (let ((_e159828160066_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd159811160119_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e159828160066_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159813160132_))
                                                    (___kont161615161616_
                                                     _hd159814160129_
                                                     _hd159808160109_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl159813160132_))
                                                        (let ((_e159846160009_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl159813160132_))))
                  (let ((_tl159844160016_
                         (let () (declare (not safe)) (##cdr _e159846160009_)))
                        (_hd159845160013_
                         (let ()
                           (declare (not safe))
                           (##car _e159846160009_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl159844160016_))
                        (___kont161617161618_
                         _hd159845160013_
                         _hd159814160129_)
                        (let () (declare (not safe)) (_g159803159871_)))))
                (let () (declare (not safe)) (_g159803159871_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159813160132_))
                                                    (___kont161619161620_
                                                     _hd159814160129_
                                                     _hd159811160119_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g159803159871_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl159813160132_))
                                              (___kont161619161620_
                                               _hd159814160129_
                                               _hd159811160119_)
                                              (let ()
                                                (declare (not safe))
                                                (_g159803159871_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd159811160119_))
                                  (let ((_e159828160066_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd159811160119_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl159810160122_))
                                        (___kont161621161622_
                                         _hd159811160119_
                                         _hd159808160109_)
                                        (let ()
                                          (declare (not safe))
                                          (_g159803159871_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl159810160122_))
                                      (___kont161621161622_
                                       _hd159811160119_
                                       _hd159808160109_)
                                      (let ()
                                        (declare (not safe))
                                        (_g159803159871_)))))))
                      (let () (declare (not safe)) (_g159803159871_)))))
              (let () (declare (not safe)) (_g159803159871_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx160173_)
      (let* ((___stx161750161751_ _$stx160173_)
             (_g160178160233_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161750161751_)))))
        (let ((___kont161753161754_
               (lambda (_L160418_ _L160420_)
                 (let ((__tmp162165
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp162150
                        (let ((__tmp162161
                               (let ((__tmp162164
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp162162
                                      (let ((__tmp162163
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp162163 '()))))
                                 (declare (not safe))
                                 (cons __tmp162164 __tmp162162)))
                              (__tmp162151
                               (let ((__tmp162152
                                      (let ((__tmp162160
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp162153
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L160418_
                                                  _L160420_))
                                               (let ((__tmp162154
                                                      (lambda (_g160437160441_
                                                               _g160438160444_
                                                               _g160439160446_)
                                                        (let ((__tmp162155
                                                               (let ((__tmp162159
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp162156
                              (let ((__tmp162157
                                     (let ((__tmp162158
                                            (let ()
                                              (declare (not safe))
                                              (cons _g160437160441_ '()))))
                                       (declare (not safe))
                                       (cons _g160438160444_ __tmp162158))))
                                (declare (not safe))
                                (cons 'primitive: __tmp162157))))
                         (declare (not safe))
                         (cons __tmp162159 __tmp162156))))
                  (declare (not safe))
                  (cons __tmp162155 _g160439160446_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp162154
                                                         '()
                                                         _L160418_
                                                         _L160420_)))))
                                        (declare (not safe))
                                        (cons __tmp162160 __tmp162153))))
                                 (declare (not safe))
                                 (cons __tmp162152 '()))))
                          (declare (not safe))
                          (cons __tmp162161 __tmp162151))))
                   (declare (not safe))
                   (cons __tmp162165 __tmp162150))))
              (___kont161757161758_
               (lambda (_L160304_ _L160306_)
                 (let ((__tmp162180
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp162166
                        (let ((__tmp162176
                               (let ((__tmp162179
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp162177
                                      (let ((__tmp162178
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp162178 '()))))
                                 (declare (not safe))
                                 (cons __tmp162179 __tmp162177)))
                              (__tmp162167
                               (let ((__tmp162168
                                      (let ((__tmp162175
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp162169
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L160304_
                                                  _L160306_))
                                               (let ((__tmp162170
                                                      (lambda (_g160321160325_
                                                               _g160322160328_
                                                               _g160323160330_)
                                                        (let ((__tmp162171
                                                               (let ((__tmp162174
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp162172
                              (let ((__tmp162173
                                     (let ()
                                       (declare (not safe))
                                       (cons _g160321160325_ '()))))
                                (declare (not safe))
                                (cons _g160322160328_ __tmp162173))))
                         (declare (not safe))
                         (cons __tmp162174 __tmp162172))))
                  (declare (not safe))
                  (cons __tmp162171 _g160323160330_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp162170
                                                         '()
                                                         _L160304_
                                                         _L160306_)))))
                                        (declare (not safe))
                                        (cons __tmp162175 __tmp162169))))
                                 (declare (not safe))
                                 (cons __tmp162168 '()))))
                          (declare (not safe))
                          (cons __tmp162176 __tmp162167))))
                   (declare (not safe))
                   (cons __tmp162180 __tmp162166)))))
          (let* ((___match161801161802_
                  (lambda (_e160210160240_
                           _hd160209160244_
                           _tl160208160247_
                           ___splice161759161760_
                           _target160211160250_
                           _tl160213160253_)
                    (letrec ((_loop160214160256_
                              (lambda (_hd160212160260_
                                       _dispatch160218160263_
                                       _arity160219160265_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd160212160260_))
                                    (let ((_e160215160268_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd160212160260_))))
                                      (let ((_lp-tl160217160275_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160215160268_)))
                                            (_lp-hd160216160272_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160215160268_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd160216160272_))
                                            (let ((_e160224160278_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd160216160272_))))
                                              (let ((_tl160222160285_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e160224160278_)))
                                                    (_hd160223160282_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e160224160278_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl160222160285_))
                                                    (let ((_e160227160288_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl160222160285_))))
                                                      (let ((_tl160225160295_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e160227160288_)))
                    (_hd160226160292_
                     (let () (declare (not safe)) (##car _e160227160288_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl160225160295_))
                    (_loop160214160256_
                     _lp-tl160217160275_
                     (let ()
                       (declare (not safe))
                       (cons _hd160226160292_ _dispatch160218160263_))
                     (let ()
                       (declare (not safe))
                       (cons _hd160223160282_ _arity160219160265_)))
                    (let () (declare (not safe)) (_g160178160233_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g160178160233_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g160178160233_)))))
                                    (let ((_arity160221160301_
                                           (reverse _arity160219160265_))
                                          (_dispatch160220160298_
                                           (reverse _dispatch160218160263_)))
                                      (___kont161757161758_
                                       _dispatch160220160298_
                                       _arity160221160301_))))))
                      (_loop160214160256_ _target160211160250_ '() '()))))
                 (___match161793161794_
                  (lambda (_e160210160240_ _hd160209160244_ _tl160208160247_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl160208160247_))
                        (let ((___splice161759161760_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl160208160247_
                                  '0))))
                          (let ((_tl160213160253_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice161759161760_ '1)))
                                (_target160211160250_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice161759161760_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl160213160253_))
                                (___match161801161802_
                                 _e160210160240_
                                 _hd160209160244_
                                 _tl160208160247_
                                 ___splice161759161760_
                                 _target160211160250_
                                 _tl160213160253_)
                                (let ()
                                  (declare (not safe))
                                  (_g160178160233_)))))
                        (let () (declare (not safe)) (_g160178160233_)))))
                 (___match161787161788_
                  (lambda (_e160184160340_
                           _hd160183160344_
                           _tl160182160347_
                           _e160187160350_
                           _hd160186160354_
                           _tl160185160357_
                           _e160188160360_
                           ___splice161755161756_
                           _target160189160364_
                           _tl160191160367_)
                    (letrec ((_loop160192160370_
                              (lambda (_hd160190160374_
                                       _dispatch160196160377_
                                       _arity160197160379_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd160190160374_))
                                    (let ((_e160193160382_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd160190160374_))))
                                      (let ((_lp-tl160195160389_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160193160382_)))
                                            (_lp-hd160194160386_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160193160382_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd160194160386_))
                                            (let ((_e160202160392_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd160194160386_))))
                                              (let ((_tl160200160399_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e160202160392_)))
                                                    (_hd160201160396_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e160202160392_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl160200160399_))
                                                    (let ((_e160205160402_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl160200160399_))))
                                                      (let ((_tl160203160409_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e160205160402_)))
                    (_hd160204160406_
                     (let () (declare (not safe)) (##car _e160205160402_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl160203160409_))
                    (_loop160192160370_
                     _lp-tl160195160389_
                     (let ()
                       (declare (not safe))
                       (cons _hd160204160406_ _dispatch160196160377_))
                     (let ()
                       (declare (not safe))
                       (cons _hd160201160396_ _arity160197160379_)))
                    (___match161793161794_
                     _e160184160340_
                     _hd160183160344_
                     _tl160182160347_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match161793161794_
                                                     _e160184160340_
                                                     _hd160183160344_
                                                     _tl160182160347_))))
                                            (___match161793161794_
                                             _e160184160340_
                                             _hd160183160344_
                                             _tl160182160347_))))
                                    (let ((_arity160199160415_
                                           (reverse _arity160197160379_))
                                          (_dispatch160198160412_
                                           (reverse _dispatch160196160377_)))
                                      (___kont161753161754_
                                       _dispatch160198160412_
                                       _arity160199160415_))))))
                      (_loop160192160370_ _target160189160364_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx161750161751_))
                (let ((_e160184160340_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx161750161751_))))
                  (let ((_tl160182160347_
                         (let () (declare (not safe)) (##cdr _e160184160340_)))
                        (_hd160183160344_
                         (let ()
                           (declare (not safe))
                           (##car _e160184160340_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl160182160347_))
                        (let ((_e160187160350_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl160182160347_))))
                          (let ((_tl160185160357_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e160187160350_)))
                                (_hd160186160354_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e160187160350_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd160186160354_))
                                (let ((_e160188160360_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd160186160354_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e160188160360_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl160185160357_))
                                          (let ((___splice161755161756_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl160185160357_
                                                    '0))))
                                            (let ((_tl160191160367_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice161755161756_
                                                      '1)))
                                                  (_target160189160364_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice161755161756_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl160191160367_))
                                                  (___match161787161788_
                                                   _e160184160340_
                                                   _hd160183160344_
                                                   _tl160182160347_
                                                   _e160187160350_
                                                   _hd160186160354_
                                                   _tl160185160357_
                                                   _e160188160360_
                                                   ___splice161755161756_
                                                   _target160189160364_
                                                   _tl160191160367_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl160182160347_))
                                                      (let ((___splice161759161760_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl160182160347_ '0))))
                (let ((_tl160213160253_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161759161760_ '1)))
                      (_target160211160250_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161759161760_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl160213160253_))
                      (___match161801161802_
                       _e160184160340_
                       _hd160183160344_
                       _tl160182160347_
                       ___splice161759161760_
                       _target160211160250_
                       _tl160213160253_)
                      (let () (declare (not safe)) (_g160178160233_)))))
              (let () (declare (not safe)) (_g160178160233_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl160182160347_))
                                              (let ((___splice161759161760_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl160182160347_
                                                        '0))))
                                                (let ((_tl160213160253_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice161759161760_
                                                          '1)))
                                                      (_target160211160250_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice161759161760_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl160213160253_))
                                                      (___match161801161802_
                                                       _e160184160340_
                                                       _hd160183160344_
                                                       _tl160182160347_
                                                       ___splice161759161760_
                                                       _target160211160250_
                                                       _tl160213160253_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g160178160233_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g160178160233_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl160182160347_))
                                          (let ((___splice161759161760_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl160182160347_
                                                    '0))))
                                            (let ((_tl160213160253_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice161759161760_
                                                      '1)))
                                                  (_target160211160250_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice161759161760_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl160213160253_))
                                                  (___match161801161802_
                                                   _e160184160340_
                                                   _hd160183160344_
                                                   _tl160182160347_
                                                   ___splice161759161760_
                                                   _target160211160250_
                                                   _tl160213160253_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g160178160233_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g160178160233_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl160182160347_))
                                    (let ((___splice161759161760_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl160182160347_
                                              '0))))
                                      (let ((_tl160213160253_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161759161760_
                                                '1)))
                                            (_target160211160250_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161759161760_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160213160253_))
                                            (___match161801161802_
                                             _e160184160340_
                                             _hd160183160344_
                                             _tl160182160347_
                                             ___splice161759161760_
                                             _target160211160250_
                                             _tl160213160253_)
                                            (let ()
                                              (declare (not safe))
                                              (_g160178160233_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g160178160233_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl160182160347_))
                            (let ((___splice161759161760_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl160182160347_
                                      '0))))
                              (let ((_tl160213160253_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice161759161760_
                                        '1)))
                                    (_target160211160250_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice161759161760_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl160213160253_))
                                    (___match161801161802_
                                     _e160184160340_
                                     _hd160183160344_
                                     _tl160182160347_
                                     ___splice161759161760_
                                     _target160211160250_
                                     _tl160213160253_)
                                    (let ()
                                      (declare (not safe))
                                      (_g160178160233_)))))
                            (let () (declare (not safe)) (_g160178160233_))))))
                (let () (declare (not safe)) (_g160178160233_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx160455_)
      (let* ((_g160459160477_
              (lambda (_g160460160473_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160460160473_))))
             (_g160458160532_
              (lambda (_g160460160481_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160460160481_))
                    (let ((_e160465160484_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160460160481_))))
                      (let ((_hd160464160488_
                             (let ()
                               (declare (not safe))
                               (##car _e160465160484_)))
                            (_tl160463160491_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160465160484_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160463160491_))
                            (let ((_e160468160494_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160463160491_))))
                              (let ((_hd160467160498_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160468160494_)))
                                    (_tl160466160501_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160468160494_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl160466160501_))
                                    (let ((_e160471160504_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl160466160501_))))
                                      (let ((_hd160470160508_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160471160504_)))
                                            (_tl160469160511_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160471160504_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160469160511_))
                                            ((lambda (_L160514_ _L160516_)
                                               (let ((__tmp162194
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp162181
                                                      (let ((__tmp162190
                                                             (let ((__tmp162193
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp162191
                            (let ((__tmp162192
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp162192 '()))))
                       (declare (not safe))
                       (cons __tmp162193 __tmp162191)))
                    (__tmp162182
                     (let ((__tmp162187
                            (let ((__tmp162189
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp162188
                                   (let ()
                                     (declare (not safe))
                                     (cons _L160516_ '()))))
                              (declare (not safe))
                              (cons __tmp162189 __tmp162188)))
                           (__tmp162183
                            (let ((__tmp162184
                                   (let ((__tmp162186
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp162185
                                          (let ()
                                            (declare (not safe))
                                            (cons _L160514_ '()))))
                                     (declare (not safe))
                                     (cons __tmp162186 __tmp162185))))
                              (declare (not safe))
                              (cons __tmp162184 '()))))
                       (declare (not safe))
                       (cons __tmp162187 __tmp162183))))
                (declare (not safe))
                (cons __tmp162190 __tmp162182))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp162194
                                                       __tmp162181)))
                                             _hd160470160508_
                                             _hd160467160498_)
                                            (_g160459160477_
                                             _g160460160481_))))
                                    (_g160459160477_ _g160460160481_))))
                            (_g160459160477_ _g160460160481_))))
                    (_g160459160477_ _g160460160481_)))))
        (_g160458160532_ _$stx160455_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx160536_)
      (let* ((_g160540160558_
              (lambda (_g160541160554_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160541160554_))))
             (_g160539160613_
              (lambda (_g160541160562_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160541160562_))
                    (let ((_e160546160565_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160541160562_))))
                      (let ((_hd160545160569_
                             (let ()
                               (declare (not safe))
                               (##car _e160546160565_)))
                            (_tl160544160572_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160546160565_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160544160572_))
                            (let ((_e160549160575_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160544160572_))))
                              (let ((_hd160548160579_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160549160575_)))
                                    (_tl160547160582_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160549160575_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl160547160582_))
                                    (let ((_e160552160585_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl160547160582_))))
                                      (let ((_hd160551160589_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160552160585_)))
                                            (_tl160550160592_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160552160585_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160550160592_))
                                            ((lambda (_L160595_ _L160597_)
                                               (let ((__tmp162208
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp162195
                                                      (let ((__tmp162204
                                                             (let ((__tmp162207
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp162205
                            (let ((__tmp162206
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp162206 '()))))
                       (declare (not safe))
                       (cons __tmp162207 __tmp162205)))
                    (__tmp162196
                     (let ((__tmp162201
                            (let ((__tmp162203
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp162202
                                   (let ()
                                     (declare (not safe))
                                     (cons _L160597_ '()))))
                              (declare (not safe))
                              (cons __tmp162203 __tmp162202)))
                           (__tmp162197
                            (let ((__tmp162198
                                   (let ((__tmp162200
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp162199
                                          (let ()
                                            (declare (not safe))
                                            (cons _L160595_ '()))))
                                     (declare (not safe))
                                     (cons __tmp162200 __tmp162199))))
                              (declare (not safe))
                              (cons __tmp162198 '()))))
                       (declare (not safe))
                       (cons __tmp162201 __tmp162197))))
                (declare (not safe))
                (cons __tmp162204 __tmp162196))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp162208
                                                       __tmp162195)))
                                             _hd160551160589_
                                             _hd160548160579_)
                                            (_g160540160558_
                                             _g160541160562_))))
                                    (_g160540160558_ _g160541160562_))))
                            (_g160540160558_ _g160541160562_))))
                    (_g160540160558_ _g160541160562_)))))
        (_g160539160613_ _$stx160536_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx160617_)
      (let* ((___stx161804161805_ _$stx160617_)
             (_g160624160695_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161804161805_)))))
        (let ((___kont161807161808_
               (lambda (_L160986_ _L160988_)
                 (let ((__tmp162214
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp162209
                        (let ((__tmp162210
                               (let ((__tmp162211
                                      (let ((__tmp162213
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp162212
                                             (let ()
                                               (declare (not safe))
                                               (cons _L160986_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162213 __tmp162212))))
                                 (declare (not safe))
                                 (cons __tmp162211 '()))))
                          (declare (not safe))
                          (cons _L160988_ __tmp162210))))
                   (declare (not safe))
                   (cons __tmp162214 __tmp162209))))
              (___kont161809161810_
               (lambda (_L160905_ _L160907_)
                 (let ((__tmp162223
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp162215
                        (let ((__tmp162216
                               (let ((__tmp162217
                                      (let ((__tmp162222
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp162218
                                             (let ((__tmp162219
                                                    (lambda (_g160926160929_
                                                             _g160927160932_)
                                                      (let ((__tmp162220
                                                             (let ((__tmp162221
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g160926160929_ __tmp162221))))
                (declare (not safe))
                (cons __tmp162220 _g160927160932_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp162219
                                                       '()
                                                       _L160905_))))
                                        (declare (not safe))
                                        (cons __tmp162222 __tmp162218))))
                                 (declare (not safe))
                                 (cons __tmp162217 '()))))
                          (declare (not safe))
                          (cons _L160907_ __tmp162216))))
                   (declare (not safe))
                   (cons __tmp162223 __tmp162215))))
              (___kont161813161814_
               (lambda (_L160817_ _L160819_)
                 (let ((__tmp162230
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp162224
                        (let ((__tmp162225
                               (let ((__tmp162226
                                      (let ((__tmp162229
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp162227
                                             (let ((__tmp162228
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L160817_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp162228))))
                                        (declare (not safe))
                                        (cons __tmp162229 __tmp162227))))
                                 (declare (not safe))
                                 (cons __tmp162226 '()))))
                          (declare (not safe))
                          (cons _L160819_ __tmp162225))))
                   (declare (not safe))
                   (cons __tmp162230 __tmp162224))))
              (___kont161815161816_
               (lambda (_L160752_ _L160754_)
                 (let ((__tmp162240
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp162231
                        (let ((__tmp162232
                               (let ((__tmp162233
                                      (let ((__tmp162239
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp162234
                                             (let ((__tmp162235
                                                    (let ((__tmp162236
                                                           (lambda (_g160771160774_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g160772160777_)
                     (let ((__tmp162237
                            (let ((__tmp162238
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g160771160774_ __tmp162238))))
                       (declare (not safe))
                       (cons __tmp162237 _g160772160777_)))))
              (declare (not safe))
              (foldr1 __tmp162236 '() _L160752_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp162235))))
                                        (declare (not safe))
                                        (cons __tmp162239 __tmp162234))))
                                 (declare (not safe))
                                 (cons __tmp162233 '()))))
                          (declare (not safe))
                          (cons _L160754_ __tmp162232))))
                   (declare (not safe))
                   (cons __tmp162240 __tmp162231)))))
          (let* ((___match161923161924_
                  (lambda (_e160677160702_
                           _hd160676160706_
                           _tl160675160709_
                           _e160680160712_
                           _hd160679160716_
                           _tl160678160719_
                           ___splice161817161818_
                           _target160681160722_
                           _tl160683160725_)
                    (letrec ((_loop160684160728_
                              (lambda (_hd160682160732_ _arity160688160735_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd160682160732_))
                                    (let ((_e160685160738_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd160682160732_))))
                                      (let ((_lp-tl160687160745_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160685160738_)))
                                            (_lp-hd160686160742_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160685160738_))))
                                        (_loop160684160728_
                                         _lp-tl160687160745_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd160686160742_
                                                 _arity160688160735_)))))
                                    (let ((_arity160689160748_
                                           (reverse _arity160688160735_)))
                                      (___kont161815161816_
                                       _arity160689160748_
                                       _hd160679160716_))))))
                      (_loop160684160728_ _target160681160722_ '()))))
                 (___match161883161884_
                  (lambda (_e160645160841_
                           _hd160644160845_
                           _tl160643160848_
                           _e160648160851_
                           _hd160647160855_
                           _tl160646160858_
                           _e160651160861_
                           _hd160650160865_
                           _tl160649160868_
                           _e160652160871_
                           ___splice161811161812_
                           _target160653160875_
                           _tl160655160878_)
                    (letrec ((_loop160656160881_
                              (lambda (_hd160654160885_ _arity160660160888_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd160654160885_))
                                    (let ((_e160657160891_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd160654160885_))))
                                      (let ((_lp-tl160659160898_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160657160891_)))
                                            (_lp-hd160658160895_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160657160891_))))
                                        (_loop160656160881_
                                         _lp-tl160659160898_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd160658160895_
                                                 _arity160660160888_)))))
                                    (let ((_arity160661160901_
                                           (reverse _arity160660160888_)))
                                      (___kont161809161810_
                                       _arity160661160901_
                                       _hd160647160855_))))))
                      (_loop160656160881_ _target160653160875_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx161804161805_))
                (let ((_e160630160942_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx161804161805_))))
                  (let ((_tl160628160949_
                         (let () (declare (not safe)) (##cdr _e160630160942_)))
                        (_hd160629160946_
                         (let ()
                           (declare (not safe))
                           (##car _e160630160942_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl160628160949_))
                        (let ((_e160633160952_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl160628160949_))))
                          (let ((_tl160631160959_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e160633160952_)))
                                (_hd160632160956_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e160633160952_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl160631160959_))
                                (let ((_e160636160962_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl160631160959_))))
                                  (let ((_tl160634160969_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e160636160962_)))
                                        (_hd160635160966_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e160636160962_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd160635160966_))
                                        (let ((_e160637160972_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd160635160966_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e160637160972_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl160634160969_))
                                                  (let ((_e160640160976_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl160634160969_))))
                                                    (let ((_tl160638160983_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e160640160976_)))
                                                          (_hd160639160980_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e160640160976_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl160638160983_))
                                                          (___kont161807161808_
                                                           _hd160639160980_
                                                           _hd160632160956_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl160634160969_))
                      (let ((___splice161811161812_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl160634160969_ '0))))
                        (let ((_tl160655160878_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice161811161812_ '1)))
                              (_target160653160875_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice161811161812_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl160655160878_))
                              (___match161883161884_
                               _e160630160942_
                               _hd160629160946_
                               _tl160628160949_
                               _e160633160952_
                               _hd160632160956_
                               _tl160631160959_
                               _e160636160962_
                               _hd160635160966_
                               _tl160634160969_
                               _e160637160972_
                               ___splice161811161812_
                               _target160653160875_
                               _tl160655160878_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl160631160959_))
                                  (let ((___splice161817161818_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl160631160959_
                                            '0))))
                                    (let ((_tl160683160725_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice161817161818_
                                              '1)))
                                          (_target160681160722_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice161817161818_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl160683160725_))
                                          (___match161923161924_
                                           _e160630160942_
                                           _hd160629160946_
                                           _tl160628160949_
                                           _e160633160952_
                                           _hd160632160956_
                                           _tl160631160959_
                                           ___splice161817161818_
                                           _target160681160722_
                                           _tl160683160725_)
                                          (let ()
                                            (declare (not safe))
                                            (_g160624160695_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g160624160695_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl160631160959_))
                          (let ((___splice161817161818_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl160631160959_
                                    '0))))
                            (let ((_tl160683160725_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice161817161818_ '1)))
                                  (_target160681160722_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice161817161818_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl160683160725_))
                                  (___match161923161924_
                                   _e160630160942_
                                   _hd160629160946_
                                   _tl160628160949_
                                   _e160633160952_
                                   _hd160632160956_
                                   _tl160631160959_
                                   ___splice161817161818_
                                   _target160681160722_
                                   _tl160683160725_)
                                  (let ()
                                    (declare (not safe))
                                    (_g160624160695_)))))
                          (let () (declare (not safe)) (_g160624160695_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl160634160969_))
                                                      (let ((___splice161811161812_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl160634160969_ '0))))
                (let ((_tl160655160878_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161811161812_ '1)))
                      (_target160653160875_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161811161812_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl160655160878_))
                      (___match161883161884_
                       _e160630160942_
                       _hd160629160946_
                       _tl160628160949_
                       _e160633160952_
                       _hd160632160956_
                       _tl160631160959_
                       _e160636160962_
                       _hd160635160966_
                       _tl160634160969_
                       _e160637160972_
                       ___splice161811161812_
                       _target160653160875_
                       _tl160655160878_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl160634160969_))
                          (___kont161813161814_
                           _hd160635160966_
                           _hd160632160956_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl160631160959_))
                              (let ((___splice161817161818_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl160631160959_
                                        '0))))
                                (let ((_tl160683160725_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice161817161818_
                                          '1)))
                                      (_target160681160722_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice161817161818_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl160683160725_))
                                      (___match161923161924_
                                       _e160630160942_
                                       _hd160629160946_
                                       _tl160628160949_
                                       _e160633160952_
                                       _hd160632160956_
                                       _tl160631160959_
                                       ___splice161817161818_
                                       _target160681160722_
                                       _tl160683160725_)
                                      (let ()
                                        (declare (not safe))
                                        (_g160624160695_)))))
                              (let ()
                                (declare (not safe))
                                (_g160624160695_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl160634160969_))
                  (___kont161813161814_ _hd160635160966_ _hd160632160956_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl160631160959_))
                      (let ((___splice161817161818_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl160631160959_ '0))))
                        (let ((_tl160683160725_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice161817161818_ '1)))
                              (_target160681160722_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice161817161818_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl160683160725_))
                              (___match161923161924_
                               _e160630160942_
                               _hd160629160946_
                               _tl160628160949_
                               _e160633160952_
                               _hd160632160956_
                               _tl160631160959_
                               ___splice161817161818_
                               _target160681160722_
                               _tl160683160725_)
                              (let ()
                                (declare (not safe))
                                (_g160624160695_)))))
                      (let () (declare (not safe)) (_g160624160695_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl160634160969_))
                                                  (___kont161813161814_
                                                   _hd160635160966_
                                                   _hd160632160956_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl160631160959_))
                                                      (let ((___splice161817161818_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl160631160959_ '0))))
                (let ((_tl160683160725_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161817161818_ '1)))
                      (_target160681160722_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161817161818_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl160683160725_))
                      (___match161923161924_
                       _e160630160942_
                       _hd160629160946_
                       _tl160628160949_
                       _e160633160952_
                       _hd160632160956_
                       _tl160631160959_
                       ___splice161817161818_
                       _target160681160722_
                       _tl160683160725_)
                      (let () (declare (not safe)) (_g160624160695_)))))
              (let () (declare (not safe)) (_g160624160695_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160634160969_))
                                            (___kont161813161814_
                                             _hd160635160966_
                                             _hd160632160956_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl160631160959_))
                                                (let ((___splice161817161818_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl160631160959_
                                                          '0))))
                                                  (let ((_tl160683160725_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice161817161818_
                                                            '1)))
                                                        (_target160681160722_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice161817161818_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl160683160725_))
                                                        (___match161923161924_
                                                         _e160630160942_
                                                         _hd160629160946_
                                                         _tl160628160949_
                                                         _e160633160952_
                                                         _hd160632160956_
                                                         _tl160631160959_
                                                         ___splice161817161818_
                                                         _target160681160722_
                                                         _tl160683160725_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g160624160695_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g160624160695_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl160631160959_))
                                    (let ((___splice161817161818_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl160631160959_
                                              '0))))
                                      (let ((_tl160683160725_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161817161818_
                                                '1)))
                                            (_target160681160722_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161817161818_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160683160725_))
                                            (___match161923161924_
                                             _e160630160942_
                                             _hd160629160946_
                                             _tl160628160949_
                                             _e160633160952_
                                             _hd160632160956_
                                             _tl160631160959_
                                             ___splice161817161818_
                                             _target160681160722_
                                             _tl160683160725_)
                                            (let ()
                                              (declare (not safe))
                                              (_g160624160695_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g160624160695_))))))
                        (let () (declare (not safe)) (_g160624160695_)))))
                (let () (declare (not safe)) (_g160624160695_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx161012_)
      (let* ((___stx161926161927_ _$stx161012_)
             (_g161017161052_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161926161927_)))))
        (let ((___kont161929161930_
               (lambda (_L161174_ _L161176_)
                 (let ((__tmp162246
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp162241
                        (let ((__tmp162242
                               (let ((__tmp162243
                                      (let ((__tmp162245
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp162244
                                             (let ()
                                               (declare (not safe))
                                               (cons _L161174_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162245 __tmp162244))))
                                 (declare (not safe))
                                 (cons __tmp162243 '()))))
                          (declare (not safe))
                          (cons _L161176_ __tmp162242))))
                   (declare (not safe))
                   (cons __tmp162246 __tmp162241))))
              (___kont161931161932_
               (lambda (_L161109_ _L161111_)
                 (let ((__tmp162255
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp162247
                        (let ((__tmp162248
                               (let ((__tmp162249
                                      (let ((__tmp162254
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp162250
                                             (let ((__tmp162251
                                                    (lambda (_g161128161131_
                                                             _g161129161134_)
                                                      (let ((__tmp162252
                                                             (let ((__tmp162253
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g161128161131_ __tmp162253))))
                (declare (not safe))
                (cons __tmp162252 _g161129161134_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp162251
                                                       '()
                                                       _L161109_))))
                                        (declare (not safe))
                                        (cons __tmp162254 __tmp162250))))
                                 (declare (not safe))
                                 (cons __tmp162249 '()))))
                          (declare (not safe))
                          (cons _L161111_ __tmp162248))))
                   (declare (not safe))
                   (cons __tmp162255 __tmp162247)))))
          (let ((___match161975161976_
                 (lambda (_e161034161059_
                          _hd161033161063_
                          _tl161032161066_
                          _e161037161069_
                          _hd161036161073_
                          _tl161035161076_
                          ___splice161933161934_
                          _target161038161079_
                          _tl161040161082_)
                   (letrec ((_loop161041161085_
                             (lambda (_hd161039161089_ _arity161045161092_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd161039161089_))
                                   (let ((_e161042161095_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd161039161089_))))
                                     (let ((_lp-tl161044161102_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e161042161095_)))
                                           (_lp-hd161043161099_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e161042161095_))))
                                       (_loop161041161085_
                                        _lp-tl161044161102_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd161043161099_
                                                _arity161045161092_)))))
                                   (let ((_arity161046161105_
                                          (reverse _arity161045161092_)))
                                     (___kont161931161932_
                                      _arity161046161105_
                                      _hd161036161073_))))))
                     (_loop161041161085_ _target161038161079_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx161926161927_))
                (let ((_e161023161144_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx161926161927_))))
                  (let ((_tl161021161151_
                         (let () (declare (not safe)) (##cdr _e161023161144_)))
                        (_hd161022161148_
                         (let ()
                           (declare (not safe))
                           (##car _e161023161144_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl161021161151_))
                        (let ((_e161026161154_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl161021161151_))))
                          (let ((_tl161024161161_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e161026161154_)))
                                (_hd161025161158_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e161026161154_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl161024161161_))
                                (let ((_e161029161164_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl161024161161_))))
                                  (let ((_tl161027161171_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e161029161164_)))
                                        (_hd161028161168_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e161029161164_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl161027161171_))
                                        (___kont161929161930_
                                         _hd161028161168_
                                         _hd161025161158_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl161024161161_))
                                            (let ((___splice161933161934_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl161024161161_
                                                      '0))))
                                              (let ((_tl161040161082_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice161933161934_
                                                        '1)))
                                                    (_target161038161079_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice161933161934_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl161040161082_))
                                                    (___match161975161976_
                                                     _e161023161144_
                                                     _hd161022161148_
                                                     _tl161021161151_
                                                     _e161026161154_
                                                     _hd161025161158_
                                                     _tl161024161161_
                                                     ___splice161933161934_
                                                     _target161038161079_
                                                     _tl161040161082_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g161017161052_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g161017161052_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl161024161161_))
                                    (let ((___splice161933161934_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl161024161161_
                                              '0))))
                                      (let ((_tl161040161082_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161933161934_
                                                '1)))
                                            (_target161038161079_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161933161934_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl161040161082_))
                                            (___match161975161976_
                                             _e161023161144_
                                             _hd161022161148_
                                             _tl161021161151_
                                             _e161026161154_
                                             _hd161025161158_
                                             _tl161024161161_
                                             ___splice161933161934_
                                             _target161038161079_
                                             _tl161040161082_)
                                            (let ()
                                              (declare (not safe))
                                              (_g161017161052_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g161017161052_))))))
                        (let () (declare (not safe)) (_g161017161052_)))))
                (let () (declare (not safe)) (_g161017161052_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx161196_)
      (let* ((_g161200161235_
              (lambda (_g161201161231_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161201161231_))))
             (_g161199161363_
              (lambda (_g161201161239_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161201161239_))
                    (let ((_e161206161242_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161201161239_))))
                      (let ((_hd161205161246_
                             (let ()
                               (declare (not safe))
                               (##car _e161206161242_)))
                            (_tl161204161249_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161206161242_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl161204161249_))
                            (let ((_g162256_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl161204161249_
                                      '0))))
                              (begin
                                (let ((_g162257_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g162256_)
                                             (##vector-length _g162256_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g162257_ 2)))
                                      (error "Context expects 2 values"
                                             _g162257_)))
                                (let ((_target161207161252_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162256_ 0)))
                                      (_tl161209161255_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162256_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl161209161255_))
                                      (letrec ((_loop161210161258_
                                                (lambda (_hd161208161262_
                                                         _arity161214161265_
                                                         _prim161215161267_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd161208161262_))
                                                      (let ((_e161211161270_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd161208161262_))))
                (let ((_lp-hd161212161274_
                       (let () (declare (not safe)) (##car _e161211161270_)))
                      (_lp-tl161213161277_
                       (let () (declare (not safe)) (##cdr _e161211161270_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd161212161274_))
                      (let ((_e161220161280_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd161212161274_))))
                        (let ((_hd161219161284_
                               (let ()
                                 (declare (not safe))
                                 (##car _e161220161280_)))
                              (_tl161218161287_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e161220161280_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl161218161287_))
                              (let ((_g162266_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl161218161287_
                                        '0))))
                                (begin
                                  (let ((_g162267_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g162266_)
                                               (##vector-length _g162266_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g162267_ 2)))
                                        (error "Context expects 2 values"
                                               _g162267_)))
                                  (let ((_target161221161290_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g162266_ 0)))
                                        (_tl161223161293_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g162266_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl161223161293_))
                                        (letrec ((_loop161224161296_
                                                  (lambda (_hd161222161300_
                                                           _arity161228161303_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd161222161300_))
                                                        (let ((_e161225161306_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd161222161300_))))
                  (let ((_lp-hd161226161310_
                         (let () (declare (not safe)) (##car _e161225161306_)))
                        (_lp-tl161227161313_
                         (let ()
                           (declare (not safe))
                           (##cdr _e161225161306_))))
                    (_loop161224161296_
                     _lp-tl161227161313_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd161226161310_ _arity161228161303_)))))
                (let ((_arity161229161316_ (reverse _arity161228161303_)))
                  (_loop161210161258_
                   _lp-tl161213161277_
                   (let ()
                     (declare (not safe))
                     (cons _arity161229161316_ _arity161214161265_))
                   (let ()
                     (declare (not safe))
                     (cons _hd161219161284_ _prim161215161267_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop161224161296_
                                           _target161221161290_
                                           '()))
                                        (_g161200161235_ _g161201161239_)))))
                              (_g161200161235_ _g161201161239_))))
                      (_g161200161235_ _g161201161239_))))
              (let ((_arity161216161320_ (reverse _arity161214161265_))
                    (_prim161217161323_ (reverse _prim161215161267_)))
                ((lambda (_L161326_ _L161328_)
                   (let ((__tmp162265
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp162258
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L161326_
                               _L161328_))
                            (let ((__tmp162259
                                   (lambda (_g161343161349_
                                            _g161344161352_
                                            _g161345161354_)
                                     (let ((__tmp162260
                                            (let ((__tmp162264
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp162261
                                                   (let ((__tmp162262
                                                          (let ((__tmp162263
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g161346161357_ _g161347161360_)
                           (let ()
                             (declare (not safe))
                             (cons _g161346161357_ _g161347161360_)))))
                    (declare (not safe))
                    (foldr1 __tmp162263 '() _g161343161349_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g161344161352_
                                                           __tmp162262))))
                                              (declare (not safe))
                                              (cons __tmp162264 __tmp162261))))
                                       (declare (not safe))
                                       (cons __tmp162260 _g161345161354_)))))
                              (declare (not safe))
                              (foldr2 __tmp162259 '() _L161326_ _L161328_)))))
                     (declare (not safe))
                     (cons __tmp162265 __tmp162258)))
                 _arity161216161320_
                 _prim161217161323_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop161210161258_
                                         _target161207161252_
                                         '()
                                         '()))
                                      (_g161200161235_ _g161201161239_)))))
                            (_g161200161235_ _g161201161239_))))
                    (_g161200161235_ _g161201161239_)))))
        (_g161199161363_ _$stx161196_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx161369_)
      (let* ((_g161373161408_
              (lambda (_g161374161404_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161374161404_))))
             (_g161372161536_
              (lambda (_g161374161412_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161374161412_))
                    (let ((_e161379161415_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161374161412_))))
                      (let ((_hd161378161419_
                             (let ()
                               (declare (not safe))
                               (##car _e161379161415_)))
                            (_tl161377161422_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161379161415_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl161377161422_))
                            (let ((_g162268_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl161377161422_
                                      '0))))
                              (begin
                                (let ((_g162269_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g162268_)
                                             (##vector-length _g162268_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g162269_ 2)))
                                      (error "Context expects 2 values"
                                             _g162269_)))
                                (let ((_target161380161425_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162268_ 0)))
                                      (_tl161382161428_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162268_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl161382161428_))
                                      (letrec ((_loop161383161431_
                                                (lambda (_hd161381161435_
                                                         _arity161387161438_
                                                         _prim161388161440_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd161381161435_))
                                                      (let ((_e161384161443_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd161381161435_))))
                (let ((_lp-hd161385161447_
                       (let () (declare (not safe)) (##car _e161384161443_)))
                      (_lp-tl161386161450_
                       (let () (declare (not safe)) (##cdr _e161384161443_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd161385161447_))
                      (let ((_e161393161453_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd161385161447_))))
                        (let ((_hd161392161457_
                               (let ()
                                 (declare (not safe))
                                 (##car _e161393161453_)))
                              (_tl161391161460_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e161393161453_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl161391161460_))
                              (let ((_g162278_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl161391161460_
                                        '0))))
                                (begin
                                  (let ((_g162279_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g162278_)
                                               (##vector-length _g162278_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g162279_ 2)))
                                        (error "Context expects 2 values"
                                               _g162279_)))
                                  (let ((_target161394161463_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g162278_ 0)))
                                        (_tl161396161466_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g162278_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl161396161466_))
                                        (letrec ((_loop161397161469_
                                                  (lambda (_hd161395161473_
                                                           _arity161401161476_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd161395161473_))
                                                        (let ((_e161398161479_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd161395161473_))))
                  (let ((_lp-hd161399161483_
                         (let () (declare (not safe)) (##car _e161398161479_)))
                        (_lp-tl161400161486_
                         (let ()
                           (declare (not safe))
                           (##cdr _e161398161479_))))
                    (_loop161397161469_
                     _lp-tl161400161486_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd161399161483_ _arity161401161476_)))))
                (let ((_arity161402161489_ (reverse _arity161401161476_)))
                  (_loop161383161431_
                   _lp-tl161386161450_
                   (let ()
                     (declare (not safe))
                     (cons _arity161402161489_ _arity161387161438_))
                   (let ()
                     (declare (not safe))
                     (cons _hd161392161457_ _prim161388161440_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop161397161469_
                                           _target161394161463_
                                           '()))
                                        (_g161373161408_ _g161374161412_)))))
                              (_g161373161408_ _g161374161412_))))
                      (_g161373161408_ _g161374161412_))))
              (let ((_arity161389161493_ (reverse _arity161387161438_))
                    (_prim161390161496_ (reverse _prim161388161440_)))
                ((lambda (_L161499_ _L161501_)
                   (let ((__tmp162277
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp162270
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L161499_
                               _L161501_))
                            (let ((__tmp162271
                                   (lambda (_g161516161522_
                                            _g161517161525_
                                            _g161518161527_)
                                     (let ((__tmp162272
                                            (let ((__tmp162276
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp162273
                                                   (let ((__tmp162274
                                                          (let ((__tmp162275
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g161519161530_ _g161520161533_)
                           (let ()
                             (declare (not safe))
                             (cons _g161519161530_ _g161520161533_)))))
                    (declare (not safe))
                    (foldr1 __tmp162275 '() _g161516161522_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g161517161525_
                                                           __tmp162274))))
                                              (declare (not safe))
                                              (cons __tmp162276 __tmp162273))))
                                       (declare (not safe))
                                       (cons __tmp162272 _g161518161527_)))))
                              (declare (not safe))
                              (foldr2 __tmp162271 '() _L161499_ _L161501_)))))
                     (declare (not safe))
                     (cons __tmp162277 __tmp162270)))
                 _arity161389161493_
                 _prim161390161496_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop161383161431_
                                         _target161380161425_
                                         '()
                                         '()))
                                      (_g161373161408_ _g161374161412_)))))
                            (_g161373161408_ _g161374161412_))))
                    (_g161373161408_ _g161374161412_)))))
        (_g161372161536_ _$stx161369_)))))
