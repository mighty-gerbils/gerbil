(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1709111636)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx94440_)
        (let* ((_e9444194448_ _stx94440_)
               (_E9444394452_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9444194448_)))
               (_E9444294466_
                (lambda ()
                  (if (gx#stx-pair? _e9444194448_)
                      (let ((_e9444494456_ (gx#syntax-e _e9444194448_)))
                        (let ((_hd9444594459_ (##car _e9444494456_))
                              (_tl9444694461_ (##cdr _e9444494456_)))
                          (let ((_form94464_ _hd9444594459_))
                            (if '#t
                                (let* ((__self94469
                                        (gx#syntax-local-e__0 _form94464_))
                                       (__method94470
                                        (method-ref
                                         __self94469
                                         'compile-top-syntax)))
                                  (if __method94470
                                      (__method94470 __self94469 _stx94440_)
                                      (error '"Missing method"
                                             __self94469
                                             'compile-top-syntax)))
                                (_E9444394452_)))))
                      (_E9444394452_)))))
          (_E9444294466_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self94400_ _stx94401_)
        (let* ((_self9440294410_ _self94400_)
               (_E9440494414_
                (lambda () (error '"No clause matching" _self9440294410_)))
               (_K9440594426_
                (lambda (_K94417_)
                  (let ((_$e94419_ (gx#stx-source _stx94401_)))
                    (if _$e94419_
                        ((lambda (_g9442194423_)
                           (gx#stx-wrap-source
                            (_K94417_ _stx94401_)
                            _g9442194423_))
                         _$e94419_)
                        (_K94417_ _stx94401_))))))
          (if (##structure-instance-of? _self9440294410_ 'gx#core-expander::t)
              (let* ((_e9440694429_
                      (##unchecked-structure-ref
                       _self9440294410_
                       '1
                       gx#expander::t
                       '#f))
                     (_e9440794432_
                      (##unchecked-structure-ref
                       _self9440294410_
                       '2
                       gx#core-expander::t
                       '#f))
                     (_e9440894435_
                      (##unchecked-structure-ref
                       _self9440294410_
                       '3
                       gx#core-expander::t
                       '#f))
                     (_K94438_ _e9440894435_))
                (_K9440594426_ _K94438_))
              (_E9440494414_)))))
    (bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx94274_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx94274_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx94244_)
        (let* ((_e9424594252_ _stx94244_)
               (_E9424794256_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9424594252_)))
               (_E9424694270_
                (lambda ()
                  (if (gx#stx-pair? _e9424594252_)
                      (let ((_e9424894260_ (gx#syntax-e _e9424594252_)))
                        (let ((_hd9424994263_ (##car _e9424894260_))
                              (_tl9425094265_ (##cdr _e9424894260_)))
                          (let ((_body94268_ _tl9425094265_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body94268_))
                                (_E9424794256_)))))
                      (_E9424794256_)))))
          (_E9424694270_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx94213_)
        (let* ((_e9421494221_ _stx94213_)
               (_E9421694225_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9421494221_)))
               (_E9421594240_
                (lambda ()
                  (if (gx#stx-pair? _e9421494221_)
                      (let ((_e9421794229_ (gx#syntax-e _e9421494221_)))
                        (let ((_hd9421894232_ (##car _e9421794229_))
                              (_tl9421994234_ (##cdr _e9421794229_)))
                          (let ((_body94237_ _tl9421994234_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body94237_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E9421694225_)))))
                      (_E9421694225_)))))
          (_E9421594240_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_stx94183_)
        (let* ((_e9418494191_ _stx94183_)
               (_E9418694195_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9418494191_)))
               (_E9418594209_
                (lambda ()
                  (if (gx#stx-pair? _e9418494191_)
                      (let ((_e9418794199_ (gx#syntax-e _e9418494191_)))
                        (let ((_hd9418894202_ (##car _e9418794199_))
                              (_tl9418994204_ (##cdr _e9418794199_)))
                          (let ((_body94207_ _tl9418994204_))
                            (if '#t
                                (cons '%#begin-foreign _body94207_)
                                (_E9418694195_)))))
                      (_E9418694195_)))))
          (_E9418594209_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_stx94129_)
        (let* ((_e9413094143_ _stx94129_)
               (_E9413294147_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9413094143_)))
               (_E9413194179_
                (lambda ()
                  (if (gx#stx-pair? _e9413094143_)
                      (let ((_e9413394151_ (gx#syntax-e _e9413094143_)))
                        (let ((_hd9413494154_ (##car _e9413394151_))
                              (_tl9413594156_ (##cdr _e9413394151_)))
                          (if (gx#stx-pair? _tl9413594156_)
                              (let ((_e9413694159_
                                     (gx#syntax-e _tl9413594156_)))
                                (let ((_hd9413794162_ (##car _e9413694159_))
                                      (_tl9413894164_ (##cdr _e9413694159_)))
                                  (let ((_ann94167_ _hd9413794162_))
                                    (if (gx#stx-pair? _tl9413894164_)
                                        (let ((_e9413994169_
                                               (gx#syntax-e _tl9413894164_)))
                                          (let ((_hd9414094172_
                                                 (##car _e9413994169_))
                                                (_tl9414194174_
                                                 (##cdr _e9413994169_)))
                                            (let ((_expr94177_ _hd9414094172_))
                                              (if (gx#stx-null? _tl9414194174_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr94177_)
                                                      (_E9413294147_))
                                                  (_E9413294147_)))))
                                        (_E9413294147_)))))
                              (_E9413294147_))))
                      (_E9413294147_)))))
          (_E9413194179_))))
    (define gx#core-compile-top-import%
      (lambda (_stx94099_)
        (let* ((_e9410094107_ _stx94099_)
               (_E9410294111_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9410094107_)))
               (_E9410194125_
                (lambda ()
                  (if (gx#stx-pair? _e9410094107_)
                      (let ((_e9410394115_ (gx#syntax-e _e9410094107_)))
                        (let ((_hd9410494118_ (##car _e9410394115_))
                              (_tl9410594120_ (##cdr _e9410394115_)))
                          (let ((_body94123_ _tl9410594120_))
                            (if '#t
                                (cons '%#import _body94123_)
                                (_E9410294111_)))))
                      (_E9410294111_)))))
          (_E9410194125_))))
    (define gx#core-compile-top-module%
      (lambda (_stx94056_)
        (let* ((_e9405794067_ _stx94056_)
               (_E9405994071_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9405794067_)))
               (_E9405894095_
                (lambda ()
                  (if (gx#stx-pair? _e9405794067_)
                      (let ((_e9406094075_ (gx#syntax-e _e9405794067_)))
                        (let ((_hd9406194078_ (##car _e9406094075_))
                              (_tl9406294080_ (##cdr _e9406094075_)))
                          (if (gx#stx-pair? _tl9406294080_)
                              (let ((_e9406394083_
                                     (gx#syntax-e _tl9406294080_)))
                                (let ((_hd9406494086_ (##car _e9406394083_))
                                      (_tl9406594088_ (##cdr _e9406394083_)))
                                  (let* ((_hd94091_ _hd9406494086_)
                                         (_body94093_ _tl9406594088_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _hd94091_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body94093_)))
                                        (_E9405994071_)))))
                              (_E9405994071_))))
                      (_E9405994071_)))))
          (_E9405894095_))))
    (define gx#core-compile-top-export%
      (lambda (_stx94026_)
        (let* ((_e9402794034_ _stx94026_)
               (_E9402994038_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9402794034_)))
               (_E9402894052_
                (lambda ()
                  (if (gx#stx-pair? _e9402794034_)
                      (let ((_e9403094042_ (gx#syntax-e _e9402794034_)))
                        (let ((_hd9403194045_ (##car _e9403094042_))
                              (_tl9403294047_ (##cdr _e9403094042_)))
                          (let ((_body94050_ _tl9403294047_))
                            (if '#t
                                (cons '%#export _body94050_)
                                (_E9402994038_)))))
                      (_E9402994038_)))))
          (_E9402894052_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx93996_)
        (let* ((_e9399794004_ _stx93996_)
               (_E9399994008_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9399794004_)))
               (_E9399894022_
                (lambda ()
                  (if (gx#stx-pair? _e9399794004_)
                      (let ((_e9400094012_ (gx#syntax-e _e9399794004_)))
                        (let ((_hd9400194015_ (##car _e9400094012_))
                              (_tl9400294017_ (##cdr _e9400094012_)))
                          (let ((_body94020_ _tl9400294017_))
                            (if '#t
                                (cons '%#provide _body94020_)
                                (_E9399994008_)))))
                      (_E9399994008_)))))
          (_E9399894022_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx93966_)
        (let* ((_e9396793974_ _stx93966_)
               (_E9396993978_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9396793974_)))
               (_E9396893992_
                (lambda ()
                  (if (gx#stx-pair? _e9396793974_)
                      (let ((_e9397093982_ (gx#syntax-e _e9396793974_)))
                        (let ((_hd9397193985_ (##car _e9397093982_))
                              (_tl9397293987_ (##cdr _e9397093982_)))
                          (let ((_body93990_ _tl9397293987_))
                            (if '#t
                                (cons '%#extern _body93990_)
                                (_E9396993978_)))))
                      (_E9396993978_)))))
          (_E9396893992_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx93912_)
        (let* ((_e9391393926_ _stx93912_)
               (_E9391593930_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9391393926_)))
               (_E9391493962_
                (lambda ()
                  (if (gx#stx-pair? _e9391393926_)
                      (let ((_e9391693934_ (gx#syntax-e _e9391393926_)))
                        (let ((_hd9391793937_ (##car _e9391693934_))
                              (_tl9391893939_ (##cdr _e9391693934_)))
                          (if (gx#stx-pair? _tl9391893939_)
                              (let ((_e9391993942_
                                     (gx#syntax-e _tl9391893939_)))
                                (let ((_hd9392093945_ (##car _e9391993942_))
                                      (_tl9392193947_ (##cdr _e9391993942_)))
                                  (let ((_hd93950_ _hd9392093945_))
                                    (if (gx#stx-pair? _tl9392193947_)
                                        (let ((_e9392293952_
                                               (gx#syntax-e _tl9392193947_)))
                                          (let ((_hd9392393955_
                                                 (##car _e9392293952_))
                                                (_tl9392493957_
                                                 (##cdr _e9392293952_)))
                                            (let ((_expr93960_ _hd9392393955_))
                                              (if (gx#stx-null? _tl9392493957_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd93950_)
                          (cons (gx#core-compile-top-syntax _expr93960_) '())))
              (_E9391593930_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9391593930_)))))
                                        (_E9391593930_)))))
                              (_E9391593930_))))
                      (_E9391593930_)))))
          (_E9391493962_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx93857_)
        (let* ((_e9385893871_ _stx93857_)
               (_E9386093875_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9385893871_)))
               (_E9385993908_
                (lambda ()
                  (if (gx#stx-pair? _e9385893871_)
                      (let ((_e9386193879_ (gx#syntax-e _e9385893871_)))
                        (let ((_hd9386293882_ (##car _e9386193879_))
                              (_tl9386393884_ (##cdr _e9386193879_)))
                          (if (gx#stx-pair? _tl9386393884_)
                              (let ((_e9386493887_
                                     (gx#syntax-e _tl9386393884_)))
                                (let ((_hd9386593890_ (##car _e9386493887_))
                                      (_tl9386693892_ (##cdr _e9386493887_)))
                                  (let ((_hd93895_ _hd9386593890_))
                                    (if (gx#stx-pair? _tl9386693892_)
                                        (let ((_e9386793897_
                                               (gx#syntax-e _tl9386693892_)))
                                          (let ((_hd9386893900_
                                                 (##car _e9386793897_))
                                                (_tl9386993902_
                                                 (##cdr _e9386793897_)))
                                            (let ((_expr93905_ _hd9386893900_))
                                              (if (gx#stx-null? _tl9386993902_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd93895_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr93905_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E9386093875_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9386093875_)))))
                                        (_E9386093875_)))))
                              (_E9386093875_))))
                      (_E9386093875_)))))
          (_E9385993908_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx93827_)
        (let* ((_e9382893835_ _stx93827_)
               (_E9383093839_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9382893835_)))
               (_E9382993853_
                (lambda ()
                  (if (gx#stx-pair? _e9382893835_)
                      (let ((_e9383193843_ (gx#syntax-e _e9382893835_)))
                        (let ((_hd9383293846_ (##car _e9383193843_))
                              (_tl9383393848_ (##cdr _e9383193843_)))
                          (let ((_body93851_ _tl9383393848_))
                            (if '#t
                                (cons '%#define-alias _body93851_)
                                (_E9383093839_)))))
                      (_E9383093839_)))))
          (_E9382993853_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx93797_)
        (let* ((_e9379893805_ _stx93797_)
               (_E9380093809_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9379893805_)))
               (_E9379993823_
                (lambda ()
                  (if (gx#stx-pair? _e9379893805_)
                      (let ((_e9380193813_ (gx#syntax-e _e9379893805_)))
                        (let ((_hd9380293816_ (##car _e9380193813_))
                              (_tl9380393818_ (##cdr _e9380193813_)))
                          (let ((_body93821_ _tl9380393818_))
                            (if '#t
                                (cons '%#define-runtime _body93821_)
                                (_E9380093809_)))))
                      (_E9380093809_)))))
          (_E9379993823_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx93767_)
        (let* ((_e9376893775_ _stx93767_)
               (_E9377093779_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9376893775_)))
               (_E9376993793_
                (lambda ()
                  (if (gx#stx-pair? _e9376893775_)
                      (let ((_e9377193783_ (gx#syntax-e _e9376893775_)))
                        (let ((_hd9377293786_ (##car _e9377193783_))
                              (_tl9377393788_ (##cdr _e9377193783_)))
                          (let ((_decls93791_ _tl9377393788_))
                            (if '#t
                                (cons '%#declare _decls93791_)
                                (_E9377093779_)))))
                      (_E9377093779_)))))
          (_E9376993793_))))
    (define gx#core-compile-top-lambda%
      (lambda (_stx93737_)
        (let* ((_e9373893745_ _stx93737_)
               (_E9374093749_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9373893745_)))
               (_E9373993763_
                (lambda ()
                  (if (gx#stx-pair? _e9373893745_)
                      (let ((_e9374193753_ (gx#syntax-e _e9373893745_)))
                        (let ((_hd9374293756_ (##car _e9374193753_))
                              (_tl9374393758_ (##cdr _e9374193753_)))
                          (let ((_clause93761_ _tl9374393758_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause93761_))
                                (_E9374093749_)))))
                      (_E9374093749_)))))
          (_E9373993763_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx93694_)
        (let* ((_e9369593705_ _stx93694_)
               (_E9369793709_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9369593705_)))
               (_E9369693733_
                (lambda ()
                  (if (gx#stx-pair? _e9369593705_)
                      (let ((_e9369893713_ (gx#syntax-e _e9369593705_)))
                        (let ((_hd9369993716_ (##car _e9369893713_))
                              (_tl9370093718_ (##cdr _e9369893713_)))
                          (let ((_hd93721_ _hd9369993716_))
                            (if (gx#stx-pair? _tl9370093718_)
                                (let ((_e9370193723_
                                       (gx#syntax-e _tl9370093718_)))
                                  (let ((_hd9370293726_ (##car _e9370193723_))
                                        (_tl9370393728_ (##cdr _e9370193723_)))
                                    (let ((_body93731_ _hd9370293726_))
                                      (if (gx#stx-null? _tl9370393728_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd93721_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body93731_)
                                                          '()))
                                              (_E9369793709_))
                                          (_E9369793709_)))))
                                (_E9369793709_)))))
                      (_E9369793709_)))))
          (_E9369693733_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx93664_)
        (let* ((_e9366593672_ _stx93664_)
               (_E9366793676_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9366593672_)))
               (_E9366693690_
                (lambda ()
                  (if (gx#stx-pair? _e9366593672_)
                      (let ((_e9366893680_ (gx#syntax-e _e9366593672_)))
                        (let ((_hd9366993683_ (##car _e9366893680_))
                              (_tl9367093685_ (##cdr _e9366893680_)))
                          (let ((_clauses93688_ _tl9367093685_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses93688_))
                                (_E9366793676_)))))
                      (_E9366793676_)))))
          (_E9366693690_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx93599_ _form93600_)
        (let* ((_e9360193614_ _stx93599_)
               (_E9360393618_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9360193614_)))
               (_E9360293650_
                (lambda ()
                  (if (gx#stx-pair? _e9360193614_)
                      (let ((_e9360493622_ (gx#syntax-e _e9360193614_)))
                        (let ((_hd9360593625_ (##car _e9360493622_))
                              (_tl9360693627_ (##cdr _e9360493622_)))
                          (if (gx#stx-pair? _tl9360693627_)
                              (let ((_e9360793630_
                                     (gx#syntax-e _tl9360693627_)))
                                (let ((_hd9360893633_ (##car _e9360793630_))
                                      (_tl9360993635_ (##cdr _e9360793630_)))
                                  (let ((_hd93638_ _hd9360893633_))
                                    (if (gx#stx-pair? _tl9360993635_)
                                        (let ((_e9361093640_
                                               (gx#syntax-e _tl9360993635_)))
                                          (let ((_hd9361193643_
                                                 (##car _e9361093640_))
                                                (_tl9361293645_
                                                 (##cdr _e9361093640_)))
                                            (let ((_body93648_ _hd9361193643_))
                                              (if (gx#stx-null? _tl9361293645_)
                                                  (if '#t
                                                      (cons _form93600_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd93638_)
                          (cons (gx#core-compile-top-syntax _body93648_) '())))
              (_E9360393618_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9360393618_)))))
                                        (_E9360393618_)))))
                              (_E9360393618_))))
                      (_E9360393618_)))))
          (_E9360293650_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx93657_)
        (let ((_form93659_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx93657_ _form93659_))))
    (define gx#core-compile-top-let-values%
      (lambda _g94472_
        (let ((_g94471_ (##length _g94472_)))
          (cond ((##fx= _g94471_ 1)
                 (apply (lambda (_stx93657_)
                          (gx#core-compile-top-let-values%__0 _stx93657_))
                        _g94472_))
                ((##fx= _g94471_ 2)
                 (apply (lambda (_stx93661_ _form93662_)
                          (gx#core-compile-top-let-values%__%
                           _stx93661_
                           _form93662_))
                        _g94472_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g94472_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx93596_)
        (gx#core-compile-top-let-values%__% _stx93596_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx93594_)
        (gx#core-compile-top-let-values%__% _stx93594_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx93553_)
        (let* ((_e9355493564_ _stx93553_)
               (_E9355693568_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9355493564_)))
               (_E9355593590_
                (lambda ()
                  (if (gx#stx-pair? _e9355493564_)
                      (let ((_e9355793572_ (gx#syntax-e _e9355493564_)))
                        (let ((_hd9355893575_ (##car _e9355793572_))
                              (_tl9355993577_ (##cdr _e9355793572_)))
                          (if (gx#stx-pair? _tl9355993577_)
                              (let ((_e9356093580_
                                     (gx#syntax-e _tl9355993577_)))
                                (let ((_hd9356193583_ (##car _e9356093580_))
                                      (_tl9356293585_ (##cdr _e9356093580_)))
                                  (let ((_e93588_ _hd9356193583_))
                                    (if (gx#stx-null? _tl9356293585_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e93588_)
                                                        '()))
                                            (_E9355693568_))
                                        (_E9355693568_)))))
                              (_E9355693568_))))
                      (_E9355693568_)))))
          (_E9355593590_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx93512_)
        (let* ((_e9351393523_ _stx93512_)
               (_E9351593527_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9351393523_)))
               (_E9351493549_
                (lambda ()
                  (if (gx#stx-pair? _e9351393523_)
                      (let ((_e9351693531_ (gx#syntax-e _e9351393523_)))
                        (let ((_hd9351793534_ (##car _e9351693531_))
                              (_tl9351893536_ (##cdr _e9351693531_)))
                          (if (gx#stx-pair? _tl9351893536_)
                              (let ((_e9351993539_
                                     (gx#syntax-e _tl9351893536_)))
                                (let ((_hd9352093542_ (##car _e9351993539_))
                                      (_tl9352193544_ (##cdr _e9351993539_)))
                                  (let ((_e93547_ _hd9352093542_))
                                    (if (gx#stx-null? _tl9352193544_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e93547_)
                                                        '()))
                                            (_E9351593527_))
                                        (_E9351593527_)))))
                              (_E9351593527_))))
                      (_E9351593527_)))))
          (_E9351493549_))))
    (define gx#core-compile-top-call%
      (lambda (_stx93469_)
        (let* ((_e9347093480_ _stx93469_)
               (_E9347293484_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9347093480_)))
               (_E9347193508_
                (lambda ()
                  (if (gx#stx-pair? _e9347093480_)
                      (let ((_e9347393488_ (gx#syntax-e _e9347093480_)))
                        (let ((_hd9347493491_ (##car _e9347393488_))
                              (_tl9347593493_ (##cdr _e9347393488_)))
                          (if (gx#stx-pair? _tl9347593493_)
                              (let ((_e9347693496_
                                     (gx#syntax-e _tl9347593493_)))
                                (let ((_hd9347793499_ (##car _e9347693496_))
                                      (_tl9347893501_ (##cdr _e9347693496_)))
                                  (let* ((_rator93504_ _hd9347793499_)
                                         (_args93506_ _tl9347893501_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator93504_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args93506_)))
                                        (_E9347293484_)))))
                              (_E9347293484_))))
                      (_E9347293484_)))))
          (_E9347193508_))))
    (define gx#core-compile-top-if%
      (lambda (_stx93402_)
        (let* ((_e9340393419_ _stx93402_)
               (_E9340593423_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9340393419_)))
               (_E9340493465_
                (lambda ()
                  (if (gx#stx-pair? _e9340393419_)
                      (let ((_e9340693427_ (gx#syntax-e _e9340393419_)))
                        (let ((_hd9340793430_ (##car _e9340693427_))
                              (_tl9340893432_ (##cdr _e9340693427_)))
                          (if (gx#stx-pair? _tl9340893432_)
                              (let ((_e9340993435_
                                     (gx#syntax-e _tl9340893432_)))
                                (let ((_hd9341093438_ (##car _e9340993435_))
                                      (_tl9341193440_ (##cdr _e9340993435_)))
                                  (let ((_test93443_ _hd9341093438_))
                                    (if (gx#stx-pair? _tl9341193440_)
                                        (let ((_e9341293445_
                                               (gx#syntax-e _tl9341193440_)))
                                          (let ((_hd9341393448_
                                                 (##car _e9341293445_))
                                                (_tl9341493450_
                                                 (##cdr _e9341293445_)))
                                            (let ((_K93453_ _hd9341393448_))
                                              (if (gx#stx-pair? _tl9341493450_)
                                                  (let ((_e9341593455_
                                                         (gx#syntax-e
                                                          _tl9341493450_)))
                                                    (let ((_hd9341693458_
                                                           (##car _e9341593455_))
                                                          (_tl9341793460_
                                                           (##cdr _e9341593455_)))
                                                      (let ((_E93463_
                                                             _hd9341693458_))
                                                        (if (gx#stx-null?
                                                             _tl9341793460_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test93443_)
                                    (cons (gx#core-compile-top-syntax _K93453_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E93463_)
                                                '()))))
                        (_E9340593423_))
                    (_E9340593423_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9340593423_)))))
                                        (_E9340593423_)))))
                              (_E9340593423_))))
                      (_E9340593423_)))))
          (_E9340493465_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx93361_)
        (let* ((_e9336293372_ _stx93361_)
               (_E9336493376_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9336293372_)))
               (_E9336393398_
                (lambda ()
                  (if (gx#stx-pair? _e9336293372_)
                      (let ((_e9336593380_ (gx#syntax-e _e9336293372_)))
                        (let ((_hd9336693383_ (##car _e9336593380_))
                              (_tl9336793385_ (##cdr _e9336593380_)))
                          (if (gx#stx-pair? _tl9336793385_)
                              (let ((_e9336893388_
                                     (gx#syntax-e _tl9336793385_)))
                                (let ((_hd9336993391_ (##car _e9336893388_))
                                      (_tl9337093393_ (##cdr _e9336893388_)))
                                  (let ((_id93396_ _hd9336993391_))
                                    (if (gx#stx-null? _tl9337093393_)
                                        (if (gx#identifier? _id93396_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id93396_)
                                                        '()))
                                            (_E9336493376_))
                                        (_E9336493376_)))))
                              (_E9336493376_))))
                      (_E9336493376_)))))
          (_E9336393398_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx93307_)
        (let* ((_e9330893321_ _stx93307_)
               (_E9331093325_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9330893321_)))
               (_E9330993357_
                (lambda ()
                  (if (gx#stx-pair? _e9330893321_)
                      (let ((_e9331193329_ (gx#syntax-e _e9330893321_)))
                        (let ((_hd9331293332_ (##car _e9331193329_))
                              (_tl9331393334_ (##cdr _e9331193329_)))
                          (if (gx#stx-pair? _tl9331393334_)
                              (let ((_e9331493337_
                                     (gx#syntax-e _tl9331393334_)))
                                (let ((_hd9331593340_ (##car _e9331493337_))
                                      (_tl9331693342_ (##cdr _e9331493337_)))
                                  (let ((_id93345_ _hd9331593340_))
                                    (if (gx#stx-pair? _tl9331693342_)
                                        (let ((_e9331793347_
                                               (gx#syntax-e _tl9331693342_)))
                                          (let ((_hd9331893350_
                                                 (##car _e9331793347_))
                                                (_tl9331993352_
                                                 (##cdr _e9331793347_)))
                                            (let ((_expr93355_ _hd9331893350_))
                                              (if (gx#stx-null? _tl9331993352_)
                                                  (if (gx#identifier?
                                                       _id93345_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id93345_)
                          (cons (gx#core-compile-top-syntax _expr93355_) '())))
              (_E9331093325_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9331093325_)))))
                                        (_E9331093325_)))))
                              (_E9331093325_))))
                      (_E9331093325_)))))
          (_E9330993357_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id93302_)
        (let ((_$e93304_ (gx#resolve-identifier__0 _id93302_)))
          (if _$e93304_
              (##unchecked-structure-ref _$e93304_ '1 gx#binding::t '#f)
              _id93302_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd93300_)
        (if (gx#identifier? _hd93300_)
            (gx#core-compile-top-runtime-ref _hd93300_)
            '#f)))))
