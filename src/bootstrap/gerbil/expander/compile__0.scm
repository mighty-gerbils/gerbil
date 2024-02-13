(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1707841979)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx170004_)
        (let* ((_e170005170012_ _stx170004_)
               (_E170007170016_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e170005170012_)))
               (_E170006170030_
                (lambda ()
                  (if (gx#stx-pair? _e170005170012_)
                      (let ((_e170008170020_ (gx#syntax-e _e170005170012_)))
                        (let ((_hd170009170023_ (##car _e170008170020_))
                              (_tl170010170025_ (##cdr _e170008170020_)))
                          (let ((_form170028_ _hd170009170023_))
                            (if '#t
                                (let* ((__self174601
                                        (gx#syntax-local-e__0 _form170028_))
                                       (__method174602
                                        (method-ref
                                         __self174601
                                         'compile-top-syntax)))
                                  (if __method174602
                                      (__method174602 __self174601 _stx170004_)
                                      (error '"Missing method"
                                             __self174601
                                             'compile-top-syntax)))
                                (_E170007170016_)))))
                      (_E170007170016_)))))
          (_E170006170030_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self169964_ _stx169965_)
        (let* ((_self169966169974_ _self169964_)
               (_E169968169978_
                (lambda () (error '"No clause matching" _self169966169974_)))
               (_K169969169990_
                (lambda (_K169981_)
                  (let ((_$e169983_ (gx#stx-source _stx169965_)))
                    (if _$e169983_
                        ((lambda (_g169985169987_)
                           (gx#stx-wrap-source
                            (_K169981_ _stx169965_)
                            _g169985169987_))
                         _$e169983_)
                        (_K169981_ _stx169965_))))))
          (if (##structure-instance-of?
               _self169966169974_
               'gx#core-expander::t)
              (let* ((_e169970169993_
                      (##unchecked-structure-ref
                       _self169966169974_
                       '1
                       gx#expander::t
                       '#f))
                     (_e169971169996_
                      (##unchecked-structure-ref
                       _self169966169974_
                       '2
                       gx#core-expander::t
                       '#f))
                     (_e169972169999_
                      (##unchecked-structure-ref
                       _self169966169974_
                       '3
                       gx#core-expander::t
                       '#f))
                     (_K170002_ _e169972169999_))
                (_K169969169990_ _K170002_))
              (_E169968169978_)))))
    (bind-method!
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx169838_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx169838_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx169808_)
        (let* ((_e169809169816_ _stx169808_)
               (_E169811169820_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169809169816_)))
               (_E169810169834_
                (lambda ()
                  (if (gx#stx-pair? _e169809169816_)
                      (let ((_e169812169824_ (gx#syntax-e _e169809169816_)))
                        (let ((_hd169813169827_ (##car _e169812169824_))
                              (_tl169814169829_ (##cdr _e169812169824_)))
                          (let ((_body169832_ _tl169814169829_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body169832_))
                                (_E169811169820_)))))
                      (_E169811169820_)))))
          (_E169810169834_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx169777_)
        (let* ((_e169778169785_ _stx169777_)
               (_E169780169789_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169778169785_)))
               (_E169779169804_
                (lambda ()
                  (if (gx#stx-pair? _e169778169785_)
                      (let ((_e169781169793_ (gx#syntax-e _e169778169785_)))
                        (let ((_hd169782169796_ (##car _e169781169793_))
                              (_tl169783169798_ (##cdr _e169781169793_)))
                          (let ((_body169801_ _tl169783169798_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body169801_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E169780169789_)))))
                      (_E169780169789_)))))
          (_E169779169804_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_stx169747_)
        (let* ((_e169748169755_ _stx169747_)
               (_E169750169759_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169748169755_)))
               (_E169749169773_
                (lambda ()
                  (if (gx#stx-pair? _e169748169755_)
                      (let ((_e169751169763_ (gx#syntax-e _e169748169755_)))
                        (let ((_hd169752169766_ (##car _e169751169763_))
                              (_tl169753169768_ (##cdr _e169751169763_)))
                          (let ((_body169771_ _tl169753169768_))
                            (if '#t
                                (cons '%#begin-foreign _body169771_)
                                (_E169750169759_)))))
                      (_E169750169759_)))))
          (_E169749169773_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_stx169693_)
        (let* ((_e169694169707_ _stx169693_)
               (_E169696169711_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169694169707_)))
               (_E169695169743_
                (lambda ()
                  (if (gx#stx-pair? _e169694169707_)
                      (let ((_e169697169715_ (gx#syntax-e _e169694169707_)))
                        (let ((_hd169698169718_ (##car _e169697169715_))
                              (_tl169699169720_ (##cdr _e169697169715_)))
                          (if (gx#stx-pair? _tl169699169720_)
                              (let ((_e169700169723_
                                     (gx#syntax-e _tl169699169720_)))
                                (let ((_hd169701169726_
                                       (##car _e169700169723_))
                                      (_tl169702169728_
                                       (##cdr _e169700169723_)))
                                  (let ((_ann169731_ _hd169701169726_))
                                    (if (gx#stx-pair? _tl169702169728_)
                                        (let ((_e169703169733_
                                               (gx#syntax-e _tl169702169728_)))
                                          (let ((_hd169704169736_
                                                 (##car _e169703169733_))
                                                (_tl169705169738_
                                                 (##cdr _e169703169733_)))
                                            (let ((_expr169741_
                                                   _hd169704169736_))
                                              (if (gx#stx-null?
                                                   _tl169705169738_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr169741_)
                                                      (_E169696169711_))
                                                  (_E169696169711_)))))
                                        (_E169696169711_)))))
                              (_E169696169711_))))
                      (_E169696169711_)))))
          (_E169695169743_))))
    (define gx#core-compile-top-import%
      (lambda (_stx169663_)
        (let* ((_e169664169671_ _stx169663_)
               (_E169666169675_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169664169671_)))
               (_E169665169689_
                (lambda ()
                  (if (gx#stx-pair? _e169664169671_)
                      (let ((_e169667169679_ (gx#syntax-e _e169664169671_)))
                        (let ((_hd169668169682_ (##car _e169667169679_))
                              (_tl169669169684_ (##cdr _e169667169679_)))
                          (let ((_body169687_ _tl169669169684_))
                            (if '#t
                                (cons '%#import _body169687_)
                                (_E169666169675_)))))
                      (_E169666169675_)))))
          (_E169665169689_))))
    (define gx#core-compile-top-module%
      (lambda (_stx169620_)
        (let* ((_e169621169631_ _stx169620_)
               (_E169623169635_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169621169631_)))
               (_E169622169659_
                (lambda ()
                  (if (gx#stx-pair? _e169621169631_)
                      (let ((_e169624169639_ (gx#syntax-e _e169621169631_)))
                        (let ((_hd169625169642_ (##car _e169624169639_))
                              (_tl169626169644_ (##cdr _e169624169639_)))
                          (if (gx#stx-pair? _tl169626169644_)
                              (let ((_e169627169647_
                                     (gx#syntax-e _tl169626169644_)))
                                (let ((_hd169628169650_
                                       (##car _e169627169647_))
                                      (_tl169629169652_
                                       (##cdr _e169627169647_)))
                                  (let* ((_hd169655_ _hd169628169650_)
                                         (_body169657_ _tl169629169652_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _hd169655_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body169657_)))
                                        (_E169623169635_)))))
                              (_E169623169635_))))
                      (_E169623169635_)))))
          (_E169622169659_))))
    (define gx#core-compile-top-export%
      (lambda (_stx169590_)
        (let* ((_e169591169598_ _stx169590_)
               (_E169593169602_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169591169598_)))
               (_E169592169616_
                (lambda ()
                  (if (gx#stx-pair? _e169591169598_)
                      (let ((_e169594169606_ (gx#syntax-e _e169591169598_)))
                        (let ((_hd169595169609_ (##car _e169594169606_))
                              (_tl169596169611_ (##cdr _e169594169606_)))
                          (let ((_body169614_ _tl169596169611_))
                            (if '#t
                                (cons '%#export _body169614_)
                                (_E169593169602_)))))
                      (_E169593169602_)))))
          (_E169592169616_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx169560_)
        (let* ((_e169561169568_ _stx169560_)
               (_E169563169572_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169561169568_)))
               (_E169562169586_
                (lambda ()
                  (if (gx#stx-pair? _e169561169568_)
                      (let ((_e169564169576_ (gx#syntax-e _e169561169568_)))
                        (let ((_hd169565169579_ (##car _e169564169576_))
                              (_tl169566169581_ (##cdr _e169564169576_)))
                          (let ((_body169584_ _tl169566169581_))
                            (if '#t
                                (cons '%#provide _body169584_)
                                (_E169563169572_)))))
                      (_E169563169572_)))))
          (_E169562169586_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx169530_)
        (let* ((_e169531169538_ _stx169530_)
               (_E169533169542_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169531169538_)))
               (_E169532169556_
                (lambda ()
                  (if (gx#stx-pair? _e169531169538_)
                      (let ((_e169534169546_ (gx#syntax-e _e169531169538_)))
                        (let ((_hd169535169549_ (##car _e169534169546_))
                              (_tl169536169551_ (##cdr _e169534169546_)))
                          (let ((_body169554_ _tl169536169551_))
                            (if '#t
                                (cons '%#extern _body169554_)
                                (_E169533169542_)))))
                      (_E169533169542_)))))
          (_E169532169556_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx169476_)
        (let* ((_e169477169490_ _stx169476_)
               (_E169479169494_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169477169490_)))
               (_E169478169526_
                (lambda ()
                  (if (gx#stx-pair? _e169477169490_)
                      (let ((_e169480169498_ (gx#syntax-e _e169477169490_)))
                        (let ((_hd169481169501_ (##car _e169480169498_))
                              (_tl169482169503_ (##cdr _e169480169498_)))
                          (if (gx#stx-pair? _tl169482169503_)
                              (let ((_e169483169506_
                                     (gx#syntax-e _tl169482169503_)))
                                (let ((_hd169484169509_
                                       (##car _e169483169506_))
                                      (_tl169485169511_
                                       (##cdr _e169483169506_)))
                                  (let ((_hd169514_ _hd169484169509_))
                                    (if (gx#stx-pair? _tl169485169511_)
                                        (let ((_e169486169516_
                                               (gx#syntax-e _tl169485169511_)))
                                          (let ((_hd169487169519_
                                                 (##car _e169486169516_))
                                                (_tl169488169521_
                                                 (##cdr _e169486169516_)))
                                            (let ((_expr169524_
                                                   _hd169487169519_))
                                              (if (gx#stx-null?
                                                   _tl169488169521_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd169514_)
                          (cons (gx#core-compile-top-syntax _expr169524_)
                                '())))
              (_E169479169494_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E169479169494_)))))
                                        (_E169479169494_)))))
                              (_E169479169494_))))
                      (_E169479169494_)))))
          (_E169478169526_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx169421_)
        (let* ((_e169422169435_ _stx169421_)
               (_E169424169439_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169422169435_)))
               (_E169423169472_
                (lambda ()
                  (if (gx#stx-pair? _e169422169435_)
                      (let ((_e169425169443_ (gx#syntax-e _e169422169435_)))
                        (let ((_hd169426169446_ (##car _e169425169443_))
                              (_tl169427169448_ (##cdr _e169425169443_)))
                          (if (gx#stx-pair? _tl169427169448_)
                              (let ((_e169428169451_
                                     (gx#syntax-e _tl169427169448_)))
                                (let ((_hd169429169454_
                                       (##car _e169428169451_))
                                      (_tl169430169456_
                                       (##cdr _e169428169451_)))
                                  (let ((_hd169459_ _hd169429169454_))
                                    (if (gx#stx-pair? _tl169430169456_)
                                        (let ((_e169431169461_
                                               (gx#syntax-e _tl169430169456_)))
                                          (let ((_hd169432169464_
                                                 (##car _e169431169461_))
                                                (_tl169433169466_
                                                 (##cdr _e169431169461_)))
                                            (let ((_expr169469_
                                                   _hd169432169464_))
                                              (if (gx#stx-null?
                                                   _tl169433169466_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd169459_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr169469_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E169424169439_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E169424169439_)))))
                                        (_E169424169439_)))))
                              (_E169424169439_))))
                      (_E169424169439_)))))
          (_E169423169472_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx169391_)
        (let* ((_e169392169399_ _stx169391_)
               (_E169394169403_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169392169399_)))
               (_E169393169417_
                (lambda ()
                  (if (gx#stx-pair? _e169392169399_)
                      (let ((_e169395169407_ (gx#syntax-e _e169392169399_)))
                        (let ((_hd169396169410_ (##car _e169395169407_))
                              (_tl169397169412_ (##cdr _e169395169407_)))
                          (let ((_body169415_ _tl169397169412_))
                            (if '#t
                                (cons '%#define-alias _body169415_)
                                (_E169394169403_)))))
                      (_E169394169403_)))))
          (_E169393169417_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx169361_)
        (let* ((_e169362169369_ _stx169361_)
               (_E169364169373_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169362169369_)))
               (_E169363169387_
                (lambda ()
                  (if (gx#stx-pair? _e169362169369_)
                      (let ((_e169365169377_ (gx#syntax-e _e169362169369_)))
                        (let ((_hd169366169380_ (##car _e169365169377_))
                              (_tl169367169382_ (##cdr _e169365169377_)))
                          (let ((_body169385_ _tl169367169382_))
                            (if '#t
                                (cons '%#define-runtime _body169385_)
                                (_E169364169373_)))))
                      (_E169364169373_)))))
          (_E169363169387_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx169331_)
        (let* ((_e169332169339_ _stx169331_)
               (_E169334169343_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169332169339_)))
               (_E169333169357_
                (lambda ()
                  (if (gx#stx-pair? _e169332169339_)
                      (let ((_e169335169347_ (gx#syntax-e _e169332169339_)))
                        (let ((_hd169336169350_ (##car _e169335169347_))
                              (_tl169337169352_ (##cdr _e169335169347_)))
                          (let ((_decls169355_ _tl169337169352_))
                            (if '#t
                                (cons '%#declare _decls169355_)
                                (_E169334169343_)))))
                      (_E169334169343_)))))
          (_E169333169357_))))
    (define gx#core-compile-top-lambda%
      (lambda (_stx169301_)
        (let* ((_e169302169309_ _stx169301_)
               (_E169304169313_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169302169309_)))
               (_E169303169327_
                (lambda ()
                  (if (gx#stx-pair? _e169302169309_)
                      (let ((_e169305169317_ (gx#syntax-e _e169302169309_)))
                        (let ((_hd169306169320_ (##car _e169305169317_))
                              (_tl169307169322_ (##cdr _e169305169317_)))
                          (let ((_clause169325_ _tl169307169322_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause169325_))
                                (_E169304169313_)))))
                      (_E169304169313_)))))
          (_E169303169327_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx169258_)
        (let* ((_e169259169269_ _stx169258_)
               (_E169261169273_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169259169269_)))
               (_E169260169297_
                (lambda ()
                  (if (gx#stx-pair? _e169259169269_)
                      (let ((_e169262169277_ (gx#syntax-e _e169259169269_)))
                        (let ((_hd169263169280_ (##car _e169262169277_))
                              (_tl169264169282_ (##cdr _e169262169277_)))
                          (let ((_hd169285_ _hd169263169280_))
                            (if (gx#stx-pair? _tl169264169282_)
                                (let ((_e169265169287_
                                       (gx#syntax-e _tl169264169282_)))
                                  (let ((_hd169266169290_
                                         (##car _e169265169287_))
                                        (_tl169267169292_
                                         (##cdr _e169265169287_)))
                                    (let ((_body169295_ _hd169266169290_))
                                      (if (gx#stx-null? _tl169267169292_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd169285_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body169295_)
                                                          '()))
                                              (_E169261169273_))
                                          (_E169261169273_)))))
                                (_E169261169273_)))))
                      (_E169261169273_)))))
          (_E169260169297_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx169228_)
        (let* ((_e169229169236_ _stx169228_)
               (_E169231169240_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169229169236_)))
               (_E169230169254_
                (lambda ()
                  (if (gx#stx-pair? _e169229169236_)
                      (let ((_e169232169244_ (gx#syntax-e _e169229169236_)))
                        (let ((_hd169233169247_ (##car _e169232169244_))
                              (_tl169234169249_ (##cdr _e169232169244_)))
                          (let ((_clauses169252_ _tl169234169249_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses169252_))
                                (_E169231169240_)))))
                      (_E169231169240_)))))
          (_E169230169254_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx169163_ _form169164_)
        (let* ((_e169165169178_ _stx169163_)
               (_E169167169182_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169165169178_)))
               (_E169166169214_
                (lambda ()
                  (if (gx#stx-pair? _e169165169178_)
                      (let ((_e169168169186_ (gx#syntax-e _e169165169178_)))
                        (let ((_hd169169169189_ (##car _e169168169186_))
                              (_tl169170169191_ (##cdr _e169168169186_)))
                          (if (gx#stx-pair? _tl169170169191_)
                              (let ((_e169171169194_
                                     (gx#syntax-e _tl169170169191_)))
                                (let ((_hd169172169197_
                                       (##car _e169171169194_))
                                      (_tl169173169199_
                                       (##cdr _e169171169194_)))
                                  (let ((_hd169202_ _hd169172169197_))
                                    (if (gx#stx-pair? _tl169173169199_)
                                        (let ((_e169174169204_
                                               (gx#syntax-e _tl169173169199_)))
                                          (let ((_hd169175169207_
                                                 (##car _e169174169204_))
                                                (_tl169176169209_
                                                 (##cdr _e169174169204_)))
                                            (let ((_body169212_
                                                   _hd169175169207_))
                                              (if (gx#stx-null?
                                                   _tl169176169209_)
                                                  (if '#t
                                                      (cons _form169164_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd169202_)
                          (cons (gx#core-compile-top-syntax _body169212_)
                                '())))
              (_E169167169182_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E169167169182_)))))
                                        (_E169167169182_)))))
                              (_E169167169182_))))
                      (_E169167169182_)))))
          (_E169166169214_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx169221_)
        (let ((_form169223_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx169221_ _form169223_))))
    (define gx#core-compile-top-let-values%
      (lambda _g174604_
        (let ((_g174603_ (##length _g174604_)))
          (cond ((##fx= _g174603_ 1)
                 (apply (lambda (_stx169221_)
                          (gx#core-compile-top-let-values%__0 _stx169221_))
                        _g174604_))
                ((##fx= _g174603_ 2)
                 (apply (lambda (_stx169225_ _form169226_)
                          (gx#core-compile-top-let-values%__%
                           _stx169225_
                           _form169226_))
                        _g174604_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g174604_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx169160_)
        (gx#core-compile-top-let-values%__% _stx169160_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx169158_)
        (gx#core-compile-top-let-values%__% _stx169158_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx169117_)
        (let* ((_e169118169128_ _stx169117_)
               (_E169120169132_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169118169128_)))
               (_E169119169154_
                (lambda ()
                  (if (gx#stx-pair? _e169118169128_)
                      (let ((_e169121169136_ (gx#syntax-e _e169118169128_)))
                        (let ((_hd169122169139_ (##car _e169121169136_))
                              (_tl169123169141_ (##cdr _e169121169136_)))
                          (if (gx#stx-pair? _tl169123169141_)
                              (let ((_e169124169144_
                                     (gx#syntax-e _tl169123169141_)))
                                (let ((_hd169125169147_
                                       (##car _e169124169144_))
                                      (_tl169126169149_
                                       (##cdr _e169124169144_)))
                                  (let ((_e169152_ _hd169125169147_))
                                    (if (gx#stx-null? _tl169126169149_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e169152_)
                                                        '()))
                                            (_E169120169132_))
                                        (_E169120169132_)))))
                              (_E169120169132_))))
                      (_E169120169132_)))))
          (_E169119169154_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx169076_)
        (let* ((_e169077169087_ _stx169076_)
               (_E169079169091_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169077169087_)))
               (_E169078169113_
                (lambda ()
                  (if (gx#stx-pair? _e169077169087_)
                      (let ((_e169080169095_ (gx#syntax-e _e169077169087_)))
                        (let ((_hd169081169098_ (##car _e169080169095_))
                              (_tl169082169100_ (##cdr _e169080169095_)))
                          (if (gx#stx-pair? _tl169082169100_)
                              (let ((_e169083169103_
                                     (gx#syntax-e _tl169082169100_)))
                                (let ((_hd169084169106_
                                       (##car _e169083169103_))
                                      (_tl169085169108_
                                       (##cdr _e169083169103_)))
                                  (let ((_e169111_ _hd169084169106_))
                                    (if (gx#stx-null? _tl169085169108_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e169111_)
                                                        '()))
                                            (_E169079169091_))
                                        (_E169079169091_)))))
                              (_E169079169091_))))
                      (_E169079169091_)))))
          (_E169078169113_))))
    (define gx#core-compile-top-call%
      (lambda (_stx169033_)
        (let* ((_e169034169044_ _stx169033_)
               (_E169036169048_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169034169044_)))
               (_E169035169072_
                (lambda ()
                  (if (gx#stx-pair? _e169034169044_)
                      (let ((_e169037169052_ (gx#syntax-e _e169034169044_)))
                        (let ((_hd169038169055_ (##car _e169037169052_))
                              (_tl169039169057_ (##cdr _e169037169052_)))
                          (if (gx#stx-pair? _tl169039169057_)
                              (let ((_e169040169060_
                                     (gx#syntax-e _tl169039169057_)))
                                (let ((_hd169041169063_
                                       (##car _e169040169060_))
                                      (_tl169042169065_
                                       (##cdr _e169040169060_)))
                                  (let* ((_rator169068_ _hd169041169063_)
                                         (_args169070_ _tl169042169065_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator169068_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args169070_)))
                                        (_E169036169048_)))))
                              (_E169036169048_))))
                      (_E169036169048_)))))
          (_E169035169072_))))
    (define gx#core-compile-top-if%
      (lambda (_stx168966_)
        (let* ((_e168967168983_ _stx168966_)
               (_E168969168987_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168967168983_)))
               (_E168968169029_
                (lambda ()
                  (if (gx#stx-pair? _e168967168983_)
                      (let ((_e168970168991_ (gx#syntax-e _e168967168983_)))
                        (let ((_hd168971168994_ (##car _e168970168991_))
                              (_tl168972168996_ (##cdr _e168970168991_)))
                          (if (gx#stx-pair? _tl168972168996_)
                              (let ((_e168973168999_
                                     (gx#syntax-e _tl168972168996_)))
                                (let ((_hd168974169002_
                                       (##car _e168973168999_))
                                      (_tl168975169004_
                                       (##cdr _e168973168999_)))
                                  (let ((_test169007_ _hd168974169002_))
                                    (if (gx#stx-pair? _tl168975169004_)
                                        (let ((_e168976169009_
                                               (gx#syntax-e _tl168975169004_)))
                                          (let ((_hd168977169012_
                                                 (##car _e168976169009_))
                                                (_tl168978169014_
                                                 (##cdr _e168976169009_)))
                                            (let ((_K169017_ _hd168977169012_))
                                              (if (gx#stx-pair?
                                                   _tl168978169014_)
                                                  (let ((_e168979169019_
                                                         (gx#syntax-e
                                                          _tl168978169014_)))
                                                    (let ((_hd168980169022_
                                                           (##car _e168979169019_))
                                                          (_tl168981169024_
                                                           (##cdr _e168979169019_)))
                                                      (let ((_E169027_
                                                             _hd168980169022_))
                                                        (if (gx#stx-null?
                                                             _tl168981169024_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test169007_)
                                    (cons (gx#core-compile-top-syntax
                                           _K169017_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E169027_)
                                                '()))))
                        (_E168969168987_))
                    (_E168969168987_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E168969168987_)))))
                                        (_E168969168987_)))))
                              (_E168969168987_))))
                      (_E168969168987_)))))
          (_E168968169029_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx168925_)
        (let* ((_e168926168936_ _stx168925_)
               (_E168928168940_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168926168936_)))
               (_E168927168962_
                (lambda ()
                  (if (gx#stx-pair? _e168926168936_)
                      (let ((_e168929168944_ (gx#syntax-e _e168926168936_)))
                        (let ((_hd168930168947_ (##car _e168929168944_))
                              (_tl168931168949_ (##cdr _e168929168944_)))
                          (if (gx#stx-pair? _tl168931168949_)
                              (let ((_e168932168952_
                                     (gx#syntax-e _tl168931168949_)))
                                (let ((_hd168933168955_
                                       (##car _e168932168952_))
                                      (_tl168934168957_
                                       (##cdr _e168932168952_)))
                                  (let ((_id168960_ _hd168933168955_))
                                    (if (gx#stx-null? _tl168934168957_)
                                        (if (gx#identifier? _id168960_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id168960_)
                                                        '()))
                                            (_E168928168940_))
                                        (_E168928168940_)))))
                              (_E168928168940_))))
                      (_E168928168940_)))))
          (_E168927168962_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx168871_)
        (let* ((_e168872168885_ _stx168871_)
               (_E168874168889_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168872168885_)))
               (_E168873168921_
                (lambda ()
                  (if (gx#stx-pair? _e168872168885_)
                      (let ((_e168875168893_ (gx#syntax-e _e168872168885_)))
                        (let ((_hd168876168896_ (##car _e168875168893_))
                              (_tl168877168898_ (##cdr _e168875168893_)))
                          (if (gx#stx-pair? _tl168877168898_)
                              (let ((_e168878168901_
                                     (gx#syntax-e _tl168877168898_)))
                                (let ((_hd168879168904_
                                       (##car _e168878168901_))
                                      (_tl168880168906_
                                       (##cdr _e168878168901_)))
                                  (let ((_id168909_ _hd168879168904_))
                                    (if (gx#stx-pair? _tl168880168906_)
                                        (let ((_e168881168911_
                                               (gx#syntax-e _tl168880168906_)))
                                          (let ((_hd168882168914_
                                                 (##car _e168881168911_))
                                                (_tl168883168916_
                                                 (##cdr _e168881168911_)))
                                            (let ((_expr168919_
                                                   _hd168882168914_))
                                              (if (gx#stx-null?
                                                   _tl168883168916_)
                                                  (if (gx#identifier?
                                                       _id168909_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id168909_)
                          (cons (gx#core-compile-top-syntax _expr168919_)
                                '())))
              (_E168874168889_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E168874168889_)))))
                                        (_E168874168889_)))))
                              (_E168874168889_))))
                      (_E168874168889_)))))
          (_E168873168921_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id168866_)
        (let ((_$e168868_ (gx#resolve-identifier__0 _id168866_)))
          (if _$e168868_
              (##unchecked-structure-ref _$e168868_ '1 gx#binding::t '#f)
              _id168866_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd168864_)
        (if (gx#identifier? _hd168864_)
            (gx#core-compile-top-runtime-ref _hd168864_)
            '#f)))))
