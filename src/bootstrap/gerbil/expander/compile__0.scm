(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-compile-top-syntax
    (lambda (_stx15582_)
      (let* ((_e1558315590_ _stx15582_)
             (_E1558515594_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1558315590_)))
             (_E1558415608_
              (lambda ()
                (if (gx#stx-pair? _e1558315590_)
                    (let ((_e1558615598_ (gx#syntax-e _e1558315590_)))
                      (let ((_hd1558715601_ (##car _e1558615598_))
                            (_tl1558815603_ (##cdr _e1558615598_)))
                        (let ((_form15606_ _hd1558715601_))
                          (if '#t
                              (call-method
                               (gx#syntax-local-e__0 _form15606_)
                               'compile-top-syntax
                               _stx15582_)
                              (_E1558515594_)))))
                    (_E1558515594_)))))
        (_E1558415608_))))
  (define gx#core-expander::compile-top-syntax
    (lambda (_self15542_ _stx15543_)
      (let* ((_self1554415552_ _self15542_)
             (_E1554615556_
              (lambda () (error '"No clause matching" _self1554415552_)))
             (_K1554715568_
              (lambda (_K15559_)
                (let ((_$e15561_ (gx#stx-source _stx15543_)))
                  (if _$e15561_
                      ((lambda (_g1556315565_)
                         (gx#stx-wrap-source
                          (_K15559_ _stx15543_)
                          _g1556315565_))
                       _$e15561_)
                      (_K15559_ _stx15543_))))))
        (if (##structure-instance-of?
             _self1554415552_
             (##type-id gx#core-expander::t))
            (let* ((_e1554815571_ (##vector-ref _self1554415552_ '1))
                   (_e1554915574_ (##vector-ref _self1554415552_ '2))
                   (_e1555015577_ (##vector-ref _self1554415552_ '3))
                   (_K15580_ _e1555015577_))
              (_K1554715568_ _K15580_))
            (_E1554615556_)))))
  (bind-method!
   gx#core-expander::t
   'compile-top-syntax
   gx#core-expander::compile-top-syntax
   '#f)
  (define gx#core-compile-top-error
    (lambda (_stx15416_)
      (gx#raise-syntax-error 'compile '"Cannot compile form" _stx15416_)))
  (define gx#core-compile-top-begin%
    (lambda (_stx15386_)
      (let* ((_e1538715394_ _stx15386_)
             (_E1538915398_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1538715394_)))
             (_E1538815412_
              (lambda ()
                (if (gx#stx-pair? _e1538715394_)
                    (let ((_e1539015402_ (gx#syntax-e _e1538715394_)))
                      (let ((_hd1539115405_ (##car _e1539015402_))
                            (_tl1539215407_ (##cdr _e1539015402_)))
                        (let ((_body15410_ _tl1539215407_))
                          (if '#t
                              (cons '%#begin
                                    (gx#stx-map1
                                     gx#core-compile-top-syntax
                                     _body15410_))
                              (_E1538915398_)))))
                    (_E1538915398_)))))
        (_E1538815412_))))
  (define gx#core-compile-top-begin-syntax%
    (lambda (_stx15355_)
      (let* ((_e1535615363_ _stx15355_)
             (_E1535815367_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1535615363_)))
             (_E1535715382_
              (lambda ()
                (if (gx#stx-pair? _e1535615363_)
                    (let ((_e1535915371_ (gx#syntax-e _e1535615363_)))
                      (let ((_hd1536015374_ (##car _e1535915371_))
                            (_tl1536115376_ (##cdr _e1535915371_)))
                        (let ((_body15379_ _tl1536115376_))
                          (if '#t
                              (cons '%#begin-syntax
                                    (call-with-parameters
                                     (lambda ()
                                       (gx#stx-map1
                                        gx#core-compile-top-syntax
                                        _body15379_))
                                     gx#current-expander-phi
                                     (fx+ (gx#current-expander-phi) '1)))
                              (_E1535815367_)))))
                    (_E1535815367_)))))
        (_E1535715382_))))
  (define gx#core-compile-top-begin-foreign%
    (lambda (_stx15325_)
      (let* ((_e1532615333_ _stx15325_)
             (_E1532815337_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1532615333_)))
             (_E1532715351_
              (lambda ()
                (if (gx#stx-pair? _e1532615333_)
                    (let ((_e1532915341_ (gx#syntax-e _e1532615333_)))
                      (let ((_hd1533015344_ (##car _e1532915341_))
                            (_tl1533115346_ (##cdr _e1532915341_)))
                        (let ((_body15349_ _tl1533115346_))
                          (if '#t
                              (cons '%#begin-foreign _body15349_)
                              (_E1532815337_)))))
                    (_E1532815337_)))))
        (_E1532715351_))))
  (define gx#core-compile-top-begin-annotation%
    (lambda (_stx15271_)
      (let* ((_e1527215285_ _stx15271_)
             (_E1527415289_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1527215285_)))
             (_E1527315321_
              (lambda ()
                (if (gx#stx-pair? _e1527215285_)
                    (let ((_e1527515293_ (gx#syntax-e _e1527215285_)))
                      (let ((_hd1527615296_ (##car _e1527515293_))
                            (_tl1527715298_ (##cdr _e1527515293_)))
                        (if (gx#stx-pair? _tl1527715298_)
                            (let ((_e1527815301_ (gx#syntax-e _tl1527715298_)))
                              (let ((_hd1527915304_ (##car _e1527815301_))
                                    (_tl1528015306_ (##cdr _e1527815301_)))
                                (let ((_ann15309_ _hd1527915304_))
                                  (if (gx#stx-pair? _tl1528015306_)
                                      (let ((_e1528115311_
                                             (gx#syntax-e _tl1528015306_)))
                                        (let ((_hd1528215314_
                                               (##car _e1528115311_))
                                              (_tl1528315316_
                                               (##cdr _e1528115311_)))
                                          (let ((_expr15319_ _hd1528215314_))
                                            (if (gx#stx-null? _tl1528315316_)
                                                (if '#t
                                                    (gx#core-compile-top-syntax
                                                     _expr15319_)
                                                    (_E1527415289_))
                                                (_E1527415289_)))))
                                      (_E1527415289_)))))
                            (_E1527415289_))))
                    (_E1527415289_)))))
        (_E1527315321_))))
  (define gx#core-compile-top-import%
    (lambda (_stx15241_)
      (let* ((_e1524215249_ _stx15241_)
             (_E1524415253_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1524215249_)))
             (_E1524315267_
              (lambda ()
                (if (gx#stx-pair? _e1524215249_)
                    (let ((_e1524515257_ (gx#syntax-e _e1524215249_)))
                      (let ((_hd1524615260_ (##car _e1524515257_))
                            (_tl1524715262_ (##cdr _e1524515257_)))
                        (let ((_body15265_ _tl1524715262_))
                          (if '#t
                              (cons '%#import (gx#syntax->list _body15265_))
                              (_E1524415253_)))))
                    (_E1524415253_)))))
        (_E1524315267_))))
  (define gx#core-compile-top-module%
    (lambda (_stx15198_)
      (let* ((_e1519915209_ _stx15198_)
             (_E1520115213_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1519915209_)))
             (_E1520015237_
              (lambda ()
                (if (gx#stx-pair? _e1519915209_)
                    (let ((_e1520215217_ (gx#syntax-e _e1519915209_)))
                      (let ((_hd1520315220_ (##car _e1520215217_))
                            (_tl1520415222_ (##cdr _e1520215217_)))
                        (if (gx#stx-pair? _tl1520415222_)
                            (let ((_e1520515225_ (gx#syntax-e _tl1520415222_)))
                              (let ((_hd1520615228_ (##car _e1520515225_))
                                    (_tl1520715230_ (##cdr _e1520515225_)))
                                (let* ((_hd15233_ _hd1520615228_)
                                       (_body15235_ _tl1520715230_))
                                  (if '#t
                                      (cons* '%#module
                                             (##structure-ref
                                              (gx#syntax-local-e__0 _hd15233_)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             (gx#stx-map1
                                              gx#core-compile-top-syntax
                                              _body15235_))
                                      (_E1520115213_)))))
                            (_E1520115213_))))
                    (_E1520115213_)))))
        (_E1520015237_))))
  (define gx#core-compile-top-export%
    (lambda (_stx15168_)
      (let* ((_e1516915176_ _stx15168_)
             (_E1517115180_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1516915176_)))
             (_E1517015194_
              (lambda ()
                (if (gx#stx-pair? _e1516915176_)
                    (let ((_e1517215184_ (gx#syntax-e _e1516915176_)))
                      (let ((_hd1517315187_ (##car _e1517215184_))
                            (_tl1517415189_ (##cdr _e1517215184_)))
                        (let ((_body15192_ _tl1517415189_))
                          (if '#t
                              (cons '%#export (gx#syntax->list _body15192_))
                              (_E1517115180_)))))
                    (_E1517115180_)))))
        (_E1517015194_))))
  (define gx#core-compile-top-provide%
    (lambda (_stx15138_)
      (let* ((_e1513915146_ _stx15138_)
             (_E1514115150_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1513915146_)))
             (_E1514015164_
              (lambda ()
                (if (gx#stx-pair? _e1513915146_)
                    (let ((_e1514215154_ (gx#syntax-e _e1513915146_)))
                      (let ((_hd1514315157_ (##car _e1514215154_))
                            (_tl1514415159_ (##cdr _e1514215154_)))
                        (let ((_body15162_ _tl1514415159_))
                          (if '#t
                              (cons '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body15162_))
                              (_E1514115150_)))))
                    (_E1514115150_)))))
        (_E1514015164_))))
  (define gx#core-compile-top-extern%
    (lambda (_stx15063_)
      (letrec ((_generate15065_
                (lambda (_hd15095_)
                  (let* ((_e1509615106_ _hd15095_)
                         (_E1509815110_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e1509615106_)))
                         (_E1509715134_
                          (lambda ()
                            (if (gx#stx-pair? _e1509615106_)
                                (let ((_e1509915114_
                                       (gx#syntax-e _e1509615106_)))
                                  (let ((_hd1510015117_ (##car _e1509915114_))
                                        (_tl1510115119_ (##cdr _e1509915114_)))
                                    (let ((_id15122_ _hd1510015117_))
                                      (if (gx#stx-pair? _tl1510115119_)
                                          (let ((_e1510215124_
                                                 (gx#syntax-e _tl1510115119_)))
                                            (let ((_hd1510315127_
                                                   (##car _e1510215124_))
                                                  (_tl1510415129_
                                                   (##cdr _e1510215124_)))
                                              (let ((_eid15132_
                                                     _hd1510315127_))
                                                (if (gx#stx-null?
                                                     _tl1510415129_)
                                                    (if '#t
                                                        (cons (gx#core-quote-syntax__0
                                                               _id15122_)
                                                              (cons (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _eid15132_)
                            '()))
                (_E1509815110_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1509815110_)))))
                                          (_E1509815110_)))))
                                (_E1509815110_)))))
                    (_E1509715134_)))))
        (let* ((_e1506615073_ _stx15063_)
               (_E1506815077_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1506615073_)))
               (_E1506715091_
                (lambda ()
                  (if (gx#stx-pair? _e1506615073_)
                      (let ((_e1506915081_ (gx#syntax-e _e1506615073_)))
                        (let ((_hd1507015084_ (##car _e1506915081_))
                              (_tl1507115086_ (##cdr _e1506915081_)))
                          (let ((_body15089_ _tl1507115086_))
                            (if '#t
                                (cons '%#extern
                                      (gx#stx-map1
                                       _generate15065_
                                       _body15089_))
                                (_E1506815077_)))))
                      (_E1506815077_)))))
          (_E1506715091_)))))
  (define gx#core-compile-top-define-values%
    (lambda (_stx15009_)
      (let* ((_e1501015023_ _stx15009_)
             (_E1501215027_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1501015023_)))
             (_E1501115059_
              (lambda ()
                (if (gx#stx-pair? _e1501015023_)
                    (let ((_e1501315031_ (gx#syntax-e _e1501015023_)))
                      (let ((_hd1501415034_ (##car _e1501315031_))
                            (_tl1501515036_ (##cdr _e1501315031_)))
                        (if (gx#stx-pair? _tl1501515036_)
                            (let ((_e1501615039_ (gx#syntax-e _tl1501515036_)))
                              (let ((_hd1501715042_ (##car _e1501615039_))
                                    (_tl1501815044_ (##cdr _e1501615039_)))
                                (let ((_hd15047_ _hd1501715042_))
                                  (if (gx#stx-pair? _tl1501815044_)
                                      (let ((_e1501915049_
                                             (gx#syntax-e _tl1501815044_)))
                                        (let ((_hd1502015052_
                                               (##car _e1501915049_))
                                              (_tl1502115054_
                                               (##cdr _e1501915049_)))
                                          (let ((_expr15057_ _hd1502015052_))
                                            (if (gx#stx-null? _tl1502115054_)
                                                (if '#t
                                                    (cons '%#define-values
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#core-compile-top-runtime-bind
                         _hd15047_)
                        (cons (gx#core-compile-top-syntax _expr15057_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1501215027_))
                                                (_E1501215027_)))))
                                      (_E1501215027_)))))
                            (_E1501215027_))))
                    (_E1501215027_)))))
        (_E1501115059_))))
  (define gx#core-compile-top-define-syntax%
    (lambda (_stx14954_)
      (let* ((_e1495514968_ _stx14954_)
             (_E1495714972_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1495514968_)))
             (_E1495615005_
              (lambda ()
                (if (gx#stx-pair? _e1495514968_)
                    (let ((_e1495814976_ (gx#syntax-e _e1495514968_)))
                      (let ((_hd1495914979_ (##car _e1495814976_))
                            (_tl1496014981_ (##cdr _e1495814976_)))
                        (if (gx#stx-pair? _tl1496014981_)
                            (let ((_e1496114984_ (gx#syntax-e _tl1496014981_)))
                              (let ((_hd1496214987_ (##car _e1496114984_))
                                    (_tl1496314989_ (##cdr _e1496114984_)))
                                (let ((_hd14992_ _hd1496214987_))
                                  (if (gx#stx-pair? _tl1496314989_)
                                      (let ((_e1496414994_
                                             (gx#syntax-e _tl1496314989_)))
                                        (let ((_hd1496514997_
                                               (##car _e1496414994_))
                                              (_tl1496614999_
                                               (##cdr _e1496414994_)))
                                          (let ((_expr15002_ _hd1496514997_))
                                            (if (gx#stx-null? _tl1496614999_)
                                                (if '#t
                                                    (cons '%#define-syntax
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd14992_)
                        (cons (call-with-parameters
                               (lambda ()
                                 (gx#core-compile-top-syntax _expr15002_))
                               gx#current-expander-phi
                               (fx+ (gx#current-expander-phi) '1))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1495714972_))
                                                (_E1495714972_)))))
                                      (_E1495714972_)))))
                            (_E1495714972_))))
                    (_E1495714972_)))))
        (_E1495615005_))))
  (define gx#core-compile-top-define-alias%
    (lambda (_stx14900_)
      (let* ((_e1490114914_ _stx14900_)
             (_E1490314918_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1490114914_)))
             (_E1490214950_
              (lambda ()
                (if (gx#stx-pair? _e1490114914_)
                    (let ((_e1490414922_ (gx#syntax-e _e1490114914_)))
                      (let ((_hd1490514925_ (##car _e1490414922_))
                            (_tl1490614927_ (##cdr _e1490414922_)))
                        (if (gx#stx-pair? _tl1490614927_)
                            (let ((_e1490714930_ (gx#syntax-e _tl1490614927_)))
                              (let ((_hd1490814933_ (##car _e1490714930_))
                                    (_tl1490914935_ (##cdr _e1490714930_)))
                                (let ((_hd14938_ _hd1490814933_))
                                  (if (gx#stx-pair? _tl1490914935_)
                                      (let ((_e1491014940_
                                             (gx#syntax-e _tl1490914935_)))
                                        (let ((_hd1491114943_
                                               (##car _e1491014940_))
                                              (_tl1491214945_
                                               (##cdr _e1491014940_)))
                                          (let ((_alias-id14948_
                                                 _hd1491114943_))
                                            (if (gx#stx-null? _tl1491214945_)
                                                (if '#t
                                                    (cons '%#define-alias
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd14938_)
                        (cons (gx#core-quote-syntax__0 _alias-id14948_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1490314918_))
                                                (_E1490314918_)))))
                                      (_E1490314918_)))))
                            (_E1490314918_))))
                    (_E1490314918_)))))
        (_E1490214950_))))
  (define gx#core-compile-top-define-runtime%
    (lambda (_stx14846_)
      (let* ((_e1484714860_ _stx14846_)
             (_E1484914864_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1484714860_)))
             (_E1484814896_
              (lambda ()
                (if (gx#stx-pair? _e1484714860_)
                    (let ((_e1485014868_ (gx#syntax-e _e1484714860_)))
                      (let ((_hd1485114871_ (##car _e1485014868_))
                            (_tl1485214873_ (##cdr _e1485014868_)))
                        (if (gx#stx-pair? _tl1485214873_)
                            (let ((_e1485314876_ (gx#syntax-e _tl1485214873_)))
                              (let ((_hd1485414879_ (##car _e1485314876_))
                                    (_tl1485514881_ (##cdr _e1485314876_)))
                                (let ((_id14884_ _hd1485414879_))
                                  (if (gx#stx-pair? _tl1485514881_)
                                      (let ((_e1485614886_
                                             (gx#syntax-e _tl1485514881_)))
                                        (let ((_hd1485714889_
                                               (##car _e1485614886_))
                                              (_tl1485814891_
                                               (##cdr _e1485614886_)))
                                          (let ((_binding-id14894_
                                                 _hd1485714889_))
                                            (if (gx#stx-null? _tl1485814891_)
                                                (if '#t
                                                    (cons '%#define-runtime
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _id14884_)
                        (cons (gx#core-quote-syntax__0 _binding-id14894_)
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1484914864_))
                                                (_E1484914864_)))))
                                      (_E1484914864_)))))
                            (_E1484914864_))))
                    (_E1484914864_)))))
        (_E1484814896_))))
  (define gx#core-compile-top-declare%
    (lambda (_stx14816_)
      (let* ((_e1481714824_ _stx14816_)
             (_E1481914828_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1481714824_)))
             (_E1481814842_
              (lambda ()
                (if (gx#stx-pair? _e1481714824_)
                    (let ((_e1482014832_ (gx#syntax-e _e1481714824_)))
                      (let ((_hd1482114835_ (##car _e1482014832_))
                            (_tl1482214837_ (##cdr _e1482014832_)))
                        (let ((_decls14840_ _tl1482214837_))
                          (if '#t
                              (cons '%#declare _decls14840_)
                              (_E1481914828_)))))
                    (_E1481914828_)))))
        (_E1481814842_))))
  (define gx#core-compile-top-lambda%
    (lambda (_stx14786_)
      (let* ((_e1478714794_ _stx14786_)
             (_E1478914798_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1478714794_)))
             (_E1478814812_
              (lambda ()
                (if (gx#stx-pair? _e1478714794_)
                    (let ((_e1479014802_ (gx#syntax-e _e1478714794_)))
                      (let ((_hd1479114805_ (##car _e1479014802_))
                            (_tl1479214807_ (##cdr _e1479014802_)))
                        (let ((_clause14810_ _tl1479214807_))
                          (if '#t
                              (cons '%#lambda
                                    (gx#core-compile-top-lambda-clause
                                     _clause14810_))
                              (_E1478914798_)))))
                    (_E1478914798_)))))
        (_E1478814812_))))
  (define gx#core-compile-top-lambda-clause
    (lambda (_stx14743_)
      (let* ((_e1474414754_ _stx14743_)
             (_E1474614758_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1474414754_)))
             (_E1474514782_
              (lambda ()
                (if (gx#stx-pair? _e1474414754_)
                    (let ((_e1474714762_ (gx#syntax-e _e1474414754_)))
                      (let ((_hd1474814765_ (##car _e1474714762_))
                            (_tl1474914767_ (##cdr _e1474714762_)))
                        (let ((_hd14770_ _hd1474814765_))
                          (if (gx#stx-pair? _tl1474914767_)
                              (let ((_e1475014772_
                                     (gx#syntax-e _tl1474914767_)))
                                (let ((_hd1475114775_ (##car _e1475014772_))
                                      (_tl1475214777_ (##cdr _e1475014772_)))
                                  (let ((_body14780_ _hd1475114775_))
                                    (if (gx#stx-null? _tl1475214777_)
                                        (if '#t
                                            (cons (gx#stx-map1
                                                   gx#core-compile-top-runtime-bind
                                                   _hd14770_)
                                                  (cons (gx#core-compile-top-syntax
                                                         _body14780_)
                                                        '()))
                                            (_E1474614758_))
                                        (_E1474614758_)))))
                              (_E1474614758_)))))
                    (_E1474614758_)))))
        (_E1474514782_))))
  (define gx#core-compile-top-case-lambda%
    (lambda (_stx14713_)
      (let* ((_e1471414721_ _stx14713_)
             (_E1471614725_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1471414721_)))
             (_E1471514739_
              (lambda ()
                (if (gx#stx-pair? _e1471414721_)
                    (let ((_e1471714729_ (gx#syntax-e _e1471414721_)))
                      (let ((_hd1471814732_ (##car _e1471714729_))
                            (_tl1471914734_ (##cdr _e1471714729_)))
                        (let ((_clauses14737_ _tl1471914734_))
                          (if '#t
                              (cons '%#case-lambda
                                    (gx#stx-map1
                                     gx#core-compile-top-lambda-clause
                                     _clauses14737_))
                              (_E1471614725_)))))
                    (_E1471614725_)))))
        (_E1471514739_))))
  (begin
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx14648_ _form14649_)
        (let* ((_e1465014663_ _stx14648_)
               (_E1465214667_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1465014663_)))
               (_E1465114699_
                (lambda ()
                  (if (gx#stx-pair? _e1465014663_)
                      (let ((_e1465314671_ (gx#syntax-e _e1465014663_)))
                        (let ((_hd1465414674_ (##car _e1465314671_))
                              (_tl1465514676_ (##cdr _e1465314671_)))
                          (if (gx#stx-pair? _tl1465514676_)
                              (let ((_e1465614679_
                                     (gx#syntax-e _tl1465514676_)))
                                (let ((_hd1465714682_ (##car _e1465614679_))
                                      (_tl1465814684_ (##cdr _e1465614679_)))
                                  (let ((_hd14687_ _hd1465714682_))
                                    (if (gx#stx-pair? _tl1465814684_)
                                        (let ((_e1465914689_
                                               (gx#syntax-e _tl1465814684_)))
                                          (let ((_hd1466014692_
                                                 (##car _e1465914689_))
                                                (_tl1466114694_
                                                 (##cdr _e1465914689_)))
                                            (let ((_body14697_ _hd1466014692_))
                                              (if (gx#stx-null? _tl1466114694_)
                                                  (if '#t
                                                      (cons _form14649_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd14687_)
                          (cons (gx#core-compile-top-syntax _body14697_) '())))
              (_E1465214667_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1465214667_)))))
                                        (_E1465214667_)))))
                              (_E1465214667_))))
                      (_E1465214667_)))))
          (_E1465114699_))))
    (begin
      (define gx#core-compile-top-let-values%__0
        (lambda (_stx14706_)
          (let ((_form14708_ '%#let-values))
            (gx#core-compile-top-let-values%__% _stx14706_ _form14708_))))
      (define gx#core-compile-top-let-values%
        (lambda _g15612_
          (let ((_g15611_ (length _g15612_)))
            (cond ((fx= _g15611_ 1)
                   (apply gx#core-compile-top-let-values%__0 _g15612_))
                  ((fx= _g15611_ 2)
                   (apply gx#core-compile-top-let-values%__% _g15612_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-compile-top-let-values%
                    _g15612_))))))))
  (define gx#core-compile-top-letrec-values%
    (lambda (_stx14645_)
      (gx#core-compile-top-let-values%__% _stx14645_ '%#letrec-values)))
  (define gx#core-compile-top-letrec*-values%
    (lambda (_stx14643_)
      (gx#core-compile-top-let-values%__% _stx14643_ '%#letrec*-values)))
  (define gx#core-compile-top-quote%
    (lambda (_stx14602_)
      (let* ((_e1460314613_ _stx14602_)
             (_E1460514617_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1460314613_)))
             (_E1460414639_
              (lambda ()
                (if (gx#stx-pair? _e1460314613_)
                    (let ((_e1460614621_ (gx#syntax-e _e1460314613_)))
                      (let ((_hd1460714624_ (##car _e1460614621_))
                            (_tl1460814626_ (##cdr _e1460614621_)))
                        (if (gx#stx-pair? _tl1460814626_)
                            (let ((_e1460914629_ (gx#syntax-e _tl1460814626_)))
                              (let ((_hd1461014632_ (##car _e1460914629_))
                                    (_tl1461114634_ (##cdr _e1460914629_)))
                                (let ((_e14637_ _hd1461014632_))
                                  (if (gx#stx-null? _tl1461114634_)
                                      (if '#t
                                          (cons '%#quote
                                                (cons (gx#syntax->datum
                                                       _e14637_)
                                                      '()))
                                          (_E1460514617_))
                                      (_E1460514617_)))))
                            (_E1460514617_))))
                    (_E1460514617_)))))
        (_E1460414639_))))
  (define gx#core-compile-top-quote-syntax%
    (lambda (_stx14561_)
      (let* ((_e1456214572_ _stx14561_)
             (_E1456414576_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1456214572_)))
             (_E1456314598_
              (lambda ()
                (if (gx#stx-pair? _e1456214572_)
                    (let ((_e1456514580_ (gx#syntax-e _e1456214572_)))
                      (let ((_hd1456614583_ (##car _e1456514580_))
                            (_tl1456714585_ (##cdr _e1456514580_)))
                        (if (gx#stx-pair? _tl1456714585_)
                            (let ((_e1456814588_ (gx#syntax-e _tl1456714585_)))
                              (let ((_hd1456914591_ (##car _e1456814588_))
                                    (_tl1457014593_ (##cdr _e1456814588_)))
                                (let ((_e14596_ _hd1456914591_))
                                  (if (gx#stx-null? _tl1457014593_)
                                      (if '#t
                                          (cons '%#quote-syntax
                                                (cons (gx#core-quote-syntax__0
                                                       _e14596_)
                                                      '()))
                                          (_E1456414576_))
                                      (_E1456414576_)))))
                            (_E1456414576_))))
                    (_E1456414576_)))))
        (_E1456314598_))))
  (define gx#core-compile-top-call%
    (lambda (_stx14518_)
      (let* ((_e1451914529_ _stx14518_)
             (_E1452114533_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1451914529_)))
             (_E1452014557_
              (lambda ()
                (if (gx#stx-pair? _e1451914529_)
                    (let ((_e1452214537_ (gx#syntax-e _e1451914529_)))
                      (let ((_hd1452314540_ (##car _e1452214537_))
                            (_tl1452414542_ (##cdr _e1452214537_)))
                        (if (gx#stx-pair? _tl1452414542_)
                            (let ((_e1452514545_ (gx#syntax-e _tl1452414542_)))
                              (let ((_hd1452614548_ (##car _e1452514545_))
                                    (_tl1452714550_ (##cdr _e1452514545_)))
                                (let* ((_rator14553_ _hd1452614548_)
                                       (_args14555_ _tl1452714550_))
                                  (if '#t
                                      (cons* '%#call
                                             (gx#core-compile-top-syntax
                                              _rator14553_)
                                             (gx#stx-map1
                                              gx#core-compile-top-syntax
                                              _args14555_))
                                      (_E1452114533_)))))
                            (_E1452114533_))))
                    (_E1452114533_)))))
        (_E1452014557_))))
  (define gx#core-compile-top-if%
    (lambda (_stx14451_)
      (let* ((_e1445214468_ _stx14451_)
             (_E1445414472_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1445214468_)))
             (_E1445314514_
              (lambda ()
                (if (gx#stx-pair? _e1445214468_)
                    (let ((_e1445514476_ (gx#syntax-e _e1445214468_)))
                      (let ((_hd1445614479_ (##car _e1445514476_))
                            (_tl1445714481_ (##cdr _e1445514476_)))
                        (if (gx#stx-pair? _tl1445714481_)
                            (let ((_e1445814484_ (gx#syntax-e _tl1445714481_)))
                              (let ((_hd1445914487_ (##car _e1445814484_))
                                    (_tl1446014489_ (##cdr _e1445814484_)))
                                (let ((_test14492_ _hd1445914487_))
                                  (if (gx#stx-pair? _tl1446014489_)
                                      (let ((_e1446114494_
                                             (gx#syntax-e _tl1446014489_)))
                                        (let ((_hd1446214497_
                                               (##car _e1446114494_))
                                              (_tl1446314499_
                                               (##cdr _e1446114494_)))
                                          (let ((_K14502_ _hd1446214497_))
                                            (if (gx#stx-pair? _tl1446314499_)
                                                (let ((_e1446414504_
                                                       (gx#syntax-e
                                                        _tl1446314499_)))
                                                  (let ((_hd1446514507_
                                                         (##car _e1446414504_))
                                                        (_tl1446614509_
                                                         (##cdr _e1446414504_)))
                                                    (let ((_E14512_
                                                           _hd1446514507_))
                                                      (if (gx#stx-null?
                                                           _tl1446614509_)
                                                          (if '#t
                                                              (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gx#core-compile-top-syntax _test14492_)
                                  (cons (gx#core-compile-top-syntax _K14502_)
                                        (cons (gx#core-compile-top-syntax
                                               _E14512_)
                                              '()))))
                      (_E1445414472_))
                  (_E1445414472_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1445414472_)))))
                                      (_E1445414472_)))))
                            (_E1445414472_))))
                    (_E1445414472_)))))
        (_E1445314514_))))
  (define gx#core-compile-top-ref%
    (lambda (_stx14410_)
      (let* ((_e1441114421_ _stx14410_)
             (_E1441314425_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1441114421_)))
             (_E1441214447_
              (lambda ()
                (if (gx#stx-pair? _e1441114421_)
                    (let ((_e1441414429_ (gx#syntax-e _e1441114421_)))
                      (let ((_hd1441514432_ (##car _e1441414429_))
                            (_tl1441614434_ (##cdr _e1441414429_)))
                        (if (gx#stx-pair? _tl1441614434_)
                            (let ((_e1441714437_ (gx#syntax-e _tl1441614434_)))
                              (let ((_hd1441814440_ (##car _e1441714437_))
                                    (_tl1441914442_ (##cdr _e1441714437_)))
                                (let ((_id14445_ _hd1441814440_))
                                  (if (gx#stx-null? _tl1441914442_)
                                      (if (gx#identifier? _id14445_)
                                          (cons '%#ref
                                                (cons (gx#core-compile-top-runtime-ref
                                                       _id14445_)
                                                      '()))
                                          (_E1441314425_))
                                      (_E1441314425_)))))
                            (_E1441314425_))))
                    (_E1441314425_)))))
        (_E1441214447_))))
  (define gx#core-compile-top-setq%
    (lambda (_stx14356_)
      (let* ((_e1435714370_ _stx14356_)
             (_E1435914374_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1435714370_)))
             (_E1435814406_
              (lambda ()
                (if (gx#stx-pair? _e1435714370_)
                    (let ((_e1436014378_ (gx#syntax-e _e1435714370_)))
                      (let ((_hd1436114381_ (##car _e1436014378_))
                            (_tl1436214383_ (##cdr _e1436014378_)))
                        (if (gx#stx-pair? _tl1436214383_)
                            (let ((_e1436314386_ (gx#syntax-e _tl1436214383_)))
                              (let ((_hd1436414389_ (##car _e1436314386_))
                                    (_tl1436514391_ (##cdr _e1436314386_)))
                                (let ((_id14394_ _hd1436414389_))
                                  (if (gx#stx-pair? _tl1436514391_)
                                      (let ((_e1436614396_
                                             (gx#syntax-e _tl1436514391_)))
                                        (let ((_hd1436714399_
                                               (##car _e1436614396_))
                                              (_tl1436814401_
                                               (##cdr _e1436614396_)))
                                          (let ((_expr14404_ _hd1436714399_))
                                            (if (gx#stx-null? _tl1436814401_)
                                                (if (gx#identifier? _id14394_)
                                                    (cons '%#set!
                                                          (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _id14394_)
                        (cons (gx#core-compile-top-syntax _expr14404_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1435914374_))
                                                (_E1435914374_)))))
                                      (_E1435914374_)))))
                            (_E1435914374_))))
                    (_E1435914374_)))))
        (_E1435814406_))))
  (define gx#core-compile-top-runtime-ref
    (lambda (_id14351_)
      (let ((_$e14353_ (gx#resolve-identifier__0 _id14351_)))
        (if _$e14353_
            (##structure-ref _$e14353_ '1 gx#binding::t '#f)
            _id14351_))))
  (define gx#core-compile-top-runtime-bind
    (lambda (_hd14349_)
      (if (gx#identifier? _hd14349_)
          (gx#core-compile-top-runtime-ref _hd14349_)
          '#f))))
