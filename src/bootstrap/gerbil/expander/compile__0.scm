(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1710237311)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx94384_)
        (let* ((_e9438594392_ _stx94384_)
               (_E9438794396_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9438594392_)))
               (_E9438694410_
                (lambda ()
                  (if (gx#stx-pair? _e9438594392_)
                      (let ((_e9438894400_ (gx#syntax-e _e9438594392_)))
                        (let ((_hd9438994403_ (##car _e9438894400_))
                              (_tl9439094405_ (##cdr _e9438894400_)))
                          (let ((_form94408_ _hd9438994403_))
                            (if '#t
                                (let* ((__self94413
                                        (gx#syntax-local-e__0 _form94408_))
                                       (__method94414
                                        (method-ref
                                         __self94413
                                         'compile-top-syntax)))
                                  (if __method94414
                                      (__method94414 __self94413 _stx94384_)
                                      (error '"Missing method"
                                             __self94413
                                             'compile-top-syntax)))
                                (_E9438794396_)))))
                      (_E9438794396_)))))
          (_E9438694410_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self94344_ _stx94345_)
        (let* ((_self9434694354_ _self94344_)
               (_E9434894358_
                (lambda () (error '"No clause matching" _self9434694354_)))
               (_K9434994370_
                (lambda (_K94361_)
                  (let ((_$e94363_ (gx#stx-source _stx94345_)))
                    (if _$e94363_
                        ((lambda (_g9436594367_)
                           (gx#stx-wrap-source
                            (_K94361_ _stx94345_)
                            _g9436594367_))
                         _$e94363_)
                        (_K94361_ _stx94345_))))))
          (if (##structure-instance-of? _self9434694354_ 'gx#core-expander::t)
              (let* ((_e9435094373_
                      (##unchecked-structure-ref
                       _self9434694354_
                       '1
                       gx#expander::t
                       '#f))
                     (_e9435194376_
                      (##unchecked-structure-ref
                       _self9434694354_
                       '2
                       gx#core-expander::t
                       '#f))
                     (_e9435294379_
                      (##unchecked-structure-ref
                       _self9434694354_
                       '3
                       gx#core-expander::t
                       '#f))
                     (_K94382_ _e9435294379_))
                (_K9434994370_ _K94382_))
              (_E9434894358_)))))
    (bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx94218_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx94218_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx94188_)
        (let* ((_e9418994196_ _stx94188_)
               (_E9419194200_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9418994196_)))
               (_E9419094214_
                (lambda ()
                  (if (gx#stx-pair? _e9418994196_)
                      (let ((_e9419294204_ (gx#syntax-e _e9418994196_)))
                        (let ((_hd9419394207_ (##car _e9419294204_))
                              (_tl9419494209_ (##cdr _e9419294204_)))
                          (let ((_body94212_ _tl9419494209_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body94212_))
                                (_E9419194200_)))))
                      (_E9419194200_)))))
          (_E9419094214_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx94157_)
        (let* ((_e9415894165_ _stx94157_)
               (_E9416094169_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9415894165_)))
               (_E9415994184_
                (lambda ()
                  (if (gx#stx-pair? _e9415894165_)
                      (let ((_e9416194173_ (gx#syntax-e _e9415894165_)))
                        (let ((_hd9416294176_ (##car _e9416194173_))
                              (_tl9416394178_ (##cdr _e9416194173_)))
                          (let ((_body94181_ _tl9416394178_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body94181_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E9416094169_)))))
                      (_E9416094169_)))))
          (_E9415994184_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_stx94127_)
        (let* ((_e9412894135_ _stx94127_)
               (_E9413094139_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9412894135_)))
               (_E9412994153_
                (lambda ()
                  (if (gx#stx-pair? _e9412894135_)
                      (let ((_e9413194143_ (gx#syntax-e _e9412894135_)))
                        (let ((_hd9413294146_ (##car _e9413194143_))
                              (_tl9413394148_ (##cdr _e9413194143_)))
                          (let ((_body94151_ _tl9413394148_))
                            (if '#t
                                (cons '%#begin-foreign _body94151_)
                                (_E9413094139_)))))
                      (_E9413094139_)))))
          (_E9412994153_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_stx94073_)
        (let* ((_e9407494087_ _stx94073_)
               (_E9407694091_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9407494087_)))
               (_E9407594123_
                (lambda ()
                  (if (gx#stx-pair? _e9407494087_)
                      (let ((_e9407794095_ (gx#syntax-e _e9407494087_)))
                        (let ((_hd9407894098_ (##car _e9407794095_))
                              (_tl9407994100_ (##cdr _e9407794095_)))
                          (if (gx#stx-pair? _tl9407994100_)
                              (let ((_e9408094103_
                                     (gx#syntax-e _tl9407994100_)))
                                (let ((_hd9408194106_ (##car _e9408094103_))
                                      (_tl9408294108_ (##cdr _e9408094103_)))
                                  (let ((_ann94111_ _hd9408194106_))
                                    (if (gx#stx-pair? _tl9408294108_)
                                        (let ((_e9408394113_
                                               (gx#syntax-e _tl9408294108_)))
                                          (let ((_hd9408494116_
                                                 (##car _e9408394113_))
                                                (_tl9408594118_
                                                 (##cdr _e9408394113_)))
                                            (let ((_expr94121_ _hd9408494116_))
                                              (if (gx#stx-null? _tl9408594118_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr94121_)
                                                      (_E9407694091_))
                                                  (_E9407694091_)))))
                                        (_E9407694091_)))))
                              (_E9407694091_))))
                      (_E9407694091_)))))
          (_E9407594123_))))
    (define gx#core-compile-top-import%
      (lambda (_stx94043_)
        (let* ((_e9404494051_ _stx94043_)
               (_E9404694055_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9404494051_)))
               (_E9404594069_
                (lambda ()
                  (if (gx#stx-pair? _e9404494051_)
                      (let ((_e9404794059_ (gx#syntax-e _e9404494051_)))
                        (let ((_hd9404894062_ (##car _e9404794059_))
                              (_tl9404994064_ (##cdr _e9404794059_)))
                          (let ((_body94067_ _tl9404994064_))
                            (if '#t
                                (cons '%#import _body94067_)
                                (_E9404694055_)))))
                      (_E9404694055_)))))
          (_E9404594069_))))
    (define gx#core-compile-top-module%
      (lambda (_stx94000_)
        (let* ((_e9400194011_ _stx94000_)
               (_E9400394015_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9400194011_)))
               (_E9400294039_
                (lambda ()
                  (if (gx#stx-pair? _e9400194011_)
                      (let ((_e9400494019_ (gx#syntax-e _e9400194011_)))
                        (let ((_hd9400594022_ (##car _e9400494019_))
                              (_tl9400694024_ (##cdr _e9400494019_)))
                          (if (gx#stx-pair? _tl9400694024_)
                              (let ((_e9400794027_
                                     (gx#syntax-e _tl9400694024_)))
                                (let ((_hd9400894030_ (##car _e9400794027_))
                                      (_tl9400994032_ (##cdr _e9400794027_)))
                                  (let* ((_hd94035_ _hd9400894030_)
                                         (_body94037_ _tl9400994032_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _hd94035_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body94037_)))
                                        (_E9400394015_)))))
                              (_E9400394015_))))
                      (_E9400394015_)))))
          (_E9400294039_))))
    (define gx#core-compile-top-export%
      (lambda (_stx93970_)
        (let* ((_e9397193978_ _stx93970_)
               (_E9397393982_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9397193978_)))
               (_E9397293996_
                (lambda ()
                  (if (gx#stx-pair? _e9397193978_)
                      (let ((_e9397493986_ (gx#syntax-e _e9397193978_)))
                        (let ((_hd9397593989_ (##car _e9397493986_))
                              (_tl9397693991_ (##cdr _e9397493986_)))
                          (let ((_body93994_ _tl9397693991_))
                            (if '#t
                                (cons '%#export _body93994_)
                                (_E9397393982_)))))
                      (_E9397393982_)))))
          (_E9397293996_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx93940_)
        (let* ((_e9394193948_ _stx93940_)
               (_E9394393952_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9394193948_)))
               (_E9394293966_
                (lambda ()
                  (if (gx#stx-pair? _e9394193948_)
                      (let ((_e9394493956_ (gx#syntax-e _e9394193948_)))
                        (let ((_hd9394593959_ (##car _e9394493956_))
                              (_tl9394693961_ (##cdr _e9394493956_)))
                          (let ((_body93964_ _tl9394693961_))
                            (if '#t
                                (cons '%#provide _body93964_)
                                (_E9394393952_)))))
                      (_E9394393952_)))))
          (_E9394293966_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx93910_)
        (let* ((_e9391193918_ _stx93910_)
               (_E9391393922_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9391193918_)))
               (_E9391293936_
                (lambda ()
                  (if (gx#stx-pair? _e9391193918_)
                      (let ((_e9391493926_ (gx#syntax-e _e9391193918_)))
                        (let ((_hd9391593929_ (##car _e9391493926_))
                              (_tl9391693931_ (##cdr _e9391493926_)))
                          (let ((_body93934_ _tl9391693931_))
                            (if '#t
                                (cons '%#extern _body93934_)
                                (_E9391393922_)))))
                      (_E9391393922_)))))
          (_E9391293936_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx93856_)
        (let* ((_e9385793870_ _stx93856_)
               (_E9385993874_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9385793870_)))
               (_E9385893906_
                (lambda ()
                  (if (gx#stx-pair? _e9385793870_)
                      (let ((_e9386093878_ (gx#syntax-e _e9385793870_)))
                        (let ((_hd9386193881_ (##car _e9386093878_))
                              (_tl9386293883_ (##cdr _e9386093878_)))
                          (if (gx#stx-pair? _tl9386293883_)
                              (let ((_e9386393886_
                                     (gx#syntax-e _tl9386293883_)))
                                (let ((_hd9386493889_ (##car _e9386393886_))
                                      (_tl9386593891_ (##cdr _e9386393886_)))
                                  (let ((_hd93894_ _hd9386493889_))
                                    (if (gx#stx-pair? _tl9386593891_)
                                        (let ((_e9386693896_
                                               (gx#syntax-e _tl9386593891_)))
                                          (let ((_hd9386793899_
                                                 (##car _e9386693896_))
                                                (_tl9386893901_
                                                 (##cdr _e9386693896_)))
                                            (let ((_expr93904_ _hd9386793899_))
                                              (if (gx#stx-null? _tl9386893901_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd93894_)
                          (cons (gx#core-compile-top-syntax _expr93904_) '())))
              (_E9385993874_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9385993874_)))))
                                        (_E9385993874_)))))
                              (_E9385993874_))))
                      (_E9385993874_)))))
          (_E9385893906_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx93801_)
        (let* ((_e9380293815_ _stx93801_)
               (_E9380493819_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9380293815_)))
               (_E9380393852_
                (lambda ()
                  (if (gx#stx-pair? _e9380293815_)
                      (let ((_e9380593823_ (gx#syntax-e _e9380293815_)))
                        (let ((_hd9380693826_ (##car _e9380593823_))
                              (_tl9380793828_ (##cdr _e9380593823_)))
                          (if (gx#stx-pair? _tl9380793828_)
                              (let ((_e9380893831_
                                     (gx#syntax-e _tl9380793828_)))
                                (let ((_hd9380993834_ (##car _e9380893831_))
                                      (_tl9381093836_ (##cdr _e9380893831_)))
                                  (let ((_hd93839_ _hd9380993834_))
                                    (if (gx#stx-pair? _tl9381093836_)
                                        (let ((_e9381193841_
                                               (gx#syntax-e _tl9381093836_)))
                                          (let ((_hd9381293844_
                                                 (##car _e9381193841_))
                                                (_tl9381393846_
                                                 (##cdr _e9381193841_)))
                                            (let ((_expr93849_ _hd9381293844_))
                                              (if (gx#stx-null? _tl9381393846_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd93839_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr93849_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E9380493819_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9380493819_)))))
                                        (_E9380493819_)))))
                              (_E9380493819_))))
                      (_E9380493819_)))))
          (_E9380393852_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx93771_)
        (let* ((_e9377293779_ _stx93771_)
               (_E9377493783_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9377293779_)))
               (_E9377393797_
                (lambda ()
                  (if (gx#stx-pair? _e9377293779_)
                      (let ((_e9377593787_ (gx#syntax-e _e9377293779_)))
                        (let ((_hd9377693790_ (##car _e9377593787_))
                              (_tl9377793792_ (##cdr _e9377593787_)))
                          (let ((_body93795_ _tl9377793792_))
                            (if '#t
                                (cons '%#define-alias _body93795_)
                                (_E9377493783_)))))
                      (_E9377493783_)))))
          (_E9377393797_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx93741_)
        (let* ((_e9374293749_ _stx93741_)
               (_E9374493753_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9374293749_)))
               (_E9374393767_
                (lambda ()
                  (if (gx#stx-pair? _e9374293749_)
                      (let ((_e9374593757_ (gx#syntax-e _e9374293749_)))
                        (let ((_hd9374693760_ (##car _e9374593757_))
                              (_tl9374793762_ (##cdr _e9374593757_)))
                          (let ((_body93765_ _tl9374793762_))
                            (if '#t
                                (cons '%#define-runtime _body93765_)
                                (_E9374493753_)))))
                      (_E9374493753_)))))
          (_E9374393767_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx93711_)
        (let* ((_e9371293719_ _stx93711_)
               (_E9371493723_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9371293719_)))
               (_E9371393737_
                (lambda ()
                  (if (gx#stx-pair? _e9371293719_)
                      (let ((_e9371593727_ (gx#syntax-e _e9371293719_)))
                        (let ((_hd9371693730_ (##car _e9371593727_))
                              (_tl9371793732_ (##cdr _e9371593727_)))
                          (let ((_decls93735_ _tl9371793732_))
                            (if '#t
                                (cons '%#declare _decls93735_)
                                (_E9371493723_)))))
                      (_E9371493723_)))))
          (_E9371393737_))))
    (define gx#core-compile-top-lambda%
      (lambda (_stx93681_)
        (let* ((_e9368293689_ _stx93681_)
               (_E9368493693_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9368293689_)))
               (_E9368393707_
                (lambda ()
                  (if (gx#stx-pair? _e9368293689_)
                      (let ((_e9368593697_ (gx#syntax-e _e9368293689_)))
                        (let ((_hd9368693700_ (##car _e9368593697_))
                              (_tl9368793702_ (##cdr _e9368593697_)))
                          (let ((_clause93705_ _tl9368793702_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause93705_))
                                (_E9368493693_)))))
                      (_E9368493693_)))))
          (_E9368393707_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx93638_)
        (let* ((_e9363993649_ _stx93638_)
               (_E9364193653_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9363993649_)))
               (_E9364093677_
                (lambda ()
                  (if (gx#stx-pair? _e9363993649_)
                      (let ((_e9364293657_ (gx#syntax-e _e9363993649_)))
                        (let ((_hd9364393660_ (##car _e9364293657_))
                              (_tl9364493662_ (##cdr _e9364293657_)))
                          (let ((_hd93665_ _hd9364393660_))
                            (if (gx#stx-pair? _tl9364493662_)
                                (let ((_e9364593667_
                                       (gx#syntax-e _tl9364493662_)))
                                  (let ((_hd9364693670_ (##car _e9364593667_))
                                        (_tl9364793672_ (##cdr _e9364593667_)))
                                    (let ((_body93675_ _hd9364693670_))
                                      (if (gx#stx-null? _tl9364793672_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd93665_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body93675_)
                                                          '()))
                                              (_E9364193653_))
                                          (_E9364193653_)))))
                                (_E9364193653_)))))
                      (_E9364193653_)))))
          (_E9364093677_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx93608_)
        (let* ((_e9360993616_ _stx93608_)
               (_E9361193620_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9360993616_)))
               (_E9361093634_
                (lambda ()
                  (if (gx#stx-pair? _e9360993616_)
                      (let ((_e9361293624_ (gx#syntax-e _e9360993616_)))
                        (let ((_hd9361393627_ (##car _e9361293624_))
                              (_tl9361493629_ (##cdr _e9361293624_)))
                          (let ((_clauses93632_ _tl9361493629_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses93632_))
                                (_E9361193620_)))))
                      (_E9361193620_)))))
          (_E9361093634_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx93543_ _form93544_)
        (let* ((_e9354593558_ _stx93543_)
               (_E9354793562_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9354593558_)))
               (_E9354693594_
                (lambda ()
                  (if (gx#stx-pair? _e9354593558_)
                      (let ((_e9354893566_ (gx#syntax-e _e9354593558_)))
                        (let ((_hd9354993569_ (##car _e9354893566_))
                              (_tl9355093571_ (##cdr _e9354893566_)))
                          (if (gx#stx-pair? _tl9355093571_)
                              (let ((_e9355193574_
                                     (gx#syntax-e _tl9355093571_)))
                                (let ((_hd9355293577_ (##car _e9355193574_))
                                      (_tl9355393579_ (##cdr _e9355193574_)))
                                  (let ((_hd93582_ _hd9355293577_))
                                    (if (gx#stx-pair? _tl9355393579_)
                                        (let ((_e9355493584_
                                               (gx#syntax-e _tl9355393579_)))
                                          (let ((_hd9355593587_
                                                 (##car _e9355493584_))
                                                (_tl9355693589_
                                                 (##cdr _e9355493584_)))
                                            (let ((_body93592_ _hd9355593587_))
                                              (if (gx#stx-null? _tl9355693589_)
                                                  (if '#t
                                                      (cons _form93544_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd93582_)
                          (cons (gx#core-compile-top-syntax _body93592_) '())))
              (_E9354793562_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9354793562_)))))
                                        (_E9354793562_)))))
                              (_E9354793562_))))
                      (_E9354793562_)))))
          (_E9354693594_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx93601_)
        (let ((_form93603_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx93601_ _form93603_))))
    (define gx#core-compile-top-let-values%
      (lambda _g94416_
        (let ((_g94415_ (##length _g94416_)))
          (cond ((##fx= _g94415_ 1)
                 (apply (lambda (_stx93601_)
                          (gx#core-compile-top-let-values%__0 _stx93601_))
                        _g94416_))
                ((##fx= _g94415_ 2)
                 (apply (lambda (_stx93605_ _form93606_)
                          (gx#core-compile-top-let-values%__%
                           _stx93605_
                           _form93606_))
                        _g94416_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g94416_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx93540_)
        (gx#core-compile-top-let-values%__% _stx93540_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx93538_)
        (gx#core-compile-top-let-values%__% _stx93538_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx93497_)
        (let* ((_e9349893508_ _stx93497_)
               (_E9350093512_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9349893508_)))
               (_E9349993534_
                (lambda ()
                  (if (gx#stx-pair? _e9349893508_)
                      (let ((_e9350193516_ (gx#syntax-e _e9349893508_)))
                        (let ((_hd9350293519_ (##car _e9350193516_))
                              (_tl9350393521_ (##cdr _e9350193516_)))
                          (if (gx#stx-pair? _tl9350393521_)
                              (let ((_e9350493524_
                                     (gx#syntax-e _tl9350393521_)))
                                (let ((_hd9350593527_ (##car _e9350493524_))
                                      (_tl9350693529_ (##cdr _e9350493524_)))
                                  (let ((_e93532_ _hd9350593527_))
                                    (if (gx#stx-null? _tl9350693529_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e93532_)
                                                        '()))
                                            (_E9350093512_))
                                        (_E9350093512_)))))
                              (_E9350093512_))))
                      (_E9350093512_)))))
          (_E9349993534_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx93456_)
        (let* ((_e9345793467_ _stx93456_)
               (_E9345993471_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9345793467_)))
               (_E9345893493_
                (lambda ()
                  (if (gx#stx-pair? _e9345793467_)
                      (let ((_e9346093475_ (gx#syntax-e _e9345793467_)))
                        (let ((_hd9346193478_ (##car _e9346093475_))
                              (_tl9346293480_ (##cdr _e9346093475_)))
                          (if (gx#stx-pair? _tl9346293480_)
                              (let ((_e9346393483_
                                     (gx#syntax-e _tl9346293480_)))
                                (let ((_hd9346493486_ (##car _e9346393483_))
                                      (_tl9346593488_ (##cdr _e9346393483_)))
                                  (let ((_e93491_ _hd9346493486_))
                                    (if (gx#stx-null? _tl9346593488_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e93491_)
                                                        '()))
                                            (_E9345993471_))
                                        (_E9345993471_)))))
                              (_E9345993471_))))
                      (_E9345993471_)))))
          (_E9345893493_))))
    (define gx#core-compile-top-call%
      (lambda (_stx93413_)
        (let* ((_e9341493424_ _stx93413_)
               (_E9341693428_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9341493424_)))
               (_E9341593452_
                (lambda ()
                  (if (gx#stx-pair? _e9341493424_)
                      (let ((_e9341793432_ (gx#syntax-e _e9341493424_)))
                        (let ((_hd9341893435_ (##car _e9341793432_))
                              (_tl9341993437_ (##cdr _e9341793432_)))
                          (if (gx#stx-pair? _tl9341993437_)
                              (let ((_e9342093440_
                                     (gx#syntax-e _tl9341993437_)))
                                (let ((_hd9342193443_ (##car _e9342093440_))
                                      (_tl9342293445_ (##cdr _e9342093440_)))
                                  (let* ((_rator93448_ _hd9342193443_)
                                         (_args93450_ _tl9342293445_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator93448_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args93450_)))
                                        (_E9341693428_)))))
                              (_E9341693428_))))
                      (_E9341693428_)))))
          (_E9341593452_))))
    (define gx#core-compile-top-if%
      (lambda (_stx93346_)
        (let* ((_e9334793363_ _stx93346_)
               (_E9334993367_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9334793363_)))
               (_E9334893409_
                (lambda ()
                  (if (gx#stx-pair? _e9334793363_)
                      (let ((_e9335093371_ (gx#syntax-e _e9334793363_)))
                        (let ((_hd9335193374_ (##car _e9335093371_))
                              (_tl9335293376_ (##cdr _e9335093371_)))
                          (if (gx#stx-pair? _tl9335293376_)
                              (let ((_e9335393379_
                                     (gx#syntax-e _tl9335293376_)))
                                (let ((_hd9335493382_ (##car _e9335393379_))
                                      (_tl9335593384_ (##cdr _e9335393379_)))
                                  (let ((_test93387_ _hd9335493382_))
                                    (if (gx#stx-pair? _tl9335593384_)
                                        (let ((_e9335693389_
                                               (gx#syntax-e _tl9335593384_)))
                                          (let ((_hd9335793392_
                                                 (##car _e9335693389_))
                                                (_tl9335893394_
                                                 (##cdr _e9335693389_)))
                                            (let ((_K93397_ _hd9335793392_))
                                              (if (gx#stx-pair? _tl9335893394_)
                                                  (let ((_e9335993399_
                                                         (gx#syntax-e
                                                          _tl9335893394_)))
                                                    (let ((_hd9336093402_
                                                           (##car _e9335993399_))
                                                          (_tl9336193404_
                                                           (##cdr _e9335993399_)))
                                                      (let ((_E93407_
                                                             _hd9336093402_))
                                                        (if (gx#stx-null?
                                                             _tl9336193404_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test93387_)
                                    (cons (gx#core-compile-top-syntax _K93397_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E93407_)
                                                '()))))
                        (_E9334993367_))
                    (_E9334993367_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9334993367_)))))
                                        (_E9334993367_)))))
                              (_E9334993367_))))
                      (_E9334993367_)))))
          (_E9334893409_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx93305_)
        (let* ((_e9330693316_ _stx93305_)
               (_E9330893320_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9330693316_)))
               (_E9330793342_
                (lambda ()
                  (if (gx#stx-pair? _e9330693316_)
                      (let ((_e9330993324_ (gx#syntax-e _e9330693316_)))
                        (let ((_hd9331093327_ (##car _e9330993324_))
                              (_tl9331193329_ (##cdr _e9330993324_)))
                          (if (gx#stx-pair? _tl9331193329_)
                              (let ((_e9331293332_
                                     (gx#syntax-e _tl9331193329_)))
                                (let ((_hd9331393335_ (##car _e9331293332_))
                                      (_tl9331493337_ (##cdr _e9331293332_)))
                                  (let ((_id93340_ _hd9331393335_))
                                    (if (gx#stx-null? _tl9331493337_)
                                        (if (gx#identifier? _id93340_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id93340_)
                                                        '()))
                                            (_E9330893320_))
                                        (_E9330893320_)))))
                              (_E9330893320_))))
                      (_E9330893320_)))))
          (_E9330793342_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx93251_)
        (let* ((_e9325293265_ _stx93251_)
               (_E9325493269_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9325293265_)))
               (_E9325393301_
                (lambda ()
                  (if (gx#stx-pair? _e9325293265_)
                      (let ((_e9325593273_ (gx#syntax-e _e9325293265_)))
                        (let ((_hd9325693276_ (##car _e9325593273_))
                              (_tl9325793278_ (##cdr _e9325593273_)))
                          (if (gx#stx-pair? _tl9325793278_)
                              (let ((_e9325893281_
                                     (gx#syntax-e _tl9325793278_)))
                                (let ((_hd9325993284_ (##car _e9325893281_))
                                      (_tl9326093286_ (##cdr _e9325893281_)))
                                  (let ((_id93289_ _hd9325993284_))
                                    (if (gx#stx-pair? _tl9326093286_)
                                        (let ((_e9326193291_
                                               (gx#syntax-e _tl9326093286_)))
                                          (let ((_hd9326293294_
                                                 (##car _e9326193291_))
                                                (_tl9326393296_
                                                 (##cdr _e9326193291_)))
                                            (let ((_expr93299_ _hd9326293294_))
                                              (if (gx#stx-null? _tl9326393296_)
                                                  (if (gx#identifier?
                                                       _id93289_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id93289_)
                          (cons (gx#core-compile-top-syntax _expr93299_) '())))
              (_E9325493269_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9325493269_)))))
                                        (_E9325493269_)))))
                              (_E9325493269_))))
                      (_E9325493269_)))))
          (_E9325393301_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id93246_)
        (let ((_$e93248_ (gx#resolve-identifier__0 _id93246_)))
          (if _$e93248_
              (##unchecked-structure-ref _$e93248_ '1 gx#binding::t '#f)
              _id93246_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd93244_)
        (if (gx#identifier? _hd93244_)
            (gx#core-compile-top-runtime-ref _hd93244_)
            '#f)))))
