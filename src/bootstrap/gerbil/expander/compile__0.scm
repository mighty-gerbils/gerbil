(declare (block) (standard-bindings) (extended-bindings))
(begin
  (declare (not safe))
  (define gx#core-compile-top-syntax
    (lambda (_stx17208_)
      (let* ((_e1720917216_ _stx17208_)
             (_E1721117220_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1720917216_)))
             (_E1721017234_
              (lambda ()
                (if (gx#stx-pair? _e1720917216_)
                    (let ((_e1721217224_ (gx#syntax-e _e1720917216_)))
                      (let ((_hd1721317227_ (##car _e1721217224_))
                            (_tl1721417229_ (##cdr _e1721217224_)))
                        (let ((_form17232_ _hd1721317227_))
                          (if '#t
                              (call-method
                               (gx#syntax-local-e__0 _form17232_)
                               'compile-top-syntax
                               _stx17208_)
                              (_E1721117220_)))))
                    (_E1721117220_)))))
        (_E1721017234_))))
  (define gx#core-expander::compile-top-syntax
    (lambda (_self17168_ _stx17169_)
      (let* ((_self1717017178_ _self17168_)
             (_E1717217182_
              (lambda () (error '"No clause matching" _self1717017178_)))
             (_K1717317194_
              (lambda (_K17185_)
                (let ((_$e17187_ (gx#stx-source _stx17169_)))
                  (if _$e17187_
                      ((lambda (_g1718917191_)
                         (gx#stx-wrap-source
                          (_K17185_ _stx17169_)
                          _g1718917191_))
                       _$e17187_)
                      (_K17185_ _stx17169_))))))
        (if (##structure-instance-of? _self1717017178_ 'gx#core-expander::t)
            (let* ((_e1717417197_ (##vector-ref _self1717017178_ '1))
                   (_e1717517200_ (##vector-ref _self1717017178_ '2))
                   (_e1717617203_ (##vector-ref _self1717017178_ '3))
                   (_K17206_ _e1717617203_))
              (_K1717317194_ _K17206_))
            (_E1717217182_)))))
  (bind-method!
   gx#core-expander::t
   'compile-top-syntax
   gx#core-expander::compile-top-syntax
   '#f)
  (define gx#core-compile-top-error
    (lambda (_stx17042_)
      (gx#raise-syntax-error 'compile '"Cannot compile form" _stx17042_)))
  (define gx#core-compile-top-begin%
    (lambda (_stx17012_)
      (let* ((_e1701317020_ _stx17012_)
             (_E1701517024_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1701317020_)))
             (_E1701417038_
              (lambda ()
                (if (gx#stx-pair? _e1701317020_)
                    (let ((_e1701617028_ (gx#syntax-e _e1701317020_)))
                      (let ((_hd1701717031_ (##car _e1701617028_))
                            (_tl1701817033_ (##cdr _e1701617028_)))
                        (let ((_body17036_ _tl1701817033_))
                          (if '#t
                              (cons '%#begin
                                    (gx#stx-map1
                                     gx#core-compile-top-syntax
                                     _body17036_))
                              (_E1701517024_)))))
                    (_E1701517024_)))))
        (_E1701417038_))))
  (define gx#core-compile-top-begin-syntax%
    (lambda (_stx16981_)
      (let* ((_e1698216989_ _stx16981_)
             (_E1698416993_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1698216989_)))
             (_E1698317008_
              (lambda ()
                (if (gx#stx-pair? _e1698216989_)
                    (let ((_e1698516997_ (gx#syntax-e _e1698216989_)))
                      (let ((_hd1698617000_ (##car _e1698516997_))
                            (_tl1698717002_ (##cdr _e1698516997_)))
                        (let ((_body17005_ _tl1698717002_))
                          (if '#t
                              (cons '%#begin-syntax
                                    (call-with-parameters
                                     (lambda ()
                                       (gx#stx-map1
                                        gx#core-compile-top-syntax
                                        _body17005_))
                                     gx#current-expander-phi
                                     (fx+ (gx#current-expander-phi) '1)))
                              (_E1698416993_)))))
                    (_E1698416993_)))))
        (_E1698317008_))))
  (define gx#core-compile-top-begin-foreign%
    (lambda (_stx16951_)
      (let* ((_e1695216959_ _stx16951_)
             (_E1695416963_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1695216959_)))
             (_E1695316977_
              (lambda ()
                (if (gx#stx-pair? _e1695216959_)
                    (let ((_e1695516967_ (gx#syntax-e _e1695216959_)))
                      (let ((_hd1695616970_ (##car _e1695516967_))
                            (_tl1695716972_ (##cdr _e1695516967_)))
                        (let ((_body16975_ _tl1695716972_))
                          (if '#t
                              (cons '%#begin-foreign _body16975_)
                              (_E1695416963_)))))
                    (_E1695416963_)))))
        (_E1695316977_))))
  (define gx#core-compile-top-begin-annotation%
    (lambda (_stx16897_)
      (let* ((_e1689816911_ _stx16897_)
             (_E1690016915_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1689816911_)))
             (_E1689916947_
              (lambda ()
                (if (gx#stx-pair? _e1689816911_)
                    (let ((_e1690116919_ (gx#syntax-e _e1689816911_)))
                      (let ((_hd1690216922_ (##car _e1690116919_))
                            (_tl1690316924_ (##cdr _e1690116919_)))
                        (if (gx#stx-pair? _tl1690316924_)
                            (let ((_e1690416927_ (gx#syntax-e _tl1690316924_)))
                              (let ((_hd1690516930_ (##car _e1690416927_))
                                    (_tl1690616932_ (##cdr _e1690416927_)))
                                (let ((_ann16935_ _hd1690516930_))
                                  (if (gx#stx-pair? _tl1690616932_)
                                      (let ((_e1690716937_
                                             (gx#syntax-e _tl1690616932_)))
                                        (let ((_hd1690816940_
                                               (##car _e1690716937_))
                                              (_tl1690916942_
                                               (##cdr _e1690716937_)))
                                          (let ((_expr16945_ _hd1690816940_))
                                            (if (gx#stx-null? _tl1690916942_)
                                                (if '#t
                                                    (gx#core-compile-top-syntax
                                                     _expr16945_)
                                                    (_E1690016915_))
                                                (_E1690016915_)))))
                                      (_E1690016915_)))))
                            (_E1690016915_))))
                    (_E1690016915_)))))
        (_E1689916947_))))
  (define gx#core-compile-top-import%
    (lambda (_stx16867_)
      (let* ((_e1686816875_ _stx16867_)
             (_E1687016879_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1686816875_)))
             (_E1686916893_
              (lambda ()
                (if (gx#stx-pair? _e1686816875_)
                    (let ((_e1687116883_ (gx#syntax-e _e1686816875_)))
                      (let ((_hd1687216886_ (##car _e1687116883_))
                            (_tl1687316888_ (##cdr _e1687116883_)))
                        (let ((_body16891_ _tl1687316888_))
                          (if '#t
                              (cons '%#import _body16891_)
                              (_E1687016879_)))))
                    (_E1687016879_)))))
        (_E1686916893_))))
  (define gx#core-compile-top-module%
    (lambda (_stx16824_)
      (let* ((_e1682516835_ _stx16824_)
             (_E1682716839_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1682516835_)))
             (_E1682616863_
              (lambda ()
                (if (gx#stx-pair? _e1682516835_)
                    (let ((_e1682816843_ (gx#syntax-e _e1682516835_)))
                      (let ((_hd1682916846_ (##car _e1682816843_))
                            (_tl1683016848_ (##cdr _e1682816843_)))
                        (if (gx#stx-pair? _tl1683016848_)
                            (let ((_e1683116851_ (gx#syntax-e _tl1683016848_)))
                              (let ((_hd1683216854_ (##car _e1683116851_))
                                    (_tl1683316856_ (##cdr _e1683116851_)))
                                (let* ((_hd16859_ _hd1683216854_)
                                       (_body16861_ _tl1683316856_))
                                  (if '#t
                                      (cons '%#module
                                            (cons (##structure-ref
                                                   (gx#syntax-local-e__0
                                                    _hd16859_)
                                                   '1
                                                   gx#expander-context::t
                                                   '#f)
                                                  (gx#stx-map1
                                                   gx#core-compile-top-syntax
                                                   _body16861_)))
                                      (_E1682716839_)))))
                            (_E1682716839_))))
                    (_E1682716839_)))))
        (_E1682616863_))))
  (define gx#core-compile-top-export%
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
                              (cons '%#export _body16818_)
                              (_E1679716806_)))))
                    (_E1679716806_)))))
        (_E1679616820_))))
  (define gx#core-compile-top-provide%
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
                              (cons '%#provide _body16788_)
                              (_E1676716776_)))))
                    (_E1676716776_)))))
        (_E1676616790_))))
  (define gx#core-compile-top-extern%
    (lambda (_stx16734_)
      (let* ((_e1673516742_ _stx16734_)
             (_E1673716746_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1673516742_)))
             (_E1673616760_
              (lambda ()
                (if (gx#stx-pair? _e1673516742_)
                    (let ((_e1673816750_ (gx#syntax-e _e1673516742_)))
                      (let ((_hd1673916753_ (##car _e1673816750_))
                            (_tl1674016755_ (##cdr _e1673816750_)))
                        (let ((_body16758_ _tl1674016755_))
                          (if '#t
                              (cons '%#extern _body16758_)
                              (_E1673716746_)))))
                    (_E1673716746_)))))
        (_E1673616760_))))
  (define gx#core-compile-top-define-values%
    (lambda (_stx16680_)
      (let* ((_e1668116694_ _stx16680_)
             (_E1668316698_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1668116694_)))
             (_E1668216730_
              (lambda ()
                (if (gx#stx-pair? _e1668116694_)
                    (let ((_e1668416702_ (gx#syntax-e _e1668116694_)))
                      (let ((_hd1668516705_ (##car _e1668416702_))
                            (_tl1668616707_ (##cdr _e1668416702_)))
                        (if (gx#stx-pair? _tl1668616707_)
                            (let ((_e1668716710_ (gx#syntax-e _tl1668616707_)))
                              (let ((_hd1668816713_ (##car _e1668716710_))
                                    (_tl1668916715_ (##cdr _e1668716710_)))
                                (let ((_hd16718_ _hd1668816713_))
                                  (if (gx#stx-pair? _tl1668916715_)
                                      (let ((_e1669016720_
                                             (gx#syntax-e _tl1668916715_)))
                                        (let ((_hd1669116723_
                                               (##car _e1669016720_))
                                              (_tl1669216725_
                                               (##cdr _e1669016720_)))
                                          (let ((_expr16728_ _hd1669116723_))
                                            (if (gx#stx-null? _tl1669216725_)
                                                (if '#t
                                                    (cons '%#define-values
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#core-compile-top-runtime-bind
                         _hd16718_)
                        (cons (gx#core-compile-top-syntax _expr16728_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1668316698_))
                                                (_E1668316698_)))))
                                      (_E1668316698_)))))
                            (_E1668316698_))))
                    (_E1668316698_)))))
        (_E1668216730_))))
  (define gx#core-compile-top-define-syntax%
    (lambda (_stx16625_)
      (let* ((_e1662616639_ _stx16625_)
             (_E1662816643_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1662616639_)))
             (_E1662716676_
              (lambda ()
                (if (gx#stx-pair? _e1662616639_)
                    (let ((_e1662916647_ (gx#syntax-e _e1662616639_)))
                      (let ((_hd1663016650_ (##car _e1662916647_))
                            (_tl1663116652_ (##cdr _e1662916647_)))
                        (if (gx#stx-pair? _tl1663116652_)
                            (let ((_e1663216655_ (gx#syntax-e _tl1663116652_)))
                              (let ((_hd1663316658_ (##car _e1663216655_))
                                    (_tl1663416660_ (##cdr _e1663216655_)))
                                (let ((_hd16663_ _hd1663316658_))
                                  (if (gx#stx-pair? _tl1663416660_)
                                      (let ((_e1663516665_
                                             (gx#syntax-e _tl1663416660_)))
                                        (let ((_hd1663616668_
                                               (##car _e1663516665_))
                                              (_tl1663716670_
                                               (##cdr _e1663516665_)))
                                          (let ((_expr16673_ _hd1663616668_))
                                            (if (gx#stx-null? _tl1663716670_)
                                                (if '#t
                                                    (cons '%#define-syntax
                                                          (cons _hd16663_
                                                                (cons (call-with-parameters
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (gx#core-compile-top-syntax _expr16673_))
                               gx#current-expander-phi
                               (fx+ (gx#current-expander-phi) '1))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1662816643_))
                                                (_E1662816643_)))))
                                      (_E1662816643_)))))
                            (_E1662816643_))))
                    (_E1662816643_)))))
        (_E1662716676_))))
  (define gx#core-compile-top-define-alias%
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
                              (cons '%#define-alias _body16619_)
                              (_E1659816607_)))))
                    (_E1659816607_)))))
        (_E1659716621_))))
  (define gx#core-compile-top-define-runtime%
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
                        (let ((_body16589_ _tl1657116586_))
                          (if '#t
                              (cons '%#define-runtime _body16589_)
                              (_E1656816577_)))))
                    (_E1656816577_)))))
        (_E1656716591_))))
  (define gx#core-compile-top-declare%
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
                        (let ((_decls16559_ _tl1654116556_))
                          (if '#t
                              (cons '%#declare _decls16559_)
                              (_E1653816547_)))))
                    (_E1653816547_)))))
        (_E1653716561_))))
  (define gx#core-compile-top-lambda%
    (lambda (_stx16505_)
      (let* ((_e1650616513_ _stx16505_)
             (_E1650816517_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1650616513_)))
             (_E1650716531_
              (lambda ()
                (if (gx#stx-pair? _e1650616513_)
                    (let ((_e1650916521_ (gx#syntax-e _e1650616513_)))
                      (let ((_hd1651016524_ (##car _e1650916521_))
                            (_tl1651116526_ (##cdr _e1650916521_)))
                        (let ((_clause16529_ _tl1651116526_))
                          (if '#t
                              (cons '%#lambda
                                    (gx#core-compile-top-lambda-clause
                                     _clause16529_))
                              (_E1650816517_)))))
                    (_E1650816517_)))))
        (_E1650716531_))))
  (define gx#core-compile-top-lambda-clause
    (lambda (_stx16462_)
      (let* ((_e1646316473_ _stx16462_)
             (_E1646516477_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1646316473_)))
             (_E1646416501_
              (lambda ()
                (if (gx#stx-pair? _e1646316473_)
                    (let ((_e1646616481_ (gx#syntax-e _e1646316473_)))
                      (let ((_hd1646716484_ (##car _e1646616481_))
                            (_tl1646816486_ (##cdr _e1646616481_)))
                        (let ((_hd16489_ _hd1646716484_))
                          (if (gx#stx-pair? _tl1646816486_)
                              (let ((_e1646916491_
                                     (gx#syntax-e _tl1646816486_)))
                                (let ((_hd1647016494_ (##car _e1646916491_))
                                      (_tl1647116496_ (##cdr _e1646916491_)))
                                  (let ((_body16499_ _hd1647016494_))
                                    (if (gx#stx-null? _tl1647116496_)
                                        (if '#t
                                            (cons (gx#stx-map1
                                                   gx#core-compile-top-runtime-bind
                                                   _hd16489_)
                                                  (cons (gx#core-compile-top-syntax
                                                         _body16499_)
                                                        '()))
                                            (_E1646516477_))
                                        (_E1646516477_)))))
                              (_E1646516477_)))))
                    (_E1646516477_)))))
        (_E1646416501_))))
  (define gx#core-compile-top-case-lambda%
    (lambda (_stx16432_)
      (let* ((_e1643316440_ _stx16432_)
             (_E1643516444_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1643316440_)))
             (_E1643416458_
              (lambda ()
                (if (gx#stx-pair? _e1643316440_)
                    (let ((_e1643616448_ (gx#syntax-e _e1643316440_)))
                      (let ((_hd1643716451_ (##car _e1643616448_))
                            (_tl1643816453_ (##cdr _e1643616448_)))
                        (let ((_clauses16456_ _tl1643816453_))
                          (if '#t
                              (cons '%#case-lambda
                                    (gx#stx-map1
                                     gx#core-compile-top-lambda-clause
                                     _clauses16456_))
                              (_E1643516444_)))))
                    (_E1643516444_)))))
        (_E1643416458_))))
  (define gx#core-compile-top-let-values%__%
    (lambda (_stx16367_ _form16368_)
      (let* ((_e1636916382_ _stx16367_)
             (_E1637116386_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1636916382_)))
             (_E1637016418_
              (lambda ()
                (if (gx#stx-pair? _e1636916382_)
                    (let ((_e1637216390_ (gx#syntax-e _e1636916382_)))
                      (let ((_hd1637316393_ (##car _e1637216390_))
                            (_tl1637416395_ (##cdr _e1637216390_)))
                        (if (gx#stx-pair? _tl1637416395_)
                            (let ((_e1637516398_ (gx#syntax-e _tl1637416395_)))
                              (let ((_hd1637616401_ (##car _e1637516398_))
                                    (_tl1637716403_ (##cdr _e1637516398_)))
                                (let ((_hd16406_ _hd1637616401_))
                                  (if (gx#stx-pair? _tl1637716403_)
                                      (let ((_e1637816408_
                                             (gx#syntax-e _tl1637716403_)))
                                        (let ((_hd1637916411_
                                               (##car _e1637816408_))
                                              (_tl1638016413_
                                               (##cdr _e1637816408_)))
                                          (let ((_body16416_ _hd1637916411_))
                                            (if (gx#stx-null? _tl1638016413_)
                                                (if '#t
                                                    (cons _form16368_
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#core-compile-top-lambda-clause
                         _hd16406_)
                        (cons (gx#core-compile-top-syntax _body16416_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1637116386_))
                                                (_E1637116386_)))))
                                      (_E1637116386_)))))
                            (_E1637116386_))))
                    (_E1637116386_)))))
        (_E1637016418_))))
  (define gx#core-compile-top-let-values%__0
    (lambda (_stx16425_)
      (let ((_form16427_ '%#let-values))
        (gx#core-compile-top-let-values%__% _stx16425_ _form16427_))))
  (define gx#core-compile-top-let-values%
    (lambda _g17238_
      (let ((_g17237_ (length _g17238_)))
        (cond ((##fx= _g17237_ 1)
               (apply gx#core-compile-top-let-values%__0 _g17238_))
              ((##fx= _g17237_ 2)
               (apply gx#core-compile-top-let-values%__% _g17238_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-compile-top-let-values%
                _g17238_))))))
  (define gx#core-compile-top-letrec-values%
    (lambda (_stx16364_)
      (gx#core-compile-top-let-values%__% _stx16364_ '%#letrec-values)))
  (define gx#core-compile-top-letrec*-values%
    (lambda (_stx16362_)
      (gx#core-compile-top-let-values%__% _stx16362_ '%#letrec*-values)))
  (define gx#core-compile-top-quote%
    (lambda (_stx16321_)
      (let* ((_e1632216332_ _stx16321_)
             (_E1632416336_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1632216332_)))
             (_E1632316358_
              (lambda ()
                (if (gx#stx-pair? _e1632216332_)
                    (let ((_e1632516340_ (gx#syntax-e _e1632216332_)))
                      (let ((_hd1632616343_ (##car _e1632516340_))
                            (_tl1632716345_ (##cdr _e1632516340_)))
                        (if (gx#stx-pair? _tl1632716345_)
                            (let ((_e1632816348_ (gx#syntax-e _tl1632716345_)))
                              (let ((_hd1632916351_ (##car _e1632816348_))
                                    (_tl1633016353_ (##cdr _e1632816348_)))
                                (let ((_e16356_ _hd1632916351_))
                                  (if (gx#stx-null? _tl1633016353_)
                                      (if '#t
                                          (cons '%#quote
                                                (cons (gx#syntax->datum
                                                       _e16356_)
                                                      '()))
                                          (_E1632416336_))
                                      (_E1632416336_)))))
                            (_E1632416336_))))
                    (_E1632416336_)))))
        (_E1632316358_))))
  (define gx#core-compile-top-quote-syntax%
    (lambda (_stx16280_)
      (let* ((_e1628116291_ _stx16280_)
             (_E1628316295_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1628116291_)))
             (_E1628216317_
              (lambda ()
                (if (gx#stx-pair? _e1628116291_)
                    (let ((_e1628416299_ (gx#syntax-e _e1628116291_)))
                      (let ((_hd1628516302_ (##car _e1628416299_))
                            (_tl1628616304_ (##cdr _e1628416299_)))
                        (if (gx#stx-pair? _tl1628616304_)
                            (let ((_e1628716307_ (gx#syntax-e _tl1628616304_)))
                              (let ((_hd1628816310_ (##car _e1628716307_))
                                    (_tl1628916312_ (##cdr _e1628716307_)))
                                (let ((_e16315_ _hd1628816310_))
                                  (if (gx#stx-null? _tl1628916312_)
                                      (if '#t
                                          (cons '%#quote-syntax
                                                (cons (gx#core-quote-syntax__0
                                                       _e16315_)
                                                      '()))
                                          (_E1628316295_))
                                      (_E1628316295_)))))
                            (_E1628316295_))))
                    (_E1628316295_)))))
        (_E1628216317_))))
  (define gx#core-compile-top-call%
    (lambda (_stx16237_)
      (let* ((_e1623816248_ _stx16237_)
             (_E1624016252_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1623816248_)))
             (_E1623916276_
              (lambda ()
                (if (gx#stx-pair? _e1623816248_)
                    (let ((_e1624116256_ (gx#syntax-e _e1623816248_)))
                      (let ((_hd1624216259_ (##car _e1624116256_))
                            (_tl1624316261_ (##cdr _e1624116256_)))
                        (if (gx#stx-pair? _tl1624316261_)
                            (let ((_e1624416264_ (gx#syntax-e _tl1624316261_)))
                              (let ((_hd1624516267_ (##car _e1624416264_))
                                    (_tl1624616269_ (##cdr _e1624416264_)))
                                (let* ((_rator16272_ _hd1624516267_)
                                       (_args16274_ _tl1624616269_))
                                  (if '#t
                                      (cons '%#call
                                            (cons (gx#core-compile-top-syntax
                                                   _rator16272_)
                                                  (gx#stx-map1
                                                   gx#core-compile-top-syntax
                                                   _args16274_)))
                                      (_E1624016252_)))))
                            (_E1624016252_))))
                    (_E1624016252_)))))
        (_E1623916276_))))
  (define gx#core-compile-top-if%
    (lambda (_stx16170_)
      (let* ((_e1617116187_ _stx16170_)
             (_E1617316191_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1617116187_)))
             (_E1617216233_
              (lambda ()
                (if (gx#stx-pair? _e1617116187_)
                    (let ((_e1617416195_ (gx#syntax-e _e1617116187_)))
                      (let ((_hd1617516198_ (##car _e1617416195_))
                            (_tl1617616200_ (##cdr _e1617416195_)))
                        (if (gx#stx-pair? _tl1617616200_)
                            (let ((_e1617716203_ (gx#syntax-e _tl1617616200_)))
                              (let ((_hd1617816206_ (##car _e1617716203_))
                                    (_tl1617916208_ (##cdr _e1617716203_)))
                                (let ((_test16211_ _hd1617816206_))
                                  (if (gx#stx-pair? _tl1617916208_)
                                      (let ((_e1618016213_
                                             (gx#syntax-e _tl1617916208_)))
                                        (let ((_hd1618116216_
                                               (##car _e1618016213_))
                                              (_tl1618216218_
                                               (##cdr _e1618016213_)))
                                          (let ((_K16221_ _hd1618116216_))
                                            (if (gx#stx-pair? _tl1618216218_)
                                                (let ((_e1618316223_
                                                       (gx#syntax-e
                                                        _tl1618216218_)))
                                                  (let ((_hd1618416226_
                                                         (##car _e1618316223_))
                                                        (_tl1618516228_
                                                         (##cdr _e1618316223_)))
                                                    (let ((_E16231_
                                                           _hd1618416226_))
                                                      (if (gx#stx-null?
                                                           _tl1618516228_)
                                                          (if '#t
                                                              (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gx#core-compile-top-syntax _test16211_)
                                  (cons (gx#core-compile-top-syntax _K16221_)
                                        (cons (gx#core-compile-top-syntax
                                               _E16231_)
                                              '()))))
                      (_E1617316191_))
                  (_E1617316191_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1617316191_)))))
                                      (_E1617316191_)))))
                            (_E1617316191_))))
                    (_E1617316191_)))))
        (_E1617216233_))))
  (define gx#core-compile-top-ref%
    (lambda (_stx16129_)
      (let* ((_e1613016140_ _stx16129_)
             (_E1613216144_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1613016140_)))
             (_E1613116166_
              (lambda ()
                (if (gx#stx-pair? _e1613016140_)
                    (let ((_e1613316148_ (gx#syntax-e _e1613016140_)))
                      (let ((_hd1613416151_ (##car _e1613316148_))
                            (_tl1613516153_ (##cdr _e1613316148_)))
                        (if (gx#stx-pair? _tl1613516153_)
                            (let ((_e1613616156_ (gx#syntax-e _tl1613516153_)))
                              (let ((_hd1613716159_ (##car _e1613616156_))
                                    (_tl1613816161_ (##cdr _e1613616156_)))
                                (let ((_id16164_ _hd1613716159_))
                                  (if (gx#stx-null? _tl1613816161_)
                                      (if (gx#identifier? _id16164_)
                                          (cons '%#ref
                                                (cons (gx#core-compile-top-runtime-ref
                                                       _id16164_)
                                                      '()))
                                          (_E1613216144_))
                                      (_E1613216144_)))))
                            (_E1613216144_))))
                    (_E1613216144_)))))
        (_E1613116166_))))
  (define gx#core-compile-top-setq%
    (lambda (_stx16075_)
      (let* ((_e1607616089_ _stx16075_)
             (_E1607816093_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1607616089_)))
             (_E1607716125_
              (lambda ()
                (if (gx#stx-pair? _e1607616089_)
                    (let ((_e1607916097_ (gx#syntax-e _e1607616089_)))
                      (let ((_hd1608016100_ (##car _e1607916097_))
                            (_tl1608116102_ (##cdr _e1607916097_)))
                        (if (gx#stx-pair? _tl1608116102_)
                            (let ((_e1608216105_ (gx#syntax-e _tl1608116102_)))
                              (let ((_hd1608316108_ (##car _e1608216105_))
                                    (_tl1608416110_ (##cdr _e1608216105_)))
                                (let ((_id16113_ _hd1608316108_))
                                  (if (gx#stx-pair? _tl1608416110_)
                                      (let ((_e1608516115_
                                             (gx#syntax-e _tl1608416110_)))
                                        (let ((_hd1608616118_
                                               (##car _e1608516115_))
                                              (_tl1608716120_
                                               (##cdr _e1608516115_)))
                                          (let ((_expr16123_ _hd1608616118_))
                                            (if (gx#stx-null? _tl1608716120_)
                                                (if (gx#identifier? _id16113_)
                                                    (cons '%#set!
                                                          (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _id16113_)
                        (cons (gx#core-compile-top-syntax _expr16123_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1607816093_))
                                                (_E1607816093_)))))
                                      (_E1607816093_)))))
                            (_E1607816093_))))
                    (_E1607816093_)))))
        (_E1607716125_))))
  (define gx#core-compile-top-runtime-ref
    (lambda (_id16070_)
      (let ((_$e16072_ (gx#resolve-identifier__0 _id16070_)))
        (if _$e16072_
            (##unchecked-structure-ref _$e16072_ '1 gx#binding::t '#f)
            _id16070_))))
  (define gx#core-compile-top-runtime-bind
    (lambda (_hd16068_)
      (if (gx#identifier? _hd16068_)
          (gx#core-compile-top-runtime-ref _hd16068_)
          '#f))))
