(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-compile-top-syntax
    (lambda (_stx15422_)
      (let* ((_e1542315430_ _stx15422_)
             (_E1542515434_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1542315430_)))
             (_E1542415448_
              (lambda ()
                (if (gx#stx-pair? _e1542315430_)
                    (let ((_e1542615438_ (gx#syntax-e _e1542315430_)))
                      (let ((_hd1542715441_ (##car _e1542615438_))
                            (_tl1542815443_ (##cdr _e1542615438_)))
                        (let ((_form15446_ _hd1542715441_))
                          (if '#t
                              (call-method
                               (gx#syntax-local-e__0 _form15446_)
                               'compile-top-syntax
                               _stx15422_)
                              (_E1542515434_)))))
                    (_E1542515434_)))))
        (_E1542415448_))))
  (define gx#core-expander::compile-top-syntax
    (lambda (_self15382_ _stx15383_)
      (let* ((_self1538415392_ _self15382_)
             (_E1538615396_
              (lambda () (error '"No clause matching" _self1538415392_)))
             (_K1538715408_
              (lambda (_K15399_)
                (let ((_$e15401_ (gx#stx-source _stx15383_)))
                  (if _$e15401_
                      ((lambda (_g1540315405_)
                         (gx#stx-wrap-source
                          (_K15399_ _stx15383_)
                          _g1540315405_))
                       _$e15401_)
                      (_K15399_ _stx15383_))))))
        (if (##structure-instance-of?
             _self1538415392_
             (##type-id gx#core-expander::t))
            (let* ((_e1538815411_ (##vector-ref _self1538415392_ '1))
                   (_e1538915414_ (##vector-ref _self1538415392_ '2))
                   (_e1539015417_ (##vector-ref _self1538415392_ '3))
                   (_K15420_ _e1539015417_))
              (_K1538715408_ _K15420_))
            (_E1538615396_)))))
  (bind-method!
   gx#core-expander::t
   'compile-top-syntax
   gx#core-expander::compile-top-syntax
   '#f)
  (define gx#core-compile-top-error
    (lambda (_stx15256_)
      (gx#raise-syntax-error 'compile '"Cannot compile form" _stx15256_)))
  (define gx#core-compile-top-begin%
    (lambda (_stx15226_)
      (let* ((_e1522715234_ _stx15226_)
             (_E1522915238_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1522715234_)))
             (_E1522815252_
              (lambda ()
                (if (gx#stx-pair? _e1522715234_)
                    (let ((_e1523015242_ (gx#syntax-e _e1522715234_)))
                      (let ((_hd1523115245_ (##car _e1523015242_))
                            (_tl1523215247_ (##cdr _e1523015242_)))
                        (let ((_body15250_ _tl1523215247_))
                          (if '#t
                              (cons '%#begin
                                    (gx#stx-map1
                                     gx#core-compile-top-syntax
                                     _body15250_))
                              (_E1522915238_)))))
                    (_E1522915238_)))))
        (_E1522815252_))))
  (define gx#core-compile-top-begin-syntax%
    (lambda (_stx15195_)
      (let* ((_e1519615203_ _stx15195_)
             (_E1519815207_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1519615203_)))
             (_E1519715222_
              (lambda ()
                (if (gx#stx-pair? _e1519615203_)
                    (let ((_e1519915211_ (gx#syntax-e _e1519615203_)))
                      (let ((_hd1520015214_ (##car _e1519915211_))
                            (_tl1520115216_ (##cdr _e1519915211_)))
                        (let ((_body15219_ _tl1520115216_))
                          (if '#t
                              (cons '%#begin-syntax
                                    (call-with-parameters
                                     (lambda ()
                                       (gx#stx-map1
                                        gx#core-compile-top-syntax
                                        _body15219_))
                                     gx#current-expander-phi
                                     (fx+ (gx#current-expander-phi) '1)))
                              (_E1519815207_)))))
                    (_E1519815207_)))))
        (_E1519715222_))))
  (define gx#core-compile-top-begin-foreign%
    (lambda (_stx15165_)
      (let* ((_e1516615173_ _stx15165_)
             (_E1516815177_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1516615173_)))
             (_E1516715191_
              (lambda ()
                (if (gx#stx-pair? _e1516615173_)
                    (let ((_e1516915181_ (gx#syntax-e _e1516615173_)))
                      (let ((_hd1517015184_ (##car _e1516915181_))
                            (_tl1517115186_ (##cdr _e1516915181_)))
                        (let ((_body15189_ _tl1517115186_))
                          (if '#t
                              (cons '%#begin-foreign _body15189_)
                              (_E1516815177_)))))
                    (_E1516815177_)))))
        (_E1516715191_))))
  (define gx#core-compile-top-begin-annotation%
    (lambda (_stx15111_)
      (let* ((_e1511215125_ _stx15111_)
             (_E1511415129_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1511215125_)))
             (_E1511315161_
              (lambda ()
                (if (gx#stx-pair? _e1511215125_)
                    (let ((_e1511515133_ (gx#syntax-e _e1511215125_)))
                      (let ((_hd1511615136_ (##car _e1511515133_))
                            (_tl1511715138_ (##cdr _e1511515133_)))
                        (if (gx#stx-pair? _tl1511715138_)
                            (let ((_e1511815141_ (gx#syntax-e _tl1511715138_)))
                              (let ((_hd1511915144_ (##car _e1511815141_))
                                    (_tl1512015146_ (##cdr _e1511815141_)))
                                (let ((_ann15149_ _hd1511915144_))
                                  (if (gx#stx-pair? _tl1512015146_)
                                      (let ((_e1512115151_
                                             (gx#syntax-e _tl1512015146_)))
                                        (let ((_hd1512215154_
                                               (##car _e1512115151_))
                                              (_tl1512315156_
                                               (##cdr _e1512115151_)))
                                          (let ((_expr15159_ _hd1512215154_))
                                            (if (gx#stx-null? _tl1512315156_)
                                                (if '#t
                                                    (gx#core-compile-top-syntax
                                                     _expr15159_)
                                                    (_E1511415129_))
                                                (_E1511415129_)))))
                                      (_E1511415129_)))))
                            (_E1511415129_))))
                    (_E1511415129_)))))
        (_E1511315161_))))
  (define gx#core-compile-top-import%
    (lambda (_stx15081_)
      (let* ((_e1508215089_ _stx15081_)
             (_E1508415093_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1508215089_)))
             (_E1508315107_
              (lambda ()
                (if (gx#stx-pair? _e1508215089_)
                    (let ((_e1508515097_ (gx#syntax-e _e1508215089_)))
                      (let ((_hd1508615100_ (##car _e1508515097_))
                            (_tl1508715102_ (##cdr _e1508515097_)))
                        (let ((_body15105_ _tl1508715102_))
                          (if '#t
                              (cons '%#import (gx#syntax->list _body15105_))
                              (_E1508415093_)))))
                    (_E1508415093_)))))
        (_E1508315107_))))
  (define gx#core-compile-top-module%
    (lambda (_stx15038_)
      (let* ((_e1503915049_ _stx15038_)
             (_E1504115053_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1503915049_)))
             (_E1504015077_
              (lambda ()
                (if (gx#stx-pair? _e1503915049_)
                    (let ((_e1504215057_ (gx#syntax-e _e1503915049_)))
                      (let ((_hd1504315060_ (##car _e1504215057_))
                            (_tl1504415062_ (##cdr _e1504215057_)))
                        (if (gx#stx-pair? _tl1504415062_)
                            (let ((_e1504515065_ (gx#syntax-e _tl1504415062_)))
                              (let ((_hd1504615068_ (##car _e1504515065_))
                                    (_tl1504715070_ (##cdr _e1504515065_)))
                                (let* ((_hd15073_ _hd1504615068_)
                                       (_body15075_ _tl1504715070_))
                                  (if '#t
                                      (cons* '%#module
                                             (##structure-ref
                                              (gx#syntax-local-e__0 _hd15073_)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             (gx#stx-map1
                                              gx#core-compile-top-syntax
                                              _body15075_))
                                      (_E1504115053_)))))
                            (_E1504115053_))))
                    (_E1504115053_)))))
        (_E1504015077_))))
  (define gx#core-compile-top-export%
    (lambda (_stx15008_)
      (let* ((_e1500915016_ _stx15008_)
             (_E1501115020_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1500915016_)))
             (_E1501015034_
              (lambda ()
                (if (gx#stx-pair? _e1500915016_)
                    (let ((_e1501215024_ (gx#syntax-e _e1500915016_)))
                      (let ((_hd1501315027_ (##car _e1501215024_))
                            (_tl1501415029_ (##cdr _e1501215024_)))
                        (let ((_body15032_ _tl1501415029_))
                          (if '#t
                              (cons '%#export (gx#syntax->list _body15032_))
                              (_E1501115020_)))))
                    (_E1501115020_)))))
        (_E1501015034_))))
  (define gx#core-compile-top-provide%
    (lambda (_stx14978_)
      (let* ((_e1497914986_ _stx14978_)
             (_E1498114990_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1497914986_)))
             (_E1498015004_
              (lambda ()
                (if (gx#stx-pair? _e1497914986_)
                    (let ((_e1498214994_ (gx#syntax-e _e1497914986_)))
                      (let ((_hd1498314997_ (##car _e1498214994_))
                            (_tl1498414999_ (##cdr _e1498214994_)))
                        (let ((_body15002_ _tl1498414999_))
                          (if '#t
                              (cons '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body15002_))
                              (_E1498114990_)))))
                    (_E1498114990_)))))
        (_E1498015004_))))
  (define gx#core-compile-top-extern%
    (lambda (_stx14903_)
      (letrec ((_generate14905_
                (lambda (_hd14935_)
                  (let* ((_e1493614946_ _hd14935_)
                         (_E1493814950_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e1493614946_)))
                         (_E1493714974_
                          (lambda ()
                            (if (gx#stx-pair? _e1493614946_)
                                (let ((_e1493914954_
                                       (gx#syntax-e _e1493614946_)))
                                  (let ((_hd1494014957_ (##car _e1493914954_))
                                        (_tl1494114959_ (##cdr _e1493914954_)))
                                    (let ((_id14962_ _hd1494014957_))
                                      (if (gx#stx-pair? _tl1494114959_)
                                          (let ((_e1494214964_
                                                 (gx#syntax-e _tl1494114959_)))
                                            (let ((_hd1494314967_
                                                   (##car _e1494214964_))
                                                  (_tl1494414969_
                                                   (##cdr _e1494214964_)))
                                              (let ((_eid14972_
                                                     _hd1494314967_))
                                                (if (gx#stx-null?
                                                     _tl1494414969_)
                                                    (if '#t
                                                        (cons (gx#core-quote-syntax__0
                                                               _id14962_)
                                                              (cons (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _eid14972_)
                            '()))
                (_E1493814950_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1493814950_)))))
                                          (_E1493814950_)))))
                                (_E1493814950_)))))
                    (_E1493714974_)))))
        (let* ((_e1490614913_ _stx14903_)
               (_E1490814917_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1490614913_)))
               (_E1490714931_
                (lambda ()
                  (if (gx#stx-pair? _e1490614913_)
                      (let ((_e1490914921_ (gx#syntax-e _e1490614913_)))
                        (let ((_hd1491014924_ (##car _e1490914921_))
                              (_tl1491114926_ (##cdr _e1490914921_)))
                          (let ((_body14929_ _tl1491114926_))
                            (if '#t
                                (cons '%#extern
                                      (gx#stx-map1
                                       _generate14905_
                                       _body14929_))
                                (_E1490814917_)))))
                      (_E1490814917_)))))
          (_E1490714931_)))))
  (define gx#core-compile-top-define-values%
    (lambda (_stx14849_)
      (let* ((_e1485014863_ _stx14849_)
             (_E1485214867_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1485014863_)))
             (_E1485114899_
              (lambda ()
                (if (gx#stx-pair? _e1485014863_)
                    (let ((_e1485314871_ (gx#syntax-e _e1485014863_)))
                      (let ((_hd1485414874_ (##car _e1485314871_))
                            (_tl1485514876_ (##cdr _e1485314871_)))
                        (if (gx#stx-pair? _tl1485514876_)
                            (let ((_e1485614879_ (gx#syntax-e _tl1485514876_)))
                              (let ((_hd1485714882_ (##car _e1485614879_))
                                    (_tl1485814884_ (##cdr _e1485614879_)))
                                (let ((_hd14887_ _hd1485714882_))
                                  (if (gx#stx-pair? _tl1485814884_)
                                      (let ((_e1485914889_
                                             (gx#syntax-e _tl1485814884_)))
                                        (let ((_hd1486014892_
                                               (##car _e1485914889_))
                                              (_tl1486114894_
                                               (##cdr _e1485914889_)))
                                          (let ((_expr14897_ _hd1486014892_))
                                            (if (gx#stx-null? _tl1486114894_)
                                                (if '#t
                                                    (cons '%#define-values
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#core-compile-top-runtime-bind
                         _hd14887_)
                        (cons (gx#core-compile-top-syntax _expr14897_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1485214867_))
                                                (_E1485214867_)))))
                                      (_E1485214867_)))))
                            (_E1485214867_))))
                    (_E1485214867_)))))
        (_E1485114899_))))
  (define gx#core-compile-top-define-syntax%
    (lambda (_stx14794_)
      (let* ((_e1479514808_ _stx14794_)
             (_E1479714812_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1479514808_)))
             (_E1479614845_
              (lambda ()
                (if (gx#stx-pair? _e1479514808_)
                    (let ((_e1479814816_ (gx#syntax-e _e1479514808_)))
                      (let ((_hd1479914819_ (##car _e1479814816_))
                            (_tl1480014821_ (##cdr _e1479814816_)))
                        (if (gx#stx-pair? _tl1480014821_)
                            (let ((_e1480114824_ (gx#syntax-e _tl1480014821_)))
                              (let ((_hd1480214827_ (##car _e1480114824_))
                                    (_tl1480314829_ (##cdr _e1480114824_)))
                                (let ((_hd14832_ _hd1480214827_))
                                  (if (gx#stx-pair? _tl1480314829_)
                                      (let ((_e1480414834_
                                             (gx#syntax-e _tl1480314829_)))
                                        (let ((_hd1480514837_
                                               (##car _e1480414834_))
                                              (_tl1480614839_
                                               (##cdr _e1480414834_)))
                                          (let ((_expr14842_ _hd1480514837_))
                                            (if (gx#stx-null? _tl1480614839_)
                                                (if '#t
                                                    (cons '%#define-syntax
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd14832_)
                        (cons (call-with-parameters
                               (lambda ()
                                 (gx#core-compile-top-syntax _expr14842_))
                               gx#current-expander-phi
                               (fx+ (gx#current-expander-phi) '1))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1479714812_))
                                                (_E1479714812_)))))
                                      (_E1479714812_)))))
                            (_E1479714812_))))
                    (_E1479714812_)))))
        (_E1479614845_))))
  (define gx#core-compile-top-define-alias%
    (lambda (_stx14740_)
      (let* ((_e1474114754_ _stx14740_)
             (_E1474314758_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1474114754_)))
             (_E1474214790_
              (lambda ()
                (if (gx#stx-pair? _e1474114754_)
                    (let ((_e1474414762_ (gx#syntax-e _e1474114754_)))
                      (let ((_hd1474514765_ (##car _e1474414762_))
                            (_tl1474614767_ (##cdr _e1474414762_)))
                        (if (gx#stx-pair? _tl1474614767_)
                            (let ((_e1474714770_ (gx#syntax-e _tl1474614767_)))
                              (let ((_hd1474814773_ (##car _e1474714770_))
                                    (_tl1474914775_ (##cdr _e1474714770_)))
                                (let ((_hd14778_ _hd1474814773_))
                                  (if (gx#stx-pair? _tl1474914775_)
                                      (let ((_e1475014780_
                                             (gx#syntax-e _tl1474914775_)))
                                        (let ((_hd1475114783_
                                               (##car _e1475014780_))
                                              (_tl1475214785_
                                               (##cdr _e1475014780_)))
                                          (let ((_alias-id14788_
                                                 _hd1475114783_))
                                            (if (gx#stx-null? _tl1475214785_)
                                                (if '#t
                                                    (cons '%#define-alias
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd14778_)
                        (cons (gx#core-quote-syntax__0 _alias-id14788_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1474314758_))
                                                (_E1474314758_)))))
                                      (_E1474314758_)))))
                            (_E1474314758_))))
                    (_E1474314758_)))))
        (_E1474214790_))))
  (define gx#core-compile-top-define-runtime%
    (lambda (_stx14686_)
      (let* ((_e1468714700_ _stx14686_)
             (_E1468914704_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1468714700_)))
             (_E1468814736_
              (lambda ()
                (if (gx#stx-pair? _e1468714700_)
                    (let ((_e1469014708_ (gx#syntax-e _e1468714700_)))
                      (let ((_hd1469114711_ (##car _e1469014708_))
                            (_tl1469214713_ (##cdr _e1469014708_)))
                        (if (gx#stx-pair? _tl1469214713_)
                            (let ((_e1469314716_ (gx#syntax-e _tl1469214713_)))
                              (let ((_hd1469414719_ (##car _e1469314716_))
                                    (_tl1469514721_ (##cdr _e1469314716_)))
                                (let ((_id14724_ _hd1469414719_))
                                  (if (gx#stx-pair? _tl1469514721_)
                                      (let ((_e1469614726_
                                             (gx#syntax-e _tl1469514721_)))
                                        (let ((_hd1469714729_
                                               (##car _e1469614726_))
                                              (_tl1469814731_
                                               (##cdr _e1469614726_)))
                                          (let ((_binding-id14734_
                                                 _hd1469714729_))
                                            (if (gx#stx-null? _tl1469814731_)
                                                (if '#t
                                                    (cons '%#define-runtime
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _id14724_)
                        (cons (gx#core-quote-syntax__0 _binding-id14734_)
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1468914704_))
                                                (_E1468914704_)))))
                                      (_E1468914704_)))))
                            (_E1468914704_))))
                    (_E1468914704_)))))
        (_E1468814736_))))
  (define gx#core-compile-top-declare%
    (lambda (_stx14656_)
      (let* ((_e1465714664_ _stx14656_)
             (_E1465914668_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1465714664_)))
             (_E1465814682_
              (lambda ()
                (if (gx#stx-pair? _e1465714664_)
                    (let ((_e1466014672_ (gx#syntax-e _e1465714664_)))
                      (let ((_hd1466114675_ (##car _e1466014672_))
                            (_tl1466214677_ (##cdr _e1466014672_)))
                        (let ((_decls14680_ _tl1466214677_))
                          (if '#t
                              (cons '%#declare _decls14680_)
                              (_E1465914668_)))))
                    (_E1465914668_)))))
        (_E1465814682_))))
  (define gx#core-compile-top-lambda%
    (lambda (_stx14626_)
      (let* ((_e1462714634_ _stx14626_)
             (_E1462914638_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1462714634_)))
             (_E1462814652_
              (lambda ()
                (if (gx#stx-pair? _e1462714634_)
                    (let ((_e1463014642_ (gx#syntax-e _e1462714634_)))
                      (let ((_hd1463114645_ (##car _e1463014642_))
                            (_tl1463214647_ (##cdr _e1463014642_)))
                        (let ((_clause14650_ _tl1463214647_))
                          (if '#t
                              (cons '%#lambda
                                    (gx#core-compile-top-lambda-clause
                                     _clause14650_))
                              (_E1462914638_)))))
                    (_E1462914638_)))))
        (_E1462814652_))))
  (define gx#core-compile-top-lambda-clause
    (lambda (_stx14583_)
      (let* ((_e1458414594_ _stx14583_)
             (_E1458614598_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1458414594_)))
             (_E1458514622_
              (lambda ()
                (if (gx#stx-pair? _e1458414594_)
                    (let ((_e1458714602_ (gx#syntax-e _e1458414594_)))
                      (let ((_hd1458814605_ (##car _e1458714602_))
                            (_tl1458914607_ (##cdr _e1458714602_)))
                        (let ((_hd14610_ _hd1458814605_))
                          (if (gx#stx-pair? _tl1458914607_)
                              (let ((_e1459014612_
                                     (gx#syntax-e _tl1458914607_)))
                                (let ((_hd1459114615_ (##car _e1459014612_))
                                      (_tl1459214617_ (##cdr _e1459014612_)))
                                  (let ((_body14620_ _hd1459114615_))
                                    (if (gx#stx-null? _tl1459214617_)
                                        (if '#t
                                            (cons (gx#stx-map1
                                                   gx#core-compile-top-runtime-bind
                                                   _hd14610_)
                                                  (cons (gx#core-compile-top-syntax
                                                         _body14620_)
                                                        '()))
                                            (_E1458614598_))
                                        (_E1458614598_)))))
                              (_E1458614598_)))))
                    (_E1458614598_)))))
        (_E1458514622_))))
  (define gx#core-compile-top-case-lambda%
    (lambda (_stx14553_)
      (let* ((_e1455414561_ _stx14553_)
             (_E1455614565_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1455414561_)))
             (_E1455514579_
              (lambda ()
                (if (gx#stx-pair? _e1455414561_)
                    (let ((_e1455714569_ (gx#syntax-e _e1455414561_)))
                      (let ((_hd1455814572_ (##car _e1455714569_))
                            (_tl1455914574_ (##cdr _e1455714569_)))
                        (let ((_clauses14577_ _tl1455914574_))
                          (if '#t
                              (cons '%#case-lambda
                                    (gx#stx-map1
                                     gx#core-compile-top-lambda-clause
                                     _clauses14577_))
                              (_E1455614565_)))))
                    (_E1455614565_)))))
        (_E1455514579_))))
  (begin
    (define gx#core-compile-top-let-values%__opt-lambda14486
      (lambda (_stx14488_ _form14489_)
        (let* ((_e1449014503_ _stx14488_)
               (_E1449214507_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1449014503_)))
               (_E1449114539_
                (lambda ()
                  (if (gx#stx-pair? _e1449014503_)
                      (let ((_e1449314511_ (gx#syntax-e _e1449014503_)))
                        (let ((_hd1449414514_ (##car _e1449314511_))
                              (_tl1449514516_ (##cdr _e1449314511_)))
                          (if (gx#stx-pair? _tl1449514516_)
                              (let ((_e1449614519_
                                     (gx#syntax-e _tl1449514516_)))
                                (let ((_hd1449714522_ (##car _e1449614519_))
                                      (_tl1449814524_ (##cdr _e1449614519_)))
                                  (let ((_hd14527_ _hd1449714522_))
                                    (if (gx#stx-pair? _tl1449814524_)
                                        (let ((_e1449914529_
                                               (gx#syntax-e _tl1449814524_)))
                                          (let ((_hd1450014532_
                                                 (##car _e1449914529_))
                                                (_tl1450114534_
                                                 (##cdr _e1449914529_)))
                                            (let ((_body14537_ _hd1450014532_))
                                              (if (gx#stx-null? _tl1450114534_)
                                                  (if '#t
                                                      (cons _form14489_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd14527_)
                          (cons (gx#core-compile-top-syntax _body14537_) '())))
              (_E1449214507_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1449214507_)))))
                                        (_E1449214507_)))))
                              (_E1449214507_))))
                      (_E1449214507_)))))
          (_E1449114539_))))
    (begin
      (define gx#core-compile-top-let-values%__0
        (lambda (_stx14546_)
          (let ((_form14548_ '%#let-values))
            (gx#core-compile-top-let-values%__opt-lambda14486
             _stx14546_
             _form14548_))))
      (define gx#core-compile-top-let-values%
        (lambda _g15452_
          (let ((_g15451_ (length _g15452_)))
            (cond ((fx= _g15451_ 1)
                   (apply gx#core-compile-top-let-values%__0 _g15452_))
                  ((fx= _g15451_ 2)
                   (apply gx#core-compile-top-let-values%__opt-lambda14486
                          _g15452_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-compile-top-let-values%
                    _g15452_))))))))
  (define gx#core-compile-top-letrec-values%
    (lambda (_stx14485_)
      (gx#core-compile-top-let-values%__opt-lambda14486
       _stx14485_
       '%#letrec-values)))
  (define gx#core-compile-top-letrec*-values%
    (lambda (_stx14483_)
      (gx#core-compile-top-let-values%__opt-lambda14486
       _stx14483_
       '%#letrec*-values)))
  (define gx#core-compile-top-quote%
    (lambda (_stx14442_)
      (let* ((_e1444314453_ _stx14442_)
             (_E1444514457_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1444314453_)))
             (_E1444414479_
              (lambda ()
                (if (gx#stx-pair? _e1444314453_)
                    (let ((_e1444614461_ (gx#syntax-e _e1444314453_)))
                      (let ((_hd1444714464_ (##car _e1444614461_))
                            (_tl1444814466_ (##cdr _e1444614461_)))
                        (if (gx#stx-pair? _tl1444814466_)
                            (let ((_e1444914469_ (gx#syntax-e _tl1444814466_)))
                              (let ((_hd1445014472_ (##car _e1444914469_))
                                    (_tl1445114474_ (##cdr _e1444914469_)))
                                (let ((_e14477_ _hd1445014472_))
                                  (if (gx#stx-null? _tl1445114474_)
                                      (if '#t
                                          (cons '%#quote
                                                (cons (gx#syntax->datum
                                                       _e14477_)
                                                      '()))
                                          (_E1444514457_))
                                      (_E1444514457_)))))
                            (_E1444514457_))))
                    (_E1444514457_)))))
        (_E1444414479_))))
  (define gx#core-compile-top-quote-syntax%
    (lambda (_stx14401_)
      (let* ((_e1440214412_ _stx14401_)
             (_E1440414416_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1440214412_)))
             (_E1440314438_
              (lambda ()
                (if (gx#stx-pair? _e1440214412_)
                    (let ((_e1440514420_ (gx#syntax-e _e1440214412_)))
                      (let ((_hd1440614423_ (##car _e1440514420_))
                            (_tl1440714425_ (##cdr _e1440514420_)))
                        (if (gx#stx-pair? _tl1440714425_)
                            (let ((_e1440814428_ (gx#syntax-e _tl1440714425_)))
                              (let ((_hd1440914431_ (##car _e1440814428_))
                                    (_tl1441014433_ (##cdr _e1440814428_)))
                                (let ((_e14436_ _hd1440914431_))
                                  (if (gx#stx-null? _tl1441014433_)
                                      (if '#t
                                          (cons '%#quote-syntax
                                                (cons (gx#core-quote-syntax__0
                                                       _e14436_)
                                                      '()))
                                          (_E1440414416_))
                                      (_E1440414416_)))))
                            (_E1440414416_))))
                    (_E1440414416_)))))
        (_E1440314438_))))
  (define gx#core-compile-top-call%
    (lambda (_stx14358_)
      (let* ((_e1435914369_ _stx14358_)
             (_E1436114373_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1435914369_)))
             (_E1436014397_
              (lambda ()
                (if (gx#stx-pair? _e1435914369_)
                    (let ((_e1436214377_ (gx#syntax-e _e1435914369_)))
                      (let ((_hd1436314380_ (##car _e1436214377_))
                            (_tl1436414382_ (##cdr _e1436214377_)))
                        (if (gx#stx-pair? _tl1436414382_)
                            (let ((_e1436514385_ (gx#syntax-e _tl1436414382_)))
                              (let ((_hd1436614388_ (##car _e1436514385_))
                                    (_tl1436714390_ (##cdr _e1436514385_)))
                                (let* ((_rator14393_ _hd1436614388_)
                                       (_args14395_ _tl1436714390_))
                                  (if '#t
                                      (cons* '%#call
                                             (gx#core-compile-top-syntax
                                              _rator14393_)
                                             (gx#stx-map1
                                              gx#core-compile-top-syntax
                                              _args14395_))
                                      (_E1436114373_)))))
                            (_E1436114373_))))
                    (_E1436114373_)))))
        (_E1436014397_))))
  (define gx#core-compile-top-if%
    (lambda (_stx14291_)
      (let* ((_e1429214308_ _stx14291_)
             (_E1429414312_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1429214308_)))
             (_E1429314354_
              (lambda ()
                (if (gx#stx-pair? _e1429214308_)
                    (let ((_e1429514316_ (gx#syntax-e _e1429214308_)))
                      (let ((_hd1429614319_ (##car _e1429514316_))
                            (_tl1429714321_ (##cdr _e1429514316_)))
                        (if (gx#stx-pair? _tl1429714321_)
                            (let ((_e1429814324_ (gx#syntax-e _tl1429714321_)))
                              (let ((_hd1429914327_ (##car _e1429814324_))
                                    (_tl1430014329_ (##cdr _e1429814324_)))
                                (let ((_test14332_ _hd1429914327_))
                                  (if (gx#stx-pair? _tl1430014329_)
                                      (let ((_e1430114334_
                                             (gx#syntax-e _tl1430014329_)))
                                        (let ((_hd1430214337_
                                               (##car _e1430114334_))
                                              (_tl1430314339_
                                               (##cdr _e1430114334_)))
                                          (let ((_K14342_ _hd1430214337_))
                                            (if (gx#stx-pair? _tl1430314339_)
                                                (let ((_e1430414344_
                                                       (gx#syntax-e
                                                        _tl1430314339_)))
                                                  (let ((_hd1430514347_
                                                         (##car _e1430414344_))
                                                        (_tl1430614349_
                                                         (##cdr _e1430414344_)))
                                                    (let ((_E14352_
                                                           _hd1430514347_))
                                                      (if (gx#stx-null?
                                                           _tl1430614349_)
                                                          (if '#t
                                                              (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gx#core-compile-top-syntax _test14332_)
                                  (cons (gx#core-compile-top-syntax _K14342_)
                                        (cons (gx#core-compile-top-syntax
                                               _E14352_)
                                              '()))))
                      (_E1429414312_))
                  (_E1429414312_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1429414312_)))))
                                      (_E1429414312_)))))
                            (_E1429414312_))))
                    (_E1429414312_)))))
        (_E1429314354_))))
  (define gx#core-compile-top-ref%
    (lambda (_stx14250_)
      (let* ((_e1425114261_ _stx14250_)
             (_E1425314265_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1425114261_)))
             (_E1425214287_
              (lambda ()
                (if (gx#stx-pair? _e1425114261_)
                    (let ((_e1425414269_ (gx#syntax-e _e1425114261_)))
                      (let ((_hd1425514272_ (##car _e1425414269_))
                            (_tl1425614274_ (##cdr _e1425414269_)))
                        (if (gx#stx-pair? _tl1425614274_)
                            (let ((_e1425714277_ (gx#syntax-e _tl1425614274_)))
                              (let ((_hd1425814280_ (##car _e1425714277_))
                                    (_tl1425914282_ (##cdr _e1425714277_)))
                                (let ((_id14285_ _hd1425814280_))
                                  (if (gx#stx-null? _tl1425914282_)
                                      (if (gx#identifier? _id14285_)
                                          (cons '%#ref
                                                (cons (gx#core-compile-top-runtime-ref
                                                       _id14285_)
                                                      '()))
                                          (_E1425314265_))
                                      (_E1425314265_)))))
                            (_E1425314265_))))
                    (_E1425314265_)))))
        (_E1425214287_))))
  (define gx#core-compile-top-setq%
    (lambda (_stx14196_)
      (let* ((_e1419714210_ _stx14196_)
             (_E1419914214_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1419714210_)))
             (_E1419814246_
              (lambda ()
                (if (gx#stx-pair? _e1419714210_)
                    (let ((_e1420014218_ (gx#syntax-e _e1419714210_)))
                      (let ((_hd1420114221_ (##car _e1420014218_))
                            (_tl1420214223_ (##cdr _e1420014218_)))
                        (if (gx#stx-pair? _tl1420214223_)
                            (let ((_e1420314226_ (gx#syntax-e _tl1420214223_)))
                              (let ((_hd1420414229_ (##car _e1420314226_))
                                    (_tl1420514231_ (##cdr _e1420314226_)))
                                (let ((_id14234_ _hd1420414229_))
                                  (if (gx#stx-pair? _tl1420514231_)
                                      (let ((_e1420614236_
                                             (gx#syntax-e _tl1420514231_)))
                                        (let ((_hd1420714239_
                                               (##car _e1420614236_))
                                              (_tl1420814241_
                                               (##cdr _e1420614236_)))
                                          (let ((_expr14244_ _hd1420714239_))
                                            (if (gx#stx-null? _tl1420814241_)
                                                (if (gx#identifier? _id14234_)
                                                    (cons '%#set!
                                                          (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _id14234_)
                        (cons (gx#core-compile-top-syntax _expr14244_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1419914214_))
                                                (_E1419914214_)))))
                                      (_E1419914214_)))))
                            (_E1419914214_))))
                    (_E1419914214_)))))
        (_E1419814246_))))
  (define gx#core-compile-top-runtime-ref
    (lambda (_id14191_)
      (let ((_$e14193_ (gx#resolve-identifier__0 _id14191_)))
        (if _$e14193_
            (##structure-ref _$e14193_ '1 gx#binding::t '#f)
            _id14191_))))
  (define gx#core-compile-top-runtime-bind
    (lambda (_hd14189_)
      (if (gx#identifier? _hd14189_)
          (gx#core-compile-top-runtime-ref _hd14189_)
          '#f))))
