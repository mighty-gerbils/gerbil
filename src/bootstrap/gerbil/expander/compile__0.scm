(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-compile-top-syntax
    (lambda (_stx17330_)
      (let* ((_e1733117338_ _stx17330_)
             (_E1733317342_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1733117338_)))
             (_E1733217356_
              (lambda ()
                (if (gx#stx-pair? _e1733117338_)
                    (let ((_e1733417346_ (gx#syntax-e _e1733117338_)))
                      (let ((_hd1733517349_ (##car _e1733417346_))
                            (_tl1733617351_ (##cdr _e1733417346_)))
                        (let ((_form17354_ _hd1733517349_))
                          (if '#t
                              (call-method
                               (gx#syntax-local-e__0 _form17354_)
                               'compile-top-syntax
                               _stx17330_)
                              (_E1733317342_)))))
                    (_E1733317342_)))))
        (_E1733217356_))))
  (define gx#core-expander::compile-top-syntax
    (lambda (_self17290_ _stx17291_)
      (let* ((_self1729217300_ _self17290_)
             (_E1729417304_
              (lambda () (error '"No clause matching" _self1729217300_)))
             (_K1729517316_
              (lambda (_K17307_)
                (let ((_$e17309_ (gx#stx-source _stx17291_)))
                  (if _$e17309_
                      ((lambda (_g1731117313_)
                         (gx#stx-wrap-source
                          (_K17307_ _stx17291_)
                          _g1731117313_))
                       _$e17309_)
                      (_K17307_ _stx17291_))))))
        (if (##structure-instance-of? _self1729217300_ 'gx#core-expander::t)
            (let* ((_e1729617319_ (##vector-ref _self1729217300_ '1))
                   (_e1729717322_ (##vector-ref _self1729217300_ '2))
                   (_e1729817325_ (##vector-ref _self1729217300_ '3))
                   (_K17328_ _e1729817325_))
              (_K1729517316_ _K17328_))
            (_E1729417304_)))))
  (bind-method!
   gx#core-expander::t
   'compile-top-syntax
   gx#core-expander::compile-top-syntax
   '#f)
  (define gx#core-compile-top-error
    (lambda (_stx17164_)
      (gx#raise-syntax-error 'compile '"Cannot compile form" _stx17164_)))
  (define gx#core-compile-top-begin%
    (lambda (_stx17134_)
      (let* ((_e1713517142_ _stx17134_)
             (_E1713717146_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1713517142_)))
             (_E1713617160_
              (lambda ()
                (if (gx#stx-pair? _e1713517142_)
                    (let ((_e1713817150_ (gx#syntax-e _e1713517142_)))
                      (let ((_hd1713917153_ (##car _e1713817150_))
                            (_tl1714017155_ (##cdr _e1713817150_)))
                        (let ((_body17158_ _tl1714017155_))
                          (if '#t
                              (cons '%#begin
                                    (gx#stx-map1
                                     gx#core-compile-top-syntax
                                     _body17158_))
                              (_E1713717146_)))))
                    (_E1713717146_)))))
        (_E1713617160_))))
  (define gx#core-compile-top-begin-syntax%
    (lambda (_stx17103_)
      (let* ((_e1710417111_ _stx17103_)
             (_E1710617115_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1710417111_)))
             (_E1710517130_
              (lambda ()
                (if (gx#stx-pair? _e1710417111_)
                    (let ((_e1710717119_ (gx#syntax-e _e1710417111_)))
                      (let ((_hd1710817122_ (##car _e1710717119_))
                            (_tl1710917124_ (##cdr _e1710717119_)))
                        (let ((_body17127_ _tl1710917124_))
                          (if '#t
                              (cons '%#begin-syntax
                                    (call-with-parameters
                                     (lambda ()
                                       (gx#stx-map1
                                        gx#core-compile-top-syntax
                                        _body17127_))
                                     gx#current-expander-phi
                                     (fx+ (gx#current-expander-phi) '1)))
                              (_E1710617115_)))))
                    (_E1710617115_)))))
        (_E1710517130_))))
  (define gx#core-compile-top-begin-foreign%
    (lambda (_stx17073_)
      (let* ((_e1707417081_ _stx17073_)
             (_E1707617085_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1707417081_)))
             (_E1707517099_
              (lambda ()
                (if (gx#stx-pair? _e1707417081_)
                    (let ((_e1707717089_ (gx#syntax-e _e1707417081_)))
                      (let ((_hd1707817092_ (##car _e1707717089_))
                            (_tl1707917094_ (##cdr _e1707717089_)))
                        (let ((_body17097_ _tl1707917094_))
                          (if '#t
                              (cons '%#begin-foreign _body17097_)
                              (_E1707617085_)))))
                    (_E1707617085_)))))
        (_E1707517099_))))
  (define gx#core-compile-top-begin-annotation%
    (lambda (_stx17019_)
      (let* ((_e1702017033_ _stx17019_)
             (_E1702217037_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1702017033_)))
             (_E1702117069_
              (lambda ()
                (if (gx#stx-pair? _e1702017033_)
                    (let ((_e1702317041_ (gx#syntax-e _e1702017033_)))
                      (let ((_hd1702417044_ (##car _e1702317041_))
                            (_tl1702517046_ (##cdr _e1702317041_)))
                        (if (gx#stx-pair? _tl1702517046_)
                            (let ((_e1702617049_ (gx#syntax-e _tl1702517046_)))
                              (let ((_hd1702717052_ (##car _e1702617049_))
                                    (_tl1702817054_ (##cdr _e1702617049_)))
                                (let ((_ann17057_ _hd1702717052_))
                                  (if (gx#stx-pair? _tl1702817054_)
                                      (let ((_e1702917059_
                                             (gx#syntax-e _tl1702817054_)))
                                        (let ((_hd1703017062_
                                               (##car _e1702917059_))
                                              (_tl1703117064_
                                               (##cdr _e1702917059_)))
                                          (let ((_expr17067_ _hd1703017062_))
                                            (if (gx#stx-null? _tl1703117064_)
                                                (if '#t
                                                    (gx#core-compile-top-syntax
                                                     _expr17067_)
                                                    (_E1702217037_))
                                                (_E1702217037_)))))
                                      (_E1702217037_)))))
                            (_E1702217037_))))
                    (_E1702217037_)))))
        (_E1702117069_))))
  (define gx#core-compile-top-import%
    (lambda (_stx16989_)
      (let* ((_e1699016997_ _stx16989_)
             (_E1699217001_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1699016997_)))
             (_E1699117015_
              (lambda ()
                (if (gx#stx-pair? _e1699016997_)
                    (let ((_e1699317005_ (gx#syntax-e _e1699016997_)))
                      (let ((_hd1699417008_ (##car _e1699317005_))
                            (_tl1699517010_ (##cdr _e1699317005_)))
                        (let ((_body17013_ _tl1699517010_))
                          (if '#t
                              (cons '%#import (gx#syntax->list _body17013_))
                              (_E1699217001_)))))
                    (_E1699217001_)))))
        (_E1699117015_))))
  (define gx#core-compile-top-module%
    (lambda (_stx16946_)
      (let* ((_e1694716957_ _stx16946_)
             (_E1694916961_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1694716957_)))
             (_E1694816985_
              (lambda ()
                (if (gx#stx-pair? _e1694716957_)
                    (let ((_e1695016965_ (gx#syntax-e _e1694716957_)))
                      (let ((_hd1695116968_ (##car _e1695016965_))
                            (_tl1695216970_ (##cdr _e1695016965_)))
                        (if (gx#stx-pair? _tl1695216970_)
                            (let ((_e1695316973_ (gx#syntax-e _tl1695216970_)))
                              (let ((_hd1695416976_ (##car _e1695316973_))
                                    (_tl1695516978_ (##cdr _e1695316973_)))
                                (let* ((_hd16981_ _hd1695416976_)
                                       (_body16983_ _tl1695516978_))
                                  (if '#t
                                      (cons '%#module
                                            (cons (##structure-ref
                                                   (gx#syntax-local-e__0
                                                    _hd16981_)
                                                   '1
                                                   gx#expander-context::t
                                                   '#f)
                                                  (gx#stx-map1
                                                   gx#core-compile-top-syntax
                                                   _body16983_)))
                                      (_E1694916961_)))))
                            (_E1694916961_))))
                    (_E1694916961_)))))
        (_E1694816985_))))
  (define gx#core-compile-top-export%
    (lambda (_stx16916_)
      (let* ((_e1691716924_ _stx16916_)
             (_E1691916928_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1691716924_)))
             (_E1691816942_
              (lambda ()
                (if (gx#stx-pair? _e1691716924_)
                    (let ((_e1692016932_ (gx#syntax-e _e1691716924_)))
                      (let ((_hd1692116935_ (##car _e1692016932_))
                            (_tl1692216937_ (##cdr _e1692016932_)))
                        (let ((_body16940_ _tl1692216937_))
                          (if '#t
                              (cons '%#export (gx#syntax->list _body16940_))
                              (_E1691916928_)))))
                    (_E1691916928_)))))
        (_E1691816942_))))
  (define gx#core-compile-top-provide%
    (lambda (_stx16886_)
      (let* ((_e1688716894_ _stx16886_)
             (_E1688916898_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1688716894_)))
             (_E1688816912_
              (lambda ()
                (if (gx#stx-pair? _e1688716894_)
                    (let ((_e1689016902_ (gx#syntax-e _e1688716894_)))
                      (let ((_hd1689116905_ (##car _e1689016902_))
                            (_tl1689216907_ (##cdr _e1689016902_)))
                        (let ((_body16910_ _tl1689216907_))
                          (if '#t
                              (cons '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body16910_))
                              (_E1688916898_)))))
                    (_E1688916898_)))))
        (_E1688816912_))))
  (define gx#core-compile-top-extern%
    (lambda (_stx16811_)
      (letrec ((_generate16813_
                (lambda (_hd16843_)
                  (let* ((_e1684416854_ _hd16843_)
                         (_E1684616858_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e1684416854_)))
                         (_E1684516882_
                          (lambda ()
                            (if (gx#stx-pair? _e1684416854_)
                                (let ((_e1684716862_
                                       (gx#syntax-e _e1684416854_)))
                                  (let ((_hd1684816865_ (##car _e1684716862_))
                                        (_tl1684916867_ (##cdr _e1684716862_)))
                                    (let ((_id16870_ _hd1684816865_))
                                      (if (gx#stx-pair? _tl1684916867_)
                                          (let ((_e1685016872_
                                                 (gx#syntax-e _tl1684916867_)))
                                            (let ((_hd1685116875_
                                                   (##car _e1685016872_))
                                                  (_tl1685216877_
                                                   (##cdr _e1685016872_)))
                                              (let ((_eid16880_
                                                     _hd1685116875_))
                                                (if (gx#stx-null?
                                                     _tl1685216877_)
                                                    (if '#t
                                                        (cons (gx#core-quote-syntax__0
                                                               _id16870_)
                                                              (cons (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _eid16880_)
                            '()))
                (_E1684616858_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1684616858_)))))
                                          (_E1684616858_)))))
                                (_E1684616858_)))))
                    (_E1684516882_)))))
        (let* ((_e1681416821_ _stx16811_)
               (_E1681616825_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1681416821_)))
               (_E1681516839_
                (lambda ()
                  (if (gx#stx-pair? _e1681416821_)
                      (let ((_e1681716829_ (gx#syntax-e _e1681416821_)))
                        (let ((_hd1681816832_ (##car _e1681716829_))
                              (_tl1681916834_ (##cdr _e1681716829_)))
                          (let ((_body16837_ _tl1681916834_))
                            (if '#t
                                (cons '%#extern
                                      (gx#stx-map1
                                       _generate16813_
                                       _body16837_))
                                (_E1681616825_)))))
                      (_E1681616825_)))))
          (_E1681516839_)))))
  (define gx#core-compile-top-define-values%
    (lambda (_stx16757_)
      (let* ((_e1675816771_ _stx16757_)
             (_E1676016775_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1675816771_)))
             (_E1675916807_
              (lambda ()
                (if (gx#stx-pair? _e1675816771_)
                    (let ((_e1676116779_ (gx#syntax-e _e1675816771_)))
                      (let ((_hd1676216782_ (##car _e1676116779_))
                            (_tl1676316784_ (##cdr _e1676116779_)))
                        (if (gx#stx-pair? _tl1676316784_)
                            (let ((_e1676416787_ (gx#syntax-e _tl1676316784_)))
                              (let ((_hd1676516790_ (##car _e1676416787_))
                                    (_tl1676616792_ (##cdr _e1676416787_)))
                                (let ((_hd16795_ _hd1676516790_))
                                  (if (gx#stx-pair? _tl1676616792_)
                                      (let ((_e1676716797_
                                             (gx#syntax-e _tl1676616792_)))
                                        (let ((_hd1676816800_
                                               (##car _e1676716797_))
                                              (_tl1676916802_
                                               (##cdr _e1676716797_)))
                                          (let ((_expr16805_ _hd1676816800_))
                                            (if (gx#stx-null? _tl1676916802_)
                                                (if '#t
                                                    (cons '%#define-values
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#core-compile-top-runtime-bind
                         _hd16795_)
                        (cons (gx#core-compile-top-syntax _expr16805_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1676016775_))
                                                (_E1676016775_)))))
                                      (_E1676016775_)))))
                            (_E1676016775_))))
                    (_E1676016775_)))))
        (_E1675916807_))))
  (define gx#core-compile-top-define-syntax%
    (lambda (_stx16702_)
      (let* ((_e1670316716_ _stx16702_)
             (_E1670516720_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1670316716_)))
             (_E1670416753_
              (lambda ()
                (if (gx#stx-pair? _e1670316716_)
                    (let ((_e1670616724_ (gx#syntax-e _e1670316716_)))
                      (let ((_hd1670716727_ (##car _e1670616724_))
                            (_tl1670816729_ (##cdr _e1670616724_)))
                        (if (gx#stx-pair? _tl1670816729_)
                            (let ((_e1670916732_ (gx#syntax-e _tl1670816729_)))
                              (let ((_hd1671016735_ (##car _e1670916732_))
                                    (_tl1671116737_ (##cdr _e1670916732_)))
                                (let ((_hd16740_ _hd1671016735_))
                                  (if (gx#stx-pair? _tl1671116737_)
                                      (let ((_e1671216742_
                                             (gx#syntax-e _tl1671116737_)))
                                        (let ((_hd1671316745_
                                               (##car _e1671216742_))
                                              (_tl1671416747_
                                               (##cdr _e1671216742_)))
                                          (let ((_expr16750_ _hd1671316745_))
                                            (if (gx#stx-null? _tl1671416747_)
                                                (if '#t
                                                    (cons '%#define-syntax
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd16740_)
                        (cons (call-with-parameters
                               (lambda ()
                                 (gx#core-compile-top-syntax _expr16750_))
                               gx#current-expander-phi
                               (fx+ (gx#current-expander-phi) '1))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1670516720_))
                                                (_E1670516720_)))))
                                      (_E1670516720_)))))
                            (_E1670516720_))))
                    (_E1670516720_)))))
        (_E1670416753_))))
  (define gx#core-compile-top-define-alias%
    (lambda (_stx16648_)
      (let* ((_e1664916662_ _stx16648_)
             (_E1665116666_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1664916662_)))
             (_E1665016698_
              (lambda ()
                (if (gx#stx-pair? _e1664916662_)
                    (let ((_e1665216670_ (gx#syntax-e _e1664916662_)))
                      (let ((_hd1665316673_ (##car _e1665216670_))
                            (_tl1665416675_ (##cdr _e1665216670_)))
                        (if (gx#stx-pair? _tl1665416675_)
                            (let ((_e1665516678_ (gx#syntax-e _tl1665416675_)))
                              (let ((_hd1665616681_ (##car _e1665516678_))
                                    (_tl1665716683_ (##cdr _e1665516678_)))
                                (let ((_hd16686_ _hd1665616681_))
                                  (if (gx#stx-pair? _tl1665716683_)
                                      (let ((_e1665816688_
                                             (gx#syntax-e _tl1665716683_)))
                                        (let ((_hd1665916691_
                                               (##car _e1665816688_))
                                              (_tl1666016693_
                                               (##cdr _e1665816688_)))
                                          (let ((_alias-id16696_
                                                 _hd1665916691_))
                                            (if (gx#stx-null? _tl1666016693_)
                                                (if '#t
                                                    (cons '%#define-alias
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd16686_)
                        (cons (gx#core-quote-syntax__0 _alias-id16696_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1665116666_))
                                                (_E1665116666_)))))
                                      (_E1665116666_)))))
                            (_E1665116666_))))
                    (_E1665116666_)))))
        (_E1665016698_))))
  (define gx#core-compile-top-define-runtime%
    (lambda (_stx16594_)
      (let* ((_e1659516608_ _stx16594_)
             (_E1659716612_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1659516608_)))
             (_E1659616644_
              (lambda ()
                (if (gx#stx-pair? _e1659516608_)
                    (let ((_e1659816616_ (gx#syntax-e _e1659516608_)))
                      (let ((_hd1659916619_ (##car _e1659816616_))
                            (_tl1660016621_ (##cdr _e1659816616_)))
                        (if (gx#stx-pair? _tl1660016621_)
                            (let ((_e1660116624_ (gx#syntax-e _tl1660016621_)))
                              (let ((_hd1660216627_ (##car _e1660116624_))
                                    (_tl1660316629_ (##cdr _e1660116624_)))
                                (let ((_id16632_ _hd1660216627_))
                                  (if (gx#stx-pair? _tl1660316629_)
                                      (let ((_e1660416634_
                                             (gx#syntax-e _tl1660316629_)))
                                        (let ((_hd1660516637_
                                               (##car _e1660416634_))
                                              (_tl1660616639_
                                               (##cdr _e1660416634_)))
                                          (let ((_binding-id16642_
                                                 _hd1660516637_))
                                            (if (gx#stx-null? _tl1660616639_)
                                                (if '#t
                                                    (cons '%#define-runtime
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _id16632_)
                        (cons (gx#core-quote-syntax__0 _binding-id16642_)
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1659716612_))
                                                (_E1659716612_)))))
                                      (_E1659716612_)))))
                            (_E1659716612_))))
                    (_E1659716612_)))))
        (_E1659616644_))))
  (define gx#core-compile-top-declare%
    (lambda (_stx16564_)
      (let* ((_e1656516572_ _stx16564_)
             (_E1656716576_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1656516572_)))
             (_E1656616590_
              (lambda ()
                (if (gx#stx-pair? _e1656516572_)
                    (let ((_e1656816580_ (gx#syntax-e _e1656516572_)))
                      (let ((_hd1656916583_ (##car _e1656816580_))
                            (_tl1657016585_ (##cdr _e1656816580_)))
                        (let ((_decls16588_ _tl1657016585_))
                          (if '#t
                              (cons '%#declare _decls16588_)
                              (_E1656716576_)))))
                    (_E1656716576_)))))
        (_E1656616590_))))
  (define gx#core-compile-top-lambda%
    (lambda (_stx16534_)
      (let* ((_e1653516542_ _stx16534_)
             (_E1653716546_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1653516542_)))
             (_E1653616560_
              (lambda ()
                (if (gx#stx-pair? _e1653516542_)
                    (let ((_e1653816550_ (gx#syntax-e _e1653516542_)))
                      (let ((_hd1653916553_ (##car _e1653816550_))
                            (_tl1654016555_ (##cdr _e1653816550_)))
                        (let ((_clause16558_ _tl1654016555_))
                          (if '#t
                              (cons '%#lambda
                                    (gx#core-compile-top-lambda-clause
                                     _clause16558_))
                              (_E1653716546_)))))
                    (_E1653716546_)))))
        (_E1653616560_))))
  (define gx#core-compile-top-lambda-clause
    (lambda (_stx16491_)
      (let* ((_e1649216502_ _stx16491_)
             (_E1649416506_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1649216502_)))
             (_E1649316530_
              (lambda ()
                (if (gx#stx-pair? _e1649216502_)
                    (let ((_e1649516510_ (gx#syntax-e _e1649216502_)))
                      (let ((_hd1649616513_ (##car _e1649516510_))
                            (_tl1649716515_ (##cdr _e1649516510_)))
                        (let ((_hd16518_ _hd1649616513_))
                          (if (gx#stx-pair? _tl1649716515_)
                              (let ((_e1649816520_
                                     (gx#syntax-e _tl1649716515_)))
                                (let ((_hd1649916523_ (##car _e1649816520_))
                                      (_tl1650016525_ (##cdr _e1649816520_)))
                                  (let ((_body16528_ _hd1649916523_))
                                    (if (gx#stx-null? _tl1650016525_)
                                        (if '#t
                                            (cons (gx#stx-map1
                                                   gx#core-compile-top-runtime-bind
                                                   _hd16518_)
                                                  (cons (gx#core-compile-top-syntax
                                                         _body16528_)
                                                        '()))
                                            (_E1649416506_))
                                        (_E1649416506_)))))
                              (_E1649416506_)))))
                    (_E1649416506_)))))
        (_E1649316530_))))
  (define gx#core-compile-top-case-lambda%
    (lambda (_stx16461_)
      (let* ((_e1646216469_ _stx16461_)
             (_E1646416473_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1646216469_)))
             (_E1646316487_
              (lambda ()
                (if (gx#stx-pair? _e1646216469_)
                    (let ((_e1646516477_ (gx#syntax-e _e1646216469_)))
                      (let ((_hd1646616480_ (##car _e1646516477_))
                            (_tl1646716482_ (##cdr _e1646516477_)))
                        (let ((_clauses16485_ _tl1646716482_))
                          (if '#t
                              (cons '%#case-lambda
                                    (gx#stx-map1
                                     gx#core-compile-top-lambda-clause
                                     _clauses16485_))
                              (_E1646416473_)))))
                    (_E1646416473_)))))
        (_E1646316487_))))
  (begin
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx16396_ _form16397_)
        (let* ((_e1639816411_ _stx16396_)
               (_E1640016415_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1639816411_)))
               (_E1639916447_
                (lambda ()
                  (if (gx#stx-pair? _e1639816411_)
                      (let ((_e1640116419_ (gx#syntax-e _e1639816411_)))
                        (let ((_hd1640216422_ (##car _e1640116419_))
                              (_tl1640316424_ (##cdr _e1640116419_)))
                          (if (gx#stx-pair? _tl1640316424_)
                              (let ((_e1640416427_
                                     (gx#syntax-e _tl1640316424_)))
                                (let ((_hd1640516430_ (##car _e1640416427_))
                                      (_tl1640616432_ (##cdr _e1640416427_)))
                                  (let ((_hd16435_ _hd1640516430_))
                                    (if (gx#stx-pair? _tl1640616432_)
                                        (let ((_e1640716437_
                                               (gx#syntax-e _tl1640616432_)))
                                          (let ((_hd1640816440_
                                                 (##car _e1640716437_))
                                                (_tl1640916442_
                                                 (##cdr _e1640716437_)))
                                            (let ((_body16445_ _hd1640816440_))
                                              (if (gx#stx-null? _tl1640916442_)
                                                  (if '#t
                                                      (cons _form16397_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd16435_)
                          (cons (gx#core-compile-top-syntax _body16445_) '())))
              (_E1640016415_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1640016415_)))))
                                        (_E1640016415_)))))
                              (_E1640016415_))))
                      (_E1640016415_)))))
          (_E1639916447_))))
    (begin
      (define gx#core-compile-top-let-values%__0
        (lambda (_stx16454_)
          (let ((_form16456_ '%#let-values))
            (gx#core-compile-top-let-values%__% _stx16454_ _form16456_))))
      (define gx#core-compile-top-let-values%
        (lambda _g17360_
          (let ((_g17359_ (length _g17360_)))
            (cond ((##fx= _g17359_ 1)
                   (apply gx#core-compile-top-let-values%__0 _g17360_))
                  ((##fx= _g17359_ 2)
                   (apply gx#core-compile-top-let-values%__% _g17360_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-compile-top-let-values%
                    _g17360_))))))))
  (define gx#core-compile-top-letrec-values%
    (lambda (_stx16393_)
      (gx#core-compile-top-let-values%__% _stx16393_ '%#letrec-values)))
  (define gx#core-compile-top-letrec*-values%
    (lambda (_stx16391_)
      (gx#core-compile-top-let-values%__% _stx16391_ '%#letrec*-values)))
  (define gx#core-compile-top-quote%
    (lambda (_stx16350_)
      (let* ((_e1635116361_ _stx16350_)
             (_E1635316365_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1635116361_)))
             (_E1635216387_
              (lambda ()
                (if (gx#stx-pair? _e1635116361_)
                    (let ((_e1635416369_ (gx#syntax-e _e1635116361_)))
                      (let ((_hd1635516372_ (##car _e1635416369_))
                            (_tl1635616374_ (##cdr _e1635416369_)))
                        (if (gx#stx-pair? _tl1635616374_)
                            (let ((_e1635716377_ (gx#syntax-e _tl1635616374_)))
                              (let ((_hd1635816380_ (##car _e1635716377_))
                                    (_tl1635916382_ (##cdr _e1635716377_)))
                                (let ((_e16385_ _hd1635816380_))
                                  (if (gx#stx-null? _tl1635916382_)
                                      (if '#t
                                          (cons '%#quote
                                                (cons (gx#syntax->datum
                                                       _e16385_)
                                                      '()))
                                          (_E1635316365_))
                                      (_E1635316365_)))))
                            (_E1635316365_))))
                    (_E1635316365_)))))
        (_E1635216387_))))
  (define gx#core-compile-top-quote-syntax%
    (lambda (_stx16309_)
      (let* ((_e1631016320_ _stx16309_)
             (_E1631216324_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1631016320_)))
             (_E1631116346_
              (lambda ()
                (if (gx#stx-pair? _e1631016320_)
                    (let ((_e1631316328_ (gx#syntax-e _e1631016320_)))
                      (let ((_hd1631416331_ (##car _e1631316328_))
                            (_tl1631516333_ (##cdr _e1631316328_)))
                        (if (gx#stx-pair? _tl1631516333_)
                            (let ((_e1631616336_ (gx#syntax-e _tl1631516333_)))
                              (let ((_hd1631716339_ (##car _e1631616336_))
                                    (_tl1631816341_ (##cdr _e1631616336_)))
                                (let ((_e16344_ _hd1631716339_))
                                  (if (gx#stx-null? _tl1631816341_)
                                      (if '#t
                                          (cons '%#quote-syntax
                                                (cons (gx#core-quote-syntax__0
                                                       _e16344_)
                                                      '()))
                                          (_E1631216324_))
                                      (_E1631216324_)))))
                            (_E1631216324_))))
                    (_E1631216324_)))))
        (_E1631116346_))))
  (define gx#core-compile-top-call%
    (lambda (_stx16266_)
      (let* ((_e1626716277_ _stx16266_)
             (_E1626916281_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1626716277_)))
             (_E1626816305_
              (lambda ()
                (if (gx#stx-pair? _e1626716277_)
                    (let ((_e1627016285_ (gx#syntax-e _e1626716277_)))
                      (let ((_hd1627116288_ (##car _e1627016285_))
                            (_tl1627216290_ (##cdr _e1627016285_)))
                        (if (gx#stx-pair? _tl1627216290_)
                            (let ((_e1627316293_ (gx#syntax-e _tl1627216290_)))
                              (let ((_hd1627416296_ (##car _e1627316293_))
                                    (_tl1627516298_ (##cdr _e1627316293_)))
                                (let* ((_rator16301_ _hd1627416296_)
                                       (_args16303_ _tl1627516298_))
                                  (if '#t
                                      (cons '%#call
                                            (cons (gx#core-compile-top-syntax
                                                   _rator16301_)
                                                  (gx#stx-map1
                                                   gx#core-compile-top-syntax
                                                   _args16303_)))
                                      (_E1626916281_)))))
                            (_E1626916281_))))
                    (_E1626916281_)))))
        (_E1626816305_))))
  (define gx#core-compile-top-if%
    (lambda (_stx16199_)
      (let* ((_e1620016216_ _stx16199_)
             (_E1620216220_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1620016216_)))
             (_E1620116262_
              (lambda ()
                (if (gx#stx-pair? _e1620016216_)
                    (let ((_e1620316224_ (gx#syntax-e _e1620016216_)))
                      (let ((_hd1620416227_ (##car _e1620316224_))
                            (_tl1620516229_ (##cdr _e1620316224_)))
                        (if (gx#stx-pair? _tl1620516229_)
                            (let ((_e1620616232_ (gx#syntax-e _tl1620516229_)))
                              (let ((_hd1620716235_ (##car _e1620616232_))
                                    (_tl1620816237_ (##cdr _e1620616232_)))
                                (let ((_test16240_ _hd1620716235_))
                                  (if (gx#stx-pair? _tl1620816237_)
                                      (let ((_e1620916242_
                                             (gx#syntax-e _tl1620816237_)))
                                        (let ((_hd1621016245_
                                               (##car _e1620916242_))
                                              (_tl1621116247_
                                               (##cdr _e1620916242_)))
                                          (let ((_K16250_ _hd1621016245_))
                                            (if (gx#stx-pair? _tl1621116247_)
                                                (let ((_e1621216252_
                                                       (gx#syntax-e
                                                        _tl1621116247_)))
                                                  (let ((_hd1621316255_
                                                         (##car _e1621216252_))
                                                        (_tl1621416257_
                                                         (##cdr _e1621216252_)))
                                                    (let ((_E16260_
                                                           _hd1621316255_))
                                                      (if (gx#stx-null?
                                                           _tl1621416257_)
                                                          (if '#t
                                                              (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gx#core-compile-top-syntax _test16240_)
                                  (cons (gx#core-compile-top-syntax _K16250_)
                                        (cons (gx#core-compile-top-syntax
                                               _E16260_)
                                              '()))))
                      (_E1620216220_))
                  (_E1620216220_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1620216220_)))))
                                      (_E1620216220_)))))
                            (_E1620216220_))))
                    (_E1620216220_)))))
        (_E1620116262_))))
  (define gx#core-compile-top-ref%
    (lambda (_stx16158_)
      (let* ((_e1615916169_ _stx16158_)
             (_E1616116173_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1615916169_)))
             (_E1616016195_
              (lambda ()
                (if (gx#stx-pair? _e1615916169_)
                    (let ((_e1616216177_ (gx#syntax-e _e1615916169_)))
                      (let ((_hd1616316180_ (##car _e1616216177_))
                            (_tl1616416182_ (##cdr _e1616216177_)))
                        (if (gx#stx-pair? _tl1616416182_)
                            (let ((_e1616516185_ (gx#syntax-e _tl1616416182_)))
                              (let ((_hd1616616188_ (##car _e1616516185_))
                                    (_tl1616716190_ (##cdr _e1616516185_)))
                                (let ((_id16193_ _hd1616616188_))
                                  (if (gx#stx-null? _tl1616716190_)
                                      (if (gx#identifier? _id16193_)
                                          (cons '%#ref
                                                (cons (gx#core-compile-top-runtime-ref
                                                       _id16193_)
                                                      '()))
                                          (_E1616116173_))
                                      (_E1616116173_)))))
                            (_E1616116173_))))
                    (_E1616116173_)))))
        (_E1616016195_))))
  (define gx#core-compile-top-setq%
    (lambda (_stx16104_)
      (let* ((_e1610516118_ _stx16104_)
             (_E1610716122_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1610516118_)))
             (_E1610616154_
              (lambda ()
                (if (gx#stx-pair? _e1610516118_)
                    (let ((_e1610816126_ (gx#syntax-e _e1610516118_)))
                      (let ((_hd1610916129_ (##car _e1610816126_))
                            (_tl1611016131_ (##cdr _e1610816126_)))
                        (if (gx#stx-pair? _tl1611016131_)
                            (let ((_e1611116134_ (gx#syntax-e _tl1611016131_)))
                              (let ((_hd1611216137_ (##car _e1611116134_))
                                    (_tl1611316139_ (##cdr _e1611116134_)))
                                (let ((_id16142_ _hd1611216137_))
                                  (if (gx#stx-pair? _tl1611316139_)
                                      (let ((_e1611416144_
                                             (gx#syntax-e _tl1611316139_)))
                                        (let ((_hd1611516147_
                                               (##car _e1611416144_))
                                              (_tl1611616149_
                                               (##cdr _e1611416144_)))
                                          (let ((_expr16152_ _hd1611516147_))
                                            (if (gx#stx-null? _tl1611616149_)
                                                (if (gx#identifier? _id16142_)
                                                    (cons '%#set!
                                                          (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _id16142_)
                        (cons (gx#core-compile-top-syntax _expr16152_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1610716122_))
                                                (_E1610716122_)))))
                                      (_E1610716122_)))))
                            (_E1610716122_))))
                    (_E1610716122_)))))
        (_E1610616154_))))
  (define gx#core-compile-top-runtime-ref
    (lambda (_id16099_)
      (let ((_$e16101_ (gx#resolve-identifier__0 _id16099_)))
        (if _$e16101_
            (##structure-ref _$e16101_ '1 gx#binding::t '#f)
            _id16099_))))
  (define gx#core-compile-top-runtime-bind
    (lambda (_hd16097_)
      (if (gx#identifier? _hd16097_)
          (gx#core-compile-top-runtime-ref _hd16097_)
          '#f))))
