(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1707601717)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx167043_)
        (let* ((_e167044167051_ _stx167043_)
               (_E167046167055_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167044167051_)))
               (_E167045167069_
                (lambda ()
                  (if (gx#stx-pair? _e167044167051_)
                      (let ((_e167047167059_ (gx#syntax-e _e167044167051_)))
                        (let ((_hd167048167062_ (##car _e167047167059_))
                              (_tl167049167064_ (##cdr _e167047167059_)))
                          (let ((_form167067_ _hd167048167062_))
                            (if '#t
                                (let* ((__self171540
                                        (gx#syntax-local-e__0 _form167067_))
                                       (__method171541
                                        (method-ref
                                         __self171540
                                         'compile-top-syntax)))
                                  (if __method171541
                                      (__method171541 __self171540 _stx167043_)
                                      (error '"Missing method"
                                             __self171540
                                             'compile-top-syntax)))
                                (_E167046167055_)))))
                      (_E167046167055_)))))
          (_E167045167069_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self167003_ _stx167004_)
        (let* ((_self167005167013_ _self167003_)
               (_E167007167017_
                (lambda () (error '"No clause matching" _self167005167013_)))
               (_K167008167029_
                (lambda (_K167020_)
                  (let ((_$e167022_ (gx#stx-source _stx167004_)))
                    (if _$e167022_
                        ((lambda (_g167024167026_)
                           (gx#stx-wrap-source
                            (_K167020_ _stx167004_)
                            _g167024167026_))
                         _$e167022_)
                        (_K167020_ _stx167004_))))))
          (if (##structure-instance-of?
               _self167005167013_
               'gx#core-expander::t)
              (let* ((_e167009167032_
                      (##unchecked-structure-ref
                       _self167005167013_
                       '1
                       gx#expander::t
                       '#f))
                     (_e167010167035_
                      (##unchecked-structure-ref
                       _self167005167013_
                       '2
                       gx#core-expander::t
                       '#f))
                     (_e167011167038_
                      (##unchecked-structure-ref
                       _self167005167013_
                       '3
                       gx#core-expander::t
                       '#f))
                     (_K167041_ _e167011167038_))
                (_K167008167029_ _K167041_))
              (_E167007167017_)))))
    (bind-method!
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx166877_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx166877_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx166847_)
        (let* ((_e166848166855_ _stx166847_)
               (_E166850166859_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166848166855_)))
               (_E166849166873_
                (lambda ()
                  (if (gx#stx-pair? _e166848166855_)
                      (let ((_e166851166863_ (gx#syntax-e _e166848166855_)))
                        (let ((_hd166852166866_ (##car _e166851166863_))
                              (_tl166853166868_ (##cdr _e166851166863_)))
                          (let ((_body166871_ _tl166853166868_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body166871_))
                                (_E166850166859_)))))
                      (_E166850166859_)))))
          (_E166849166873_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx166816_)
        (let* ((_e166817166824_ _stx166816_)
               (_E166819166828_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166817166824_)))
               (_E166818166843_
                (lambda ()
                  (if (gx#stx-pair? _e166817166824_)
                      (let ((_e166820166832_ (gx#syntax-e _e166817166824_)))
                        (let ((_hd166821166835_ (##car _e166820166832_))
                              (_tl166822166837_ (##cdr _e166820166832_)))
                          (let ((_body166840_ _tl166822166837_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body166840_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E166819166828_)))))
                      (_E166819166828_)))))
          (_E166818166843_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_stx166786_)
        (let* ((_e166787166794_ _stx166786_)
               (_E166789166798_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166787166794_)))
               (_E166788166812_
                (lambda ()
                  (if (gx#stx-pair? _e166787166794_)
                      (let ((_e166790166802_ (gx#syntax-e _e166787166794_)))
                        (let ((_hd166791166805_ (##car _e166790166802_))
                              (_tl166792166807_ (##cdr _e166790166802_)))
                          (let ((_body166810_ _tl166792166807_))
                            (if '#t
                                (cons '%#begin-foreign _body166810_)
                                (_E166789166798_)))))
                      (_E166789166798_)))))
          (_E166788166812_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_stx166732_)
        (let* ((_e166733166746_ _stx166732_)
               (_E166735166750_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166733166746_)))
               (_E166734166782_
                (lambda ()
                  (if (gx#stx-pair? _e166733166746_)
                      (let ((_e166736166754_ (gx#syntax-e _e166733166746_)))
                        (let ((_hd166737166757_ (##car _e166736166754_))
                              (_tl166738166759_ (##cdr _e166736166754_)))
                          (if (gx#stx-pair? _tl166738166759_)
                              (let ((_e166739166762_
                                     (gx#syntax-e _tl166738166759_)))
                                (let ((_hd166740166765_
                                       (##car _e166739166762_))
                                      (_tl166741166767_
                                       (##cdr _e166739166762_)))
                                  (let ((_ann166770_ _hd166740166765_))
                                    (if (gx#stx-pair? _tl166741166767_)
                                        (let ((_e166742166772_
                                               (gx#syntax-e _tl166741166767_)))
                                          (let ((_hd166743166775_
                                                 (##car _e166742166772_))
                                                (_tl166744166777_
                                                 (##cdr _e166742166772_)))
                                            (let ((_expr166780_
                                                   _hd166743166775_))
                                              (if (gx#stx-null?
                                                   _tl166744166777_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr166780_)
                                                      (_E166735166750_))
                                                  (_E166735166750_)))))
                                        (_E166735166750_)))))
                              (_E166735166750_))))
                      (_E166735166750_)))))
          (_E166734166782_))))
    (define gx#core-compile-top-import%
      (lambda (_stx166702_)
        (let* ((_e166703166710_ _stx166702_)
               (_E166705166714_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166703166710_)))
               (_E166704166728_
                (lambda ()
                  (if (gx#stx-pair? _e166703166710_)
                      (let ((_e166706166718_ (gx#syntax-e _e166703166710_)))
                        (let ((_hd166707166721_ (##car _e166706166718_))
                              (_tl166708166723_ (##cdr _e166706166718_)))
                          (let ((_body166726_ _tl166708166723_))
                            (if '#t
                                (cons '%#import _body166726_)
                                (_E166705166714_)))))
                      (_E166705166714_)))))
          (_E166704166728_))))
    (define gx#core-compile-top-module%
      (lambda (_stx166659_)
        (let* ((_e166660166670_ _stx166659_)
               (_E166662166674_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166660166670_)))
               (_E166661166698_
                (lambda ()
                  (if (gx#stx-pair? _e166660166670_)
                      (let ((_e166663166678_ (gx#syntax-e _e166660166670_)))
                        (let ((_hd166664166681_ (##car _e166663166678_))
                              (_tl166665166683_ (##cdr _e166663166678_)))
                          (if (gx#stx-pair? _tl166665166683_)
                              (let ((_e166666166686_
                                     (gx#syntax-e _tl166665166683_)))
                                (let ((_hd166667166689_
                                       (##car _e166666166686_))
                                      (_tl166668166691_
                                       (##cdr _e166666166686_)))
                                  (let* ((_hd166694_ _hd166667166689_)
                                         (_body166696_ _tl166668166691_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _hd166694_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body166696_)))
                                        (_E166662166674_)))))
                              (_E166662166674_))))
                      (_E166662166674_)))))
          (_E166661166698_))))
    (define gx#core-compile-top-export%
      (lambda (_stx166629_)
        (let* ((_e166630166637_ _stx166629_)
               (_E166632166641_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166630166637_)))
               (_E166631166655_
                (lambda ()
                  (if (gx#stx-pair? _e166630166637_)
                      (let ((_e166633166645_ (gx#syntax-e _e166630166637_)))
                        (let ((_hd166634166648_ (##car _e166633166645_))
                              (_tl166635166650_ (##cdr _e166633166645_)))
                          (let ((_body166653_ _tl166635166650_))
                            (if '#t
                                (cons '%#export _body166653_)
                                (_E166632166641_)))))
                      (_E166632166641_)))))
          (_E166631166655_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx166599_)
        (let* ((_e166600166607_ _stx166599_)
               (_E166602166611_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166600166607_)))
               (_E166601166625_
                (lambda ()
                  (if (gx#stx-pair? _e166600166607_)
                      (let ((_e166603166615_ (gx#syntax-e _e166600166607_)))
                        (let ((_hd166604166618_ (##car _e166603166615_))
                              (_tl166605166620_ (##cdr _e166603166615_)))
                          (let ((_body166623_ _tl166605166620_))
                            (if '#t
                                (cons '%#provide _body166623_)
                                (_E166602166611_)))))
                      (_E166602166611_)))))
          (_E166601166625_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx166569_)
        (let* ((_e166570166577_ _stx166569_)
               (_E166572166581_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166570166577_)))
               (_E166571166595_
                (lambda ()
                  (if (gx#stx-pair? _e166570166577_)
                      (let ((_e166573166585_ (gx#syntax-e _e166570166577_)))
                        (let ((_hd166574166588_ (##car _e166573166585_))
                              (_tl166575166590_ (##cdr _e166573166585_)))
                          (let ((_body166593_ _tl166575166590_))
                            (if '#t
                                (cons '%#extern _body166593_)
                                (_E166572166581_)))))
                      (_E166572166581_)))))
          (_E166571166595_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx166515_)
        (let* ((_e166516166529_ _stx166515_)
               (_E166518166533_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166516166529_)))
               (_E166517166565_
                (lambda ()
                  (if (gx#stx-pair? _e166516166529_)
                      (let ((_e166519166537_ (gx#syntax-e _e166516166529_)))
                        (let ((_hd166520166540_ (##car _e166519166537_))
                              (_tl166521166542_ (##cdr _e166519166537_)))
                          (if (gx#stx-pair? _tl166521166542_)
                              (let ((_e166522166545_
                                     (gx#syntax-e _tl166521166542_)))
                                (let ((_hd166523166548_
                                       (##car _e166522166545_))
                                      (_tl166524166550_
                                       (##cdr _e166522166545_)))
                                  (let ((_hd166553_ _hd166523166548_))
                                    (if (gx#stx-pair? _tl166524166550_)
                                        (let ((_e166525166555_
                                               (gx#syntax-e _tl166524166550_)))
                                          (let ((_hd166526166558_
                                                 (##car _e166525166555_))
                                                (_tl166527166560_
                                                 (##cdr _e166525166555_)))
                                            (let ((_expr166563_
                                                   _hd166526166558_))
                                              (if (gx#stx-null?
                                                   _tl166527166560_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd166553_)
                          (cons (gx#core-compile-top-syntax _expr166563_)
                                '())))
              (_E166518166533_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E166518166533_)))))
                                        (_E166518166533_)))))
                              (_E166518166533_))))
                      (_E166518166533_)))))
          (_E166517166565_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx166460_)
        (let* ((_e166461166474_ _stx166460_)
               (_E166463166478_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166461166474_)))
               (_E166462166511_
                (lambda ()
                  (if (gx#stx-pair? _e166461166474_)
                      (let ((_e166464166482_ (gx#syntax-e _e166461166474_)))
                        (let ((_hd166465166485_ (##car _e166464166482_))
                              (_tl166466166487_ (##cdr _e166464166482_)))
                          (if (gx#stx-pair? _tl166466166487_)
                              (let ((_e166467166490_
                                     (gx#syntax-e _tl166466166487_)))
                                (let ((_hd166468166493_
                                       (##car _e166467166490_))
                                      (_tl166469166495_
                                       (##cdr _e166467166490_)))
                                  (let ((_hd166498_ _hd166468166493_))
                                    (if (gx#stx-pair? _tl166469166495_)
                                        (let ((_e166470166500_
                                               (gx#syntax-e _tl166469166495_)))
                                          (let ((_hd166471166503_
                                                 (##car _e166470166500_))
                                                (_tl166472166505_
                                                 (##cdr _e166470166500_)))
                                            (let ((_expr166508_
                                                   _hd166471166503_))
                                              (if (gx#stx-null?
                                                   _tl166472166505_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd166498_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr166508_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E166463166478_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E166463166478_)))))
                                        (_E166463166478_)))))
                              (_E166463166478_))))
                      (_E166463166478_)))))
          (_E166462166511_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx166430_)
        (let* ((_e166431166438_ _stx166430_)
               (_E166433166442_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166431166438_)))
               (_E166432166456_
                (lambda ()
                  (if (gx#stx-pair? _e166431166438_)
                      (let ((_e166434166446_ (gx#syntax-e _e166431166438_)))
                        (let ((_hd166435166449_ (##car _e166434166446_))
                              (_tl166436166451_ (##cdr _e166434166446_)))
                          (let ((_body166454_ _tl166436166451_))
                            (if '#t
                                (cons '%#define-alias _body166454_)
                                (_E166433166442_)))))
                      (_E166433166442_)))))
          (_E166432166456_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx166400_)
        (let* ((_e166401166408_ _stx166400_)
               (_E166403166412_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166401166408_)))
               (_E166402166426_
                (lambda ()
                  (if (gx#stx-pair? _e166401166408_)
                      (let ((_e166404166416_ (gx#syntax-e _e166401166408_)))
                        (let ((_hd166405166419_ (##car _e166404166416_))
                              (_tl166406166421_ (##cdr _e166404166416_)))
                          (let ((_body166424_ _tl166406166421_))
                            (if '#t
                                (cons '%#define-runtime _body166424_)
                                (_E166403166412_)))))
                      (_E166403166412_)))))
          (_E166402166426_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx166370_)
        (let* ((_e166371166378_ _stx166370_)
               (_E166373166382_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166371166378_)))
               (_E166372166396_
                (lambda ()
                  (if (gx#stx-pair? _e166371166378_)
                      (let ((_e166374166386_ (gx#syntax-e _e166371166378_)))
                        (let ((_hd166375166389_ (##car _e166374166386_))
                              (_tl166376166391_ (##cdr _e166374166386_)))
                          (let ((_decls166394_ _tl166376166391_))
                            (if '#t
                                (cons '%#declare _decls166394_)
                                (_E166373166382_)))))
                      (_E166373166382_)))))
          (_E166372166396_))))
    (define gx#core-compile-top-lambda%
      (lambda (_stx166340_)
        (let* ((_e166341166348_ _stx166340_)
               (_E166343166352_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166341166348_)))
               (_E166342166366_
                (lambda ()
                  (if (gx#stx-pair? _e166341166348_)
                      (let ((_e166344166356_ (gx#syntax-e _e166341166348_)))
                        (let ((_hd166345166359_ (##car _e166344166356_))
                              (_tl166346166361_ (##cdr _e166344166356_)))
                          (let ((_clause166364_ _tl166346166361_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause166364_))
                                (_E166343166352_)))))
                      (_E166343166352_)))))
          (_E166342166366_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx166297_)
        (let* ((_e166298166308_ _stx166297_)
               (_E166300166312_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166298166308_)))
               (_E166299166336_
                (lambda ()
                  (if (gx#stx-pair? _e166298166308_)
                      (let ((_e166301166316_ (gx#syntax-e _e166298166308_)))
                        (let ((_hd166302166319_ (##car _e166301166316_))
                              (_tl166303166321_ (##cdr _e166301166316_)))
                          (let ((_hd166324_ _hd166302166319_))
                            (if (gx#stx-pair? _tl166303166321_)
                                (let ((_e166304166326_
                                       (gx#syntax-e _tl166303166321_)))
                                  (let ((_hd166305166329_
                                         (##car _e166304166326_))
                                        (_tl166306166331_
                                         (##cdr _e166304166326_)))
                                    (let ((_body166334_ _hd166305166329_))
                                      (if (gx#stx-null? _tl166306166331_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd166324_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body166334_)
                                                          '()))
                                              (_E166300166312_))
                                          (_E166300166312_)))))
                                (_E166300166312_)))))
                      (_E166300166312_)))))
          (_E166299166336_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx166267_)
        (let* ((_e166268166275_ _stx166267_)
               (_E166270166279_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166268166275_)))
               (_E166269166293_
                (lambda ()
                  (if (gx#stx-pair? _e166268166275_)
                      (let ((_e166271166283_ (gx#syntax-e _e166268166275_)))
                        (let ((_hd166272166286_ (##car _e166271166283_))
                              (_tl166273166288_ (##cdr _e166271166283_)))
                          (let ((_clauses166291_ _tl166273166288_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses166291_))
                                (_E166270166279_)))))
                      (_E166270166279_)))))
          (_E166269166293_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx166202_ _form166203_)
        (let* ((_e166204166217_ _stx166202_)
               (_E166206166221_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166204166217_)))
               (_E166205166253_
                (lambda ()
                  (if (gx#stx-pair? _e166204166217_)
                      (let ((_e166207166225_ (gx#syntax-e _e166204166217_)))
                        (let ((_hd166208166228_ (##car _e166207166225_))
                              (_tl166209166230_ (##cdr _e166207166225_)))
                          (if (gx#stx-pair? _tl166209166230_)
                              (let ((_e166210166233_
                                     (gx#syntax-e _tl166209166230_)))
                                (let ((_hd166211166236_
                                       (##car _e166210166233_))
                                      (_tl166212166238_
                                       (##cdr _e166210166233_)))
                                  (let ((_hd166241_ _hd166211166236_))
                                    (if (gx#stx-pair? _tl166212166238_)
                                        (let ((_e166213166243_
                                               (gx#syntax-e _tl166212166238_)))
                                          (let ((_hd166214166246_
                                                 (##car _e166213166243_))
                                                (_tl166215166248_
                                                 (##cdr _e166213166243_)))
                                            (let ((_body166251_
                                                   _hd166214166246_))
                                              (if (gx#stx-null?
                                                   _tl166215166248_)
                                                  (if '#t
                                                      (cons _form166203_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd166241_)
                          (cons (gx#core-compile-top-syntax _body166251_)
                                '())))
              (_E166206166221_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E166206166221_)))))
                                        (_E166206166221_)))))
                              (_E166206166221_))))
                      (_E166206166221_)))))
          (_E166205166253_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx166260_)
        (let ((_form166262_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx166260_ _form166262_))))
    (define gx#core-compile-top-let-values%
      (lambda _g171543_
        (let ((_g171542_ (##length _g171543_)))
          (cond ((##fx= _g171542_ 1)
                 (apply (lambda (_stx166260_)
                          (gx#core-compile-top-let-values%__0 _stx166260_))
                        _g171543_))
                ((##fx= _g171542_ 2)
                 (apply (lambda (_stx166264_ _form166265_)
                          (gx#core-compile-top-let-values%__%
                           _stx166264_
                           _form166265_))
                        _g171543_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g171543_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx166199_)
        (gx#core-compile-top-let-values%__% _stx166199_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx166197_)
        (gx#core-compile-top-let-values%__% _stx166197_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx166156_)
        (let* ((_e166157166167_ _stx166156_)
               (_E166159166171_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166157166167_)))
               (_E166158166193_
                (lambda ()
                  (if (gx#stx-pair? _e166157166167_)
                      (let ((_e166160166175_ (gx#syntax-e _e166157166167_)))
                        (let ((_hd166161166178_ (##car _e166160166175_))
                              (_tl166162166180_ (##cdr _e166160166175_)))
                          (if (gx#stx-pair? _tl166162166180_)
                              (let ((_e166163166183_
                                     (gx#syntax-e _tl166162166180_)))
                                (let ((_hd166164166186_
                                       (##car _e166163166183_))
                                      (_tl166165166188_
                                       (##cdr _e166163166183_)))
                                  (let ((_e166191_ _hd166164166186_))
                                    (if (gx#stx-null? _tl166165166188_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e166191_)
                                                        '()))
                                            (_E166159166171_))
                                        (_E166159166171_)))))
                              (_E166159166171_))))
                      (_E166159166171_)))))
          (_E166158166193_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx166115_)
        (let* ((_e166116166126_ _stx166115_)
               (_E166118166130_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166116166126_)))
               (_E166117166152_
                (lambda ()
                  (if (gx#stx-pair? _e166116166126_)
                      (let ((_e166119166134_ (gx#syntax-e _e166116166126_)))
                        (let ((_hd166120166137_ (##car _e166119166134_))
                              (_tl166121166139_ (##cdr _e166119166134_)))
                          (if (gx#stx-pair? _tl166121166139_)
                              (let ((_e166122166142_
                                     (gx#syntax-e _tl166121166139_)))
                                (let ((_hd166123166145_
                                       (##car _e166122166142_))
                                      (_tl166124166147_
                                       (##cdr _e166122166142_)))
                                  (let ((_e166150_ _hd166123166145_))
                                    (if (gx#stx-null? _tl166124166147_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e166150_)
                                                        '()))
                                            (_E166118166130_))
                                        (_E166118166130_)))))
                              (_E166118166130_))))
                      (_E166118166130_)))))
          (_E166117166152_))))
    (define gx#core-compile-top-call%
      (lambda (_stx166072_)
        (let* ((_e166073166083_ _stx166072_)
               (_E166075166087_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166073166083_)))
               (_E166074166111_
                (lambda ()
                  (if (gx#stx-pair? _e166073166083_)
                      (let ((_e166076166091_ (gx#syntax-e _e166073166083_)))
                        (let ((_hd166077166094_ (##car _e166076166091_))
                              (_tl166078166096_ (##cdr _e166076166091_)))
                          (if (gx#stx-pair? _tl166078166096_)
                              (let ((_e166079166099_
                                     (gx#syntax-e _tl166078166096_)))
                                (let ((_hd166080166102_
                                       (##car _e166079166099_))
                                      (_tl166081166104_
                                       (##cdr _e166079166099_)))
                                  (let* ((_rator166107_ _hd166080166102_)
                                         (_args166109_ _tl166081166104_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator166107_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args166109_)))
                                        (_E166075166087_)))))
                              (_E166075166087_))))
                      (_E166075166087_)))))
          (_E166074166111_))))
    (define gx#core-compile-top-if%
      (lambda (_stx166005_)
        (let* ((_e166006166022_ _stx166005_)
               (_E166008166026_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166006166022_)))
               (_E166007166068_
                (lambda ()
                  (if (gx#stx-pair? _e166006166022_)
                      (let ((_e166009166030_ (gx#syntax-e _e166006166022_)))
                        (let ((_hd166010166033_ (##car _e166009166030_))
                              (_tl166011166035_ (##cdr _e166009166030_)))
                          (if (gx#stx-pair? _tl166011166035_)
                              (let ((_e166012166038_
                                     (gx#syntax-e _tl166011166035_)))
                                (let ((_hd166013166041_
                                       (##car _e166012166038_))
                                      (_tl166014166043_
                                       (##cdr _e166012166038_)))
                                  (let ((_test166046_ _hd166013166041_))
                                    (if (gx#stx-pair? _tl166014166043_)
                                        (let ((_e166015166048_
                                               (gx#syntax-e _tl166014166043_)))
                                          (let ((_hd166016166051_
                                                 (##car _e166015166048_))
                                                (_tl166017166053_
                                                 (##cdr _e166015166048_)))
                                            (let ((_K166056_ _hd166016166051_))
                                              (if (gx#stx-pair?
                                                   _tl166017166053_)
                                                  (let ((_e166018166058_
                                                         (gx#syntax-e
                                                          _tl166017166053_)))
                                                    (let ((_hd166019166061_
                                                           (##car _e166018166058_))
                                                          (_tl166020166063_
                                                           (##cdr _e166018166058_)))
                                                      (let ((_E166066_
                                                             _hd166019166061_))
                                                        (if (gx#stx-null?
                                                             _tl166020166063_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test166046_)
                                    (cons (gx#core-compile-top-syntax
                                           _K166056_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E166066_)
                                                '()))))
                        (_E166008166026_))
                    (_E166008166026_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E166008166026_)))))
                                        (_E166008166026_)))))
                              (_E166008166026_))))
                      (_E166008166026_)))))
          (_E166007166068_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx165964_)
        (let* ((_e165965165975_ _stx165964_)
               (_E165967165979_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165965165975_)))
               (_E165966166001_
                (lambda ()
                  (if (gx#stx-pair? _e165965165975_)
                      (let ((_e165968165983_ (gx#syntax-e _e165965165975_)))
                        (let ((_hd165969165986_ (##car _e165968165983_))
                              (_tl165970165988_ (##cdr _e165968165983_)))
                          (if (gx#stx-pair? _tl165970165988_)
                              (let ((_e165971165991_
                                     (gx#syntax-e _tl165970165988_)))
                                (let ((_hd165972165994_
                                       (##car _e165971165991_))
                                      (_tl165973165996_
                                       (##cdr _e165971165991_)))
                                  (let ((_id165999_ _hd165972165994_))
                                    (if (gx#stx-null? _tl165973165996_)
                                        (if (gx#identifier? _id165999_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id165999_)
                                                        '()))
                                            (_E165967165979_))
                                        (_E165967165979_)))))
                              (_E165967165979_))))
                      (_E165967165979_)))))
          (_E165966166001_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx165910_)
        (let* ((_e165911165924_ _stx165910_)
               (_E165913165928_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165911165924_)))
               (_E165912165960_
                (lambda ()
                  (if (gx#stx-pair? _e165911165924_)
                      (let ((_e165914165932_ (gx#syntax-e _e165911165924_)))
                        (let ((_hd165915165935_ (##car _e165914165932_))
                              (_tl165916165937_ (##cdr _e165914165932_)))
                          (if (gx#stx-pair? _tl165916165937_)
                              (let ((_e165917165940_
                                     (gx#syntax-e _tl165916165937_)))
                                (let ((_hd165918165943_
                                       (##car _e165917165940_))
                                      (_tl165919165945_
                                       (##cdr _e165917165940_)))
                                  (let ((_id165948_ _hd165918165943_))
                                    (if (gx#stx-pair? _tl165919165945_)
                                        (let ((_e165920165950_
                                               (gx#syntax-e _tl165919165945_)))
                                          (let ((_hd165921165953_
                                                 (##car _e165920165950_))
                                                (_tl165922165955_
                                                 (##cdr _e165920165950_)))
                                            (let ((_expr165958_
                                                   _hd165921165953_))
                                              (if (gx#stx-null?
                                                   _tl165922165955_)
                                                  (if (gx#identifier?
                                                       _id165948_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id165948_)
                          (cons (gx#core-compile-top-syntax _expr165958_)
                                '())))
              (_E165913165928_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E165913165928_)))))
                                        (_E165913165928_)))))
                              (_E165913165928_))))
                      (_E165913165928_)))))
          (_E165912165960_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id165905_)
        (let ((_$e165907_ (gx#resolve-identifier__0 _id165905_)))
          (if _$e165907_
              (##unchecked-structure-ref _$e165907_ '1 gx#binding::t '#f)
              _id165905_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd165903_)
        (if (gx#identifier? _hd165903_)
            (gx#core-compile-top-runtime-ref _hd165903_)
            '#f)))))
