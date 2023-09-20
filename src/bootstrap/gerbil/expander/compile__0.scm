(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1695199285)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx17291_)
        (let* ((_e1729217299_ _stx17291_)
               (_E1729417303_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1729217299_)))
               (_E1729317317_
                (lambda ()
                  (if (gx#stx-pair? _e1729217299_)
                      (let ((_e1729517307_ (gx#syntax-e _e1729217299_)))
                        (let ((_hd1729617310_ (##car _e1729517307_))
                              (_tl1729717312_ (##cdr _e1729517307_)))
                          (let ((_form17315_ _hd1729617310_))
                            (if '#t
                                (let* ((__self17320
                                        (gx#syntax-local-e__0 _form17315_))
                                       (__method17321
                                        (method-ref
                                         __self17320
                                         'compile-top-syntax)))
                                  (if __method17321
                                      (__method17321 __self17320 _stx17291_)
                                      (error '"Missing method"
                                             __self17320
                                             'compile-top-syntax)))
                                (_E1729417303_)))))
                      (_E1729417303_)))))
          (_E1729317317_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self17251_ _stx17252_)
        (let* ((_self1725317261_ _self17251_)
               (_E1725517265_
                (lambda () (error '"No clause matching" _self1725317261_)))
               (_K1725617277_
                (lambda (_K17268_)
                  (let ((_$e17270_ (gx#stx-source _stx17252_)))
                    (if _$e17270_
                        ((lambda (_g1727217274_)
                           (gx#stx-wrap-source
                            (_K17268_ _stx17252_)
                            _g1727217274_))
                         _$e17270_)
                        (_K17268_ _stx17252_))))))
          (if (##structure-instance-of? _self1725317261_ 'gx#core-expander::t)
              (let* ((_e1725717280_ (##vector-ref _self1725317261_ '1))
                     (_e1725817283_ (##vector-ref _self1725317261_ '2))
                     (_e1725917286_ (##vector-ref _self1725317261_ '3))
                     (_K17289_ _e1725917286_))
                (_K1725617277_ _K17289_))
              (_E1725517265_)))))
    (bind-method!
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx17125_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx17125_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx17095_)
        (let* ((_e1709617103_ _stx17095_)
               (_E1709817107_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1709617103_)))
               (_E1709717121_
                (lambda ()
                  (if (gx#stx-pair? _e1709617103_)
                      (let ((_e1709917111_ (gx#syntax-e _e1709617103_)))
                        (let ((_hd1710017114_ (##car _e1709917111_))
                              (_tl1710117116_ (##cdr _e1709917111_)))
                          (let ((_body17119_ _tl1710117116_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body17119_))
                                (_E1709817107_)))))
                      (_E1709817107_)))))
          (_E1709717121_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx17064_)
        (let* ((_e1706517072_ _stx17064_)
               (_E1706717076_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1706517072_)))
               (_E1706617091_
                (lambda ()
                  (if (gx#stx-pair? _e1706517072_)
                      (let ((_e1706817080_ (gx#syntax-e _e1706517072_)))
                        (let ((_hd1706917083_ (##car _e1706817080_))
                              (_tl1707017085_ (##cdr _e1706817080_)))
                          (let ((_body17088_ _tl1707017085_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body17088_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E1706717076_)))))
                      (_E1706717076_)))))
          (_E1706617091_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_stx17034_)
        (let* ((_e1703517042_ _stx17034_)
               (_E1703717046_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1703517042_)))
               (_E1703617060_
                (lambda ()
                  (if (gx#stx-pair? _e1703517042_)
                      (let ((_e1703817050_ (gx#syntax-e _e1703517042_)))
                        (let ((_hd1703917053_ (##car _e1703817050_))
                              (_tl1704017055_ (##cdr _e1703817050_)))
                          (let ((_body17058_ _tl1704017055_))
                            (if '#t
                                (cons '%#begin-foreign _body17058_)
                                (_E1703717046_)))))
                      (_E1703717046_)))))
          (_E1703617060_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_stx16980_)
        (let* ((_e1698116994_ _stx16980_)
               (_E1698316998_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1698116994_)))
               (_E1698217030_
                (lambda ()
                  (if (gx#stx-pair? _e1698116994_)
                      (let ((_e1698417002_ (gx#syntax-e _e1698116994_)))
                        (let ((_hd1698517005_ (##car _e1698417002_))
                              (_tl1698617007_ (##cdr _e1698417002_)))
                          (if (gx#stx-pair? _tl1698617007_)
                              (let ((_e1698717010_
                                     (gx#syntax-e _tl1698617007_)))
                                (let ((_hd1698817013_ (##car _e1698717010_))
                                      (_tl1698917015_ (##cdr _e1698717010_)))
                                  (let ((_ann17018_ _hd1698817013_))
                                    (if (gx#stx-pair? _tl1698917015_)
                                        (let ((_e1699017020_
                                               (gx#syntax-e _tl1698917015_)))
                                          (let ((_hd1699117023_
                                                 (##car _e1699017020_))
                                                (_tl1699217025_
                                                 (##cdr _e1699017020_)))
                                            (let ((_expr17028_ _hd1699117023_))
                                              (if (gx#stx-null? _tl1699217025_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr17028_)
                                                      (_E1698316998_))
                                                  (_E1698316998_)))))
                                        (_E1698316998_)))))
                              (_E1698316998_))))
                      (_E1698316998_)))))
          (_E1698217030_))))
    (define gx#core-compile-top-import%
      (lambda (_stx16950_)
        (let* ((_e1695116958_ _stx16950_)
               (_E1695316962_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1695116958_)))
               (_E1695216976_
                (lambda ()
                  (if (gx#stx-pair? _e1695116958_)
                      (let ((_e1695416966_ (gx#syntax-e _e1695116958_)))
                        (let ((_hd1695516969_ (##car _e1695416966_))
                              (_tl1695616971_ (##cdr _e1695416966_)))
                          (let ((_body16974_ _tl1695616971_))
                            (if '#t
                                (cons '%#import _body16974_)
                                (_E1695316962_)))))
                      (_E1695316962_)))))
          (_E1695216976_))))
    (define gx#core-compile-top-module%
      (lambda (_stx16907_)
        (let* ((_e1690816918_ _stx16907_)
               (_E1691016922_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1690816918_)))
               (_E1690916946_
                (lambda ()
                  (if (gx#stx-pair? _e1690816918_)
                      (let ((_e1691116926_ (gx#syntax-e _e1690816918_)))
                        (let ((_hd1691216929_ (##car _e1691116926_))
                              (_tl1691316931_ (##cdr _e1691116926_)))
                          (if (gx#stx-pair? _tl1691316931_)
                              (let ((_e1691416934_
                                     (gx#syntax-e _tl1691316931_)))
                                (let ((_hd1691516937_ (##car _e1691416934_))
                                      (_tl1691616939_ (##cdr _e1691416934_)))
                                  (let* ((_hd16942_ _hd1691516937_)
                                         (_body16944_ _tl1691616939_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _hd16942_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body16944_)))
                                        (_E1691016922_)))))
                              (_E1691016922_))))
                      (_E1691016922_)))))
          (_E1690916946_))))
    (define gx#core-compile-top-export%
      (lambda (_stx16877_)
        (let* ((_e1687816885_ _stx16877_)
               (_E1688016889_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1687816885_)))
               (_E1687916903_
                (lambda ()
                  (if (gx#stx-pair? _e1687816885_)
                      (let ((_e1688116893_ (gx#syntax-e _e1687816885_)))
                        (let ((_hd1688216896_ (##car _e1688116893_))
                              (_tl1688316898_ (##cdr _e1688116893_)))
                          (let ((_body16901_ _tl1688316898_))
                            (if '#t
                                (cons '%#export _body16901_)
                                (_E1688016889_)))))
                      (_E1688016889_)))))
          (_E1687916903_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx16847_)
        (let* ((_e1684816855_ _stx16847_)
               (_E1685016859_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1684816855_)))
               (_E1684916873_
                (lambda ()
                  (if (gx#stx-pair? _e1684816855_)
                      (let ((_e1685116863_ (gx#syntax-e _e1684816855_)))
                        (let ((_hd1685216866_ (##car _e1685116863_))
                              (_tl1685316868_ (##cdr _e1685116863_)))
                          (let ((_body16871_ _tl1685316868_))
                            (if '#t
                                (cons '%#provide _body16871_)
                                (_E1685016859_)))))
                      (_E1685016859_)))))
          (_E1684916873_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx16817_)
        (let* ((_e1681816825_ _stx16817_)
               (_E1682016829_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1681816825_)))
               (_E1681916843_
                (lambda ()
                  (if (gx#stx-pair? _e1681816825_)
                      (let ((_e1682116833_ (gx#syntax-e _e1681816825_)))
                        (let ((_hd1682216836_ (##car _e1682116833_))
                              (_tl1682316838_ (##cdr _e1682116833_)))
                          (let ((_body16841_ _tl1682316838_))
                            (if '#t
                                (cons '%#extern _body16841_)
                                (_E1682016829_)))))
                      (_E1682016829_)))))
          (_E1681916843_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx16763_)
        (let* ((_e1676416777_ _stx16763_)
               (_E1676616781_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1676416777_)))
               (_E1676516813_
                (lambda ()
                  (if (gx#stx-pair? _e1676416777_)
                      (let ((_e1676716785_ (gx#syntax-e _e1676416777_)))
                        (let ((_hd1676816788_ (##car _e1676716785_))
                              (_tl1676916790_ (##cdr _e1676716785_)))
                          (if (gx#stx-pair? _tl1676916790_)
                              (let ((_e1677016793_
                                     (gx#syntax-e _tl1676916790_)))
                                (let ((_hd1677116796_ (##car _e1677016793_))
                                      (_tl1677216798_ (##cdr _e1677016793_)))
                                  (let ((_hd16801_ _hd1677116796_))
                                    (if (gx#stx-pair? _tl1677216798_)
                                        (let ((_e1677316803_
                                               (gx#syntax-e _tl1677216798_)))
                                          (let ((_hd1677416806_
                                                 (##car _e1677316803_))
                                                (_tl1677516808_
                                                 (##cdr _e1677316803_)))
                                            (let ((_expr16811_ _hd1677416806_))
                                              (if (gx#stx-null? _tl1677516808_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd16801_)
                          (cons (gx#core-compile-top-syntax _expr16811_) '())))
              (_E1676616781_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1676616781_)))))
                                        (_E1676616781_)))))
                              (_E1676616781_))))
                      (_E1676616781_)))))
          (_E1676516813_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx16708_)
        (let* ((_e1670916722_ _stx16708_)
               (_E1671116726_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1670916722_)))
               (_E1671016759_
                (lambda ()
                  (if (gx#stx-pair? _e1670916722_)
                      (let ((_e1671216730_ (gx#syntax-e _e1670916722_)))
                        (let ((_hd1671316733_ (##car _e1671216730_))
                              (_tl1671416735_ (##cdr _e1671216730_)))
                          (if (gx#stx-pair? _tl1671416735_)
                              (let ((_e1671516738_
                                     (gx#syntax-e _tl1671416735_)))
                                (let ((_hd1671616741_ (##car _e1671516738_))
                                      (_tl1671716743_ (##cdr _e1671516738_)))
                                  (let ((_hd16746_ _hd1671616741_))
                                    (if (gx#stx-pair? _tl1671716743_)
                                        (let ((_e1671816748_
                                               (gx#syntax-e _tl1671716743_)))
                                          (let ((_hd1671916751_
                                                 (##car _e1671816748_))
                                                (_tl1672016753_
                                                 (##cdr _e1671816748_)))
                                            (let ((_expr16756_ _hd1671916751_))
                                              (if (gx#stx-null? _tl1672016753_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd16746_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr16756_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E1671116726_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1671116726_)))))
                                        (_E1671116726_)))))
                              (_E1671116726_))))
                      (_E1671116726_)))))
          (_E1671016759_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx16678_)
        (let* ((_e1667916686_ _stx16678_)
               (_E1668116690_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1667916686_)))
               (_E1668016704_
                (lambda ()
                  (if (gx#stx-pair? _e1667916686_)
                      (let ((_e1668216694_ (gx#syntax-e _e1667916686_)))
                        (let ((_hd1668316697_ (##car _e1668216694_))
                              (_tl1668416699_ (##cdr _e1668216694_)))
                          (let ((_body16702_ _tl1668416699_))
                            (if '#t
                                (cons '%#define-alias _body16702_)
                                (_E1668116690_)))))
                      (_E1668116690_)))))
          (_E1668016704_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx16648_)
        (let* ((_e1664916656_ _stx16648_)
               (_E1665116660_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1664916656_)))
               (_E1665016674_
                (lambda ()
                  (if (gx#stx-pair? _e1664916656_)
                      (let ((_e1665216664_ (gx#syntax-e _e1664916656_)))
                        (let ((_hd1665316667_ (##car _e1665216664_))
                              (_tl1665416669_ (##cdr _e1665216664_)))
                          (let ((_body16672_ _tl1665416669_))
                            (if '#t
                                (cons '%#define-runtime _body16672_)
                                (_E1665116660_)))))
                      (_E1665116660_)))))
          (_E1665016674_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx16618_)
        (let* ((_e1661916626_ _stx16618_)
               (_E1662116630_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1661916626_)))
               (_E1662016644_
                (lambda ()
                  (if (gx#stx-pair? _e1661916626_)
                      (let ((_e1662216634_ (gx#syntax-e _e1661916626_)))
                        (let ((_hd1662316637_ (##car _e1662216634_))
                              (_tl1662416639_ (##cdr _e1662216634_)))
                          (let ((_decls16642_ _tl1662416639_))
                            (if '#t
                                (cons '%#declare _decls16642_)
                                (_E1662116630_)))))
                      (_E1662116630_)))))
          (_E1662016644_))))
    (define gx#core-compile-top-lambda%
      (lambda (_stx16588_)
        (let* ((_e1658916596_ _stx16588_)
               (_E1659116600_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1658916596_)))
               (_E1659016614_
                (lambda ()
                  (if (gx#stx-pair? _e1658916596_)
                      (let ((_e1659216604_ (gx#syntax-e _e1658916596_)))
                        (let ((_hd1659316607_ (##car _e1659216604_))
                              (_tl1659416609_ (##cdr _e1659216604_)))
                          (let ((_clause16612_ _tl1659416609_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause16612_))
                                (_E1659116600_)))))
                      (_E1659116600_)))))
          (_E1659016614_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx16545_)
        (let* ((_e1654616556_ _stx16545_)
               (_E1654816560_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1654616556_)))
               (_E1654716584_
                (lambda ()
                  (if (gx#stx-pair? _e1654616556_)
                      (let ((_e1654916564_ (gx#syntax-e _e1654616556_)))
                        (let ((_hd1655016567_ (##car _e1654916564_))
                              (_tl1655116569_ (##cdr _e1654916564_)))
                          (let ((_hd16572_ _hd1655016567_))
                            (if (gx#stx-pair? _tl1655116569_)
                                (let ((_e1655216574_
                                       (gx#syntax-e _tl1655116569_)))
                                  (let ((_hd1655316577_ (##car _e1655216574_))
                                        (_tl1655416579_ (##cdr _e1655216574_)))
                                    (let ((_body16582_ _hd1655316577_))
                                      (if (gx#stx-null? _tl1655416579_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd16572_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body16582_)
                                                          '()))
                                              (_E1654816560_))
                                          (_E1654816560_)))))
                                (_E1654816560_)))))
                      (_E1654816560_)))))
          (_E1654716584_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx16515_)
        (let* ((_e1651616523_ _stx16515_)
               (_E1651816527_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1651616523_)))
               (_E1651716541_
                (lambda ()
                  (if (gx#stx-pair? _e1651616523_)
                      (let ((_e1651916531_ (gx#syntax-e _e1651616523_)))
                        (let ((_hd1652016534_ (##car _e1651916531_))
                              (_tl1652116536_ (##cdr _e1651916531_)))
                          (let ((_clauses16539_ _tl1652116536_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses16539_))
                                (_E1651816527_)))))
                      (_E1651816527_)))))
          (_E1651716541_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx16450_ _form16451_)
        (let* ((_e1645216465_ _stx16450_)
               (_E1645416469_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1645216465_)))
               (_E1645316501_
                (lambda ()
                  (if (gx#stx-pair? _e1645216465_)
                      (let ((_e1645516473_ (gx#syntax-e _e1645216465_)))
                        (let ((_hd1645616476_ (##car _e1645516473_))
                              (_tl1645716478_ (##cdr _e1645516473_)))
                          (if (gx#stx-pair? _tl1645716478_)
                              (let ((_e1645816481_
                                     (gx#syntax-e _tl1645716478_)))
                                (let ((_hd1645916484_ (##car _e1645816481_))
                                      (_tl1646016486_ (##cdr _e1645816481_)))
                                  (let ((_hd16489_ _hd1645916484_))
                                    (if (gx#stx-pair? _tl1646016486_)
                                        (let ((_e1646116491_
                                               (gx#syntax-e _tl1646016486_)))
                                          (let ((_hd1646216494_
                                                 (##car _e1646116491_))
                                                (_tl1646316496_
                                                 (##cdr _e1646116491_)))
                                            (let ((_body16499_ _hd1646216494_))
                                              (if (gx#stx-null? _tl1646316496_)
                                                  (if '#t
                                                      (cons _form16451_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd16489_)
                          (cons (gx#core-compile-top-syntax _body16499_) '())))
              (_E1645416469_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1645416469_)))))
                                        (_E1645416469_)))))
                              (_E1645416469_))))
                      (_E1645416469_)))))
          (_E1645316501_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx16508_)
        (let ((_form16510_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx16508_ _form16510_))))
    (define gx#core-compile-top-let-values%
      (lambda _g17323_
        (let ((_g17322_ (##length _g17323_)))
          (cond ((##fx= _g17322_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g17323_))
                ((##fx= _g17322_ 2)
                 (apply gx#core-compile-top-let-values%__% _g17323_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g17323_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx16447_)
        (gx#core-compile-top-let-values%__% _stx16447_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx16445_)
        (gx#core-compile-top-let-values%__% _stx16445_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx16404_)
        (let* ((_e1640516415_ _stx16404_)
               (_E1640716419_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1640516415_)))
               (_E1640616441_
                (lambda ()
                  (if (gx#stx-pair? _e1640516415_)
                      (let ((_e1640816423_ (gx#syntax-e _e1640516415_)))
                        (let ((_hd1640916426_ (##car _e1640816423_))
                              (_tl1641016428_ (##cdr _e1640816423_)))
                          (if (gx#stx-pair? _tl1641016428_)
                              (let ((_e1641116431_
                                     (gx#syntax-e _tl1641016428_)))
                                (let ((_hd1641216434_ (##car _e1641116431_))
                                      (_tl1641316436_ (##cdr _e1641116431_)))
                                  (let ((_e16439_ _hd1641216434_))
                                    (if (gx#stx-null? _tl1641316436_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e16439_)
                                                        '()))
                                            (_E1640716419_))
                                        (_E1640716419_)))))
                              (_E1640716419_))))
                      (_E1640716419_)))))
          (_E1640616441_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx16363_)
        (let* ((_e1636416374_ _stx16363_)
               (_E1636616378_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1636416374_)))
               (_E1636516400_
                (lambda ()
                  (if (gx#stx-pair? _e1636416374_)
                      (let ((_e1636716382_ (gx#syntax-e _e1636416374_)))
                        (let ((_hd1636816385_ (##car _e1636716382_))
                              (_tl1636916387_ (##cdr _e1636716382_)))
                          (if (gx#stx-pair? _tl1636916387_)
                              (let ((_e1637016390_
                                     (gx#syntax-e _tl1636916387_)))
                                (let ((_hd1637116393_ (##car _e1637016390_))
                                      (_tl1637216395_ (##cdr _e1637016390_)))
                                  (let ((_e16398_ _hd1637116393_))
                                    (if (gx#stx-null? _tl1637216395_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e16398_)
                                                        '()))
                                            (_E1636616378_))
                                        (_E1636616378_)))))
                              (_E1636616378_))))
                      (_E1636616378_)))))
          (_E1636516400_))))
    (define gx#core-compile-top-call%
      (lambda (_stx16320_)
        (let* ((_e1632116331_ _stx16320_)
               (_E1632316335_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1632116331_)))
               (_E1632216359_
                (lambda ()
                  (if (gx#stx-pair? _e1632116331_)
                      (let ((_e1632416339_ (gx#syntax-e _e1632116331_)))
                        (let ((_hd1632516342_ (##car _e1632416339_))
                              (_tl1632616344_ (##cdr _e1632416339_)))
                          (if (gx#stx-pair? _tl1632616344_)
                              (let ((_e1632716347_
                                     (gx#syntax-e _tl1632616344_)))
                                (let ((_hd1632816350_ (##car _e1632716347_))
                                      (_tl1632916352_ (##cdr _e1632716347_)))
                                  (let* ((_rator16355_ _hd1632816350_)
                                         (_args16357_ _tl1632916352_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator16355_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args16357_)))
                                        (_E1632316335_)))))
                              (_E1632316335_))))
                      (_E1632316335_)))))
          (_E1632216359_))))
    (define gx#core-compile-top-if%
      (lambda (_stx16253_)
        (let* ((_e1625416270_ _stx16253_)
               (_E1625616274_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1625416270_)))
               (_E1625516316_
                (lambda ()
                  (if (gx#stx-pair? _e1625416270_)
                      (let ((_e1625716278_ (gx#syntax-e _e1625416270_)))
                        (let ((_hd1625816281_ (##car _e1625716278_))
                              (_tl1625916283_ (##cdr _e1625716278_)))
                          (if (gx#stx-pair? _tl1625916283_)
                              (let ((_e1626016286_
                                     (gx#syntax-e _tl1625916283_)))
                                (let ((_hd1626116289_ (##car _e1626016286_))
                                      (_tl1626216291_ (##cdr _e1626016286_)))
                                  (let ((_test16294_ _hd1626116289_))
                                    (if (gx#stx-pair? _tl1626216291_)
                                        (let ((_e1626316296_
                                               (gx#syntax-e _tl1626216291_)))
                                          (let ((_hd1626416299_
                                                 (##car _e1626316296_))
                                                (_tl1626516301_
                                                 (##cdr _e1626316296_)))
                                            (let ((_K16304_ _hd1626416299_))
                                              (if (gx#stx-pair? _tl1626516301_)
                                                  (let ((_e1626616306_
                                                         (gx#syntax-e
                                                          _tl1626516301_)))
                                                    (let ((_hd1626716309_
                                                           (##car _e1626616306_))
                                                          (_tl1626816311_
                                                           (##cdr _e1626616306_)))
                                                      (let ((_E16314_
                                                             _hd1626716309_))
                                                        (if (gx#stx-null?
                                                             _tl1626816311_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test16294_)
                                    (cons (gx#core-compile-top-syntax _K16304_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E16314_)
                                                '()))))
                        (_E1625616274_))
                    (_E1625616274_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1625616274_)))))
                                        (_E1625616274_)))))
                              (_E1625616274_))))
                      (_E1625616274_)))))
          (_E1625516316_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx16212_)
        (let* ((_e1621316223_ _stx16212_)
               (_E1621516227_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1621316223_)))
               (_E1621416249_
                (lambda ()
                  (if (gx#stx-pair? _e1621316223_)
                      (let ((_e1621616231_ (gx#syntax-e _e1621316223_)))
                        (let ((_hd1621716234_ (##car _e1621616231_))
                              (_tl1621816236_ (##cdr _e1621616231_)))
                          (if (gx#stx-pair? _tl1621816236_)
                              (let ((_e1621916239_
                                     (gx#syntax-e _tl1621816236_)))
                                (let ((_hd1622016242_ (##car _e1621916239_))
                                      (_tl1622116244_ (##cdr _e1621916239_)))
                                  (let ((_id16247_ _hd1622016242_))
                                    (if (gx#stx-null? _tl1622116244_)
                                        (if (gx#identifier? _id16247_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id16247_)
                                                        '()))
                                            (_E1621516227_))
                                        (_E1621516227_)))))
                              (_E1621516227_))))
                      (_E1621516227_)))))
          (_E1621416249_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx16158_)
        (let* ((_e1615916172_ _stx16158_)
               (_E1616116176_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1615916172_)))
               (_E1616016208_
                (lambda ()
                  (if (gx#stx-pair? _e1615916172_)
                      (let ((_e1616216180_ (gx#syntax-e _e1615916172_)))
                        (let ((_hd1616316183_ (##car _e1616216180_))
                              (_tl1616416185_ (##cdr _e1616216180_)))
                          (if (gx#stx-pair? _tl1616416185_)
                              (let ((_e1616516188_
                                     (gx#syntax-e _tl1616416185_)))
                                (let ((_hd1616616191_ (##car _e1616516188_))
                                      (_tl1616716193_ (##cdr _e1616516188_)))
                                  (let ((_id16196_ _hd1616616191_))
                                    (if (gx#stx-pair? _tl1616716193_)
                                        (let ((_e1616816198_
                                               (gx#syntax-e _tl1616716193_)))
                                          (let ((_hd1616916201_
                                                 (##car _e1616816198_))
                                                (_tl1617016203_
                                                 (##cdr _e1616816198_)))
                                            (let ((_expr16206_ _hd1616916201_))
                                              (if (gx#stx-null? _tl1617016203_)
                                                  (if (gx#identifier?
                                                       _id16196_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id16196_)
                          (cons (gx#core-compile-top-syntax _expr16206_) '())))
              (_E1616116176_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1616116176_)))))
                                        (_E1616116176_)))))
                              (_E1616116176_))))
                      (_E1616116176_)))))
          (_E1616016208_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id16153_)
        (let ((_$e16155_ (gx#resolve-identifier__0 _id16153_)))
          (if _$e16155_
              (##unchecked-structure-ref _$e16155_ '1 gx#binding::t '#f)
              _id16153_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd16151_)
        (if (gx#identifier? _hd16151_)
            (gx#core-compile-top-runtime-ref _hd16151_)
            '#f)))))
