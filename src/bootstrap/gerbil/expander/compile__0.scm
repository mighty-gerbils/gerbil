(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1707610214)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx167075_)
        (let* ((_e167076167083_ _stx167075_)
               (_E167078167087_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167076167083_)))
               (_E167077167101_
                (lambda ()
                  (if (gx#stx-pair? _e167076167083_)
                      (let ((_e167079167091_ (gx#syntax-e _e167076167083_)))
                        (let ((_hd167080167094_ (##car _e167079167091_))
                              (_tl167081167096_ (##cdr _e167079167091_)))
                          (let ((_form167099_ _hd167080167094_))
                            (if '#t
                                (let* ((__self171572
                                        (gx#syntax-local-e__0 _form167099_))
                                       (__method171573
                                        (method-ref
                                         __self171572
                                         'compile-top-syntax)))
                                  (if __method171573
                                      (__method171573 __self171572 _stx167075_)
                                      (error '"Missing method"
                                             __self171572
                                             'compile-top-syntax)))
                                (_E167078167087_)))))
                      (_E167078167087_)))))
          (_E167077167101_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self167035_ _stx167036_)
        (let* ((_self167037167045_ _self167035_)
               (_E167039167049_
                (lambda () (error '"No clause matching" _self167037167045_)))
               (_K167040167061_
                (lambda (_K167052_)
                  (let ((_$e167054_ (gx#stx-source _stx167036_)))
                    (if _$e167054_
                        ((lambda (_g167056167058_)
                           (gx#stx-wrap-source
                            (_K167052_ _stx167036_)
                            _g167056167058_))
                         _$e167054_)
                        (_K167052_ _stx167036_))))))
          (if (##structure-instance-of?
               _self167037167045_
               'gx#core-expander::t)
              (let* ((_e167041167064_
                      (##unchecked-structure-ref
                       _self167037167045_
                       '1
                       gx#expander::t
                       '#f))
                     (_e167042167067_
                      (##unchecked-structure-ref
                       _self167037167045_
                       '2
                       gx#core-expander::t
                       '#f))
                     (_e167043167070_
                      (##unchecked-structure-ref
                       _self167037167045_
                       '3
                       gx#core-expander::t
                       '#f))
                     (_K167073_ _e167043167070_))
                (_K167040167061_ _K167073_))
              (_E167039167049_)))))
    (bind-method!
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx166909_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx166909_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx166879_)
        (let* ((_e166880166887_ _stx166879_)
               (_E166882166891_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166880166887_)))
               (_E166881166905_
                (lambda ()
                  (if (gx#stx-pair? _e166880166887_)
                      (let ((_e166883166895_ (gx#syntax-e _e166880166887_)))
                        (let ((_hd166884166898_ (##car _e166883166895_))
                              (_tl166885166900_ (##cdr _e166883166895_)))
                          (let ((_body166903_ _tl166885166900_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body166903_))
                                (_E166882166891_)))))
                      (_E166882166891_)))))
          (_E166881166905_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx166848_)
        (let* ((_e166849166856_ _stx166848_)
               (_E166851166860_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166849166856_)))
               (_E166850166875_
                (lambda ()
                  (if (gx#stx-pair? _e166849166856_)
                      (let ((_e166852166864_ (gx#syntax-e _e166849166856_)))
                        (let ((_hd166853166867_ (##car _e166852166864_))
                              (_tl166854166869_ (##cdr _e166852166864_)))
                          (let ((_body166872_ _tl166854166869_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body166872_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E166851166860_)))))
                      (_E166851166860_)))))
          (_E166850166875_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_stx166818_)
        (let* ((_e166819166826_ _stx166818_)
               (_E166821166830_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166819166826_)))
               (_E166820166844_
                (lambda ()
                  (if (gx#stx-pair? _e166819166826_)
                      (let ((_e166822166834_ (gx#syntax-e _e166819166826_)))
                        (let ((_hd166823166837_ (##car _e166822166834_))
                              (_tl166824166839_ (##cdr _e166822166834_)))
                          (let ((_body166842_ _tl166824166839_))
                            (if '#t
                                (cons '%#begin-foreign _body166842_)
                                (_E166821166830_)))))
                      (_E166821166830_)))))
          (_E166820166844_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_stx166764_)
        (let* ((_e166765166778_ _stx166764_)
               (_E166767166782_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166765166778_)))
               (_E166766166814_
                (lambda ()
                  (if (gx#stx-pair? _e166765166778_)
                      (let ((_e166768166786_ (gx#syntax-e _e166765166778_)))
                        (let ((_hd166769166789_ (##car _e166768166786_))
                              (_tl166770166791_ (##cdr _e166768166786_)))
                          (if (gx#stx-pair? _tl166770166791_)
                              (let ((_e166771166794_
                                     (gx#syntax-e _tl166770166791_)))
                                (let ((_hd166772166797_
                                       (##car _e166771166794_))
                                      (_tl166773166799_
                                       (##cdr _e166771166794_)))
                                  (let ((_ann166802_ _hd166772166797_))
                                    (if (gx#stx-pair? _tl166773166799_)
                                        (let ((_e166774166804_
                                               (gx#syntax-e _tl166773166799_)))
                                          (let ((_hd166775166807_
                                                 (##car _e166774166804_))
                                                (_tl166776166809_
                                                 (##cdr _e166774166804_)))
                                            (let ((_expr166812_
                                                   _hd166775166807_))
                                              (if (gx#stx-null?
                                                   _tl166776166809_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr166812_)
                                                      (_E166767166782_))
                                                  (_E166767166782_)))))
                                        (_E166767166782_)))))
                              (_E166767166782_))))
                      (_E166767166782_)))))
          (_E166766166814_))))
    (define gx#core-compile-top-import%
      (lambda (_stx166734_)
        (let* ((_e166735166742_ _stx166734_)
               (_E166737166746_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166735166742_)))
               (_E166736166760_
                (lambda ()
                  (if (gx#stx-pair? _e166735166742_)
                      (let ((_e166738166750_ (gx#syntax-e _e166735166742_)))
                        (let ((_hd166739166753_ (##car _e166738166750_))
                              (_tl166740166755_ (##cdr _e166738166750_)))
                          (let ((_body166758_ _tl166740166755_))
                            (if '#t
                                (cons '%#import _body166758_)
                                (_E166737166746_)))))
                      (_E166737166746_)))))
          (_E166736166760_))))
    (define gx#core-compile-top-module%
      (lambda (_stx166691_)
        (let* ((_e166692166702_ _stx166691_)
               (_E166694166706_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166692166702_)))
               (_E166693166730_
                (lambda ()
                  (if (gx#stx-pair? _e166692166702_)
                      (let ((_e166695166710_ (gx#syntax-e _e166692166702_)))
                        (let ((_hd166696166713_ (##car _e166695166710_))
                              (_tl166697166715_ (##cdr _e166695166710_)))
                          (if (gx#stx-pair? _tl166697166715_)
                              (let ((_e166698166718_
                                     (gx#syntax-e _tl166697166715_)))
                                (let ((_hd166699166721_
                                       (##car _e166698166718_))
                                      (_tl166700166723_
                                       (##cdr _e166698166718_)))
                                  (let* ((_hd166726_ _hd166699166721_)
                                         (_body166728_ _tl166700166723_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _hd166726_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body166728_)))
                                        (_E166694166706_)))))
                              (_E166694166706_))))
                      (_E166694166706_)))))
          (_E166693166730_))))
    (define gx#core-compile-top-export%
      (lambda (_stx166661_)
        (let* ((_e166662166669_ _stx166661_)
               (_E166664166673_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166662166669_)))
               (_E166663166687_
                (lambda ()
                  (if (gx#stx-pair? _e166662166669_)
                      (let ((_e166665166677_ (gx#syntax-e _e166662166669_)))
                        (let ((_hd166666166680_ (##car _e166665166677_))
                              (_tl166667166682_ (##cdr _e166665166677_)))
                          (let ((_body166685_ _tl166667166682_))
                            (if '#t
                                (cons '%#export _body166685_)
                                (_E166664166673_)))))
                      (_E166664166673_)))))
          (_E166663166687_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx166631_)
        (let* ((_e166632166639_ _stx166631_)
               (_E166634166643_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166632166639_)))
               (_E166633166657_
                (lambda ()
                  (if (gx#stx-pair? _e166632166639_)
                      (let ((_e166635166647_ (gx#syntax-e _e166632166639_)))
                        (let ((_hd166636166650_ (##car _e166635166647_))
                              (_tl166637166652_ (##cdr _e166635166647_)))
                          (let ((_body166655_ _tl166637166652_))
                            (if '#t
                                (cons '%#provide _body166655_)
                                (_E166634166643_)))))
                      (_E166634166643_)))))
          (_E166633166657_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx166601_)
        (let* ((_e166602166609_ _stx166601_)
               (_E166604166613_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166602166609_)))
               (_E166603166627_
                (lambda ()
                  (if (gx#stx-pair? _e166602166609_)
                      (let ((_e166605166617_ (gx#syntax-e _e166602166609_)))
                        (let ((_hd166606166620_ (##car _e166605166617_))
                              (_tl166607166622_ (##cdr _e166605166617_)))
                          (let ((_body166625_ _tl166607166622_))
                            (if '#t
                                (cons '%#extern _body166625_)
                                (_E166604166613_)))))
                      (_E166604166613_)))))
          (_E166603166627_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx166547_)
        (let* ((_e166548166561_ _stx166547_)
               (_E166550166565_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166548166561_)))
               (_E166549166597_
                (lambda ()
                  (if (gx#stx-pair? _e166548166561_)
                      (let ((_e166551166569_ (gx#syntax-e _e166548166561_)))
                        (let ((_hd166552166572_ (##car _e166551166569_))
                              (_tl166553166574_ (##cdr _e166551166569_)))
                          (if (gx#stx-pair? _tl166553166574_)
                              (let ((_e166554166577_
                                     (gx#syntax-e _tl166553166574_)))
                                (let ((_hd166555166580_
                                       (##car _e166554166577_))
                                      (_tl166556166582_
                                       (##cdr _e166554166577_)))
                                  (let ((_hd166585_ _hd166555166580_))
                                    (if (gx#stx-pair? _tl166556166582_)
                                        (let ((_e166557166587_
                                               (gx#syntax-e _tl166556166582_)))
                                          (let ((_hd166558166590_
                                                 (##car _e166557166587_))
                                                (_tl166559166592_
                                                 (##cdr _e166557166587_)))
                                            (let ((_expr166595_
                                                   _hd166558166590_))
                                              (if (gx#stx-null?
                                                   _tl166559166592_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd166585_)
                          (cons (gx#core-compile-top-syntax _expr166595_)
                                '())))
              (_E166550166565_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E166550166565_)))))
                                        (_E166550166565_)))))
                              (_E166550166565_))))
                      (_E166550166565_)))))
          (_E166549166597_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx166492_)
        (let* ((_e166493166506_ _stx166492_)
               (_E166495166510_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166493166506_)))
               (_E166494166543_
                (lambda ()
                  (if (gx#stx-pair? _e166493166506_)
                      (let ((_e166496166514_ (gx#syntax-e _e166493166506_)))
                        (let ((_hd166497166517_ (##car _e166496166514_))
                              (_tl166498166519_ (##cdr _e166496166514_)))
                          (if (gx#stx-pair? _tl166498166519_)
                              (let ((_e166499166522_
                                     (gx#syntax-e _tl166498166519_)))
                                (let ((_hd166500166525_
                                       (##car _e166499166522_))
                                      (_tl166501166527_
                                       (##cdr _e166499166522_)))
                                  (let ((_hd166530_ _hd166500166525_))
                                    (if (gx#stx-pair? _tl166501166527_)
                                        (let ((_e166502166532_
                                               (gx#syntax-e _tl166501166527_)))
                                          (let ((_hd166503166535_
                                                 (##car _e166502166532_))
                                                (_tl166504166537_
                                                 (##cdr _e166502166532_)))
                                            (let ((_expr166540_
                                                   _hd166503166535_))
                                              (if (gx#stx-null?
                                                   _tl166504166537_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd166530_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr166540_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E166495166510_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E166495166510_)))))
                                        (_E166495166510_)))))
                              (_E166495166510_))))
                      (_E166495166510_)))))
          (_E166494166543_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx166462_)
        (let* ((_e166463166470_ _stx166462_)
               (_E166465166474_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166463166470_)))
               (_E166464166488_
                (lambda ()
                  (if (gx#stx-pair? _e166463166470_)
                      (let ((_e166466166478_ (gx#syntax-e _e166463166470_)))
                        (let ((_hd166467166481_ (##car _e166466166478_))
                              (_tl166468166483_ (##cdr _e166466166478_)))
                          (let ((_body166486_ _tl166468166483_))
                            (if '#t
                                (cons '%#define-alias _body166486_)
                                (_E166465166474_)))))
                      (_E166465166474_)))))
          (_E166464166488_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx166432_)
        (let* ((_e166433166440_ _stx166432_)
               (_E166435166444_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166433166440_)))
               (_E166434166458_
                (lambda ()
                  (if (gx#stx-pair? _e166433166440_)
                      (let ((_e166436166448_ (gx#syntax-e _e166433166440_)))
                        (let ((_hd166437166451_ (##car _e166436166448_))
                              (_tl166438166453_ (##cdr _e166436166448_)))
                          (let ((_body166456_ _tl166438166453_))
                            (if '#t
                                (cons '%#define-runtime _body166456_)
                                (_E166435166444_)))))
                      (_E166435166444_)))))
          (_E166434166458_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx166402_)
        (let* ((_e166403166410_ _stx166402_)
               (_E166405166414_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166403166410_)))
               (_E166404166428_
                (lambda ()
                  (if (gx#stx-pair? _e166403166410_)
                      (let ((_e166406166418_ (gx#syntax-e _e166403166410_)))
                        (let ((_hd166407166421_ (##car _e166406166418_))
                              (_tl166408166423_ (##cdr _e166406166418_)))
                          (let ((_decls166426_ _tl166408166423_))
                            (if '#t
                                (cons '%#declare _decls166426_)
                                (_E166405166414_)))))
                      (_E166405166414_)))))
          (_E166404166428_))))
    (define gx#core-compile-top-lambda%
      (lambda (_stx166372_)
        (let* ((_e166373166380_ _stx166372_)
               (_E166375166384_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166373166380_)))
               (_E166374166398_
                (lambda ()
                  (if (gx#stx-pair? _e166373166380_)
                      (let ((_e166376166388_ (gx#syntax-e _e166373166380_)))
                        (let ((_hd166377166391_ (##car _e166376166388_))
                              (_tl166378166393_ (##cdr _e166376166388_)))
                          (let ((_clause166396_ _tl166378166393_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause166396_))
                                (_E166375166384_)))))
                      (_E166375166384_)))))
          (_E166374166398_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx166329_)
        (let* ((_e166330166340_ _stx166329_)
               (_E166332166344_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166330166340_)))
               (_E166331166368_
                (lambda ()
                  (if (gx#stx-pair? _e166330166340_)
                      (let ((_e166333166348_ (gx#syntax-e _e166330166340_)))
                        (let ((_hd166334166351_ (##car _e166333166348_))
                              (_tl166335166353_ (##cdr _e166333166348_)))
                          (let ((_hd166356_ _hd166334166351_))
                            (if (gx#stx-pair? _tl166335166353_)
                                (let ((_e166336166358_
                                       (gx#syntax-e _tl166335166353_)))
                                  (let ((_hd166337166361_
                                         (##car _e166336166358_))
                                        (_tl166338166363_
                                         (##cdr _e166336166358_)))
                                    (let ((_body166366_ _hd166337166361_))
                                      (if (gx#stx-null? _tl166338166363_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd166356_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body166366_)
                                                          '()))
                                              (_E166332166344_))
                                          (_E166332166344_)))))
                                (_E166332166344_)))))
                      (_E166332166344_)))))
          (_E166331166368_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx166299_)
        (let* ((_e166300166307_ _stx166299_)
               (_E166302166311_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166300166307_)))
               (_E166301166325_
                (lambda ()
                  (if (gx#stx-pair? _e166300166307_)
                      (let ((_e166303166315_ (gx#syntax-e _e166300166307_)))
                        (let ((_hd166304166318_ (##car _e166303166315_))
                              (_tl166305166320_ (##cdr _e166303166315_)))
                          (let ((_clauses166323_ _tl166305166320_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses166323_))
                                (_E166302166311_)))))
                      (_E166302166311_)))))
          (_E166301166325_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx166234_ _form166235_)
        (let* ((_e166236166249_ _stx166234_)
               (_E166238166253_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166236166249_)))
               (_E166237166285_
                (lambda ()
                  (if (gx#stx-pair? _e166236166249_)
                      (let ((_e166239166257_ (gx#syntax-e _e166236166249_)))
                        (let ((_hd166240166260_ (##car _e166239166257_))
                              (_tl166241166262_ (##cdr _e166239166257_)))
                          (if (gx#stx-pair? _tl166241166262_)
                              (let ((_e166242166265_
                                     (gx#syntax-e _tl166241166262_)))
                                (let ((_hd166243166268_
                                       (##car _e166242166265_))
                                      (_tl166244166270_
                                       (##cdr _e166242166265_)))
                                  (let ((_hd166273_ _hd166243166268_))
                                    (if (gx#stx-pair? _tl166244166270_)
                                        (let ((_e166245166275_
                                               (gx#syntax-e _tl166244166270_)))
                                          (let ((_hd166246166278_
                                                 (##car _e166245166275_))
                                                (_tl166247166280_
                                                 (##cdr _e166245166275_)))
                                            (let ((_body166283_
                                                   _hd166246166278_))
                                              (if (gx#stx-null?
                                                   _tl166247166280_)
                                                  (if '#t
                                                      (cons _form166235_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd166273_)
                          (cons (gx#core-compile-top-syntax _body166283_)
                                '())))
              (_E166238166253_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E166238166253_)))))
                                        (_E166238166253_)))))
                              (_E166238166253_))))
                      (_E166238166253_)))))
          (_E166237166285_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx166292_)
        (let ((_form166294_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx166292_ _form166294_))))
    (define gx#core-compile-top-let-values%
      (lambda _g171575_
        (let ((_g171574_ (##length _g171575_)))
          (cond ((##fx= _g171574_ 1)
                 (apply (lambda (_stx166292_)
                          (gx#core-compile-top-let-values%__0 _stx166292_))
                        _g171575_))
                ((##fx= _g171574_ 2)
                 (apply (lambda (_stx166296_ _form166297_)
                          (gx#core-compile-top-let-values%__%
                           _stx166296_
                           _form166297_))
                        _g171575_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g171575_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx166231_)
        (gx#core-compile-top-let-values%__% _stx166231_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx166229_)
        (gx#core-compile-top-let-values%__% _stx166229_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx166188_)
        (let* ((_e166189166199_ _stx166188_)
               (_E166191166203_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166189166199_)))
               (_E166190166225_
                (lambda ()
                  (if (gx#stx-pair? _e166189166199_)
                      (let ((_e166192166207_ (gx#syntax-e _e166189166199_)))
                        (let ((_hd166193166210_ (##car _e166192166207_))
                              (_tl166194166212_ (##cdr _e166192166207_)))
                          (if (gx#stx-pair? _tl166194166212_)
                              (let ((_e166195166215_
                                     (gx#syntax-e _tl166194166212_)))
                                (let ((_hd166196166218_
                                       (##car _e166195166215_))
                                      (_tl166197166220_
                                       (##cdr _e166195166215_)))
                                  (let ((_e166223_ _hd166196166218_))
                                    (if (gx#stx-null? _tl166197166220_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e166223_)
                                                        '()))
                                            (_E166191166203_))
                                        (_E166191166203_)))))
                              (_E166191166203_))))
                      (_E166191166203_)))))
          (_E166190166225_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx166147_)
        (let* ((_e166148166158_ _stx166147_)
               (_E166150166162_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166148166158_)))
               (_E166149166184_
                (lambda ()
                  (if (gx#stx-pair? _e166148166158_)
                      (let ((_e166151166166_ (gx#syntax-e _e166148166158_)))
                        (let ((_hd166152166169_ (##car _e166151166166_))
                              (_tl166153166171_ (##cdr _e166151166166_)))
                          (if (gx#stx-pair? _tl166153166171_)
                              (let ((_e166154166174_
                                     (gx#syntax-e _tl166153166171_)))
                                (let ((_hd166155166177_
                                       (##car _e166154166174_))
                                      (_tl166156166179_
                                       (##cdr _e166154166174_)))
                                  (let ((_e166182_ _hd166155166177_))
                                    (if (gx#stx-null? _tl166156166179_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e166182_)
                                                        '()))
                                            (_E166150166162_))
                                        (_E166150166162_)))))
                              (_E166150166162_))))
                      (_E166150166162_)))))
          (_E166149166184_))))
    (define gx#core-compile-top-call%
      (lambda (_stx166104_)
        (let* ((_e166105166115_ _stx166104_)
               (_E166107166119_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166105166115_)))
               (_E166106166143_
                (lambda ()
                  (if (gx#stx-pair? _e166105166115_)
                      (let ((_e166108166123_ (gx#syntax-e _e166105166115_)))
                        (let ((_hd166109166126_ (##car _e166108166123_))
                              (_tl166110166128_ (##cdr _e166108166123_)))
                          (if (gx#stx-pair? _tl166110166128_)
                              (let ((_e166111166131_
                                     (gx#syntax-e _tl166110166128_)))
                                (let ((_hd166112166134_
                                       (##car _e166111166131_))
                                      (_tl166113166136_
                                       (##cdr _e166111166131_)))
                                  (let* ((_rator166139_ _hd166112166134_)
                                         (_args166141_ _tl166113166136_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator166139_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args166141_)))
                                        (_E166107166119_)))))
                              (_E166107166119_))))
                      (_E166107166119_)))))
          (_E166106166143_))))
    (define gx#core-compile-top-if%
      (lambda (_stx166037_)
        (let* ((_e166038166054_ _stx166037_)
               (_E166040166058_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166038166054_)))
               (_E166039166100_
                (lambda ()
                  (if (gx#stx-pair? _e166038166054_)
                      (let ((_e166041166062_ (gx#syntax-e _e166038166054_)))
                        (let ((_hd166042166065_ (##car _e166041166062_))
                              (_tl166043166067_ (##cdr _e166041166062_)))
                          (if (gx#stx-pair? _tl166043166067_)
                              (let ((_e166044166070_
                                     (gx#syntax-e _tl166043166067_)))
                                (let ((_hd166045166073_
                                       (##car _e166044166070_))
                                      (_tl166046166075_
                                       (##cdr _e166044166070_)))
                                  (let ((_test166078_ _hd166045166073_))
                                    (if (gx#stx-pair? _tl166046166075_)
                                        (let ((_e166047166080_
                                               (gx#syntax-e _tl166046166075_)))
                                          (let ((_hd166048166083_
                                                 (##car _e166047166080_))
                                                (_tl166049166085_
                                                 (##cdr _e166047166080_)))
                                            (let ((_K166088_ _hd166048166083_))
                                              (if (gx#stx-pair?
                                                   _tl166049166085_)
                                                  (let ((_e166050166090_
                                                         (gx#syntax-e
                                                          _tl166049166085_)))
                                                    (let ((_hd166051166093_
                                                           (##car _e166050166090_))
                                                          (_tl166052166095_
                                                           (##cdr _e166050166090_)))
                                                      (let ((_E166098_
                                                             _hd166051166093_))
                                                        (if (gx#stx-null?
                                                             _tl166052166095_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test166078_)
                                    (cons (gx#core-compile-top-syntax
                                           _K166088_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E166098_)
                                                '()))))
                        (_E166040166058_))
                    (_E166040166058_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E166040166058_)))))
                                        (_E166040166058_)))))
                              (_E166040166058_))))
                      (_E166040166058_)))))
          (_E166039166100_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx165996_)
        (let* ((_e165997166007_ _stx165996_)
               (_E165999166011_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165997166007_)))
               (_E165998166033_
                (lambda ()
                  (if (gx#stx-pair? _e165997166007_)
                      (let ((_e166000166015_ (gx#syntax-e _e165997166007_)))
                        (let ((_hd166001166018_ (##car _e166000166015_))
                              (_tl166002166020_ (##cdr _e166000166015_)))
                          (if (gx#stx-pair? _tl166002166020_)
                              (let ((_e166003166023_
                                     (gx#syntax-e _tl166002166020_)))
                                (let ((_hd166004166026_
                                       (##car _e166003166023_))
                                      (_tl166005166028_
                                       (##cdr _e166003166023_)))
                                  (let ((_id166031_ _hd166004166026_))
                                    (if (gx#stx-null? _tl166005166028_)
                                        (if (gx#identifier? _id166031_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id166031_)
                                                        '()))
                                            (_E165999166011_))
                                        (_E165999166011_)))))
                              (_E165999166011_))))
                      (_E165999166011_)))))
          (_E165998166033_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx165942_)
        (let* ((_e165943165956_ _stx165942_)
               (_E165945165960_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165943165956_)))
               (_E165944165992_
                (lambda ()
                  (if (gx#stx-pair? _e165943165956_)
                      (let ((_e165946165964_ (gx#syntax-e _e165943165956_)))
                        (let ((_hd165947165967_ (##car _e165946165964_))
                              (_tl165948165969_ (##cdr _e165946165964_)))
                          (if (gx#stx-pair? _tl165948165969_)
                              (let ((_e165949165972_
                                     (gx#syntax-e _tl165948165969_)))
                                (let ((_hd165950165975_
                                       (##car _e165949165972_))
                                      (_tl165951165977_
                                       (##cdr _e165949165972_)))
                                  (let ((_id165980_ _hd165950165975_))
                                    (if (gx#stx-pair? _tl165951165977_)
                                        (let ((_e165952165982_
                                               (gx#syntax-e _tl165951165977_)))
                                          (let ((_hd165953165985_
                                                 (##car _e165952165982_))
                                                (_tl165954165987_
                                                 (##cdr _e165952165982_)))
                                            (let ((_expr165990_
                                                   _hd165953165985_))
                                              (if (gx#stx-null?
                                                   _tl165954165987_)
                                                  (if (gx#identifier?
                                                       _id165980_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id165980_)
                          (cons (gx#core-compile-top-syntax _expr165990_)
                                '())))
              (_E165945165960_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E165945165960_)))))
                                        (_E165945165960_)))))
                              (_E165945165960_))))
                      (_E165945165960_)))))
          (_E165944165992_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id165937_)
        (let ((_$e165939_ (gx#resolve-identifier__0 _id165937_)))
          (if _$e165939_
              (##unchecked-structure-ref _$e165939_ '1 gx#binding::t '#f)
              _id165937_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd165935_)
        (if (gx#identifier? _hd165935_)
            (gx#core-compile-top-runtime-ref _hd165935_)
            '#f)))))
