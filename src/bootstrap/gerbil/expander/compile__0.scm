(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1709125255)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx94847_)
        (let* ((_e9484894855_ _stx94847_)
               (_E9485094859_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9484894855_)))
               (_E9484994873_
                (lambda ()
                  (if (gx#stx-pair? _e9484894855_)
                      (let ((_e9485194863_ (gx#syntax-e _e9484894855_)))
                        (let ((_hd9485294866_ (##car _e9485194863_))
                              (_tl9485394868_ (##cdr _e9485194863_)))
                          (let ((_form94871_ _hd9485294866_))
                            (if '#t
                                (let* ((__self94876
                                        (gx#syntax-local-e__0 _form94871_))
                                       (__method94877
                                        (method-ref
                                         __self94876
                                         'compile-top-syntax)))
                                  (if __method94877
                                      (__method94877 __self94876 _stx94847_)
                                      (error '"Missing method"
                                             __self94876
                                             'compile-top-syntax)))
                                (_E9485094859_)))))
                      (_E9485094859_)))))
          (_E9484994873_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self94807_ _stx94808_)
        (let* ((_self9480994817_ _self94807_)
               (_E9481194821_
                (lambda () (error '"No clause matching" _self9480994817_)))
               (_K9481294833_
                (lambda (_K94824_)
                  (let ((_$e94826_ (gx#stx-source _stx94808_)))
                    (if _$e94826_
                        ((lambda (_g9482894830_)
                           (gx#stx-wrap-source
                            (_K94824_ _stx94808_)
                            _g9482894830_))
                         _$e94826_)
                        (_K94824_ _stx94808_))))))
          (if (##structure-instance-of? _self9480994817_ 'gx#core-expander::t)
              (let* ((_e9481394836_
                      (##unchecked-structure-ref
                       _self9480994817_
                       '1
                       gx#expander::t
                       '#f))
                     (_e9481494839_
                      (##unchecked-structure-ref
                       _self9480994817_
                       '2
                       gx#core-expander::t
                       '#f))
                     (_e9481594842_
                      (##unchecked-structure-ref
                       _self9480994817_
                       '3
                       gx#core-expander::t
                       '#f))
                     (_K94845_ _e9481594842_))
                (_K9481294833_ _K94845_))
              (_E9481194821_)))))
    (bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx94681_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx94681_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx94651_)
        (let* ((_e9465294659_ _stx94651_)
               (_E9465494663_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9465294659_)))
               (_E9465394677_
                (lambda ()
                  (if (gx#stx-pair? _e9465294659_)
                      (let ((_e9465594667_ (gx#syntax-e _e9465294659_)))
                        (let ((_hd9465694670_ (##car _e9465594667_))
                              (_tl9465794672_ (##cdr _e9465594667_)))
                          (let ((_body94675_ _tl9465794672_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body94675_))
                                (_E9465494663_)))))
                      (_E9465494663_)))))
          (_E9465394677_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx94620_)
        (let* ((_e9462194628_ _stx94620_)
               (_E9462394632_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9462194628_)))
               (_E9462294647_
                (lambda ()
                  (if (gx#stx-pair? _e9462194628_)
                      (let ((_e9462494636_ (gx#syntax-e _e9462194628_)))
                        (let ((_hd9462594639_ (##car _e9462494636_))
                              (_tl9462694641_ (##cdr _e9462494636_)))
                          (let ((_body94644_ _tl9462694641_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body94644_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E9462394632_)))))
                      (_E9462394632_)))))
          (_E9462294647_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_stx94590_)
        (let* ((_e9459194598_ _stx94590_)
               (_E9459394602_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9459194598_)))
               (_E9459294616_
                (lambda ()
                  (if (gx#stx-pair? _e9459194598_)
                      (let ((_e9459494606_ (gx#syntax-e _e9459194598_)))
                        (let ((_hd9459594609_ (##car _e9459494606_))
                              (_tl9459694611_ (##cdr _e9459494606_)))
                          (let ((_body94614_ _tl9459694611_))
                            (if '#t
                                (cons '%#begin-foreign _body94614_)
                                (_E9459394602_)))))
                      (_E9459394602_)))))
          (_E9459294616_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_stx94536_)
        (let* ((_e9453794550_ _stx94536_)
               (_E9453994554_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9453794550_)))
               (_E9453894586_
                (lambda ()
                  (if (gx#stx-pair? _e9453794550_)
                      (let ((_e9454094558_ (gx#syntax-e _e9453794550_)))
                        (let ((_hd9454194561_ (##car _e9454094558_))
                              (_tl9454294563_ (##cdr _e9454094558_)))
                          (if (gx#stx-pair? _tl9454294563_)
                              (let ((_e9454394566_
                                     (gx#syntax-e _tl9454294563_)))
                                (let ((_hd9454494569_ (##car _e9454394566_))
                                      (_tl9454594571_ (##cdr _e9454394566_)))
                                  (let ((_ann94574_ _hd9454494569_))
                                    (if (gx#stx-pair? _tl9454594571_)
                                        (let ((_e9454694576_
                                               (gx#syntax-e _tl9454594571_)))
                                          (let ((_hd9454794579_
                                                 (##car _e9454694576_))
                                                (_tl9454894581_
                                                 (##cdr _e9454694576_)))
                                            (let ((_expr94584_ _hd9454794579_))
                                              (if (gx#stx-null? _tl9454894581_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr94584_)
                                                      (_E9453994554_))
                                                  (_E9453994554_)))))
                                        (_E9453994554_)))))
                              (_E9453994554_))))
                      (_E9453994554_)))))
          (_E9453894586_))))
    (define gx#core-compile-top-import%
      (lambda (_stx94506_)
        (let* ((_e9450794514_ _stx94506_)
               (_E9450994518_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9450794514_)))
               (_E9450894532_
                (lambda ()
                  (if (gx#stx-pair? _e9450794514_)
                      (let ((_e9451094522_ (gx#syntax-e _e9450794514_)))
                        (let ((_hd9451194525_ (##car _e9451094522_))
                              (_tl9451294527_ (##cdr _e9451094522_)))
                          (let ((_body94530_ _tl9451294527_))
                            (if '#t
                                (cons '%#import _body94530_)
                                (_E9450994518_)))))
                      (_E9450994518_)))))
          (_E9450894532_))))
    (define gx#core-compile-top-module%
      (lambda (_stx94463_)
        (let* ((_e9446494474_ _stx94463_)
               (_E9446694478_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9446494474_)))
               (_E9446594502_
                (lambda ()
                  (if (gx#stx-pair? _e9446494474_)
                      (let ((_e9446794482_ (gx#syntax-e _e9446494474_)))
                        (let ((_hd9446894485_ (##car _e9446794482_))
                              (_tl9446994487_ (##cdr _e9446794482_)))
                          (if (gx#stx-pair? _tl9446994487_)
                              (let ((_e9447094490_
                                     (gx#syntax-e _tl9446994487_)))
                                (let ((_hd9447194493_ (##car _e9447094490_))
                                      (_tl9447294495_ (##cdr _e9447094490_)))
                                  (let* ((_hd94498_ _hd9447194493_)
                                         (_body94500_ _tl9447294495_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _hd94498_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body94500_)))
                                        (_E9446694478_)))))
                              (_E9446694478_))))
                      (_E9446694478_)))))
          (_E9446594502_))))
    (define gx#core-compile-top-export%
      (lambda (_stx94433_)
        (let* ((_e9443494441_ _stx94433_)
               (_E9443694445_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9443494441_)))
               (_E9443594459_
                (lambda ()
                  (if (gx#stx-pair? _e9443494441_)
                      (let ((_e9443794449_ (gx#syntax-e _e9443494441_)))
                        (let ((_hd9443894452_ (##car _e9443794449_))
                              (_tl9443994454_ (##cdr _e9443794449_)))
                          (let ((_body94457_ _tl9443994454_))
                            (if '#t
                                (cons '%#export _body94457_)
                                (_E9443694445_)))))
                      (_E9443694445_)))))
          (_E9443594459_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx94403_)
        (let* ((_e9440494411_ _stx94403_)
               (_E9440694415_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9440494411_)))
               (_E9440594429_
                (lambda ()
                  (if (gx#stx-pair? _e9440494411_)
                      (let ((_e9440794419_ (gx#syntax-e _e9440494411_)))
                        (let ((_hd9440894422_ (##car _e9440794419_))
                              (_tl9440994424_ (##cdr _e9440794419_)))
                          (let ((_body94427_ _tl9440994424_))
                            (if '#t
                                (cons '%#provide _body94427_)
                                (_E9440694415_)))))
                      (_E9440694415_)))))
          (_E9440594429_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx94373_)
        (let* ((_e9437494381_ _stx94373_)
               (_E9437694385_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9437494381_)))
               (_E9437594399_
                (lambda ()
                  (if (gx#stx-pair? _e9437494381_)
                      (let ((_e9437794389_ (gx#syntax-e _e9437494381_)))
                        (let ((_hd9437894392_ (##car _e9437794389_))
                              (_tl9437994394_ (##cdr _e9437794389_)))
                          (let ((_body94397_ _tl9437994394_))
                            (if '#t
                                (cons '%#extern _body94397_)
                                (_E9437694385_)))))
                      (_E9437694385_)))))
          (_E9437594399_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx94319_)
        (let* ((_e9432094333_ _stx94319_)
               (_E9432294337_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9432094333_)))
               (_E9432194369_
                (lambda ()
                  (if (gx#stx-pair? _e9432094333_)
                      (let ((_e9432394341_ (gx#syntax-e _e9432094333_)))
                        (let ((_hd9432494344_ (##car _e9432394341_))
                              (_tl9432594346_ (##cdr _e9432394341_)))
                          (if (gx#stx-pair? _tl9432594346_)
                              (let ((_e9432694349_
                                     (gx#syntax-e _tl9432594346_)))
                                (let ((_hd9432794352_ (##car _e9432694349_))
                                      (_tl9432894354_ (##cdr _e9432694349_)))
                                  (let ((_hd94357_ _hd9432794352_))
                                    (if (gx#stx-pair? _tl9432894354_)
                                        (let ((_e9432994359_
                                               (gx#syntax-e _tl9432894354_)))
                                          (let ((_hd9433094362_
                                                 (##car _e9432994359_))
                                                (_tl9433194364_
                                                 (##cdr _e9432994359_)))
                                            (let ((_expr94367_ _hd9433094362_))
                                              (if (gx#stx-null? _tl9433194364_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd94357_)
                          (cons (gx#core-compile-top-syntax _expr94367_) '())))
              (_E9432294337_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9432294337_)))))
                                        (_E9432294337_)))))
                              (_E9432294337_))))
                      (_E9432294337_)))))
          (_E9432194369_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx94264_)
        (let* ((_e9426594278_ _stx94264_)
               (_E9426794282_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9426594278_)))
               (_E9426694315_
                (lambda ()
                  (if (gx#stx-pair? _e9426594278_)
                      (let ((_e9426894286_ (gx#syntax-e _e9426594278_)))
                        (let ((_hd9426994289_ (##car _e9426894286_))
                              (_tl9427094291_ (##cdr _e9426894286_)))
                          (if (gx#stx-pair? _tl9427094291_)
                              (let ((_e9427194294_
                                     (gx#syntax-e _tl9427094291_)))
                                (let ((_hd9427294297_ (##car _e9427194294_))
                                      (_tl9427394299_ (##cdr _e9427194294_)))
                                  (let ((_hd94302_ _hd9427294297_))
                                    (if (gx#stx-pair? _tl9427394299_)
                                        (let ((_e9427494304_
                                               (gx#syntax-e _tl9427394299_)))
                                          (let ((_hd9427594307_
                                                 (##car _e9427494304_))
                                                (_tl9427694309_
                                                 (##cdr _e9427494304_)))
                                            (let ((_expr94312_ _hd9427594307_))
                                              (if (gx#stx-null? _tl9427694309_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd94302_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr94312_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E9426794282_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9426794282_)))))
                                        (_E9426794282_)))))
                              (_E9426794282_))))
                      (_E9426794282_)))))
          (_E9426694315_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx94234_)
        (let* ((_e9423594242_ _stx94234_)
               (_E9423794246_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9423594242_)))
               (_E9423694260_
                (lambda ()
                  (if (gx#stx-pair? _e9423594242_)
                      (let ((_e9423894250_ (gx#syntax-e _e9423594242_)))
                        (let ((_hd9423994253_ (##car _e9423894250_))
                              (_tl9424094255_ (##cdr _e9423894250_)))
                          (let ((_body94258_ _tl9424094255_))
                            (if '#t
                                (cons '%#define-alias _body94258_)
                                (_E9423794246_)))))
                      (_E9423794246_)))))
          (_E9423694260_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx94204_)
        (let* ((_e9420594212_ _stx94204_)
               (_E9420794216_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9420594212_)))
               (_E9420694230_
                (lambda ()
                  (if (gx#stx-pair? _e9420594212_)
                      (let ((_e9420894220_ (gx#syntax-e _e9420594212_)))
                        (let ((_hd9420994223_ (##car _e9420894220_))
                              (_tl9421094225_ (##cdr _e9420894220_)))
                          (let ((_body94228_ _tl9421094225_))
                            (if '#t
                                (cons '%#define-runtime _body94228_)
                                (_E9420794216_)))))
                      (_E9420794216_)))))
          (_E9420694230_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx94174_)
        (let* ((_e9417594182_ _stx94174_)
               (_E9417794186_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9417594182_)))
               (_E9417694200_
                (lambda ()
                  (if (gx#stx-pair? _e9417594182_)
                      (let ((_e9417894190_ (gx#syntax-e _e9417594182_)))
                        (let ((_hd9417994193_ (##car _e9417894190_))
                              (_tl9418094195_ (##cdr _e9417894190_)))
                          (let ((_decls94198_ _tl9418094195_))
                            (if '#t
                                (cons '%#declare _decls94198_)
                                (_E9417794186_)))))
                      (_E9417794186_)))))
          (_E9417694200_))))
    (define gx#core-compile-top-lambda%
      (lambda (_stx94144_)
        (let* ((_e9414594152_ _stx94144_)
               (_E9414794156_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9414594152_)))
               (_E9414694170_
                (lambda ()
                  (if (gx#stx-pair? _e9414594152_)
                      (let ((_e9414894160_ (gx#syntax-e _e9414594152_)))
                        (let ((_hd9414994163_ (##car _e9414894160_))
                              (_tl9415094165_ (##cdr _e9414894160_)))
                          (let ((_clause94168_ _tl9415094165_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause94168_))
                                (_E9414794156_)))))
                      (_E9414794156_)))))
          (_E9414694170_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx94101_)
        (let* ((_e9410294112_ _stx94101_)
               (_E9410494116_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9410294112_)))
               (_E9410394140_
                (lambda ()
                  (if (gx#stx-pair? _e9410294112_)
                      (let ((_e9410594120_ (gx#syntax-e _e9410294112_)))
                        (let ((_hd9410694123_ (##car _e9410594120_))
                              (_tl9410794125_ (##cdr _e9410594120_)))
                          (let ((_hd94128_ _hd9410694123_))
                            (if (gx#stx-pair? _tl9410794125_)
                                (let ((_e9410894130_
                                       (gx#syntax-e _tl9410794125_)))
                                  (let ((_hd9410994133_ (##car _e9410894130_))
                                        (_tl9411094135_ (##cdr _e9410894130_)))
                                    (let ((_body94138_ _hd9410994133_))
                                      (if (gx#stx-null? _tl9411094135_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd94128_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body94138_)
                                                          '()))
                                              (_E9410494116_))
                                          (_E9410494116_)))))
                                (_E9410494116_)))))
                      (_E9410494116_)))))
          (_E9410394140_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx94071_)
        (let* ((_e9407294079_ _stx94071_)
               (_E9407494083_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9407294079_)))
               (_E9407394097_
                (lambda ()
                  (if (gx#stx-pair? _e9407294079_)
                      (let ((_e9407594087_ (gx#syntax-e _e9407294079_)))
                        (let ((_hd9407694090_ (##car _e9407594087_))
                              (_tl9407794092_ (##cdr _e9407594087_)))
                          (let ((_clauses94095_ _tl9407794092_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses94095_))
                                (_E9407494083_)))))
                      (_E9407494083_)))))
          (_E9407394097_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx94006_ _form94007_)
        (let* ((_e9400894021_ _stx94006_)
               (_E9401094025_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9400894021_)))
               (_E9400994057_
                (lambda ()
                  (if (gx#stx-pair? _e9400894021_)
                      (let ((_e9401194029_ (gx#syntax-e _e9400894021_)))
                        (let ((_hd9401294032_ (##car _e9401194029_))
                              (_tl9401394034_ (##cdr _e9401194029_)))
                          (if (gx#stx-pair? _tl9401394034_)
                              (let ((_e9401494037_
                                     (gx#syntax-e _tl9401394034_)))
                                (let ((_hd9401594040_ (##car _e9401494037_))
                                      (_tl9401694042_ (##cdr _e9401494037_)))
                                  (let ((_hd94045_ _hd9401594040_))
                                    (if (gx#stx-pair? _tl9401694042_)
                                        (let ((_e9401794047_
                                               (gx#syntax-e _tl9401694042_)))
                                          (let ((_hd9401894050_
                                                 (##car _e9401794047_))
                                                (_tl9401994052_
                                                 (##cdr _e9401794047_)))
                                            (let ((_body94055_ _hd9401894050_))
                                              (if (gx#stx-null? _tl9401994052_)
                                                  (if '#t
                                                      (cons _form94007_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd94045_)
                          (cons (gx#core-compile-top-syntax _body94055_) '())))
              (_E9401094025_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9401094025_)))))
                                        (_E9401094025_)))))
                              (_E9401094025_))))
                      (_E9401094025_)))))
          (_E9400994057_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx94064_)
        (let ((_form94066_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx94064_ _form94066_))))
    (define gx#core-compile-top-let-values%
      (lambda _g94879_
        (let ((_g94878_ (##length _g94879_)))
          (cond ((##fx= _g94878_ 1)
                 (apply (lambda (_stx94064_)
                          (gx#core-compile-top-let-values%__0 _stx94064_))
                        _g94879_))
                ((##fx= _g94878_ 2)
                 (apply (lambda (_stx94068_ _form94069_)
                          (gx#core-compile-top-let-values%__%
                           _stx94068_
                           _form94069_))
                        _g94879_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g94879_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx94003_)
        (gx#core-compile-top-let-values%__% _stx94003_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx94001_)
        (gx#core-compile-top-let-values%__% _stx94001_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx93960_)
        (let* ((_e9396193971_ _stx93960_)
               (_E9396393975_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9396193971_)))
               (_E9396293997_
                (lambda ()
                  (if (gx#stx-pair? _e9396193971_)
                      (let ((_e9396493979_ (gx#syntax-e _e9396193971_)))
                        (let ((_hd9396593982_ (##car _e9396493979_))
                              (_tl9396693984_ (##cdr _e9396493979_)))
                          (if (gx#stx-pair? _tl9396693984_)
                              (let ((_e9396793987_
                                     (gx#syntax-e _tl9396693984_)))
                                (let ((_hd9396893990_ (##car _e9396793987_))
                                      (_tl9396993992_ (##cdr _e9396793987_)))
                                  (let ((_e93995_ _hd9396893990_))
                                    (if (gx#stx-null? _tl9396993992_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e93995_)
                                                        '()))
                                            (_E9396393975_))
                                        (_E9396393975_)))))
                              (_E9396393975_))))
                      (_E9396393975_)))))
          (_E9396293997_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx93919_)
        (let* ((_e9392093930_ _stx93919_)
               (_E9392293934_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9392093930_)))
               (_E9392193956_
                (lambda ()
                  (if (gx#stx-pair? _e9392093930_)
                      (let ((_e9392393938_ (gx#syntax-e _e9392093930_)))
                        (let ((_hd9392493941_ (##car _e9392393938_))
                              (_tl9392593943_ (##cdr _e9392393938_)))
                          (if (gx#stx-pair? _tl9392593943_)
                              (let ((_e9392693946_
                                     (gx#syntax-e _tl9392593943_)))
                                (let ((_hd9392793949_ (##car _e9392693946_))
                                      (_tl9392893951_ (##cdr _e9392693946_)))
                                  (let ((_e93954_ _hd9392793949_))
                                    (if (gx#stx-null? _tl9392893951_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e93954_)
                                                        '()))
                                            (_E9392293934_))
                                        (_E9392293934_)))))
                              (_E9392293934_))))
                      (_E9392293934_)))))
          (_E9392193956_))))
    (define gx#core-compile-top-call%
      (lambda (_stx93876_)
        (let* ((_e9387793887_ _stx93876_)
               (_E9387993891_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9387793887_)))
               (_E9387893915_
                (lambda ()
                  (if (gx#stx-pair? _e9387793887_)
                      (let ((_e9388093895_ (gx#syntax-e _e9387793887_)))
                        (let ((_hd9388193898_ (##car _e9388093895_))
                              (_tl9388293900_ (##cdr _e9388093895_)))
                          (if (gx#stx-pair? _tl9388293900_)
                              (let ((_e9388393903_
                                     (gx#syntax-e _tl9388293900_)))
                                (let ((_hd9388493906_ (##car _e9388393903_))
                                      (_tl9388593908_ (##cdr _e9388393903_)))
                                  (let* ((_rator93911_ _hd9388493906_)
                                         (_args93913_ _tl9388593908_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator93911_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args93913_)))
                                        (_E9387993891_)))))
                              (_E9387993891_))))
                      (_E9387993891_)))))
          (_E9387893915_))))
    (define gx#core-compile-top-if%
      (lambda (_stx93809_)
        (let* ((_e9381093826_ _stx93809_)
               (_E9381293830_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9381093826_)))
               (_E9381193872_
                (lambda ()
                  (if (gx#stx-pair? _e9381093826_)
                      (let ((_e9381393834_ (gx#syntax-e _e9381093826_)))
                        (let ((_hd9381493837_ (##car _e9381393834_))
                              (_tl9381593839_ (##cdr _e9381393834_)))
                          (if (gx#stx-pair? _tl9381593839_)
                              (let ((_e9381693842_
                                     (gx#syntax-e _tl9381593839_)))
                                (let ((_hd9381793845_ (##car _e9381693842_))
                                      (_tl9381893847_ (##cdr _e9381693842_)))
                                  (let ((_test93850_ _hd9381793845_))
                                    (if (gx#stx-pair? _tl9381893847_)
                                        (let ((_e9381993852_
                                               (gx#syntax-e _tl9381893847_)))
                                          (let ((_hd9382093855_
                                                 (##car _e9381993852_))
                                                (_tl9382193857_
                                                 (##cdr _e9381993852_)))
                                            (let ((_K93860_ _hd9382093855_))
                                              (if (gx#stx-pair? _tl9382193857_)
                                                  (let ((_e9382293862_
                                                         (gx#syntax-e
                                                          _tl9382193857_)))
                                                    (let ((_hd9382393865_
                                                           (##car _e9382293862_))
                                                          (_tl9382493867_
                                                           (##cdr _e9382293862_)))
                                                      (let ((_E93870_
                                                             _hd9382393865_))
                                                        (if (gx#stx-null?
                                                             _tl9382493867_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test93850_)
                                    (cons (gx#core-compile-top-syntax _K93860_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E93870_)
                                                '()))))
                        (_E9381293830_))
                    (_E9381293830_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9381293830_)))))
                                        (_E9381293830_)))))
                              (_E9381293830_))))
                      (_E9381293830_)))))
          (_E9381193872_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx93768_)
        (let* ((_e9376993779_ _stx93768_)
               (_E9377193783_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9376993779_)))
               (_E9377093805_
                (lambda ()
                  (if (gx#stx-pair? _e9376993779_)
                      (let ((_e9377293787_ (gx#syntax-e _e9376993779_)))
                        (let ((_hd9377393790_ (##car _e9377293787_))
                              (_tl9377493792_ (##cdr _e9377293787_)))
                          (if (gx#stx-pair? _tl9377493792_)
                              (let ((_e9377593795_
                                     (gx#syntax-e _tl9377493792_)))
                                (let ((_hd9377693798_ (##car _e9377593795_))
                                      (_tl9377793800_ (##cdr _e9377593795_)))
                                  (let ((_id93803_ _hd9377693798_))
                                    (if (gx#stx-null? _tl9377793800_)
                                        (if (gx#identifier? _id93803_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id93803_)
                                                        '()))
                                            (_E9377193783_))
                                        (_E9377193783_)))))
                              (_E9377193783_))))
                      (_E9377193783_)))))
          (_E9377093805_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx93714_)
        (let* ((_e9371593728_ _stx93714_)
               (_E9371793732_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9371593728_)))
               (_E9371693764_
                (lambda ()
                  (if (gx#stx-pair? _e9371593728_)
                      (let ((_e9371893736_ (gx#syntax-e _e9371593728_)))
                        (let ((_hd9371993739_ (##car _e9371893736_))
                              (_tl9372093741_ (##cdr _e9371893736_)))
                          (if (gx#stx-pair? _tl9372093741_)
                              (let ((_e9372193744_
                                     (gx#syntax-e _tl9372093741_)))
                                (let ((_hd9372293747_ (##car _e9372193744_))
                                      (_tl9372393749_ (##cdr _e9372193744_)))
                                  (let ((_id93752_ _hd9372293747_))
                                    (if (gx#stx-pair? _tl9372393749_)
                                        (let ((_e9372493754_
                                               (gx#syntax-e _tl9372393749_)))
                                          (let ((_hd9372593757_
                                                 (##car _e9372493754_))
                                                (_tl9372693759_
                                                 (##cdr _e9372493754_)))
                                            (let ((_expr93762_ _hd9372593757_))
                                              (if (gx#stx-null? _tl9372693759_)
                                                  (if (gx#identifier?
                                                       _id93752_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id93752_)
                          (cons (gx#core-compile-top-syntax _expr93762_) '())))
              (_E9371793732_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9371793732_)))))
                                        (_E9371793732_)))))
                              (_E9371793732_))))
                      (_E9371793732_)))))
          (_E9371693764_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id93709_)
        (let ((_$e93711_ (gx#resolve-identifier__0 _id93709_)))
          (if _$e93711_
              (##unchecked-structure-ref _$e93711_ '1 gx#binding::t '#f)
              _id93709_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd93707_)
        (if (gx#identifier? _hd93707_)
            (gx#core-compile-top-runtime-ref _hd93707_)
            '#f)))))
