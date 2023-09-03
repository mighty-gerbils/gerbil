(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1693679894)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx17300_)
        (let* ((_e1730117308_ _stx17300_)
               (_E1730317312_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1730117308_)))
               (_E1730217326_
                (lambda ()
                  (if (gx#stx-pair? _e1730117308_)
                      (let ((_e1730417316_ (gx#syntax-e _e1730117308_)))
                        (let ((_hd1730517319_ (##car _e1730417316_))
                              (_tl1730617321_ (##cdr _e1730417316_)))
                          (let ((_form17324_ _hd1730517319_))
                            (if '#t
                                (let* ((__self17329
                                        (gx#syntax-local-e__0 _form17324_))
                                       (__method17330
                                        (method-ref
                                         __self17329
                                         'compile-top-syntax)))
                                  (if __method17330
                                      (__method17330 __self17329 _stx17300_)
                                      (error '"Missing method"
                                             __self17329
                                             'compile-top-syntax)))
                                (_E1730317312_)))))
                      (_E1730317312_)))))
          (_E1730217326_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self17260_ _stx17261_)
        (let* ((_self1726217270_ _self17260_)
               (_E1726417274_
                (lambda () (error '"No clause matching" _self1726217270_)))
               (_K1726517286_
                (lambda (_K17277_)
                  (let ((_$e17279_ (gx#stx-source _stx17261_)))
                    (if _$e17279_
                        ((lambda (_g1728117283_)
                           (gx#stx-wrap-source
                            (_K17277_ _stx17261_)
                            _g1728117283_))
                         _$e17279_)
                        (_K17277_ _stx17261_))))))
          (if (##structure-instance-of? _self1726217270_ 'gx#core-expander::t)
              (let* ((_e1726617289_ (##vector-ref _self1726217270_ '1))
                     (_e1726717292_ (##vector-ref _self1726217270_ '2))
                     (_e1726817295_ (##vector-ref _self1726217270_ '3))
                     (_K17298_ _e1726817295_))
                (_K1726517286_ _K17298_))
              (_E1726417274_)))))
    (bind-method!
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx17134_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx17134_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx17104_)
        (let* ((_e1710517112_ _stx17104_)
               (_E1710717116_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1710517112_)))
               (_E1710617130_
                (lambda ()
                  (if (gx#stx-pair? _e1710517112_)
                      (let ((_e1710817120_ (gx#syntax-e _e1710517112_)))
                        (let ((_hd1710917123_ (##car _e1710817120_))
                              (_tl1711017125_ (##cdr _e1710817120_)))
                          (let ((_body17128_ _tl1711017125_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body17128_))
                                (_E1710717116_)))))
                      (_E1710717116_)))))
          (_E1710617130_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx17073_)
        (let* ((_e1707417081_ _stx17073_)
               (_E1707617085_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1707417081_)))
               (_E1707517100_
                (lambda ()
                  (if (gx#stx-pair? _e1707417081_)
                      (let ((_e1707717089_ (gx#syntax-e _e1707417081_)))
                        (let ((_hd1707817092_ (##car _e1707717089_))
                              (_tl1707917094_ (##cdr _e1707717089_)))
                          (let ((_body17097_ _tl1707917094_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body17097_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E1707617085_)))))
                      (_E1707617085_)))))
          (_E1707517100_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_stx17043_)
        (let* ((_e1704417051_ _stx17043_)
               (_E1704617055_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1704417051_)))
               (_E1704517069_
                (lambda ()
                  (if (gx#stx-pair? _e1704417051_)
                      (let ((_e1704717059_ (gx#syntax-e _e1704417051_)))
                        (let ((_hd1704817062_ (##car _e1704717059_))
                              (_tl1704917064_ (##cdr _e1704717059_)))
                          (let ((_body17067_ _tl1704917064_))
                            (if '#t
                                (cons '%#begin-foreign _body17067_)
                                (_E1704617055_)))))
                      (_E1704617055_)))))
          (_E1704517069_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_stx16989_)
        (let* ((_e1699017003_ _stx16989_)
               (_E1699217007_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1699017003_)))
               (_E1699117039_
                (lambda ()
                  (if (gx#stx-pair? _e1699017003_)
                      (let ((_e1699317011_ (gx#syntax-e _e1699017003_)))
                        (let ((_hd1699417014_ (##car _e1699317011_))
                              (_tl1699517016_ (##cdr _e1699317011_)))
                          (if (gx#stx-pair? _tl1699517016_)
                              (let ((_e1699617019_
                                     (gx#syntax-e _tl1699517016_)))
                                (let ((_hd1699717022_ (##car _e1699617019_))
                                      (_tl1699817024_ (##cdr _e1699617019_)))
                                  (let ((_ann17027_ _hd1699717022_))
                                    (if (gx#stx-pair? _tl1699817024_)
                                        (let ((_e1699917029_
                                               (gx#syntax-e _tl1699817024_)))
                                          (let ((_hd1700017032_
                                                 (##car _e1699917029_))
                                                (_tl1700117034_
                                                 (##cdr _e1699917029_)))
                                            (let ((_expr17037_ _hd1700017032_))
                                              (if (gx#stx-null? _tl1700117034_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr17037_)
                                                      (_E1699217007_))
                                                  (_E1699217007_)))))
                                        (_E1699217007_)))))
                              (_E1699217007_))))
                      (_E1699217007_)))))
          (_E1699117039_))))
    (define gx#core-compile-top-import%
      (lambda (_stx16959_)
        (let* ((_e1696016967_ _stx16959_)
               (_E1696216971_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1696016967_)))
               (_E1696116985_
                (lambda ()
                  (if (gx#stx-pair? _e1696016967_)
                      (let ((_e1696316975_ (gx#syntax-e _e1696016967_)))
                        (let ((_hd1696416978_ (##car _e1696316975_))
                              (_tl1696516980_ (##cdr _e1696316975_)))
                          (let ((_body16983_ _tl1696516980_))
                            (if '#t
                                (cons '%#import _body16983_)
                                (_E1696216971_)))))
                      (_E1696216971_)))))
          (_E1696116985_))))
    (define gx#core-compile-top-module%
      (lambda (_stx16916_)
        (let* ((_e1691716927_ _stx16916_)
               (_E1691916931_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1691716927_)))
               (_E1691816955_
                (lambda ()
                  (if (gx#stx-pair? _e1691716927_)
                      (let ((_e1692016935_ (gx#syntax-e _e1691716927_)))
                        (let ((_hd1692116938_ (##car _e1692016935_))
                              (_tl1692216940_ (##cdr _e1692016935_)))
                          (if (gx#stx-pair? _tl1692216940_)
                              (let ((_e1692316943_
                                     (gx#syntax-e _tl1692216940_)))
                                (let ((_hd1692416946_ (##car _e1692316943_))
                                      (_tl1692516948_ (##cdr _e1692316943_)))
                                  (let* ((_hd16951_ _hd1692416946_)
                                         (_body16953_ _tl1692516948_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _hd16951_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body16953_)))
                                        (_E1691916931_)))))
                              (_E1691916931_))))
                      (_E1691916931_)))))
          (_E1691816955_))))
    (define gx#core-compile-top-export%
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
                                (cons '%#export _body16910_)
                                (_E1688916898_)))))
                      (_E1688916898_)))))
          (_E1688816912_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx16856_)
        (let* ((_e1685716864_ _stx16856_)
               (_E1685916868_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1685716864_)))
               (_E1685816882_
                (lambda ()
                  (if (gx#stx-pair? _e1685716864_)
                      (let ((_e1686016872_ (gx#syntax-e _e1685716864_)))
                        (let ((_hd1686116875_ (##car _e1686016872_))
                              (_tl1686216877_ (##cdr _e1686016872_)))
                          (let ((_body16880_ _tl1686216877_))
                            (if '#t
                                (cons '%#provide _body16880_)
                                (_E1685916868_)))))
                      (_E1685916868_)))))
          (_E1685816882_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx16826_)
        (let* ((_e1682716834_ _stx16826_)
               (_E1682916838_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1682716834_)))
               (_E1682816852_
                (lambda ()
                  (if (gx#stx-pair? _e1682716834_)
                      (let ((_e1683016842_ (gx#syntax-e _e1682716834_)))
                        (let ((_hd1683116845_ (##car _e1683016842_))
                              (_tl1683216847_ (##cdr _e1683016842_)))
                          (let ((_body16850_ _tl1683216847_))
                            (if '#t
                                (cons '%#extern _body16850_)
                                (_E1682916838_)))))
                      (_E1682916838_)))))
          (_E1682816852_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx16772_)
        (let* ((_e1677316786_ _stx16772_)
               (_E1677516790_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1677316786_)))
               (_E1677416822_
                (lambda ()
                  (if (gx#stx-pair? _e1677316786_)
                      (let ((_e1677616794_ (gx#syntax-e _e1677316786_)))
                        (let ((_hd1677716797_ (##car _e1677616794_))
                              (_tl1677816799_ (##cdr _e1677616794_)))
                          (if (gx#stx-pair? _tl1677816799_)
                              (let ((_e1677916802_
                                     (gx#syntax-e _tl1677816799_)))
                                (let ((_hd1678016805_ (##car _e1677916802_))
                                      (_tl1678116807_ (##cdr _e1677916802_)))
                                  (let ((_hd16810_ _hd1678016805_))
                                    (if (gx#stx-pair? _tl1678116807_)
                                        (let ((_e1678216812_
                                               (gx#syntax-e _tl1678116807_)))
                                          (let ((_hd1678316815_
                                                 (##car _e1678216812_))
                                                (_tl1678416817_
                                                 (##cdr _e1678216812_)))
                                            (let ((_expr16820_ _hd1678316815_))
                                              (if (gx#stx-null? _tl1678416817_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd16810_)
                          (cons (gx#core-compile-top-syntax _expr16820_) '())))
              (_E1677516790_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1677516790_)))))
                                        (_E1677516790_)))))
                              (_E1677516790_))))
                      (_E1677516790_)))))
          (_E1677416822_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx16717_)
        (let* ((_e1671816731_ _stx16717_)
               (_E1672016735_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1671816731_)))
               (_E1671916768_
                (lambda ()
                  (if (gx#stx-pair? _e1671816731_)
                      (let ((_e1672116739_ (gx#syntax-e _e1671816731_)))
                        (let ((_hd1672216742_ (##car _e1672116739_))
                              (_tl1672316744_ (##cdr _e1672116739_)))
                          (if (gx#stx-pair? _tl1672316744_)
                              (let ((_e1672416747_
                                     (gx#syntax-e _tl1672316744_)))
                                (let ((_hd1672516750_ (##car _e1672416747_))
                                      (_tl1672616752_ (##cdr _e1672416747_)))
                                  (let ((_hd16755_ _hd1672516750_))
                                    (if (gx#stx-pair? _tl1672616752_)
                                        (let ((_e1672716757_
                                               (gx#syntax-e _tl1672616752_)))
                                          (let ((_hd1672816760_
                                                 (##car _e1672716757_))
                                                (_tl1672916762_
                                                 (##cdr _e1672716757_)))
                                            (let ((_expr16765_ _hd1672816760_))
                                              (if (gx#stx-null? _tl1672916762_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd16755_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr16765_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E1672016735_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1672016735_)))))
                                        (_E1672016735_)))))
                              (_E1672016735_))))
                      (_E1672016735_)))))
          (_E1671916768_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx16687_)
        (let* ((_e1668816695_ _stx16687_)
               (_E1669016699_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1668816695_)))
               (_E1668916713_
                (lambda ()
                  (if (gx#stx-pair? _e1668816695_)
                      (let ((_e1669116703_ (gx#syntax-e _e1668816695_)))
                        (let ((_hd1669216706_ (##car _e1669116703_))
                              (_tl1669316708_ (##cdr _e1669116703_)))
                          (let ((_body16711_ _tl1669316708_))
                            (if '#t
                                (cons '%#define-alias _body16711_)
                                (_E1669016699_)))))
                      (_E1669016699_)))))
          (_E1668916713_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx16657_)
        (let* ((_e1665816665_ _stx16657_)
               (_E1666016669_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1665816665_)))
               (_E1665916683_
                (lambda ()
                  (if (gx#stx-pair? _e1665816665_)
                      (let ((_e1666116673_ (gx#syntax-e _e1665816665_)))
                        (let ((_hd1666216676_ (##car _e1666116673_))
                              (_tl1666316678_ (##cdr _e1666116673_)))
                          (let ((_body16681_ _tl1666316678_))
                            (if '#t
                                (cons '%#define-runtime _body16681_)
                                (_E1666016669_)))))
                      (_E1666016669_)))))
          (_E1665916683_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx16627_)
        (let* ((_e1662816635_ _stx16627_)
               (_E1663016639_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1662816635_)))
               (_E1662916653_
                (lambda ()
                  (if (gx#stx-pair? _e1662816635_)
                      (let ((_e1663116643_ (gx#syntax-e _e1662816635_)))
                        (let ((_hd1663216646_ (##car _e1663116643_))
                              (_tl1663316648_ (##cdr _e1663116643_)))
                          (let ((_decls16651_ _tl1663316648_))
                            (if '#t
                                (cons '%#declare _decls16651_)
                                (_E1663016639_)))))
                      (_E1663016639_)))))
          (_E1662916653_))))
    (define gx#core-compile-top-lambda%
      (lambda (_stx16597_)
        (let* ((_e1659816605_ _stx16597_)
               (_E1660016609_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1659816605_)))
               (_E1659916623_
                (lambda ()
                  (if (gx#stx-pair? _e1659816605_)
                      (let ((_e1660116613_ (gx#syntax-e _e1659816605_)))
                        (let ((_hd1660216616_ (##car _e1660116613_))
                              (_tl1660316618_ (##cdr _e1660116613_)))
                          (let ((_clause16621_ _tl1660316618_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause16621_))
                                (_E1660016609_)))))
                      (_E1660016609_)))))
          (_E1659916623_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx16554_)
        (let* ((_e1655516565_ _stx16554_)
               (_E1655716569_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1655516565_)))
               (_E1655616593_
                (lambda ()
                  (if (gx#stx-pair? _e1655516565_)
                      (let ((_e1655816573_ (gx#syntax-e _e1655516565_)))
                        (let ((_hd1655916576_ (##car _e1655816573_))
                              (_tl1656016578_ (##cdr _e1655816573_)))
                          (let ((_hd16581_ _hd1655916576_))
                            (if (gx#stx-pair? _tl1656016578_)
                                (let ((_e1656116583_
                                       (gx#syntax-e _tl1656016578_)))
                                  (let ((_hd1656216586_ (##car _e1656116583_))
                                        (_tl1656316588_ (##cdr _e1656116583_)))
                                    (let ((_body16591_ _hd1656216586_))
                                      (if (gx#stx-null? _tl1656316588_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd16581_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body16591_)
                                                          '()))
                                              (_E1655716569_))
                                          (_E1655716569_)))))
                                (_E1655716569_)))))
                      (_E1655716569_)))))
          (_E1655616593_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx16524_)
        (let* ((_e1652516532_ _stx16524_)
               (_E1652716536_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1652516532_)))
               (_E1652616550_
                (lambda ()
                  (if (gx#stx-pair? _e1652516532_)
                      (let ((_e1652816540_ (gx#syntax-e _e1652516532_)))
                        (let ((_hd1652916543_ (##car _e1652816540_))
                              (_tl1653016545_ (##cdr _e1652816540_)))
                          (let ((_clauses16548_ _tl1653016545_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses16548_))
                                (_E1652716536_)))))
                      (_E1652716536_)))))
          (_E1652616550_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx16459_ _form16460_)
        (let* ((_e1646116474_ _stx16459_)
               (_E1646316478_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1646116474_)))
               (_E1646216510_
                (lambda ()
                  (if (gx#stx-pair? _e1646116474_)
                      (let ((_e1646416482_ (gx#syntax-e _e1646116474_)))
                        (let ((_hd1646516485_ (##car _e1646416482_))
                              (_tl1646616487_ (##cdr _e1646416482_)))
                          (if (gx#stx-pair? _tl1646616487_)
                              (let ((_e1646716490_
                                     (gx#syntax-e _tl1646616487_)))
                                (let ((_hd1646816493_ (##car _e1646716490_))
                                      (_tl1646916495_ (##cdr _e1646716490_)))
                                  (let ((_hd16498_ _hd1646816493_))
                                    (if (gx#stx-pair? _tl1646916495_)
                                        (let ((_e1647016500_
                                               (gx#syntax-e _tl1646916495_)))
                                          (let ((_hd1647116503_
                                                 (##car _e1647016500_))
                                                (_tl1647216505_
                                                 (##cdr _e1647016500_)))
                                            (let ((_body16508_ _hd1647116503_))
                                              (if (gx#stx-null? _tl1647216505_)
                                                  (if '#t
                                                      (cons _form16460_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd16498_)
                          (cons (gx#core-compile-top-syntax _body16508_) '())))
              (_E1646316478_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1646316478_)))))
                                        (_E1646316478_)))))
                              (_E1646316478_))))
                      (_E1646316478_)))))
          (_E1646216510_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx16517_)
        (let ((_form16519_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx16517_ _form16519_))))
    (define gx#core-compile-top-let-values%
      (lambda _g17332_
        (let ((_g17331_ (##length _g17332_)))
          (cond ((##fx= _g17331_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g17332_))
                ((##fx= _g17331_ 2)
                 (apply gx#core-compile-top-let-values%__% _g17332_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g17332_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx16456_)
        (gx#core-compile-top-let-values%__% _stx16456_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx16454_)
        (gx#core-compile-top-let-values%__% _stx16454_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx16413_)
        (let* ((_e1641416424_ _stx16413_)
               (_E1641616428_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1641416424_)))
               (_E1641516450_
                (lambda ()
                  (if (gx#stx-pair? _e1641416424_)
                      (let ((_e1641716432_ (gx#syntax-e _e1641416424_)))
                        (let ((_hd1641816435_ (##car _e1641716432_))
                              (_tl1641916437_ (##cdr _e1641716432_)))
                          (if (gx#stx-pair? _tl1641916437_)
                              (let ((_e1642016440_
                                     (gx#syntax-e _tl1641916437_)))
                                (let ((_hd1642116443_ (##car _e1642016440_))
                                      (_tl1642216445_ (##cdr _e1642016440_)))
                                  (let ((_e16448_ _hd1642116443_))
                                    (if (gx#stx-null? _tl1642216445_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e16448_)
                                                        '()))
                                            (_E1641616428_))
                                        (_E1641616428_)))))
                              (_E1641616428_))))
                      (_E1641616428_)))))
          (_E1641516450_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx16372_)
        (let* ((_e1637316383_ _stx16372_)
               (_E1637516387_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1637316383_)))
               (_E1637416409_
                (lambda ()
                  (if (gx#stx-pair? _e1637316383_)
                      (let ((_e1637616391_ (gx#syntax-e _e1637316383_)))
                        (let ((_hd1637716394_ (##car _e1637616391_))
                              (_tl1637816396_ (##cdr _e1637616391_)))
                          (if (gx#stx-pair? _tl1637816396_)
                              (let ((_e1637916399_
                                     (gx#syntax-e _tl1637816396_)))
                                (let ((_hd1638016402_ (##car _e1637916399_))
                                      (_tl1638116404_ (##cdr _e1637916399_)))
                                  (let ((_e16407_ _hd1638016402_))
                                    (if (gx#stx-null? _tl1638116404_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e16407_)
                                                        '()))
                                            (_E1637516387_))
                                        (_E1637516387_)))))
                              (_E1637516387_))))
                      (_E1637516387_)))))
          (_E1637416409_))))
    (define gx#core-compile-top-call%
      (lambda (_stx16329_)
        (let* ((_e1633016340_ _stx16329_)
               (_E1633216344_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1633016340_)))
               (_E1633116368_
                (lambda ()
                  (if (gx#stx-pair? _e1633016340_)
                      (let ((_e1633316348_ (gx#syntax-e _e1633016340_)))
                        (let ((_hd1633416351_ (##car _e1633316348_))
                              (_tl1633516353_ (##cdr _e1633316348_)))
                          (if (gx#stx-pair? _tl1633516353_)
                              (let ((_e1633616356_
                                     (gx#syntax-e _tl1633516353_)))
                                (let ((_hd1633716359_ (##car _e1633616356_))
                                      (_tl1633816361_ (##cdr _e1633616356_)))
                                  (let* ((_rator16364_ _hd1633716359_)
                                         (_args16366_ _tl1633816361_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator16364_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args16366_)))
                                        (_E1633216344_)))))
                              (_E1633216344_))))
                      (_E1633216344_)))))
          (_E1633116368_))))
    (define gx#core-compile-top-if%
      (lambda (_stx16262_)
        (let* ((_e1626316279_ _stx16262_)
               (_E1626516283_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1626316279_)))
               (_E1626416325_
                (lambda ()
                  (if (gx#stx-pair? _e1626316279_)
                      (let ((_e1626616287_ (gx#syntax-e _e1626316279_)))
                        (let ((_hd1626716290_ (##car _e1626616287_))
                              (_tl1626816292_ (##cdr _e1626616287_)))
                          (if (gx#stx-pair? _tl1626816292_)
                              (let ((_e1626916295_
                                     (gx#syntax-e _tl1626816292_)))
                                (let ((_hd1627016298_ (##car _e1626916295_))
                                      (_tl1627116300_ (##cdr _e1626916295_)))
                                  (let ((_test16303_ _hd1627016298_))
                                    (if (gx#stx-pair? _tl1627116300_)
                                        (let ((_e1627216305_
                                               (gx#syntax-e _tl1627116300_)))
                                          (let ((_hd1627316308_
                                                 (##car _e1627216305_))
                                                (_tl1627416310_
                                                 (##cdr _e1627216305_)))
                                            (let ((_K16313_ _hd1627316308_))
                                              (if (gx#stx-pair? _tl1627416310_)
                                                  (let ((_e1627516315_
                                                         (gx#syntax-e
                                                          _tl1627416310_)))
                                                    (let ((_hd1627616318_
                                                           (##car _e1627516315_))
                                                          (_tl1627716320_
                                                           (##cdr _e1627516315_)))
                                                      (let ((_E16323_
                                                             _hd1627616318_))
                                                        (if (gx#stx-null?
                                                             _tl1627716320_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test16303_)
                                    (cons (gx#core-compile-top-syntax _K16313_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E16323_)
                                                '()))))
                        (_E1626516283_))
                    (_E1626516283_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1626516283_)))))
                                        (_E1626516283_)))))
                              (_E1626516283_))))
                      (_E1626516283_)))))
          (_E1626416325_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx16221_)
        (let* ((_e1622216232_ _stx16221_)
               (_E1622416236_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1622216232_)))
               (_E1622316258_
                (lambda ()
                  (if (gx#stx-pair? _e1622216232_)
                      (let ((_e1622516240_ (gx#syntax-e _e1622216232_)))
                        (let ((_hd1622616243_ (##car _e1622516240_))
                              (_tl1622716245_ (##cdr _e1622516240_)))
                          (if (gx#stx-pair? _tl1622716245_)
                              (let ((_e1622816248_
                                     (gx#syntax-e _tl1622716245_)))
                                (let ((_hd1622916251_ (##car _e1622816248_))
                                      (_tl1623016253_ (##cdr _e1622816248_)))
                                  (let ((_id16256_ _hd1622916251_))
                                    (if (gx#stx-null? _tl1623016253_)
                                        (if (gx#identifier? _id16256_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id16256_)
                                                        '()))
                                            (_E1622416236_))
                                        (_E1622416236_)))))
                              (_E1622416236_))))
                      (_E1622416236_)))))
          (_E1622316258_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx16167_)
        (let* ((_e1616816181_ _stx16167_)
               (_E1617016185_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1616816181_)))
               (_E1616916217_
                (lambda ()
                  (if (gx#stx-pair? _e1616816181_)
                      (let ((_e1617116189_ (gx#syntax-e _e1616816181_)))
                        (let ((_hd1617216192_ (##car _e1617116189_))
                              (_tl1617316194_ (##cdr _e1617116189_)))
                          (if (gx#stx-pair? _tl1617316194_)
                              (let ((_e1617416197_
                                     (gx#syntax-e _tl1617316194_)))
                                (let ((_hd1617516200_ (##car _e1617416197_))
                                      (_tl1617616202_ (##cdr _e1617416197_)))
                                  (let ((_id16205_ _hd1617516200_))
                                    (if (gx#stx-pair? _tl1617616202_)
                                        (let ((_e1617716207_
                                               (gx#syntax-e _tl1617616202_)))
                                          (let ((_hd1617816210_
                                                 (##car _e1617716207_))
                                                (_tl1617916212_
                                                 (##cdr _e1617716207_)))
                                            (let ((_expr16215_ _hd1617816210_))
                                              (if (gx#stx-null? _tl1617916212_)
                                                  (if (gx#identifier?
                                                       _id16205_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id16205_)
                          (cons (gx#core-compile-top-syntax _expr16215_) '())))
              (_E1617016185_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1617016185_)))))
                                        (_E1617016185_)))))
                              (_E1617016185_))))
                      (_E1617016185_)))))
          (_E1616916217_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id16162_)
        (let ((_$e16164_ (gx#resolve-identifier__0 _id16162_)))
          (if _$e16164_
              (##unchecked-structure-ref _$e16164_ '1 gx#binding::t '#f)
              _id16162_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd16160_)
        (if (gx#identifier? _hd16160_)
            (gx#core-compile-top-runtime-ref _hd16160_)
            '#f)))))
