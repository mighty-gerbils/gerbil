(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1707620171)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx167089_)
        (let* ((_e167090167097_ _stx167089_)
               (_E167092167101_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167090167097_)))
               (_E167091167115_
                (lambda ()
                  (if (gx#stx-pair? _e167090167097_)
                      (let ((_e167093167105_ (gx#syntax-e _e167090167097_)))
                        (let ((_hd167094167108_ (##car _e167093167105_))
                              (_tl167095167110_ (##cdr _e167093167105_)))
                          (let ((_form167113_ _hd167094167108_))
                            (if '#t
                                (let* ((__self171586
                                        (gx#syntax-local-e__0 _form167113_))
                                       (__method171587
                                        (method-ref
                                         __self171586
                                         'compile-top-syntax)))
                                  (if __method171587
                                      (__method171587 __self171586 _stx167089_)
                                      (error '"Missing method"
                                             __self171586
                                             'compile-top-syntax)))
                                (_E167092167101_)))))
                      (_E167092167101_)))))
          (_E167091167115_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self167049_ _stx167050_)
        (let* ((_self167051167059_ _self167049_)
               (_E167053167063_
                (lambda () (error '"No clause matching" _self167051167059_)))
               (_K167054167075_
                (lambda (_K167066_)
                  (let ((_$e167068_ (gx#stx-source _stx167050_)))
                    (if _$e167068_
                        ((lambda (_g167070167072_)
                           (gx#stx-wrap-source
                            (_K167066_ _stx167050_)
                            _g167070167072_))
                         _$e167068_)
                        (_K167066_ _stx167050_))))))
          (if (##structure-instance-of?
               _self167051167059_
               'gx#core-expander::t)
              (let* ((_e167055167078_
                      (##unchecked-structure-ref
                       _self167051167059_
                       '1
                       gx#expander::t
                       '#f))
                     (_e167056167081_
                      (##unchecked-structure-ref
                       _self167051167059_
                       '2
                       gx#core-expander::t
                       '#f))
                     (_e167057167084_
                      (##unchecked-structure-ref
                       _self167051167059_
                       '3
                       gx#core-expander::t
                       '#f))
                     (_K167087_ _e167057167084_))
                (_K167054167075_ _K167087_))
              (_E167053167063_)))))
    (bind-method!
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx166923_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx166923_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx166893_)
        (let* ((_e166894166901_ _stx166893_)
               (_E166896166905_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166894166901_)))
               (_E166895166919_
                (lambda ()
                  (if (gx#stx-pair? _e166894166901_)
                      (let ((_e166897166909_ (gx#syntax-e _e166894166901_)))
                        (let ((_hd166898166912_ (##car _e166897166909_))
                              (_tl166899166914_ (##cdr _e166897166909_)))
                          (let ((_body166917_ _tl166899166914_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body166917_))
                                (_E166896166905_)))))
                      (_E166896166905_)))))
          (_E166895166919_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx166862_)
        (let* ((_e166863166870_ _stx166862_)
               (_E166865166874_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166863166870_)))
               (_E166864166889_
                (lambda ()
                  (if (gx#stx-pair? _e166863166870_)
                      (let ((_e166866166878_ (gx#syntax-e _e166863166870_)))
                        (let ((_hd166867166881_ (##car _e166866166878_))
                              (_tl166868166883_ (##cdr _e166866166878_)))
                          (let ((_body166886_ _tl166868166883_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body166886_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E166865166874_)))))
                      (_E166865166874_)))))
          (_E166864166889_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_stx166832_)
        (let* ((_e166833166840_ _stx166832_)
               (_E166835166844_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166833166840_)))
               (_E166834166858_
                (lambda ()
                  (if (gx#stx-pair? _e166833166840_)
                      (let ((_e166836166848_ (gx#syntax-e _e166833166840_)))
                        (let ((_hd166837166851_ (##car _e166836166848_))
                              (_tl166838166853_ (##cdr _e166836166848_)))
                          (let ((_body166856_ _tl166838166853_))
                            (if '#t
                                (cons '%#begin-foreign _body166856_)
                                (_E166835166844_)))))
                      (_E166835166844_)))))
          (_E166834166858_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_stx166778_)
        (let* ((_e166779166792_ _stx166778_)
               (_E166781166796_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166779166792_)))
               (_E166780166828_
                (lambda ()
                  (if (gx#stx-pair? _e166779166792_)
                      (let ((_e166782166800_ (gx#syntax-e _e166779166792_)))
                        (let ((_hd166783166803_ (##car _e166782166800_))
                              (_tl166784166805_ (##cdr _e166782166800_)))
                          (if (gx#stx-pair? _tl166784166805_)
                              (let ((_e166785166808_
                                     (gx#syntax-e _tl166784166805_)))
                                (let ((_hd166786166811_
                                       (##car _e166785166808_))
                                      (_tl166787166813_
                                       (##cdr _e166785166808_)))
                                  (let ((_ann166816_ _hd166786166811_))
                                    (if (gx#stx-pair? _tl166787166813_)
                                        (let ((_e166788166818_
                                               (gx#syntax-e _tl166787166813_)))
                                          (let ((_hd166789166821_
                                                 (##car _e166788166818_))
                                                (_tl166790166823_
                                                 (##cdr _e166788166818_)))
                                            (let ((_expr166826_
                                                   _hd166789166821_))
                                              (if (gx#stx-null?
                                                   _tl166790166823_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr166826_)
                                                      (_E166781166796_))
                                                  (_E166781166796_)))))
                                        (_E166781166796_)))))
                              (_E166781166796_))))
                      (_E166781166796_)))))
          (_E166780166828_))))
    (define gx#core-compile-top-import%
      (lambda (_stx166748_)
        (let* ((_e166749166756_ _stx166748_)
               (_E166751166760_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166749166756_)))
               (_E166750166774_
                (lambda ()
                  (if (gx#stx-pair? _e166749166756_)
                      (let ((_e166752166764_ (gx#syntax-e _e166749166756_)))
                        (let ((_hd166753166767_ (##car _e166752166764_))
                              (_tl166754166769_ (##cdr _e166752166764_)))
                          (let ((_body166772_ _tl166754166769_))
                            (if '#t
                                (cons '%#import _body166772_)
                                (_E166751166760_)))))
                      (_E166751166760_)))))
          (_E166750166774_))))
    (define gx#core-compile-top-module%
      (lambda (_stx166705_)
        (let* ((_e166706166716_ _stx166705_)
               (_E166708166720_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166706166716_)))
               (_E166707166744_
                (lambda ()
                  (if (gx#stx-pair? _e166706166716_)
                      (let ((_e166709166724_ (gx#syntax-e _e166706166716_)))
                        (let ((_hd166710166727_ (##car _e166709166724_))
                              (_tl166711166729_ (##cdr _e166709166724_)))
                          (if (gx#stx-pair? _tl166711166729_)
                              (let ((_e166712166732_
                                     (gx#syntax-e _tl166711166729_)))
                                (let ((_hd166713166735_
                                       (##car _e166712166732_))
                                      (_tl166714166737_
                                       (##cdr _e166712166732_)))
                                  (let* ((_hd166740_ _hd166713166735_)
                                         (_body166742_ _tl166714166737_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _hd166740_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body166742_)))
                                        (_E166708166720_)))))
                              (_E166708166720_))))
                      (_E166708166720_)))))
          (_E166707166744_))))
    (define gx#core-compile-top-export%
      (lambda (_stx166675_)
        (let* ((_e166676166683_ _stx166675_)
               (_E166678166687_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166676166683_)))
               (_E166677166701_
                (lambda ()
                  (if (gx#stx-pair? _e166676166683_)
                      (let ((_e166679166691_ (gx#syntax-e _e166676166683_)))
                        (let ((_hd166680166694_ (##car _e166679166691_))
                              (_tl166681166696_ (##cdr _e166679166691_)))
                          (let ((_body166699_ _tl166681166696_))
                            (if '#t
                                (cons '%#export _body166699_)
                                (_E166678166687_)))))
                      (_E166678166687_)))))
          (_E166677166701_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx166645_)
        (let* ((_e166646166653_ _stx166645_)
               (_E166648166657_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166646166653_)))
               (_E166647166671_
                (lambda ()
                  (if (gx#stx-pair? _e166646166653_)
                      (let ((_e166649166661_ (gx#syntax-e _e166646166653_)))
                        (let ((_hd166650166664_ (##car _e166649166661_))
                              (_tl166651166666_ (##cdr _e166649166661_)))
                          (let ((_body166669_ _tl166651166666_))
                            (if '#t
                                (cons '%#provide _body166669_)
                                (_E166648166657_)))))
                      (_E166648166657_)))))
          (_E166647166671_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx166615_)
        (let* ((_e166616166623_ _stx166615_)
               (_E166618166627_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166616166623_)))
               (_E166617166641_
                (lambda ()
                  (if (gx#stx-pair? _e166616166623_)
                      (let ((_e166619166631_ (gx#syntax-e _e166616166623_)))
                        (let ((_hd166620166634_ (##car _e166619166631_))
                              (_tl166621166636_ (##cdr _e166619166631_)))
                          (let ((_body166639_ _tl166621166636_))
                            (if '#t
                                (cons '%#extern _body166639_)
                                (_E166618166627_)))))
                      (_E166618166627_)))))
          (_E166617166641_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx166561_)
        (let* ((_e166562166575_ _stx166561_)
               (_E166564166579_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166562166575_)))
               (_E166563166611_
                (lambda ()
                  (if (gx#stx-pair? _e166562166575_)
                      (let ((_e166565166583_ (gx#syntax-e _e166562166575_)))
                        (let ((_hd166566166586_ (##car _e166565166583_))
                              (_tl166567166588_ (##cdr _e166565166583_)))
                          (if (gx#stx-pair? _tl166567166588_)
                              (let ((_e166568166591_
                                     (gx#syntax-e _tl166567166588_)))
                                (let ((_hd166569166594_
                                       (##car _e166568166591_))
                                      (_tl166570166596_
                                       (##cdr _e166568166591_)))
                                  (let ((_hd166599_ _hd166569166594_))
                                    (if (gx#stx-pair? _tl166570166596_)
                                        (let ((_e166571166601_
                                               (gx#syntax-e _tl166570166596_)))
                                          (let ((_hd166572166604_
                                                 (##car _e166571166601_))
                                                (_tl166573166606_
                                                 (##cdr _e166571166601_)))
                                            (let ((_expr166609_
                                                   _hd166572166604_))
                                              (if (gx#stx-null?
                                                   _tl166573166606_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd166599_)
                          (cons (gx#core-compile-top-syntax _expr166609_)
                                '())))
              (_E166564166579_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E166564166579_)))))
                                        (_E166564166579_)))))
                              (_E166564166579_))))
                      (_E166564166579_)))))
          (_E166563166611_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx166506_)
        (let* ((_e166507166520_ _stx166506_)
               (_E166509166524_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166507166520_)))
               (_E166508166557_
                (lambda ()
                  (if (gx#stx-pair? _e166507166520_)
                      (let ((_e166510166528_ (gx#syntax-e _e166507166520_)))
                        (let ((_hd166511166531_ (##car _e166510166528_))
                              (_tl166512166533_ (##cdr _e166510166528_)))
                          (if (gx#stx-pair? _tl166512166533_)
                              (let ((_e166513166536_
                                     (gx#syntax-e _tl166512166533_)))
                                (let ((_hd166514166539_
                                       (##car _e166513166536_))
                                      (_tl166515166541_
                                       (##cdr _e166513166536_)))
                                  (let ((_hd166544_ _hd166514166539_))
                                    (if (gx#stx-pair? _tl166515166541_)
                                        (let ((_e166516166546_
                                               (gx#syntax-e _tl166515166541_)))
                                          (let ((_hd166517166549_
                                                 (##car _e166516166546_))
                                                (_tl166518166551_
                                                 (##cdr _e166516166546_)))
                                            (let ((_expr166554_
                                                   _hd166517166549_))
                                              (if (gx#stx-null?
                                                   _tl166518166551_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd166544_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr166554_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E166509166524_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E166509166524_)))))
                                        (_E166509166524_)))))
                              (_E166509166524_))))
                      (_E166509166524_)))))
          (_E166508166557_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx166476_)
        (let* ((_e166477166484_ _stx166476_)
               (_E166479166488_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166477166484_)))
               (_E166478166502_
                (lambda ()
                  (if (gx#stx-pair? _e166477166484_)
                      (let ((_e166480166492_ (gx#syntax-e _e166477166484_)))
                        (let ((_hd166481166495_ (##car _e166480166492_))
                              (_tl166482166497_ (##cdr _e166480166492_)))
                          (let ((_body166500_ _tl166482166497_))
                            (if '#t
                                (cons '%#define-alias _body166500_)
                                (_E166479166488_)))))
                      (_E166479166488_)))))
          (_E166478166502_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx166446_)
        (let* ((_e166447166454_ _stx166446_)
               (_E166449166458_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166447166454_)))
               (_E166448166472_
                (lambda ()
                  (if (gx#stx-pair? _e166447166454_)
                      (let ((_e166450166462_ (gx#syntax-e _e166447166454_)))
                        (let ((_hd166451166465_ (##car _e166450166462_))
                              (_tl166452166467_ (##cdr _e166450166462_)))
                          (let ((_body166470_ _tl166452166467_))
                            (if '#t
                                (cons '%#define-runtime _body166470_)
                                (_E166449166458_)))))
                      (_E166449166458_)))))
          (_E166448166472_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx166416_)
        (let* ((_e166417166424_ _stx166416_)
               (_E166419166428_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166417166424_)))
               (_E166418166442_
                (lambda ()
                  (if (gx#stx-pair? _e166417166424_)
                      (let ((_e166420166432_ (gx#syntax-e _e166417166424_)))
                        (let ((_hd166421166435_ (##car _e166420166432_))
                              (_tl166422166437_ (##cdr _e166420166432_)))
                          (let ((_decls166440_ _tl166422166437_))
                            (if '#t
                                (cons '%#declare _decls166440_)
                                (_E166419166428_)))))
                      (_E166419166428_)))))
          (_E166418166442_))))
    (define gx#core-compile-top-lambda%
      (lambda (_stx166386_)
        (let* ((_e166387166394_ _stx166386_)
               (_E166389166398_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166387166394_)))
               (_E166388166412_
                (lambda ()
                  (if (gx#stx-pair? _e166387166394_)
                      (let ((_e166390166402_ (gx#syntax-e _e166387166394_)))
                        (let ((_hd166391166405_ (##car _e166390166402_))
                              (_tl166392166407_ (##cdr _e166390166402_)))
                          (let ((_clause166410_ _tl166392166407_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause166410_))
                                (_E166389166398_)))))
                      (_E166389166398_)))))
          (_E166388166412_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx166343_)
        (let* ((_e166344166354_ _stx166343_)
               (_E166346166358_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166344166354_)))
               (_E166345166382_
                (lambda ()
                  (if (gx#stx-pair? _e166344166354_)
                      (let ((_e166347166362_ (gx#syntax-e _e166344166354_)))
                        (let ((_hd166348166365_ (##car _e166347166362_))
                              (_tl166349166367_ (##cdr _e166347166362_)))
                          (let ((_hd166370_ _hd166348166365_))
                            (if (gx#stx-pair? _tl166349166367_)
                                (let ((_e166350166372_
                                       (gx#syntax-e _tl166349166367_)))
                                  (let ((_hd166351166375_
                                         (##car _e166350166372_))
                                        (_tl166352166377_
                                         (##cdr _e166350166372_)))
                                    (let ((_body166380_ _hd166351166375_))
                                      (if (gx#stx-null? _tl166352166377_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd166370_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body166380_)
                                                          '()))
                                              (_E166346166358_))
                                          (_E166346166358_)))))
                                (_E166346166358_)))))
                      (_E166346166358_)))))
          (_E166345166382_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx166313_)
        (let* ((_e166314166321_ _stx166313_)
               (_E166316166325_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166314166321_)))
               (_E166315166339_
                (lambda ()
                  (if (gx#stx-pair? _e166314166321_)
                      (let ((_e166317166329_ (gx#syntax-e _e166314166321_)))
                        (let ((_hd166318166332_ (##car _e166317166329_))
                              (_tl166319166334_ (##cdr _e166317166329_)))
                          (let ((_clauses166337_ _tl166319166334_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses166337_))
                                (_E166316166325_)))))
                      (_E166316166325_)))))
          (_E166315166339_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx166248_ _form166249_)
        (let* ((_e166250166263_ _stx166248_)
               (_E166252166267_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166250166263_)))
               (_E166251166299_
                (lambda ()
                  (if (gx#stx-pair? _e166250166263_)
                      (let ((_e166253166271_ (gx#syntax-e _e166250166263_)))
                        (let ((_hd166254166274_ (##car _e166253166271_))
                              (_tl166255166276_ (##cdr _e166253166271_)))
                          (if (gx#stx-pair? _tl166255166276_)
                              (let ((_e166256166279_
                                     (gx#syntax-e _tl166255166276_)))
                                (let ((_hd166257166282_
                                       (##car _e166256166279_))
                                      (_tl166258166284_
                                       (##cdr _e166256166279_)))
                                  (let ((_hd166287_ _hd166257166282_))
                                    (if (gx#stx-pair? _tl166258166284_)
                                        (let ((_e166259166289_
                                               (gx#syntax-e _tl166258166284_)))
                                          (let ((_hd166260166292_
                                                 (##car _e166259166289_))
                                                (_tl166261166294_
                                                 (##cdr _e166259166289_)))
                                            (let ((_body166297_
                                                   _hd166260166292_))
                                              (if (gx#stx-null?
                                                   _tl166261166294_)
                                                  (if '#t
                                                      (cons _form166249_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd166287_)
                          (cons (gx#core-compile-top-syntax _body166297_)
                                '())))
              (_E166252166267_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E166252166267_)))))
                                        (_E166252166267_)))))
                              (_E166252166267_))))
                      (_E166252166267_)))))
          (_E166251166299_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx166306_)
        (let ((_form166308_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx166306_ _form166308_))))
    (define gx#core-compile-top-let-values%
      (lambda _g171589_
        (let ((_g171588_ (##length _g171589_)))
          (cond ((##fx= _g171588_ 1)
                 (apply (lambda (_stx166306_)
                          (gx#core-compile-top-let-values%__0 _stx166306_))
                        _g171589_))
                ((##fx= _g171588_ 2)
                 (apply (lambda (_stx166310_ _form166311_)
                          (gx#core-compile-top-let-values%__%
                           _stx166310_
                           _form166311_))
                        _g171589_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g171589_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx166245_)
        (gx#core-compile-top-let-values%__% _stx166245_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx166243_)
        (gx#core-compile-top-let-values%__% _stx166243_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx166202_)
        (let* ((_e166203166213_ _stx166202_)
               (_E166205166217_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166203166213_)))
               (_E166204166239_
                (lambda ()
                  (if (gx#stx-pair? _e166203166213_)
                      (let ((_e166206166221_ (gx#syntax-e _e166203166213_)))
                        (let ((_hd166207166224_ (##car _e166206166221_))
                              (_tl166208166226_ (##cdr _e166206166221_)))
                          (if (gx#stx-pair? _tl166208166226_)
                              (let ((_e166209166229_
                                     (gx#syntax-e _tl166208166226_)))
                                (let ((_hd166210166232_
                                       (##car _e166209166229_))
                                      (_tl166211166234_
                                       (##cdr _e166209166229_)))
                                  (let ((_e166237_ _hd166210166232_))
                                    (if (gx#stx-null? _tl166211166234_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e166237_)
                                                        '()))
                                            (_E166205166217_))
                                        (_E166205166217_)))))
                              (_E166205166217_))))
                      (_E166205166217_)))))
          (_E166204166239_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx166161_)
        (let* ((_e166162166172_ _stx166161_)
               (_E166164166176_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166162166172_)))
               (_E166163166198_
                (lambda ()
                  (if (gx#stx-pair? _e166162166172_)
                      (let ((_e166165166180_ (gx#syntax-e _e166162166172_)))
                        (let ((_hd166166166183_ (##car _e166165166180_))
                              (_tl166167166185_ (##cdr _e166165166180_)))
                          (if (gx#stx-pair? _tl166167166185_)
                              (let ((_e166168166188_
                                     (gx#syntax-e _tl166167166185_)))
                                (let ((_hd166169166191_
                                       (##car _e166168166188_))
                                      (_tl166170166193_
                                       (##cdr _e166168166188_)))
                                  (let ((_e166196_ _hd166169166191_))
                                    (if (gx#stx-null? _tl166170166193_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e166196_)
                                                        '()))
                                            (_E166164166176_))
                                        (_E166164166176_)))))
                              (_E166164166176_))))
                      (_E166164166176_)))))
          (_E166163166198_))))
    (define gx#core-compile-top-call%
      (lambda (_stx166118_)
        (let* ((_e166119166129_ _stx166118_)
               (_E166121166133_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166119166129_)))
               (_E166120166157_
                (lambda ()
                  (if (gx#stx-pair? _e166119166129_)
                      (let ((_e166122166137_ (gx#syntax-e _e166119166129_)))
                        (let ((_hd166123166140_ (##car _e166122166137_))
                              (_tl166124166142_ (##cdr _e166122166137_)))
                          (if (gx#stx-pair? _tl166124166142_)
                              (let ((_e166125166145_
                                     (gx#syntax-e _tl166124166142_)))
                                (let ((_hd166126166148_
                                       (##car _e166125166145_))
                                      (_tl166127166150_
                                       (##cdr _e166125166145_)))
                                  (let* ((_rator166153_ _hd166126166148_)
                                         (_args166155_ _tl166127166150_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator166153_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args166155_)))
                                        (_E166121166133_)))))
                              (_E166121166133_))))
                      (_E166121166133_)))))
          (_E166120166157_))))
    (define gx#core-compile-top-if%
      (lambda (_stx166051_)
        (let* ((_e166052166068_ _stx166051_)
               (_E166054166072_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166052166068_)))
               (_E166053166114_
                (lambda ()
                  (if (gx#stx-pair? _e166052166068_)
                      (let ((_e166055166076_ (gx#syntax-e _e166052166068_)))
                        (let ((_hd166056166079_ (##car _e166055166076_))
                              (_tl166057166081_ (##cdr _e166055166076_)))
                          (if (gx#stx-pair? _tl166057166081_)
                              (let ((_e166058166084_
                                     (gx#syntax-e _tl166057166081_)))
                                (let ((_hd166059166087_
                                       (##car _e166058166084_))
                                      (_tl166060166089_
                                       (##cdr _e166058166084_)))
                                  (let ((_test166092_ _hd166059166087_))
                                    (if (gx#stx-pair? _tl166060166089_)
                                        (let ((_e166061166094_
                                               (gx#syntax-e _tl166060166089_)))
                                          (let ((_hd166062166097_
                                                 (##car _e166061166094_))
                                                (_tl166063166099_
                                                 (##cdr _e166061166094_)))
                                            (let ((_K166102_ _hd166062166097_))
                                              (if (gx#stx-pair?
                                                   _tl166063166099_)
                                                  (let ((_e166064166104_
                                                         (gx#syntax-e
                                                          _tl166063166099_)))
                                                    (let ((_hd166065166107_
                                                           (##car _e166064166104_))
                                                          (_tl166066166109_
                                                           (##cdr _e166064166104_)))
                                                      (let ((_E166112_
                                                             _hd166065166107_))
                                                        (if (gx#stx-null?
                                                             _tl166066166109_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test166092_)
                                    (cons (gx#core-compile-top-syntax
                                           _K166102_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E166112_)
                                                '()))))
                        (_E166054166072_))
                    (_E166054166072_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E166054166072_)))))
                                        (_E166054166072_)))))
                              (_E166054166072_))))
                      (_E166054166072_)))))
          (_E166053166114_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx166010_)
        (let* ((_e166011166021_ _stx166010_)
               (_E166013166025_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166011166021_)))
               (_E166012166047_
                (lambda ()
                  (if (gx#stx-pair? _e166011166021_)
                      (let ((_e166014166029_ (gx#syntax-e _e166011166021_)))
                        (let ((_hd166015166032_ (##car _e166014166029_))
                              (_tl166016166034_ (##cdr _e166014166029_)))
                          (if (gx#stx-pair? _tl166016166034_)
                              (let ((_e166017166037_
                                     (gx#syntax-e _tl166016166034_)))
                                (let ((_hd166018166040_
                                       (##car _e166017166037_))
                                      (_tl166019166042_
                                       (##cdr _e166017166037_)))
                                  (let ((_id166045_ _hd166018166040_))
                                    (if (gx#stx-null? _tl166019166042_)
                                        (if (gx#identifier? _id166045_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id166045_)
                                                        '()))
                                            (_E166013166025_))
                                        (_E166013166025_)))))
                              (_E166013166025_))))
                      (_E166013166025_)))))
          (_E166012166047_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx165956_)
        (let* ((_e165957165970_ _stx165956_)
               (_E165959165974_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165957165970_)))
               (_E165958166006_
                (lambda ()
                  (if (gx#stx-pair? _e165957165970_)
                      (let ((_e165960165978_ (gx#syntax-e _e165957165970_)))
                        (let ((_hd165961165981_ (##car _e165960165978_))
                              (_tl165962165983_ (##cdr _e165960165978_)))
                          (if (gx#stx-pair? _tl165962165983_)
                              (let ((_e165963165986_
                                     (gx#syntax-e _tl165962165983_)))
                                (let ((_hd165964165989_
                                       (##car _e165963165986_))
                                      (_tl165965165991_
                                       (##cdr _e165963165986_)))
                                  (let ((_id165994_ _hd165964165989_))
                                    (if (gx#stx-pair? _tl165965165991_)
                                        (let ((_e165966165996_
                                               (gx#syntax-e _tl165965165991_)))
                                          (let ((_hd165967165999_
                                                 (##car _e165966165996_))
                                                (_tl165968166001_
                                                 (##cdr _e165966165996_)))
                                            (let ((_expr166004_
                                                   _hd165967165999_))
                                              (if (gx#stx-null?
                                                   _tl165968166001_)
                                                  (if (gx#identifier?
                                                       _id165994_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id165994_)
                          (cons (gx#core-compile-top-syntax _expr166004_)
                                '())))
              (_E165959165974_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E165959165974_)))))
                                        (_E165959165974_)))))
                              (_E165959165974_))))
                      (_E165959165974_)))))
          (_E165958166006_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id165951_)
        (let ((_$e165953_ (gx#resolve-identifier__0 _id165951_)))
          (if _$e165953_
              (##unchecked-structure-ref _$e165953_ '1 gx#binding::t '#f)
              _id165951_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd165949_)
        (if (gx#identifier? _hd165949_)
            (gx#core-compile-top-runtime-ref _hd165949_)
            '#f)))))
