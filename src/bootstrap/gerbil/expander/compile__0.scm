(declare (block) (standard-bindings) (extended-bindings))
(begin
  (declare (not safe))
  (define gx#core-compile-top-syntax
    (lambda (_stx17238_)
      (let* ((_e1723917246_ _stx17238_)
             (_E1724117250_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1723917246_)))
             (_E1724017264_
              (lambda ()
                (if (gx#stx-pair? _e1723917246_)
                    (let ((_e1724217254_ (gx#syntax-e _e1723917246_)))
                      (let ((_hd1724317257_ (##car _e1724217254_))
                            (_tl1724417259_ (##cdr _e1724217254_)))
                        (let ((_form17262_ _hd1724317257_))
                          (if '#t
                              (call-method
                               (gx#syntax-local-e__0 _form17262_)
                               'compile-top-syntax
                               _stx17238_)
                              (_E1724117250_)))))
                    (_E1724117250_)))))
        (_E1724017264_))))
  (define gx#core-expander::compile-top-syntax
    (lambda (_self17198_ _stx17199_)
      (let* ((_self1720017208_ _self17198_)
             (_E1720217212_
              (lambda () (error '"No clause matching" _self1720017208_)))
             (_K1720317224_
              (lambda (_K17215_)
                (let ((_$e17217_ (gx#stx-source _stx17199_)))
                  (if _$e17217_
                      ((lambda (_g1721917221_)
                         (gx#stx-wrap-source
                          (_K17215_ _stx17199_)
                          _g1721917221_))
                       _$e17217_)
                      (_K17215_ _stx17199_))))))
        (if (##structure-instance-of? _self1720017208_ 'gx#core-expander::t)
            (let* ((_e1720417227_ (##vector-ref _self1720017208_ '1))
                   (_e1720517230_ (##vector-ref _self1720017208_ '2))
                   (_e1720617233_ (##vector-ref _self1720017208_ '3))
                   (_K17236_ _e1720617233_))
              (_K1720317224_ _K17236_))
            (_E1720217212_)))))
  (bind-method!
   gx#core-expander::t
   'compile-top-syntax
   gx#core-expander::compile-top-syntax
   '#f)
  (define gx#core-compile-top-error
    (lambda (_stx17072_)
      (gx#raise-syntax-error 'compile '"Cannot compile form" _stx17072_)))
  (define gx#core-compile-top-begin%
    (lambda (_stx17042_)
      (let* ((_e1704317050_ _stx17042_)
             (_E1704517054_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1704317050_)))
             (_E1704417068_
              (lambda ()
                (if (gx#stx-pair? _e1704317050_)
                    (let ((_e1704617058_ (gx#syntax-e _e1704317050_)))
                      (let ((_hd1704717061_ (##car _e1704617058_))
                            (_tl1704817063_ (##cdr _e1704617058_)))
                        (let ((_body17066_ _tl1704817063_))
                          (if '#t
                              (cons '%#begin
                                    (gx#stx-map1
                                     gx#core-compile-top-syntax
                                     _body17066_))
                              (_E1704517054_)))))
                    (_E1704517054_)))))
        (_E1704417068_))))
  (define gx#core-compile-top-begin-syntax%
    (lambda (_stx17011_)
      (let* ((_e1701217019_ _stx17011_)
             (_E1701417023_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1701217019_)))
             (_E1701317038_
              (lambda ()
                (if (gx#stx-pair? _e1701217019_)
                    (let ((_e1701517027_ (gx#syntax-e _e1701217019_)))
                      (let ((_hd1701617030_ (##car _e1701517027_))
                            (_tl1701717032_ (##cdr _e1701517027_)))
                        (let ((_body17035_ _tl1701717032_))
                          (if '#t
                              (cons '%#begin-syntax
                                    (call-with-parameters
                                     (lambda ()
                                       (gx#stx-map1
                                        gx#core-compile-top-syntax
                                        _body17035_))
                                     gx#current-expander-phi
                                     (fx+ (gx#current-expander-phi) '1)))
                              (_E1701417023_)))))
                    (_E1701417023_)))))
        (_E1701317038_))))
  (define gx#core-compile-top-begin-foreign%
    (lambda (_stx16981_)
      (let* ((_e1698216989_ _stx16981_)
             (_E1698416993_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1698216989_)))
             (_E1698317007_
              (lambda ()
                (if (gx#stx-pair? _e1698216989_)
                    (let ((_e1698516997_ (gx#syntax-e _e1698216989_)))
                      (let ((_hd1698617000_ (##car _e1698516997_))
                            (_tl1698717002_ (##cdr _e1698516997_)))
                        (let ((_body17005_ _tl1698717002_))
                          (if '#t
                              (cons '%#begin-foreign _body17005_)
                              (_E1698416993_)))))
                    (_E1698416993_)))))
        (_E1698317007_))))
  (define gx#core-compile-top-begin-annotation%
    (lambda (_stx16927_)
      (let* ((_e1692816941_ _stx16927_)
             (_E1693016945_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1692816941_)))
             (_E1692916977_
              (lambda ()
                (if (gx#stx-pair? _e1692816941_)
                    (let ((_e1693116949_ (gx#syntax-e _e1692816941_)))
                      (let ((_hd1693216952_ (##car _e1693116949_))
                            (_tl1693316954_ (##cdr _e1693116949_)))
                        (if (gx#stx-pair? _tl1693316954_)
                            (let ((_e1693416957_ (gx#syntax-e _tl1693316954_)))
                              (let ((_hd1693516960_ (##car _e1693416957_))
                                    (_tl1693616962_ (##cdr _e1693416957_)))
                                (let ((_ann16965_ _hd1693516960_))
                                  (if (gx#stx-pair? _tl1693616962_)
                                      (let ((_e1693716967_
                                             (gx#syntax-e _tl1693616962_)))
                                        (let ((_hd1693816970_
                                               (##car _e1693716967_))
                                              (_tl1693916972_
                                               (##cdr _e1693716967_)))
                                          (let ((_expr16975_ _hd1693816970_))
                                            (if (gx#stx-null? _tl1693916972_)
                                                (if '#t
                                                    (gx#core-compile-top-syntax
                                                     _expr16975_)
                                                    (_E1693016945_))
                                                (_E1693016945_)))))
                                      (_E1693016945_)))))
                            (_E1693016945_))))
                    (_E1693016945_)))))
        (_E1692916977_))))
  (define gx#core-compile-top-import%
    (lambda (_stx16897_)
      (let* ((_e1689816905_ _stx16897_)
             (_E1690016909_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1689816905_)))
             (_E1689916923_
              (lambda ()
                (if (gx#stx-pair? _e1689816905_)
                    (let ((_e1690116913_ (gx#syntax-e _e1689816905_)))
                      (let ((_hd1690216916_ (##car _e1690116913_))
                            (_tl1690316918_ (##cdr _e1690116913_)))
                        (let ((_body16921_ _tl1690316918_))
                          (if '#t
                              (cons '%#import _body16921_)
                              (_E1690016909_)))))
                    (_E1690016909_)))))
        (_E1689916923_))))
  (define gx#core-compile-top-module%
    (lambda (_stx16854_)
      (let* ((_e1685516865_ _stx16854_)
             (_E1685716869_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1685516865_)))
             (_E1685616893_
              (lambda ()
                (if (gx#stx-pair? _e1685516865_)
                    (let ((_e1685816873_ (gx#syntax-e _e1685516865_)))
                      (let ((_hd1685916876_ (##car _e1685816873_))
                            (_tl1686016878_ (##cdr _e1685816873_)))
                        (if (gx#stx-pair? _tl1686016878_)
                            (let ((_e1686116881_ (gx#syntax-e _tl1686016878_)))
                              (let ((_hd1686216884_ (##car _e1686116881_))
                                    (_tl1686316886_ (##cdr _e1686116881_)))
                                (let* ((_hd16889_ _hd1686216884_)
                                       (_body16891_ _tl1686316886_))
                                  (if '#t
                                      (cons '%#module
                                            (cons (##structure-ref
                                                   (gx#syntax-local-e__0
                                                    _hd16889_)
                                                   '1
                                                   gx#expander-context::t
                                                   '#f)
                                                  (gx#stx-map1
                                                   gx#core-compile-top-syntax
                                                   _body16891_)))
                                      (_E1685716869_)))))
                            (_E1685716869_))))
                    (_E1685716869_)))))
        (_E1685616893_))))
  (define gx#core-compile-top-export%
    (lambda (_stx16824_)
      (let* ((_e1682516832_ _stx16824_)
             (_E1682716836_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1682516832_)))
             (_E1682616850_
              (lambda ()
                (if (gx#stx-pair? _e1682516832_)
                    (let ((_e1682816840_ (gx#syntax-e _e1682516832_)))
                      (let ((_hd1682916843_ (##car _e1682816840_))
                            (_tl1683016845_ (##cdr _e1682816840_)))
                        (let ((_body16848_ _tl1683016845_))
                          (if '#t
                              (cons '%#export _body16848_)
                              (_E1682716836_)))))
                    (_E1682716836_)))))
        (_E1682616850_))))
  (define gx#core-compile-top-provide%
    (lambda (_stx16794_)
      (let* ((_e1679516802_ _stx16794_)
             (_E1679716806_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1679516802_)))
             (_E1679616820_
              (lambda ()
                (if (gx#stx-pair? _e1679516802_)
                    (let ((_e1679816810_ (gx#syntax-e _e1679516802_)))
                      (let ((_hd1679916813_ (##car _e1679816810_))
                            (_tl1680016815_ (##cdr _e1679816810_)))
                        (let ((_body16818_ _tl1680016815_))
                          (if '#t
                              (cons '%#provide _body16818_)
                              (_E1679716806_)))))
                    (_E1679716806_)))))
        (_E1679616820_))))
  (define gx#core-compile-top-extern%
    (lambda (_stx16764_)
      (let* ((_e1676516772_ _stx16764_)
             (_E1676716776_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1676516772_)))
             (_E1676616790_
              (lambda ()
                (if (gx#stx-pair? _e1676516772_)
                    (let ((_e1676816780_ (gx#syntax-e _e1676516772_)))
                      (let ((_hd1676916783_ (##car _e1676816780_))
                            (_tl1677016785_ (##cdr _e1676816780_)))
                        (let ((_body16788_ _tl1677016785_))
                          (if '#t
                              (cons '%#extern _body16788_)
                              (_E1676716776_)))))
                    (_E1676716776_)))))
        (_E1676616790_))))
  (define gx#core-compile-top-define-values%
    (lambda (_stx16710_)
      (let* ((_e1671116724_ _stx16710_)
             (_E1671316728_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1671116724_)))
             (_E1671216760_
              (lambda ()
                (if (gx#stx-pair? _e1671116724_)
                    (let ((_e1671416732_ (gx#syntax-e _e1671116724_)))
                      (let ((_hd1671516735_ (##car _e1671416732_))
                            (_tl1671616737_ (##cdr _e1671416732_)))
                        (if (gx#stx-pair? _tl1671616737_)
                            (let ((_e1671716740_ (gx#syntax-e _tl1671616737_)))
                              (let ((_hd1671816743_ (##car _e1671716740_))
                                    (_tl1671916745_ (##cdr _e1671716740_)))
                                (let ((_hd16748_ _hd1671816743_))
                                  (if (gx#stx-pair? _tl1671916745_)
                                      (let ((_e1672016750_
                                             (gx#syntax-e _tl1671916745_)))
                                        (let ((_hd1672116753_
                                               (##car _e1672016750_))
                                              (_tl1672216755_
                                               (##cdr _e1672016750_)))
                                          (let ((_expr16758_ _hd1672116753_))
                                            (if (gx#stx-null? _tl1672216755_)
                                                (if '#t
                                                    (cons '%#define-values
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#core-compile-top-runtime-bind
                         _hd16748_)
                        (cons (gx#core-compile-top-syntax _expr16758_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1671316728_))
                                                (_E1671316728_)))))
                                      (_E1671316728_)))))
                            (_E1671316728_))))
                    (_E1671316728_)))))
        (_E1671216760_))))
  (define gx#core-compile-top-define-syntax%
    (lambda (_stx16655_)
      (let* ((_e1665616669_ _stx16655_)
             (_E1665816673_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1665616669_)))
             (_E1665716706_
              (lambda ()
                (if (gx#stx-pair? _e1665616669_)
                    (let ((_e1665916677_ (gx#syntax-e _e1665616669_)))
                      (let ((_hd1666016680_ (##car _e1665916677_))
                            (_tl1666116682_ (##cdr _e1665916677_)))
                        (if (gx#stx-pair? _tl1666116682_)
                            (let ((_e1666216685_ (gx#syntax-e _tl1666116682_)))
                              (let ((_hd1666316688_ (##car _e1666216685_))
                                    (_tl1666416690_ (##cdr _e1666216685_)))
                                (let ((_hd16693_ _hd1666316688_))
                                  (if (gx#stx-pair? _tl1666416690_)
                                      (let ((_e1666516695_
                                             (gx#syntax-e _tl1666416690_)))
                                        (let ((_hd1666616698_
                                               (##car _e1666516695_))
                                              (_tl1666716700_
                                               (##cdr _e1666516695_)))
                                          (let ((_expr16703_ _hd1666616698_))
                                            (if (gx#stx-null? _tl1666716700_)
                                                (if '#t
                                                    (cons '%#define-syntax
                                                          (cons _hd16693_
                                                                (cons (call-with-parameters
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (gx#core-compile-top-syntax _expr16703_))
                               gx#current-expander-phi
                               (fx+ (gx#current-expander-phi) '1))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1665816673_))
                                                (_E1665816673_)))))
                                      (_E1665816673_)))))
                            (_E1665816673_))))
                    (_E1665816673_)))))
        (_E1665716706_))))
  (define gx#core-compile-top-define-alias%
    (lambda (_stx16625_)
      (let* ((_e1662616633_ _stx16625_)
             (_E1662816637_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1662616633_)))
             (_E1662716651_
              (lambda ()
                (if (gx#stx-pair? _e1662616633_)
                    (let ((_e1662916641_ (gx#syntax-e _e1662616633_)))
                      (let ((_hd1663016644_ (##car _e1662916641_))
                            (_tl1663116646_ (##cdr _e1662916641_)))
                        (let ((_body16649_ _tl1663116646_))
                          (if '#t
                              (cons '%#define-alias _body16649_)
                              (_E1662816637_)))))
                    (_E1662816637_)))))
        (_E1662716651_))))
  (define gx#core-compile-top-define-runtime%
    (lambda (_stx16595_)
      (let* ((_e1659616603_ _stx16595_)
             (_E1659816607_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1659616603_)))
             (_E1659716621_
              (lambda ()
                (if (gx#stx-pair? _e1659616603_)
                    (let ((_e1659916611_ (gx#syntax-e _e1659616603_)))
                      (let ((_hd1660016614_ (##car _e1659916611_))
                            (_tl1660116616_ (##cdr _e1659916611_)))
                        (let ((_body16619_ _tl1660116616_))
                          (if '#t
                              (cons '%#define-runtime _body16619_)
                              (_E1659816607_)))))
                    (_E1659816607_)))))
        (_E1659716621_))))
  (define gx#core-compile-top-declare%
    (lambda (_stx16565_)
      (let* ((_e1656616573_ _stx16565_)
             (_E1656816577_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1656616573_)))
             (_E1656716591_
              (lambda ()
                (if (gx#stx-pair? _e1656616573_)
                    (let ((_e1656916581_ (gx#syntax-e _e1656616573_)))
                      (let ((_hd1657016584_ (##car _e1656916581_))
                            (_tl1657116586_ (##cdr _e1656916581_)))
                        (let ((_decls16589_ _tl1657116586_))
                          (if '#t
                              (cons '%#declare _decls16589_)
                              (_E1656816577_)))))
                    (_E1656816577_)))))
        (_E1656716591_))))
  (define gx#core-compile-top-lambda%
    (lambda (_stx16535_)
      (let* ((_e1653616543_ _stx16535_)
             (_E1653816547_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1653616543_)))
             (_E1653716561_
              (lambda ()
                (if (gx#stx-pair? _e1653616543_)
                    (let ((_e1653916551_ (gx#syntax-e _e1653616543_)))
                      (let ((_hd1654016554_ (##car _e1653916551_))
                            (_tl1654116556_ (##cdr _e1653916551_)))
                        (let ((_clause16559_ _tl1654116556_))
                          (if '#t
                              (cons '%#lambda
                                    (gx#core-compile-top-lambda-clause
                                     _clause16559_))
                              (_E1653816547_)))))
                    (_E1653816547_)))))
        (_E1653716561_))))
  (define gx#core-compile-top-lambda-clause
    (lambda (_stx16492_)
      (let* ((_e1649316503_ _stx16492_)
             (_E1649516507_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1649316503_)))
             (_E1649416531_
              (lambda ()
                (if (gx#stx-pair? _e1649316503_)
                    (let ((_e1649616511_ (gx#syntax-e _e1649316503_)))
                      (let ((_hd1649716514_ (##car _e1649616511_))
                            (_tl1649816516_ (##cdr _e1649616511_)))
                        (let ((_hd16519_ _hd1649716514_))
                          (if (gx#stx-pair? _tl1649816516_)
                              (let ((_e1649916521_
                                     (gx#syntax-e _tl1649816516_)))
                                (let ((_hd1650016524_ (##car _e1649916521_))
                                      (_tl1650116526_ (##cdr _e1649916521_)))
                                  (let ((_body16529_ _hd1650016524_))
                                    (if (gx#stx-null? _tl1650116526_)
                                        (if '#t
                                            (cons (gx#stx-map1
                                                   gx#core-compile-top-runtime-bind
                                                   _hd16519_)
                                                  (cons (gx#core-compile-top-syntax
                                                         _body16529_)
                                                        '()))
                                            (_E1649516507_))
                                        (_E1649516507_)))))
                              (_E1649516507_)))))
                    (_E1649516507_)))))
        (_E1649416531_))))
  (define gx#core-compile-top-case-lambda%
    (lambda (_stx16462_)
      (let* ((_e1646316470_ _stx16462_)
             (_E1646516474_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1646316470_)))
             (_E1646416488_
              (lambda ()
                (if (gx#stx-pair? _e1646316470_)
                    (let ((_e1646616478_ (gx#syntax-e _e1646316470_)))
                      (let ((_hd1646716481_ (##car _e1646616478_))
                            (_tl1646816483_ (##cdr _e1646616478_)))
                        (let ((_clauses16486_ _tl1646816483_))
                          (if '#t
                              (cons '%#case-lambda
                                    (gx#stx-map1
                                     gx#core-compile-top-lambda-clause
                                     _clauses16486_))
                              (_E1646516474_)))))
                    (_E1646516474_)))))
        (_E1646416488_))))
  (define gx#core-compile-top-let-values%__%
    (lambda (_stx16397_ _form16398_)
      (let* ((_e1639916412_ _stx16397_)
             (_E1640116416_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1639916412_)))
             (_E1640016448_
              (lambda ()
                (if (gx#stx-pair? _e1639916412_)
                    (let ((_e1640216420_ (gx#syntax-e _e1639916412_)))
                      (let ((_hd1640316423_ (##car _e1640216420_))
                            (_tl1640416425_ (##cdr _e1640216420_)))
                        (if (gx#stx-pair? _tl1640416425_)
                            (let ((_e1640516428_ (gx#syntax-e _tl1640416425_)))
                              (let ((_hd1640616431_ (##car _e1640516428_))
                                    (_tl1640716433_ (##cdr _e1640516428_)))
                                (let ((_hd16436_ _hd1640616431_))
                                  (if (gx#stx-pair? _tl1640716433_)
                                      (let ((_e1640816438_
                                             (gx#syntax-e _tl1640716433_)))
                                        (let ((_hd1640916441_
                                               (##car _e1640816438_))
                                              (_tl1641016443_
                                               (##cdr _e1640816438_)))
                                          (let ((_body16446_ _hd1640916441_))
                                            (if (gx#stx-null? _tl1641016443_)
                                                (if '#t
                                                    (cons _form16398_
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#core-compile-top-lambda-clause
                         _hd16436_)
                        (cons (gx#core-compile-top-syntax _body16446_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1640116416_))
                                                (_E1640116416_)))))
                                      (_E1640116416_)))))
                            (_E1640116416_))))
                    (_E1640116416_)))))
        (_E1640016448_))))
  (define gx#core-compile-top-let-values%__0
    (lambda (_stx16455_)
      (let ((_form16457_ '%#let-values))
        (gx#core-compile-top-let-values%__% _stx16455_ _form16457_))))
  (define gx#core-compile-top-let-values%
    (lambda _g17268_
      (let ((_g17267_ (length _g17268_)))
        (cond ((##fx= _g17267_ 1)
               (apply gx#core-compile-top-let-values%__0 _g17268_))
              ((##fx= _g17267_ 2)
               (apply gx#core-compile-top-let-values%__% _g17268_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-compile-top-let-values%
                _g17268_))))))
  (define gx#core-compile-top-letrec-values%
    (lambda (_stx16394_)
      (gx#core-compile-top-let-values%__% _stx16394_ '%#letrec-values)))
  (define gx#core-compile-top-letrec*-values%
    (lambda (_stx16392_)
      (gx#core-compile-top-let-values%__% _stx16392_ '%#letrec*-values)))
  (define gx#core-compile-top-quote%
    (lambda (_stx16351_)
      (let* ((_e1635216362_ _stx16351_)
             (_E1635416366_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1635216362_)))
             (_E1635316388_
              (lambda ()
                (if (gx#stx-pair? _e1635216362_)
                    (let ((_e1635516370_ (gx#syntax-e _e1635216362_)))
                      (let ((_hd1635616373_ (##car _e1635516370_))
                            (_tl1635716375_ (##cdr _e1635516370_)))
                        (if (gx#stx-pair? _tl1635716375_)
                            (let ((_e1635816378_ (gx#syntax-e _tl1635716375_)))
                              (let ((_hd1635916381_ (##car _e1635816378_))
                                    (_tl1636016383_ (##cdr _e1635816378_)))
                                (let ((_e16386_ _hd1635916381_))
                                  (if (gx#stx-null? _tl1636016383_)
                                      (if '#t
                                          (cons '%#quote
                                                (cons (gx#syntax->datum
                                                       _e16386_)
                                                      '()))
                                          (_E1635416366_))
                                      (_E1635416366_)))))
                            (_E1635416366_))))
                    (_E1635416366_)))))
        (_E1635316388_))))
  (define gx#core-compile-top-quote-syntax%
    (lambda (_stx16310_)
      (let* ((_e1631116321_ _stx16310_)
             (_E1631316325_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1631116321_)))
             (_E1631216347_
              (lambda ()
                (if (gx#stx-pair? _e1631116321_)
                    (let ((_e1631416329_ (gx#syntax-e _e1631116321_)))
                      (let ((_hd1631516332_ (##car _e1631416329_))
                            (_tl1631616334_ (##cdr _e1631416329_)))
                        (if (gx#stx-pair? _tl1631616334_)
                            (let ((_e1631716337_ (gx#syntax-e _tl1631616334_)))
                              (let ((_hd1631816340_ (##car _e1631716337_))
                                    (_tl1631916342_ (##cdr _e1631716337_)))
                                (let ((_e16345_ _hd1631816340_))
                                  (if (gx#stx-null? _tl1631916342_)
                                      (if '#t
                                          (cons '%#quote-syntax
                                                (cons (gx#core-quote-syntax__0
                                                       _e16345_)
                                                      '()))
                                          (_E1631316325_))
                                      (_E1631316325_)))))
                            (_E1631316325_))))
                    (_E1631316325_)))))
        (_E1631216347_))))
  (define gx#core-compile-top-call%
    (lambda (_stx16267_)
      (let* ((_e1626816278_ _stx16267_)
             (_E1627016282_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1626816278_)))
             (_E1626916306_
              (lambda ()
                (if (gx#stx-pair? _e1626816278_)
                    (let ((_e1627116286_ (gx#syntax-e _e1626816278_)))
                      (let ((_hd1627216289_ (##car _e1627116286_))
                            (_tl1627316291_ (##cdr _e1627116286_)))
                        (if (gx#stx-pair? _tl1627316291_)
                            (let ((_e1627416294_ (gx#syntax-e _tl1627316291_)))
                              (let ((_hd1627516297_ (##car _e1627416294_))
                                    (_tl1627616299_ (##cdr _e1627416294_)))
                                (let* ((_rator16302_ _hd1627516297_)
                                       (_args16304_ _tl1627616299_))
                                  (if '#t
                                      (cons '%#call
                                            (cons (gx#core-compile-top-syntax
                                                   _rator16302_)
                                                  (gx#stx-map1
                                                   gx#core-compile-top-syntax
                                                   _args16304_)))
                                      (_E1627016282_)))))
                            (_E1627016282_))))
                    (_E1627016282_)))))
        (_E1626916306_))))
  (define gx#core-compile-top-if%
    (lambda (_stx16200_)
      (let* ((_e1620116217_ _stx16200_)
             (_E1620316221_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1620116217_)))
             (_E1620216263_
              (lambda ()
                (if (gx#stx-pair? _e1620116217_)
                    (let ((_e1620416225_ (gx#syntax-e _e1620116217_)))
                      (let ((_hd1620516228_ (##car _e1620416225_))
                            (_tl1620616230_ (##cdr _e1620416225_)))
                        (if (gx#stx-pair? _tl1620616230_)
                            (let ((_e1620716233_ (gx#syntax-e _tl1620616230_)))
                              (let ((_hd1620816236_ (##car _e1620716233_))
                                    (_tl1620916238_ (##cdr _e1620716233_)))
                                (let ((_test16241_ _hd1620816236_))
                                  (if (gx#stx-pair? _tl1620916238_)
                                      (let ((_e1621016243_
                                             (gx#syntax-e _tl1620916238_)))
                                        (let ((_hd1621116246_
                                               (##car _e1621016243_))
                                              (_tl1621216248_
                                               (##cdr _e1621016243_)))
                                          (let ((_K16251_ _hd1621116246_))
                                            (if (gx#stx-pair? _tl1621216248_)
                                                (let ((_e1621316253_
                                                       (gx#syntax-e
                                                        _tl1621216248_)))
                                                  (let ((_hd1621416256_
                                                         (##car _e1621316253_))
                                                        (_tl1621516258_
                                                         (##cdr _e1621316253_)))
                                                    (let ((_E16261_
                                                           _hd1621416256_))
                                                      (if (gx#stx-null?
                                                           _tl1621516258_)
                                                          (if '#t
                                                              (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gx#core-compile-top-syntax _test16241_)
                                  (cons (gx#core-compile-top-syntax _K16251_)
                                        (cons (gx#core-compile-top-syntax
                                               _E16261_)
                                              '()))))
                      (_E1620316221_))
                  (_E1620316221_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1620316221_)))))
                                      (_E1620316221_)))))
                            (_E1620316221_))))
                    (_E1620316221_)))))
        (_E1620216263_))))
  (define gx#core-compile-top-ref%
    (lambda (_stx16159_)
      (let* ((_e1616016170_ _stx16159_)
             (_E1616216174_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1616016170_)))
             (_E1616116196_
              (lambda ()
                (if (gx#stx-pair? _e1616016170_)
                    (let ((_e1616316178_ (gx#syntax-e _e1616016170_)))
                      (let ((_hd1616416181_ (##car _e1616316178_))
                            (_tl1616516183_ (##cdr _e1616316178_)))
                        (if (gx#stx-pair? _tl1616516183_)
                            (let ((_e1616616186_ (gx#syntax-e _tl1616516183_)))
                              (let ((_hd1616716189_ (##car _e1616616186_))
                                    (_tl1616816191_ (##cdr _e1616616186_)))
                                (let ((_id16194_ _hd1616716189_))
                                  (if (gx#stx-null? _tl1616816191_)
                                      (if (gx#identifier? _id16194_)
                                          (cons '%#ref
                                                (cons (gx#core-compile-top-runtime-ref
                                                       _id16194_)
                                                      '()))
                                          (_E1616216174_))
                                      (_E1616216174_)))))
                            (_E1616216174_))))
                    (_E1616216174_)))))
        (_E1616116196_))))
  (define gx#core-compile-top-setq%
    (lambda (_stx16105_)
      (let* ((_e1610616119_ _stx16105_)
             (_E1610816123_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1610616119_)))
             (_E1610716155_
              (lambda ()
                (if (gx#stx-pair? _e1610616119_)
                    (let ((_e1610916127_ (gx#syntax-e _e1610616119_)))
                      (let ((_hd1611016130_ (##car _e1610916127_))
                            (_tl1611116132_ (##cdr _e1610916127_)))
                        (if (gx#stx-pair? _tl1611116132_)
                            (let ((_e1611216135_ (gx#syntax-e _tl1611116132_)))
                              (let ((_hd1611316138_ (##car _e1611216135_))
                                    (_tl1611416140_ (##cdr _e1611216135_)))
                                (let ((_id16143_ _hd1611316138_))
                                  (if (gx#stx-pair? _tl1611416140_)
                                      (let ((_e1611516145_
                                             (gx#syntax-e _tl1611416140_)))
                                        (let ((_hd1611616148_
                                               (##car _e1611516145_))
                                              (_tl1611716150_
                                               (##cdr _e1611516145_)))
                                          (let ((_expr16153_ _hd1611616148_))
                                            (if (gx#stx-null? _tl1611716150_)
                                                (if (gx#identifier? _id16143_)
                                                    (cons '%#set!
                                                          (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _id16143_)
                        (cons (gx#core-compile-top-syntax _expr16153_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1610816123_))
                                                (_E1610816123_)))))
                                      (_E1610816123_)))))
                            (_E1610816123_))))
                    (_E1610816123_)))))
        (_E1610716155_))))
  (define gx#core-compile-top-runtime-ref
    (lambda (_id16100_)
      (let ((_$e16102_ (gx#resolve-identifier__0 _id16100_)))
        (if _$e16102_
            (##unchecked-structure-ref _$e16102_ '1 gx#binding::t '#f)
            _id16100_))))
  (define gx#core-compile-top-runtime-bind
    (lambda (_hd16098_)
      (if (gx#identifier? _hd16098_)
          (gx#core-compile-top-runtime-ref _hd16098_)
          '#f))))
