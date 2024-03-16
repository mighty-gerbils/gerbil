(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1710617602)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx93194_)
        (let* ((_e9319593202_ _stx93194_)
               (_E9319793206_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9319593202_)))
               (_E9319693220_
                (lambda ()
                  (if (gx#stx-pair? _e9319593202_)
                      (let ((_e9319893210_ (gx#syntax-e _e9319593202_)))
                        (let ((_hd9319993213_ (##car _e9319893210_))
                              (_tl9320093215_ (##cdr _e9319893210_)))
                          (let ((_form93218_ _hd9319993213_))
                            (if '#t
                                (let* ((__self93223
                                        (gx#syntax-local-e__0 _form93218_))
                                       (__method93224
                                        (method-ref
                                         __self93223
                                         'compile-top-syntax)))
                                  (if __method93224
                                      (__method93224 __self93223 _stx93194_)
                                      (error '"Missing method"
                                             __self93223
                                             'compile-top-syntax)))
                                (_E9319793206_)))))
                      (_E9319793206_)))))
          (_E9319693220_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self93154_ _stx93155_)
        (let* ((_self9315693164_ _self93154_)
               (_E9315893168_
                (lambda () (error '"No clause matching" _self9315693164_)))
               (_K9315993180_
                (lambda (_K93171_)
                  (let ((_$e93173_ (gx#stx-source _stx93155_)))
                    (if _$e93173_
                        ((lambda (_g9317593177_)
                           (gx#stx-wrap-source
                            (_K93171_ _stx93155_)
                            _g9317593177_))
                         _$e93173_)
                        (_K93171_ _stx93155_))))))
          (if (##structure-instance-of? _self9315693164_ 'gx#core-expander::t)
              (let* ((_e9316093183_
                      (##unchecked-structure-ref
                       _self9315693164_
                       '1
                       gx#expander::t
                       '#f))
                     (_e9316193186_
                      (##unchecked-structure-ref
                       _self9315693164_
                       '2
                       gx#core-expander::t
                       '#f))
                     (_e9316293189_
                      (##unchecked-structure-ref
                       _self9315693164_
                       '3
                       gx#core-expander::t
                       '#f))
                     (_K93192_ _e9316293189_))
                (_K9315993180_ _K93192_))
              (_E9315893168_)))))
    (bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx93028_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx93028_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx92998_)
        (let* ((_e9299993006_ _stx92998_)
               (_E9300193010_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9299993006_)))
               (_E9300093024_
                (lambda ()
                  (if (gx#stx-pair? _e9299993006_)
                      (let ((_e9300293014_ (gx#syntax-e _e9299993006_)))
                        (let ((_hd9300393017_ (##car _e9300293014_))
                              (_tl9300493019_ (##cdr _e9300293014_)))
                          (let ((_body93022_ _tl9300493019_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body93022_))
                                (_E9300193010_)))))
                      (_E9300193010_)))))
          (_E9300093024_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx92967_)
        (let* ((_e9296892975_ _stx92967_)
               (_E9297092979_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9296892975_)))
               (_E9296992994_
                (lambda ()
                  (if (gx#stx-pair? _e9296892975_)
                      (let ((_e9297192983_ (gx#syntax-e _e9296892975_)))
                        (let ((_hd9297292986_ (##car _e9297192983_))
                              (_tl9297392988_ (##cdr _e9297192983_)))
                          (let ((_body92991_ _tl9297392988_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body92991_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E9297092979_)))))
                      (_E9297092979_)))))
          (_E9296992994_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_stx92937_)
        (let* ((_e9293892945_ _stx92937_)
               (_E9294092949_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9293892945_)))
               (_E9293992963_
                (lambda ()
                  (if (gx#stx-pair? _e9293892945_)
                      (let ((_e9294192953_ (gx#syntax-e _e9293892945_)))
                        (let ((_hd9294292956_ (##car _e9294192953_))
                              (_tl9294392958_ (##cdr _e9294192953_)))
                          (let ((_body92961_ _tl9294392958_))
                            (if '#t
                                (cons '%#begin-foreign _body92961_)
                                (_E9294092949_)))))
                      (_E9294092949_)))))
          (_E9293992963_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_stx92883_)
        (let* ((_e9288492897_ _stx92883_)
               (_E9288692901_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9288492897_)))
               (_E9288592933_
                (lambda ()
                  (if (gx#stx-pair? _e9288492897_)
                      (let ((_e9288792905_ (gx#syntax-e _e9288492897_)))
                        (let ((_hd9288892908_ (##car _e9288792905_))
                              (_tl9288992910_ (##cdr _e9288792905_)))
                          (if (gx#stx-pair? _tl9288992910_)
                              (let ((_e9289092913_
                                     (gx#syntax-e _tl9288992910_)))
                                (let ((_hd9289192916_ (##car _e9289092913_))
                                      (_tl9289292918_ (##cdr _e9289092913_)))
                                  (let ((_ann92921_ _hd9289192916_))
                                    (if (gx#stx-pair? _tl9289292918_)
                                        (let ((_e9289392923_
                                               (gx#syntax-e _tl9289292918_)))
                                          (let ((_hd9289492926_
                                                 (##car _e9289392923_))
                                                (_tl9289592928_
                                                 (##cdr _e9289392923_)))
                                            (let ((_expr92931_ _hd9289492926_))
                                              (if (gx#stx-null? _tl9289592928_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr92931_)
                                                      (_E9288692901_))
                                                  (_E9288692901_)))))
                                        (_E9288692901_)))))
                              (_E9288692901_))))
                      (_E9288692901_)))))
          (_E9288592933_))))
    (define gx#core-compile-top-import%
      (lambda (_stx92853_)
        (let* ((_e9285492861_ _stx92853_)
               (_E9285692865_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9285492861_)))
               (_E9285592879_
                (lambda ()
                  (if (gx#stx-pair? _e9285492861_)
                      (let ((_e9285792869_ (gx#syntax-e _e9285492861_)))
                        (let ((_hd9285892872_ (##car _e9285792869_))
                              (_tl9285992874_ (##cdr _e9285792869_)))
                          (let ((_body92877_ _tl9285992874_))
                            (if '#t
                                (cons '%#import _body92877_)
                                (_E9285692865_)))))
                      (_E9285692865_)))))
          (_E9285592879_))))
    (define gx#core-compile-top-module%
      (lambda (_stx92810_)
        (let* ((_e9281192821_ _stx92810_)
               (_E9281392825_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9281192821_)))
               (_E9281292849_
                (lambda ()
                  (if (gx#stx-pair? _e9281192821_)
                      (let ((_e9281492829_ (gx#syntax-e _e9281192821_)))
                        (let ((_hd9281592832_ (##car _e9281492829_))
                              (_tl9281692834_ (##cdr _e9281492829_)))
                          (if (gx#stx-pair? _tl9281692834_)
                              (let ((_e9281792837_
                                     (gx#syntax-e _tl9281692834_)))
                                (let ((_hd9281892840_ (##car _e9281792837_))
                                      (_tl9281992842_ (##cdr _e9281792837_)))
                                  (let* ((_hd92845_ _hd9281892840_)
                                         (_body92847_ _tl9281992842_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _hd92845_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body92847_)))
                                        (_E9281392825_)))))
                              (_E9281392825_))))
                      (_E9281392825_)))))
          (_E9281292849_))))
    (define gx#core-compile-top-export%
      (lambda (_stx92780_)
        (let* ((_e9278192788_ _stx92780_)
               (_E9278392792_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9278192788_)))
               (_E9278292806_
                (lambda ()
                  (if (gx#stx-pair? _e9278192788_)
                      (let ((_e9278492796_ (gx#syntax-e _e9278192788_)))
                        (let ((_hd9278592799_ (##car _e9278492796_))
                              (_tl9278692801_ (##cdr _e9278492796_)))
                          (let ((_body92804_ _tl9278692801_))
                            (if '#t
                                (cons '%#export _body92804_)
                                (_E9278392792_)))))
                      (_E9278392792_)))))
          (_E9278292806_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx92750_)
        (let* ((_e9275192758_ _stx92750_)
               (_E9275392762_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9275192758_)))
               (_E9275292776_
                (lambda ()
                  (if (gx#stx-pair? _e9275192758_)
                      (let ((_e9275492766_ (gx#syntax-e _e9275192758_)))
                        (let ((_hd9275592769_ (##car _e9275492766_))
                              (_tl9275692771_ (##cdr _e9275492766_)))
                          (let ((_body92774_ _tl9275692771_))
                            (if '#t
                                (cons '%#provide _body92774_)
                                (_E9275392762_)))))
                      (_E9275392762_)))))
          (_E9275292776_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx92720_)
        (let* ((_e9272192728_ _stx92720_)
               (_E9272392732_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9272192728_)))
               (_E9272292746_
                (lambda ()
                  (if (gx#stx-pair? _e9272192728_)
                      (let ((_e9272492736_ (gx#syntax-e _e9272192728_)))
                        (let ((_hd9272592739_ (##car _e9272492736_))
                              (_tl9272692741_ (##cdr _e9272492736_)))
                          (let ((_body92744_ _tl9272692741_))
                            (if '#t
                                (cons '%#extern _body92744_)
                                (_E9272392732_)))))
                      (_E9272392732_)))))
          (_E9272292746_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx92666_)
        (let* ((_e9266792680_ _stx92666_)
               (_E9266992684_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9266792680_)))
               (_E9266892716_
                (lambda ()
                  (if (gx#stx-pair? _e9266792680_)
                      (let ((_e9267092688_ (gx#syntax-e _e9266792680_)))
                        (let ((_hd9267192691_ (##car _e9267092688_))
                              (_tl9267292693_ (##cdr _e9267092688_)))
                          (if (gx#stx-pair? _tl9267292693_)
                              (let ((_e9267392696_
                                     (gx#syntax-e _tl9267292693_)))
                                (let ((_hd9267492699_ (##car _e9267392696_))
                                      (_tl9267592701_ (##cdr _e9267392696_)))
                                  (let ((_hd92704_ _hd9267492699_))
                                    (if (gx#stx-pair? _tl9267592701_)
                                        (let ((_e9267692706_
                                               (gx#syntax-e _tl9267592701_)))
                                          (let ((_hd9267792709_
                                                 (##car _e9267692706_))
                                                (_tl9267892711_
                                                 (##cdr _e9267692706_)))
                                            (let ((_expr92714_ _hd9267792709_))
                                              (if (gx#stx-null? _tl9267892711_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd92704_)
                          (cons (gx#core-compile-top-syntax _expr92714_) '())))
              (_E9266992684_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9266992684_)))))
                                        (_E9266992684_)))))
                              (_E9266992684_))))
                      (_E9266992684_)))))
          (_E9266892716_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx92611_)
        (let* ((_e9261292625_ _stx92611_)
               (_E9261492629_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9261292625_)))
               (_E9261392662_
                (lambda ()
                  (if (gx#stx-pair? _e9261292625_)
                      (let ((_e9261592633_ (gx#syntax-e _e9261292625_)))
                        (let ((_hd9261692636_ (##car _e9261592633_))
                              (_tl9261792638_ (##cdr _e9261592633_)))
                          (if (gx#stx-pair? _tl9261792638_)
                              (let ((_e9261892641_
                                     (gx#syntax-e _tl9261792638_)))
                                (let ((_hd9261992644_ (##car _e9261892641_))
                                      (_tl9262092646_ (##cdr _e9261892641_)))
                                  (let ((_hd92649_ _hd9261992644_))
                                    (if (gx#stx-pair? _tl9262092646_)
                                        (let ((_e9262192651_
                                               (gx#syntax-e _tl9262092646_)))
                                          (let ((_hd9262292654_
                                                 (##car _e9262192651_))
                                                (_tl9262392656_
                                                 (##cdr _e9262192651_)))
                                            (let ((_expr92659_ _hd9262292654_))
                                              (if (gx#stx-null? _tl9262392656_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd92649_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr92659_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E9261492629_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9261492629_)))))
                                        (_E9261492629_)))))
                              (_E9261492629_))))
                      (_E9261492629_)))))
          (_E9261392662_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx92581_)
        (let* ((_e9258292589_ _stx92581_)
               (_E9258492593_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9258292589_)))
               (_E9258392607_
                (lambda ()
                  (if (gx#stx-pair? _e9258292589_)
                      (let ((_e9258592597_ (gx#syntax-e _e9258292589_)))
                        (let ((_hd9258692600_ (##car _e9258592597_))
                              (_tl9258792602_ (##cdr _e9258592597_)))
                          (let ((_body92605_ _tl9258792602_))
                            (if '#t
                                (cons '%#define-alias _body92605_)
                                (_E9258492593_)))))
                      (_E9258492593_)))))
          (_E9258392607_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx92551_)
        (let* ((_e9255292559_ _stx92551_)
               (_E9255492563_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9255292559_)))
               (_E9255392577_
                (lambda ()
                  (if (gx#stx-pair? _e9255292559_)
                      (let ((_e9255592567_ (gx#syntax-e _e9255292559_)))
                        (let ((_hd9255692570_ (##car _e9255592567_))
                              (_tl9255792572_ (##cdr _e9255592567_)))
                          (let ((_body92575_ _tl9255792572_))
                            (if '#t
                                (cons '%#define-runtime _body92575_)
                                (_E9255492563_)))))
                      (_E9255492563_)))))
          (_E9255392577_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx92521_)
        (let* ((_e9252292529_ _stx92521_)
               (_E9252492533_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9252292529_)))
               (_E9252392547_
                (lambda ()
                  (if (gx#stx-pair? _e9252292529_)
                      (let ((_e9252592537_ (gx#syntax-e _e9252292529_)))
                        (let ((_hd9252692540_ (##car _e9252592537_))
                              (_tl9252792542_ (##cdr _e9252592537_)))
                          (let ((_decls92545_ _tl9252792542_))
                            (if '#t
                                (cons '%#declare _decls92545_)
                                (_E9252492533_)))))
                      (_E9252492533_)))))
          (_E9252392547_))))
    (define gx#core-compile-top-lambda%
      (lambda (_stx92491_)
        (let* ((_e9249292499_ _stx92491_)
               (_E9249492503_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9249292499_)))
               (_E9249392517_
                (lambda ()
                  (if (gx#stx-pair? _e9249292499_)
                      (let ((_e9249592507_ (gx#syntax-e _e9249292499_)))
                        (let ((_hd9249692510_ (##car _e9249592507_))
                              (_tl9249792512_ (##cdr _e9249592507_)))
                          (let ((_clause92515_ _tl9249792512_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause92515_))
                                (_E9249492503_)))))
                      (_E9249492503_)))))
          (_E9249392517_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx92448_)
        (let* ((_e9244992459_ _stx92448_)
               (_E9245192463_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9244992459_)))
               (_E9245092487_
                (lambda ()
                  (if (gx#stx-pair? _e9244992459_)
                      (let ((_e9245292467_ (gx#syntax-e _e9244992459_)))
                        (let ((_hd9245392470_ (##car _e9245292467_))
                              (_tl9245492472_ (##cdr _e9245292467_)))
                          (let ((_hd92475_ _hd9245392470_))
                            (if (gx#stx-pair? _tl9245492472_)
                                (let ((_e9245592477_
                                       (gx#syntax-e _tl9245492472_)))
                                  (let ((_hd9245692480_ (##car _e9245592477_))
                                        (_tl9245792482_ (##cdr _e9245592477_)))
                                    (let ((_body92485_ _hd9245692480_))
                                      (if (gx#stx-null? _tl9245792482_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd92475_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body92485_)
                                                          '()))
                                              (_E9245192463_))
                                          (_E9245192463_)))))
                                (_E9245192463_)))))
                      (_E9245192463_)))))
          (_E9245092487_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx92418_)
        (let* ((_e9241992426_ _stx92418_)
               (_E9242192430_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9241992426_)))
               (_E9242092444_
                (lambda ()
                  (if (gx#stx-pair? _e9241992426_)
                      (let ((_e9242292434_ (gx#syntax-e _e9241992426_)))
                        (let ((_hd9242392437_ (##car _e9242292434_))
                              (_tl9242492439_ (##cdr _e9242292434_)))
                          (let ((_clauses92442_ _tl9242492439_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses92442_))
                                (_E9242192430_)))))
                      (_E9242192430_)))))
          (_E9242092444_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx92353_ _form92354_)
        (let* ((_e9235592368_ _stx92353_)
               (_E9235792372_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9235592368_)))
               (_E9235692404_
                (lambda ()
                  (if (gx#stx-pair? _e9235592368_)
                      (let ((_e9235892376_ (gx#syntax-e _e9235592368_)))
                        (let ((_hd9235992379_ (##car _e9235892376_))
                              (_tl9236092381_ (##cdr _e9235892376_)))
                          (if (gx#stx-pair? _tl9236092381_)
                              (let ((_e9236192384_
                                     (gx#syntax-e _tl9236092381_)))
                                (let ((_hd9236292387_ (##car _e9236192384_))
                                      (_tl9236392389_ (##cdr _e9236192384_)))
                                  (let ((_hd92392_ _hd9236292387_))
                                    (if (gx#stx-pair? _tl9236392389_)
                                        (let ((_e9236492394_
                                               (gx#syntax-e _tl9236392389_)))
                                          (let ((_hd9236592397_
                                                 (##car _e9236492394_))
                                                (_tl9236692399_
                                                 (##cdr _e9236492394_)))
                                            (let ((_body92402_ _hd9236592397_))
                                              (if (gx#stx-null? _tl9236692399_)
                                                  (if '#t
                                                      (cons _form92354_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd92392_)
                          (cons (gx#core-compile-top-syntax _body92402_) '())))
              (_E9235792372_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9235792372_)))))
                                        (_E9235792372_)))))
                              (_E9235792372_))))
                      (_E9235792372_)))))
          (_E9235692404_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx92411_)
        (let ((_form92413_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx92411_ _form92413_))))
    (define gx#core-compile-top-let-values%
      (lambda _g93226_
        (let ((_g93225_ (##length _g93226_)))
          (cond ((##fx= _g93225_ 1)
                 (apply (lambda (_stx92411_)
                          (gx#core-compile-top-let-values%__0 _stx92411_))
                        _g93226_))
                ((##fx= _g93225_ 2)
                 (apply (lambda (_stx92415_ _form92416_)
                          (gx#core-compile-top-let-values%__%
                           _stx92415_
                           _form92416_))
                        _g93226_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g93226_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx92350_)
        (gx#core-compile-top-let-values%__% _stx92350_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx92348_)
        (gx#core-compile-top-let-values%__% _stx92348_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx92307_)
        (let* ((_e9230892318_ _stx92307_)
               (_E9231092322_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9230892318_)))
               (_E9230992344_
                (lambda ()
                  (if (gx#stx-pair? _e9230892318_)
                      (let ((_e9231192326_ (gx#syntax-e _e9230892318_)))
                        (let ((_hd9231292329_ (##car _e9231192326_))
                              (_tl9231392331_ (##cdr _e9231192326_)))
                          (if (gx#stx-pair? _tl9231392331_)
                              (let ((_e9231492334_
                                     (gx#syntax-e _tl9231392331_)))
                                (let ((_hd9231592337_ (##car _e9231492334_))
                                      (_tl9231692339_ (##cdr _e9231492334_)))
                                  (let ((_e92342_ _hd9231592337_))
                                    (if (gx#stx-null? _tl9231692339_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e92342_)
                                                        '()))
                                            (_E9231092322_))
                                        (_E9231092322_)))))
                              (_E9231092322_))))
                      (_E9231092322_)))))
          (_E9230992344_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx92266_)
        (let* ((_e9226792277_ _stx92266_)
               (_E9226992281_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9226792277_)))
               (_E9226892303_
                (lambda ()
                  (if (gx#stx-pair? _e9226792277_)
                      (let ((_e9227092285_ (gx#syntax-e _e9226792277_)))
                        (let ((_hd9227192288_ (##car _e9227092285_))
                              (_tl9227292290_ (##cdr _e9227092285_)))
                          (if (gx#stx-pair? _tl9227292290_)
                              (let ((_e9227392293_
                                     (gx#syntax-e _tl9227292290_)))
                                (let ((_hd9227492296_ (##car _e9227392293_))
                                      (_tl9227592298_ (##cdr _e9227392293_)))
                                  (let ((_e92301_ _hd9227492296_))
                                    (if (gx#stx-null? _tl9227592298_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e92301_)
                                                        '()))
                                            (_E9226992281_))
                                        (_E9226992281_)))))
                              (_E9226992281_))))
                      (_E9226992281_)))))
          (_E9226892303_))))
    (define gx#core-compile-top-call%
      (lambda (_stx92223_)
        (let* ((_e9222492234_ _stx92223_)
               (_E9222692238_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9222492234_)))
               (_E9222592262_
                (lambda ()
                  (if (gx#stx-pair? _e9222492234_)
                      (let ((_e9222792242_ (gx#syntax-e _e9222492234_)))
                        (let ((_hd9222892245_ (##car _e9222792242_))
                              (_tl9222992247_ (##cdr _e9222792242_)))
                          (if (gx#stx-pair? _tl9222992247_)
                              (let ((_e9223092250_
                                     (gx#syntax-e _tl9222992247_)))
                                (let ((_hd9223192253_ (##car _e9223092250_))
                                      (_tl9223292255_ (##cdr _e9223092250_)))
                                  (let* ((_rator92258_ _hd9223192253_)
                                         (_args92260_ _tl9223292255_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator92258_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args92260_)))
                                        (_E9222692238_)))))
                              (_E9222692238_))))
                      (_E9222692238_)))))
          (_E9222592262_))))
    (define gx#core-compile-top-if%
      (lambda (_stx92156_)
        (let* ((_e9215792173_ _stx92156_)
               (_E9215992177_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9215792173_)))
               (_E9215892219_
                (lambda ()
                  (if (gx#stx-pair? _e9215792173_)
                      (let ((_e9216092181_ (gx#syntax-e _e9215792173_)))
                        (let ((_hd9216192184_ (##car _e9216092181_))
                              (_tl9216292186_ (##cdr _e9216092181_)))
                          (if (gx#stx-pair? _tl9216292186_)
                              (let ((_e9216392189_
                                     (gx#syntax-e _tl9216292186_)))
                                (let ((_hd9216492192_ (##car _e9216392189_))
                                      (_tl9216592194_ (##cdr _e9216392189_)))
                                  (let ((_test92197_ _hd9216492192_))
                                    (if (gx#stx-pair? _tl9216592194_)
                                        (let ((_e9216692199_
                                               (gx#syntax-e _tl9216592194_)))
                                          (let ((_hd9216792202_
                                                 (##car _e9216692199_))
                                                (_tl9216892204_
                                                 (##cdr _e9216692199_)))
                                            (let ((_K92207_ _hd9216792202_))
                                              (if (gx#stx-pair? _tl9216892204_)
                                                  (let ((_e9216992209_
                                                         (gx#syntax-e
                                                          _tl9216892204_)))
                                                    (let ((_hd9217092212_
                                                           (##car _e9216992209_))
                                                          (_tl9217192214_
                                                           (##cdr _e9216992209_)))
                                                      (let ((_E92217_
                                                             _hd9217092212_))
                                                        (if (gx#stx-null?
                                                             _tl9217192214_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test92197_)
                                    (cons (gx#core-compile-top-syntax _K92207_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E92217_)
                                                '()))))
                        (_E9215992177_))
                    (_E9215992177_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9215992177_)))))
                                        (_E9215992177_)))))
                              (_E9215992177_))))
                      (_E9215992177_)))))
          (_E9215892219_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx92115_)
        (let* ((_e9211692126_ _stx92115_)
               (_E9211892130_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9211692126_)))
               (_E9211792152_
                (lambda ()
                  (if (gx#stx-pair? _e9211692126_)
                      (let ((_e9211992134_ (gx#syntax-e _e9211692126_)))
                        (let ((_hd9212092137_ (##car _e9211992134_))
                              (_tl9212192139_ (##cdr _e9211992134_)))
                          (if (gx#stx-pair? _tl9212192139_)
                              (let ((_e9212292142_
                                     (gx#syntax-e _tl9212192139_)))
                                (let ((_hd9212392145_ (##car _e9212292142_))
                                      (_tl9212492147_ (##cdr _e9212292142_)))
                                  (let ((_id92150_ _hd9212392145_))
                                    (if (gx#stx-null? _tl9212492147_)
                                        (if (gx#identifier? _id92150_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id92150_)
                                                        '()))
                                            (_E9211892130_))
                                        (_E9211892130_)))))
                              (_E9211892130_))))
                      (_E9211892130_)))))
          (_E9211792152_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx92061_)
        (let* ((_e9206292075_ _stx92061_)
               (_E9206492079_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9206292075_)))
               (_E9206392111_
                (lambda ()
                  (if (gx#stx-pair? _e9206292075_)
                      (let ((_e9206592083_ (gx#syntax-e _e9206292075_)))
                        (let ((_hd9206692086_ (##car _e9206592083_))
                              (_tl9206792088_ (##cdr _e9206592083_)))
                          (if (gx#stx-pair? _tl9206792088_)
                              (let ((_e9206892091_
                                     (gx#syntax-e _tl9206792088_)))
                                (let ((_hd9206992094_ (##car _e9206892091_))
                                      (_tl9207092096_ (##cdr _e9206892091_)))
                                  (let ((_id92099_ _hd9206992094_))
                                    (if (gx#stx-pair? _tl9207092096_)
                                        (let ((_e9207192101_
                                               (gx#syntax-e _tl9207092096_)))
                                          (let ((_hd9207292104_
                                                 (##car _e9207192101_))
                                                (_tl9207392106_
                                                 (##cdr _e9207192101_)))
                                            (let ((_expr92109_ _hd9207292104_))
                                              (if (gx#stx-null? _tl9207392106_)
                                                  (if (gx#identifier?
                                                       _id92099_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id92099_)
                          (cons (gx#core-compile-top-syntax _expr92109_) '())))
              (_E9206492079_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9206492079_)))))
                                        (_E9206492079_)))))
                              (_E9206492079_))))
                      (_E9206492079_)))))
          (_E9206392111_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id92056_)
        (let ((_$e92058_ (gx#resolve-identifier__0 _id92056_)))
          (if _$e92058_
              (##unchecked-structure-ref _$e92058_ '1 gx#binding::t '#f)
              _id92056_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd92054_)
        (if (gx#identifier? _hd92054_)
            (gx#core-compile-top-runtime-ref _hd92054_)
            '#f)))))
