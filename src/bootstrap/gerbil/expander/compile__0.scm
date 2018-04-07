(declare (block) (standard-bindings) (extended-bindings))
(begin
  (declare (not safe))
  (define gx#core-compile-top-syntax
    (lambda (_stx17299_)
      (let* ((_e1730017307_ _stx17299_)
             (_E1730217311_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1730017307_)))
             (_E1730117325_
              (lambda ()
                (if (gx#stx-pair? _e1730017307_)
                    (let ((_e1730317315_ (gx#syntax-e _e1730017307_)))
                      (let ((_hd1730417318_ (##car _e1730317315_))
                            (_tl1730517320_ (##cdr _e1730317315_)))
                        (let ((_form17323_ _hd1730417318_))
                          (if '#t
                              (call-method
                               (gx#syntax-local-e__0 _form17323_)
                               'compile-top-syntax
                               _stx17299_)
                              (_E1730217311_)))))
                    (_E1730217311_)))))
        (_E1730117325_))))
  (define gx#core-expander::compile-top-syntax
    (lambda (_self17259_ _stx17260_)
      (let* ((_self1726117269_ _self17259_)
             (_E1726317273_
              (lambda () (error '"No clause matching" _self1726117269_)))
             (_K1726417285_
              (lambda (_K17276_)
                (let ((_$e17278_ (gx#stx-source _stx17260_)))
                  (if _$e17278_
                      ((lambda (_g1728017282_)
                         (gx#stx-wrap-source
                          (_K17276_ _stx17260_)
                          _g1728017282_))
                       _$e17278_)
                      (_K17276_ _stx17260_))))))
        (if (##structure-instance-of? _self1726117269_ 'gx#core-expander::t)
            (let* ((_e1726517288_ (##vector-ref _self1726117269_ '1))
                   (_e1726617291_ (##vector-ref _self1726117269_ '2))
                   (_e1726717294_ (##vector-ref _self1726117269_ '3))
                   (_K17297_ _e1726717294_))
              (_K1726417285_ _K17297_))
            (_E1726317273_)))))
  (bind-method!
   gx#core-expander::t
   'compile-top-syntax
   gx#core-expander::compile-top-syntax
   '#f)
  (define gx#core-compile-top-error
    (lambda (_stx17133_)
      (gx#raise-syntax-error 'compile '"Cannot compile form" _stx17133_)))
  (define gx#core-compile-top-begin%
    (lambda (_stx17103_)
      (let* ((_e1710417111_ _stx17103_)
             (_E1710617115_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1710417111_)))
             (_E1710517129_
              (lambda ()
                (if (gx#stx-pair? _e1710417111_)
                    (let ((_e1710717119_ (gx#syntax-e _e1710417111_)))
                      (let ((_hd1710817122_ (##car _e1710717119_))
                            (_tl1710917124_ (##cdr _e1710717119_)))
                        (let ((_body17127_ _tl1710917124_))
                          (if '#t
                              (cons '%#begin
                                    (gx#stx-map1
                                     gx#core-compile-top-syntax
                                     _body17127_))
                              (_E1710617115_)))))
                    (_E1710617115_)))))
        (_E1710517129_))))
  (define gx#core-compile-top-begin-syntax%
    (lambda (_stx17072_)
      (let* ((_e1707317080_ _stx17072_)
             (_E1707517084_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1707317080_)))
             (_E1707417099_
              (lambda ()
                (if (gx#stx-pair? _e1707317080_)
                    (let ((_e1707617088_ (gx#syntax-e _e1707317080_)))
                      (let ((_hd1707717091_ (##car _e1707617088_))
                            (_tl1707817093_ (##cdr _e1707617088_)))
                        (let ((_body17096_ _tl1707817093_))
                          (if '#t
                              (cons '%#begin-syntax
                                    (call-with-parameters
                                     (lambda ()
                                       (gx#stx-map1
                                        gx#core-compile-top-syntax
                                        _body17096_))
                                     gx#current-expander-phi
                                     (fx+ (gx#current-expander-phi) '1)))
                              (_E1707517084_)))))
                    (_E1707517084_)))))
        (_E1707417099_))))
  (define gx#core-compile-top-begin-foreign%
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
                              (cons '%#begin-foreign _body17066_)
                              (_E1704517054_)))))
                    (_E1704517054_)))))
        (_E1704417068_))))
  (define gx#core-compile-top-begin-annotation%
    (lambda (_stx16988_)
      (let* ((_e1698917002_ _stx16988_)
             (_E1699117006_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1698917002_)))
             (_E1699017038_
              (lambda ()
                (if (gx#stx-pair? _e1698917002_)
                    (let ((_e1699217010_ (gx#syntax-e _e1698917002_)))
                      (let ((_hd1699317013_ (##car _e1699217010_))
                            (_tl1699417015_ (##cdr _e1699217010_)))
                        (if (gx#stx-pair? _tl1699417015_)
                            (let ((_e1699517018_ (gx#syntax-e _tl1699417015_)))
                              (let ((_hd1699617021_ (##car _e1699517018_))
                                    (_tl1699717023_ (##cdr _e1699517018_)))
                                (let ((_ann17026_ _hd1699617021_))
                                  (if (gx#stx-pair? _tl1699717023_)
                                      (let ((_e1699817028_
                                             (gx#syntax-e _tl1699717023_)))
                                        (let ((_hd1699917031_
                                               (##car _e1699817028_))
                                              (_tl1700017033_
                                               (##cdr _e1699817028_)))
                                          (let ((_expr17036_ _hd1699917031_))
                                            (if (gx#stx-null? _tl1700017033_)
                                                (if '#t
                                                    (gx#core-compile-top-syntax
                                                     _expr17036_)
                                                    (_E1699117006_))
                                                (_E1699117006_)))))
                                      (_E1699117006_)))))
                            (_E1699117006_))))
                    (_E1699117006_)))))
        (_E1699017038_))))
  (define gx#core-compile-top-import%
    (lambda (_stx16958_)
      (let* ((_e1695916966_ _stx16958_)
             (_E1696116970_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1695916966_)))
             (_E1696016984_
              (lambda ()
                (if (gx#stx-pair? _e1695916966_)
                    (let ((_e1696216974_ (gx#syntax-e _e1695916966_)))
                      (let ((_hd1696316977_ (##car _e1696216974_))
                            (_tl1696416979_ (##cdr _e1696216974_)))
                        (let ((_body16982_ _tl1696416979_))
                          (if '#t
                              (cons '%#import (gx#syntax->list _body16982_))
                              (_E1696116970_)))))
                    (_E1696116970_)))))
        (_E1696016984_))))
  (define gx#core-compile-top-module%
    (lambda (_stx16915_)
      (let* ((_e1691616926_ _stx16915_)
             (_E1691816930_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1691616926_)))
             (_E1691716954_
              (lambda ()
                (if (gx#stx-pair? _e1691616926_)
                    (let ((_e1691916934_ (gx#syntax-e _e1691616926_)))
                      (let ((_hd1692016937_ (##car _e1691916934_))
                            (_tl1692116939_ (##cdr _e1691916934_)))
                        (if (gx#stx-pair? _tl1692116939_)
                            (let ((_e1692216942_ (gx#syntax-e _tl1692116939_)))
                              (let ((_hd1692316945_ (##car _e1692216942_))
                                    (_tl1692416947_ (##cdr _e1692216942_)))
                                (let* ((_hd16950_ _hd1692316945_)
                                       (_body16952_ _tl1692416947_))
                                  (if '#t
                                      (cons '%#module
                                            (cons (##structure-ref
                                                   (gx#syntax-local-e__0
                                                    _hd16950_)
                                                   '1
                                                   gx#expander-context::t
                                                   '#f)
                                                  (gx#stx-map1
                                                   gx#core-compile-top-syntax
                                                   _body16952_)))
                                      (_E1691816930_)))))
                            (_E1691816930_))))
                    (_E1691816930_)))))
        (_E1691716954_))))
  (define gx#core-compile-top-export%
    (lambda (_stx16885_)
      (let* ((_e1688616893_ _stx16885_)
             (_E1688816897_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1688616893_)))
             (_E1688716911_
              (lambda ()
                (if (gx#stx-pair? _e1688616893_)
                    (let ((_e1688916901_ (gx#syntax-e _e1688616893_)))
                      (let ((_hd1689016904_ (##car _e1688916901_))
                            (_tl1689116906_ (##cdr _e1688916901_)))
                        (let ((_body16909_ _tl1689116906_))
                          (if '#t
                              (cons '%#export (gx#syntax->list _body16909_))
                              (_E1688816897_)))))
                    (_E1688816897_)))))
        (_E1688716911_))))
  (define gx#core-compile-top-provide%
    (lambda (_stx16855_)
      (let* ((_e1685616863_ _stx16855_)
             (_E1685816867_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1685616863_)))
             (_E1685716881_
              (lambda ()
                (if (gx#stx-pair? _e1685616863_)
                    (let ((_e1685916871_ (gx#syntax-e _e1685616863_)))
                      (let ((_hd1686016874_ (##car _e1685916871_))
                            (_tl1686116876_ (##cdr _e1685916871_)))
                        (let ((_body16879_ _tl1686116876_))
                          (if '#t
                              (cons '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body16879_))
                              (_E1685816867_)))))
                    (_E1685816867_)))))
        (_E1685716881_))))
  (define gx#core-compile-top-extern%
    (lambda (_stx16780_)
      (letrec ((_generate16782_
                (lambda (_hd16812_)
                  (let* ((_e1681316823_ _hd16812_)
                         (_E1681516827_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e1681316823_)))
                         (_E1681416851_
                          (lambda ()
                            (if (gx#stx-pair? _e1681316823_)
                                (let ((_e1681616831_
                                       (gx#syntax-e _e1681316823_)))
                                  (let ((_hd1681716834_ (##car _e1681616831_))
                                        (_tl1681816836_ (##cdr _e1681616831_)))
                                    (let ((_id16839_ _hd1681716834_))
                                      (if (gx#stx-pair? _tl1681816836_)
                                          (let ((_e1681916841_
                                                 (gx#syntax-e _tl1681816836_)))
                                            (let ((_hd1682016844_
                                                   (##car _e1681916841_))
                                                  (_tl1682116846_
                                                   (##cdr _e1681916841_)))
                                              (let ((_eid16849_
                                                     _hd1682016844_))
                                                (if (gx#stx-null?
                                                     _tl1682116846_)
                                                    (if '#t
                                                        (cons (gx#core-quote-syntax__0
                                                               _id16839_)
                                                              (cons (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _eid16849_)
                            '()))
                (_E1681516827_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1681516827_)))))
                                          (_E1681516827_)))))
                                (_E1681516827_)))))
                    (_E1681416851_)))))
        (let* ((_e1678316790_ _stx16780_)
               (_E1678516794_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1678316790_)))
               (_E1678416808_
                (lambda ()
                  (if (gx#stx-pair? _e1678316790_)
                      (let ((_e1678616798_ (gx#syntax-e _e1678316790_)))
                        (let ((_hd1678716801_ (##car _e1678616798_))
                              (_tl1678816803_ (##cdr _e1678616798_)))
                          (let ((_body16806_ _tl1678816803_))
                            (if '#t
                                (cons '%#extern
                                      (gx#stx-map1
                                       _generate16782_
                                       _body16806_))
                                (_E1678516794_)))))
                      (_E1678516794_)))))
          (_E1678416808_)))))
  (define gx#core-compile-top-define-values%
    (lambda (_stx16726_)
      (let* ((_e1672716740_ _stx16726_)
             (_E1672916744_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1672716740_)))
             (_E1672816776_
              (lambda ()
                (if (gx#stx-pair? _e1672716740_)
                    (let ((_e1673016748_ (gx#syntax-e _e1672716740_)))
                      (let ((_hd1673116751_ (##car _e1673016748_))
                            (_tl1673216753_ (##cdr _e1673016748_)))
                        (if (gx#stx-pair? _tl1673216753_)
                            (let ((_e1673316756_ (gx#syntax-e _tl1673216753_)))
                              (let ((_hd1673416759_ (##car _e1673316756_))
                                    (_tl1673516761_ (##cdr _e1673316756_)))
                                (let ((_hd16764_ _hd1673416759_))
                                  (if (gx#stx-pair? _tl1673516761_)
                                      (let ((_e1673616766_
                                             (gx#syntax-e _tl1673516761_)))
                                        (let ((_hd1673716769_
                                               (##car _e1673616766_))
                                              (_tl1673816771_
                                               (##cdr _e1673616766_)))
                                          (let ((_expr16774_ _hd1673716769_))
                                            (if (gx#stx-null? _tl1673816771_)
                                                (if '#t
                                                    (cons '%#define-values
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#core-compile-top-runtime-bind
                         _hd16764_)
                        (cons (gx#core-compile-top-syntax _expr16774_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1672916744_))
                                                (_E1672916744_)))))
                                      (_E1672916744_)))))
                            (_E1672916744_))))
                    (_E1672916744_)))))
        (_E1672816776_))))
  (define gx#core-compile-top-define-syntax%
    (lambda (_stx16671_)
      (let* ((_e1667216685_ _stx16671_)
             (_E1667416689_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1667216685_)))
             (_E1667316722_
              (lambda ()
                (if (gx#stx-pair? _e1667216685_)
                    (let ((_e1667516693_ (gx#syntax-e _e1667216685_)))
                      (let ((_hd1667616696_ (##car _e1667516693_))
                            (_tl1667716698_ (##cdr _e1667516693_)))
                        (if (gx#stx-pair? _tl1667716698_)
                            (let ((_e1667816701_ (gx#syntax-e _tl1667716698_)))
                              (let ((_hd1667916704_ (##car _e1667816701_))
                                    (_tl1668016706_ (##cdr _e1667816701_)))
                                (let ((_hd16709_ _hd1667916704_))
                                  (if (gx#stx-pair? _tl1668016706_)
                                      (let ((_e1668116711_
                                             (gx#syntax-e _tl1668016706_)))
                                        (let ((_hd1668216714_
                                               (##car _e1668116711_))
                                              (_tl1668316716_
                                               (##cdr _e1668116711_)))
                                          (let ((_expr16719_ _hd1668216714_))
                                            (if (gx#stx-null? _tl1668316716_)
                                                (if '#t
                                                    (cons '%#define-syntax
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd16709_)
                        (cons (call-with-parameters
                               (lambda ()
                                 (gx#core-compile-top-syntax _expr16719_))
                               gx#current-expander-phi
                               (fx+ (gx#current-expander-phi) '1))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1667416689_))
                                                (_E1667416689_)))))
                                      (_E1667416689_)))))
                            (_E1667416689_))))
                    (_E1667416689_)))))
        (_E1667316722_))))
  (define gx#core-compile-top-define-alias%
    (lambda (_stx16617_)
      (let* ((_e1661816631_ _stx16617_)
             (_E1662016635_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1661816631_)))
             (_E1661916667_
              (lambda ()
                (if (gx#stx-pair? _e1661816631_)
                    (let ((_e1662116639_ (gx#syntax-e _e1661816631_)))
                      (let ((_hd1662216642_ (##car _e1662116639_))
                            (_tl1662316644_ (##cdr _e1662116639_)))
                        (if (gx#stx-pair? _tl1662316644_)
                            (let ((_e1662416647_ (gx#syntax-e _tl1662316644_)))
                              (let ((_hd1662516650_ (##car _e1662416647_))
                                    (_tl1662616652_ (##cdr _e1662416647_)))
                                (let ((_hd16655_ _hd1662516650_))
                                  (if (gx#stx-pair? _tl1662616652_)
                                      (let ((_e1662716657_
                                             (gx#syntax-e _tl1662616652_)))
                                        (let ((_hd1662816660_
                                               (##car _e1662716657_))
                                              (_tl1662916662_
                                               (##cdr _e1662716657_)))
                                          (let ((_alias-id16665_
                                                 _hd1662816660_))
                                            (if (gx#stx-null? _tl1662916662_)
                                                (if '#t
                                                    (cons '%#define-alias
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd16655_)
                        (cons (gx#core-quote-syntax__0 _alias-id16665_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1662016635_))
                                                (_E1662016635_)))))
                                      (_E1662016635_)))))
                            (_E1662016635_))))
                    (_E1662016635_)))))
        (_E1661916667_))))
  (define gx#core-compile-top-define-runtime%
    (lambda (_stx16563_)
      (let* ((_e1656416577_ _stx16563_)
             (_E1656616581_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1656416577_)))
             (_E1656516613_
              (lambda ()
                (if (gx#stx-pair? _e1656416577_)
                    (let ((_e1656716585_ (gx#syntax-e _e1656416577_)))
                      (let ((_hd1656816588_ (##car _e1656716585_))
                            (_tl1656916590_ (##cdr _e1656716585_)))
                        (if (gx#stx-pair? _tl1656916590_)
                            (let ((_e1657016593_ (gx#syntax-e _tl1656916590_)))
                              (let ((_hd1657116596_ (##car _e1657016593_))
                                    (_tl1657216598_ (##cdr _e1657016593_)))
                                (let ((_id16601_ _hd1657116596_))
                                  (if (gx#stx-pair? _tl1657216598_)
                                      (let ((_e1657316603_
                                             (gx#syntax-e _tl1657216598_)))
                                        (let ((_hd1657416606_
                                               (##car _e1657316603_))
                                              (_tl1657516608_
                                               (##cdr _e1657316603_)))
                                          (let ((_binding-id16611_
                                                 _hd1657416606_))
                                            (if (gx#stx-null? _tl1657516608_)
                                                (if '#t
                                                    (cons '%#define-runtime
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _id16601_)
                        (cons (gx#core-quote-syntax__0 _binding-id16611_)
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1656616581_))
                                                (_E1656616581_)))))
                                      (_E1656616581_)))))
                            (_E1656616581_))))
                    (_E1656616581_)))))
        (_E1656516613_))))
  (define gx#core-compile-top-declare%
    (lambda (_stx16533_)
      (let* ((_e1653416541_ _stx16533_)
             (_E1653616545_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1653416541_)))
             (_E1653516559_
              (lambda ()
                (if (gx#stx-pair? _e1653416541_)
                    (let ((_e1653716549_ (gx#syntax-e _e1653416541_)))
                      (let ((_hd1653816552_ (##car _e1653716549_))
                            (_tl1653916554_ (##cdr _e1653716549_)))
                        (let ((_decls16557_ _tl1653916554_))
                          (if '#t
                              (cons '%#declare _decls16557_)
                              (_E1653616545_)))))
                    (_E1653616545_)))))
        (_E1653516559_))))
  (define gx#core-compile-top-lambda%
    (lambda (_stx16503_)
      (let* ((_e1650416511_ _stx16503_)
             (_E1650616515_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1650416511_)))
             (_E1650516529_
              (lambda ()
                (if (gx#stx-pair? _e1650416511_)
                    (let ((_e1650716519_ (gx#syntax-e _e1650416511_)))
                      (let ((_hd1650816522_ (##car _e1650716519_))
                            (_tl1650916524_ (##cdr _e1650716519_)))
                        (let ((_clause16527_ _tl1650916524_))
                          (if '#t
                              (cons '%#lambda
                                    (gx#core-compile-top-lambda-clause
                                     _clause16527_))
                              (_E1650616515_)))))
                    (_E1650616515_)))))
        (_E1650516529_))))
  (define gx#core-compile-top-lambda-clause
    (lambda (_stx16460_)
      (let* ((_e1646116471_ _stx16460_)
             (_E1646316475_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1646116471_)))
             (_E1646216499_
              (lambda ()
                (if (gx#stx-pair? _e1646116471_)
                    (let ((_e1646416479_ (gx#syntax-e _e1646116471_)))
                      (let ((_hd1646516482_ (##car _e1646416479_))
                            (_tl1646616484_ (##cdr _e1646416479_)))
                        (let ((_hd16487_ _hd1646516482_))
                          (if (gx#stx-pair? _tl1646616484_)
                              (let ((_e1646716489_
                                     (gx#syntax-e _tl1646616484_)))
                                (let ((_hd1646816492_ (##car _e1646716489_))
                                      (_tl1646916494_ (##cdr _e1646716489_)))
                                  (let ((_body16497_ _hd1646816492_))
                                    (if (gx#stx-null? _tl1646916494_)
                                        (if '#t
                                            (cons (gx#stx-map1
                                                   gx#core-compile-top-runtime-bind
                                                   _hd16487_)
                                                  (cons (gx#core-compile-top-syntax
                                                         _body16497_)
                                                        '()))
                                            (_E1646316475_))
                                        (_E1646316475_)))))
                              (_E1646316475_)))))
                    (_E1646316475_)))))
        (_E1646216499_))))
  (define gx#core-compile-top-case-lambda%
    (lambda (_stx16430_)
      (let* ((_e1643116438_ _stx16430_)
             (_E1643316442_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1643116438_)))
             (_E1643216456_
              (lambda ()
                (if (gx#stx-pair? _e1643116438_)
                    (let ((_e1643416446_ (gx#syntax-e _e1643116438_)))
                      (let ((_hd1643516449_ (##car _e1643416446_))
                            (_tl1643616451_ (##cdr _e1643416446_)))
                        (let ((_clauses16454_ _tl1643616451_))
                          (if '#t
                              (cons '%#case-lambda
                                    (gx#stx-map1
                                     gx#core-compile-top-lambda-clause
                                     _clauses16454_))
                              (_E1643316442_)))))
                    (_E1643316442_)))))
        (_E1643216456_))))
  (begin
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx16365_ _form16366_)
        (let* ((_e1636716380_ _stx16365_)
               (_E1636916384_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1636716380_)))
               (_E1636816416_
                (lambda ()
                  (if (gx#stx-pair? _e1636716380_)
                      (let ((_e1637016388_ (gx#syntax-e _e1636716380_)))
                        (let ((_hd1637116391_ (##car _e1637016388_))
                              (_tl1637216393_ (##cdr _e1637016388_)))
                          (if (gx#stx-pair? _tl1637216393_)
                              (let ((_e1637316396_
                                     (gx#syntax-e _tl1637216393_)))
                                (let ((_hd1637416399_ (##car _e1637316396_))
                                      (_tl1637516401_ (##cdr _e1637316396_)))
                                  (let ((_hd16404_ _hd1637416399_))
                                    (if (gx#stx-pair? _tl1637516401_)
                                        (let ((_e1637616406_
                                               (gx#syntax-e _tl1637516401_)))
                                          (let ((_hd1637716409_
                                                 (##car _e1637616406_))
                                                (_tl1637816411_
                                                 (##cdr _e1637616406_)))
                                            (let ((_body16414_ _hd1637716409_))
                                              (if (gx#stx-null? _tl1637816411_)
                                                  (if '#t
                                                      (cons _form16366_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd16404_)
                          (cons (gx#core-compile-top-syntax _body16414_) '())))
              (_E1636916384_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1636916384_)))))
                                        (_E1636916384_)))))
                              (_E1636916384_))))
                      (_E1636916384_)))))
          (_E1636816416_))))
    (begin
      (define gx#core-compile-top-let-values%__0
        (lambda (_stx16423_)
          (let ((_form16425_ '%#let-values))
            (gx#core-compile-top-let-values%__% _stx16423_ _form16425_))))
      (define gx#core-compile-top-let-values%
        (lambda _g17329_
          (let ((_g17328_ (length _g17329_)))
            (cond ((##fx= _g17328_ 1)
                   (apply gx#core-compile-top-let-values%__0 _g17329_))
                  ((##fx= _g17328_ 2)
                   (apply gx#core-compile-top-let-values%__% _g17329_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-compile-top-let-values%
                    _g17329_))))))))
  (define gx#core-compile-top-letrec-values%
    (lambda (_stx16362_)
      (gx#core-compile-top-let-values%__% _stx16362_ '%#letrec-values)))
  (define gx#core-compile-top-letrec*-values%
    (lambda (_stx16360_)
      (gx#core-compile-top-let-values%__% _stx16360_ '%#letrec*-values)))
  (define gx#core-compile-top-quote%
    (lambda (_stx16319_)
      (let* ((_e1632016330_ _stx16319_)
             (_E1632216334_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1632016330_)))
             (_E1632116356_
              (lambda ()
                (if (gx#stx-pair? _e1632016330_)
                    (let ((_e1632316338_ (gx#syntax-e _e1632016330_)))
                      (let ((_hd1632416341_ (##car _e1632316338_))
                            (_tl1632516343_ (##cdr _e1632316338_)))
                        (if (gx#stx-pair? _tl1632516343_)
                            (let ((_e1632616346_ (gx#syntax-e _tl1632516343_)))
                              (let ((_hd1632716349_ (##car _e1632616346_))
                                    (_tl1632816351_ (##cdr _e1632616346_)))
                                (let ((_e16354_ _hd1632716349_))
                                  (if (gx#stx-null? _tl1632816351_)
                                      (if '#t
                                          (cons '%#quote
                                                (cons (gx#syntax->datum
                                                       _e16354_)
                                                      '()))
                                          (_E1632216334_))
                                      (_E1632216334_)))))
                            (_E1632216334_))))
                    (_E1632216334_)))))
        (_E1632116356_))))
  (define gx#core-compile-top-quote-syntax%
    (lambda (_stx16278_)
      (let* ((_e1627916289_ _stx16278_)
             (_E1628116293_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1627916289_)))
             (_E1628016315_
              (lambda ()
                (if (gx#stx-pair? _e1627916289_)
                    (let ((_e1628216297_ (gx#syntax-e _e1627916289_)))
                      (let ((_hd1628316300_ (##car _e1628216297_))
                            (_tl1628416302_ (##cdr _e1628216297_)))
                        (if (gx#stx-pair? _tl1628416302_)
                            (let ((_e1628516305_ (gx#syntax-e _tl1628416302_)))
                              (let ((_hd1628616308_ (##car _e1628516305_))
                                    (_tl1628716310_ (##cdr _e1628516305_)))
                                (let ((_e16313_ _hd1628616308_))
                                  (if (gx#stx-null? _tl1628716310_)
                                      (if '#t
                                          (cons '%#quote-syntax
                                                (cons (gx#core-quote-syntax__0
                                                       _e16313_)
                                                      '()))
                                          (_E1628116293_))
                                      (_E1628116293_)))))
                            (_E1628116293_))))
                    (_E1628116293_)))))
        (_E1628016315_))))
  (define gx#core-compile-top-call%
    (lambda (_stx16235_)
      (let* ((_e1623616246_ _stx16235_)
             (_E1623816250_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1623616246_)))
             (_E1623716274_
              (lambda ()
                (if (gx#stx-pair? _e1623616246_)
                    (let ((_e1623916254_ (gx#syntax-e _e1623616246_)))
                      (let ((_hd1624016257_ (##car _e1623916254_))
                            (_tl1624116259_ (##cdr _e1623916254_)))
                        (if (gx#stx-pair? _tl1624116259_)
                            (let ((_e1624216262_ (gx#syntax-e _tl1624116259_)))
                              (let ((_hd1624316265_ (##car _e1624216262_))
                                    (_tl1624416267_ (##cdr _e1624216262_)))
                                (let* ((_rator16270_ _hd1624316265_)
                                       (_args16272_ _tl1624416267_))
                                  (if '#t
                                      (cons '%#call
                                            (cons (gx#core-compile-top-syntax
                                                   _rator16270_)
                                                  (gx#stx-map1
                                                   gx#core-compile-top-syntax
                                                   _args16272_)))
                                      (_E1623816250_)))))
                            (_E1623816250_))))
                    (_E1623816250_)))))
        (_E1623716274_))))
  (define gx#core-compile-top-if%
    (lambda (_stx16168_)
      (let* ((_e1616916185_ _stx16168_)
             (_E1617116189_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1616916185_)))
             (_E1617016231_
              (lambda ()
                (if (gx#stx-pair? _e1616916185_)
                    (let ((_e1617216193_ (gx#syntax-e _e1616916185_)))
                      (let ((_hd1617316196_ (##car _e1617216193_))
                            (_tl1617416198_ (##cdr _e1617216193_)))
                        (if (gx#stx-pair? _tl1617416198_)
                            (let ((_e1617516201_ (gx#syntax-e _tl1617416198_)))
                              (let ((_hd1617616204_ (##car _e1617516201_))
                                    (_tl1617716206_ (##cdr _e1617516201_)))
                                (let ((_test16209_ _hd1617616204_))
                                  (if (gx#stx-pair? _tl1617716206_)
                                      (let ((_e1617816211_
                                             (gx#syntax-e _tl1617716206_)))
                                        (let ((_hd1617916214_
                                               (##car _e1617816211_))
                                              (_tl1618016216_
                                               (##cdr _e1617816211_)))
                                          (let ((_K16219_ _hd1617916214_))
                                            (if (gx#stx-pair? _tl1618016216_)
                                                (let ((_e1618116221_
                                                       (gx#syntax-e
                                                        _tl1618016216_)))
                                                  (let ((_hd1618216224_
                                                         (##car _e1618116221_))
                                                        (_tl1618316226_
                                                         (##cdr _e1618116221_)))
                                                    (let ((_E16229_
                                                           _hd1618216224_))
                                                      (if (gx#stx-null?
                                                           _tl1618316226_)
                                                          (if '#t
                                                              (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gx#core-compile-top-syntax _test16209_)
                                  (cons (gx#core-compile-top-syntax _K16219_)
                                        (cons (gx#core-compile-top-syntax
                                               _E16229_)
                                              '()))))
                      (_E1617116189_))
                  (_E1617116189_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1617116189_)))))
                                      (_E1617116189_)))))
                            (_E1617116189_))))
                    (_E1617116189_)))))
        (_E1617016231_))))
  (define gx#core-compile-top-ref%
    (lambda (_stx16127_)
      (let* ((_e1612816138_ _stx16127_)
             (_E1613016142_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1612816138_)))
             (_E1612916164_
              (lambda ()
                (if (gx#stx-pair? _e1612816138_)
                    (let ((_e1613116146_ (gx#syntax-e _e1612816138_)))
                      (let ((_hd1613216149_ (##car _e1613116146_))
                            (_tl1613316151_ (##cdr _e1613116146_)))
                        (if (gx#stx-pair? _tl1613316151_)
                            (let ((_e1613416154_ (gx#syntax-e _tl1613316151_)))
                              (let ((_hd1613516157_ (##car _e1613416154_))
                                    (_tl1613616159_ (##cdr _e1613416154_)))
                                (let ((_id16162_ _hd1613516157_))
                                  (if (gx#stx-null? _tl1613616159_)
                                      (if (gx#identifier? _id16162_)
                                          (cons '%#ref
                                                (cons (gx#core-compile-top-runtime-ref
                                                       _id16162_)
                                                      '()))
                                          (_E1613016142_))
                                      (_E1613016142_)))))
                            (_E1613016142_))))
                    (_E1613016142_)))))
        (_E1612916164_))))
  (define gx#core-compile-top-setq%
    (lambda (_stx16073_)
      (let* ((_e1607416087_ _stx16073_)
             (_E1607616091_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1607416087_)))
             (_E1607516123_
              (lambda ()
                (if (gx#stx-pair? _e1607416087_)
                    (let ((_e1607716095_ (gx#syntax-e _e1607416087_)))
                      (let ((_hd1607816098_ (##car _e1607716095_))
                            (_tl1607916100_ (##cdr _e1607716095_)))
                        (if (gx#stx-pair? _tl1607916100_)
                            (let ((_e1608016103_ (gx#syntax-e _tl1607916100_)))
                              (let ((_hd1608116106_ (##car _e1608016103_))
                                    (_tl1608216108_ (##cdr _e1608016103_)))
                                (let ((_id16111_ _hd1608116106_))
                                  (if (gx#stx-pair? _tl1608216108_)
                                      (let ((_e1608316113_
                                             (gx#syntax-e _tl1608216108_)))
                                        (let ((_hd1608416116_
                                               (##car _e1608316113_))
                                              (_tl1608516118_
                                               (##cdr _e1608316113_)))
                                          (let ((_expr16121_ _hd1608416116_))
                                            (if (gx#stx-null? _tl1608516118_)
                                                (if (gx#identifier? _id16111_)
                                                    (cons '%#set!
                                                          (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _id16111_)
                        (cons (gx#core-compile-top-syntax _expr16121_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1607616091_))
                                                (_E1607616091_)))))
                                      (_E1607616091_)))))
                            (_E1607616091_))))
                    (_E1607616091_)))))
        (_E1607516123_))))
  (define gx#core-compile-top-runtime-ref
    (lambda (_id16068_)
      (let ((_$e16070_ (gx#resolve-identifier__0 _id16068_)))
        (if _$e16070_
            (##structure-ref _$e16070_ '1 gx#binding::t '#f)
            _id16068_))))
  (define gx#core-compile-top-runtime-bind
    (lambda (_hd16066_)
      (if (gx#identifier? _hd16066_)
          (gx#core-compile-top-runtime-ref _hd16066_)
          '#f))))
