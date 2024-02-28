(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx158451_)
      (let* ((_g158455158473_
              (lambda (_g158456158469_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158456158469_))))
             (_g158454158528_
              (lambda (_g158456158477_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158456158477_))
                    (let ((_e158461158480_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158456158477_))))
                      (let ((_hd158460158484_
                             (let ()
                               (declare (not safe))
                               (##car _e158461158480_)))
                            (_tl158459158487_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158461158480_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158459158487_))
                            (let ((_e158464158490_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158459158487_))))
                              (let ((_hd158463158494_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158464158490_)))
                                    (_tl158462158497_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158464158490_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl158462158497_))
                                    (let ((_e158467158500_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl158462158497_))))
                                      (let ((_hd158466158504_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e158467158500_)))
                                            (_tl158465158507_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e158467158500_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl158465158507_))
                                            ((lambda (_L158510_ _L158512_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L158512_))
                                                   (let ((__tmp161992
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp161987
                                                          (let ((__tmp161989
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp161991
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp161990
                                (let ()
                                  (declare (not safe))
                                  (cons _L158512_ '()))))
                           (declare (not safe))
                           (cons __tmp161991 __tmp161990)))
                        (__tmp161988
                         (let () (declare (not safe)) (cons _L158510_ '()))))
                    (declare (not safe))
                    (cons __tmp161989 __tmp161988))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp161992
                                                           __tmp161987))
                                                   (_g158455158473_
                                                    _g158456158477_)))
                                             _hd158466158504_
                                             _hd158463158494_)
                                            (_g158455158473_
                                             _g158456158477_))))
                                    (_g158455158473_ _g158456158477_))))
                            (_g158455158473_ _g158456158477_))))
                    (_g158455158473_ _g158456158477_)))))
        (_g158454158528_ _$stx158451_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx158532_)
      (let* ((_g158536158565_
              (lambda (_g158537158561_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158537158561_))))
             (_g158535158665_
              (lambda (_g158537158569_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158537158569_))
                    (let ((_e158542158572_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158537158569_))))
                      (let ((_hd158541158576_
                             (let ()
                               (declare (not safe))
                               (##car _e158542158572_)))
                            (_tl158540158579_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158542158572_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl158540158579_))
                            (let ((_g161993_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl158540158579_
                                      '0))))
                              (begin
                                (let ((_g161994_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g161993_)
                                             (##vector-length _g161993_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g161994_ 2)))
                                      (error "Context expects 2 values"
                                             _g161994_)))
                                (let ((_target158543158582_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161993_ 0)))
                                      (_tl158545158585_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161993_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl158545158585_))
                                      (letrec ((_loop158546158588_
                                                (lambda (_hd158544158592_
                                                         _type158550158595_
                                                         _symbol158551158597_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd158544158592_))
                                                      (let ((_e158547158600_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd158544158592_))))
                (let ((_lp-hd158548158604_
                       (let () (declare (not safe)) (##car _e158547158600_)))
                      (_lp-tl158549158607_
                       (let () (declare (not safe)) (##cdr _e158547158600_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd158548158604_))
                      (let ((_e158556158610_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd158548158604_))))
                        (let ((_hd158555158614_
                               (let ()
                                 (declare (not safe))
                                 (##car _e158556158610_)))
                              (_tl158554158617_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e158556158610_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl158554158617_))
                              (let ((_e158559158620_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl158554158617_))))
                                (let ((_hd158558158624_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e158559158620_)))
                                      (_tl158557158627_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e158559158620_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl158557158627_))
                                      (_loop158546158588_
                                       _lp-tl158549158607_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd158558158624_
                                               _type158550158595_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd158555158614_
                                               _symbol158551158597_)))
                                      (_g158536158565_ _g158537158569_))))
                              (_g158536158565_ _g158537158569_))))
                      (_g158536158565_ _g158537158569_))))
              (let ((_type158552158630_ (reverse _type158550158595_))
                    (_symbol158553158633_ (reverse _symbol158551158597_)))
                ((lambda (_L158636_ _L158638_)
                   (let ((__tmp162001
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp161995
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L158636_
                               _L158638_))
                            (let ((__tmp161996
                                   (lambda (_g158653158657_
                                            _g158654158660_
                                            _g158655158662_)
                                     (let ((__tmp161997
                                            (let ((__tmp162000
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp161998
                                                   (let ((__tmp161999
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g158653158657_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g158654158660_
                                                           __tmp161999))))
                                              (declare (not safe))
                                              (cons __tmp162000 __tmp161998))))
                                       (declare (not safe))
                                       (cons __tmp161997 _g158655158662_)))))
                              (declare (not safe))
                              (foldr2 __tmp161996 '() _L158636_ _L158638_)))))
                     (declare (not safe))
                     (cons __tmp162001 __tmp161995)))
                 _type158552158630_
                 _symbol158553158633_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop158546158588_
                                         _target158543158582_
                                         '()
                                         '()))
                                      (_g158536158565_ _g158537158569_)))))
                            (_g158536158565_ _g158537158569_))))
                    (_g158536158565_ _g158537158569_)))))
        (_g158535158665_ _$stx158532_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx158670_)
      (let* ((___stx161552161553_ _$stx158670_)
             (_g158675158717_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161552161553_)))))
        (let ((___kont161555161556_
               (lambda (_L158845_ _L158847_ _L158848_ _L158849_)
                 (let ((__tmp162015
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp162002
                        (let ((__tmp162012
                               (let ((__tmp162014
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp162013
                                      (let ()
                                        (declare (not safe))
                                        (cons _L158849_ '()))))
                                 (declare (not safe))
                                 (cons __tmp162014 __tmp162013)))
                              (__tmp162003
                               (let ((__tmp162009
                                      (let ((__tmp162011
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp162010
                                             (let ()
                                               (declare (not safe))
                                               (cons _L158848_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162011 __tmp162010)))
                                     (__tmp162004
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
                                                      (cons _L158847_ '()))))
                                               (declare (not safe))
                                               (cons __tmp162008 __tmp162007)))
                                            (__tmp162005
                                             (let ()
                                               (declare (not safe))
                                               (cons _L158845_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162006 __tmp162005))))
                                 (declare (not safe))
                                 (cons __tmp162009 __tmp162004))))
                          (declare (not safe))
                          (cons __tmp162012 __tmp162003))))
                   (declare (not safe))
                   (cons __tmp162015 __tmp162002))))
              (___kont161557161558_
               (lambda (_L158764_ _L158766_ _L158767_ _L158768_)
                 (let ((__tmp162016
                        (let ((__tmp162017
                               (let ((__tmp162018
                                      (let ((__tmp162019
                                             (let ((__tmp162020
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp162020 '()))))
                                        (declare (not safe))
                                        (cons _L158764_ __tmp162019))))
                                 (declare (not safe))
                                 (cons _L158766_ __tmp162018))))
                          (declare (not safe))
                          (cons _L158767_ __tmp162017))))
                   (declare (not safe))
                   (cons _L158768_ __tmp162016)))))
          (let ((___match161591161592_
                 (lambda (_e158683158795_
                          _hd158682158799_
                          _tl158681158802_
                          _e158686158805_
                          _hd158685158809_
                          _tl158684158812_
                          _e158689158815_
                          _hd158688158819_
                          _tl158687158822_
                          _e158692158825_
                          _hd158691158829_
                          _tl158690158832_
                          _e158695158835_
                          _hd158694158839_
                          _tl158693158842_)
                   (let ((_L158845_ _hd158694158839_)
                         (_L158847_ _hd158691158829_)
                         (_L158848_ _hd158688158819_)
                         (_L158849_ _hd158685158809_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L158849_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L158848_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L158847_)))
                         (___kont161555161556_
                          _L158845_
                          _L158847_
                          _L158848_
                          _L158849_)
                         (let () (declare (not safe)) (_g158675158717_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx161552161553_))
                (let ((_e158683158795_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx161552161553_))))
                  (let ((_tl158681158802_
                         (let () (declare (not safe)) (##cdr _e158683158795_)))
                        (_hd158682158799_
                         (let ()
                           (declare (not safe))
                           (##car _e158683158795_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl158681158802_))
                        (let ((_e158686158805_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl158681158802_))))
                          (let ((_tl158684158812_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e158686158805_)))
                                (_hd158685158809_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e158686158805_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl158684158812_))
                                (let ((_e158689158815_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl158684158812_))))
                                  (let ((_tl158687158822_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e158689158815_)))
                                        (_hd158688158819_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e158689158815_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl158687158822_))
                                        (let ((_e158692158825_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl158687158822_))))
                                          (let ((_tl158690158832_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e158692158825_)))
                                                (_hd158691158829_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e158692158825_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl158690158832_))
                                                (let ((_e158695158835_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl158690158832_))))
                                                  (let ((_tl158693158842_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e158695158835_)))
                                                        (_hd158694158839_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e158695158835_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl158693158842_))
                                                        (___match161591161592_
                                                         _e158683158795_
                                                         _hd158682158799_
                                                         _tl158681158802_
                                                         _e158686158805_
                                                         _hd158685158809_
                                                         _tl158684158812_
                                                         _e158689158815_
                                                         _hd158688158819_
                                                         _tl158687158822_
                                                         _e158692158825_
                                                         _hd158691158829_
                                                         _tl158690158832_
                                                         _e158695158835_
                                                         _hd158694158839_
                                                         _tl158693158842_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g158675158717_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl158690158832_))
                                                    (___kont161557161558_
                                                     _hd158691158829_
                                                     _hd158688158819_
                                                     _hd158685158809_
                                                     _hd158682158799_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g158675158717_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g158675158717_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g158675158717_)))))
                        (let () (declare (not safe)) (_g158675158717_)))))
                (let () (declare (not safe)) (_g158675158717_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx158874_)
      (let* ((_g158878158913_
              (lambda (_g158879158909_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158879158909_))))
             (_g158877159032_
              (lambda (_g158879158917_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158879158917_))
                    (let ((_e158885158920_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158879158917_))))
                      (let ((_hd158884158924_
                             (let ()
                               (declare (not safe))
                               (##car _e158885158920_)))
                            (_tl158883158927_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158885158920_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl158883158927_))
                            (let ((_g162021_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl158883158927_
                                      '0))))
                              (begin
                                (let ((_g162022_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g162021_)
                                             (##vector-length _g162021_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g162022_ 2)))
                                      (error "Context expects 2 values"
                                             _g162022_)))
                                (let ((_target158886158930_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162021_ 0)))
                                      (_tl158888158933_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162021_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl158888158933_))
                                      (letrec ((_loop158889158936_
                                                (lambda (_hd158887158940_
                                                         _symbol158893158943_
                                                         _method158894158945_
                                                         _type-t158895158947_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd158887158940_))
                                                      (let ((_e158890158950_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd158887158940_))))
                (let ((_lp-hd158891158954_
                       (let () (declare (not safe)) (##car _e158890158950_)))
                      (_lp-tl158892158957_
                       (let () (declare (not safe)) (##cdr _e158890158950_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd158891158954_))
                      (let ((_e158901158960_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd158891158954_))))
                        (let ((_hd158900158964_
                               (let ()
                                 (declare (not safe))
                                 (##car _e158901158960_)))
                              (_tl158899158967_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e158901158960_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl158899158967_))
                              (let ((_e158904158970_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl158899158967_))))
                                (let ((_hd158903158974_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e158904158970_)))
                                      (_tl158902158977_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e158904158970_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl158902158977_))
                                      (let ((_e158907158980_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl158902158977_))))
                                        (let ((_hd158906158984_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e158907158980_)))
                                              (_tl158905158987_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e158907158980_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl158905158987_))
                                              (_loop158889158936_
                                               _lp-tl158892158957_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd158906158984_
                                                       _symbol158893158943_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd158903158974_
                                                       _method158894158945_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd158900158964_
                                                       _type-t158895158947_)))
                                              (_g158878158913_
                                               _g158879158917_))))
                                      (_g158878158913_ _g158879158917_))))
                              (_g158878158913_ _g158879158917_))))
                      (_g158878158913_ _g158879158917_))))
              (let ((_symbol158896158990_ (reverse _symbol158893158943_))
                    (_method158897158993_ (reverse _method158894158945_))
                    (_type-t158898158995_ (reverse _type-t158895158947_)))
                ((lambda (_L158998_ _L159000_ _L159001_)
                   (let ((__tmp162030
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp162023
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L158998_
                               _L159000_
                               _L159001_))
                            (let ((__tmp162024
                                   (lambda (_g159017159022_
                                            _g159018159025_
                                            _g159019159027_
                                            _g159020159029_)
                                     (let ((__tmp162025
                                            (let ((__tmp162029
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp162026
                                                   (let ((__tmp162027
                                                          (let ((__tmp162028
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g159017159022_ '()))))
                    (declare (not safe))
                    (cons _g159018159025_ __tmp162028))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g159019159027_
                                                           __tmp162027))))
                                              (declare (not safe))
                                              (cons __tmp162029 __tmp162026))))
                                       (declare (not safe))
                                       (cons __tmp162025 _g159020159029_)))))
                              (declare (not safe))
                              (foldr* __tmp162024
                                      '()
                                      _L158998_
                                      _L159000_
                                      _L159001_)))))
                     (declare (not safe))
                     (cons __tmp162030 __tmp162023)))
                 _symbol158896158990_
                 _method158897158993_
                 _type-t158898158995_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop158889158936_
                                         _target158886158930_
                                         '()
                                         '()
                                         '()))
                                      (_g158878158913_ _g158879158917_)))))
                            (_g158878158913_ _g158879158917_))))
                    (_g158878158913_ _g158879158917_)))))
        (_g158877159032_ _$stx158874_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx159037_)
      (let* ((_g159041159074_
              (lambda (_g159042159070_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159042159070_))))
             (_g159040159188_
              (lambda (_g159042159078_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159042159078_))
                    (let ((_e159048159081_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159042159078_))))
                      (let ((_hd159047159085_
                             (let ()
                               (declare (not safe))
                               (##car _e159048159081_)))
                            (_tl159046159088_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159048159081_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159046159088_))
                            (let ((_e159051159091_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159046159088_))))
                              (let ((_hd159050159095_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159051159091_)))
                                    (_tl159049159098_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159051159091_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl159049159098_))
                                    (let ((_g162031_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl159049159098_
                                              '0))))
                                      (begin
                                        (let ((_g162032_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g162031_)
                                                     (##vector-length
                                                      _g162031_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g162032_ 2)))
                                              (error "Context expects 2 values"
                                                     _g162032_)))
                                        (let ((_target159052159101_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g162031_ 0)))
                                              (_tl159054159104_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g162031_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl159054159104_))
                                              (letrec ((_loop159055159107_
                                                        (lambda (_hd159053159111_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol159059159114_
                         _method159060159116_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd159053159111_))
                      (let ((_e159056159119_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd159053159111_))))
                        (let ((_lp-hd159057159123_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159056159119_)))
                              (_lp-tl159058159126_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159056159119_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd159057159123_))
                              (let ((_e159065159129_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd159057159123_))))
                                (let ((_hd159064159133_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e159065159129_)))
                                      (_tl159063159136_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e159065159129_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl159063159136_))
                                      (let ((_e159068159139_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl159063159136_))))
                                        (let ((_hd159067159143_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e159068159139_)))
                                              (_tl159066159146_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e159068159139_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl159066159146_))
                                              (_loop159055159107_
                                               _lp-tl159058159126_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd159067159143_
                                                       _symbol159059159114_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd159064159133_
                                                       _method159060159116_)))
                                              (_g159041159074_
                                               _g159042159078_))))
                                      (_g159041159074_ _g159042159078_))))
                              (_g159041159074_ _g159042159078_))))
                      (let ((_symbol159061159149_
                             (reverse _symbol159059159114_))
                            (_method159062159152_
                             (reverse _method159060159116_)))
                        ((lambda (_L159155_ _L159157_ _L159158_)
                           (let ((__tmp162040
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp162033
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L159155_
                                       _L159157_))
                                    (let ((__tmp162034
                                           (lambda (_g159176159180_
                                                    _g159177159183_
                                                    _g159178159185_)
                                             (let ((__tmp162035
                                                    (let ((__tmp162039
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp162036
                                                           (let ((__tmp162037
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp162038
                                 (let ()
                                   (declare (not safe))
                                   (cons _g159176159180_ '()))))
                            (declare (not safe))
                            (cons _g159177159183_ __tmp162038))))
                     (declare (not safe))
                     (cons _L159158_ __tmp162037))))
              (declare (not safe))
              (cons __tmp162039 __tmp162036))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp162035
                                                     _g159178159185_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp162034
                                              '()
                                              _L159155_
                                              _L159157_)))))
                             (declare (not safe))
                             (cons __tmp162040 __tmp162033)))
                         _symbol159061159149_
                         _method159062159152_
                         _hd159050159095_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop159055159107_
                                                 _target159052159101_
                                                 '()
                                                 '()))
                                              (_g159041159074_
                                               _g159042159078_)))))
                                    (_g159041159074_ _g159042159078_))))
                            (_g159041159074_ _g159042159078_))))
                    (_g159041159074_ _g159042159078_)))))
        (_g159040159188_ _$stx159037_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx159193_)
      (let* ((_g159197159211_
              (lambda (_g159198159207_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159198159207_))))
             (_g159196159252_
              (lambda (_g159198159215_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159198159215_))
                    (let ((_e159202159218_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159198159215_))))
                      (let ((_hd159201159222_
                             (let ()
                               (declare (not safe))
                               (##car _e159202159218_)))
                            (_tl159200159225_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159202159218_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159200159225_))
                            (let ((_e159205159228_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159200159225_))))
                              (let ((_hd159204159232_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159205159228_)))
                                    (_tl159203159235_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159205159228_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl159203159235_))
                                    ((lambda (_L159238_)
                                       (let ((__tmp162045
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp162041
                                              (let ((__tmp162042
                                                     (let ((__tmp162044
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp162043
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L159238_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp162044 __tmp162043))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp162042 '()))))
                                         (declare (not safe))
                                         (cons __tmp162045 __tmp162041)))
                                     _hd159204159232_)
                                    (_g159197159211_ _g159198159215_))))
                            (_g159197159211_ _g159198159215_))))
                    (_g159197159211_ _g159198159215_)))))
        (_g159196159252_ _$stx159193_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx159256_)
      (let* ((_g159260159310_
              (lambda (_g159261159306_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159261159306_))))
             (_g159259159477_
              (lambda (_g159261159314_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159261159314_))
                    (let ((_e159274159317_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159261159314_))))
                      (let ((_hd159273159321_
                             (let ()
                               (declare (not safe))
                               (##car _e159274159317_)))
                            (_tl159272159324_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159274159317_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159272159324_))
                            (let ((_e159277159327_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159272159324_))))
                              (let ((_hd159276159331_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159277159327_)))
                                    (_tl159275159334_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159277159327_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl159275159334_))
                                    (let ((_e159280159337_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl159275159334_))))
                                      (let ((_hd159279159341_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159280159337_)))
                                            (_tl159278159344_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159280159337_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl159278159344_))
                                            (let ((_e159283159347_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl159278159344_))))
                                              (let ((_hd159282159351_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159283159347_)))
                                                    (_tl159281159354_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159283159347_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl159281159354_))
                                                    (let ((_e159286159357_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl159281159354_))))
                                                      (let ((_hd159285159361_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e159286159357_)))
                    (_tl159284159364_
                     (let () (declare (not safe)) (##cdr _e159286159357_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl159284159364_))
                    (let ((_e159289159367_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl159284159364_))))
                      (let ((_hd159288159371_
                             (let ()
                               (declare (not safe))
                               (##car _e159289159367_)))
                            (_tl159287159374_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159289159367_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159287159374_))
                            (let ((_e159292159377_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159287159374_))))
                              (let ((_hd159291159381_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159292159377_)))
                                    (_tl159290159384_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159292159377_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl159290159384_))
                                    (let ((_e159295159387_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl159290159384_))))
                                      (let ((_hd159294159391_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159295159387_)))
                                            (_tl159293159394_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159295159387_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl159293159394_))
                                            (let ((_e159298159397_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl159293159394_))))
                                              (let ((_hd159297159401_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159298159397_)))
                                                    (_tl159296159404_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159298159397_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl159296159404_))
                                                    (let ((_e159301159407_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl159296159404_))))
                                                      (let ((_hd159300159411_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e159301159407_)))
                    (_tl159299159414_
                     (let () (declare (not safe)) (##cdr _e159301159407_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl159299159414_))
                    (let ((_e159304159417_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl159299159414_))))
                      (let ((_hd159303159421_
                             (let ()
                               (declare (not safe))
                               (##car _e159304159417_)))
                            (_tl159302159424_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159304159417_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl159302159424_))
                            ((lambda (_L159427_
                                      _L159429_
                                      _L159430_
                                      _L159431_
                                      _L159432_
                                      _L159433_
                                      _L159434_
                                      _L159435_
                                      _L159436_
                                      _L159437_)
                               (let ((__tmp162080
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0
                                         '#f
                                         'make-!class)))
                                     (__tmp162046
                                      (let ((__tmp162077
                                             (let ((__tmp162079
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp162078
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L159437_ '()))))
                                               (declare (not safe))
                                               (cons __tmp162079 __tmp162078)))
                                            (__tmp162047
                                             (let ((__tmp162074
                                                    (let ((__tmp162076
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote)))
                                                          (__tmp162075
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L159436_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp162076 __tmp162075)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp162048
                                                    (let ((__tmp162071
                                                           (let ((__tmp162073
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp162072
                          (let () (declare (not safe)) (cons _L159435_ '()))))
                     (declare (not safe))
                     (cons __tmp162073 __tmp162072)))
                  (__tmp162049
                   (let ((__tmp162068
                          (let ((__tmp162070
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote)))
                                (__tmp162069
                                 (let ()
                                   (declare (not safe))
                                   (cons _L159434_ '()))))
                            (declare (not safe))
                            (cons __tmp162070 __tmp162069)))
                         (__tmp162050
                          (let ((__tmp162065
                                 (let ((__tmp162067
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'quote)))
                                       (__tmp162066
                                        (let ()
                                          (declare (not safe))
                                          (cons _L159433_ '()))))
                                   (declare (not safe))
                                   (cons __tmp162067 __tmp162066)))
                                (__tmp162051
                                 (let ((__tmp162062
                                        (let ((__tmp162064
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'quote)))
                                              (__tmp162063
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L159432_ '()))))
                                          (declare (not safe))
                                          (cons __tmp162064 __tmp162063)))
                                       (__tmp162052
                                        (let ((__tmp162053
                                               (let ((__tmp162054
                                                      (let ((__tmp162059
                                                             (let ((__tmp162061
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp162060
                            (let ()
                              (declare (not safe))
                              (cons _L159429_ '()))))
                       (declare (not safe))
                       (cons __tmp162061 __tmp162060)))
                    (__tmp162055
                     (let ((__tmp162056
                            (let ((__tmp162058
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp162057
                                   (let ()
                                     (declare (not safe))
                                     (cons _L159427_ '()))))
                              (declare (not safe))
                              (cons __tmp162058 __tmp162057))))
                       (declare (not safe))
                       (cons __tmp162056 '()))))
                (declare (not safe))
                (cons __tmp162059 __tmp162055))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L159430_
                                                       __tmp162054))))
                                          (declare (not safe))
                                          (cons _L159431_ __tmp162053))))
                                   (declare (not safe))
                                   (cons __tmp162062 __tmp162052))))
                            (declare (not safe))
                            (cons __tmp162065 __tmp162051))))
                     (declare (not safe))
                     (cons __tmp162068 __tmp162050))))
              (declare (not safe))
              (cons __tmp162071 __tmp162049))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp162074
                                                     __tmp162048))))
                                        (declare (not safe))
                                        (cons __tmp162077 __tmp162047))))
                                 (declare (not safe))
                                 (cons __tmp162080 __tmp162046)))
                             _hd159303159421_
                             _hd159300159411_
                             _hd159297159401_
                             _hd159294159391_
                             _hd159291159381_
                             _hd159288159371_
                             _hd159285159361_
                             _hd159282159351_
                             _hd159279159341_
                             _hd159276159331_)
                            (_g159260159310_ _g159261159314_))))
                    (_g159260159310_ _g159261159314_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g159260159310_
                                                     _g159261159314_))))
                                            (_g159260159310_
                                             _g159261159314_))))
                                    (_g159260159310_ _g159261159314_))))
                            (_g159260159310_ _g159261159314_))))
                    (_g159260159310_ _g159261159314_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g159260159310_
                                                     _g159261159314_))))
                                            (_g159260159310_
                                             _g159261159314_))))
                                    (_g159260159310_ _g159261159314_))))
                            (_g159260159310_ _g159261159314_))))
                    (_g159260159310_ _g159261159314_)))))
        (_g159259159477_ _$stx159256_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx159481_)
      (let* ((_g159485159499_
              (lambda (_g159486159495_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159486159495_))))
             (_g159484159540_
              (lambda (_g159486159503_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159486159503_))
                    (let ((_e159490159506_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159486159503_))))
                      (let ((_hd159489159510_
                             (let ()
                               (declare (not safe))
                               (##car _e159490159506_)))
                            (_tl159488159513_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159490159506_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159488159513_))
                            (let ((_e159493159516_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159488159513_))))
                              (let ((_hd159492159520_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159493159516_)))
                                    (_tl159491159523_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159493159516_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl159491159523_))
                                    ((lambda (_L159526_)
                                       (let ((__tmp162085
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp162081
                                              (let ((__tmp162082
                                                     (let ((__tmp162084
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp162083
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L159526_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp162084 __tmp162083))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp162082 '()))))
                                         (declare (not safe))
                                         (cons __tmp162085 __tmp162081)))
                                     _hd159492159520_)
                                    (_g159485159499_ _g159486159503_))))
                            (_g159485159499_ _g159486159503_))))
                    (_g159485159499_ _g159486159503_)))))
        (_g159484159540_ _$stx159481_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx159544_)
      (let* ((_g159548159562_
              (lambda (_g159549159558_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159549159558_))))
             (_g159547159603_
              (lambda (_g159549159566_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159549159566_))
                    (let ((_e159553159569_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159549159566_))))
                      (let ((_hd159552159573_
                             (let ()
                               (declare (not safe))
                               (##car _e159553159569_)))
                            (_tl159551159576_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159553159569_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159551159576_))
                            (let ((_e159556159579_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159551159576_))))
                              (let ((_hd159555159583_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159556159579_)))
                                    (_tl159554159586_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159556159579_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl159554159586_))
                                    ((lambda (_L159589_)
                                       (let ((__tmp162090
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp162086
                                              (let ((__tmp162087
                                                     (let ((__tmp162089
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp162088
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L159589_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp162089 __tmp162088))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp162087 '()))))
                                         (declare (not safe))
                                         (cons __tmp162090 __tmp162086)))
                                     _hd159555159583_)
                                    (_g159548159562_ _g159549159566_))))
                            (_g159548159562_ _g159549159566_))))
                    (_g159548159562_ _g159549159566_)))))
        (_g159547159603_ _$stx159544_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx159607_)
      (let* ((_g159611159633_
              (lambda (_g159612159629_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159612159629_))))
             (_g159610159702_
              (lambda (_g159612159637_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159612159637_))
                    (let ((_e159618159640_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159612159637_))))
                      (let ((_hd159617159644_
                             (let ()
                               (declare (not safe))
                               (##car _e159618159640_)))
                            (_tl159616159647_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159618159640_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159616159647_))
                            (let ((_e159621159650_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159616159647_))))
                              (let ((_hd159620159654_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159621159650_)))
                                    (_tl159619159657_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159621159650_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl159619159657_))
                                    (let ((_e159624159660_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl159619159657_))))
                                      (let ((_hd159623159664_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159624159660_)))
                                            (_tl159622159667_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159624159660_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl159622159667_))
                                            (let ((_e159627159670_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl159622159667_))))
                                              (let ((_hd159626159674_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159627159670_)))
                                                    (_tl159625159677_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159627159670_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159625159677_))
                                                    ((lambda (_L159680_
                                                              _L159682_
                                                              _L159683_)
                                                       (let ((__tmp162100
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp162091
                      (let ((__tmp162097
                             (let ((__tmp162099
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp162098
                                    (let ()
                                      (declare (not safe))
                                      (cons _L159683_ '()))))
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
                                             (cons _L159682_ '()))))
                                      (declare (not safe))
                                      (cons __tmp162096 __tmp162095)))
                                   (__tmp162093
                                    (let ()
                                      (declare (not safe))
                                      (cons _L159680_ '()))))
                               (declare (not safe))
                               (cons __tmp162094 __tmp162093))))
                        (declare (not safe))
                        (cons __tmp162097 __tmp162092))))
                 (declare (not safe))
                 (cons __tmp162100 __tmp162091)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd159626159674_
                                                     _hd159623159664_
                                                     _hd159620159654_)
                                                    (_g159611159633_
                                                     _g159612159637_))))
                                            (_g159611159633_
                                             _g159612159637_))))
                                    (_g159611159633_ _g159612159637_))))
                            (_g159611159633_ _g159612159637_))))
                    (_g159611159633_ _g159612159637_)))))
        (_g159610159702_ _$stx159607_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx159706_)
      (let* ((_g159710159732_
              (lambda (_g159711159728_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159711159728_))))
             (_g159709159801_
              (lambda (_g159711159736_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159711159736_))
                    (let ((_e159717159739_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159711159736_))))
                      (let ((_hd159716159743_
                             (let ()
                               (declare (not safe))
                               (##car _e159717159739_)))
                            (_tl159715159746_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159717159739_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159715159746_))
                            (let ((_e159720159749_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159715159746_))))
                              (let ((_hd159719159753_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159720159749_)))
                                    (_tl159718159756_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159720159749_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl159718159756_))
                                    (let ((_e159723159759_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl159718159756_))))
                                      (let ((_hd159722159763_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159723159759_)))
                                            (_tl159721159766_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159723159759_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl159721159766_))
                                            (let ((_e159726159769_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl159721159766_))))
                                              (let ((_hd159725159773_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159726159769_)))
                                                    (_tl159724159776_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159726159769_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159724159776_))
                                                    ((lambda (_L159779_
                                                              _L159781_
                                                              _L159782_)
                                                       (let ((__tmp162110
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp162101
                      (let ((__tmp162107
                             (let ((__tmp162109
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp162108
                                    (let ()
                                      (declare (not safe))
                                      (cons _L159782_ '()))))
                               (declare (not safe))
                               (cons __tmp162109 __tmp162108)))
                            (__tmp162102
                             (let ((__tmp162104
                                    (let ((__tmp162106
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp162105
                                           (let ()
                                             (declare (not safe))
                                             (cons _L159781_ '()))))
                                      (declare (not safe))
                                      (cons __tmp162106 __tmp162105)))
                                   (__tmp162103
                                    (let ()
                                      (declare (not safe))
                                      (cons _L159779_ '()))))
                               (declare (not safe))
                               (cons __tmp162104 __tmp162103))))
                        (declare (not safe))
                        (cons __tmp162107 __tmp162102))))
                 (declare (not safe))
                 (cons __tmp162110 __tmp162101)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd159725159773_
                                                     _hd159722159763_
                                                     _hd159719159753_)
                                                    (_g159710159732_
                                                     _g159711159736_))))
                                            (_g159710159732_
                                             _g159711159736_))))
                                    (_g159710159732_ _g159711159736_))))
                            (_g159710159732_ _g159711159736_))))
                    (_g159710159732_ _g159711159736_)))))
        (_g159709159801_ _$stx159706_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx159805_)
      (let* ((___stx161620161621_ _$stx159805_)
             (_g159813159881_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161620161621_)))))
        (let ((___kont161623161624_
               (lambda (_L160159_ _L160161_)
                 (let ((__tmp162126
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp162111
                        (let ((__tmp162122
                               (let ((__tmp162125
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp162123
                                      (let ((__tmp162124
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp162124 '()))))
                                 (declare (not safe))
                                 (cons __tmp162125 __tmp162123)))
                              (__tmp162112
                               (let ((__tmp162119
                                      (let ((__tmp162121
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp162120
                                             (let ()
                                               (declare (not safe))
                                               (cons _L160161_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162121 __tmp162120)))
                                     (__tmp162113
                                      (let ((__tmp162114
                                             (let ((__tmp162115
                                                    (let ((__tmp162116
                                                           (let ((__tmp162118
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp162117
                          (let () (declare (not safe)) (cons _L160159_ '()))))
                     (declare (not safe))
                     (cons __tmp162118 __tmp162117))))
              (declare (not safe))
              (cons __tmp162116 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L160159_ __tmp162115))))
                                        (declare (not safe))
                                        (cons '#f __tmp162114))))
                                 (declare (not safe))
                                 (cons __tmp162119 __tmp162113))))
                          (declare (not safe))
                          (cons __tmp162122 __tmp162112))))
                   (declare (not safe))
                   (cons __tmp162126 __tmp162111))))
              (___kont161625161626_
               (lambda (_L160090_ _L160092_)
                 (let ((__tmp162127
                        (let ((__tmp162128
                               (let ((__tmp162129
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L160090_ __tmp162129))))
                          (declare (not safe))
                          (cons 'primitive: __tmp162128))))
                   (declare (not safe))
                   (cons _L160092_ __tmp162127))))
              (___kont161627161628_
               (lambda (_L160029_ _L160031_)
                 (let ((__tmp162143
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp162130
                        (let ((__tmp162139
                               (let ((__tmp162142
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp162140
                                      (let ((__tmp162141
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp162141 '()))))
                                 (declare (not safe))
                                 (cons __tmp162142 __tmp162140)))
                              (__tmp162131
                               (let ((__tmp162136
                                      (let ((__tmp162138
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp162137
                                             (let ()
                                               (declare (not safe))
                                               (cons _L160031_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162138 __tmp162137)))
                                     (__tmp162132
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
                                                      (cons _L160029_ '()))))
                                               (declare (not safe))
                                               (cons __tmp162135
                                                     __tmp162134))))
                                        (declare (not safe))
                                        (cons __tmp162133 '()))))
                                 (declare (not safe))
                                 (cons __tmp162136 __tmp162132))))
                          (declare (not safe))
                          (cons __tmp162139 __tmp162131))))
                   (declare (not safe))
                   (cons __tmp162143 __tmp162130))))
              (___kont161629161630_
               (lambda (_L159961_ _L159963_)
                 (let ((__tmp162157
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp162144
                        (let ((__tmp162153
                               (let ((__tmp162156
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp162154
                                      (let ((__tmp162155
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp162155 '()))))
                                 (declare (not safe))
                                 (cons __tmp162156 __tmp162154)))
                              (__tmp162145
                               (let ((__tmp162150
                                      (let ((__tmp162152
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp162151
                                             (let ()
                                               (declare (not safe))
                                               (cons _L159963_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162152 __tmp162151)))
                                     (__tmp162146
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
                                                      (cons _L159961_ '()))))
                                               (declare (not safe))
                                               (cons __tmp162149
                                                     __tmp162148))))
                                        (declare (not safe))
                                        (cons __tmp162147 '()))))
                                 (declare (not safe))
                                 (cons __tmp162150 __tmp162146))))
                          (declare (not safe))
                          (cons __tmp162153 __tmp162145))))
                   (declare (not safe))
                   (cons __tmp162157 __tmp162144))))
              (___kont161631161632_
               (lambda (_L159908_ _L159910_)
                 (let ((__tmp162158
                        (let ((__tmp162159
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L159908_ __tmp162159))))
                   (declare (not safe))
                   (cons _L159910_ __tmp162158)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx161620161621_))
              (let ((_e159819160115_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx161620161621_))))
                (let ((_tl159817160122_
                       (let () (declare (not safe)) (##cdr _e159819160115_)))
                      (_hd159818160119_
                       (let () (declare (not safe)) (##car _e159819160115_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl159817160122_))
                      (let ((_e159822160125_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl159817160122_))))
                        (let ((_tl159820160132_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159822160125_)))
                              (_hd159821160129_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159822160125_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl159820160132_))
                              (let ((_e159825160135_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl159820160132_))))
                                (let ((_tl159823160142_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e159825160135_)))
                                      (_hd159824160139_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e159825160135_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd159824160139_))
                                      (let ((_e159826160145_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd159824160139_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e159826160145_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl159823160142_))
                                                (let ((_e159829160149_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl159823160142_))))
                                                  (let ((_tl159827160156_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e159829160149_)))
                                                        (_hd159828160153_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e159829160149_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl159827160156_))
                                                        (___kont161623161624_
                                                         _hd159828160153_
                                                         _hd159821160129_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd159821160129_))
                                                            (let ((_e159838160076_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd159821160129_))))
                      (declare (not safe))
                      (_g159813159881_))
                    (let () (declare (not safe)) (_g159813159881_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd159821160129_))
                                                    (let ((_e159838160076_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd159821160129_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e159838160076_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl159823160142_))
                      (___kont161625161626_ _hd159824160139_ _hd159818160119_)
                      (let () (declare (not safe)) (_g159813159881_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl159823160142_))
                      (___kont161629161630_ _hd159824160139_ _hd159821160129_)
                      (let () (declare (not safe)) (_g159813159881_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl159823160142_))
                                                        (___kont161629161630_
                                                         _hd159824160139_
                                                         _hd159821160129_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g159813159881_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd159821160129_))
                                                (let ((_e159838160076_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd159821160129_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e159838160076_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl159823160142_))
                                                          (___kont161625161626_
                                                           _hd159824160139_
                                                           _hd159818160119_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl159823160142_))
                      (let ((_e159856160019_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl159823160142_))))
                        (let ((_tl159854160026_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159856160019_)))
                              (_hd159855160023_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159856160019_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl159854160026_))
                              (___kont161627161628_
                               _hd159855160023_
                               _hd159824160139_)
                              (let ()
                                (declare (not safe))
                                (_g159813159881_)))))
                      (let () (declare (not safe)) (_g159813159881_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl159823160142_))
                  (___kont161629161630_ _hd159824160139_ _hd159821160129_)
                  (let () (declare (not safe)) (_g159813159881_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159823160142_))
                                                    (___kont161629161630_
                                                     _hd159824160139_
                                                     _hd159821160129_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g159813159881_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd159821160129_))
                                          (let ((_e159838160076_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd159821160129_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e159838160076_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159823160142_))
                                                    (___kont161625161626_
                                                     _hd159824160139_
                                                     _hd159818160119_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl159823160142_))
                                                        (let ((_e159856160019_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl159823160142_))))
                  (let ((_tl159854160026_
                         (let () (declare (not safe)) (##cdr _e159856160019_)))
                        (_hd159855160023_
                         (let ()
                           (declare (not safe))
                           (##car _e159856160019_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl159854160026_))
                        (___kont161627161628_
                         _hd159855160023_
                         _hd159824160139_)
                        (let () (declare (not safe)) (_g159813159881_)))))
                (let () (declare (not safe)) (_g159813159881_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159823160142_))
                                                    (___kont161629161630_
                                                     _hd159824160139_
                                                     _hd159821160129_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g159813159881_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl159823160142_))
                                              (___kont161629161630_
                                               _hd159824160139_
                                               _hd159821160129_)
                                              (let ()
                                                (declare (not safe))
                                                (_g159813159881_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd159821160129_))
                                  (let ((_e159838160076_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd159821160129_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl159820160132_))
                                        (___kont161631161632_
                                         _hd159821160129_
                                         _hd159818160119_)
                                        (let ()
                                          (declare (not safe))
                                          (_g159813159881_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl159820160132_))
                                      (___kont161631161632_
                                       _hd159821160129_
                                       _hd159818160119_)
                                      (let ()
                                        (declare (not safe))
                                        (_g159813159881_)))))))
                      (let () (declare (not safe)) (_g159813159881_)))))
              (let () (declare (not safe)) (_g159813159881_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx160183_)
      (let* ((___stx161760161761_ _$stx160183_)
             (_g160188160243_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161760161761_)))))
        (let ((___kont161763161764_
               (lambda (_L160428_ _L160430_)
                 (let ((__tmp162175
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp162160
                        (let ((__tmp162171
                               (let ((__tmp162174
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp162172
                                      (let ((__tmp162173
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp162173 '()))))
                                 (declare (not safe))
                                 (cons __tmp162174 __tmp162172)))
                              (__tmp162161
                               (let ((__tmp162162
                                      (let ((__tmp162170
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp162163
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L160428_
                                                  _L160430_))
                                               (let ((__tmp162164
                                                      (lambda (_g160447160451_
                                                               _g160448160454_
                                                               _g160449160456_)
                                                        (let ((__tmp162165
                                                               (let ((__tmp162169
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp162166
                              (let ((__tmp162167
                                     (let ((__tmp162168
                                            (let ()
                                              (declare (not safe))
                                              (cons _g160447160451_ '()))))
                                       (declare (not safe))
                                       (cons _g160448160454_ __tmp162168))))
                                (declare (not safe))
                                (cons 'primitive: __tmp162167))))
                         (declare (not safe))
                         (cons __tmp162169 __tmp162166))))
                  (declare (not safe))
                  (cons __tmp162165 _g160449160456_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp162164
                                                         '()
                                                         _L160428_
                                                         _L160430_)))))
                                        (declare (not safe))
                                        (cons __tmp162170 __tmp162163))))
                                 (declare (not safe))
                                 (cons __tmp162162 '()))))
                          (declare (not safe))
                          (cons __tmp162171 __tmp162161))))
                   (declare (not safe))
                   (cons __tmp162175 __tmp162160))))
              (___kont161767161768_
               (lambda (_L160314_ _L160316_)
                 (let ((__tmp162190
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp162176
                        (let ((__tmp162186
                               (let ((__tmp162189
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp162187
                                      (let ((__tmp162188
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp162188 '()))))
                                 (declare (not safe))
                                 (cons __tmp162189 __tmp162187)))
                              (__tmp162177
                               (let ((__tmp162178
                                      (let ((__tmp162185
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp162179
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L160314_
                                                  _L160316_))
                                               (let ((__tmp162180
                                                      (lambda (_g160331160335_
                                                               _g160332160338_
                                                               _g160333160340_)
                                                        (let ((__tmp162181
                                                               (let ((__tmp162184
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp162182
                              (let ((__tmp162183
                                     (let ()
                                       (declare (not safe))
                                       (cons _g160331160335_ '()))))
                                (declare (not safe))
                                (cons _g160332160338_ __tmp162183))))
                         (declare (not safe))
                         (cons __tmp162184 __tmp162182))))
                  (declare (not safe))
                  (cons __tmp162181 _g160333160340_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp162180
                                                         '()
                                                         _L160314_
                                                         _L160316_)))))
                                        (declare (not safe))
                                        (cons __tmp162185 __tmp162179))))
                                 (declare (not safe))
                                 (cons __tmp162178 '()))))
                          (declare (not safe))
                          (cons __tmp162186 __tmp162177))))
                   (declare (not safe))
                   (cons __tmp162190 __tmp162176)))))
          (let* ((___match161811161812_
                  (lambda (_e160220160250_
                           _hd160219160254_
                           _tl160218160257_
                           ___splice161769161770_
                           _target160221160260_
                           _tl160223160263_)
                    (letrec ((_loop160224160266_
                              (lambda (_hd160222160270_
                                       _dispatch160228160273_
                                       _arity160229160275_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd160222160270_))
                                    (let ((_e160225160278_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd160222160270_))))
                                      (let ((_lp-tl160227160285_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160225160278_)))
                                            (_lp-hd160226160282_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160225160278_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd160226160282_))
                                            (let ((_e160234160288_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd160226160282_))))
                                              (let ((_tl160232160295_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e160234160288_)))
                                                    (_hd160233160292_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e160234160288_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl160232160295_))
                                                    (let ((_e160237160298_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl160232160295_))))
                                                      (let ((_tl160235160305_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e160237160298_)))
                    (_hd160236160302_
                     (let () (declare (not safe)) (##car _e160237160298_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl160235160305_))
                    (_loop160224160266_
                     _lp-tl160227160285_
                     (let ()
                       (declare (not safe))
                       (cons _hd160236160302_ _dispatch160228160273_))
                     (let ()
                       (declare (not safe))
                       (cons _hd160233160292_ _arity160229160275_)))
                    (let () (declare (not safe)) (_g160188160243_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g160188160243_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g160188160243_)))))
                                    (let ((_arity160231160311_
                                           (reverse _arity160229160275_))
                                          (_dispatch160230160308_
                                           (reverse _dispatch160228160273_)))
                                      (___kont161767161768_
                                       _dispatch160230160308_
                                       _arity160231160311_))))))
                      (_loop160224160266_ _target160221160260_ '() '()))))
                 (___match161803161804_
                  (lambda (_e160220160250_ _hd160219160254_ _tl160218160257_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl160218160257_))
                        (let ((___splice161769161770_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl160218160257_
                                  '0))))
                          (let ((_tl160223160263_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice161769161770_ '1)))
                                (_target160221160260_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice161769161770_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl160223160263_))
                                (___match161811161812_
                                 _e160220160250_
                                 _hd160219160254_
                                 _tl160218160257_
                                 ___splice161769161770_
                                 _target160221160260_
                                 _tl160223160263_)
                                (let ()
                                  (declare (not safe))
                                  (_g160188160243_)))))
                        (let () (declare (not safe)) (_g160188160243_)))))
                 (___match161797161798_
                  (lambda (_e160194160350_
                           _hd160193160354_
                           _tl160192160357_
                           _e160197160360_
                           _hd160196160364_
                           _tl160195160367_
                           _e160198160370_
                           ___splice161765161766_
                           _target160199160374_
                           _tl160201160377_)
                    (letrec ((_loop160202160380_
                              (lambda (_hd160200160384_
                                       _dispatch160206160387_
                                       _arity160207160389_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd160200160384_))
                                    (let ((_e160203160392_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd160200160384_))))
                                      (let ((_lp-tl160205160399_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160203160392_)))
                                            (_lp-hd160204160396_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160203160392_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd160204160396_))
                                            (let ((_e160212160402_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd160204160396_))))
                                              (let ((_tl160210160409_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e160212160402_)))
                                                    (_hd160211160406_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e160212160402_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl160210160409_))
                                                    (let ((_e160215160412_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl160210160409_))))
                                                      (let ((_tl160213160419_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e160215160412_)))
                    (_hd160214160416_
                     (let () (declare (not safe)) (##car _e160215160412_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl160213160419_))
                    (_loop160202160380_
                     _lp-tl160205160399_
                     (let ()
                       (declare (not safe))
                       (cons _hd160214160416_ _dispatch160206160387_))
                     (let ()
                       (declare (not safe))
                       (cons _hd160211160406_ _arity160207160389_)))
                    (___match161803161804_
                     _e160194160350_
                     _hd160193160354_
                     _tl160192160357_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match161803161804_
                                                     _e160194160350_
                                                     _hd160193160354_
                                                     _tl160192160357_))))
                                            (___match161803161804_
                                             _e160194160350_
                                             _hd160193160354_
                                             _tl160192160357_))))
                                    (let ((_arity160209160425_
                                           (reverse _arity160207160389_))
                                          (_dispatch160208160422_
                                           (reverse _dispatch160206160387_)))
                                      (___kont161763161764_
                                       _dispatch160208160422_
                                       _arity160209160425_))))))
                      (_loop160202160380_ _target160199160374_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx161760161761_))
                (let ((_e160194160350_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx161760161761_))))
                  (let ((_tl160192160357_
                         (let () (declare (not safe)) (##cdr _e160194160350_)))
                        (_hd160193160354_
                         (let ()
                           (declare (not safe))
                           (##car _e160194160350_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl160192160357_))
                        (let ((_e160197160360_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl160192160357_))))
                          (let ((_tl160195160367_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e160197160360_)))
                                (_hd160196160364_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e160197160360_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd160196160364_))
                                (let ((_e160198160370_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd160196160364_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e160198160370_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl160195160367_))
                                          (let ((___splice161765161766_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl160195160367_
                                                    '0))))
                                            (let ((_tl160201160377_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice161765161766_
                                                      '1)))
                                                  (_target160199160374_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice161765161766_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl160201160377_))
                                                  (___match161797161798_
                                                   _e160194160350_
                                                   _hd160193160354_
                                                   _tl160192160357_
                                                   _e160197160360_
                                                   _hd160196160364_
                                                   _tl160195160367_
                                                   _e160198160370_
                                                   ___splice161765161766_
                                                   _target160199160374_
                                                   _tl160201160377_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl160192160357_))
                                                      (let ((___splice161769161770_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl160192160357_ '0))))
                (let ((_tl160223160263_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161769161770_ '1)))
                      (_target160221160260_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161769161770_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl160223160263_))
                      (___match161811161812_
                       _e160194160350_
                       _hd160193160354_
                       _tl160192160357_
                       ___splice161769161770_
                       _target160221160260_
                       _tl160223160263_)
                      (let () (declare (not safe)) (_g160188160243_)))))
              (let () (declare (not safe)) (_g160188160243_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl160192160357_))
                                              (let ((___splice161769161770_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl160192160357_
                                                        '0))))
                                                (let ((_tl160223160263_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice161769161770_
                                                          '1)))
                                                      (_target160221160260_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice161769161770_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl160223160263_))
                                                      (___match161811161812_
                                                       _e160194160350_
                                                       _hd160193160354_
                                                       _tl160192160357_
                                                       ___splice161769161770_
                                                       _target160221160260_
                                                       _tl160223160263_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g160188160243_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g160188160243_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl160192160357_))
                                          (let ((___splice161769161770_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl160192160357_
                                                    '0))))
                                            (let ((_tl160223160263_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice161769161770_
                                                      '1)))
                                                  (_target160221160260_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice161769161770_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl160223160263_))
                                                  (___match161811161812_
                                                   _e160194160350_
                                                   _hd160193160354_
                                                   _tl160192160357_
                                                   ___splice161769161770_
                                                   _target160221160260_
                                                   _tl160223160263_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g160188160243_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g160188160243_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl160192160357_))
                                    (let ((___splice161769161770_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl160192160357_
                                              '0))))
                                      (let ((_tl160223160263_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161769161770_
                                                '1)))
                                            (_target160221160260_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161769161770_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160223160263_))
                                            (___match161811161812_
                                             _e160194160350_
                                             _hd160193160354_
                                             _tl160192160357_
                                             ___splice161769161770_
                                             _target160221160260_
                                             _tl160223160263_)
                                            (let ()
                                              (declare (not safe))
                                              (_g160188160243_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g160188160243_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl160192160357_))
                            (let ((___splice161769161770_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl160192160357_
                                      '0))))
                              (let ((_tl160223160263_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice161769161770_
                                        '1)))
                                    (_target160221160260_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice161769161770_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl160223160263_))
                                    (___match161811161812_
                                     _e160194160350_
                                     _hd160193160354_
                                     _tl160192160357_
                                     ___splice161769161770_
                                     _target160221160260_
                                     _tl160223160263_)
                                    (let ()
                                      (declare (not safe))
                                      (_g160188160243_)))))
                            (let () (declare (not safe)) (_g160188160243_))))))
                (let () (declare (not safe)) (_g160188160243_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx160465_)
      (let* ((_g160469160487_
              (lambda (_g160470160483_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160470160483_))))
             (_g160468160542_
              (lambda (_g160470160491_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160470160491_))
                    (let ((_e160475160494_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160470160491_))))
                      (let ((_hd160474160498_
                             (let ()
                               (declare (not safe))
                               (##car _e160475160494_)))
                            (_tl160473160501_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160475160494_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160473160501_))
                            (let ((_e160478160504_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160473160501_))))
                              (let ((_hd160477160508_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160478160504_)))
                                    (_tl160476160511_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160478160504_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl160476160511_))
                                    (let ((_e160481160514_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl160476160511_))))
                                      (let ((_hd160480160518_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160481160514_)))
                                            (_tl160479160521_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160481160514_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160479160521_))
                                            ((lambda (_L160524_ _L160526_)
                                               (let ((__tmp162204
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp162191
                                                      (let ((__tmp162200
                                                             (let ((__tmp162203
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp162201
                            (let ((__tmp162202
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp162202 '()))))
                       (declare (not safe))
                       (cons __tmp162203 __tmp162201)))
                    (__tmp162192
                     (let ((__tmp162197
                            (let ((__tmp162199
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp162198
                                   (let ()
                                     (declare (not safe))
                                     (cons _L160526_ '()))))
                              (declare (not safe))
                              (cons __tmp162199 __tmp162198)))
                           (__tmp162193
                            (let ((__tmp162194
                                   (let ((__tmp162196
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp162195
                                          (let ()
                                            (declare (not safe))
                                            (cons _L160524_ '()))))
                                     (declare (not safe))
                                     (cons __tmp162196 __tmp162195))))
                              (declare (not safe))
                              (cons __tmp162194 '()))))
                       (declare (not safe))
                       (cons __tmp162197 __tmp162193))))
                (declare (not safe))
                (cons __tmp162200 __tmp162192))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp162204
                                                       __tmp162191)))
                                             _hd160480160518_
                                             _hd160477160508_)
                                            (_g160469160487_
                                             _g160470160491_))))
                                    (_g160469160487_ _g160470160491_))))
                            (_g160469160487_ _g160470160491_))))
                    (_g160469160487_ _g160470160491_)))))
        (_g160468160542_ _$stx160465_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx160546_)
      (let* ((_g160550160568_
              (lambda (_g160551160564_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160551160564_))))
             (_g160549160623_
              (lambda (_g160551160572_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160551160572_))
                    (let ((_e160556160575_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160551160572_))))
                      (let ((_hd160555160579_
                             (let ()
                               (declare (not safe))
                               (##car _e160556160575_)))
                            (_tl160554160582_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160556160575_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160554160582_))
                            (let ((_e160559160585_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160554160582_))))
                              (let ((_hd160558160589_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160559160585_)))
                                    (_tl160557160592_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160559160585_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl160557160592_))
                                    (let ((_e160562160595_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl160557160592_))))
                                      (let ((_hd160561160599_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160562160595_)))
                                            (_tl160560160602_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160562160595_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160560160602_))
                                            ((lambda (_L160605_ _L160607_)
                                               (let ((__tmp162218
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp162205
                                                      (let ((__tmp162214
                                                             (let ((__tmp162217
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp162215
                            (let ((__tmp162216
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp162216 '()))))
                       (declare (not safe))
                       (cons __tmp162217 __tmp162215)))
                    (__tmp162206
                     (let ((__tmp162211
                            (let ((__tmp162213
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp162212
                                   (let ()
                                     (declare (not safe))
                                     (cons _L160607_ '()))))
                              (declare (not safe))
                              (cons __tmp162213 __tmp162212)))
                           (__tmp162207
                            (let ((__tmp162208
                                   (let ((__tmp162210
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp162209
                                          (let ()
                                            (declare (not safe))
                                            (cons _L160605_ '()))))
                                     (declare (not safe))
                                     (cons __tmp162210 __tmp162209))))
                              (declare (not safe))
                              (cons __tmp162208 '()))))
                       (declare (not safe))
                       (cons __tmp162211 __tmp162207))))
                (declare (not safe))
                (cons __tmp162214 __tmp162206))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp162218
                                                       __tmp162205)))
                                             _hd160561160599_
                                             _hd160558160589_)
                                            (_g160550160568_
                                             _g160551160572_))))
                                    (_g160550160568_ _g160551160572_))))
                            (_g160550160568_ _g160551160572_))))
                    (_g160550160568_ _g160551160572_)))))
        (_g160549160623_ _$stx160546_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx160627_)
      (let* ((___stx161814161815_ _$stx160627_)
             (_g160634160705_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161814161815_)))))
        (let ((___kont161817161818_
               (lambda (_L160996_ _L160998_)
                 (let ((__tmp162224
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp162219
                        (let ((__tmp162220
                               (let ((__tmp162221
                                      (let ((__tmp162223
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp162222
                                             (let ()
                                               (declare (not safe))
                                               (cons _L160996_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162223 __tmp162222))))
                                 (declare (not safe))
                                 (cons __tmp162221 '()))))
                          (declare (not safe))
                          (cons _L160998_ __tmp162220))))
                   (declare (not safe))
                   (cons __tmp162224 __tmp162219))))
              (___kont161819161820_
               (lambda (_L160915_ _L160917_)
                 (let ((__tmp162233
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp162225
                        (let ((__tmp162226
                               (let ((__tmp162227
                                      (let ((__tmp162232
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp162228
                                             (let ((__tmp162229
                                                    (lambda (_g160936160939_
                                                             _g160937160942_)
                                                      (let ((__tmp162230
                                                             (let ((__tmp162231
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g160936160939_ __tmp162231))))
                (declare (not safe))
                (cons __tmp162230 _g160937160942_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp162229
                                                       '()
                                                       _L160915_))))
                                        (declare (not safe))
                                        (cons __tmp162232 __tmp162228))))
                                 (declare (not safe))
                                 (cons __tmp162227 '()))))
                          (declare (not safe))
                          (cons _L160917_ __tmp162226))))
                   (declare (not safe))
                   (cons __tmp162233 __tmp162225))))
              (___kont161823161824_
               (lambda (_L160827_ _L160829_)
                 (let ((__tmp162240
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp162234
                        (let ((__tmp162235
                               (let ((__tmp162236
                                      (let ((__tmp162239
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp162237
                                             (let ((__tmp162238
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L160827_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp162238))))
                                        (declare (not safe))
                                        (cons __tmp162239 __tmp162237))))
                                 (declare (not safe))
                                 (cons __tmp162236 '()))))
                          (declare (not safe))
                          (cons _L160829_ __tmp162235))))
                   (declare (not safe))
                   (cons __tmp162240 __tmp162234))))
              (___kont161825161826_
               (lambda (_L160762_ _L160764_)
                 (let ((__tmp162250
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp162241
                        (let ((__tmp162242
                               (let ((__tmp162243
                                      (let ((__tmp162249
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp162244
                                             (let ((__tmp162245
                                                    (let ((__tmp162246
                                                           (lambda (_g160781160784_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g160782160787_)
                     (let ((__tmp162247
                            (let ((__tmp162248
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g160781160784_ __tmp162248))))
                       (declare (not safe))
                       (cons __tmp162247 _g160782160787_)))))
              (declare (not safe))
              (foldr1 __tmp162246 '() _L160762_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp162245))))
                                        (declare (not safe))
                                        (cons __tmp162249 __tmp162244))))
                                 (declare (not safe))
                                 (cons __tmp162243 '()))))
                          (declare (not safe))
                          (cons _L160764_ __tmp162242))))
                   (declare (not safe))
                   (cons __tmp162250 __tmp162241)))))
          (let* ((___match161933161934_
                  (lambda (_e160687160712_
                           _hd160686160716_
                           _tl160685160719_
                           _e160690160722_
                           _hd160689160726_
                           _tl160688160729_
                           ___splice161827161828_
                           _target160691160732_
                           _tl160693160735_)
                    (letrec ((_loop160694160738_
                              (lambda (_hd160692160742_ _arity160698160745_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd160692160742_))
                                    (let ((_e160695160748_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd160692160742_))))
                                      (let ((_lp-tl160697160755_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160695160748_)))
                                            (_lp-hd160696160752_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160695160748_))))
                                        (_loop160694160738_
                                         _lp-tl160697160755_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd160696160752_
                                                 _arity160698160745_)))))
                                    (let ((_arity160699160758_
                                           (reverse _arity160698160745_)))
                                      (___kont161825161826_
                                       _arity160699160758_
                                       _hd160689160726_))))))
                      (_loop160694160738_ _target160691160732_ '()))))
                 (___match161893161894_
                  (lambda (_e160655160851_
                           _hd160654160855_
                           _tl160653160858_
                           _e160658160861_
                           _hd160657160865_
                           _tl160656160868_
                           _e160661160871_
                           _hd160660160875_
                           _tl160659160878_
                           _e160662160881_
                           ___splice161821161822_
                           _target160663160885_
                           _tl160665160888_)
                    (letrec ((_loop160666160891_
                              (lambda (_hd160664160895_ _arity160670160898_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd160664160895_))
                                    (let ((_e160667160901_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd160664160895_))))
                                      (let ((_lp-tl160669160908_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160667160901_)))
                                            (_lp-hd160668160905_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160667160901_))))
                                        (_loop160666160891_
                                         _lp-tl160669160908_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd160668160905_
                                                 _arity160670160898_)))))
                                    (let ((_arity160671160911_
                                           (reverse _arity160670160898_)))
                                      (___kont161819161820_
                                       _arity160671160911_
                                       _hd160657160865_))))))
                      (_loop160666160891_ _target160663160885_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx161814161815_))
                (let ((_e160640160952_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx161814161815_))))
                  (let ((_tl160638160959_
                         (let () (declare (not safe)) (##cdr _e160640160952_)))
                        (_hd160639160956_
                         (let ()
                           (declare (not safe))
                           (##car _e160640160952_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl160638160959_))
                        (let ((_e160643160962_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl160638160959_))))
                          (let ((_tl160641160969_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e160643160962_)))
                                (_hd160642160966_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e160643160962_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl160641160969_))
                                (let ((_e160646160972_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl160641160969_))))
                                  (let ((_tl160644160979_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e160646160972_)))
                                        (_hd160645160976_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e160646160972_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd160645160976_))
                                        (let ((_e160647160982_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd160645160976_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e160647160982_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl160644160979_))
                                                  (let ((_e160650160986_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl160644160979_))))
                                                    (let ((_tl160648160993_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e160650160986_)))
                                                          (_hd160649160990_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e160650160986_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl160648160993_))
                                                          (___kont161817161818_
                                                           _hd160649160990_
                                                           _hd160642160966_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl160644160979_))
                      (let ((___splice161821161822_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl160644160979_ '0))))
                        (let ((_tl160665160888_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice161821161822_ '1)))
                              (_target160663160885_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice161821161822_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl160665160888_))
                              (___match161893161894_
                               _e160640160952_
                               _hd160639160956_
                               _tl160638160959_
                               _e160643160962_
                               _hd160642160966_
                               _tl160641160969_
                               _e160646160972_
                               _hd160645160976_
                               _tl160644160979_
                               _e160647160982_
                               ___splice161821161822_
                               _target160663160885_
                               _tl160665160888_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl160641160969_))
                                  (let ((___splice161827161828_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl160641160969_
                                            '0))))
                                    (let ((_tl160693160735_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice161827161828_
                                              '1)))
                                          (_target160691160732_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice161827161828_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl160693160735_))
                                          (___match161933161934_
                                           _e160640160952_
                                           _hd160639160956_
                                           _tl160638160959_
                                           _e160643160962_
                                           _hd160642160966_
                                           _tl160641160969_
                                           ___splice161827161828_
                                           _target160691160732_
                                           _tl160693160735_)
                                          (let ()
                                            (declare (not safe))
                                            (_g160634160705_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g160634160705_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl160641160969_))
                          (let ((___splice161827161828_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl160641160969_
                                    '0))))
                            (let ((_tl160693160735_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice161827161828_ '1)))
                                  (_target160691160732_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice161827161828_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl160693160735_))
                                  (___match161933161934_
                                   _e160640160952_
                                   _hd160639160956_
                                   _tl160638160959_
                                   _e160643160962_
                                   _hd160642160966_
                                   _tl160641160969_
                                   ___splice161827161828_
                                   _target160691160732_
                                   _tl160693160735_)
                                  (let ()
                                    (declare (not safe))
                                    (_g160634160705_)))))
                          (let () (declare (not safe)) (_g160634160705_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl160644160979_))
                                                      (let ((___splice161821161822_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl160644160979_ '0))))
                (let ((_tl160665160888_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161821161822_ '1)))
                      (_target160663160885_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161821161822_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl160665160888_))
                      (___match161893161894_
                       _e160640160952_
                       _hd160639160956_
                       _tl160638160959_
                       _e160643160962_
                       _hd160642160966_
                       _tl160641160969_
                       _e160646160972_
                       _hd160645160976_
                       _tl160644160979_
                       _e160647160982_
                       ___splice161821161822_
                       _target160663160885_
                       _tl160665160888_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl160644160979_))
                          (___kont161823161824_
                           _hd160645160976_
                           _hd160642160966_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl160641160969_))
                              (let ((___splice161827161828_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl160641160969_
                                        '0))))
                                (let ((_tl160693160735_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice161827161828_
                                          '1)))
                                      (_target160691160732_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice161827161828_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl160693160735_))
                                      (___match161933161934_
                                       _e160640160952_
                                       _hd160639160956_
                                       _tl160638160959_
                                       _e160643160962_
                                       _hd160642160966_
                                       _tl160641160969_
                                       ___splice161827161828_
                                       _target160691160732_
                                       _tl160693160735_)
                                      (let ()
                                        (declare (not safe))
                                        (_g160634160705_)))))
                              (let ()
                                (declare (not safe))
                                (_g160634160705_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl160644160979_))
                  (___kont161823161824_ _hd160645160976_ _hd160642160966_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl160641160969_))
                      (let ((___splice161827161828_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl160641160969_ '0))))
                        (let ((_tl160693160735_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice161827161828_ '1)))
                              (_target160691160732_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice161827161828_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl160693160735_))
                              (___match161933161934_
                               _e160640160952_
                               _hd160639160956_
                               _tl160638160959_
                               _e160643160962_
                               _hd160642160966_
                               _tl160641160969_
                               ___splice161827161828_
                               _target160691160732_
                               _tl160693160735_)
                              (let ()
                                (declare (not safe))
                                (_g160634160705_)))))
                      (let () (declare (not safe)) (_g160634160705_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl160644160979_))
                                                  (___kont161823161824_
                                                   _hd160645160976_
                                                   _hd160642160966_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl160641160969_))
                                                      (let ((___splice161827161828_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl160641160969_ '0))))
                (let ((_tl160693160735_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161827161828_ '1)))
                      (_target160691160732_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161827161828_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl160693160735_))
                      (___match161933161934_
                       _e160640160952_
                       _hd160639160956_
                       _tl160638160959_
                       _e160643160962_
                       _hd160642160966_
                       _tl160641160969_
                       ___splice161827161828_
                       _target160691160732_
                       _tl160693160735_)
                      (let () (declare (not safe)) (_g160634160705_)))))
              (let () (declare (not safe)) (_g160634160705_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160644160979_))
                                            (___kont161823161824_
                                             _hd160645160976_
                                             _hd160642160966_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl160641160969_))
                                                (let ((___splice161827161828_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl160641160969_
                                                          '0))))
                                                  (let ((_tl160693160735_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice161827161828_
                                                            '1)))
                                                        (_target160691160732_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice161827161828_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl160693160735_))
                                                        (___match161933161934_
                                                         _e160640160952_
                                                         _hd160639160956_
                                                         _tl160638160959_
                                                         _e160643160962_
                                                         _hd160642160966_
                                                         _tl160641160969_
                                                         ___splice161827161828_
                                                         _target160691160732_
                                                         _tl160693160735_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g160634160705_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g160634160705_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl160641160969_))
                                    (let ((___splice161827161828_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl160641160969_
                                              '0))))
                                      (let ((_tl160693160735_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161827161828_
                                                '1)))
                                            (_target160691160732_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161827161828_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160693160735_))
                                            (___match161933161934_
                                             _e160640160952_
                                             _hd160639160956_
                                             _tl160638160959_
                                             _e160643160962_
                                             _hd160642160966_
                                             _tl160641160969_
                                             ___splice161827161828_
                                             _target160691160732_
                                             _tl160693160735_)
                                            (let ()
                                              (declare (not safe))
                                              (_g160634160705_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g160634160705_))))))
                        (let () (declare (not safe)) (_g160634160705_)))))
                (let () (declare (not safe)) (_g160634160705_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx161022_)
      (let* ((___stx161936161937_ _$stx161022_)
             (_g161027161062_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161936161937_)))))
        (let ((___kont161939161940_
               (lambda (_L161184_ _L161186_)
                 (let ((__tmp162256
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp162251
                        (let ((__tmp162252
                               (let ((__tmp162253
                                      (let ((__tmp162255
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp162254
                                             (let ()
                                               (declare (not safe))
                                               (cons _L161184_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162255 __tmp162254))))
                                 (declare (not safe))
                                 (cons __tmp162253 '()))))
                          (declare (not safe))
                          (cons _L161186_ __tmp162252))))
                   (declare (not safe))
                   (cons __tmp162256 __tmp162251))))
              (___kont161941161942_
               (lambda (_L161119_ _L161121_)
                 (let ((__tmp162265
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp162257
                        (let ((__tmp162258
                               (let ((__tmp162259
                                      (let ((__tmp162264
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp162260
                                             (let ((__tmp162261
                                                    (lambda (_g161138161141_
                                                             _g161139161144_)
                                                      (let ((__tmp162262
                                                             (let ((__tmp162263
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g161138161141_ __tmp162263))))
                (declare (not safe))
                (cons __tmp162262 _g161139161144_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp162261
                                                       '()
                                                       _L161119_))))
                                        (declare (not safe))
                                        (cons __tmp162264 __tmp162260))))
                                 (declare (not safe))
                                 (cons __tmp162259 '()))))
                          (declare (not safe))
                          (cons _L161121_ __tmp162258))))
                   (declare (not safe))
                   (cons __tmp162265 __tmp162257)))))
          (let ((___match161985161986_
                 (lambda (_e161044161069_
                          _hd161043161073_
                          _tl161042161076_
                          _e161047161079_
                          _hd161046161083_
                          _tl161045161086_
                          ___splice161943161944_
                          _target161048161089_
                          _tl161050161092_)
                   (letrec ((_loop161051161095_
                             (lambda (_hd161049161099_ _arity161055161102_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd161049161099_))
                                   (let ((_e161052161105_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd161049161099_))))
                                     (let ((_lp-tl161054161112_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e161052161105_)))
                                           (_lp-hd161053161109_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e161052161105_))))
                                       (_loop161051161095_
                                        _lp-tl161054161112_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd161053161109_
                                                _arity161055161102_)))))
                                   (let ((_arity161056161115_
                                          (reverse _arity161055161102_)))
                                     (___kont161941161942_
                                      _arity161056161115_
                                      _hd161046161083_))))))
                     (_loop161051161095_ _target161048161089_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx161936161937_))
                (let ((_e161033161154_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx161936161937_))))
                  (let ((_tl161031161161_
                         (let () (declare (not safe)) (##cdr _e161033161154_)))
                        (_hd161032161158_
                         (let ()
                           (declare (not safe))
                           (##car _e161033161154_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl161031161161_))
                        (let ((_e161036161164_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl161031161161_))))
                          (let ((_tl161034161171_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e161036161164_)))
                                (_hd161035161168_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e161036161164_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl161034161171_))
                                (let ((_e161039161174_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl161034161171_))))
                                  (let ((_tl161037161181_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e161039161174_)))
                                        (_hd161038161178_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e161039161174_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl161037161181_))
                                        (___kont161939161940_
                                         _hd161038161178_
                                         _hd161035161168_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl161034161171_))
                                            (let ((___splice161943161944_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl161034161171_
                                                      '0))))
                                              (let ((_tl161050161092_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice161943161944_
                                                        '1)))
                                                    (_target161048161089_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice161943161944_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl161050161092_))
                                                    (___match161985161986_
                                                     _e161033161154_
                                                     _hd161032161158_
                                                     _tl161031161161_
                                                     _e161036161164_
                                                     _hd161035161168_
                                                     _tl161034161171_
                                                     ___splice161943161944_
                                                     _target161048161089_
                                                     _tl161050161092_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g161027161062_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g161027161062_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl161034161171_))
                                    (let ((___splice161943161944_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl161034161171_
                                              '0))))
                                      (let ((_tl161050161092_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161943161944_
                                                '1)))
                                            (_target161048161089_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161943161944_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl161050161092_))
                                            (___match161985161986_
                                             _e161033161154_
                                             _hd161032161158_
                                             _tl161031161161_
                                             _e161036161164_
                                             _hd161035161168_
                                             _tl161034161171_
                                             ___splice161943161944_
                                             _target161048161089_
                                             _tl161050161092_)
                                            (let ()
                                              (declare (not safe))
                                              (_g161027161062_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g161027161062_))))))
                        (let () (declare (not safe)) (_g161027161062_)))))
                (let () (declare (not safe)) (_g161027161062_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx161206_)
      (let* ((_g161210161245_
              (lambda (_g161211161241_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161211161241_))))
             (_g161209161373_
              (lambda (_g161211161249_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161211161249_))
                    (let ((_e161216161252_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161211161249_))))
                      (let ((_hd161215161256_
                             (let ()
                               (declare (not safe))
                               (##car _e161216161252_)))
                            (_tl161214161259_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161216161252_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl161214161259_))
                            (let ((_g162266_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl161214161259_
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
                                (let ((_target161217161262_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162266_ 0)))
                                      (_tl161219161265_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162266_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl161219161265_))
                                      (letrec ((_loop161220161268_
                                                (lambda (_hd161218161272_
                                                         _arity161224161275_
                                                         _prim161225161277_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd161218161272_))
                                                      (let ((_e161221161280_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd161218161272_))))
                (let ((_lp-hd161222161284_
                       (let () (declare (not safe)) (##car _e161221161280_)))
                      (_lp-tl161223161287_
                       (let () (declare (not safe)) (##cdr _e161221161280_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd161222161284_))
                      (let ((_e161230161290_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd161222161284_))))
                        (let ((_hd161229161294_
                               (let ()
                                 (declare (not safe))
                                 (##car _e161230161290_)))
                              (_tl161228161297_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e161230161290_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl161228161297_))
                              (let ((_g162276_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl161228161297_
                                        '0))))
                                (begin
                                  (let ((_g162277_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g162276_)
                                               (##vector-length _g162276_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g162277_ 2)))
                                        (error "Context expects 2 values"
                                               _g162277_)))
                                  (let ((_target161231161300_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g162276_ 0)))
                                        (_tl161233161303_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g162276_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl161233161303_))
                                        (letrec ((_loop161234161306_
                                                  (lambda (_hd161232161310_
                                                           _arity161238161313_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd161232161310_))
                                                        (let ((_e161235161316_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd161232161310_))))
                  (let ((_lp-hd161236161320_
                         (let () (declare (not safe)) (##car _e161235161316_)))
                        (_lp-tl161237161323_
                         (let ()
                           (declare (not safe))
                           (##cdr _e161235161316_))))
                    (_loop161234161306_
                     _lp-tl161237161323_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd161236161320_ _arity161238161313_)))))
                (let ((_arity161239161326_ (reverse _arity161238161313_)))
                  (_loop161220161268_
                   _lp-tl161223161287_
                   (let ()
                     (declare (not safe))
                     (cons _arity161239161326_ _arity161224161275_))
                   (let ()
                     (declare (not safe))
                     (cons _hd161229161294_ _prim161225161277_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop161234161306_
                                           _target161231161300_
                                           '()))
                                        (_g161210161245_ _g161211161249_)))))
                              (_g161210161245_ _g161211161249_))))
                      (_g161210161245_ _g161211161249_))))
              (let ((_arity161226161330_ (reverse _arity161224161275_))
                    (_prim161227161333_ (reverse _prim161225161277_)))
                ((lambda (_L161336_ _L161338_)
                   (let ((__tmp162275
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp162268
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L161336_
                               _L161338_))
                            (let ((__tmp162269
                                   (lambda (_g161353161359_
                                            _g161354161362_
                                            _g161355161364_)
                                     (let ((__tmp162270
                                            (let ((__tmp162274
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp162271
                                                   (let ((__tmp162272
                                                          (let ((__tmp162273
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g161356161367_ _g161357161370_)
                           (let ()
                             (declare (not safe))
                             (cons _g161356161367_ _g161357161370_)))))
                    (declare (not safe))
                    (foldr1 __tmp162273 '() _g161353161359_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g161354161362_
                                                           __tmp162272))))
                                              (declare (not safe))
                                              (cons __tmp162274 __tmp162271))))
                                       (declare (not safe))
                                       (cons __tmp162270 _g161355161364_)))))
                              (declare (not safe))
                              (foldr2 __tmp162269 '() _L161336_ _L161338_)))))
                     (declare (not safe))
                     (cons __tmp162275 __tmp162268)))
                 _arity161226161330_
                 _prim161227161333_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop161220161268_
                                         _target161217161262_
                                         '()
                                         '()))
                                      (_g161210161245_ _g161211161249_)))))
                            (_g161210161245_ _g161211161249_))))
                    (_g161210161245_ _g161211161249_)))))
        (_g161209161373_ _$stx161206_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx161379_)
      (let* ((_g161383161418_
              (lambda (_g161384161414_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161384161414_))))
             (_g161382161546_
              (lambda (_g161384161422_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161384161422_))
                    (let ((_e161389161425_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161384161422_))))
                      (let ((_hd161388161429_
                             (let ()
                               (declare (not safe))
                               (##car _e161389161425_)))
                            (_tl161387161432_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161389161425_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl161387161432_))
                            (let ((_g162278_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl161387161432_
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
                                (let ((_target161390161435_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162278_ 0)))
                                      (_tl161392161438_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162278_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl161392161438_))
                                      (letrec ((_loop161393161441_
                                                (lambda (_hd161391161445_
                                                         _arity161397161448_
                                                         _prim161398161450_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd161391161445_))
                                                      (let ((_e161394161453_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd161391161445_))))
                (let ((_lp-hd161395161457_
                       (let () (declare (not safe)) (##car _e161394161453_)))
                      (_lp-tl161396161460_
                       (let () (declare (not safe)) (##cdr _e161394161453_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd161395161457_))
                      (let ((_e161403161463_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd161395161457_))))
                        (let ((_hd161402161467_
                               (let ()
                                 (declare (not safe))
                                 (##car _e161403161463_)))
                              (_tl161401161470_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e161403161463_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl161401161470_))
                              (let ((_g162288_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl161401161470_
                                        '0))))
                                (begin
                                  (let ((_g162289_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g162288_)
                                               (##vector-length _g162288_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g162289_ 2)))
                                        (error "Context expects 2 values"
                                               _g162289_)))
                                  (let ((_target161404161473_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g162288_ 0)))
                                        (_tl161406161476_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g162288_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl161406161476_))
                                        (letrec ((_loop161407161479_
                                                  (lambda (_hd161405161483_
                                                           _arity161411161486_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd161405161483_))
                                                        (let ((_e161408161489_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd161405161483_))))
                  (let ((_lp-hd161409161493_
                         (let () (declare (not safe)) (##car _e161408161489_)))
                        (_lp-tl161410161496_
                         (let ()
                           (declare (not safe))
                           (##cdr _e161408161489_))))
                    (_loop161407161479_
                     _lp-tl161410161496_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd161409161493_ _arity161411161486_)))))
                (let ((_arity161412161499_ (reverse _arity161411161486_)))
                  (_loop161393161441_
                   _lp-tl161396161460_
                   (let ()
                     (declare (not safe))
                     (cons _arity161412161499_ _arity161397161448_))
                   (let ()
                     (declare (not safe))
                     (cons _hd161402161467_ _prim161398161450_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop161407161479_
                                           _target161404161473_
                                           '()))
                                        (_g161383161418_ _g161384161422_)))))
                              (_g161383161418_ _g161384161422_))))
                      (_g161383161418_ _g161384161422_))))
              (let ((_arity161399161503_ (reverse _arity161397161448_))
                    (_prim161400161506_ (reverse _prim161398161450_)))
                ((lambda (_L161509_ _L161511_)
                   (let ((__tmp162287
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp162280
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L161509_
                               _L161511_))
                            (let ((__tmp162281
                                   (lambda (_g161526161532_
                                            _g161527161535_
                                            _g161528161537_)
                                     (let ((__tmp162282
                                            (let ((__tmp162286
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp162283
                                                   (let ((__tmp162284
                                                          (let ((__tmp162285
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g161529161540_ _g161530161543_)
                           (let ()
                             (declare (not safe))
                             (cons _g161529161540_ _g161530161543_)))))
                    (declare (not safe))
                    (foldr1 __tmp162285 '() _g161526161532_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g161527161535_
                                                           __tmp162284))))
                                              (declare (not safe))
                                              (cons __tmp162286 __tmp162283))))
                                       (declare (not safe))
                                       (cons __tmp162282 _g161528161537_)))))
                              (declare (not safe))
                              (foldr2 __tmp162281 '() _L161509_ _L161511_)))))
                     (declare (not safe))
                     (cons __tmp162287 __tmp162280)))
                 _arity161399161503_
                 _prim161400161506_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop161393161441_
                                         _target161390161435_
                                         '()
                                         '()))
                                      (_g161383161418_ _g161384161422_)))))
                            (_g161383161418_ _g161384161422_))))
                    (_g161383161418_ _g161384161422_)))))
        (_g161382161546_ _$stx161379_)))))
