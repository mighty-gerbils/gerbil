(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-compile-top-syntax
    (lambda (_stx17262_)
      (let* ((_e1726317270_ _stx17262_)
             (_E1726517274_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1726317270_)))
             (_E1726417288_
              (lambda ()
                (if (gx#stx-pair? _e1726317270_)
                    (let ((_e1726617278_ (gx#syntax-e _e1726317270_)))
                      (let ((_hd1726717281_ (##car _e1726617278_))
                            (_tl1726817283_ (##cdr _e1726617278_)))
                        (let ((_form17286_ _hd1726717281_))
                          (if '#t
                              (call-method
                               (gx#syntax-local-e__0 _form17286_)
                               'compile-top-syntax
                               _stx17262_)
                              (_E1726517274_)))))
                    (_E1726517274_)))))
        (_E1726417288_))))
  (define gx#core-expander::compile-top-syntax
    (lambda (_self17222_ _stx17223_)
      (let* ((_self1722417232_ _self17222_)
             (_E1722617236_
              (lambda () (error '"No clause matching" _self1722417232_)))
             (_K1722717248_
              (lambda (_K17239_)
                (let ((_$e17241_ (gx#stx-source _stx17223_)))
                  (if _$e17241_
                      ((lambda (_g1724317245_)
                         (gx#stx-wrap-source
                          (_K17239_ _stx17223_)
                          _g1724317245_))
                       _$e17241_)
                      (_K17239_ _stx17223_))))))
        (if (##structure-instance-of? _self1722417232_ 'gx#core-expander::t)
            (let* ((_e1722817251_ (##vector-ref _self1722417232_ '1))
                   (_e1722917254_ (##vector-ref _self1722417232_ '2))
                   (_e1723017257_ (##vector-ref _self1722417232_ '3))
                   (_K17260_ _e1723017257_))
              (_K1722717248_ _K17260_))
            (_E1722617236_)))))
  (bind-method!
   gx#core-expander::t
   'compile-top-syntax
   gx#core-expander::compile-top-syntax
   '#f)
  (define gx#core-compile-top-error
    (lambda (_stx17096_)
      (gx#raise-syntax-error 'compile '"Cannot compile form" _stx17096_)))
  (define gx#core-compile-top-begin%
    (lambda (_stx17066_)
      (let* ((_e1706717074_ _stx17066_)
             (_E1706917078_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1706717074_)))
             (_E1706817092_
              (lambda ()
                (if (gx#stx-pair? _e1706717074_)
                    (let ((_e1707017082_ (gx#syntax-e _e1706717074_)))
                      (let ((_hd1707117085_ (##car _e1707017082_))
                            (_tl1707217087_ (##cdr _e1707017082_)))
                        (let ((_body17090_ _tl1707217087_))
                          (if '#t
                              (cons '%#begin
                                    (gx#stx-map1
                                     gx#core-compile-top-syntax
                                     _body17090_))
                              (_E1706917078_)))))
                    (_E1706917078_)))))
        (_E1706817092_))))
  (define gx#core-compile-top-begin-syntax%
    (lambda (_stx17035_)
      (let* ((_e1703617043_ _stx17035_)
             (_E1703817047_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1703617043_)))
             (_E1703717062_
              (lambda ()
                (if (gx#stx-pair? _e1703617043_)
                    (let ((_e1703917051_ (gx#syntax-e _e1703617043_)))
                      (let ((_hd1704017054_ (##car _e1703917051_))
                            (_tl1704117056_ (##cdr _e1703917051_)))
                        (let ((_body17059_ _tl1704117056_))
                          (if '#t
                              (cons '%#begin-syntax
                                    (call-with-parameters
                                     (lambda ()
                                       (gx#stx-map1
                                        gx#core-compile-top-syntax
                                        _body17059_))
                                     gx#current-expander-phi
                                     (fx+ (gx#current-expander-phi) '1)))
                              (_E1703817047_)))))
                    (_E1703817047_)))))
        (_E1703717062_))))
  (define gx#core-compile-top-begin-foreign%
    (lambda (_stx17005_)
      (let* ((_e1700617013_ _stx17005_)
             (_E1700817017_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1700617013_)))
             (_E1700717031_
              (lambda ()
                (if (gx#stx-pair? _e1700617013_)
                    (let ((_e1700917021_ (gx#syntax-e _e1700617013_)))
                      (let ((_hd1701017024_ (##car _e1700917021_))
                            (_tl1701117026_ (##cdr _e1700917021_)))
                        (let ((_body17029_ _tl1701117026_))
                          (if '#t
                              (cons '%#begin-foreign _body17029_)
                              (_E1700817017_)))))
                    (_E1700817017_)))))
        (_E1700717031_))))
  (define gx#core-compile-top-begin-annotation%
    (lambda (_stx16951_)
      (let* ((_e1695216965_ _stx16951_)
             (_E1695416969_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1695216965_)))
             (_E1695317001_
              (lambda ()
                (if (gx#stx-pair? _e1695216965_)
                    (let ((_e1695516973_ (gx#syntax-e _e1695216965_)))
                      (let ((_hd1695616976_ (##car _e1695516973_))
                            (_tl1695716978_ (##cdr _e1695516973_)))
                        (if (gx#stx-pair? _tl1695716978_)
                            (let ((_e1695816981_ (gx#syntax-e _tl1695716978_)))
                              (let ((_hd1695916984_ (##car _e1695816981_))
                                    (_tl1696016986_ (##cdr _e1695816981_)))
                                (let ((_ann16989_ _hd1695916984_))
                                  (if (gx#stx-pair? _tl1696016986_)
                                      (let ((_e1696116991_
                                             (gx#syntax-e _tl1696016986_)))
                                        (let ((_hd1696216994_
                                               (##car _e1696116991_))
                                              (_tl1696316996_
                                               (##cdr _e1696116991_)))
                                          (let ((_expr16999_ _hd1696216994_))
                                            (if (gx#stx-null? _tl1696316996_)
                                                (if '#t
                                                    (gx#core-compile-top-syntax
                                                     _expr16999_)
                                                    (_E1695416969_))
                                                (_E1695416969_)))))
                                      (_E1695416969_)))))
                            (_E1695416969_))))
                    (_E1695416969_)))))
        (_E1695317001_))))
  (define gx#core-compile-top-import%
    (lambda (_stx16921_)
      (let* ((_e1692216929_ _stx16921_)
             (_E1692416933_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1692216929_)))
             (_E1692316947_
              (lambda ()
                (if (gx#stx-pair? _e1692216929_)
                    (let ((_e1692516937_ (gx#syntax-e _e1692216929_)))
                      (let ((_hd1692616940_ (##car _e1692516937_))
                            (_tl1692716942_ (##cdr _e1692516937_)))
                        (let ((_body16945_ _tl1692716942_))
                          (if '#t
                              (cons '%#import (gx#syntax->list _body16945_))
                              (_E1692416933_)))))
                    (_E1692416933_)))))
        (_E1692316947_))))
  (define gx#core-compile-top-module%
    (lambda (_stx16878_)
      (let* ((_e1687916889_ _stx16878_)
             (_E1688116893_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1687916889_)))
             (_E1688016917_
              (lambda ()
                (if (gx#stx-pair? _e1687916889_)
                    (let ((_e1688216897_ (gx#syntax-e _e1687916889_)))
                      (let ((_hd1688316900_ (##car _e1688216897_))
                            (_tl1688416902_ (##cdr _e1688216897_)))
                        (if (gx#stx-pair? _tl1688416902_)
                            (let ((_e1688516905_ (gx#syntax-e _tl1688416902_)))
                              (let ((_hd1688616908_ (##car _e1688516905_))
                                    (_tl1688716910_ (##cdr _e1688516905_)))
                                (let* ((_hd16913_ _hd1688616908_)
                                       (_body16915_ _tl1688716910_))
                                  (if '#t
                                      (cons '%#module
                                            (cons (##structure-ref
                                                   (gx#syntax-local-e__0
                                                    _hd16913_)
                                                   '1
                                                   gx#expander-context::t
                                                   '#f)
                                                  (gx#stx-map1
                                                   gx#core-compile-top-syntax
                                                   _body16915_)))
                                      (_E1688116893_)))))
                            (_E1688116893_))))
                    (_E1688116893_)))))
        (_E1688016917_))))
  (define gx#core-compile-top-export%
    (lambda (_stx16848_)
      (let* ((_e1684916856_ _stx16848_)
             (_E1685116860_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1684916856_)))
             (_E1685016874_
              (lambda ()
                (if (gx#stx-pair? _e1684916856_)
                    (let ((_e1685216864_ (gx#syntax-e _e1684916856_)))
                      (let ((_hd1685316867_ (##car _e1685216864_))
                            (_tl1685416869_ (##cdr _e1685216864_)))
                        (let ((_body16872_ _tl1685416869_))
                          (if '#t
                              (cons '%#export (gx#syntax->list _body16872_))
                              (_E1685116860_)))))
                    (_E1685116860_)))))
        (_E1685016874_))))
  (define gx#core-compile-top-provide%
    (lambda (_stx16818_)
      (let* ((_e1681916826_ _stx16818_)
             (_E1682116830_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1681916826_)))
             (_E1682016844_
              (lambda ()
                (if (gx#stx-pair? _e1681916826_)
                    (let ((_e1682216834_ (gx#syntax-e _e1681916826_)))
                      (let ((_hd1682316837_ (##car _e1682216834_))
                            (_tl1682416839_ (##cdr _e1682216834_)))
                        (let ((_body16842_ _tl1682416839_))
                          (if '#t
                              (cons '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body16842_))
                              (_E1682116830_)))))
                    (_E1682116830_)))))
        (_E1682016844_))))
  (define gx#core-compile-top-extern%
    (lambda (_stx16743_)
      (letrec ((_generate16745_
                (lambda (_hd16775_)
                  (let* ((_e1677616786_ _hd16775_)
                         (_E1677816790_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e1677616786_)))
                         (_E1677716814_
                          (lambda ()
                            (if (gx#stx-pair? _e1677616786_)
                                (let ((_e1677916794_
                                       (gx#syntax-e _e1677616786_)))
                                  (let ((_hd1678016797_ (##car _e1677916794_))
                                        (_tl1678116799_ (##cdr _e1677916794_)))
                                    (let ((_id16802_ _hd1678016797_))
                                      (if (gx#stx-pair? _tl1678116799_)
                                          (let ((_e1678216804_
                                                 (gx#syntax-e _tl1678116799_)))
                                            (let ((_hd1678316807_
                                                   (##car _e1678216804_))
                                                  (_tl1678416809_
                                                   (##cdr _e1678216804_)))
                                              (let ((_eid16812_
                                                     _hd1678316807_))
                                                (if (gx#stx-null?
                                                     _tl1678416809_)
                                                    (if '#t
                                                        (cons (gx#core-quote-syntax__0
                                                               _id16802_)
                                                              (cons (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _eid16812_)
                            '()))
                (_E1677816790_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1677816790_)))))
                                          (_E1677816790_)))))
                                (_E1677816790_)))))
                    (_E1677716814_)))))
        (let* ((_e1674616753_ _stx16743_)
               (_E1674816757_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1674616753_)))
               (_E1674716771_
                (lambda ()
                  (if (gx#stx-pair? _e1674616753_)
                      (let ((_e1674916761_ (gx#syntax-e _e1674616753_)))
                        (let ((_hd1675016764_ (##car _e1674916761_))
                              (_tl1675116766_ (##cdr _e1674916761_)))
                          (let ((_body16769_ _tl1675116766_))
                            (if '#t
                                (cons '%#extern
                                      (gx#stx-map1
                                       _generate16745_
                                       _body16769_))
                                (_E1674816757_)))))
                      (_E1674816757_)))))
          (_E1674716771_)))))
  (define gx#core-compile-top-define-values%
    (lambda (_stx16689_)
      (let* ((_e1669016703_ _stx16689_)
             (_E1669216707_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1669016703_)))
             (_E1669116739_
              (lambda ()
                (if (gx#stx-pair? _e1669016703_)
                    (let ((_e1669316711_ (gx#syntax-e _e1669016703_)))
                      (let ((_hd1669416714_ (##car _e1669316711_))
                            (_tl1669516716_ (##cdr _e1669316711_)))
                        (if (gx#stx-pair? _tl1669516716_)
                            (let ((_e1669616719_ (gx#syntax-e _tl1669516716_)))
                              (let ((_hd1669716722_ (##car _e1669616719_))
                                    (_tl1669816724_ (##cdr _e1669616719_)))
                                (let ((_hd16727_ _hd1669716722_))
                                  (if (gx#stx-pair? _tl1669816724_)
                                      (let ((_e1669916729_
                                             (gx#syntax-e _tl1669816724_)))
                                        (let ((_hd1670016732_
                                               (##car _e1669916729_))
                                              (_tl1670116734_
                                               (##cdr _e1669916729_)))
                                          (let ((_expr16737_ _hd1670016732_))
                                            (if (gx#stx-null? _tl1670116734_)
                                                (if '#t
                                                    (cons '%#define-values
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#core-compile-top-runtime-bind
                         _hd16727_)
                        (cons (gx#core-compile-top-syntax _expr16737_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1669216707_))
                                                (_E1669216707_)))))
                                      (_E1669216707_)))))
                            (_E1669216707_))))
                    (_E1669216707_)))))
        (_E1669116739_))))
  (define gx#core-compile-top-define-syntax%
    (lambda (_stx16634_)
      (let* ((_e1663516648_ _stx16634_)
             (_E1663716652_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1663516648_)))
             (_E1663616685_
              (lambda ()
                (if (gx#stx-pair? _e1663516648_)
                    (let ((_e1663816656_ (gx#syntax-e _e1663516648_)))
                      (let ((_hd1663916659_ (##car _e1663816656_))
                            (_tl1664016661_ (##cdr _e1663816656_)))
                        (if (gx#stx-pair? _tl1664016661_)
                            (let ((_e1664116664_ (gx#syntax-e _tl1664016661_)))
                              (let ((_hd1664216667_ (##car _e1664116664_))
                                    (_tl1664316669_ (##cdr _e1664116664_)))
                                (let ((_hd16672_ _hd1664216667_))
                                  (if (gx#stx-pair? _tl1664316669_)
                                      (let ((_e1664416674_
                                             (gx#syntax-e _tl1664316669_)))
                                        (let ((_hd1664516677_
                                               (##car _e1664416674_))
                                              (_tl1664616679_
                                               (##cdr _e1664416674_)))
                                          (let ((_expr16682_ _hd1664516677_))
                                            (if (gx#stx-null? _tl1664616679_)
                                                (if '#t
                                                    (cons '%#define-syntax
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd16672_)
                        (cons (call-with-parameters
                               (lambda ()
                                 (gx#core-compile-top-syntax _expr16682_))
                               gx#current-expander-phi
                               (fx+ (gx#current-expander-phi) '1))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1663716652_))
                                                (_E1663716652_)))))
                                      (_E1663716652_)))))
                            (_E1663716652_))))
                    (_E1663716652_)))))
        (_E1663616685_))))
  (define gx#core-compile-top-define-alias%
    (lambda (_stx16580_)
      (let* ((_e1658116594_ _stx16580_)
             (_E1658316598_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1658116594_)))
             (_E1658216630_
              (lambda ()
                (if (gx#stx-pair? _e1658116594_)
                    (let ((_e1658416602_ (gx#syntax-e _e1658116594_)))
                      (let ((_hd1658516605_ (##car _e1658416602_))
                            (_tl1658616607_ (##cdr _e1658416602_)))
                        (if (gx#stx-pair? _tl1658616607_)
                            (let ((_e1658716610_ (gx#syntax-e _tl1658616607_)))
                              (let ((_hd1658816613_ (##car _e1658716610_))
                                    (_tl1658916615_ (##cdr _e1658716610_)))
                                (let ((_hd16618_ _hd1658816613_))
                                  (if (gx#stx-pair? _tl1658916615_)
                                      (let ((_e1659016620_
                                             (gx#syntax-e _tl1658916615_)))
                                        (let ((_hd1659116623_
                                               (##car _e1659016620_))
                                              (_tl1659216625_
                                               (##cdr _e1659016620_)))
                                          (let ((_alias-id16628_
                                                 _hd1659116623_))
                                            (if (gx#stx-null? _tl1659216625_)
                                                (if '#t
                                                    (cons '%#define-alias
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd16618_)
                        (cons (gx#core-quote-syntax__0 _alias-id16628_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1658316598_))
                                                (_E1658316598_)))))
                                      (_E1658316598_)))))
                            (_E1658316598_))))
                    (_E1658316598_)))))
        (_E1658216630_))))
  (define gx#core-compile-top-define-runtime%
    (lambda (_stx16526_)
      (let* ((_e1652716540_ _stx16526_)
             (_E1652916544_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1652716540_)))
             (_E1652816576_
              (lambda ()
                (if (gx#stx-pair? _e1652716540_)
                    (let ((_e1653016548_ (gx#syntax-e _e1652716540_)))
                      (let ((_hd1653116551_ (##car _e1653016548_))
                            (_tl1653216553_ (##cdr _e1653016548_)))
                        (if (gx#stx-pair? _tl1653216553_)
                            (let ((_e1653316556_ (gx#syntax-e _tl1653216553_)))
                              (let ((_hd1653416559_ (##car _e1653316556_))
                                    (_tl1653516561_ (##cdr _e1653316556_)))
                                (let ((_id16564_ _hd1653416559_))
                                  (if (gx#stx-pair? _tl1653516561_)
                                      (let ((_e1653616566_
                                             (gx#syntax-e _tl1653516561_)))
                                        (let ((_hd1653716569_
                                               (##car _e1653616566_))
                                              (_tl1653816571_
                                               (##cdr _e1653616566_)))
                                          (let ((_binding-id16574_
                                                 _hd1653716569_))
                                            (if (gx#stx-null? _tl1653816571_)
                                                (if '#t
                                                    (cons '%#define-runtime
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _id16564_)
                        (cons (gx#core-quote-syntax__0 _binding-id16574_)
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1652916544_))
                                                (_E1652916544_)))))
                                      (_E1652916544_)))))
                            (_E1652916544_))))
                    (_E1652916544_)))))
        (_E1652816576_))))
  (define gx#core-compile-top-declare%
    (lambda (_stx16496_)
      (let* ((_e1649716504_ _stx16496_)
             (_E1649916508_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1649716504_)))
             (_E1649816522_
              (lambda ()
                (if (gx#stx-pair? _e1649716504_)
                    (let ((_e1650016512_ (gx#syntax-e _e1649716504_)))
                      (let ((_hd1650116515_ (##car _e1650016512_))
                            (_tl1650216517_ (##cdr _e1650016512_)))
                        (let ((_decls16520_ _tl1650216517_))
                          (if '#t
                              (cons '%#declare _decls16520_)
                              (_E1649916508_)))))
                    (_E1649916508_)))))
        (_E1649816522_))))
  (define gx#core-compile-top-lambda%
    (lambda (_stx16466_)
      (let* ((_e1646716474_ _stx16466_)
             (_E1646916478_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1646716474_)))
             (_E1646816492_
              (lambda ()
                (if (gx#stx-pair? _e1646716474_)
                    (let ((_e1647016482_ (gx#syntax-e _e1646716474_)))
                      (let ((_hd1647116485_ (##car _e1647016482_))
                            (_tl1647216487_ (##cdr _e1647016482_)))
                        (let ((_clause16490_ _tl1647216487_))
                          (if '#t
                              (cons '%#lambda
                                    (gx#core-compile-top-lambda-clause
                                     _clause16490_))
                              (_E1646916478_)))))
                    (_E1646916478_)))))
        (_E1646816492_))))
  (define gx#core-compile-top-lambda-clause
    (lambda (_stx16423_)
      (let* ((_e1642416434_ _stx16423_)
             (_E1642616438_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1642416434_)))
             (_E1642516462_
              (lambda ()
                (if (gx#stx-pair? _e1642416434_)
                    (let ((_e1642716442_ (gx#syntax-e _e1642416434_)))
                      (let ((_hd1642816445_ (##car _e1642716442_))
                            (_tl1642916447_ (##cdr _e1642716442_)))
                        (let ((_hd16450_ _hd1642816445_))
                          (if (gx#stx-pair? _tl1642916447_)
                              (let ((_e1643016452_
                                     (gx#syntax-e _tl1642916447_)))
                                (let ((_hd1643116455_ (##car _e1643016452_))
                                      (_tl1643216457_ (##cdr _e1643016452_)))
                                  (let ((_body16460_ _hd1643116455_))
                                    (if (gx#stx-null? _tl1643216457_)
                                        (if '#t
                                            (cons (gx#stx-map1
                                                   gx#core-compile-top-runtime-bind
                                                   _hd16450_)
                                                  (cons (gx#core-compile-top-syntax
                                                         _body16460_)
                                                        '()))
                                            (_E1642616438_))
                                        (_E1642616438_)))))
                              (_E1642616438_)))))
                    (_E1642616438_)))))
        (_E1642516462_))))
  (define gx#core-compile-top-case-lambda%
    (lambda (_stx16393_)
      (let* ((_e1639416401_ _stx16393_)
             (_E1639616405_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1639416401_)))
             (_E1639516419_
              (lambda ()
                (if (gx#stx-pair? _e1639416401_)
                    (let ((_e1639716409_ (gx#syntax-e _e1639416401_)))
                      (let ((_hd1639816412_ (##car _e1639716409_))
                            (_tl1639916414_ (##cdr _e1639716409_)))
                        (let ((_clauses16417_ _tl1639916414_))
                          (if '#t
                              (cons '%#case-lambda
                                    (gx#stx-map1
                                     gx#core-compile-top-lambda-clause
                                     _clauses16417_))
                              (_E1639616405_)))))
                    (_E1639616405_)))))
        (_E1639516419_))))
  (begin
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx16328_ _form16329_)
        (let* ((_e1633016343_ _stx16328_)
               (_E1633216347_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1633016343_)))
               (_E1633116379_
                (lambda ()
                  (if (gx#stx-pair? _e1633016343_)
                      (let ((_e1633316351_ (gx#syntax-e _e1633016343_)))
                        (let ((_hd1633416354_ (##car _e1633316351_))
                              (_tl1633516356_ (##cdr _e1633316351_)))
                          (if (gx#stx-pair? _tl1633516356_)
                              (let ((_e1633616359_
                                     (gx#syntax-e _tl1633516356_)))
                                (let ((_hd1633716362_ (##car _e1633616359_))
                                      (_tl1633816364_ (##cdr _e1633616359_)))
                                  (let ((_hd16367_ _hd1633716362_))
                                    (if (gx#stx-pair? _tl1633816364_)
                                        (let ((_e1633916369_
                                               (gx#syntax-e _tl1633816364_)))
                                          (let ((_hd1634016372_
                                                 (##car _e1633916369_))
                                                (_tl1634116374_
                                                 (##cdr _e1633916369_)))
                                            (let ((_body16377_ _hd1634016372_))
                                              (if (gx#stx-null? _tl1634116374_)
                                                  (if '#t
                                                      (cons _form16329_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd16367_)
                          (cons (gx#core-compile-top-syntax _body16377_) '())))
              (_E1633216347_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1633216347_)))))
                                        (_E1633216347_)))))
                              (_E1633216347_))))
                      (_E1633216347_)))))
          (_E1633116379_))))
    (begin
      (define gx#core-compile-top-let-values%__0
        (lambda (_stx16386_)
          (let ((_form16388_ '%#let-values))
            (gx#core-compile-top-let-values%__% _stx16386_ _form16388_))))
      (define gx#core-compile-top-let-values%
        (lambda _g17292_
          (let ((_g17291_ (length _g17292_)))
            (cond ((##fx= _g17291_ 1)
                   (apply gx#core-compile-top-let-values%__0 _g17292_))
                  ((##fx= _g17291_ 2)
                   (apply gx#core-compile-top-let-values%__% _g17292_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-compile-top-let-values%
                    _g17292_))))))))
  (define gx#core-compile-top-letrec-values%
    (lambda (_stx16325_)
      (gx#core-compile-top-let-values%__% _stx16325_ '%#letrec-values)))
  (define gx#core-compile-top-letrec*-values%
    (lambda (_stx16323_)
      (gx#core-compile-top-let-values%__% _stx16323_ '%#letrec*-values)))
  (define gx#core-compile-top-quote%
    (lambda (_stx16282_)
      (let* ((_e1628316293_ _stx16282_)
             (_E1628516297_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1628316293_)))
             (_E1628416319_
              (lambda ()
                (if (gx#stx-pair? _e1628316293_)
                    (let ((_e1628616301_ (gx#syntax-e _e1628316293_)))
                      (let ((_hd1628716304_ (##car _e1628616301_))
                            (_tl1628816306_ (##cdr _e1628616301_)))
                        (if (gx#stx-pair? _tl1628816306_)
                            (let ((_e1628916309_ (gx#syntax-e _tl1628816306_)))
                              (let ((_hd1629016312_ (##car _e1628916309_))
                                    (_tl1629116314_ (##cdr _e1628916309_)))
                                (let ((_e16317_ _hd1629016312_))
                                  (if (gx#stx-null? _tl1629116314_)
                                      (if '#t
                                          (cons '%#quote
                                                (cons (gx#syntax->datum
                                                       _e16317_)
                                                      '()))
                                          (_E1628516297_))
                                      (_E1628516297_)))))
                            (_E1628516297_))))
                    (_E1628516297_)))))
        (_E1628416319_))))
  (define gx#core-compile-top-quote-syntax%
    (lambda (_stx16241_)
      (let* ((_e1624216252_ _stx16241_)
             (_E1624416256_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1624216252_)))
             (_E1624316278_
              (lambda ()
                (if (gx#stx-pair? _e1624216252_)
                    (let ((_e1624516260_ (gx#syntax-e _e1624216252_)))
                      (let ((_hd1624616263_ (##car _e1624516260_))
                            (_tl1624716265_ (##cdr _e1624516260_)))
                        (if (gx#stx-pair? _tl1624716265_)
                            (let ((_e1624816268_ (gx#syntax-e _tl1624716265_)))
                              (let ((_hd1624916271_ (##car _e1624816268_))
                                    (_tl1625016273_ (##cdr _e1624816268_)))
                                (let ((_e16276_ _hd1624916271_))
                                  (if (gx#stx-null? _tl1625016273_)
                                      (if '#t
                                          (cons '%#quote-syntax
                                                (cons (gx#core-quote-syntax__0
                                                       _e16276_)
                                                      '()))
                                          (_E1624416256_))
                                      (_E1624416256_)))))
                            (_E1624416256_))))
                    (_E1624416256_)))))
        (_E1624316278_))))
  (define gx#core-compile-top-call%
    (lambda (_stx16198_)
      (let* ((_e1619916209_ _stx16198_)
             (_E1620116213_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1619916209_)))
             (_E1620016237_
              (lambda ()
                (if (gx#stx-pair? _e1619916209_)
                    (let ((_e1620216217_ (gx#syntax-e _e1619916209_)))
                      (let ((_hd1620316220_ (##car _e1620216217_))
                            (_tl1620416222_ (##cdr _e1620216217_)))
                        (if (gx#stx-pair? _tl1620416222_)
                            (let ((_e1620516225_ (gx#syntax-e _tl1620416222_)))
                              (let ((_hd1620616228_ (##car _e1620516225_))
                                    (_tl1620716230_ (##cdr _e1620516225_)))
                                (let* ((_rator16233_ _hd1620616228_)
                                       (_args16235_ _tl1620716230_))
                                  (if '#t
                                      (cons '%#call
                                            (cons (gx#core-compile-top-syntax
                                                   _rator16233_)
                                                  (gx#stx-map1
                                                   gx#core-compile-top-syntax
                                                   _args16235_)))
                                      (_E1620116213_)))))
                            (_E1620116213_))))
                    (_E1620116213_)))))
        (_E1620016237_))))
  (define gx#core-compile-top-if%
    (lambda (_stx16131_)
      (let* ((_e1613216148_ _stx16131_)
             (_E1613416152_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1613216148_)))
             (_E1613316194_
              (lambda ()
                (if (gx#stx-pair? _e1613216148_)
                    (let ((_e1613516156_ (gx#syntax-e _e1613216148_)))
                      (let ((_hd1613616159_ (##car _e1613516156_))
                            (_tl1613716161_ (##cdr _e1613516156_)))
                        (if (gx#stx-pair? _tl1613716161_)
                            (let ((_e1613816164_ (gx#syntax-e _tl1613716161_)))
                              (let ((_hd1613916167_ (##car _e1613816164_))
                                    (_tl1614016169_ (##cdr _e1613816164_)))
                                (let ((_test16172_ _hd1613916167_))
                                  (if (gx#stx-pair? _tl1614016169_)
                                      (let ((_e1614116174_
                                             (gx#syntax-e _tl1614016169_)))
                                        (let ((_hd1614216177_
                                               (##car _e1614116174_))
                                              (_tl1614316179_
                                               (##cdr _e1614116174_)))
                                          (let ((_K16182_ _hd1614216177_))
                                            (if (gx#stx-pair? _tl1614316179_)
                                                (let ((_e1614416184_
                                                       (gx#syntax-e
                                                        _tl1614316179_)))
                                                  (let ((_hd1614516187_
                                                         (##car _e1614416184_))
                                                        (_tl1614616189_
                                                         (##cdr _e1614416184_)))
                                                    (let ((_E16192_
                                                           _hd1614516187_))
                                                      (if (gx#stx-null?
                                                           _tl1614616189_)
                                                          (if '#t
                                                              (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gx#core-compile-top-syntax _test16172_)
                                  (cons (gx#core-compile-top-syntax _K16182_)
                                        (cons (gx#core-compile-top-syntax
                                               _E16192_)
                                              '()))))
                      (_E1613416152_))
                  (_E1613416152_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1613416152_)))))
                                      (_E1613416152_)))))
                            (_E1613416152_))))
                    (_E1613416152_)))))
        (_E1613316194_))))
  (define gx#core-compile-top-ref%
    (lambda (_stx16090_)
      (let* ((_e1609116101_ _stx16090_)
             (_E1609316105_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1609116101_)))
             (_E1609216127_
              (lambda ()
                (if (gx#stx-pair? _e1609116101_)
                    (let ((_e1609416109_ (gx#syntax-e _e1609116101_)))
                      (let ((_hd1609516112_ (##car _e1609416109_))
                            (_tl1609616114_ (##cdr _e1609416109_)))
                        (if (gx#stx-pair? _tl1609616114_)
                            (let ((_e1609716117_ (gx#syntax-e _tl1609616114_)))
                              (let ((_hd1609816120_ (##car _e1609716117_))
                                    (_tl1609916122_ (##cdr _e1609716117_)))
                                (let ((_id16125_ _hd1609816120_))
                                  (if (gx#stx-null? _tl1609916122_)
                                      (if (gx#identifier? _id16125_)
                                          (cons '%#ref
                                                (cons (gx#core-compile-top-runtime-ref
                                                       _id16125_)
                                                      '()))
                                          (_E1609316105_))
                                      (_E1609316105_)))))
                            (_E1609316105_))))
                    (_E1609316105_)))))
        (_E1609216127_))))
  (define gx#core-compile-top-setq%
    (lambda (_stx16036_)
      (let* ((_e1603716050_ _stx16036_)
             (_E1603916054_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1603716050_)))
             (_E1603816086_
              (lambda ()
                (if (gx#stx-pair? _e1603716050_)
                    (let ((_e1604016058_ (gx#syntax-e _e1603716050_)))
                      (let ((_hd1604116061_ (##car _e1604016058_))
                            (_tl1604216063_ (##cdr _e1604016058_)))
                        (if (gx#stx-pair? _tl1604216063_)
                            (let ((_e1604316066_ (gx#syntax-e _tl1604216063_)))
                              (let ((_hd1604416069_ (##car _e1604316066_))
                                    (_tl1604516071_ (##cdr _e1604316066_)))
                                (let ((_id16074_ _hd1604416069_))
                                  (if (gx#stx-pair? _tl1604516071_)
                                      (let ((_e1604616076_
                                             (gx#syntax-e _tl1604516071_)))
                                        (let ((_hd1604716079_
                                               (##car _e1604616076_))
                                              (_tl1604816081_
                                               (##cdr _e1604616076_)))
                                          (let ((_expr16084_ _hd1604716079_))
                                            (if (gx#stx-null? _tl1604816081_)
                                                (if (gx#identifier? _id16074_)
                                                    (cons '%#set!
                                                          (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _id16074_)
                        (cons (gx#core-compile-top-syntax _expr16084_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1603916054_))
                                                (_E1603916054_)))))
                                      (_E1603916054_)))))
                            (_E1603916054_))))
                    (_E1603916054_)))))
        (_E1603816086_))))
  (define gx#core-compile-top-runtime-ref
    (lambda (_id16031_)
      (let ((_$e16033_ (gx#resolve-identifier__0 _id16031_)))
        (if _$e16033_
            (##structure-ref _$e16033_ '1 gx#binding::t '#f)
            _id16031_))))
  (define gx#core-compile-top-runtime-bind
    (lambda (_hd16029_)
      (if (gx#identifier? _hd16029_)
          (gx#core-compile-top-runtime-ref _hd16029_)
          '#f))))
