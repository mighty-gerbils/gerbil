(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-compile-top-syntax
    (lambda (_stx11056_)
      (let ((_e1105711064_ _stx11056_))
        (let ((_E1105911068_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1105711064_))))
          (let ((_E1105811082_
                 (lambda ()
                   (if (gx#stx-pair? _e1105711064_)
                       (let ((_e1106011072_ (gx#syntax-e _e1105711064_)))
                         (let ((_hd1106111075_ (##car _e1106011072_))
                               (_tl1106211077_ (##cdr _e1106011072_)))
                           (let ((_form11080_ _hd1106111075_))
                             (if '#t
                                 (call-method
                                  (gx#syntax-local-e__0 _form11080_)
                                  'compile-top-syntax
                                  _stx11056_)
                                 (_E1105911068_)))))
                       (_E1105911068_)))))
            (let () (_E1105811082_)))))))
  (define gx#core-expander::compile-top-syntax
    (lambda (_self11016_ _stx11017_)
      (let ((_self1101811026_ _self11016_))
        (let ((_E1102011030_
               (lambda () (error '"No clause matching" _self1101811026_))))
          (let ((_K1102111042_
                 (lambda (_K11033_)
                   (let ((_$e11035_ (gx#stx-source _stx11017_)))
                     (if _$e11035_
                         ((lambda (_g1103711039_)
                            (gx#stx-wrap-source
                             (_K11033_ _stx11017_)
                             _g1103711039_))
                          _$e11035_)
                         (_K11033_ _stx11017_))))))
            (if (struct-instance? gx#core-expander::t _self1101811026_)
                (let ((_e1102211045_ (##vector-ref _self1101811026_ '1)))
                  (let ((_e1102311048_ (##vector-ref _self1101811026_ '2)))
                    (let ((_e1102411051_ (##vector-ref _self1101811026_ '3)))
                      (let ((_K11054_ _e1102411051_))
                        (_K1102111042_ _K11054_)))))
                (_E1102011030_)))))))
  (bind-method!
   gx#core-expander::t
   'compile-top-syntax
   gx#core-expander::compile-top-syntax
   '#f)
  (define gx#core-compile-top-error
    (lambda (_stx11014_)
      (gx#raise-syntax-error 'compile '"Cannot compile form" _stx11014_)))
  (define gx#core-compile-top-begin%
    (lambda (_stx10984_)
      (let ((_e1098510992_ _stx10984_))
        (let ((_E1098710996_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1098510992_))))
          (let ((_E1098611010_
                 (lambda ()
                   (if (gx#stx-pair? _e1098510992_)
                       (let ((_e1098811000_ (gx#syntax-e _e1098510992_)))
                         (let ((_hd1098911003_ (##car _e1098811000_))
                               (_tl1099011005_ (##cdr _e1098811000_)))
                           (let ((_body11008_ _tl1099011005_))
                             (if '#t
                                 (cons '%#begin
                                       (gx#stx-map1
                                        gx#core-compile-top-syntax
                                        _body11008_))
                                 (_E1098710996_)))))
                       (_E1098710996_)))))
            (let () (_E1098611010_)))))))
  (define gx#core-compile-top-begin-syntax%
    (lambda (_stx10953_)
      (let ((_e1095410961_ _stx10953_))
        (let ((_E1095610965_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1095410961_))))
          (let ((_E1095510980_
                 (lambda ()
                   (if (gx#stx-pair? _e1095410961_)
                       (let ((_e1095710969_ (gx#syntax-e _e1095410961_)))
                         (let ((_hd1095810972_ (##car _e1095710969_))
                               (_tl1095910974_ (##cdr _e1095710969_)))
                           (let ((_body10977_ _tl1095910974_))
                             (if '#t
                                 (cons '%#begin-syntax
                                       (call-with-parameters
                                        (lambda ()
                                          (gx#stx-map1
                                           gx#core-compile-top-syntax
                                           _body10977_))
                                        gx#current-expander-phi
                                        (fx1+ (gx#current-expander-phi))))
                                 (_E1095610965_)))))
                       (_E1095610965_)))))
            (let () (_E1095510980_)))))))
  (define gx#core-compile-top-begin-foreign%
    (lambda (_stx10923_)
      (let ((_e1092410931_ _stx10923_))
        (let ((_E1092610935_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1092410931_))))
          (let ((_E1092510949_
                 (lambda ()
                   (if (gx#stx-pair? _e1092410931_)
                       (let ((_e1092710939_ (gx#syntax-e _e1092410931_)))
                         (let ((_hd1092810942_ (##car _e1092710939_))
                               (_tl1092910944_ (##cdr _e1092710939_)))
                           (let ((_body10947_ _tl1092910944_))
                             (if '#t
                                 (cons '%#begin-foreign _body10947_)
                                 (_E1092610935_)))))
                       (_E1092610935_)))))
            (let () (_E1092510949_)))))))
  (define gx#core-compile-top-import%
    (lambda (_stx10893_)
      (let ((_e1089410901_ _stx10893_))
        (let ((_E1089610905_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1089410901_))))
          (let ((_E1089510919_
                 (lambda ()
                   (if (gx#stx-pair? _e1089410901_)
                       (let ((_e1089710909_ (gx#syntax-e _e1089410901_)))
                         (let ((_hd1089810912_ (##car _e1089710909_))
                               (_tl1089910914_ (##cdr _e1089710909_)))
                           (let ((_body10917_ _tl1089910914_))
                             (if '#t
                                 (cons '%#import (gx#syntax->list _body10917_))
                                 (_E1089610905_)))))
                       (_E1089610905_)))))
            (let () (_E1089510919_)))))))
  (define gx#core-compile-top-module%
    (lambda (_stx10850_)
      (let ((_e1085110861_ _stx10850_))
        (let ((_E1085310865_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1085110861_))))
          (let ((_E1085210889_
                 (lambda ()
                   (if (gx#stx-pair? _e1085110861_)
                       (let ((_e1085410869_ (gx#syntax-e _e1085110861_)))
                         (let ((_hd1085510872_ (##car _e1085410869_))
                               (_tl1085610874_ (##cdr _e1085410869_)))
                           (if (gx#stx-pair? _tl1085610874_)
                               (let ((_e1085710877_
                                      (gx#syntax-e _tl1085610874_)))
                                 (let ((_hd1085810880_ (##car _e1085710877_))
                                       (_tl1085910882_ (##cdr _e1085710877_)))
                                   (let ((_hd10885_ _hd1085810880_))
                                     (let ((_body10887_ _tl1085910882_))
                                       (if '#t
                                           (cons* '%#module
                                                  (##structure-ref
                                                   (gx#syntax-local-e__0
                                                    _hd10885_)
                                                   '1
                                                   gx#expander-context::t
                                                   '#f)
                                                  (gx#stx-map1
                                                   gx#core-compile-top-syntax
                                                   _body10887_))
                                           (_E1085310865_))))))
                               (_E1085310865_))))
                       (_E1085310865_)))))
            (let () (_E1085210889_)))))))
  (define gx#core-compile-top-export%
    (lambda (_stx10820_)
      (let ((_e1082110828_ _stx10820_))
        (let ((_E1082310832_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1082110828_))))
          (let ((_E1082210846_
                 (lambda ()
                   (if (gx#stx-pair? _e1082110828_)
                       (let ((_e1082410836_ (gx#syntax-e _e1082110828_)))
                         (let ((_hd1082510839_ (##car _e1082410836_))
                               (_tl1082610841_ (##cdr _e1082410836_)))
                           (let ((_body10844_ _tl1082610841_))
                             (if '#t
                                 (cons '%#export (gx#syntax->list _body10844_))
                                 (_E1082310832_)))))
                       (_E1082310832_)))))
            (let () (_E1082210846_)))))))
  (define gx#core-compile-top-provide%
    (lambda (_stx10790_)
      (let ((_e1079110798_ _stx10790_))
        (let ((_E1079310802_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1079110798_))))
          (let ((_E1079210816_
                 (lambda ()
                   (if (gx#stx-pair? _e1079110798_)
                       (let ((_e1079410806_ (gx#syntax-e _e1079110798_)))
                         (let ((_hd1079510809_ (##car _e1079410806_))
                               (_tl1079610811_ (##cdr _e1079410806_)))
                           (let ((_body10814_ _tl1079610811_))
                             (if '#t
                                 (cons '%#provide
                                       (gx#stx-map1
                                        gx#core-quote-syntax
                                        _body10814_))
                                 (_E1079310802_)))))
                       (_E1079310802_)))))
            (let () (_E1079210816_)))))))
  (define gx#core-compile-top-extern%
    (lambda (_stx10715_)
      (let ((_generate10717_
             (lambda (_hd10747_)
               (let ((_e1074810758_ _hd10747_))
                 (let ((_E1075010762_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e1074810758_))))
                   (let ((_E1074910786_
                          (lambda ()
                            (if (gx#stx-pair? _e1074810758_)
                                (let ((_e1075110766_
                                       (gx#syntax-e _e1074810758_)))
                                  (let ((_hd1075210769_ (##car _e1075110766_))
                                        (_tl1075310771_ (##cdr _e1075110766_)))
                                    (let ((_id10774_ _hd1075210769_))
                                      (if (gx#stx-pair? _tl1075310771_)
                                          (let ((_e1075410776_
                                                 (gx#syntax-e _tl1075310771_)))
                                            (let ((_hd1075510779_
                                                   (##car _e1075410776_))
                                                  (_tl1075610781_
                                                   (##cdr _e1075410776_)))
                                              (let ((_eid10784_
                                                     _hd1075510779_))
                                                (if (gx#stx-null?
                                                     _tl1075610781_)
                                                    (if '#t
                                                        (cons (gx#core-quote-syntax__0
                                                               _id10774_)
                                                              (cons (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _eid10784_)
                            '()))
                (_E1075010762_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1075010762_)))))
                                          (_E1075010762_)))))
                                (_E1075010762_)))))
                     (let () (_E1074910786_))))))))
        (let ((_e1071810725_ _stx10715_))
          (let ((_E1072010729_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e1071810725_))))
            (let ((_E1071910743_
                   (lambda ()
                     (if (gx#stx-pair? _e1071810725_)
                         (let ((_e1072110733_ (gx#syntax-e _e1071810725_)))
                           (let ((_hd1072210736_ (##car _e1072110733_))
                                 (_tl1072310738_ (##cdr _e1072110733_)))
                             (let ((_body10741_ _tl1072310738_))
                               (if '#t
                                   (cons '%#extern
                                         (gx#stx-map1
                                          _generate10717_
                                          _body10741_))
                                   (_E1072010729_)))))
                         (_E1072010729_)))))
              (let () (_E1071910743_))))))))
  (define gx#core-compile-top-define-values%
    (lambda (_stx10661_)
      (let ((_e1066210675_ _stx10661_))
        (let ((_E1066410679_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1066210675_))))
          (let ((_E1066310711_
                 (lambda ()
                   (if (gx#stx-pair? _e1066210675_)
                       (let ((_e1066510683_ (gx#syntax-e _e1066210675_)))
                         (let ((_hd1066610686_ (##car _e1066510683_))
                               (_tl1066710688_ (##cdr _e1066510683_)))
                           (if (gx#stx-pair? _tl1066710688_)
                               (let ((_e1066810691_
                                      (gx#syntax-e _tl1066710688_)))
                                 (let ((_hd1066910694_ (##car _e1066810691_))
                                       (_tl1067010696_ (##cdr _e1066810691_)))
                                   (let ((_hd10699_ _hd1066910694_))
                                     (if (gx#stx-pair? _tl1067010696_)
                                         (let ((_e1067110701_
                                                (gx#syntax-e _tl1067010696_)))
                                           (let ((_hd1067210704_
                                                  (##car _e1067110701_))
                                                 (_tl1067310706_
                                                  (##cdr _e1067110701_)))
                                             (let ((_expr10709_
                                                    _hd1067210704_))
                                               (if (gx#stx-null?
                                                    _tl1067310706_)
                                                   (if '#t
                                                       (cons '%#define-values
                                                             (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            gx#core-compile-top-runtime-bind
                            _hd10699_)
                           (cons (gx#core-compile-top-syntax _expr10709_)
                                 '())))
               (_E1066410679_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1066410679_)))))
                                         (_E1066410679_)))))
                               (_E1066410679_))))
                       (_E1066410679_)))))
            (let () (_E1066310711_)))))))
  (define gx#core-compile-top-define-syntax%
    (lambda (_stx10606_)
      (let ((_e1060710620_ _stx10606_))
        (let ((_E1060910624_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1060710620_))))
          (let ((_E1060810657_
                 (lambda ()
                   (if (gx#stx-pair? _e1060710620_)
                       (let ((_e1061010628_ (gx#syntax-e _e1060710620_)))
                         (let ((_hd1061110631_ (##car _e1061010628_))
                               (_tl1061210633_ (##cdr _e1061010628_)))
                           (if (gx#stx-pair? _tl1061210633_)
                               (let ((_e1061310636_
                                      (gx#syntax-e _tl1061210633_)))
                                 (let ((_hd1061410639_ (##car _e1061310636_))
                                       (_tl1061510641_ (##cdr _e1061310636_)))
                                   (let ((_hd10644_ _hd1061410639_))
                                     (if (gx#stx-pair? _tl1061510641_)
                                         (let ((_e1061610646_
                                                (gx#syntax-e _tl1061510641_)))
                                           (let ((_hd1061710649_
                                                  (##car _e1061610646_))
                                                 (_tl1061810651_
                                                  (##cdr _e1061610646_)))
                                             (let ((_expr10654_
                                                    _hd1061710649_))
                                               (if (gx#stx-null?
                                                    _tl1061810651_)
                                                   (if '#t
                                                       (cons '%#define-syntax
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd10644_)
                           (cons (call-with-parameters
                                  (lambda ()
                                    (gx#core-compile-top-syntax _expr10654_))
                                  gx#current-expander-phi
                                  (fx1+ (gx#current-expander-phi)))
                                 '())))
               (_E1060910624_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1060910624_)))))
                                         (_E1060910624_)))))
                               (_E1060910624_))))
                       (_E1060910624_)))))
            (let () (_E1060810657_)))))))
  (define gx#core-compile-top-define-alias%
    (lambda (_stx10552_)
      (let ((_e1055310566_ _stx10552_))
        (let ((_E1055510570_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1055310566_))))
          (let ((_E1055410602_
                 (lambda ()
                   (if (gx#stx-pair? _e1055310566_)
                       (let ((_e1055610574_ (gx#syntax-e _e1055310566_)))
                         (let ((_hd1055710577_ (##car _e1055610574_))
                               (_tl1055810579_ (##cdr _e1055610574_)))
                           (if (gx#stx-pair? _tl1055810579_)
                               (let ((_e1055910582_
                                      (gx#syntax-e _tl1055810579_)))
                                 (let ((_hd1056010585_ (##car _e1055910582_))
                                       (_tl1056110587_ (##cdr _e1055910582_)))
                                   (let ((_hd10590_ _hd1056010585_))
                                     (if (gx#stx-pair? _tl1056110587_)
                                         (let ((_e1056210592_
                                                (gx#syntax-e _tl1056110587_)))
                                           (let ((_hd1056310595_
                                                  (##car _e1056210592_))
                                                 (_tl1056410597_
                                                  (##cdr _e1056210592_)))
                                             (let ((_alias-id10600_
                                                    _hd1056310595_))
                                               (if (gx#stx-null?
                                                    _tl1056410597_)
                                                   (if '#t
                                                       (cons '%#define-alias
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd10590_)
                           (cons (gx#core-quote-syntax__0 _alias-id10600_)
                                 '())))
               (_E1055510570_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1055510570_)))))
                                         (_E1055510570_)))))
                               (_E1055510570_))))
                       (_E1055510570_)))))
            (let () (_E1055410602_)))))))
  (define gx#core-compile-top-define-runtime%
    (lambda (_stx10498_)
      (let ((_e1049910512_ _stx10498_))
        (let ((_E1050110516_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1049910512_))))
          (let ((_E1050010548_
                 (lambda ()
                   (if (gx#stx-pair? _e1049910512_)
                       (let ((_e1050210520_ (gx#syntax-e _e1049910512_)))
                         (let ((_hd1050310523_ (##car _e1050210520_))
                               (_tl1050410525_ (##cdr _e1050210520_)))
                           (if (gx#stx-pair? _tl1050410525_)
                               (let ((_e1050510528_
                                      (gx#syntax-e _tl1050410525_)))
                                 (let ((_hd1050610531_ (##car _e1050510528_))
                                       (_tl1050710533_ (##cdr _e1050510528_)))
                                   (let ((_id10536_ _hd1050610531_))
                                     (if (gx#stx-pair? _tl1050710533_)
                                         (let ((_e1050810538_
                                                (gx#syntax-e _tl1050710533_)))
                                           (let ((_hd1050910541_
                                                  (##car _e1050810538_))
                                                 (_tl1051010543_
                                                  (##cdr _e1050810538_)))
                                             (let ((_binding-id10546_
                                                    _hd1050910541_))
                                               (if (gx#stx-null?
                                                    _tl1051010543_)
                                                   (if '#t
                                                       (cons '%#define-runtime
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id10536_)
                           (cons (gx#core-quote-syntax__0 _binding-id10546_)
                                 '())))
               (_E1050110516_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1050110516_)))))
                                         (_E1050110516_)))))
                               (_E1050110516_))))
                       (_E1050110516_)))))
            (let () (_E1050010548_)))))))
  (define gx#core-compile-top-declare%
    (lambda (_stx10468_)
      (let ((_e1046910476_ _stx10468_))
        (let ((_E1047110480_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1046910476_))))
          (let ((_E1047010494_
                 (lambda ()
                   (if (gx#stx-pair? _e1046910476_)
                       (let ((_e1047210484_ (gx#syntax-e _e1046910476_)))
                         (let ((_hd1047310487_ (##car _e1047210484_))
                               (_tl1047410489_ (##cdr _e1047210484_)))
                           (let ((_decls10492_ _tl1047410489_))
                             (if '#t
                                 (cons '%#declare _decls10492_)
                                 (_E1047110480_)))))
                       (_E1047110480_)))))
            (let () (_E1047010494_)))))))
  (define gx#core-compile-top-lambda%
    (lambda (_stx10438_)
      (let ((_e1043910446_ _stx10438_))
        (let ((_E1044110450_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1043910446_))))
          (let ((_E1044010464_
                 (lambda ()
                   (if (gx#stx-pair? _e1043910446_)
                       (let ((_e1044210454_ (gx#syntax-e _e1043910446_)))
                         (let ((_hd1044310457_ (##car _e1044210454_))
                               (_tl1044410459_ (##cdr _e1044210454_)))
                           (let ((_clause10462_ _tl1044410459_))
                             (if '#t
                                 (cons '%#lambda
                                       (gx#core-compile-top-lambda-clause
                                        _clause10462_))
                                 (_E1044110450_)))))
                       (_E1044110450_)))))
            (let () (_E1044010464_)))))))
  (define gx#core-compile-top-lambda-clause
    (lambda (_stx10395_)
      (let ((_e1039610406_ _stx10395_))
        (let ((_E1039810410_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1039610406_))))
          (let ((_E1039710434_
                 (lambda ()
                   (if (gx#stx-pair? _e1039610406_)
                       (let ((_e1039910414_ (gx#syntax-e _e1039610406_)))
                         (let ((_hd1040010417_ (##car _e1039910414_))
                               (_tl1040110419_ (##cdr _e1039910414_)))
                           (let ((_hd10422_ _hd1040010417_))
                             (if (gx#stx-pair? _tl1040110419_)
                                 (let ((_e1040210424_
                                        (gx#syntax-e _tl1040110419_)))
                                   (let ((_hd1040310427_ (##car _e1040210424_))
                                         (_tl1040410429_
                                          (##cdr _e1040210424_)))
                                     (let ((_body10432_ _hd1040310427_))
                                       (if (gx#stx-null? _tl1040410429_)
                                           (if '#t
                                               (cons (gx#stx-map1
                                                      gx#core-compile-top-runtime-bind
                                                      _hd10422_)
                                                     (cons (gx#core-compile-top-syntax
                                                            _body10432_)
                                                           '()))
                                               (_E1039810410_))
                                           (_E1039810410_)))))
                                 (_E1039810410_)))))
                       (_E1039810410_)))))
            (let () (_E1039710434_)))))))
  (define gx#core-compile-top-case-lambda%
    (lambda (_stx10365_)
      (let ((_e1036610373_ _stx10365_))
        (let ((_E1036810377_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1036610373_))))
          (let ((_E1036710391_
                 (lambda ()
                   (if (gx#stx-pair? _e1036610373_)
                       (let ((_e1036910381_ (gx#syntax-e _e1036610373_)))
                         (let ((_hd1037010384_ (##car _e1036910381_))
                               (_tl1037110386_ (##cdr _e1036910381_)))
                           (let ((_clauses10389_ _tl1037110386_))
                             (if '#t
                                 (cons '%#case-lambda
                                       (gx#stx-map1
                                        gx#core-compile-top-lambda-clause
                                        _clauses10389_))
                                 (_E1036810377_)))))
                       (_E1036810377_)))))
            (let () (_E1036710391_)))))))
  (begin
    (define gx#core-compile-top-let-values%__opt-lambda10298
      (lambda (_stx10300_ _form10301_)
        (let ((_e1030210315_ _stx10300_))
          (let ((_E1030410319_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e1030210315_))))
            (let ((_E1030310351_
                   (lambda ()
                     (if (gx#stx-pair? _e1030210315_)
                         (let ((_e1030510323_ (gx#syntax-e _e1030210315_)))
                           (let ((_hd1030610326_ (##car _e1030510323_))
                                 (_tl1030710328_ (##cdr _e1030510323_)))
                             (if (gx#stx-pair? _tl1030710328_)
                                 (let ((_e1030810331_
                                        (gx#syntax-e _tl1030710328_)))
                                   (let ((_hd1030910334_ (##car _e1030810331_))
                                         (_tl1031010336_
                                          (##cdr _e1030810331_)))
                                     (let ((_hd10339_ _hd1030910334_))
                                       (if (gx#stx-pair? _tl1031010336_)
                                           (let ((_e1031110341_
                                                  (gx#syntax-e
                                                   _tl1031010336_)))
                                             (let ((_hd1031210344_
                                                    (##car _e1031110341_))
                                                   (_tl1031310346_
                                                    (##cdr _e1031110341_)))
                                               (let ((_body10349_
                                                      _hd1031210344_))
                                                 (if (gx#stx-null?
                                                      _tl1031310346_)
                                                     (if '#t
                                                         (cons _form10301_
                                                               (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              gx#core-compile-top-lambda-clause
                              _hd10339_)
                             (cons (gx#core-compile-top-syntax _body10349_)
                                   '())))
                 (_E1030410319_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1030410319_)))))
                                           (_E1030410319_)))))
                                 (_E1030410319_))))
                         (_E1030410319_)))))
              (let () (_E1030310351_)))))))
    (begin
      (define gx#core-compile-top-let-values%__0
        (lambda (_stx10358_)
          (let ((_form10360_ '%#let-values))
            (gx#core-compile-top-let-values%__opt-lambda10298
             _stx10358_
             _form10360_))))
      (define gx#core-compile-top-let-values%
        (lambda _g11086_
          (let ((_g11085_ (length _g11086_)))
            (cond ((fx= _g11085_ 1)
                   (apply (lambda (_stx10358_)
                            (gx#core-compile-top-let-values%__0 _stx10358_))
                          _g11086_))
                  ((fx= _g11085_ 2)
                   (apply (lambda (_stx10362_ _form10363_)
                            (gx#core-compile-top-let-values%__opt-lambda10298
                             _stx10362_
                             _form10363_))
                          _g11086_))
                  (else (error "No clause matching arguments" _g11086_))))))))
  (define gx#core-compile-top-letrec-values%
    (lambda (_stx10297_)
      (gx#core-compile-top-let-values%__opt-lambda10298
       _stx10297_
       '%#letrec-values)))
  (define gx#core-compile-top-letrec*-values%
    (lambda (_stx10295_)
      (gx#core-compile-top-let-values%__opt-lambda10298
       _stx10295_
       '%#letrec*-values)))
  (define gx#core-compile-top-quote%
    (lambda (_stx10254_)
      (let ((_e1025510265_ _stx10254_))
        (let ((_E1025710269_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1025510265_))))
          (let ((_E1025610291_
                 (lambda ()
                   (if (gx#stx-pair? _e1025510265_)
                       (let ((_e1025810273_ (gx#syntax-e _e1025510265_)))
                         (let ((_hd1025910276_ (##car _e1025810273_))
                               (_tl1026010278_ (##cdr _e1025810273_)))
                           (if (gx#stx-pair? _tl1026010278_)
                               (let ((_e1026110281_
                                      (gx#syntax-e _tl1026010278_)))
                                 (let ((_hd1026210284_ (##car _e1026110281_))
                                       (_tl1026310286_ (##cdr _e1026110281_)))
                                   (let ((_e10289_ _hd1026210284_))
                                     (if (gx#stx-null? _tl1026310286_)
                                         (if '#t
                                             (cons '%#quote
                                                   (cons (gx#syntax->datum
                                                          _e10289_)
                                                         '()))
                                             (_E1025710269_))
                                         (_E1025710269_)))))
                               (_E1025710269_))))
                       (_E1025710269_)))))
            (let () (_E1025610291_)))))))
  (define gx#core-compile-top-quote-syntax%
    (lambda (_stx10213_)
      (let ((_e1021410224_ _stx10213_))
        (let ((_E1021610228_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1021410224_))))
          (let ((_E1021510250_
                 (lambda ()
                   (if (gx#stx-pair? _e1021410224_)
                       (let ((_e1021710232_ (gx#syntax-e _e1021410224_)))
                         (let ((_hd1021810235_ (##car _e1021710232_))
                               (_tl1021910237_ (##cdr _e1021710232_)))
                           (if (gx#stx-pair? _tl1021910237_)
                               (let ((_e1022010240_
                                      (gx#syntax-e _tl1021910237_)))
                                 (let ((_hd1022110243_ (##car _e1022010240_))
                                       (_tl1022210245_ (##cdr _e1022010240_)))
                                   (let ((_e10248_ _hd1022110243_))
                                     (if (gx#stx-null? _tl1022210245_)
                                         (if '#t
                                             (cons '%#quote-syntax
                                                   (cons (gx#core-quote-syntax__0
                                                          _e10248_)
                                                         '()))
                                             (_E1021610228_))
                                         (_E1021610228_)))))
                               (_E1021610228_))))
                       (_E1021610228_)))))
            (let () (_E1021510250_)))))))
  (define gx#core-compile-top-call%
    (lambda (_stx10170_)
      (let ((_e1017110181_ _stx10170_))
        (let ((_E1017310185_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1017110181_))))
          (let ((_E1017210209_
                 (lambda ()
                   (if (gx#stx-pair? _e1017110181_)
                       (let ((_e1017410189_ (gx#syntax-e _e1017110181_)))
                         (let ((_hd1017510192_ (##car _e1017410189_))
                               (_tl1017610194_ (##cdr _e1017410189_)))
                           (if (gx#stx-pair? _tl1017610194_)
                               (let ((_e1017710197_
                                      (gx#syntax-e _tl1017610194_)))
                                 (let ((_hd1017810200_ (##car _e1017710197_))
                                       (_tl1017910202_ (##cdr _e1017710197_)))
                                   (let ((_rator10205_ _hd1017810200_))
                                     (let ((_args10207_ _tl1017910202_))
                                       (if '#t
                                           (cons* '%#call
                                                  (gx#core-compile-top-syntax
                                                   _rator10205_)
                                                  (gx#stx-map1
                                                   gx#core-compile-top-syntax
                                                   _args10207_))
                                           (_E1017310185_))))))
                               (_E1017310185_))))
                       (_E1017310185_)))))
            (let () (_E1017210209_)))))))
  (define gx#core-compile-top-if%
    (lambda (_stx10103_)
      (let ((_e1010410120_ _stx10103_))
        (let ((_E1010610124_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1010410120_))))
          (let ((_E1010510166_
                 (lambda ()
                   (if (gx#stx-pair? _e1010410120_)
                       (let ((_e1010710128_ (gx#syntax-e _e1010410120_)))
                         (let ((_hd1010810131_ (##car _e1010710128_))
                               (_tl1010910133_ (##cdr _e1010710128_)))
                           (if (gx#stx-pair? _tl1010910133_)
                               (let ((_e1011010136_
                                      (gx#syntax-e _tl1010910133_)))
                                 (let ((_hd1011110139_ (##car _e1011010136_))
                                       (_tl1011210141_ (##cdr _e1011010136_)))
                                   (let ((_test10144_ _hd1011110139_))
                                     (if (gx#stx-pair? _tl1011210141_)
                                         (let ((_e1011310146_
                                                (gx#syntax-e _tl1011210141_)))
                                           (let ((_hd1011410149_
                                                  (##car _e1011310146_))
                                                 (_tl1011510151_
                                                  (##cdr _e1011310146_)))
                                             (let ((_K10154_ _hd1011410149_))
                                               (if (gx#stx-pair?
                                                    _tl1011510151_)
                                                   (let ((_e1011610156_
                                                          (gx#syntax-e
                                                           _tl1011510151_)))
                                                     (let ((_hd1011710159_
                                                            (##car _e1011610156_))
                                                           (_tl1011810161_
                                                            (##cdr _e1011610156_)))
                                                       (let ((_E10164_
                                                              _hd1011710159_))
                                                         (if (gx#stx-null?
                                                              _tl1011810161_)
                                                             (if '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '%#if
                               (cons (gx#core-compile-top-syntax _test10144_)
                                     (cons (gx#core-compile-top-syntax
                                            _K10154_)
                                           (cons (gx#core-compile-top-syntax
                                                  _E10164_)
                                                 '()))))
                         (_E1010610124_))
                     (_E1010610124_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1010610124_)))))
                                         (_E1010610124_)))))
                               (_E1010610124_))))
                       (_E1010610124_)))))
            (let () (_E1010510166_)))))))
  (define gx#core-compile-top-ref%
    (lambda (_stx10062_)
      (let ((_e1006310073_ _stx10062_))
        (let ((_E1006510077_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1006310073_))))
          (let ((_E1006410099_
                 (lambda ()
                   (if (gx#stx-pair? _e1006310073_)
                       (let ((_e1006610081_ (gx#syntax-e _e1006310073_)))
                         (let ((_hd1006710084_ (##car _e1006610081_))
                               (_tl1006810086_ (##cdr _e1006610081_)))
                           (if (gx#stx-pair? _tl1006810086_)
                               (let ((_e1006910089_
                                      (gx#syntax-e _tl1006810086_)))
                                 (let ((_hd1007010092_ (##car _e1006910089_))
                                       (_tl1007110094_ (##cdr _e1006910089_)))
                                   (let ((_id10097_ _hd1007010092_))
                                     (if (gx#stx-null? _tl1007110094_)
                                         (if (gx#identifier? _id10097_)
                                             (cons '%#ref
                                                   (cons (gx#core-compile-top-runtime-ref
                                                          _id10097_)
                                                         '()))
                                             (_E1006510077_))
                                         (_E1006510077_)))))
                               (_E1006510077_))))
                       (_E1006510077_)))))
            (let () (_E1006410099_)))))))
  (define gx#core-compile-top-setq%
    (lambda (_stx10008_)
      (let ((_e1000910022_ _stx10008_))
        (let ((_E1001110026_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1000910022_))))
          (let ((_E1001010058_
                 (lambda ()
                   (if (gx#stx-pair? _e1000910022_)
                       (let ((_e1001210030_ (gx#syntax-e _e1000910022_)))
                         (let ((_hd1001310033_ (##car _e1001210030_))
                               (_tl1001410035_ (##cdr _e1001210030_)))
                           (if (gx#stx-pair? _tl1001410035_)
                               (let ((_e1001510038_
                                      (gx#syntax-e _tl1001410035_)))
                                 (let ((_hd1001610041_ (##car _e1001510038_))
                                       (_tl1001710043_ (##cdr _e1001510038_)))
                                   (let ((_id10046_ _hd1001610041_))
                                     (if (gx#stx-pair? _tl1001710043_)
                                         (let ((_e1001810048_
                                                (gx#syntax-e _tl1001710043_)))
                                           (let ((_hd1001910051_
                                                  (##car _e1001810048_))
                                                 (_tl1002010053_
                                                  (##cdr _e1001810048_)))
                                             (let ((_expr10056_
                                                    _hd1001910051_))
                                               (if (gx#stx-null?
                                                    _tl1002010053_)
                                                   (if (gx#identifier?
                                                        _id10046_)
                                                       (cons '%#set!
                                                             (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id10046_)
                           (cons (gx#core-compile-top-syntax _expr10056_)
                                 '())))
               (_E1001110026_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1001110026_)))))
                                         (_E1001110026_)))))
                               (_E1001110026_))))
                       (_E1001110026_)))))
            (let () (_E1001010058_)))))))
  (define gx#core-compile-top-runtime-ref
    (lambda (_id10003_)
      (let ((_$e10005_ (gx#resolve-identifier__0 _id10003_)))
        (if _$e10005_
            (##structure-ref _$e10005_ '1 gx#binding::t '#f)
            _id10003_))))
  (define gx#core-compile-top-runtime-bind
    (lambda (_hd10001_)
      (if (gx#identifier? _hd10001_)
          (gx#core-compile-top-runtime-ref _hd10001_)
          '#f))))
