(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1708271174)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx179586_)
        (let* ((_e179587179594_ _stx179586_)
               (_E179589179598_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e179587179594_)))
               (_E179588179612_
                (lambda ()
                  (if (gx#stx-pair? _e179587179594_)
                      (let ((_e179590179602_ (gx#syntax-e _e179587179594_)))
                        (let ((_hd179591179605_ (##car _e179590179602_))
                              (_tl179592179607_ (##cdr _e179590179602_)))
                          (let ((_form179610_ _hd179591179605_))
                            (if '#t
                                (let* ((__self183682
                                        (gx#syntax-local-e__0 _form179610_))
                                       (__method183683
                                        (method-ref
                                         __self183682
                                         'compile-top-syntax)))
                                  (if __method183683
                                      (__method183683 __self183682 _stx179586_)
                                      (error '"Missing method"
                                             __self183682
                                             'compile-top-syntax)))
                                (_E179589179598_)))))
                      (_E179589179598_)))))
          (_E179588179612_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self179546_ _stx179547_)
        (let* ((_self179548179556_ _self179546_)
               (_E179550179560_
                (lambda () (error '"No clause matching" _self179548179556_)))
               (_K179551179572_
                (lambda (_K179563_)
                  (let ((_$e179565_ (gx#stx-source _stx179547_)))
                    (if _$e179565_
                        ((lambda (_g179567179569_)
                           (gx#stx-wrap-source
                            (_K179563_ _stx179547_)
                            _g179567179569_))
                         _$e179565_)
                        (_K179563_ _stx179547_))))))
          (if (##structure-instance-of?
               _self179548179556_
               'gx#core-expander::t)
              (let* ((_e179552179575_
                      (##unchecked-structure-ref
                       _self179548179556_
                       '1
                       gx#expander::t
                       '#f))
                     (_e179553179578_
                      (##unchecked-structure-ref
                       _self179548179556_
                       '2
                       gx#core-expander::t
                       '#f))
                     (_e179554179581_
                      (##unchecked-structure-ref
                       _self179548179556_
                       '3
                       gx#core-expander::t
                       '#f))
                     (_K179584_ _e179554179581_))
                (_K179551179572_ _K179584_))
              (_E179550179560_)))))
    (bind-method!
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx179420_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx179420_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx179390_)
        (let* ((_e179391179398_ _stx179390_)
               (_E179393179402_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e179391179398_)))
               (_E179392179416_
                (lambda ()
                  (if (gx#stx-pair? _e179391179398_)
                      (let ((_e179394179406_ (gx#syntax-e _e179391179398_)))
                        (let ((_hd179395179409_ (##car _e179394179406_))
                              (_tl179396179411_ (##cdr _e179394179406_)))
                          (let ((_body179414_ _tl179396179411_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body179414_))
                                (_E179393179402_)))))
                      (_E179393179402_)))))
          (_E179392179416_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx179359_)
        (let* ((_e179360179367_ _stx179359_)
               (_E179362179371_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e179360179367_)))
               (_E179361179386_
                (lambda ()
                  (if (gx#stx-pair? _e179360179367_)
                      (let ((_e179363179375_ (gx#syntax-e _e179360179367_)))
                        (let ((_hd179364179378_ (##car _e179363179375_))
                              (_tl179365179380_ (##cdr _e179363179375_)))
                          (let ((_body179383_ _tl179365179380_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body179383_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E179362179371_)))))
                      (_E179362179371_)))))
          (_E179361179386_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_stx179329_)
        (let* ((_e179330179337_ _stx179329_)
               (_E179332179341_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e179330179337_)))
               (_E179331179355_
                (lambda ()
                  (if (gx#stx-pair? _e179330179337_)
                      (let ((_e179333179345_ (gx#syntax-e _e179330179337_)))
                        (let ((_hd179334179348_ (##car _e179333179345_))
                              (_tl179335179350_ (##cdr _e179333179345_)))
                          (let ((_body179353_ _tl179335179350_))
                            (if '#t
                                (cons '%#begin-foreign _body179353_)
                                (_E179332179341_)))))
                      (_E179332179341_)))))
          (_E179331179355_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_stx179275_)
        (let* ((_e179276179289_ _stx179275_)
               (_E179278179293_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e179276179289_)))
               (_E179277179325_
                (lambda ()
                  (if (gx#stx-pair? _e179276179289_)
                      (let ((_e179279179297_ (gx#syntax-e _e179276179289_)))
                        (let ((_hd179280179300_ (##car _e179279179297_))
                              (_tl179281179302_ (##cdr _e179279179297_)))
                          (if (gx#stx-pair? _tl179281179302_)
                              (let ((_e179282179305_
                                     (gx#syntax-e _tl179281179302_)))
                                (let ((_hd179283179308_
                                       (##car _e179282179305_))
                                      (_tl179284179310_
                                       (##cdr _e179282179305_)))
                                  (let ((_ann179313_ _hd179283179308_))
                                    (if (gx#stx-pair? _tl179284179310_)
                                        (let ((_e179285179315_
                                               (gx#syntax-e _tl179284179310_)))
                                          (let ((_hd179286179318_
                                                 (##car _e179285179315_))
                                                (_tl179287179320_
                                                 (##cdr _e179285179315_)))
                                            (let ((_expr179323_
                                                   _hd179286179318_))
                                              (if (gx#stx-null?
                                                   _tl179287179320_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr179323_)
                                                      (_E179278179293_))
                                                  (_E179278179293_)))))
                                        (_E179278179293_)))))
                              (_E179278179293_))))
                      (_E179278179293_)))))
          (_E179277179325_))))
    (define gx#core-compile-top-import%
      (lambda (_stx179245_)
        (let* ((_e179246179253_ _stx179245_)
               (_E179248179257_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e179246179253_)))
               (_E179247179271_
                (lambda ()
                  (if (gx#stx-pair? _e179246179253_)
                      (let ((_e179249179261_ (gx#syntax-e _e179246179253_)))
                        (let ((_hd179250179264_ (##car _e179249179261_))
                              (_tl179251179266_ (##cdr _e179249179261_)))
                          (let ((_body179269_ _tl179251179266_))
                            (if '#t
                                (cons '%#import _body179269_)
                                (_E179248179257_)))))
                      (_E179248179257_)))))
          (_E179247179271_))))
    (define gx#core-compile-top-module%
      (lambda (_stx179202_)
        (let* ((_e179203179213_ _stx179202_)
               (_E179205179217_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e179203179213_)))
               (_E179204179241_
                (lambda ()
                  (if (gx#stx-pair? _e179203179213_)
                      (let ((_e179206179221_ (gx#syntax-e _e179203179213_)))
                        (let ((_hd179207179224_ (##car _e179206179221_))
                              (_tl179208179226_ (##cdr _e179206179221_)))
                          (if (gx#stx-pair? _tl179208179226_)
                              (let ((_e179209179229_
                                     (gx#syntax-e _tl179208179226_)))
                                (let ((_hd179210179232_
                                       (##car _e179209179229_))
                                      (_tl179211179234_
                                       (##cdr _e179209179229_)))
                                  (let* ((_hd179237_ _hd179210179232_)
                                         (_body179239_ _tl179211179234_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _hd179237_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body179239_)))
                                        (_E179205179217_)))))
                              (_E179205179217_))))
                      (_E179205179217_)))))
          (_E179204179241_))))
    (define gx#core-compile-top-export%
      (lambda (_stx179172_)
        (let* ((_e179173179180_ _stx179172_)
               (_E179175179184_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e179173179180_)))
               (_E179174179198_
                (lambda ()
                  (if (gx#stx-pair? _e179173179180_)
                      (let ((_e179176179188_ (gx#syntax-e _e179173179180_)))
                        (let ((_hd179177179191_ (##car _e179176179188_))
                              (_tl179178179193_ (##cdr _e179176179188_)))
                          (let ((_body179196_ _tl179178179193_))
                            (if '#t
                                (cons '%#export _body179196_)
                                (_E179175179184_)))))
                      (_E179175179184_)))))
          (_E179174179198_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx179142_)
        (let* ((_e179143179150_ _stx179142_)
               (_E179145179154_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e179143179150_)))
               (_E179144179168_
                (lambda ()
                  (if (gx#stx-pair? _e179143179150_)
                      (let ((_e179146179158_ (gx#syntax-e _e179143179150_)))
                        (let ((_hd179147179161_ (##car _e179146179158_))
                              (_tl179148179163_ (##cdr _e179146179158_)))
                          (let ((_body179166_ _tl179148179163_))
                            (if '#t
                                (cons '%#provide _body179166_)
                                (_E179145179154_)))))
                      (_E179145179154_)))))
          (_E179144179168_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx179112_)
        (let* ((_e179113179120_ _stx179112_)
               (_E179115179124_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e179113179120_)))
               (_E179114179138_
                (lambda ()
                  (if (gx#stx-pair? _e179113179120_)
                      (let ((_e179116179128_ (gx#syntax-e _e179113179120_)))
                        (let ((_hd179117179131_ (##car _e179116179128_))
                              (_tl179118179133_ (##cdr _e179116179128_)))
                          (let ((_body179136_ _tl179118179133_))
                            (if '#t
                                (cons '%#extern _body179136_)
                                (_E179115179124_)))))
                      (_E179115179124_)))))
          (_E179114179138_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx179058_)
        (let* ((_e179059179072_ _stx179058_)
               (_E179061179076_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e179059179072_)))
               (_E179060179108_
                (lambda ()
                  (if (gx#stx-pair? _e179059179072_)
                      (let ((_e179062179080_ (gx#syntax-e _e179059179072_)))
                        (let ((_hd179063179083_ (##car _e179062179080_))
                              (_tl179064179085_ (##cdr _e179062179080_)))
                          (if (gx#stx-pair? _tl179064179085_)
                              (let ((_e179065179088_
                                     (gx#syntax-e _tl179064179085_)))
                                (let ((_hd179066179091_
                                       (##car _e179065179088_))
                                      (_tl179067179093_
                                       (##cdr _e179065179088_)))
                                  (let ((_hd179096_ _hd179066179091_))
                                    (if (gx#stx-pair? _tl179067179093_)
                                        (let ((_e179068179098_
                                               (gx#syntax-e _tl179067179093_)))
                                          (let ((_hd179069179101_
                                                 (##car _e179068179098_))
                                                (_tl179070179103_
                                                 (##cdr _e179068179098_)))
                                            (let ((_expr179106_
                                                   _hd179069179101_))
                                              (if (gx#stx-null?
                                                   _tl179070179103_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd179096_)
                          (cons (gx#core-compile-top-syntax _expr179106_)
                                '())))
              (_E179061179076_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E179061179076_)))))
                                        (_E179061179076_)))))
                              (_E179061179076_))))
                      (_E179061179076_)))))
          (_E179060179108_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx179003_)
        (let* ((_e179004179017_ _stx179003_)
               (_E179006179021_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e179004179017_)))
               (_E179005179054_
                (lambda ()
                  (if (gx#stx-pair? _e179004179017_)
                      (let ((_e179007179025_ (gx#syntax-e _e179004179017_)))
                        (let ((_hd179008179028_ (##car _e179007179025_))
                              (_tl179009179030_ (##cdr _e179007179025_)))
                          (if (gx#stx-pair? _tl179009179030_)
                              (let ((_e179010179033_
                                     (gx#syntax-e _tl179009179030_)))
                                (let ((_hd179011179036_
                                       (##car _e179010179033_))
                                      (_tl179012179038_
                                       (##cdr _e179010179033_)))
                                  (let ((_hd179041_ _hd179011179036_))
                                    (if (gx#stx-pair? _tl179012179038_)
                                        (let ((_e179013179043_
                                               (gx#syntax-e _tl179012179038_)))
                                          (let ((_hd179014179046_
                                                 (##car _e179013179043_))
                                                (_tl179015179048_
                                                 (##cdr _e179013179043_)))
                                            (let ((_expr179051_
                                                   _hd179014179046_))
                                              (if (gx#stx-null?
                                                   _tl179015179048_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd179041_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr179051_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E179006179021_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E179006179021_)))))
                                        (_E179006179021_)))))
                              (_E179006179021_))))
                      (_E179006179021_)))))
          (_E179005179054_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx178973_)
        (let* ((_e178974178981_ _stx178973_)
               (_E178976178985_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e178974178981_)))
               (_E178975178999_
                (lambda ()
                  (if (gx#stx-pair? _e178974178981_)
                      (let ((_e178977178989_ (gx#syntax-e _e178974178981_)))
                        (let ((_hd178978178992_ (##car _e178977178989_))
                              (_tl178979178994_ (##cdr _e178977178989_)))
                          (let ((_body178997_ _tl178979178994_))
                            (if '#t
                                (cons '%#define-alias _body178997_)
                                (_E178976178985_)))))
                      (_E178976178985_)))))
          (_E178975178999_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx178943_)
        (let* ((_e178944178951_ _stx178943_)
               (_E178946178955_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e178944178951_)))
               (_E178945178969_
                (lambda ()
                  (if (gx#stx-pair? _e178944178951_)
                      (let ((_e178947178959_ (gx#syntax-e _e178944178951_)))
                        (let ((_hd178948178962_ (##car _e178947178959_))
                              (_tl178949178964_ (##cdr _e178947178959_)))
                          (let ((_body178967_ _tl178949178964_))
                            (if '#t
                                (cons '%#define-runtime _body178967_)
                                (_E178946178955_)))))
                      (_E178946178955_)))))
          (_E178945178969_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx178913_)
        (let* ((_e178914178921_ _stx178913_)
               (_E178916178925_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e178914178921_)))
               (_E178915178939_
                (lambda ()
                  (if (gx#stx-pair? _e178914178921_)
                      (let ((_e178917178929_ (gx#syntax-e _e178914178921_)))
                        (let ((_hd178918178932_ (##car _e178917178929_))
                              (_tl178919178934_ (##cdr _e178917178929_)))
                          (let ((_decls178937_ _tl178919178934_))
                            (if '#t
                                (cons '%#declare _decls178937_)
                                (_E178916178925_)))))
                      (_E178916178925_)))))
          (_E178915178939_))))
    (define gx#core-compile-top-lambda%
      (lambda (_stx178883_)
        (let* ((_e178884178891_ _stx178883_)
               (_E178886178895_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e178884178891_)))
               (_E178885178909_
                (lambda ()
                  (if (gx#stx-pair? _e178884178891_)
                      (let ((_e178887178899_ (gx#syntax-e _e178884178891_)))
                        (let ((_hd178888178902_ (##car _e178887178899_))
                              (_tl178889178904_ (##cdr _e178887178899_)))
                          (let ((_clause178907_ _tl178889178904_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause178907_))
                                (_E178886178895_)))))
                      (_E178886178895_)))))
          (_E178885178909_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx178840_)
        (let* ((_e178841178851_ _stx178840_)
               (_E178843178855_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e178841178851_)))
               (_E178842178879_
                (lambda ()
                  (if (gx#stx-pair? _e178841178851_)
                      (let ((_e178844178859_ (gx#syntax-e _e178841178851_)))
                        (let ((_hd178845178862_ (##car _e178844178859_))
                              (_tl178846178864_ (##cdr _e178844178859_)))
                          (let ((_hd178867_ _hd178845178862_))
                            (if (gx#stx-pair? _tl178846178864_)
                                (let ((_e178847178869_
                                       (gx#syntax-e _tl178846178864_)))
                                  (let ((_hd178848178872_
                                         (##car _e178847178869_))
                                        (_tl178849178874_
                                         (##cdr _e178847178869_)))
                                    (let ((_body178877_ _hd178848178872_))
                                      (if (gx#stx-null? _tl178849178874_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd178867_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body178877_)
                                                          '()))
                                              (_E178843178855_))
                                          (_E178843178855_)))))
                                (_E178843178855_)))))
                      (_E178843178855_)))))
          (_E178842178879_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx178810_)
        (let* ((_e178811178818_ _stx178810_)
               (_E178813178822_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e178811178818_)))
               (_E178812178836_
                (lambda ()
                  (if (gx#stx-pair? _e178811178818_)
                      (let ((_e178814178826_ (gx#syntax-e _e178811178818_)))
                        (let ((_hd178815178829_ (##car _e178814178826_))
                              (_tl178816178831_ (##cdr _e178814178826_)))
                          (let ((_clauses178834_ _tl178816178831_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses178834_))
                                (_E178813178822_)))))
                      (_E178813178822_)))))
          (_E178812178836_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx178745_ _form178746_)
        (let* ((_e178747178760_ _stx178745_)
               (_E178749178764_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e178747178760_)))
               (_E178748178796_
                (lambda ()
                  (if (gx#stx-pair? _e178747178760_)
                      (let ((_e178750178768_ (gx#syntax-e _e178747178760_)))
                        (let ((_hd178751178771_ (##car _e178750178768_))
                              (_tl178752178773_ (##cdr _e178750178768_)))
                          (if (gx#stx-pair? _tl178752178773_)
                              (let ((_e178753178776_
                                     (gx#syntax-e _tl178752178773_)))
                                (let ((_hd178754178779_
                                       (##car _e178753178776_))
                                      (_tl178755178781_
                                       (##cdr _e178753178776_)))
                                  (let ((_hd178784_ _hd178754178779_))
                                    (if (gx#stx-pair? _tl178755178781_)
                                        (let ((_e178756178786_
                                               (gx#syntax-e _tl178755178781_)))
                                          (let ((_hd178757178789_
                                                 (##car _e178756178786_))
                                                (_tl178758178791_
                                                 (##cdr _e178756178786_)))
                                            (let ((_body178794_
                                                   _hd178757178789_))
                                              (if (gx#stx-null?
                                                   _tl178758178791_)
                                                  (if '#t
                                                      (cons _form178746_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd178784_)
                          (cons (gx#core-compile-top-syntax _body178794_)
                                '())))
              (_E178749178764_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E178749178764_)))))
                                        (_E178749178764_)))))
                              (_E178749178764_))))
                      (_E178749178764_)))))
          (_E178748178796_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx178803_)
        (let ((_form178805_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx178803_ _form178805_))))
    (define gx#core-compile-top-let-values%
      (lambda _g183685_
        (let ((_g183684_ (##length _g183685_)))
          (cond ((##fx= _g183684_ 1)
                 (apply (lambda (_stx178803_)
                          (gx#core-compile-top-let-values%__0 _stx178803_))
                        _g183685_))
                ((##fx= _g183684_ 2)
                 (apply (lambda (_stx178807_ _form178808_)
                          (gx#core-compile-top-let-values%__%
                           _stx178807_
                           _form178808_))
                        _g183685_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g183685_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx178742_)
        (gx#core-compile-top-let-values%__% _stx178742_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx178740_)
        (gx#core-compile-top-let-values%__% _stx178740_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx178699_)
        (let* ((_e178700178710_ _stx178699_)
               (_E178702178714_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e178700178710_)))
               (_E178701178736_
                (lambda ()
                  (if (gx#stx-pair? _e178700178710_)
                      (let ((_e178703178718_ (gx#syntax-e _e178700178710_)))
                        (let ((_hd178704178721_ (##car _e178703178718_))
                              (_tl178705178723_ (##cdr _e178703178718_)))
                          (if (gx#stx-pair? _tl178705178723_)
                              (let ((_e178706178726_
                                     (gx#syntax-e _tl178705178723_)))
                                (let ((_hd178707178729_
                                       (##car _e178706178726_))
                                      (_tl178708178731_
                                       (##cdr _e178706178726_)))
                                  (let ((_e178734_ _hd178707178729_))
                                    (if (gx#stx-null? _tl178708178731_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e178734_)
                                                        '()))
                                            (_E178702178714_))
                                        (_E178702178714_)))))
                              (_E178702178714_))))
                      (_E178702178714_)))))
          (_E178701178736_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx178658_)
        (let* ((_e178659178669_ _stx178658_)
               (_E178661178673_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e178659178669_)))
               (_E178660178695_
                (lambda ()
                  (if (gx#stx-pair? _e178659178669_)
                      (let ((_e178662178677_ (gx#syntax-e _e178659178669_)))
                        (let ((_hd178663178680_ (##car _e178662178677_))
                              (_tl178664178682_ (##cdr _e178662178677_)))
                          (if (gx#stx-pair? _tl178664178682_)
                              (let ((_e178665178685_
                                     (gx#syntax-e _tl178664178682_)))
                                (let ((_hd178666178688_
                                       (##car _e178665178685_))
                                      (_tl178667178690_
                                       (##cdr _e178665178685_)))
                                  (let ((_e178693_ _hd178666178688_))
                                    (if (gx#stx-null? _tl178667178690_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e178693_)
                                                        '()))
                                            (_E178661178673_))
                                        (_E178661178673_)))))
                              (_E178661178673_))))
                      (_E178661178673_)))))
          (_E178660178695_))))
    (define gx#core-compile-top-call%
      (lambda (_stx178615_)
        (let* ((_e178616178626_ _stx178615_)
               (_E178618178630_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e178616178626_)))
               (_E178617178654_
                (lambda ()
                  (if (gx#stx-pair? _e178616178626_)
                      (let ((_e178619178634_ (gx#syntax-e _e178616178626_)))
                        (let ((_hd178620178637_ (##car _e178619178634_))
                              (_tl178621178639_ (##cdr _e178619178634_)))
                          (if (gx#stx-pair? _tl178621178639_)
                              (let ((_e178622178642_
                                     (gx#syntax-e _tl178621178639_)))
                                (let ((_hd178623178645_
                                       (##car _e178622178642_))
                                      (_tl178624178647_
                                       (##cdr _e178622178642_)))
                                  (let* ((_rator178650_ _hd178623178645_)
                                         (_args178652_ _tl178624178647_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator178650_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args178652_)))
                                        (_E178618178630_)))))
                              (_E178618178630_))))
                      (_E178618178630_)))))
          (_E178617178654_))))
    (define gx#core-compile-top-if%
      (lambda (_stx178548_)
        (let* ((_e178549178565_ _stx178548_)
               (_E178551178569_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e178549178565_)))
               (_E178550178611_
                (lambda ()
                  (if (gx#stx-pair? _e178549178565_)
                      (let ((_e178552178573_ (gx#syntax-e _e178549178565_)))
                        (let ((_hd178553178576_ (##car _e178552178573_))
                              (_tl178554178578_ (##cdr _e178552178573_)))
                          (if (gx#stx-pair? _tl178554178578_)
                              (let ((_e178555178581_
                                     (gx#syntax-e _tl178554178578_)))
                                (let ((_hd178556178584_
                                       (##car _e178555178581_))
                                      (_tl178557178586_
                                       (##cdr _e178555178581_)))
                                  (let ((_test178589_ _hd178556178584_))
                                    (if (gx#stx-pair? _tl178557178586_)
                                        (let ((_e178558178591_
                                               (gx#syntax-e _tl178557178586_)))
                                          (let ((_hd178559178594_
                                                 (##car _e178558178591_))
                                                (_tl178560178596_
                                                 (##cdr _e178558178591_)))
                                            (let ((_K178599_ _hd178559178594_))
                                              (if (gx#stx-pair?
                                                   _tl178560178596_)
                                                  (let ((_e178561178601_
                                                         (gx#syntax-e
                                                          _tl178560178596_)))
                                                    (let ((_hd178562178604_
                                                           (##car _e178561178601_))
                                                          (_tl178563178606_
                                                           (##cdr _e178561178601_)))
                                                      (let ((_E178609_
                                                             _hd178562178604_))
                                                        (if (gx#stx-null?
                                                             _tl178563178606_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test178589_)
                                    (cons (gx#core-compile-top-syntax
                                           _K178599_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E178609_)
                                                '()))))
                        (_E178551178569_))
                    (_E178551178569_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E178551178569_)))))
                                        (_E178551178569_)))))
                              (_E178551178569_))))
                      (_E178551178569_)))))
          (_E178550178611_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx178507_)
        (let* ((_e178508178518_ _stx178507_)
               (_E178510178522_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e178508178518_)))
               (_E178509178544_
                (lambda ()
                  (if (gx#stx-pair? _e178508178518_)
                      (let ((_e178511178526_ (gx#syntax-e _e178508178518_)))
                        (let ((_hd178512178529_ (##car _e178511178526_))
                              (_tl178513178531_ (##cdr _e178511178526_)))
                          (if (gx#stx-pair? _tl178513178531_)
                              (let ((_e178514178534_
                                     (gx#syntax-e _tl178513178531_)))
                                (let ((_hd178515178537_
                                       (##car _e178514178534_))
                                      (_tl178516178539_
                                       (##cdr _e178514178534_)))
                                  (let ((_id178542_ _hd178515178537_))
                                    (if (gx#stx-null? _tl178516178539_)
                                        (if (gx#identifier? _id178542_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id178542_)
                                                        '()))
                                            (_E178510178522_))
                                        (_E178510178522_)))))
                              (_E178510178522_))))
                      (_E178510178522_)))))
          (_E178509178544_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx178453_)
        (let* ((_e178454178467_ _stx178453_)
               (_E178456178471_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e178454178467_)))
               (_E178455178503_
                (lambda ()
                  (if (gx#stx-pair? _e178454178467_)
                      (let ((_e178457178475_ (gx#syntax-e _e178454178467_)))
                        (let ((_hd178458178478_ (##car _e178457178475_))
                              (_tl178459178480_ (##cdr _e178457178475_)))
                          (if (gx#stx-pair? _tl178459178480_)
                              (let ((_e178460178483_
                                     (gx#syntax-e _tl178459178480_)))
                                (let ((_hd178461178486_
                                       (##car _e178460178483_))
                                      (_tl178462178488_
                                       (##cdr _e178460178483_)))
                                  (let ((_id178491_ _hd178461178486_))
                                    (if (gx#stx-pair? _tl178462178488_)
                                        (let ((_e178463178493_
                                               (gx#syntax-e _tl178462178488_)))
                                          (let ((_hd178464178496_
                                                 (##car _e178463178493_))
                                                (_tl178465178498_
                                                 (##cdr _e178463178493_)))
                                            (let ((_expr178501_
                                                   _hd178464178496_))
                                              (if (gx#stx-null?
                                                   _tl178465178498_)
                                                  (if (gx#identifier?
                                                       _id178491_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id178491_)
                          (cons (gx#core-compile-top-syntax _expr178501_)
                                '())))
              (_E178456178471_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E178456178471_)))))
                                        (_E178456178471_)))))
                              (_E178456178471_))))
                      (_E178456178471_)))))
          (_E178455178503_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id178448_)
        (let ((_$e178450_ (gx#resolve-identifier__0 _id178448_)))
          (if _$e178450_
              (##unchecked-structure-ref _$e178450_ '1 gx#binding::t '#f)
              _id178448_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd178446_)
        (if (gx#identifier? _hd178446_)
            (gx#core-compile-top-runtime-ref _hd178446_)
            '#f)))))
