(declare (block) (standard-bindings) (extended-bindings))
(begin
  (declare (not safe))
  (define gx#core-compile-top-syntax
    (lambda (_stx17241_)
      (let* ((_e1724217249_ _stx17241_)
             (_E1724417253_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1724217249_)))
             (_E1724317267_
              (lambda ()
                (if (gx#stx-pair? _e1724217249_)
                    (let ((_e1724517257_ (gx#syntax-e _e1724217249_)))
                      (let ((_hd1724617260_ (##car _e1724517257_))
                            (_tl1724717262_ (##cdr _e1724517257_)))
                        (let ((_form17265_ _hd1724617260_))
                          (if '#t
                              (call-method
                               (gx#syntax-local-e__0 _form17265_)
                               'compile-top-syntax
                               _stx17241_)
                              (_E1724417253_)))))
                    (_E1724417253_)))))
        (_E1724317267_))))
  (define gx#core-expander::compile-top-syntax
    (lambda (_self17201_ _stx17202_)
      (let* ((_self1720317211_ _self17201_)
             (_E1720517215_
              (lambda () (error '"No clause matching" _self1720317211_)))
             (_K1720617227_
              (lambda (_K17218_)
                (let ((_$e17220_ (gx#stx-source _stx17202_)))
                  (if _$e17220_
                      ((lambda (_g1722217224_)
                         (gx#stx-wrap-source
                          (_K17218_ _stx17202_)
                          _g1722217224_))
                       _$e17220_)
                      (_K17218_ _stx17202_))))))
        (if (##structure-instance-of? _self1720317211_ 'gx#core-expander::t)
            (let* ((_e1720717230_ (##vector-ref _self1720317211_ '1))
                   (_e1720817233_ (##vector-ref _self1720317211_ '2))
                   (_e1720917236_ (##vector-ref _self1720317211_ '3))
                   (_K17239_ _e1720917236_))
              (_K1720617227_ _K17239_))
            (_E1720517215_)))))
  (bind-method!
   gx#core-expander::t
   'compile-top-syntax
   gx#core-expander::compile-top-syntax
   '#f)
  (define gx#core-compile-top-error
    (lambda (_stx17075_)
      (gx#raise-syntax-error 'compile '"Cannot compile form" _stx17075_)))
  (define gx#core-compile-top-begin%
    (lambda (_stx17045_)
      (let* ((_e1704617053_ _stx17045_)
             (_E1704817057_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1704617053_)))
             (_E1704717071_
              (lambda ()
                (if (gx#stx-pair? _e1704617053_)
                    (let ((_e1704917061_ (gx#syntax-e _e1704617053_)))
                      (let ((_hd1705017064_ (##car _e1704917061_))
                            (_tl1705117066_ (##cdr _e1704917061_)))
                        (let ((_body17069_ _tl1705117066_))
                          (if '#t
                              (cons '%#begin
                                    (gx#stx-map1
                                     gx#core-compile-top-syntax
                                     _body17069_))
                              (_E1704817057_)))))
                    (_E1704817057_)))))
        (_E1704717071_))))
  (define gx#core-compile-top-begin-syntax%
    (lambda (_stx17014_)
      (let* ((_e1701517022_ _stx17014_)
             (_E1701717026_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1701517022_)))
             (_E1701617041_
              (lambda ()
                (if (gx#stx-pair? _e1701517022_)
                    (let ((_e1701817030_ (gx#syntax-e _e1701517022_)))
                      (let ((_hd1701917033_ (##car _e1701817030_))
                            (_tl1702017035_ (##cdr _e1701817030_)))
                        (let ((_body17038_ _tl1702017035_))
                          (if '#t
                              (cons '%#begin-syntax
                                    (call-with-parameters
                                     (lambda ()
                                       (gx#stx-map1
                                        gx#core-compile-top-syntax
                                        _body17038_))
                                     gx#current-expander-phi
                                     (fx+ (gx#current-expander-phi) '1)))
                              (_E1701717026_)))))
                    (_E1701717026_)))))
        (_E1701617041_))))
  (define gx#core-compile-top-begin-foreign%
    (lambda (_stx16984_)
      (let* ((_e1698516992_ _stx16984_)
             (_E1698716996_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1698516992_)))
             (_E1698617010_
              (lambda ()
                (if (gx#stx-pair? _e1698516992_)
                    (let ((_e1698817000_ (gx#syntax-e _e1698516992_)))
                      (let ((_hd1698917003_ (##car _e1698817000_))
                            (_tl1699017005_ (##cdr _e1698817000_)))
                        (let ((_body17008_ _tl1699017005_))
                          (if '#t
                              (cons '%#begin-foreign _body17008_)
                              (_E1698716996_)))))
                    (_E1698716996_)))))
        (_E1698617010_))))
  (define gx#core-compile-top-begin-annotation%
    (lambda (_stx16930_)
      (let* ((_e1693116944_ _stx16930_)
             (_E1693316948_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1693116944_)))
             (_E1693216980_
              (lambda ()
                (if (gx#stx-pair? _e1693116944_)
                    (let ((_e1693416952_ (gx#syntax-e _e1693116944_)))
                      (let ((_hd1693516955_ (##car _e1693416952_))
                            (_tl1693616957_ (##cdr _e1693416952_)))
                        (if (gx#stx-pair? _tl1693616957_)
                            (let ((_e1693716960_ (gx#syntax-e _tl1693616957_)))
                              (let ((_hd1693816963_ (##car _e1693716960_))
                                    (_tl1693916965_ (##cdr _e1693716960_)))
                                (let ((_ann16968_ _hd1693816963_))
                                  (if (gx#stx-pair? _tl1693916965_)
                                      (let ((_e1694016970_
                                             (gx#syntax-e _tl1693916965_)))
                                        (let ((_hd1694116973_
                                               (##car _e1694016970_))
                                              (_tl1694216975_
                                               (##cdr _e1694016970_)))
                                          (let ((_expr16978_ _hd1694116973_))
                                            (if (gx#stx-null? _tl1694216975_)
                                                (if '#t
                                                    (gx#core-compile-top-syntax
                                                     _expr16978_)
                                                    (_E1693316948_))
                                                (_E1693316948_)))))
                                      (_E1693316948_)))))
                            (_E1693316948_))))
                    (_E1693316948_)))))
        (_E1693216980_))))
  (define gx#core-compile-top-import%
    (lambda (_stx16900_)
      (let* ((_e1690116908_ _stx16900_)
             (_E1690316912_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1690116908_)))
             (_E1690216926_
              (lambda ()
                (if (gx#stx-pair? _e1690116908_)
                    (let ((_e1690416916_ (gx#syntax-e _e1690116908_)))
                      (let ((_hd1690516919_ (##car _e1690416916_))
                            (_tl1690616921_ (##cdr _e1690416916_)))
                        (let ((_body16924_ _tl1690616921_))
                          (if '#t
                              (cons '%#import _body16924_)
                              (_E1690316912_)))))
                    (_E1690316912_)))))
        (_E1690216926_))))
  (define gx#core-compile-top-module%
    (lambda (_stx16857_)
      (let* ((_e1685816868_ _stx16857_)
             (_E1686016872_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1685816868_)))
             (_E1685916896_
              (lambda ()
                (if (gx#stx-pair? _e1685816868_)
                    (let ((_e1686116876_ (gx#syntax-e _e1685816868_)))
                      (let ((_hd1686216879_ (##car _e1686116876_))
                            (_tl1686316881_ (##cdr _e1686116876_)))
                        (if (gx#stx-pair? _tl1686316881_)
                            (let ((_e1686416884_ (gx#syntax-e _tl1686316881_)))
                              (let ((_hd1686516887_ (##car _e1686416884_))
                                    (_tl1686616889_ (##cdr _e1686416884_)))
                                (let* ((_hd16892_ _hd1686516887_)
                                       (_body16894_ _tl1686616889_))
                                  (if '#t
                                      (cons '%#module
                                            (cons (##structure-ref
                                                   (gx#syntax-local-e__0
                                                    _hd16892_)
                                                   '1
                                                   gx#expander-context::t
                                                   '#f)
                                                  (gx#stx-map1
                                                   gx#core-compile-top-syntax
                                                   _body16894_)))
                                      (_E1686016872_)))))
                            (_E1686016872_))))
                    (_E1686016872_)))))
        (_E1685916896_))))
  (define gx#core-compile-top-export%
    (lambda (_stx16827_)
      (let* ((_e1682816835_ _stx16827_)
             (_E1683016839_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1682816835_)))
             (_E1682916853_
              (lambda ()
                (if (gx#stx-pair? _e1682816835_)
                    (let ((_e1683116843_ (gx#syntax-e _e1682816835_)))
                      (let ((_hd1683216846_ (##car _e1683116843_))
                            (_tl1683316848_ (##cdr _e1683116843_)))
                        (let ((_body16851_ _tl1683316848_))
                          (if '#t
                              (cons '%#export _body16851_)
                              (_E1683016839_)))))
                    (_E1683016839_)))))
        (_E1682916853_))))
  (define gx#core-compile-top-provide%
    (lambda (_stx16797_)
      (let* ((_e1679816805_ _stx16797_)
             (_E1680016809_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1679816805_)))
             (_E1679916823_
              (lambda ()
                (if (gx#stx-pair? _e1679816805_)
                    (let ((_e1680116813_ (gx#syntax-e _e1679816805_)))
                      (let ((_hd1680216816_ (##car _e1680116813_))
                            (_tl1680316818_ (##cdr _e1680116813_)))
                        (let ((_body16821_ _tl1680316818_))
                          (if '#t
                              (cons '%#provide _body16821_)
                              (_E1680016809_)))))
                    (_E1680016809_)))))
        (_E1679916823_))))
  (define gx#core-compile-top-extern%
    (lambda (_stx16767_)
      (let* ((_e1676816775_ _stx16767_)
             (_E1677016779_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1676816775_)))
             (_E1676916793_
              (lambda ()
                (if (gx#stx-pair? _e1676816775_)
                    (let ((_e1677116783_ (gx#syntax-e _e1676816775_)))
                      (let ((_hd1677216786_ (##car _e1677116783_))
                            (_tl1677316788_ (##cdr _e1677116783_)))
                        (let ((_body16791_ _tl1677316788_))
                          (if '#t
                              (cons '%#extern _body16791_)
                              (_E1677016779_)))))
                    (_E1677016779_)))))
        (_E1676916793_))))
  (define gx#core-compile-top-define-values%
    (lambda (_stx16713_)
      (let* ((_e1671416727_ _stx16713_)
             (_E1671616731_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1671416727_)))
             (_E1671516763_
              (lambda ()
                (if (gx#stx-pair? _e1671416727_)
                    (let ((_e1671716735_ (gx#syntax-e _e1671416727_)))
                      (let ((_hd1671816738_ (##car _e1671716735_))
                            (_tl1671916740_ (##cdr _e1671716735_)))
                        (if (gx#stx-pair? _tl1671916740_)
                            (let ((_e1672016743_ (gx#syntax-e _tl1671916740_)))
                              (let ((_hd1672116746_ (##car _e1672016743_))
                                    (_tl1672216748_ (##cdr _e1672016743_)))
                                (let ((_hd16751_ _hd1672116746_))
                                  (if (gx#stx-pair? _tl1672216748_)
                                      (let ((_e1672316753_
                                             (gx#syntax-e _tl1672216748_)))
                                        (let ((_hd1672416756_
                                               (##car _e1672316753_))
                                              (_tl1672516758_
                                               (##cdr _e1672316753_)))
                                          (let ((_expr16761_ _hd1672416756_))
                                            (if (gx#stx-null? _tl1672516758_)
                                                (if '#t
                                                    (cons '%#define-values
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#core-compile-top-runtime-bind
                         _hd16751_)
                        (cons (gx#core-compile-top-syntax _expr16761_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1671616731_))
                                                (_E1671616731_)))))
                                      (_E1671616731_)))))
                            (_E1671616731_))))
                    (_E1671616731_)))))
        (_E1671516763_))))
  (define gx#core-compile-top-define-syntax%
    (lambda (_stx16658_)
      (let* ((_e1665916672_ _stx16658_)
             (_E1666116676_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1665916672_)))
             (_E1666016709_
              (lambda ()
                (if (gx#stx-pair? _e1665916672_)
                    (let ((_e1666216680_ (gx#syntax-e _e1665916672_)))
                      (let ((_hd1666316683_ (##car _e1666216680_))
                            (_tl1666416685_ (##cdr _e1666216680_)))
                        (if (gx#stx-pair? _tl1666416685_)
                            (let ((_e1666516688_ (gx#syntax-e _tl1666416685_)))
                              (let ((_hd1666616691_ (##car _e1666516688_))
                                    (_tl1666716693_ (##cdr _e1666516688_)))
                                (let ((_hd16696_ _hd1666616691_))
                                  (if (gx#stx-pair? _tl1666716693_)
                                      (let ((_e1666816698_
                                             (gx#syntax-e _tl1666716693_)))
                                        (let ((_hd1666916701_
                                               (##car _e1666816698_))
                                              (_tl1667016703_
                                               (##cdr _e1666816698_)))
                                          (let ((_expr16706_ _hd1666916701_))
                                            (if (gx#stx-null? _tl1667016703_)
                                                (if '#t
                                                    (cons '%#define-syntax
                                                          (cons _hd16696_
                                                                (cons (call-with-parameters
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (gx#core-compile-top-syntax _expr16706_))
                               gx#current-expander-phi
                               (fx+ (gx#current-expander-phi) '1))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1666116676_))
                                                (_E1666116676_)))))
                                      (_E1666116676_)))))
                            (_E1666116676_))))
                    (_E1666116676_)))))
        (_E1666016709_))))
  (define gx#core-compile-top-define-alias%
    (lambda (_stx16628_)
      (let* ((_e1662916636_ _stx16628_)
             (_E1663116640_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1662916636_)))
             (_E1663016654_
              (lambda ()
                (if (gx#stx-pair? _e1662916636_)
                    (let ((_e1663216644_ (gx#syntax-e _e1662916636_)))
                      (let ((_hd1663316647_ (##car _e1663216644_))
                            (_tl1663416649_ (##cdr _e1663216644_)))
                        (let ((_body16652_ _tl1663416649_))
                          (if '#t
                              (cons '%#define-alias _body16652_)
                              (_E1663116640_)))))
                    (_E1663116640_)))))
        (_E1663016654_))))
  (define gx#core-compile-top-define-runtime%
    (lambda (_stx16598_)
      (let* ((_e1659916606_ _stx16598_)
             (_E1660116610_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1659916606_)))
             (_E1660016624_
              (lambda ()
                (if (gx#stx-pair? _e1659916606_)
                    (let ((_e1660216614_ (gx#syntax-e _e1659916606_)))
                      (let ((_hd1660316617_ (##car _e1660216614_))
                            (_tl1660416619_ (##cdr _e1660216614_)))
                        (let ((_body16622_ _tl1660416619_))
                          (if '#t
                              (cons '%#define-runtime _body16622_)
                              (_E1660116610_)))))
                    (_E1660116610_)))))
        (_E1660016624_))))
  (define gx#core-compile-top-declare%
    (lambda (_stx16568_)
      (let* ((_e1656916576_ _stx16568_)
             (_E1657116580_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1656916576_)))
             (_E1657016594_
              (lambda ()
                (if (gx#stx-pair? _e1656916576_)
                    (let ((_e1657216584_ (gx#syntax-e _e1656916576_)))
                      (let ((_hd1657316587_ (##car _e1657216584_))
                            (_tl1657416589_ (##cdr _e1657216584_)))
                        (let ((_decls16592_ _tl1657416589_))
                          (if '#t
                              (cons '%#declare _decls16592_)
                              (_E1657116580_)))))
                    (_E1657116580_)))))
        (_E1657016594_))))
  (define gx#core-compile-top-lambda%
    (lambda (_stx16538_)
      (let* ((_e1653916546_ _stx16538_)
             (_E1654116550_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1653916546_)))
             (_E1654016564_
              (lambda ()
                (if (gx#stx-pair? _e1653916546_)
                    (let ((_e1654216554_ (gx#syntax-e _e1653916546_)))
                      (let ((_hd1654316557_ (##car _e1654216554_))
                            (_tl1654416559_ (##cdr _e1654216554_)))
                        (let ((_clause16562_ _tl1654416559_))
                          (if '#t
                              (cons '%#lambda
                                    (gx#core-compile-top-lambda-clause
                                     _clause16562_))
                              (_E1654116550_)))))
                    (_E1654116550_)))))
        (_E1654016564_))))
  (define gx#core-compile-top-lambda-clause
    (lambda (_stx16495_)
      (let* ((_e1649616506_ _stx16495_)
             (_E1649816510_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1649616506_)))
             (_E1649716534_
              (lambda ()
                (if (gx#stx-pair? _e1649616506_)
                    (let ((_e1649916514_ (gx#syntax-e _e1649616506_)))
                      (let ((_hd1650016517_ (##car _e1649916514_))
                            (_tl1650116519_ (##cdr _e1649916514_)))
                        (let ((_hd16522_ _hd1650016517_))
                          (if (gx#stx-pair? _tl1650116519_)
                              (let ((_e1650216524_
                                     (gx#syntax-e _tl1650116519_)))
                                (let ((_hd1650316527_ (##car _e1650216524_))
                                      (_tl1650416529_ (##cdr _e1650216524_)))
                                  (let ((_body16532_ _hd1650316527_))
                                    (if (gx#stx-null? _tl1650416529_)
                                        (if '#t
                                            (cons (gx#stx-map1
                                                   gx#core-compile-top-runtime-bind
                                                   _hd16522_)
                                                  (cons (gx#core-compile-top-syntax
                                                         _body16532_)
                                                        '()))
                                            (_E1649816510_))
                                        (_E1649816510_)))))
                              (_E1649816510_)))))
                    (_E1649816510_)))))
        (_E1649716534_))))
  (define gx#core-compile-top-case-lambda%
    (lambda (_stx16465_)
      (let* ((_e1646616473_ _stx16465_)
             (_E1646816477_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1646616473_)))
             (_E1646716491_
              (lambda ()
                (if (gx#stx-pair? _e1646616473_)
                    (let ((_e1646916481_ (gx#syntax-e _e1646616473_)))
                      (let ((_hd1647016484_ (##car _e1646916481_))
                            (_tl1647116486_ (##cdr _e1646916481_)))
                        (let ((_clauses16489_ _tl1647116486_))
                          (if '#t
                              (cons '%#case-lambda
                                    (gx#stx-map1
                                     gx#core-compile-top-lambda-clause
                                     _clauses16489_))
                              (_E1646816477_)))))
                    (_E1646816477_)))))
        (_E1646716491_))))
  (define gx#core-compile-top-let-values%__%
    (lambda (_stx16400_ _form16401_)
      (let* ((_e1640216415_ _stx16400_)
             (_E1640416419_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1640216415_)))
             (_E1640316451_
              (lambda ()
                (if (gx#stx-pair? _e1640216415_)
                    (let ((_e1640516423_ (gx#syntax-e _e1640216415_)))
                      (let ((_hd1640616426_ (##car _e1640516423_))
                            (_tl1640716428_ (##cdr _e1640516423_)))
                        (if (gx#stx-pair? _tl1640716428_)
                            (let ((_e1640816431_ (gx#syntax-e _tl1640716428_)))
                              (let ((_hd1640916434_ (##car _e1640816431_))
                                    (_tl1641016436_ (##cdr _e1640816431_)))
                                (let ((_hd16439_ _hd1640916434_))
                                  (if (gx#stx-pair? _tl1641016436_)
                                      (let ((_e1641116441_
                                             (gx#syntax-e _tl1641016436_)))
                                        (let ((_hd1641216444_
                                               (##car _e1641116441_))
                                              (_tl1641316446_
                                               (##cdr _e1641116441_)))
                                          (let ((_body16449_ _hd1641216444_))
                                            (if (gx#stx-null? _tl1641316446_)
                                                (if '#t
                                                    (cons _form16401_
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#core-compile-top-lambda-clause
                         _hd16439_)
                        (cons (gx#core-compile-top-syntax _body16449_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1640416419_))
                                                (_E1640416419_)))))
                                      (_E1640416419_)))))
                            (_E1640416419_))))
                    (_E1640416419_)))))
        (_E1640316451_))))
  (define gx#core-compile-top-let-values%__0
    (lambda (_stx16458_)
      (let ((_form16460_ '%#let-values))
        (gx#core-compile-top-let-values%__% _stx16458_ _form16460_))))
  (define gx#core-compile-top-let-values%
    (lambda _g17271_
      (let ((_g17270_ (length _g17271_)))
        (cond ((##fx= _g17270_ 1)
               (apply gx#core-compile-top-let-values%__0 _g17271_))
              ((##fx= _g17270_ 2)
               (apply gx#core-compile-top-let-values%__% _g17271_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-compile-top-let-values%
                _g17271_))))))
  (define gx#core-compile-top-letrec-values%
    (lambda (_stx16397_)
      (gx#core-compile-top-let-values%__% _stx16397_ '%#letrec-values)))
  (define gx#core-compile-top-letrec*-values%
    (lambda (_stx16395_)
      (gx#core-compile-top-let-values%__% _stx16395_ '%#letrec*-values)))
  (define gx#core-compile-top-quote%
    (lambda (_stx16354_)
      (let* ((_e1635516365_ _stx16354_)
             (_E1635716369_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1635516365_)))
             (_E1635616391_
              (lambda ()
                (if (gx#stx-pair? _e1635516365_)
                    (let ((_e1635816373_ (gx#syntax-e _e1635516365_)))
                      (let ((_hd1635916376_ (##car _e1635816373_))
                            (_tl1636016378_ (##cdr _e1635816373_)))
                        (if (gx#stx-pair? _tl1636016378_)
                            (let ((_e1636116381_ (gx#syntax-e _tl1636016378_)))
                              (let ((_hd1636216384_ (##car _e1636116381_))
                                    (_tl1636316386_ (##cdr _e1636116381_)))
                                (let ((_e16389_ _hd1636216384_))
                                  (if (gx#stx-null? _tl1636316386_)
                                      (if '#t
                                          (cons '%#quote
                                                (cons (gx#syntax->datum
                                                       _e16389_)
                                                      '()))
                                          (_E1635716369_))
                                      (_E1635716369_)))))
                            (_E1635716369_))))
                    (_E1635716369_)))))
        (_E1635616391_))))
  (define gx#core-compile-top-quote-syntax%
    (lambda (_stx16313_)
      (let* ((_e1631416324_ _stx16313_)
             (_E1631616328_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1631416324_)))
             (_E1631516350_
              (lambda ()
                (if (gx#stx-pair? _e1631416324_)
                    (let ((_e1631716332_ (gx#syntax-e _e1631416324_)))
                      (let ((_hd1631816335_ (##car _e1631716332_))
                            (_tl1631916337_ (##cdr _e1631716332_)))
                        (if (gx#stx-pair? _tl1631916337_)
                            (let ((_e1632016340_ (gx#syntax-e _tl1631916337_)))
                              (let ((_hd1632116343_ (##car _e1632016340_))
                                    (_tl1632216345_ (##cdr _e1632016340_)))
                                (let ((_e16348_ _hd1632116343_))
                                  (if (gx#stx-null? _tl1632216345_)
                                      (if '#t
                                          (cons '%#quote-syntax
                                                (cons (gx#core-quote-syntax__0
                                                       _e16348_)
                                                      '()))
                                          (_E1631616328_))
                                      (_E1631616328_)))))
                            (_E1631616328_))))
                    (_E1631616328_)))))
        (_E1631516350_))))
  (define gx#core-compile-top-call%
    (lambda (_stx16270_)
      (let* ((_e1627116281_ _stx16270_)
             (_E1627316285_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1627116281_)))
             (_E1627216309_
              (lambda ()
                (if (gx#stx-pair? _e1627116281_)
                    (let ((_e1627416289_ (gx#syntax-e _e1627116281_)))
                      (let ((_hd1627516292_ (##car _e1627416289_))
                            (_tl1627616294_ (##cdr _e1627416289_)))
                        (if (gx#stx-pair? _tl1627616294_)
                            (let ((_e1627716297_ (gx#syntax-e _tl1627616294_)))
                              (let ((_hd1627816300_ (##car _e1627716297_))
                                    (_tl1627916302_ (##cdr _e1627716297_)))
                                (let* ((_rator16305_ _hd1627816300_)
                                       (_args16307_ _tl1627916302_))
                                  (if '#t
                                      (cons '%#call
                                            (cons (gx#core-compile-top-syntax
                                                   _rator16305_)
                                                  (gx#stx-map1
                                                   gx#core-compile-top-syntax
                                                   _args16307_)))
                                      (_E1627316285_)))))
                            (_E1627316285_))))
                    (_E1627316285_)))))
        (_E1627216309_))))
  (define gx#core-compile-top-if%
    (lambda (_stx16203_)
      (let* ((_e1620416220_ _stx16203_)
             (_E1620616224_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1620416220_)))
             (_E1620516266_
              (lambda ()
                (if (gx#stx-pair? _e1620416220_)
                    (let ((_e1620716228_ (gx#syntax-e _e1620416220_)))
                      (let ((_hd1620816231_ (##car _e1620716228_))
                            (_tl1620916233_ (##cdr _e1620716228_)))
                        (if (gx#stx-pair? _tl1620916233_)
                            (let ((_e1621016236_ (gx#syntax-e _tl1620916233_)))
                              (let ((_hd1621116239_ (##car _e1621016236_))
                                    (_tl1621216241_ (##cdr _e1621016236_)))
                                (let ((_test16244_ _hd1621116239_))
                                  (if (gx#stx-pair? _tl1621216241_)
                                      (let ((_e1621316246_
                                             (gx#syntax-e _tl1621216241_)))
                                        (let ((_hd1621416249_
                                               (##car _e1621316246_))
                                              (_tl1621516251_
                                               (##cdr _e1621316246_)))
                                          (let ((_K16254_ _hd1621416249_))
                                            (if (gx#stx-pair? _tl1621516251_)
                                                (let ((_e1621616256_
                                                       (gx#syntax-e
                                                        _tl1621516251_)))
                                                  (let ((_hd1621716259_
                                                         (##car _e1621616256_))
                                                        (_tl1621816261_
                                                         (##cdr _e1621616256_)))
                                                    (let ((_E16264_
                                                           _hd1621716259_))
                                                      (if (gx#stx-null?
                                                           _tl1621816261_)
                                                          (if '#t
                                                              (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gx#core-compile-top-syntax _test16244_)
                                  (cons (gx#core-compile-top-syntax _K16254_)
                                        (cons (gx#core-compile-top-syntax
                                               _E16264_)
                                              '()))))
                      (_E1620616224_))
                  (_E1620616224_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1620616224_)))))
                                      (_E1620616224_)))))
                            (_E1620616224_))))
                    (_E1620616224_)))))
        (_E1620516266_))))
  (define gx#core-compile-top-ref%
    (lambda (_stx16162_)
      (let* ((_e1616316173_ _stx16162_)
             (_E1616516177_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1616316173_)))
             (_E1616416199_
              (lambda ()
                (if (gx#stx-pair? _e1616316173_)
                    (let ((_e1616616181_ (gx#syntax-e _e1616316173_)))
                      (let ((_hd1616716184_ (##car _e1616616181_))
                            (_tl1616816186_ (##cdr _e1616616181_)))
                        (if (gx#stx-pair? _tl1616816186_)
                            (let ((_e1616916189_ (gx#syntax-e _tl1616816186_)))
                              (let ((_hd1617016192_ (##car _e1616916189_))
                                    (_tl1617116194_ (##cdr _e1616916189_)))
                                (let ((_id16197_ _hd1617016192_))
                                  (if (gx#stx-null? _tl1617116194_)
                                      (if (gx#identifier? _id16197_)
                                          (cons '%#ref
                                                (cons (gx#core-compile-top-runtime-ref
                                                       _id16197_)
                                                      '()))
                                          (_E1616516177_))
                                      (_E1616516177_)))))
                            (_E1616516177_))))
                    (_E1616516177_)))))
        (_E1616416199_))))
  (define gx#core-compile-top-setq%
    (lambda (_stx16108_)
      (let* ((_e1610916122_ _stx16108_)
             (_E1611116126_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1610916122_)))
             (_E1611016158_
              (lambda ()
                (if (gx#stx-pair? _e1610916122_)
                    (let ((_e1611216130_ (gx#syntax-e _e1610916122_)))
                      (let ((_hd1611316133_ (##car _e1611216130_))
                            (_tl1611416135_ (##cdr _e1611216130_)))
                        (if (gx#stx-pair? _tl1611416135_)
                            (let ((_e1611516138_ (gx#syntax-e _tl1611416135_)))
                              (let ((_hd1611616141_ (##car _e1611516138_))
                                    (_tl1611716143_ (##cdr _e1611516138_)))
                                (let ((_id16146_ _hd1611616141_))
                                  (if (gx#stx-pair? _tl1611716143_)
                                      (let ((_e1611816148_
                                             (gx#syntax-e _tl1611716143_)))
                                        (let ((_hd1611916151_
                                               (##car _e1611816148_))
                                              (_tl1612016153_
                                               (##cdr _e1611816148_)))
                                          (let ((_expr16156_ _hd1611916151_))
                                            (if (gx#stx-null? _tl1612016153_)
                                                (if (gx#identifier? _id16146_)
                                                    (cons '%#set!
                                                          (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _id16146_)
                        (cons (gx#core-compile-top-syntax _expr16156_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1611116126_))
                                                (_E1611116126_)))))
                                      (_E1611116126_)))))
                            (_E1611116126_))))
                    (_E1611116126_)))))
        (_E1611016158_))))
  (define gx#core-compile-top-runtime-ref
    (lambda (_id16103_)
      (let ((_$e16105_ (gx#resolve-identifier__0 _id16103_)))
        (if _$e16105_
            (##unchecked-structure-ref _$e16105_ '1 gx#binding::t '#f)
            _id16103_))))
  (define gx#core-compile-top-runtime-bind
    (lambda (_hd16101_)
      (if (gx#identifier? _hd16101_)
          (gx#core-compile-top-runtime-ref _hd16101_)
          '#f))))
