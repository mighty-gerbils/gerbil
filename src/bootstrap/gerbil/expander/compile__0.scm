(declare (block) (standard-bindings) (extended-bindings))
(begin
  (declare (not safe))
  (define gx#core-compile-top-syntax
    (lambda (_stx17266_)
      (let* ((_e1726717274_ _stx17266_)
             (_E1726917278_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1726717274_)))
             (_E1726817292_
              (lambda ()
                (if (gx#stx-pair? _e1726717274_)
                    (let ((_e1727017282_ (gx#syntax-e _e1726717274_)))
                      (let ((_hd1727117285_ (##car _e1727017282_))
                            (_tl1727217287_ (##cdr _e1727017282_)))
                        (let ((_form17290_ _hd1727117285_))
                          (if '#t
                              (call-method
                               (gx#syntax-local-e__0 _form17290_)
                               'compile-top-syntax
                               _stx17266_)
                              (_E1726917278_)))))
                    (_E1726917278_)))))
        (_E1726817292_))))
  (define gx#core-expander::compile-top-syntax
    (lambda (_self17226_ _stx17227_)
      (let* ((_self1722817236_ _self17226_)
             (_E1723017240_
              (lambda () (error '"No clause matching" _self1722817236_)))
             (_K1723117252_
              (lambda (_K17243_)
                (let ((_$e17245_ (gx#stx-source _stx17227_)))
                  (if _$e17245_
                      ((lambda (_g1724717249_)
                         (gx#stx-wrap-source
                          (_K17243_ _stx17227_)
                          _g1724717249_))
                       _$e17245_)
                      (_K17243_ _stx17227_))))))
        (if (##structure-instance-of? _self1722817236_ 'gx#core-expander::t)
            (let* ((_e1723217255_ (##vector-ref _self1722817236_ '1))
                   (_e1723317258_ (##vector-ref _self1722817236_ '2))
                   (_e1723417261_ (##vector-ref _self1722817236_ '3))
                   (_K17264_ _e1723417261_))
              (_K1723117252_ _K17264_))
            (_E1723017240_)))))
  (bind-method!
   gx#core-expander::t
   'compile-top-syntax
   gx#core-expander::compile-top-syntax
   '#f)
  (define gx#core-compile-top-error
    (lambda (_stx17100_)
      (gx#raise-syntax-error 'compile '"Cannot compile form" _stx17100_)))
  (define gx#core-compile-top-begin%
    (lambda (_stx17070_)
      (let* ((_e1707117078_ _stx17070_)
             (_E1707317082_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1707117078_)))
             (_E1707217096_
              (lambda ()
                (if (gx#stx-pair? _e1707117078_)
                    (let ((_e1707417086_ (gx#syntax-e _e1707117078_)))
                      (let ((_hd1707517089_ (##car _e1707417086_))
                            (_tl1707617091_ (##cdr _e1707417086_)))
                        (let ((_body17094_ _tl1707617091_))
                          (if '#t
                              (cons '%#begin
                                    (gx#stx-map1
                                     gx#core-compile-top-syntax
                                     _body17094_))
                              (_E1707317082_)))))
                    (_E1707317082_)))))
        (_E1707217096_))))
  (define gx#core-compile-top-begin-syntax%
    (lambda (_stx17039_)
      (let* ((_e1704017047_ _stx17039_)
             (_E1704217051_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1704017047_)))
             (_E1704117066_
              (lambda ()
                (if (gx#stx-pair? _e1704017047_)
                    (let ((_e1704317055_ (gx#syntax-e _e1704017047_)))
                      (let ((_hd1704417058_ (##car _e1704317055_))
                            (_tl1704517060_ (##cdr _e1704317055_)))
                        (let ((_body17063_ _tl1704517060_))
                          (if '#t
                              (cons '%#begin-syntax
                                    (call-with-parameters
                                     (lambda ()
                                       (gx#stx-map1
                                        gx#core-compile-top-syntax
                                        _body17063_))
                                     gx#current-expander-phi
                                     (fx+ (gx#current-expander-phi) '1)))
                              (_E1704217051_)))))
                    (_E1704217051_)))))
        (_E1704117066_))))
  (define gx#core-compile-top-begin-foreign%
    (lambda (_stx17009_)
      (let* ((_e1701017017_ _stx17009_)
             (_E1701217021_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1701017017_)))
             (_E1701117035_
              (lambda ()
                (if (gx#stx-pair? _e1701017017_)
                    (let ((_e1701317025_ (gx#syntax-e _e1701017017_)))
                      (let ((_hd1701417028_ (##car _e1701317025_))
                            (_tl1701517030_ (##cdr _e1701317025_)))
                        (let ((_body17033_ _tl1701517030_))
                          (if '#t
                              (cons '%#begin-foreign _body17033_)
                              (_E1701217021_)))))
                    (_E1701217021_)))))
        (_E1701117035_))))
  (define gx#core-compile-top-begin-annotation%
    (lambda (_stx16955_)
      (let* ((_e1695616969_ _stx16955_)
             (_E1695816973_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1695616969_)))
             (_E1695717005_
              (lambda ()
                (if (gx#stx-pair? _e1695616969_)
                    (let ((_e1695916977_ (gx#syntax-e _e1695616969_)))
                      (let ((_hd1696016980_ (##car _e1695916977_))
                            (_tl1696116982_ (##cdr _e1695916977_)))
                        (if (gx#stx-pair? _tl1696116982_)
                            (let ((_e1696216985_ (gx#syntax-e _tl1696116982_)))
                              (let ((_hd1696316988_ (##car _e1696216985_))
                                    (_tl1696416990_ (##cdr _e1696216985_)))
                                (let ((_ann16993_ _hd1696316988_))
                                  (if (gx#stx-pair? _tl1696416990_)
                                      (let ((_e1696516995_
                                             (gx#syntax-e _tl1696416990_)))
                                        (let ((_hd1696616998_
                                               (##car _e1696516995_))
                                              (_tl1696717000_
                                               (##cdr _e1696516995_)))
                                          (let ((_expr17003_ _hd1696616998_))
                                            (if (gx#stx-null? _tl1696717000_)
                                                (if '#t
                                                    (gx#core-compile-top-syntax
                                                     _expr17003_)
                                                    (_E1695816973_))
                                                (_E1695816973_)))))
                                      (_E1695816973_)))))
                            (_E1695816973_))))
                    (_E1695816973_)))))
        (_E1695717005_))))
  (define gx#core-compile-top-import%
    (lambda (_stx16925_)
      (let* ((_e1692616933_ _stx16925_)
             (_E1692816937_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1692616933_)))
             (_E1692716951_
              (lambda ()
                (if (gx#stx-pair? _e1692616933_)
                    (let ((_e1692916941_ (gx#syntax-e _e1692616933_)))
                      (let ((_hd1693016944_ (##car _e1692916941_))
                            (_tl1693116946_ (##cdr _e1692916941_)))
                        (let ((_body16949_ _tl1693116946_))
                          (if '#t
                              (cons '%#import (gx#syntax->list _body16949_))
                              (_E1692816937_)))))
                    (_E1692816937_)))))
        (_E1692716951_))))
  (define gx#core-compile-top-module%
    (lambda (_stx16882_)
      (let* ((_e1688316893_ _stx16882_)
             (_E1688516897_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1688316893_)))
             (_E1688416921_
              (lambda ()
                (if (gx#stx-pair? _e1688316893_)
                    (let ((_e1688616901_ (gx#syntax-e _e1688316893_)))
                      (let ((_hd1688716904_ (##car _e1688616901_))
                            (_tl1688816906_ (##cdr _e1688616901_)))
                        (if (gx#stx-pair? _tl1688816906_)
                            (let ((_e1688916909_ (gx#syntax-e _tl1688816906_)))
                              (let ((_hd1689016912_ (##car _e1688916909_))
                                    (_tl1689116914_ (##cdr _e1688916909_)))
                                (let* ((_hd16917_ _hd1689016912_)
                                       (_body16919_ _tl1689116914_))
                                  (if '#t
                                      (cons '%#module
                                            (cons (##structure-ref
                                                   (gx#syntax-local-e__0
                                                    _hd16917_)
                                                   '1
                                                   gx#expander-context::t
                                                   '#f)
                                                  (gx#stx-map1
                                                   gx#core-compile-top-syntax
                                                   _body16919_)))
                                      (_E1688516897_)))))
                            (_E1688516897_))))
                    (_E1688516897_)))))
        (_E1688416921_))))
  (define gx#core-compile-top-export%
    (lambda (_stx16852_)
      (let* ((_e1685316860_ _stx16852_)
             (_E1685516864_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1685316860_)))
             (_E1685416878_
              (lambda ()
                (if (gx#stx-pair? _e1685316860_)
                    (let ((_e1685616868_ (gx#syntax-e _e1685316860_)))
                      (let ((_hd1685716871_ (##car _e1685616868_))
                            (_tl1685816873_ (##cdr _e1685616868_)))
                        (let ((_body16876_ _tl1685816873_))
                          (if '#t
                              (cons '%#export (gx#syntax->list _body16876_))
                              (_E1685516864_)))))
                    (_E1685516864_)))))
        (_E1685416878_))))
  (define gx#core-compile-top-provide%
    (lambda (_stx16822_)
      (let* ((_e1682316830_ _stx16822_)
             (_E1682516834_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1682316830_)))
             (_E1682416848_
              (lambda ()
                (if (gx#stx-pair? _e1682316830_)
                    (let ((_e1682616838_ (gx#syntax-e _e1682316830_)))
                      (let ((_hd1682716841_ (##car _e1682616838_))
                            (_tl1682816843_ (##cdr _e1682616838_)))
                        (let ((_body16846_ _tl1682816843_))
                          (if '#t
                              (cons '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body16846_))
                              (_E1682516834_)))))
                    (_E1682516834_)))))
        (_E1682416848_))))
  (define gx#core-compile-top-extern%
    (lambda (_stx16747_)
      (letrec ((_generate16749_
                (lambda (_hd16779_)
                  (let* ((_e1678016790_ _hd16779_)
                         (_E1678216794_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e1678016790_)))
                         (_E1678116818_
                          (lambda ()
                            (if (gx#stx-pair? _e1678016790_)
                                (let ((_e1678316798_
                                       (gx#syntax-e _e1678016790_)))
                                  (let ((_hd1678416801_ (##car _e1678316798_))
                                        (_tl1678516803_ (##cdr _e1678316798_)))
                                    (let ((_id16806_ _hd1678416801_))
                                      (if (gx#stx-pair? _tl1678516803_)
                                          (let ((_e1678616808_
                                                 (gx#syntax-e _tl1678516803_)))
                                            (let ((_hd1678716811_
                                                   (##car _e1678616808_))
                                                  (_tl1678816813_
                                                   (##cdr _e1678616808_)))
                                              (let ((_eid16816_
                                                     _hd1678716811_))
                                                (if (gx#stx-null?
                                                     _tl1678816813_)
                                                    (if '#t
                                                        (cons (gx#core-quote-syntax__0
                                                               _id16806_)
                                                              (cons (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _eid16816_)
                            '()))
                (_E1678216794_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1678216794_)))))
                                          (_E1678216794_)))))
                                (_E1678216794_)))))
                    (_E1678116818_)))))
        (let* ((_e1675016757_ _stx16747_)
               (_E1675216761_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1675016757_)))
               (_E1675116775_
                (lambda ()
                  (if (gx#stx-pair? _e1675016757_)
                      (let ((_e1675316765_ (gx#syntax-e _e1675016757_)))
                        (let ((_hd1675416768_ (##car _e1675316765_))
                              (_tl1675516770_ (##cdr _e1675316765_)))
                          (let ((_body16773_ _tl1675516770_))
                            (if '#t
                                (cons '%#extern
                                      (gx#stx-map1
                                       _generate16749_
                                       _body16773_))
                                (_E1675216761_)))))
                      (_E1675216761_)))))
          (_E1675116775_)))))
  (define gx#core-compile-top-define-values%
    (lambda (_stx16693_)
      (let* ((_e1669416707_ _stx16693_)
             (_E1669616711_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1669416707_)))
             (_E1669516743_
              (lambda ()
                (if (gx#stx-pair? _e1669416707_)
                    (let ((_e1669716715_ (gx#syntax-e _e1669416707_)))
                      (let ((_hd1669816718_ (##car _e1669716715_))
                            (_tl1669916720_ (##cdr _e1669716715_)))
                        (if (gx#stx-pair? _tl1669916720_)
                            (let ((_e1670016723_ (gx#syntax-e _tl1669916720_)))
                              (let ((_hd1670116726_ (##car _e1670016723_))
                                    (_tl1670216728_ (##cdr _e1670016723_)))
                                (let ((_hd16731_ _hd1670116726_))
                                  (if (gx#stx-pair? _tl1670216728_)
                                      (let ((_e1670316733_
                                             (gx#syntax-e _tl1670216728_)))
                                        (let ((_hd1670416736_
                                               (##car _e1670316733_))
                                              (_tl1670516738_
                                               (##cdr _e1670316733_)))
                                          (let ((_expr16741_ _hd1670416736_))
                                            (if (gx#stx-null? _tl1670516738_)
                                                (if '#t
                                                    (cons '%#define-values
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#core-compile-top-runtime-bind
                         _hd16731_)
                        (cons (gx#core-compile-top-syntax _expr16741_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1669616711_))
                                                (_E1669616711_)))))
                                      (_E1669616711_)))))
                            (_E1669616711_))))
                    (_E1669616711_)))))
        (_E1669516743_))))
  (define gx#core-compile-top-define-syntax%
    (lambda (_stx16638_)
      (let* ((_e1663916652_ _stx16638_)
             (_E1664116656_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1663916652_)))
             (_E1664016689_
              (lambda ()
                (if (gx#stx-pair? _e1663916652_)
                    (let ((_e1664216660_ (gx#syntax-e _e1663916652_)))
                      (let ((_hd1664316663_ (##car _e1664216660_))
                            (_tl1664416665_ (##cdr _e1664216660_)))
                        (if (gx#stx-pair? _tl1664416665_)
                            (let ((_e1664516668_ (gx#syntax-e _tl1664416665_)))
                              (let ((_hd1664616671_ (##car _e1664516668_))
                                    (_tl1664716673_ (##cdr _e1664516668_)))
                                (let ((_hd16676_ _hd1664616671_))
                                  (if (gx#stx-pair? _tl1664716673_)
                                      (let ((_e1664816678_
                                             (gx#syntax-e _tl1664716673_)))
                                        (let ((_hd1664916681_
                                               (##car _e1664816678_))
                                              (_tl1665016683_
                                               (##cdr _e1664816678_)))
                                          (let ((_expr16686_ _hd1664916681_))
                                            (if (gx#stx-null? _tl1665016683_)
                                                (if '#t
                                                    (cons '%#define-syntax
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd16676_)
                        (cons (call-with-parameters
                               (lambda ()
                                 (gx#core-compile-top-syntax _expr16686_))
                               gx#current-expander-phi
                               (fx+ (gx#current-expander-phi) '1))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1664116656_))
                                                (_E1664116656_)))))
                                      (_E1664116656_)))))
                            (_E1664116656_))))
                    (_E1664116656_)))))
        (_E1664016689_))))
  (define gx#core-compile-top-define-alias%
    (lambda (_stx16584_)
      (let* ((_e1658516598_ _stx16584_)
             (_E1658716602_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1658516598_)))
             (_E1658616634_
              (lambda ()
                (if (gx#stx-pair? _e1658516598_)
                    (let ((_e1658816606_ (gx#syntax-e _e1658516598_)))
                      (let ((_hd1658916609_ (##car _e1658816606_))
                            (_tl1659016611_ (##cdr _e1658816606_)))
                        (if (gx#stx-pair? _tl1659016611_)
                            (let ((_e1659116614_ (gx#syntax-e _tl1659016611_)))
                              (let ((_hd1659216617_ (##car _e1659116614_))
                                    (_tl1659316619_ (##cdr _e1659116614_)))
                                (let ((_hd16622_ _hd1659216617_))
                                  (if (gx#stx-pair? _tl1659316619_)
                                      (let ((_e1659416624_
                                             (gx#syntax-e _tl1659316619_)))
                                        (let ((_hd1659516627_
                                               (##car _e1659416624_))
                                              (_tl1659616629_
                                               (##cdr _e1659416624_)))
                                          (let ((_alias-id16632_
                                                 _hd1659516627_))
                                            (if (gx#stx-null? _tl1659616629_)
                                                (if '#t
                                                    (cons '%#define-alias
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd16622_)
                        (cons (gx#core-quote-syntax__0 _alias-id16632_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1658716602_))
                                                (_E1658716602_)))))
                                      (_E1658716602_)))))
                            (_E1658716602_))))
                    (_E1658716602_)))))
        (_E1658616634_))))
  (define gx#core-compile-top-define-runtime%
    (lambda (_stx16530_)
      (let* ((_e1653116544_ _stx16530_)
             (_E1653316548_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1653116544_)))
             (_E1653216580_
              (lambda ()
                (if (gx#stx-pair? _e1653116544_)
                    (let ((_e1653416552_ (gx#syntax-e _e1653116544_)))
                      (let ((_hd1653516555_ (##car _e1653416552_))
                            (_tl1653616557_ (##cdr _e1653416552_)))
                        (if (gx#stx-pair? _tl1653616557_)
                            (let ((_e1653716560_ (gx#syntax-e _tl1653616557_)))
                              (let ((_hd1653816563_ (##car _e1653716560_))
                                    (_tl1653916565_ (##cdr _e1653716560_)))
                                (let ((_id16568_ _hd1653816563_))
                                  (if (gx#stx-pair? _tl1653916565_)
                                      (let ((_e1654016570_
                                             (gx#syntax-e _tl1653916565_)))
                                        (let ((_hd1654116573_
                                               (##car _e1654016570_))
                                              (_tl1654216575_
                                               (##cdr _e1654016570_)))
                                          (let ((_binding-id16578_
                                                 _hd1654116573_))
                                            (if (gx#stx-null? _tl1654216575_)
                                                (if '#t
                                                    (cons '%#define-runtime
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _id16568_)
                        (cons (gx#core-quote-syntax__0 _binding-id16578_)
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1653316548_))
                                                (_E1653316548_)))))
                                      (_E1653316548_)))))
                            (_E1653316548_))))
                    (_E1653316548_)))))
        (_E1653216580_))))
  (define gx#core-compile-top-declare%
    (lambda (_stx16500_)
      (let* ((_e1650116508_ _stx16500_)
             (_E1650316512_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1650116508_)))
             (_E1650216526_
              (lambda ()
                (if (gx#stx-pair? _e1650116508_)
                    (let ((_e1650416516_ (gx#syntax-e _e1650116508_)))
                      (let ((_hd1650516519_ (##car _e1650416516_))
                            (_tl1650616521_ (##cdr _e1650416516_)))
                        (let ((_decls16524_ _tl1650616521_))
                          (if '#t
                              (cons '%#declare _decls16524_)
                              (_E1650316512_)))))
                    (_E1650316512_)))))
        (_E1650216526_))))
  (define gx#core-compile-top-lambda%
    (lambda (_stx16470_)
      (let* ((_e1647116478_ _stx16470_)
             (_E1647316482_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1647116478_)))
             (_E1647216496_
              (lambda ()
                (if (gx#stx-pair? _e1647116478_)
                    (let ((_e1647416486_ (gx#syntax-e _e1647116478_)))
                      (let ((_hd1647516489_ (##car _e1647416486_))
                            (_tl1647616491_ (##cdr _e1647416486_)))
                        (let ((_clause16494_ _tl1647616491_))
                          (if '#t
                              (cons '%#lambda
                                    (gx#core-compile-top-lambda-clause
                                     _clause16494_))
                              (_E1647316482_)))))
                    (_E1647316482_)))))
        (_E1647216496_))))
  (define gx#core-compile-top-lambda-clause
    (lambda (_stx16427_)
      (let* ((_e1642816438_ _stx16427_)
             (_E1643016442_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1642816438_)))
             (_E1642916466_
              (lambda ()
                (if (gx#stx-pair? _e1642816438_)
                    (let ((_e1643116446_ (gx#syntax-e _e1642816438_)))
                      (let ((_hd1643216449_ (##car _e1643116446_))
                            (_tl1643316451_ (##cdr _e1643116446_)))
                        (let ((_hd16454_ _hd1643216449_))
                          (if (gx#stx-pair? _tl1643316451_)
                              (let ((_e1643416456_
                                     (gx#syntax-e _tl1643316451_)))
                                (let ((_hd1643516459_ (##car _e1643416456_))
                                      (_tl1643616461_ (##cdr _e1643416456_)))
                                  (let ((_body16464_ _hd1643516459_))
                                    (if (gx#stx-null? _tl1643616461_)
                                        (if '#t
                                            (cons (gx#stx-map1
                                                   gx#core-compile-top-runtime-bind
                                                   _hd16454_)
                                                  (cons (gx#core-compile-top-syntax
                                                         _body16464_)
                                                        '()))
                                            (_E1643016442_))
                                        (_E1643016442_)))))
                              (_E1643016442_)))))
                    (_E1643016442_)))))
        (_E1642916466_))))
  (define gx#core-compile-top-case-lambda%
    (lambda (_stx16397_)
      (let* ((_e1639816405_ _stx16397_)
             (_E1640016409_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1639816405_)))
             (_E1639916423_
              (lambda ()
                (if (gx#stx-pair? _e1639816405_)
                    (let ((_e1640116413_ (gx#syntax-e _e1639816405_)))
                      (let ((_hd1640216416_ (##car _e1640116413_))
                            (_tl1640316418_ (##cdr _e1640116413_)))
                        (let ((_clauses16421_ _tl1640316418_))
                          (if '#t
                              (cons '%#case-lambda
                                    (gx#stx-map1
                                     gx#core-compile-top-lambda-clause
                                     _clauses16421_))
                              (_E1640016409_)))))
                    (_E1640016409_)))))
        (_E1639916423_))))
  (begin
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx16332_ _form16333_)
        (let* ((_e1633416347_ _stx16332_)
               (_E1633616351_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1633416347_)))
               (_E1633516383_
                (lambda ()
                  (if (gx#stx-pair? _e1633416347_)
                      (let ((_e1633716355_ (gx#syntax-e _e1633416347_)))
                        (let ((_hd1633816358_ (##car _e1633716355_))
                              (_tl1633916360_ (##cdr _e1633716355_)))
                          (if (gx#stx-pair? _tl1633916360_)
                              (let ((_e1634016363_
                                     (gx#syntax-e _tl1633916360_)))
                                (let ((_hd1634116366_ (##car _e1634016363_))
                                      (_tl1634216368_ (##cdr _e1634016363_)))
                                  (let ((_hd16371_ _hd1634116366_))
                                    (if (gx#stx-pair? _tl1634216368_)
                                        (let ((_e1634316373_
                                               (gx#syntax-e _tl1634216368_)))
                                          (let ((_hd1634416376_
                                                 (##car _e1634316373_))
                                                (_tl1634516378_
                                                 (##cdr _e1634316373_)))
                                            (let ((_body16381_ _hd1634416376_))
                                              (if (gx#stx-null? _tl1634516378_)
                                                  (if '#t
                                                      (cons _form16333_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd16371_)
                          (cons (gx#core-compile-top-syntax _body16381_) '())))
              (_E1633616351_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1633616351_)))))
                                        (_E1633616351_)))))
                              (_E1633616351_))))
                      (_E1633616351_)))))
          (_E1633516383_))))
    (begin
      (define gx#core-compile-top-let-values%__0
        (lambda (_stx16390_)
          (let ((_form16392_ '%#let-values))
            (gx#core-compile-top-let-values%__% _stx16390_ _form16392_))))
      (define gx#core-compile-top-let-values%
        (lambda _g17296_
          (let ((_g17295_ (length _g17296_)))
            (cond ((##fx= _g17295_ 1)
                   (apply gx#core-compile-top-let-values%__0 _g17296_))
                  ((##fx= _g17295_ 2)
                   (apply gx#core-compile-top-let-values%__% _g17296_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-compile-top-let-values%
                    _g17296_))))))))
  (define gx#core-compile-top-letrec-values%
    (lambda (_stx16329_)
      (gx#core-compile-top-let-values%__% _stx16329_ '%#letrec-values)))
  (define gx#core-compile-top-letrec*-values%
    (lambda (_stx16327_)
      (gx#core-compile-top-let-values%__% _stx16327_ '%#letrec*-values)))
  (define gx#core-compile-top-quote%
    (lambda (_stx16286_)
      (let* ((_e1628716297_ _stx16286_)
             (_E1628916301_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1628716297_)))
             (_E1628816323_
              (lambda ()
                (if (gx#stx-pair? _e1628716297_)
                    (let ((_e1629016305_ (gx#syntax-e _e1628716297_)))
                      (let ((_hd1629116308_ (##car _e1629016305_))
                            (_tl1629216310_ (##cdr _e1629016305_)))
                        (if (gx#stx-pair? _tl1629216310_)
                            (let ((_e1629316313_ (gx#syntax-e _tl1629216310_)))
                              (let ((_hd1629416316_ (##car _e1629316313_))
                                    (_tl1629516318_ (##cdr _e1629316313_)))
                                (let ((_e16321_ _hd1629416316_))
                                  (if (gx#stx-null? _tl1629516318_)
                                      (if '#t
                                          (cons '%#quote
                                                (cons (gx#syntax->datum
                                                       _e16321_)
                                                      '()))
                                          (_E1628916301_))
                                      (_E1628916301_)))))
                            (_E1628916301_))))
                    (_E1628916301_)))))
        (_E1628816323_))))
  (define gx#core-compile-top-quote-syntax%
    (lambda (_stx16245_)
      (let* ((_e1624616256_ _stx16245_)
             (_E1624816260_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1624616256_)))
             (_E1624716282_
              (lambda ()
                (if (gx#stx-pair? _e1624616256_)
                    (let ((_e1624916264_ (gx#syntax-e _e1624616256_)))
                      (let ((_hd1625016267_ (##car _e1624916264_))
                            (_tl1625116269_ (##cdr _e1624916264_)))
                        (if (gx#stx-pair? _tl1625116269_)
                            (let ((_e1625216272_ (gx#syntax-e _tl1625116269_)))
                              (let ((_hd1625316275_ (##car _e1625216272_))
                                    (_tl1625416277_ (##cdr _e1625216272_)))
                                (let ((_e16280_ _hd1625316275_))
                                  (if (gx#stx-null? _tl1625416277_)
                                      (if '#t
                                          (cons '%#quote-syntax
                                                (cons (gx#core-quote-syntax__0
                                                       _e16280_)
                                                      '()))
                                          (_E1624816260_))
                                      (_E1624816260_)))))
                            (_E1624816260_))))
                    (_E1624816260_)))))
        (_E1624716282_))))
  (define gx#core-compile-top-call%
    (lambda (_stx16202_)
      (let* ((_e1620316213_ _stx16202_)
             (_E1620516217_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1620316213_)))
             (_E1620416241_
              (lambda ()
                (if (gx#stx-pair? _e1620316213_)
                    (let ((_e1620616221_ (gx#syntax-e _e1620316213_)))
                      (let ((_hd1620716224_ (##car _e1620616221_))
                            (_tl1620816226_ (##cdr _e1620616221_)))
                        (if (gx#stx-pair? _tl1620816226_)
                            (let ((_e1620916229_ (gx#syntax-e _tl1620816226_)))
                              (let ((_hd1621016232_ (##car _e1620916229_))
                                    (_tl1621116234_ (##cdr _e1620916229_)))
                                (let* ((_rator16237_ _hd1621016232_)
                                       (_args16239_ _tl1621116234_))
                                  (if '#t
                                      (cons '%#call
                                            (cons (gx#core-compile-top-syntax
                                                   _rator16237_)
                                                  (gx#stx-map1
                                                   gx#core-compile-top-syntax
                                                   _args16239_)))
                                      (_E1620516217_)))))
                            (_E1620516217_))))
                    (_E1620516217_)))))
        (_E1620416241_))))
  (define gx#core-compile-top-if%
    (lambda (_stx16135_)
      (let* ((_e1613616152_ _stx16135_)
             (_E1613816156_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1613616152_)))
             (_E1613716198_
              (lambda ()
                (if (gx#stx-pair? _e1613616152_)
                    (let ((_e1613916160_ (gx#syntax-e _e1613616152_)))
                      (let ((_hd1614016163_ (##car _e1613916160_))
                            (_tl1614116165_ (##cdr _e1613916160_)))
                        (if (gx#stx-pair? _tl1614116165_)
                            (let ((_e1614216168_ (gx#syntax-e _tl1614116165_)))
                              (let ((_hd1614316171_ (##car _e1614216168_))
                                    (_tl1614416173_ (##cdr _e1614216168_)))
                                (let ((_test16176_ _hd1614316171_))
                                  (if (gx#stx-pair? _tl1614416173_)
                                      (let ((_e1614516178_
                                             (gx#syntax-e _tl1614416173_)))
                                        (let ((_hd1614616181_
                                               (##car _e1614516178_))
                                              (_tl1614716183_
                                               (##cdr _e1614516178_)))
                                          (let ((_K16186_ _hd1614616181_))
                                            (if (gx#stx-pair? _tl1614716183_)
                                                (let ((_e1614816188_
                                                       (gx#syntax-e
                                                        _tl1614716183_)))
                                                  (let ((_hd1614916191_
                                                         (##car _e1614816188_))
                                                        (_tl1615016193_
                                                         (##cdr _e1614816188_)))
                                                    (let ((_E16196_
                                                           _hd1614916191_))
                                                      (if (gx#stx-null?
                                                           _tl1615016193_)
                                                          (if '#t
                                                              (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gx#core-compile-top-syntax _test16176_)
                                  (cons (gx#core-compile-top-syntax _K16186_)
                                        (cons (gx#core-compile-top-syntax
                                               _E16196_)
                                              '()))))
                      (_E1613816156_))
                  (_E1613816156_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1613816156_)))))
                                      (_E1613816156_)))))
                            (_E1613816156_))))
                    (_E1613816156_)))))
        (_E1613716198_))))
  (define gx#core-compile-top-ref%
    (lambda (_stx16094_)
      (let* ((_e1609516105_ _stx16094_)
             (_E1609716109_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1609516105_)))
             (_E1609616131_
              (lambda ()
                (if (gx#stx-pair? _e1609516105_)
                    (let ((_e1609816113_ (gx#syntax-e _e1609516105_)))
                      (let ((_hd1609916116_ (##car _e1609816113_))
                            (_tl1610016118_ (##cdr _e1609816113_)))
                        (if (gx#stx-pair? _tl1610016118_)
                            (let ((_e1610116121_ (gx#syntax-e _tl1610016118_)))
                              (let ((_hd1610216124_ (##car _e1610116121_))
                                    (_tl1610316126_ (##cdr _e1610116121_)))
                                (let ((_id16129_ _hd1610216124_))
                                  (if (gx#stx-null? _tl1610316126_)
                                      (if (gx#identifier? _id16129_)
                                          (cons '%#ref
                                                (cons (gx#core-compile-top-runtime-ref
                                                       _id16129_)
                                                      '()))
                                          (_E1609716109_))
                                      (_E1609716109_)))))
                            (_E1609716109_))))
                    (_E1609716109_)))))
        (_E1609616131_))))
  (define gx#core-compile-top-setq%
    (lambda (_stx16040_)
      (let* ((_e1604116054_ _stx16040_)
             (_E1604316058_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1604116054_)))
             (_E1604216090_
              (lambda ()
                (if (gx#stx-pair? _e1604116054_)
                    (let ((_e1604416062_ (gx#syntax-e _e1604116054_)))
                      (let ((_hd1604516065_ (##car _e1604416062_))
                            (_tl1604616067_ (##cdr _e1604416062_)))
                        (if (gx#stx-pair? _tl1604616067_)
                            (let ((_e1604716070_ (gx#syntax-e _tl1604616067_)))
                              (let ((_hd1604816073_ (##car _e1604716070_))
                                    (_tl1604916075_ (##cdr _e1604716070_)))
                                (let ((_id16078_ _hd1604816073_))
                                  (if (gx#stx-pair? _tl1604916075_)
                                      (let ((_e1605016080_
                                             (gx#syntax-e _tl1604916075_)))
                                        (let ((_hd1605116083_
                                               (##car _e1605016080_))
                                              (_tl1605216085_
                                               (##cdr _e1605016080_)))
                                          (let ((_expr16088_ _hd1605116083_))
                                            (if (gx#stx-null? _tl1605216085_)
                                                (if (gx#identifier? _id16078_)
                                                    (cons '%#set!
                                                          (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _id16078_)
                        (cons (gx#core-compile-top-syntax _expr16088_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1604316058_))
                                                (_E1604316058_)))))
                                      (_E1604316058_)))))
                            (_E1604316058_))))
                    (_E1604316058_)))))
        (_E1604216090_))))
  (define gx#core-compile-top-runtime-ref
    (lambda (_id16035_)
      (let ((_$e16037_ (gx#resolve-identifier__0 _id16035_)))
        (if _$e16037_
            (##structure-ref _$e16037_ '1 gx#binding::t '#f)
            _id16035_))))
  (define gx#core-compile-top-runtime-bind
    (lambda (_hd16033_)
      (if (gx#identifier? _hd16033_)
          (gx#core-compile-top-runtime-ref _hd16033_)
          '#f))))
