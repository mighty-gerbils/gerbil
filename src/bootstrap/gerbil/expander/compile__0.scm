(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1708102803)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx170009_)
        (let* ((_e170010170017_ _stx170009_)
               (_E170012170021_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e170010170017_)))
               (_E170011170035_
                (lambda ()
                  (if (gx#stx-pair? _e170010170017_)
                      (let ((_e170013170025_ (gx#syntax-e _e170010170017_)))
                        (let ((_hd170014170028_ (##car _e170013170025_))
                              (_tl170015170030_ (##cdr _e170013170025_)))
                          (let ((_form170033_ _hd170014170028_))
                            (if '#t
                                (let* ((__self174606
                                        (gx#syntax-local-e__0 _form170033_))
                                       (__method174607
                                        (method-ref
                                         __self174606
                                         'compile-top-syntax)))
                                  (if __method174607
                                      (__method174607 __self174606 _stx170009_)
                                      (error '"Missing method"
                                             __self174606
                                             'compile-top-syntax)))
                                (_E170012170021_)))))
                      (_E170012170021_)))))
          (_E170011170035_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self169969_ _stx169970_)
        (let* ((_self169971169979_ _self169969_)
               (_E169973169983_
                (lambda () (error '"No clause matching" _self169971169979_)))
               (_K169974169995_
                (lambda (_K169986_)
                  (let ((_$e169988_ (gx#stx-source _stx169970_)))
                    (if _$e169988_
                        ((lambda (_g169990169992_)
                           (gx#stx-wrap-source
                            (_K169986_ _stx169970_)
                            _g169990169992_))
                         _$e169988_)
                        (_K169986_ _stx169970_))))))
          (if (##structure-instance-of?
               _self169971169979_
               'gx#core-expander::t)
              (let* ((_e169975169998_
                      (##unchecked-structure-ref
                       _self169971169979_
                       '1
                       gx#expander::t
                       '#f))
                     (_e169976170001_
                      (##unchecked-structure-ref
                       _self169971169979_
                       '2
                       gx#core-expander::t
                       '#f))
                     (_e169977170004_
                      (##unchecked-structure-ref
                       _self169971169979_
                       '3
                       gx#core-expander::t
                       '#f))
                     (_K170007_ _e169977170004_))
                (_K169974169995_ _K170007_))
              (_E169973169983_)))))
    (bind-method!
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx169843_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx169843_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx169813_)
        (let* ((_e169814169821_ _stx169813_)
               (_E169816169825_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169814169821_)))
               (_E169815169839_
                (lambda ()
                  (if (gx#stx-pair? _e169814169821_)
                      (let ((_e169817169829_ (gx#syntax-e _e169814169821_)))
                        (let ((_hd169818169832_ (##car _e169817169829_))
                              (_tl169819169834_ (##cdr _e169817169829_)))
                          (let ((_body169837_ _tl169819169834_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body169837_))
                                (_E169816169825_)))))
                      (_E169816169825_)))))
          (_E169815169839_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx169782_)
        (let* ((_e169783169790_ _stx169782_)
               (_E169785169794_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169783169790_)))
               (_E169784169809_
                (lambda ()
                  (if (gx#stx-pair? _e169783169790_)
                      (let ((_e169786169798_ (gx#syntax-e _e169783169790_)))
                        (let ((_hd169787169801_ (##car _e169786169798_))
                              (_tl169788169803_ (##cdr _e169786169798_)))
                          (let ((_body169806_ _tl169788169803_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body169806_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E169785169794_)))))
                      (_E169785169794_)))))
          (_E169784169809_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_stx169752_)
        (let* ((_e169753169760_ _stx169752_)
               (_E169755169764_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169753169760_)))
               (_E169754169778_
                (lambda ()
                  (if (gx#stx-pair? _e169753169760_)
                      (let ((_e169756169768_ (gx#syntax-e _e169753169760_)))
                        (let ((_hd169757169771_ (##car _e169756169768_))
                              (_tl169758169773_ (##cdr _e169756169768_)))
                          (let ((_body169776_ _tl169758169773_))
                            (if '#t
                                (cons '%#begin-foreign _body169776_)
                                (_E169755169764_)))))
                      (_E169755169764_)))))
          (_E169754169778_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_stx169698_)
        (let* ((_e169699169712_ _stx169698_)
               (_E169701169716_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169699169712_)))
               (_E169700169748_
                (lambda ()
                  (if (gx#stx-pair? _e169699169712_)
                      (let ((_e169702169720_ (gx#syntax-e _e169699169712_)))
                        (let ((_hd169703169723_ (##car _e169702169720_))
                              (_tl169704169725_ (##cdr _e169702169720_)))
                          (if (gx#stx-pair? _tl169704169725_)
                              (let ((_e169705169728_
                                     (gx#syntax-e _tl169704169725_)))
                                (let ((_hd169706169731_
                                       (##car _e169705169728_))
                                      (_tl169707169733_
                                       (##cdr _e169705169728_)))
                                  (let ((_ann169736_ _hd169706169731_))
                                    (if (gx#stx-pair? _tl169707169733_)
                                        (let ((_e169708169738_
                                               (gx#syntax-e _tl169707169733_)))
                                          (let ((_hd169709169741_
                                                 (##car _e169708169738_))
                                                (_tl169710169743_
                                                 (##cdr _e169708169738_)))
                                            (let ((_expr169746_
                                                   _hd169709169741_))
                                              (if (gx#stx-null?
                                                   _tl169710169743_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr169746_)
                                                      (_E169701169716_))
                                                  (_E169701169716_)))))
                                        (_E169701169716_)))))
                              (_E169701169716_))))
                      (_E169701169716_)))))
          (_E169700169748_))))
    (define gx#core-compile-top-import%
      (lambda (_stx169668_)
        (let* ((_e169669169676_ _stx169668_)
               (_E169671169680_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169669169676_)))
               (_E169670169694_
                (lambda ()
                  (if (gx#stx-pair? _e169669169676_)
                      (let ((_e169672169684_ (gx#syntax-e _e169669169676_)))
                        (let ((_hd169673169687_ (##car _e169672169684_))
                              (_tl169674169689_ (##cdr _e169672169684_)))
                          (let ((_body169692_ _tl169674169689_))
                            (if '#t
                                (cons '%#import _body169692_)
                                (_E169671169680_)))))
                      (_E169671169680_)))))
          (_E169670169694_))))
    (define gx#core-compile-top-module%
      (lambda (_stx169625_)
        (let* ((_e169626169636_ _stx169625_)
               (_E169628169640_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169626169636_)))
               (_E169627169664_
                (lambda ()
                  (if (gx#stx-pair? _e169626169636_)
                      (let ((_e169629169644_ (gx#syntax-e _e169626169636_)))
                        (let ((_hd169630169647_ (##car _e169629169644_))
                              (_tl169631169649_ (##cdr _e169629169644_)))
                          (if (gx#stx-pair? _tl169631169649_)
                              (let ((_e169632169652_
                                     (gx#syntax-e _tl169631169649_)))
                                (let ((_hd169633169655_
                                       (##car _e169632169652_))
                                      (_tl169634169657_
                                       (##cdr _e169632169652_)))
                                  (let* ((_hd169660_ _hd169633169655_)
                                         (_body169662_ _tl169634169657_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _hd169660_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body169662_)))
                                        (_E169628169640_)))))
                              (_E169628169640_))))
                      (_E169628169640_)))))
          (_E169627169664_))))
    (define gx#core-compile-top-export%
      (lambda (_stx169595_)
        (let* ((_e169596169603_ _stx169595_)
               (_E169598169607_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169596169603_)))
               (_E169597169621_
                (lambda ()
                  (if (gx#stx-pair? _e169596169603_)
                      (let ((_e169599169611_ (gx#syntax-e _e169596169603_)))
                        (let ((_hd169600169614_ (##car _e169599169611_))
                              (_tl169601169616_ (##cdr _e169599169611_)))
                          (let ((_body169619_ _tl169601169616_))
                            (if '#t
                                (cons '%#export _body169619_)
                                (_E169598169607_)))))
                      (_E169598169607_)))))
          (_E169597169621_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx169565_)
        (let* ((_e169566169573_ _stx169565_)
               (_E169568169577_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169566169573_)))
               (_E169567169591_
                (lambda ()
                  (if (gx#stx-pair? _e169566169573_)
                      (let ((_e169569169581_ (gx#syntax-e _e169566169573_)))
                        (let ((_hd169570169584_ (##car _e169569169581_))
                              (_tl169571169586_ (##cdr _e169569169581_)))
                          (let ((_body169589_ _tl169571169586_))
                            (if '#t
                                (cons '%#provide _body169589_)
                                (_E169568169577_)))))
                      (_E169568169577_)))))
          (_E169567169591_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx169535_)
        (let* ((_e169536169543_ _stx169535_)
               (_E169538169547_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169536169543_)))
               (_E169537169561_
                (lambda ()
                  (if (gx#stx-pair? _e169536169543_)
                      (let ((_e169539169551_ (gx#syntax-e _e169536169543_)))
                        (let ((_hd169540169554_ (##car _e169539169551_))
                              (_tl169541169556_ (##cdr _e169539169551_)))
                          (let ((_body169559_ _tl169541169556_))
                            (if '#t
                                (cons '%#extern _body169559_)
                                (_E169538169547_)))))
                      (_E169538169547_)))))
          (_E169537169561_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx169481_)
        (let* ((_e169482169495_ _stx169481_)
               (_E169484169499_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169482169495_)))
               (_E169483169531_
                (lambda ()
                  (if (gx#stx-pair? _e169482169495_)
                      (let ((_e169485169503_ (gx#syntax-e _e169482169495_)))
                        (let ((_hd169486169506_ (##car _e169485169503_))
                              (_tl169487169508_ (##cdr _e169485169503_)))
                          (if (gx#stx-pair? _tl169487169508_)
                              (let ((_e169488169511_
                                     (gx#syntax-e _tl169487169508_)))
                                (let ((_hd169489169514_
                                       (##car _e169488169511_))
                                      (_tl169490169516_
                                       (##cdr _e169488169511_)))
                                  (let ((_hd169519_ _hd169489169514_))
                                    (if (gx#stx-pair? _tl169490169516_)
                                        (let ((_e169491169521_
                                               (gx#syntax-e _tl169490169516_)))
                                          (let ((_hd169492169524_
                                                 (##car _e169491169521_))
                                                (_tl169493169526_
                                                 (##cdr _e169491169521_)))
                                            (let ((_expr169529_
                                                   _hd169492169524_))
                                              (if (gx#stx-null?
                                                   _tl169493169526_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd169519_)
                          (cons (gx#core-compile-top-syntax _expr169529_)
                                '())))
              (_E169484169499_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E169484169499_)))))
                                        (_E169484169499_)))))
                              (_E169484169499_))))
                      (_E169484169499_)))))
          (_E169483169531_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx169426_)
        (let* ((_e169427169440_ _stx169426_)
               (_E169429169444_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169427169440_)))
               (_E169428169477_
                (lambda ()
                  (if (gx#stx-pair? _e169427169440_)
                      (let ((_e169430169448_ (gx#syntax-e _e169427169440_)))
                        (let ((_hd169431169451_ (##car _e169430169448_))
                              (_tl169432169453_ (##cdr _e169430169448_)))
                          (if (gx#stx-pair? _tl169432169453_)
                              (let ((_e169433169456_
                                     (gx#syntax-e _tl169432169453_)))
                                (let ((_hd169434169459_
                                       (##car _e169433169456_))
                                      (_tl169435169461_
                                       (##cdr _e169433169456_)))
                                  (let ((_hd169464_ _hd169434169459_))
                                    (if (gx#stx-pair? _tl169435169461_)
                                        (let ((_e169436169466_
                                               (gx#syntax-e _tl169435169461_)))
                                          (let ((_hd169437169469_
                                                 (##car _e169436169466_))
                                                (_tl169438169471_
                                                 (##cdr _e169436169466_)))
                                            (let ((_expr169474_
                                                   _hd169437169469_))
                                              (if (gx#stx-null?
                                                   _tl169438169471_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd169464_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr169474_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E169429169444_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E169429169444_)))))
                                        (_E169429169444_)))))
                              (_E169429169444_))))
                      (_E169429169444_)))))
          (_E169428169477_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx169396_)
        (let* ((_e169397169404_ _stx169396_)
               (_E169399169408_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169397169404_)))
               (_E169398169422_
                (lambda ()
                  (if (gx#stx-pair? _e169397169404_)
                      (let ((_e169400169412_ (gx#syntax-e _e169397169404_)))
                        (let ((_hd169401169415_ (##car _e169400169412_))
                              (_tl169402169417_ (##cdr _e169400169412_)))
                          (let ((_body169420_ _tl169402169417_))
                            (if '#t
                                (cons '%#define-alias _body169420_)
                                (_E169399169408_)))))
                      (_E169399169408_)))))
          (_E169398169422_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx169366_)
        (let* ((_e169367169374_ _stx169366_)
               (_E169369169378_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169367169374_)))
               (_E169368169392_
                (lambda ()
                  (if (gx#stx-pair? _e169367169374_)
                      (let ((_e169370169382_ (gx#syntax-e _e169367169374_)))
                        (let ((_hd169371169385_ (##car _e169370169382_))
                              (_tl169372169387_ (##cdr _e169370169382_)))
                          (let ((_body169390_ _tl169372169387_))
                            (if '#t
                                (cons '%#define-runtime _body169390_)
                                (_E169369169378_)))))
                      (_E169369169378_)))))
          (_E169368169392_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx169336_)
        (let* ((_e169337169344_ _stx169336_)
               (_E169339169348_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169337169344_)))
               (_E169338169362_
                (lambda ()
                  (if (gx#stx-pair? _e169337169344_)
                      (let ((_e169340169352_ (gx#syntax-e _e169337169344_)))
                        (let ((_hd169341169355_ (##car _e169340169352_))
                              (_tl169342169357_ (##cdr _e169340169352_)))
                          (let ((_decls169360_ _tl169342169357_))
                            (if '#t
                                (cons '%#declare _decls169360_)
                                (_E169339169348_)))))
                      (_E169339169348_)))))
          (_E169338169362_))))
    (define gx#core-compile-top-lambda%
      (lambda (_stx169306_)
        (let* ((_e169307169314_ _stx169306_)
               (_E169309169318_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169307169314_)))
               (_E169308169332_
                (lambda ()
                  (if (gx#stx-pair? _e169307169314_)
                      (let ((_e169310169322_ (gx#syntax-e _e169307169314_)))
                        (let ((_hd169311169325_ (##car _e169310169322_))
                              (_tl169312169327_ (##cdr _e169310169322_)))
                          (let ((_clause169330_ _tl169312169327_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause169330_))
                                (_E169309169318_)))))
                      (_E169309169318_)))))
          (_E169308169332_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx169263_)
        (let* ((_e169264169274_ _stx169263_)
               (_E169266169278_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169264169274_)))
               (_E169265169302_
                (lambda ()
                  (if (gx#stx-pair? _e169264169274_)
                      (let ((_e169267169282_ (gx#syntax-e _e169264169274_)))
                        (let ((_hd169268169285_ (##car _e169267169282_))
                              (_tl169269169287_ (##cdr _e169267169282_)))
                          (let ((_hd169290_ _hd169268169285_))
                            (if (gx#stx-pair? _tl169269169287_)
                                (let ((_e169270169292_
                                       (gx#syntax-e _tl169269169287_)))
                                  (let ((_hd169271169295_
                                         (##car _e169270169292_))
                                        (_tl169272169297_
                                         (##cdr _e169270169292_)))
                                    (let ((_body169300_ _hd169271169295_))
                                      (if (gx#stx-null? _tl169272169297_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd169290_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body169300_)
                                                          '()))
                                              (_E169266169278_))
                                          (_E169266169278_)))))
                                (_E169266169278_)))))
                      (_E169266169278_)))))
          (_E169265169302_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx169233_)
        (let* ((_e169234169241_ _stx169233_)
               (_E169236169245_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169234169241_)))
               (_E169235169259_
                (lambda ()
                  (if (gx#stx-pair? _e169234169241_)
                      (let ((_e169237169249_ (gx#syntax-e _e169234169241_)))
                        (let ((_hd169238169252_ (##car _e169237169249_))
                              (_tl169239169254_ (##cdr _e169237169249_)))
                          (let ((_clauses169257_ _tl169239169254_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses169257_))
                                (_E169236169245_)))))
                      (_E169236169245_)))))
          (_E169235169259_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx169168_ _form169169_)
        (let* ((_e169170169183_ _stx169168_)
               (_E169172169187_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169170169183_)))
               (_E169171169219_
                (lambda ()
                  (if (gx#stx-pair? _e169170169183_)
                      (let ((_e169173169191_ (gx#syntax-e _e169170169183_)))
                        (let ((_hd169174169194_ (##car _e169173169191_))
                              (_tl169175169196_ (##cdr _e169173169191_)))
                          (if (gx#stx-pair? _tl169175169196_)
                              (let ((_e169176169199_
                                     (gx#syntax-e _tl169175169196_)))
                                (let ((_hd169177169202_
                                       (##car _e169176169199_))
                                      (_tl169178169204_
                                       (##cdr _e169176169199_)))
                                  (let ((_hd169207_ _hd169177169202_))
                                    (if (gx#stx-pair? _tl169178169204_)
                                        (let ((_e169179169209_
                                               (gx#syntax-e _tl169178169204_)))
                                          (let ((_hd169180169212_
                                                 (##car _e169179169209_))
                                                (_tl169181169214_
                                                 (##cdr _e169179169209_)))
                                            (let ((_body169217_
                                                   _hd169180169212_))
                                              (if (gx#stx-null?
                                                   _tl169181169214_)
                                                  (if '#t
                                                      (cons _form169169_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd169207_)
                          (cons (gx#core-compile-top-syntax _body169217_)
                                '())))
              (_E169172169187_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E169172169187_)))))
                                        (_E169172169187_)))))
                              (_E169172169187_))))
                      (_E169172169187_)))))
          (_E169171169219_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx169226_)
        (let ((_form169228_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx169226_ _form169228_))))
    (define gx#core-compile-top-let-values%
      (lambda _g174609_
        (let ((_g174608_ (##length _g174609_)))
          (cond ((##fx= _g174608_ 1)
                 (apply (lambda (_stx169226_)
                          (gx#core-compile-top-let-values%__0 _stx169226_))
                        _g174609_))
                ((##fx= _g174608_ 2)
                 (apply (lambda (_stx169230_ _form169231_)
                          (gx#core-compile-top-let-values%__%
                           _stx169230_
                           _form169231_))
                        _g174609_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g174609_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx169165_)
        (gx#core-compile-top-let-values%__% _stx169165_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx169163_)
        (gx#core-compile-top-let-values%__% _stx169163_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx169122_)
        (let* ((_e169123169133_ _stx169122_)
               (_E169125169137_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169123169133_)))
               (_E169124169159_
                (lambda ()
                  (if (gx#stx-pair? _e169123169133_)
                      (let ((_e169126169141_ (gx#syntax-e _e169123169133_)))
                        (let ((_hd169127169144_ (##car _e169126169141_))
                              (_tl169128169146_ (##cdr _e169126169141_)))
                          (if (gx#stx-pair? _tl169128169146_)
                              (let ((_e169129169149_
                                     (gx#syntax-e _tl169128169146_)))
                                (let ((_hd169130169152_
                                       (##car _e169129169149_))
                                      (_tl169131169154_
                                       (##cdr _e169129169149_)))
                                  (let ((_e169157_ _hd169130169152_))
                                    (if (gx#stx-null? _tl169131169154_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e169157_)
                                                        '()))
                                            (_E169125169137_))
                                        (_E169125169137_)))))
                              (_E169125169137_))))
                      (_E169125169137_)))))
          (_E169124169159_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx169081_)
        (let* ((_e169082169092_ _stx169081_)
               (_E169084169096_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169082169092_)))
               (_E169083169118_
                (lambda ()
                  (if (gx#stx-pair? _e169082169092_)
                      (let ((_e169085169100_ (gx#syntax-e _e169082169092_)))
                        (let ((_hd169086169103_ (##car _e169085169100_))
                              (_tl169087169105_ (##cdr _e169085169100_)))
                          (if (gx#stx-pair? _tl169087169105_)
                              (let ((_e169088169108_
                                     (gx#syntax-e _tl169087169105_)))
                                (let ((_hd169089169111_
                                       (##car _e169088169108_))
                                      (_tl169090169113_
                                       (##cdr _e169088169108_)))
                                  (let ((_e169116_ _hd169089169111_))
                                    (if (gx#stx-null? _tl169090169113_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e169116_)
                                                        '()))
                                            (_E169084169096_))
                                        (_E169084169096_)))))
                              (_E169084169096_))))
                      (_E169084169096_)))))
          (_E169083169118_))))
    (define gx#core-compile-top-call%
      (lambda (_stx169038_)
        (let* ((_e169039169049_ _stx169038_)
               (_E169041169053_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169039169049_)))
               (_E169040169077_
                (lambda ()
                  (if (gx#stx-pair? _e169039169049_)
                      (let ((_e169042169057_ (gx#syntax-e _e169039169049_)))
                        (let ((_hd169043169060_ (##car _e169042169057_))
                              (_tl169044169062_ (##cdr _e169042169057_)))
                          (if (gx#stx-pair? _tl169044169062_)
                              (let ((_e169045169065_
                                     (gx#syntax-e _tl169044169062_)))
                                (let ((_hd169046169068_
                                       (##car _e169045169065_))
                                      (_tl169047169070_
                                       (##cdr _e169045169065_)))
                                  (let* ((_rator169073_ _hd169046169068_)
                                         (_args169075_ _tl169047169070_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator169073_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args169075_)))
                                        (_E169041169053_)))))
                              (_E169041169053_))))
                      (_E169041169053_)))))
          (_E169040169077_))))
    (define gx#core-compile-top-if%
      (lambda (_stx168971_)
        (let* ((_e168972168988_ _stx168971_)
               (_E168974168992_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168972168988_)))
               (_E168973169034_
                (lambda ()
                  (if (gx#stx-pair? _e168972168988_)
                      (let ((_e168975168996_ (gx#syntax-e _e168972168988_)))
                        (let ((_hd168976168999_ (##car _e168975168996_))
                              (_tl168977169001_ (##cdr _e168975168996_)))
                          (if (gx#stx-pair? _tl168977169001_)
                              (let ((_e168978169004_
                                     (gx#syntax-e _tl168977169001_)))
                                (let ((_hd168979169007_
                                       (##car _e168978169004_))
                                      (_tl168980169009_
                                       (##cdr _e168978169004_)))
                                  (let ((_test169012_ _hd168979169007_))
                                    (if (gx#stx-pair? _tl168980169009_)
                                        (let ((_e168981169014_
                                               (gx#syntax-e _tl168980169009_)))
                                          (let ((_hd168982169017_
                                                 (##car _e168981169014_))
                                                (_tl168983169019_
                                                 (##cdr _e168981169014_)))
                                            (let ((_K169022_ _hd168982169017_))
                                              (if (gx#stx-pair?
                                                   _tl168983169019_)
                                                  (let ((_e168984169024_
                                                         (gx#syntax-e
                                                          _tl168983169019_)))
                                                    (let ((_hd168985169027_
                                                           (##car _e168984169024_))
                                                          (_tl168986169029_
                                                           (##cdr _e168984169024_)))
                                                      (let ((_E169032_
                                                             _hd168985169027_))
                                                        (if (gx#stx-null?
                                                             _tl168986169029_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test169012_)
                                    (cons (gx#core-compile-top-syntax
                                           _K169022_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E169032_)
                                                '()))))
                        (_E168974168992_))
                    (_E168974168992_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E168974168992_)))))
                                        (_E168974168992_)))))
                              (_E168974168992_))))
                      (_E168974168992_)))))
          (_E168973169034_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx168930_)
        (let* ((_e168931168941_ _stx168930_)
               (_E168933168945_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168931168941_)))
               (_E168932168967_
                (lambda ()
                  (if (gx#stx-pair? _e168931168941_)
                      (let ((_e168934168949_ (gx#syntax-e _e168931168941_)))
                        (let ((_hd168935168952_ (##car _e168934168949_))
                              (_tl168936168954_ (##cdr _e168934168949_)))
                          (if (gx#stx-pair? _tl168936168954_)
                              (let ((_e168937168957_
                                     (gx#syntax-e _tl168936168954_)))
                                (let ((_hd168938168960_
                                       (##car _e168937168957_))
                                      (_tl168939168962_
                                       (##cdr _e168937168957_)))
                                  (let ((_id168965_ _hd168938168960_))
                                    (if (gx#stx-null? _tl168939168962_)
                                        (if (gx#identifier? _id168965_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id168965_)
                                                        '()))
                                            (_E168933168945_))
                                        (_E168933168945_)))))
                              (_E168933168945_))))
                      (_E168933168945_)))))
          (_E168932168967_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx168876_)
        (let* ((_e168877168890_ _stx168876_)
               (_E168879168894_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168877168890_)))
               (_E168878168926_
                (lambda ()
                  (if (gx#stx-pair? _e168877168890_)
                      (let ((_e168880168898_ (gx#syntax-e _e168877168890_)))
                        (let ((_hd168881168901_ (##car _e168880168898_))
                              (_tl168882168903_ (##cdr _e168880168898_)))
                          (if (gx#stx-pair? _tl168882168903_)
                              (let ((_e168883168906_
                                     (gx#syntax-e _tl168882168903_)))
                                (let ((_hd168884168909_
                                       (##car _e168883168906_))
                                      (_tl168885168911_
                                       (##cdr _e168883168906_)))
                                  (let ((_id168914_ _hd168884168909_))
                                    (if (gx#stx-pair? _tl168885168911_)
                                        (let ((_e168886168916_
                                               (gx#syntax-e _tl168885168911_)))
                                          (let ((_hd168887168919_
                                                 (##car _e168886168916_))
                                                (_tl168888168921_
                                                 (##cdr _e168886168916_)))
                                            (let ((_expr168924_
                                                   _hd168887168919_))
                                              (if (gx#stx-null?
                                                   _tl168888168921_)
                                                  (if (gx#identifier?
                                                       _id168914_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id168914_)
                          (cons (gx#core-compile-top-syntax _expr168924_)
                                '())))
              (_E168879168894_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E168879168894_)))))
                                        (_E168879168894_)))))
                              (_E168879168894_))))
                      (_E168879168894_)))))
          (_E168878168926_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id168871_)
        (let ((_$e168873_ (gx#resolve-identifier__0 _id168871_)))
          (if _$e168873_
              (##unchecked-structure-ref _$e168873_ '1 gx#binding::t '#f)
              _id168871_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd168869_)
        (if (gx#identifier? _hd168869_)
            (gx#core-compile-top-runtime-ref _hd168869_)
            '#f)))))
