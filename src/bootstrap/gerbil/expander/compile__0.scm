(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-compile-top-syntax
    (lambda (_stx17328_)
      (let* ((_e1732917336_ _stx17328_)
             (_E1733117340_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1732917336_)))
             (_E1733017354_
              (lambda ()
                (if (gx#stx-pair? _e1732917336_)
                    (let ((_e1733217344_ (gx#syntax-e _e1732917336_)))
                      (let ((_hd1733317347_ (##car _e1733217344_))
                            (_tl1733417349_ (##cdr _e1733217344_)))
                        (let ((_form17352_ _hd1733317347_))
                          (if '#t
                              (call-method
                               (gx#syntax-local-e__0 _form17352_)
                               'compile-top-syntax
                               _stx17328_)
                              (_E1733117340_)))))
                    (_E1733117340_)))))
        (_E1733017354_))))
  (define gx#core-expander::compile-top-syntax
    (lambda (_self17288_ _stx17289_)
      (let* ((_self1729017298_ _self17288_)
             (_E1729217302_
              (lambda () (error '"No clause matching" _self1729017298_)))
             (_K1729317314_
              (lambda (_K17305_)
                (let ((_$e17307_ (gx#stx-source _stx17289_)))
                  (if _$e17307_
                      ((lambda (_g1730917311_)
                         (gx#stx-wrap-source
                          (_K17305_ _stx17289_)
                          _g1730917311_))
                       _$e17307_)
                      (_K17305_ _stx17289_))))))
        (if (##structure-instance-of? _self1729017298_ 'gx#core-expander::t)
            (let* ((_e1729417317_ (##vector-ref _self1729017298_ '1))
                   (_e1729517320_ (##vector-ref _self1729017298_ '2))
                   (_e1729617323_ (##vector-ref _self1729017298_ '3))
                   (_K17326_ _e1729617323_))
              (_K1729317314_ _K17326_))
            (_E1729217302_)))))
  (bind-method!
   gx#core-expander::t
   'compile-top-syntax
   gx#core-expander::compile-top-syntax
   '#f)
  (define gx#core-compile-top-error
    (lambda (_stx17162_)
      (gx#raise-syntax-error 'compile '"Cannot compile form" _stx17162_)))
  (define gx#core-compile-top-begin%
    (lambda (_stx17132_)
      (let* ((_e1713317140_ _stx17132_)
             (_E1713517144_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1713317140_)))
             (_E1713417158_
              (lambda ()
                (if (gx#stx-pair? _e1713317140_)
                    (let ((_e1713617148_ (gx#syntax-e _e1713317140_)))
                      (let ((_hd1713717151_ (##car _e1713617148_))
                            (_tl1713817153_ (##cdr _e1713617148_)))
                        (let ((_body17156_ _tl1713817153_))
                          (if '#t
                              (cons '%#begin
                                    (gx#stx-map1
                                     gx#core-compile-top-syntax
                                     _body17156_))
                              (_E1713517144_)))))
                    (_E1713517144_)))))
        (_E1713417158_))))
  (define gx#core-compile-top-begin-syntax%
    (lambda (_stx17101_)
      (let* ((_e1710217109_ _stx17101_)
             (_E1710417113_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1710217109_)))
             (_E1710317128_
              (lambda ()
                (if (gx#stx-pair? _e1710217109_)
                    (let ((_e1710517117_ (gx#syntax-e _e1710217109_)))
                      (let ((_hd1710617120_ (##car _e1710517117_))
                            (_tl1710717122_ (##cdr _e1710517117_)))
                        (let ((_body17125_ _tl1710717122_))
                          (if '#t
                              (cons '%#begin-syntax
                                    (call-with-parameters
                                     (lambda ()
                                       (gx#stx-map1
                                        gx#core-compile-top-syntax
                                        _body17125_))
                                     gx#current-expander-phi
                                     (fx+ (gx#current-expander-phi) '1)))
                              (_E1710417113_)))))
                    (_E1710417113_)))))
        (_E1710317128_))))
  (define gx#core-compile-top-begin-foreign%
    (lambda (_stx17071_)
      (let* ((_e1707217079_ _stx17071_)
             (_E1707417083_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1707217079_)))
             (_E1707317097_
              (lambda ()
                (if (gx#stx-pair? _e1707217079_)
                    (let ((_e1707517087_ (gx#syntax-e _e1707217079_)))
                      (let ((_hd1707617090_ (##car _e1707517087_))
                            (_tl1707717092_ (##cdr _e1707517087_)))
                        (let ((_body17095_ _tl1707717092_))
                          (if '#t
                              (cons '%#begin-foreign _body17095_)
                              (_E1707417083_)))))
                    (_E1707417083_)))))
        (_E1707317097_))))
  (define gx#core-compile-top-begin-annotation%
    (lambda (_stx17017_)
      (let* ((_e1701817031_ _stx17017_)
             (_E1702017035_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1701817031_)))
             (_E1701917067_
              (lambda ()
                (if (gx#stx-pair? _e1701817031_)
                    (let ((_e1702117039_ (gx#syntax-e _e1701817031_)))
                      (let ((_hd1702217042_ (##car _e1702117039_))
                            (_tl1702317044_ (##cdr _e1702117039_)))
                        (if (gx#stx-pair? _tl1702317044_)
                            (let ((_e1702417047_ (gx#syntax-e _tl1702317044_)))
                              (let ((_hd1702517050_ (##car _e1702417047_))
                                    (_tl1702617052_ (##cdr _e1702417047_)))
                                (let ((_ann17055_ _hd1702517050_))
                                  (if (gx#stx-pair? _tl1702617052_)
                                      (let ((_e1702717057_
                                             (gx#syntax-e _tl1702617052_)))
                                        (let ((_hd1702817060_
                                               (##car _e1702717057_))
                                              (_tl1702917062_
                                               (##cdr _e1702717057_)))
                                          (let ((_expr17065_ _hd1702817060_))
                                            (if (gx#stx-null? _tl1702917062_)
                                                (if '#t
                                                    (gx#core-compile-top-syntax
                                                     _expr17065_)
                                                    (_E1702017035_))
                                                (_E1702017035_)))))
                                      (_E1702017035_)))))
                            (_E1702017035_))))
                    (_E1702017035_)))))
        (_E1701917067_))))
  (define gx#core-compile-top-import%
    (lambda (_stx16987_)
      (let* ((_e1698816995_ _stx16987_)
             (_E1699016999_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1698816995_)))
             (_E1698917013_
              (lambda ()
                (if (gx#stx-pair? _e1698816995_)
                    (let ((_e1699117003_ (gx#syntax-e _e1698816995_)))
                      (let ((_hd1699217006_ (##car _e1699117003_))
                            (_tl1699317008_ (##cdr _e1699117003_)))
                        (let ((_body17011_ _tl1699317008_))
                          (if '#t
                              (cons '%#import (gx#syntax->list _body17011_))
                              (_E1699016999_)))))
                    (_E1699016999_)))))
        (_E1698917013_))))
  (define gx#core-compile-top-module%
    (lambda (_stx16944_)
      (let* ((_e1694516955_ _stx16944_)
             (_E1694716959_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1694516955_)))
             (_E1694616983_
              (lambda ()
                (if (gx#stx-pair? _e1694516955_)
                    (let ((_e1694816963_ (gx#syntax-e _e1694516955_)))
                      (let ((_hd1694916966_ (##car _e1694816963_))
                            (_tl1695016968_ (##cdr _e1694816963_)))
                        (if (gx#stx-pair? _tl1695016968_)
                            (let ((_e1695116971_ (gx#syntax-e _tl1695016968_)))
                              (let ((_hd1695216974_ (##car _e1695116971_))
                                    (_tl1695316976_ (##cdr _e1695116971_)))
                                (let* ((_hd16979_ _hd1695216974_)
                                       (_body16981_ _tl1695316976_))
                                  (if '#t
                                      (cons '%#module
                                            (cons (##structure-ref
                                                   (gx#syntax-local-e__0
                                                    _hd16979_)
                                                   '1
                                                   gx#expander-context::t
                                                   '#f)
                                                  (gx#stx-map1
                                                   gx#core-compile-top-syntax
                                                   _body16981_)))
                                      (_E1694716959_)))))
                            (_E1694716959_))))
                    (_E1694716959_)))))
        (_E1694616983_))))
  (define gx#core-compile-top-export%
    (lambda (_stx16914_)
      (let* ((_e1691516922_ _stx16914_)
             (_E1691716926_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1691516922_)))
             (_E1691616940_
              (lambda ()
                (if (gx#stx-pair? _e1691516922_)
                    (let ((_e1691816930_ (gx#syntax-e _e1691516922_)))
                      (let ((_hd1691916933_ (##car _e1691816930_))
                            (_tl1692016935_ (##cdr _e1691816930_)))
                        (let ((_body16938_ _tl1692016935_))
                          (if '#t
                              (cons '%#export (gx#syntax->list _body16938_))
                              (_E1691716926_)))))
                    (_E1691716926_)))))
        (_E1691616940_))))
  (define gx#core-compile-top-provide%
    (lambda (_stx16884_)
      (let* ((_e1688516892_ _stx16884_)
             (_E1688716896_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1688516892_)))
             (_E1688616910_
              (lambda ()
                (if (gx#stx-pair? _e1688516892_)
                    (let ((_e1688816900_ (gx#syntax-e _e1688516892_)))
                      (let ((_hd1688916903_ (##car _e1688816900_))
                            (_tl1689016905_ (##cdr _e1688816900_)))
                        (let ((_body16908_ _tl1689016905_))
                          (if '#t
                              (cons '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body16908_))
                              (_E1688716896_)))))
                    (_E1688716896_)))))
        (_E1688616910_))))
  (define gx#core-compile-top-extern%
    (lambda (_stx16809_)
      (letrec ((_generate16811_
                (lambda (_hd16841_)
                  (let* ((_e1684216852_ _hd16841_)
                         (_E1684416856_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e1684216852_)))
                         (_E1684316880_
                          (lambda ()
                            (if (gx#stx-pair? _e1684216852_)
                                (let ((_e1684516860_
                                       (gx#syntax-e _e1684216852_)))
                                  (let ((_hd1684616863_ (##car _e1684516860_))
                                        (_tl1684716865_ (##cdr _e1684516860_)))
                                    (let ((_id16868_ _hd1684616863_))
                                      (if (gx#stx-pair? _tl1684716865_)
                                          (let ((_e1684816870_
                                                 (gx#syntax-e _tl1684716865_)))
                                            (let ((_hd1684916873_
                                                   (##car _e1684816870_))
                                                  (_tl1685016875_
                                                   (##cdr _e1684816870_)))
                                              (let ((_eid16878_
                                                     _hd1684916873_))
                                                (if (gx#stx-null?
                                                     _tl1685016875_)
                                                    (if '#t
                                                        (cons (gx#core-quote-syntax__0
                                                               _id16868_)
                                                              (cons (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _eid16878_)
                            '()))
                (_E1684416856_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1684416856_)))))
                                          (_E1684416856_)))))
                                (_E1684416856_)))))
                    (_E1684316880_)))))
        (let* ((_e1681216819_ _stx16809_)
               (_E1681416823_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1681216819_)))
               (_E1681316837_
                (lambda ()
                  (if (gx#stx-pair? _e1681216819_)
                      (let ((_e1681516827_ (gx#syntax-e _e1681216819_)))
                        (let ((_hd1681616830_ (##car _e1681516827_))
                              (_tl1681716832_ (##cdr _e1681516827_)))
                          (let ((_body16835_ _tl1681716832_))
                            (if '#t
                                (cons '%#extern
                                      (gx#stx-map1
                                       _generate16811_
                                       _body16835_))
                                (_E1681416823_)))))
                      (_E1681416823_)))))
          (_E1681316837_)))))
  (define gx#core-compile-top-define-values%
    (lambda (_stx16755_)
      (let* ((_e1675616769_ _stx16755_)
             (_E1675816773_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1675616769_)))
             (_E1675716805_
              (lambda ()
                (if (gx#stx-pair? _e1675616769_)
                    (let ((_e1675916777_ (gx#syntax-e _e1675616769_)))
                      (let ((_hd1676016780_ (##car _e1675916777_))
                            (_tl1676116782_ (##cdr _e1675916777_)))
                        (if (gx#stx-pair? _tl1676116782_)
                            (let ((_e1676216785_ (gx#syntax-e _tl1676116782_)))
                              (let ((_hd1676316788_ (##car _e1676216785_))
                                    (_tl1676416790_ (##cdr _e1676216785_)))
                                (let ((_hd16793_ _hd1676316788_))
                                  (if (gx#stx-pair? _tl1676416790_)
                                      (let ((_e1676516795_
                                             (gx#syntax-e _tl1676416790_)))
                                        (let ((_hd1676616798_
                                               (##car _e1676516795_))
                                              (_tl1676716800_
                                               (##cdr _e1676516795_)))
                                          (let ((_expr16803_ _hd1676616798_))
                                            (if (gx#stx-null? _tl1676716800_)
                                                (if '#t
                                                    (cons '%#define-values
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#core-compile-top-runtime-bind
                         _hd16793_)
                        (cons (gx#core-compile-top-syntax _expr16803_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1675816773_))
                                                (_E1675816773_)))))
                                      (_E1675816773_)))))
                            (_E1675816773_))))
                    (_E1675816773_)))))
        (_E1675716805_))))
  (define gx#core-compile-top-define-syntax%
    (lambda (_stx16700_)
      (let* ((_e1670116714_ _stx16700_)
             (_E1670316718_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1670116714_)))
             (_E1670216751_
              (lambda ()
                (if (gx#stx-pair? _e1670116714_)
                    (let ((_e1670416722_ (gx#syntax-e _e1670116714_)))
                      (let ((_hd1670516725_ (##car _e1670416722_))
                            (_tl1670616727_ (##cdr _e1670416722_)))
                        (if (gx#stx-pair? _tl1670616727_)
                            (let ((_e1670716730_ (gx#syntax-e _tl1670616727_)))
                              (let ((_hd1670816733_ (##car _e1670716730_))
                                    (_tl1670916735_ (##cdr _e1670716730_)))
                                (let ((_hd16738_ _hd1670816733_))
                                  (if (gx#stx-pair? _tl1670916735_)
                                      (let ((_e1671016740_
                                             (gx#syntax-e _tl1670916735_)))
                                        (let ((_hd1671116743_
                                               (##car _e1671016740_))
                                              (_tl1671216745_
                                               (##cdr _e1671016740_)))
                                          (let ((_expr16748_ _hd1671116743_))
                                            (if (gx#stx-null? _tl1671216745_)
                                                (if '#t
                                                    (cons '%#define-syntax
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd16738_)
                        (cons (call-with-parameters
                               (lambda ()
                                 (gx#core-compile-top-syntax _expr16748_))
                               gx#current-expander-phi
                               (fx+ (gx#current-expander-phi) '1))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1670316718_))
                                                (_E1670316718_)))))
                                      (_E1670316718_)))))
                            (_E1670316718_))))
                    (_E1670316718_)))))
        (_E1670216751_))))
  (define gx#core-compile-top-define-alias%
    (lambda (_stx16646_)
      (let* ((_e1664716660_ _stx16646_)
             (_E1664916664_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1664716660_)))
             (_E1664816696_
              (lambda ()
                (if (gx#stx-pair? _e1664716660_)
                    (let ((_e1665016668_ (gx#syntax-e _e1664716660_)))
                      (let ((_hd1665116671_ (##car _e1665016668_))
                            (_tl1665216673_ (##cdr _e1665016668_)))
                        (if (gx#stx-pair? _tl1665216673_)
                            (let ((_e1665316676_ (gx#syntax-e _tl1665216673_)))
                              (let ((_hd1665416679_ (##car _e1665316676_))
                                    (_tl1665516681_ (##cdr _e1665316676_)))
                                (let ((_hd16684_ _hd1665416679_))
                                  (if (gx#stx-pair? _tl1665516681_)
                                      (let ((_e1665616686_
                                             (gx#syntax-e _tl1665516681_)))
                                        (let ((_hd1665716689_
                                               (##car _e1665616686_))
                                              (_tl1665816691_
                                               (##cdr _e1665616686_)))
                                          (let ((_alias-id16694_
                                                 _hd1665716689_))
                                            (if (gx#stx-null? _tl1665816691_)
                                                (if '#t
                                                    (cons '%#define-alias
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd16684_)
                        (cons (gx#core-quote-syntax__0 _alias-id16694_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1664916664_))
                                                (_E1664916664_)))))
                                      (_E1664916664_)))))
                            (_E1664916664_))))
                    (_E1664916664_)))))
        (_E1664816696_))))
  (define gx#core-compile-top-define-runtime%
    (lambda (_stx16592_)
      (let* ((_e1659316606_ _stx16592_)
             (_E1659516610_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1659316606_)))
             (_E1659416642_
              (lambda ()
                (if (gx#stx-pair? _e1659316606_)
                    (let ((_e1659616614_ (gx#syntax-e _e1659316606_)))
                      (let ((_hd1659716617_ (##car _e1659616614_))
                            (_tl1659816619_ (##cdr _e1659616614_)))
                        (if (gx#stx-pair? _tl1659816619_)
                            (let ((_e1659916622_ (gx#syntax-e _tl1659816619_)))
                              (let ((_hd1660016625_ (##car _e1659916622_))
                                    (_tl1660116627_ (##cdr _e1659916622_)))
                                (let ((_id16630_ _hd1660016625_))
                                  (if (gx#stx-pair? _tl1660116627_)
                                      (let ((_e1660216632_
                                             (gx#syntax-e _tl1660116627_)))
                                        (let ((_hd1660316635_
                                               (##car _e1660216632_))
                                              (_tl1660416637_
                                               (##cdr _e1660216632_)))
                                          (let ((_binding-id16640_
                                                 _hd1660316635_))
                                            (if (gx#stx-null? _tl1660416637_)
                                                (if '#t
                                                    (cons '%#define-runtime
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _id16630_)
                        (cons (gx#core-quote-syntax__0 _binding-id16640_)
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1659516610_))
                                                (_E1659516610_)))))
                                      (_E1659516610_)))))
                            (_E1659516610_))))
                    (_E1659516610_)))))
        (_E1659416642_))))
  (define gx#core-compile-top-declare%
    (lambda (_stx16562_)
      (let* ((_e1656316570_ _stx16562_)
             (_E1656516574_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1656316570_)))
             (_E1656416588_
              (lambda ()
                (if (gx#stx-pair? _e1656316570_)
                    (let ((_e1656616578_ (gx#syntax-e _e1656316570_)))
                      (let ((_hd1656716581_ (##car _e1656616578_))
                            (_tl1656816583_ (##cdr _e1656616578_)))
                        (let ((_decls16586_ _tl1656816583_))
                          (if '#t
                              (cons '%#declare _decls16586_)
                              (_E1656516574_)))))
                    (_E1656516574_)))))
        (_E1656416588_))))
  (define gx#core-compile-top-lambda%
    (lambda (_stx16532_)
      (let* ((_e1653316540_ _stx16532_)
             (_E1653516544_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1653316540_)))
             (_E1653416558_
              (lambda ()
                (if (gx#stx-pair? _e1653316540_)
                    (let ((_e1653616548_ (gx#syntax-e _e1653316540_)))
                      (let ((_hd1653716551_ (##car _e1653616548_))
                            (_tl1653816553_ (##cdr _e1653616548_)))
                        (let ((_clause16556_ _tl1653816553_))
                          (if '#t
                              (cons '%#lambda
                                    (gx#core-compile-top-lambda-clause
                                     _clause16556_))
                              (_E1653516544_)))))
                    (_E1653516544_)))))
        (_E1653416558_))))
  (define gx#core-compile-top-lambda-clause
    (lambda (_stx16489_)
      (let* ((_e1649016500_ _stx16489_)
             (_E1649216504_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1649016500_)))
             (_E1649116528_
              (lambda ()
                (if (gx#stx-pair? _e1649016500_)
                    (let ((_e1649316508_ (gx#syntax-e _e1649016500_)))
                      (let ((_hd1649416511_ (##car _e1649316508_))
                            (_tl1649516513_ (##cdr _e1649316508_)))
                        (let ((_hd16516_ _hd1649416511_))
                          (if (gx#stx-pair? _tl1649516513_)
                              (let ((_e1649616518_
                                     (gx#syntax-e _tl1649516513_)))
                                (let ((_hd1649716521_ (##car _e1649616518_))
                                      (_tl1649816523_ (##cdr _e1649616518_)))
                                  (let ((_body16526_ _hd1649716521_))
                                    (if (gx#stx-null? _tl1649816523_)
                                        (if '#t
                                            (cons (gx#stx-map1
                                                   gx#core-compile-top-runtime-bind
                                                   _hd16516_)
                                                  (cons (gx#core-compile-top-syntax
                                                         _body16526_)
                                                        '()))
                                            (_E1649216504_))
                                        (_E1649216504_)))))
                              (_E1649216504_)))))
                    (_E1649216504_)))))
        (_E1649116528_))))
  (define gx#core-compile-top-case-lambda%
    (lambda (_stx16459_)
      (let* ((_e1646016467_ _stx16459_)
             (_E1646216471_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1646016467_)))
             (_E1646116485_
              (lambda ()
                (if (gx#stx-pair? _e1646016467_)
                    (let ((_e1646316475_ (gx#syntax-e _e1646016467_)))
                      (let ((_hd1646416478_ (##car _e1646316475_))
                            (_tl1646516480_ (##cdr _e1646316475_)))
                        (let ((_clauses16483_ _tl1646516480_))
                          (if '#t
                              (cons '%#case-lambda
                                    (gx#stx-map1
                                     gx#core-compile-top-lambda-clause
                                     _clauses16483_))
                              (_E1646216471_)))))
                    (_E1646216471_)))))
        (_E1646116485_))))
  (begin
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx16394_ _form16395_)
        (let* ((_e1639616409_ _stx16394_)
               (_E1639816413_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1639616409_)))
               (_E1639716445_
                (lambda ()
                  (if (gx#stx-pair? _e1639616409_)
                      (let ((_e1639916417_ (gx#syntax-e _e1639616409_)))
                        (let ((_hd1640016420_ (##car _e1639916417_))
                              (_tl1640116422_ (##cdr _e1639916417_)))
                          (if (gx#stx-pair? _tl1640116422_)
                              (let ((_e1640216425_
                                     (gx#syntax-e _tl1640116422_)))
                                (let ((_hd1640316428_ (##car _e1640216425_))
                                      (_tl1640416430_ (##cdr _e1640216425_)))
                                  (let ((_hd16433_ _hd1640316428_))
                                    (if (gx#stx-pair? _tl1640416430_)
                                        (let ((_e1640516435_
                                               (gx#syntax-e _tl1640416430_)))
                                          (let ((_hd1640616438_
                                                 (##car _e1640516435_))
                                                (_tl1640716440_
                                                 (##cdr _e1640516435_)))
                                            (let ((_body16443_ _hd1640616438_))
                                              (if (gx#stx-null? _tl1640716440_)
                                                  (if '#t
                                                      (cons _form16395_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd16433_)
                          (cons (gx#core-compile-top-syntax _body16443_) '())))
              (_E1639816413_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1639816413_)))))
                                        (_E1639816413_)))))
                              (_E1639816413_))))
                      (_E1639816413_)))))
          (_E1639716445_))))
    (begin
      (define gx#core-compile-top-let-values%__0
        (lambda (_stx16452_)
          (let ((_form16454_ '%#let-values))
            (gx#core-compile-top-let-values%__% _stx16452_ _form16454_))))
      (define gx#core-compile-top-let-values%
        (lambda _g17358_
          (let ((_g17357_ (length _g17358_)))
            (cond ((##fx= _g17357_ 1)
                   (apply gx#core-compile-top-let-values%__0 _g17358_))
                  ((##fx= _g17357_ 2)
                   (apply gx#core-compile-top-let-values%__% _g17358_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-compile-top-let-values%
                    _g17358_))))))))
  (define gx#core-compile-top-letrec-values%
    (lambda (_stx16391_)
      (gx#core-compile-top-let-values%__% _stx16391_ '%#letrec-values)))
  (define gx#core-compile-top-letrec*-values%
    (lambda (_stx16389_)
      (gx#core-compile-top-let-values%__% _stx16389_ '%#letrec*-values)))
  (define gx#core-compile-top-quote%
    (lambda (_stx16348_)
      (let* ((_e1634916359_ _stx16348_)
             (_E1635116363_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1634916359_)))
             (_E1635016385_
              (lambda ()
                (if (gx#stx-pair? _e1634916359_)
                    (let ((_e1635216367_ (gx#syntax-e _e1634916359_)))
                      (let ((_hd1635316370_ (##car _e1635216367_))
                            (_tl1635416372_ (##cdr _e1635216367_)))
                        (if (gx#stx-pair? _tl1635416372_)
                            (let ((_e1635516375_ (gx#syntax-e _tl1635416372_)))
                              (let ((_hd1635616378_ (##car _e1635516375_))
                                    (_tl1635716380_ (##cdr _e1635516375_)))
                                (let ((_e16383_ _hd1635616378_))
                                  (if (gx#stx-null? _tl1635716380_)
                                      (if '#t
                                          (cons '%#quote
                                                (cons (gx#syntax->datum
                                                       _e16383_)
                                                      '()))
                                          (_E1635116363_))
                                      (_E1635116363_)))))
                            (_E1635116363_))))
                    (_E1635116363_)))))
        (_E1635016385_))))
  (define gx#core-compile-top-quote-syntax%
    (lambda (_stx16307_)
      (let* ((_e1630816318_ _stx16307_)
             (_E1631016322_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1630816318_)))
             (_E1630916344_
              (lambda ()
                (if (gx#stx-pair? _e1630816318_)
                    (let ((_e1631116326_ (gx#syntax-e _e1630816318_)))
                      (let ((_hd1631216329_ (##car _e1631116326_))
                            (_tl1631316331_ (##cdr _e1631116326_)))
                        (if (gx#stx-pair? _tl1631316331_)
                            (let ((_e1631416334_ (gx#syntax-e _tl1631316331_)))
                              (let ((_hd1631516337_ (##car _e1631416334_))
                                    (_tl1631616339_ (##cdr _e1631416334_)))
                                (let ((_e16342_ _hd1631516337_))
                                  (if (gx#stx-null? _tl1631616339_)
                                      (if '#t
                                          (cons '%#quote-syntax
                                                (cons (gx#core-quote-syntax__0
                                                       _e16342_)
                                                      '()))
                                          (_E1631016322_))
                                      (_E1631016322_)))))
                            (_E1631016322_))))
                    (_E1631016322_)))))
        (_E1630916344_))))
  (define gx#core-compile-top-call%
    (lambda (_stx16264_)
      (let* ((_e1626516275_ _stx16264_)
             (_E1626716279_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1626516275_)))
             (_E1626616303_
              (lambda ()
                (if (gx#stx-pair? _e1626516275_)
                    (let ((_e1626816283_ (gx#syntax-e _e1626516275_)))
                      (let ((_hd1626916286_ (##car _e1626816283_))
                            (_tl1627016288_ (##cdr _e1626816283_)))
                        (if (gx#stx-pair? _tl1627016288_)
                            (let ((_e1627116291_ (gx#syntax-e _tl1627016288_)))
                              (let ((_hd1627216294_ (##car _e1627116291_))
                                    (_tl1627316296_ (##cdr _e1627116291_)))
                                (let* ((_rator16299_ _hd1627216294_)
                                       (_args16301_ _tl1627316296_))
                                  (if '#t
                                      (cons '%#call
                                            (cons (gx#core-compile-top-syntax
                                                   _rator16299_)
                                                  (gx#stx-map1
                                                   gx#core-compile-top-syntax
                                                   _args16301_)))
                                      (_E1626716279_)))))
                            (_E1626716279_))))
                    (_E1626716279_)))))
        (_E1626616303_))))
  (define gx#core-compile-top-if%
    (lambda (_stx16197_)
      (let* ((_e1619816214_ _stx16197_)
             (_E1620016218_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1619816214_)))
             (_E1619916260_
              (lambda ()
                (if (gx#stx-pair? _e1619816214_)
                    (let ((_e1620116222_ (gx#syntax-e _e1619816214_)))
                      (let ((_hd1620216225_ (##car _e1620116222_))
                            (_tl1620316227_ (##cdr _e1620116222_)))
                        (if (gx#stx-pair? _tl1620316227_)
                            (let ((_e1620416230_ (gx#syntax-e _tl1620316227_)))
                              (let ((_hd1620516233_ (##car _e1620416230_))
                                    (_tl1620616235_ (##cdr _e1620416230_)))
                                (let ((_test16238_ _hd1620516233_))
                                  (if (gx#stx-pair? _tl1620616235_)
                                      (let ((_e1620716240_
                                             (gx#syntax-e _tl1620616235_)))
                                        (let ((_hd1620816243_
                                               (##car _e1620716240_))
                                              (_tl1620916245_
                                               (##cdr _e1620716240_)))
                                          (let ((_K16248_ _hd1620816243_))
                                            (if (gx#stx-pair? _tl1620916245_)
                                                (let ((_e1621016250_
                                                       (gx#syntax-e
                                                        _tl1620916245_)))
                                                  (let ((_hd1621116253_
                                                         (##car _e1621016250_))
                                                        (_tl1621216255_
                                                         (##cdr _e1621016250_)))
                                                    (let ((_E16258_
                                                           _hd1621116253_))
                                                      (if (gx#stx-null?
                                                           _tl1621216255_)
                                                          (if '#t
                                                              (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gx#core-compile-top-syntax _test16238_)
                                  (cons (gx#core-compile-top-syntax _K16248_)
                                        (cons (gx#core-compile-top-syntax
                                               _E16258_)
                                              '()))))
                      (_E1620016218_))
                  (_E1620016218_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1620016218_)))))
                                      (_E1620016218_)))))
                            (_E1620016218_))))
                    (_E1620016218_)))))
        (_E1619916260_))))
  (define gx#core-compile-top-ref%
    (lambda (_stx16156_)
      (let* ((_e1615716167_ _stx16156_)
             (_E1615916171_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1615716167_)))
             (_E1615816193_
              (lambda ()
                (if (gx#stx-pair? _e1615716167_)
                    (let ((_e1616016175_ (gx#syntax-e _e1615716167_)))
                      (let ((_hd1616116178_ (##car _e1616016175_))
                            (_tl1616216180_ (##cdr _e1616016175_)))
                        (if (gx#stx-pair? _tl1616216180_)
                            (let ((_e1616316183_ (gx#syntax-e _tl1616216180_)))
                              (let ((_hd1616416186_ (##car _e1616316183_))
                                    (_tl1616516188_ (##cdr _e1616316183_)))
                                (let ((_id16191_ _hd1616416186_))
                                  (if (gx#stx-null? _tl1616516188_)
                                      (if (gx#identifier? _id16191_)
                                          (cons '%#ref
                                                (cons (gx#core-compile-top-runtime-ref
                                                       _id16191_)
                                                      '()))
                                          (_E1615916171_))
                                      (_E1615916171_)))))
                            (_E1615916171_))))
                    (_E1615916171_)))))
        (_E1615816193_))))
  (define gx#core-compile-top-setq%
    (lambda (_stx16102_)
      (let* ((_e1610316116_ _stx16102_)
             (_E1610516120_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1610316116_)))
             (_E1610416152_
              (lambda ()
                (if (gx#stx-pair? _e1610316116_)
                    (let ((_e1610616124_ (gx#syntax-e _e1610316116_)))
                      (let ((_hd1610716127_ (##car _e1610616124_))
                            (_tl1610816129_ (##cdr _e1610616124_)))
                        (if (gx#stx-pair? _tl1610816129_)
                            (let ((_e1610916132_ (gx#syntax-e _tl1610816129_)))
                              (let ((_hd1611016135_ (##car _e1610916132_))
                                    (_tl1611116137_ (##cdr _e1610916132_)))
                                (let ((_id16140_ _hd1611016135_))
                                  (if (gx#stx-pair? _tl1611116137_)
                                      (let ((_e1611216142_
                                             (gx#syntax-e _tl1611116137_)))
                                        (let ((_hd1611316145_
                                               (##car _e1611216142_))
                                              (_tl1611416147_
                                               (##cdr _e1611216142_)))
                                          (let ((_expr16150_ _hd1611316145_))
                                            (if (gx#stx-null? _tl1611416147_)
                                                (if (gx#identifier? _id16140_)
                                                    (cons '%#set!
                                                          (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _id16140_)
                        (cons (gx#core-compile-top-syntax _expr16150_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1610516120_))
                                                (_E1610516120_)))))
                                      (_E1610516120_)))))
                            (_E1610516120_))))
                    (_E1610516120_)))))
        (_E1610416152_))))
  (define gx#core-compile-top-runtime-ref
    (lambda (_id16097_)
      (let ((_$e16099_ (gx#resolve-identifier__0 _id16097_)))
        (if _$e16099_
            (##structure-ref _$e16099_ '1 gx#binding::t '#f)
            _id16097_))))
  (define gx#core-compile-top-runtime-bind
    (lambda (_hd16095_)
      (if (gx#identifier? _hd16095_)
          (gx#core-compile-top-runtime-ref _hd16095_)
          '#f))))
