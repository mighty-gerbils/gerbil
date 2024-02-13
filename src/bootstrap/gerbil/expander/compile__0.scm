(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1707844657)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx170008_)
        (let* ((_e170009170016_ _stx170008_)
               (_E170011170020_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e170009170016_)))
               (_E170010170034_
                (lambda ()
                  (if (gx#stx-pair? _e170009170016_)
                      (let ((_e170012170024_ (gx#syntax-e _e170009170016_)))
                        (let ((_hd170013170027_ (##car _e170012170024_))
                              (_tl170014170029_ (##cdr _e170012170024_)))
                          (let ((_form170032_ _hd170013170027_))
                            (if '#t
                                (let* ((__self174605
                                        (gx#syntax-local-e__0 _form170032_))
                                       (__method174606
                                        (method-ref
                                         __self174605
                                         'compile-top-syntax)))
                                  (if __method174606
                                      (__method174606 __self174605 _stx170008_)
                                      (error '"Missing method"
                                             __self174605
                                             'compile-top-syntax)))
                                (_E170011170020_)))))
                      (_E170011170020_)))))
          (_E170010170034_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self169968_ _stx169969_)
        (let* ((_self169970169978_ _self169968_)
               (_E169972169982_
                (lambda () (error '"No clause matching" _self169970169978_)))
               (_K169973169994_
                (lambda (_K169985_)
                  (let ((_$e169987_ (gx#stx-source _stx169969_)))
                    (if _$e169987_
                        ((lambda (_g169989169991_)
                           (gx#stx-wrap-source
                            (_K169985_ _stx169969_)
                            _g169989169991_))
                         _$e169987_)
                        (_K169985_ _stx169969_))))))
          (if (##structure-instance-of?
               _self169970169978_
               'gx#core-expander::t)
              (let* ((_e169974169997_
                      (##unchecked-structure-ref
                       _self169970169978_
                       '1
                       gx#expander::t
                       '#f))
                     (_e169975170000_
                      (##unchecked-structure-ref
                       _self169970169978_
                       '2
                       gx#core-expander::t
                       '#f))
                     (_e169976170003_
                      (##unchecked-structure-ref
                       _self169970169978_
                       '3
                       gx#core-expander::t
                       '#f))
                     (_K170006_ _e169976170003_))
                (_K169973169994_ _K170006_))
              (_E169972169982_)))))
    (bind-method!
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx169842_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx169842_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx169812_)
        (let* ((_e169813169820_ _stx169812_)
               (_E169815169824_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169813169820_)))
               (_E169814169838_
                (lambda ()
                  (if (gx#stx-pair? _e169813169820_)
                      (let ((_e169816169828_ (gx#syntax-e _e169813169820_)))
                        (let ((_hd169817169831_ (##car _e169816169828_))
                              (_tl169818169833_ (##cdr _e169816169828_)))
                          (let ((_body169836_ _tl169818169833_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body169836_))
                                (_E169815169824_)))))
                      (_E169815169824_)))))
          (_E169814169838_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx169781_)
        (let* ((_e169782169789_ _stx169781_)
               (_E169784169793_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169782169789_)))
               (_E169783169808_
                (lambda ()
                  (if (gx#stx-pair? _e169782169789_)
                      (let ((_e169785169797_ (gx#syntax-e _e169782169789_)))
                        (let ((_hd169786169800_ (##car _e169785169797_))
                              (_tl169787169802_ (##cdr _e169785169797_)))
                          (let ((_body169805_ _tl169787169802_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body169805_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E169784169793_)))))
                      (_E169784169793_)))))
          (_E169783169808_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_stx169751_)
        (let* ((_e169752169759_ _stx169751_)
               (_E169754169763_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169752169759_)))
               (_E169753169777_
                (lambda ()
                  (if (gx#stx-pair? _e169752169759_)
                      (let ((_e169755169767_ (gx#syntax-e _e169752169759_)))
                        (let ((_hd169756169770_ (##car _e169755169767_))
                              (_tl169757169772_ (##cdr _e169755169767_)))
                          (let ((_body169775_ _tl169757169772_))
                            (if '#t
                                (cons '%#begin-foreign _body169775_)
                                (_E169754169763_)))))
                      (_E169754169763_)))))
          (_E169753169777_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_stx169697_)
        (let* ((_e169698169711_ _stx169697_)
               (_E169700169715_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169698169711_)))
               (_E169699169747_
                (lambda ()
                  (if (gx#stx-pair? _e169698169711_)
                      (let ((_e169701169719_ (gx#syntax-e _e169698169711_)))
                        (let ((_hd169702169722_ (##car _e169701169719_))
                              (_tl169703169724_ (##cdr _e169701169719_)))
                          (if (gx#stx-pair? _tl169703169724_)
                              (let ((_e169704169727_
                                     (gx#syntax-e _tl169703169724_)))
                                (let ((_hd169705169730_
                                       (##car _e169704169727_))
                                      (_tl169706169732_
                                       (##cdr _e169704169727_)))
                                  (let ((_ann169735_ _hd169705169730_))
                                    (if (gx#stx-pair? _tl169706169732_)
                                        (let ((_e169707169737_
                                               (gx#syntax-e _tl169706169732_)))
                                          (let ((_hd169708169740_
                                                 (##car _e169707169737_))
                                                (_tl169709169742_
                                                 (##cdr _e169707169737_)))
                                            (let ((_expr169745_
                                                   _hd169708169740_))
                                              (if (gx#stx-null?
                                                   _tl169709169742_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr169745_)
                                                      (_E169700169715_))
                                                  (_E169700169715_)))))
                                        (_E169700169715_)))))
                              (_E169700169715_))))
                      (_E169700169715_)))))
          (_E169699169747_))))
    (define gx#core-compile-top-import%
      (lambda (_stx169667_)
        (let* ((_e169668169675_ _stx169667_)
               (_E169670169679_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169668169675_)))
               (_E169669169693_
                (lambda ()
                  (if (gx#stx-pair? _e169668169675_)
                      (let ((_e169671169683_ (gx#syntax-e _e169668169675_)))
                        (let ((_hd169672169686_ (##car _e169671169683_))
                              (_tl169673169688_ (##cdr _e169671169683_)))
                          (let ((_body169691_ _tl169673169688_))
                            (if '#t
                                (cons '%#import _body169691_)
                                (_E169670169679_)))))
                      (_E169670169679_)))))
          (_E169669169693_))))
    (define gx#core-compile-top-module%
      (lambda (_stx169624_)
        (let* ((_e169625169635_ _stx169624_)
               (_E169627169639_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169625169635_)))
               (_E169626169663_
                (lambda ()
                  (if (gx#stx-pair? _e169625169635_)
                      (let ((_e169628169643_ (gx#syntax-e _e169625169635_)))
                        (let ((_hd169629169646_ (##car _e169628169643_))
                              (_tl169630169648_ (##cdr _e169628169643_)))
                          (if (gx#stx-pair? _tl169630169648_)
                              (let ((_e169631169651_
                                     (gx#syntax-e _tl169630169648_)))
                                (let ((_hd169632169654_
                                       (##car _e169631169651_))
                                      (_tl169633169656_
                                       (##cdr _e169631169651_)))
                                  (let* ((_hd169659_ _hd169632169654_)
                                         (_body169661_ _tl169633169656_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _hd169659_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body169661_)))
                                        (_E169627169639_)))))
                              (_E169627169639_))))
                      (_E169627169639_)))))
          (_E169626169663_))))
    (define gx#core-compile-top-export%
      (lambda (_stx169594_)
        (let* ((_e169595169602_ _stx169594_)
               (_E169597169606_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169595169602_)))
               (_E169596169620_
                (lambda ()
                  (if (gx#stx-pair? _e169595169602_)
                      (let ((_e169598169610_ (gx#syntax-e _e169595169602_)))
                        (let ((_hd169599169613_ (##car _e169598169610_))
                              (_tl169600169615_ (##cdr _e169598169610_)))
                          (let ((_body169618_ _tl169600169615_))
                            (if '#t
                                (cons '%#export _body169618_)
                                (_E169597169606_)))))
                      (_E169597169606_)))))
          (_E169596169620_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx169564_)
        (let* ((_e169565169572_ _stx169564_)
               (_E169567169576_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169565169572_)))
               (_E169566169590_
                (lambda ()
                  (if (gx#stx-pair? _e169565169572_)
                      (let ((_e169568169580_ (gx#syntax-e _e169565169572_)))
                        (let ((_hd169569169583_ (##car _e169568169580_))
                              (_tl169570169585_ (##cdr _e169568169580_)))
                          (let ((_body169588_ _tl169570169585_))
                            (if '#t
                                (cons '%#provide _body169588_)
                                (_E169567169576_)))))
                      (_E169567169576_)))))
          (_E169566169590_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx169534_)
        (let* ((_e169535169542_ _stx169534_)
               (_E169537169546_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169535169542_)))
               (_E169536169560_
                (lambda ()
                  (if (gx#stx-pair? _e169535169542_)
                      (let ((_e169538169550_ (gx#syntax-e _e169535169542_)))
                        (let ((_hd169539169553_ (##car _e169538169550_))
                              (_tl169540169555_ (##cdr _e169538169550_)))
                          (let ((_body169558_ _tl169540169555_))
                            (if '#t
                                (cons '%#extern _body169558_)
                                (_E169537169546_)))))
                      (_E169537169546_)))))
          (_E169536169560_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx169480_)
        (let* ((_e169481169494_ _stx169480_)
               (_E169483169498_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169481169494_)))
               (_E169482169530_
                (lambda ()
                  (if (gx#stx-pair? _e169481169494_)
                      (let ((_e169484169502_ (gx#syntax-e _e169481169494_)))
                        (let ((_hd169485169505_ (##car _e169484169502_))
                              (_tl169486169507_ (##cdr _e169484169502_)))
                          (if (gx#stx-pair? _tl169486169507_)
                              (let ((_e169487169510_
                                     (gx#syntax-e _tl169486169507_)))
                                (let ((_hd169488169513_
                                       (##car _e169487169510_))
                                      (_tl169489169515_
                                       (##cdr _e169487169510_)))
                                  (let ((_hd169518_ _hd169488169513_))
                                    (if (gx#stx-pair? _tl169489169515_)
                                        (let ((_e169490169520_
                                               (gx#syntax-e _tl169489169515_)))
                                          (let ((_hd169491169523_
                                                 (##car _e169490169520_))
                                                (_tl169492169525_
                                                 (##cdr _e169490169520_)))
                                            (let ((_expr169528_
                                                   _hd169491169523_))
                                              (if (gx#stx-null?
                                                   _tl169492169525_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd169518_)
                          (cons (gx#core-compile-top-syntax _expr169528_)
                                '())))
              (_E169483169498_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E169483169498_)))))
                                        (_E169483169498_)))))
                              (_E169483169498_))))
                      (_E169483169498_)))))
          (_E169482169530_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx169425_)
        (let* ((_e169426169439_ _stx169425_)
               (_E169428169443_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169426169439_)))
               (_E169427169476_
                (lambda ()
                  (if (gx#stx-pair? _e169426169439_)
                      (let ((_e169429169447_ (gx#syntax-e _e169426169439_)))
                        (let ((_hd169430169450_ (##car _e169429169447_))
                              (_tl169431169452_ (##cdr _e169429169447_)))
                          (if (gx#stx-pair? _tl169431169452_)
                              (let ((_e169432169455_
                                     (gx#syntax-e _tl169431169452_)))
                                (let ((_hd169433169458_
                                       (##car _e169432169455_))
                                      (_tl169434169460_
                                       (##cdr _e169432169455_)))
                                  (let ((_hd169463_ _hd169433169458_))
                                    (if (gx#stx-pair? _tl169434169460_)
                                        (let ((_e169435169465_
                                               (gx#syntax-e _tl169434169460_)))
                                          (let ((_hd169436169468_
                                                 (##car _e169435169465_))
                                                (_tl169437169470_
                                                 (##cdr _e169435169465_)))
                                            (let ((_expr169473_
                                                   _hd169436169468_))
                                              (if (gx#stx-null?
                                                   _tl169437169470_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd169463_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr169473_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E169428169443_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E169428169443_)))))
                                        (_E169428169443_)))))
                              (_E169428169443_))))
                      (_E169428169443_)))))
          (_E169427169476_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx169395_)
        (let* ((_e169396169403_ _stx169395_)
               (_E169398169407_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169396169403_)))
               (_E169397169421_
                (lambda ()
                  (if (gx#stx-pair? _e169396169403_)
                      (let ((_e169399169411_ (gx#syntax-e _e169396169403_)))
                        (let ((_hd169400169414_ (##car _e169399169411_))
                              (_tl169401169416_ (##cdr _e169399169411_)))
                          (let ((_body169419_ _tl169401169416_))
                            (if '#t
                                (cons '%#define-alias _body169419_)
                                (_E169398169407_)))))
                      (_E169398169407_)))))
          (_E169397169421_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx169365_)
        (let* ((_e169366169373_ _stx169365_)
               (_E169368169377_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169366169373_)))
               (_E169367169391_
                (lambda ()
                  (if (gx#stx-pair? _e169366169373_)
                      (let ((_e169369169381_ (gx#syntax-e _e169366169373_)))
                        (let ((_hd169370169384_ (##car _e169369169381_))
                              (_tl169371169386_ (##cdr _e169369169381_)))
                          (let ((_body169389_ _tl169371169386_))
                            (if '#t
                                (cons '%#define-runtime _body169389_)
                                (_E169368169377_)))))
                      (_E169368169377_)))))
          (_E169367169391_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx169335_)
        (let* ((_e169336169343_ _stx169335_)
               (_E169338169347_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169336169343_)))
               (_E169337169361_
                (lambda ()
                  (if (gx#stx-pair? _e169336169343_)
                      (let ((_e169339169351_ (gx#syntax-e _e169336169343_)))
                        (let ((_hd169340169354_ (##car _e169339169351_))
                              (_tl169341169356_ (##cdr _e169339169351_)))
                          (let ((_decls169359_ _tl169341169356_))
                            (if '#t
                                (cons '%#declare _decls169359_)
                                (_E169338169347_)))))
                      (_E169338169347_)))))
          (_E169337169361_))))
    (define gx#core-compile-top-lambda%
      (lambda (_stx169305_)
        (let* ((_e169306169313_ _stx169305_)
               (_E169308169317_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169306169313_)))
               (_E169307169331_
                (lambda ()
                  (if (gx#stx-pair? _e169306169313_)
                      (let ((_e169309169321_ (gx#syntax-e _e169306169313_)))
                        (let ((_hd169310169324_ (##car _e169309169321_))
                              (_tl169311169326_ (##cdr _e169309169321_)))
                          (let ((_clause169329_ _tl169311169326_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause169329_))
                                (_E169308169317_)))))
                      (_E169308169317_)))))
          (_E169307169331_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx169262_)
        (let* ((_e169263169273_ _stx169262_)
               (_E169265169277_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169263169273_)))
               (_E169264169301_
                (lambda ()
                  (if (gx#stx-pair? _e169263169273_)
                      (let ((_e169266169281_ (gx#syntax-e _e169263169273_)))
                        (let ((_hd169267169284_ (##car _e169266169281_))
                              (_tl169268169286_ (##cdr _e169266169281_)))
                          (let ((_hd169289_ _hd169267169284_))
                            (if (gx#stx-pair? _tl169268169286_)
                                (let ((_e169269169291_
                                       (gx#syntax-e _tl169268169286_)))
                                  (let ((_hd169270169294_
                                         (##car _e169269169291_))
                                        (_tl169271169296_
                                         (##cdr _e169269169291_)))
                                    (let ((_body169299_ _hd169270169294_))
                                      (if (gx#stx-null? _tl169271169296_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd169289_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body169299_)
                                                          '()))
                                              (_E169265169277_))
                                          (_E169265169277_)))))
                                (_E169265169277_)))))
                      (_E169265169277_)))))
          (_E169264169301_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx169232_)
        (let* ((_e169233169240_ _stx169232_)
               (_E169235169244_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169233169240_)))
               (_E169234169258_
                (lambda ()
                  (if (gx#stx-pair? _e169233169240_)
                      (let ((_e169236169248_ (gx#syntax-e _e169233169240_)))
                        (let ((_hd169237169251_ (##car _e169236169248_))
                              (_tl169238169253_ (##cdr _e169236169248_)))
                          (let ((_clauses169256_ _tl169238169253_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses169256_))
                                (_E169235169244_)))))
                      (_E169235169244_)))))
          (_E169234169258_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx169167_ _form169168_)
        (let* ((_e169169169182_ _stx169167_)
               (_E169171169186_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169169169182_)))
               (_E169170169218_
                (lambda ()
                  (if (gx#stx-pair? _e169169169182_)
                      (let ((_e169172169190_ (gx#syntax-e _e169169169182_)))
                        (let ((_hd169173169193_ (##car _e169172169190_))
                              (_tl169174169195_ (##cdr _e169172169190_)))
                          (if (gx#stx-pair? _tl169174169195_)
                              (let ((_e169175169198_
                                     (gx#syntax-e _tl169174169195_)))
                                (let ((_hd169176169201_
                                       (##car _e169175169198_))
                                      (_tl169177169203_
                                       (##cdr _e169175169198_)))
                                  (let ((_hd169206_ _hd169176169201_))
                                    (if (gx#stx-pair? _tl169177169203_)
                                        (let ((_e169178169208_
                                               (gx#syntax-e _tl169177169203_)))
                                          (let ((_hd169179169211_
                                                 (##car _e169178169208_))
                                                (_tl169180169213_
                                                 (##cdr _e169178169208_)))
                                            (let ((_body169216_
                                                   _hd169179169211_))
                                              (if (gx#stx-null?
                                                   _tl169180169213_)
                                                  (if '#t
                                                      (cons _form169168_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd169206_)
                          (cons (gx#core-compile-top-syntax _body169216_)
                                '())))
              (_E169171169186_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E169171169186_)))))
                                        (_E169171169186_)))))
                              (_E169171169186_))))
                      (_E169171169186_)))))
          (_E169170169218_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx169225_)
        (let ((_form169227_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx169225_ _form169227_))))
    (define gx#core-compile-top-let-values%
      (lambda _g174608_
        (let ((_g174607_ (##length _g174608_)))
          (cond ((##fx= _g174607_ 1)
                 (apply (lambda (_stx169225_)
                          (gx#core-compile-top-let-values%__0 _stx169225_))
                        _g174608_))
                ((##fx= _g174607_ 2)
                 (apply (lambda (_stx169229_ _form169230_)
                          (gx#core-compile-top-let-values%__%
                           _stx169229_
                           _form169230_))
                        _g174608_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g174608_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx169164_)
        (gx#core-compile-top-let-values%__% _stx169164_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx169162_)
        (gx#core-compile-top-let-values%__% _stx169162_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx169121_)
        (let* ((_e169122169132_ _stx169121_)
               (_E169124169136_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169122169132_)))
               (_E169123169158_
                (lambda ()
                  (if (gx#stx-pair? _e169122169132_)
                      (let ((_e169125169140_ (gx#syntax-e _e169122169132_)))
                        (let ((_hd169126169143_ (##car _e169125169140_))
                              (_tl169127169145_ (##cdr _e169125169140_)))
                          (if (gx#stx-pair? _tl169127169145_)
                              (let ((_e169128169148_
                                     (gx#syntax-e _tl169127169145_)))
                                (let ((_hd169129169151_
                                       (##car _e169128169148_))
                                      (_tl169130169153_
                                       (##cdr _e169128169148_)))
                                  (let ((_e169156_ _hd169129169151_))
                                    (if (gx#stx-null? _tl169130169153_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e169156_)
                                                        '()))
                                            (_E169124169136_))
                                        (_E169124169136_)))))
                              (_E169124169136_))))
                      (_E169124169136_)))))
          (_E169123169158_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx169080_)
        (let* ((_e169081169091_ _stx169080_)
               (_E169083169095_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169081169091_)))
               (_E169082169117_
                (lambda ()
                  (if (gx#stx-pair? _e169081169091_)
                      (let ((_e169084169099_ (gx#syntax-e _e169081169091_)))
                        (let ((_hd169085169102_ (##car _e169084169099_))
                              (_tl169086169104_ (##cdr _e169084169099_)))
                          (if (gx#stx-pair? _tl169086169104_)
                              (let ((_e169087169107_
                                     (gx#syntax-e _tl169086169104_)))
                                (let ((_hd169088169110_
                                       (##car _e169087169107_))
                                      (_tl169089169112_
                                       (##cdr _e169087169107_)))
                                  (let ((_e169115_ _hd169088169110_))
                                    (if (gx#stx-null? _tl169089169112_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e169115_)
                                                        '()))
                                            (_E169083169095_))
                                        (_E169083169095_)))))
                              (_E169083169095_))))
                      (_E169083169095_)))))
          (_E169082169117_))))
    (define gx#core-compile-top-call%
      (lambda (_stx169037_)
        (let* ((_e169038169048_ _stx169037_)
               (_E169040169052_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169038169048_)))
               (_E169039169076_
                (lambda ()
                  (if (gx#stx-pair? _e169038169048_)
                      (let ((_e169041169056_ (gx#syntax-e _e169038169048_)))
                        (let ((_hd169042169059_ (##car _e169041169056_))
                              (_tl169043169061_ (##cdr _e169041169056_)))
                          (if (gx#stx-pair? _tl169043169061_)
                              (let ((_e169044169064_
                                     (gx#syntax-e _tl169043169061_)))
                                (let ((_hd169045169067_
                                       (##car _e169044169064_))
                                      (_tl169046169069_
                                       (##cdr _e169044169064_)))
                                  (let* ((_rator169072_ _hd169045169067_)
                                         (_args169074_ _tl169046169069_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator169072_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args169074_)))
                                        (_E169040169052_)))))
                              (_E169040169052_))))
                      (_E169040169052_)))))
          (_E169039169076_))))
    (define gx#core-compile-top-if%
      (lambda (_stx168970_)
        (let* ((_e168971168987_ _stx168970_)
               (_E168973168991_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168971168987_)))
               (_E168972169033_
                (lambda ()
                  (if (gx#stx-pair? _e168971168987_)
                      (let ((_e168974168995_ (gx#syntax-e _e168971168987_)))
                        (let ((_hd168975168998_ (##car _e168974168995_))
                              (_tl168976169000_ (##cdr _e168974168995_)))
                          (if (gx#stx-pair? _tl168976169000_)
                              (let ((_e168977169003_
                                     (gx#syntax-e _tl168976169000_)))
                                (let ((_hd168978169006_
                                       (##car _e168977169003_))
                                      (_tl168979169008_
                                       (##cdr _e168977169003_)))
                                  (let ((_test169011_ _hd168978169006_))
                                    (if (gx#stx-pair? _tl168979169008_)
                                        (let ((_e168980169013_
                                               (gx#syntax-e _tl168979169008_)))
                                          (let ((_hd168981169016_
                                                 (##car _e168980169013_))
                                                (_tl168982169018_
                                                 (##cdr _e168980169013_)))
                                            (let ((_K169021_ _hd168981169016_))
                                              (if (gx#stx-pair?
                                                   _tl168982169018_)
                                                  (let ((_e168983169023_
                                                         (gx#syntax-e
                                                          _tl168982169018_)))
                                                    (let ((_hd168984169026_
                                                           (##car _e168983169023_))
                                                          (_tl168985169028_
                                                           (##cdr _e168983169023_)))
                                                      (let ((_E169031_
                                                             _hd168984169026_))
                                                        (if (gx#stx-null?
                                                             _tl168985169028_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test169011_)
                                    (cons (gx#core-compile-top-syntax
                                           _K169021_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E169031_)
                                                '()))))
                        (_E168973168991_))
                    (_E168973168991_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E168973168991_)))))
                                        (_E168973168991_)))))
                              (_E168973168991_))))
                      (_E168973168991_)))))
          (_E168972169033_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx168929_)
        (let* ((_e168930168940_ _stx168929_)
               (_E168932168944_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168930168940_)))
               (_E168931168966_
                (lambda ()
                  (if (gx#stx-pair? _e168930168940_)
                      (let ((_e168933168948_ (gx#syntax-e _e168930168940_)))
                        (let ((_hd168934168951_ (##car _e168933168948_))
                              (_tl168935168953_ (##cdr _e168933168948_)))
                          (if (gx#stx-pair? _tl168935168953_)
                              (let ((_e168936168956_
                                     (gx#syntax-e _tl168935168953_)))
                                (let ((_hd168937168959_
                                       (##car _e168936168956_))
                                      (_tl168938168961_
                                       (##cdr _e168936168956_)))
                                  (let ((_id168964_ _hd168937168959_))
                                    (if (gx#stx-null? _tl168938168961_)
                                        (if (gx#identifier? _id168964_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id168964_)
                                                        '()))
                                            (_E168932168944_))
                                        (_E168932168944_)))))
                              (_E168932168944_))))
                      (_E168932168944_)))))
          (_E168931168966_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx168875_)
        (let* ((_e168876168889_ _stx168875_)
               (_E168878168893_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168876168889_)))
               (_E168877168925_
                (lambda ()
                  (if (gx#stx-pair? _e168876168889_)
                      (let ((_e168879168897_ (gx#syntax-e _e168876168889_)))
                        (let ((_hd168880168900_ (##car _e168879168897_))
                              (_tl168881168902_ (##cdr _e168879168897_)))
                          (if (gx#stx-pair? _tl168881168902_)
                              (let ((_e168882168905_
                                     (gx#syntax-e _tl168881168902_)))
                                (let ((_hd168883168908_
                                       (##car _e168882168905_))
                                      (_tl168884168910_
                                       (##cdr _e168882168905_)))
                                  (let ((_id168913_ _hd168883168908_))
                                    (if (gx#stx-pair? _tl168884168910_)
                                        (let ((_e168885168915_
                                               (gx#syntax-e _tl168884168910_)))
                                          (let ((_hd168886168918_
                                                 (##car _e168885168915_))
                                                (_tl168887168920_
                                                 (##cdr _e168885168915_)))
                                            (let ((_expr168923_
                                                   _hd168886168918_))
                                              (if (gx#stx-null?
                                                   _tl168887168920_)
                                                  (if (gx#identifier?
                                                       _id168913_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id168913_)
                          (cons (gx#core-compile-top-syntax _expr168923_)
                                '())))
              (_E168878168893_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E168878168893_)))))
                                        (_E168878168893_)))))
                              (_E168878168893_))))
                      (_E168878168893_)))))
          (_E168877168925_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id168870_)
        (let ((_$e168872_ (gx#resolve-identifier__0 _id168870_)))
          (if _$e168872_
              (##unchecked-structure-ref _$e168872_ '1 gx#binding::t '#f)
              _id168870_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd168868_)
        (if (gx#identifier? _hd168868_)
            (gx#core-compile-top-runtime-ref _hd168868_)
            '#f)))))
