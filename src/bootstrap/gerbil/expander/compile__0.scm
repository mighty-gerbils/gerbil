(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1708280334)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx179032_)
        (let* ((_e179033179040_ _stx179032_)
               (_E179035179044_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e179033179040_)))
               (_E179034179058_
                (lambda ()
                  (if (gx#stx-pair? _e179033179040_)
                      (let ((_e179036179048_ (gx#syntax-e _e179033179040_)))
                        (let ((_hd179037179051_ (##car _e179036179048_))
                              (_tl179038179053_ (##cdr _e179036179048_)))
                          (let ((_form179056_ _hd179037179051_))
                            (if '#t
                                (let* ((__self183128
                                        (gx#syntax-local-e__0 _form179056_))
                                       (__method183129
                                        (method-ref
                                         __self183128
                                         'compile-top-syntax)))
                                  (if __method183129
                                      (__method183129 __self183128 _stx179032_)
                                      (error '"Missing method"
                                             __self183128
                                             'compile-top-syntax)))
                                (_E179035179044_)))))
                      (_E179035179044_)))))
          (_E179034179058_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self178992_ _stx178993_)
        (let* ((_self178994179002_ _self178992_)
               (_E178996179006_
                (lambda () (error '"No clause matching" _self178994179002_)))
               (_K178997179018_
                (lambda (_K179009_)
                  (let ((_$e179011_ (gx#stx-source _stx178993_)))
                    (if _$e179011_
                        ((lambda (_g179013179015_)
                           (gx#stx-wrap-source
                            (_K179009_ _stx178993_)
                            _g179013179015_))
                         _$e179011_)
                        (_K179009_ _stx178993_))))))
          (if (##structure-instance-of?
               _self178994179002_
               'gx#core-expander::t)
              (let* ((_e178998179021_
                      (##unchecked-structure-ref
                       _self178994179002_
                       '1
                       gx#expander::t
                       '#f))
                     (_e178999179024_
                      (##unchecked-structure-ref
                       _self178994179002_
                       '2
                       gx#core-expander::t
                       '#f))
                     (_e179000179027_
                      (##unchecked-structure-ref
                       _self178994179002_
                       '3
                       gx#core-expander::t
                       '#f))
                     (_K179030_ _e179000179027_))
                (_K178997179018_ _K179030_))
              (_E178996179006_)))))
    (bind-method!
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx178866_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx178866_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx178836_)
        (let* ((_e178837178844_ _stx178836_)
               (_E178839178848_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e178837178844_)))
               (_E178838178862_
                (lambda ()
                  (if (gx#stx-pair? _e178837178844_)
                      (let ((_e178840178852_ (gx#syntax-e _e178837178844_)))
                        (let ((_hd178841178855_ (##car _e178840178852_))
                              (_tl178842178857_ (##cdr _e178840178852_)))
                          (let ((_body178860_ _tl178842178857_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body178860_))
                                (_E178839178848_)))))
                      (_E178839178848_)))))
          (_E178838178862_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx178805_)
        (let* ((_e178806178813_ _stx178805_)
               (_E178808178817_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e178806178813_)))
               (_E178807178832_
                (lambda ()
                  (if (gx#stx-pair? _e178806178813_)
                      (let ((_e178809178821_ (gx#syntax-e _e178806178813_)))
                        (let ((_hd178810178824_ (##car _e178809178821_))
                              (_tl178811178826_ (##cdr _e178809178821_)))
                          (let ((_body178829_ _tl178811178826_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body178829_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E178808178817_)))))
                      (_E178808178817_)))))
          (_E178807178832_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_stx178775_)
        (let* ((_e178776178783_ _stx178775_)
               (_E178778178787_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e178776178783_)))
               (_E178777178801_
                (lambda ()
                  (if (gx#stx-pair? _e178776178783_)
                      (let ((_e178779178791_ (gx#syntax-e _e178776178783_)))
                        (let ((_hd178780178794_ (##car _e178779178791_))
                              (_tl178781178796_ (##cdr _e178779178791_)))
                          (let ((_body178799_ _tl178781178796_))
                            (if '#t
                                (cons '%#begin-foreign _body178799_)
                                (_E178778178787_)))))
                      (_E178778178787_)))))
          (_E178777178801_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_stx178721_)
        (let* ((_e178722178735_ _stx178721_)
               (_E178724178739_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e178722178735_)))
               (_E178723178771_
                (lambda ()
                  (if (gx#stx-pair? _e178722178735_)
                      (let ((_e178725178743_ (gx#syntax-e _e178722178735_)))
                        (let ((_hd178726178746_ (##car _e178725178743_))
                              (_tl178727178748_ (##cdr _e178725178743_)))
                          (if (gx#stx-pair? _tl178727178748_)
                              (let ((_e178728178751_
                                     (gx#syntax-e _tl178727178748_)))
                                (let ((_hd178729178754_
                                       (##car _e178728178751_))
                                      (_tl178730178756_
                                       (##cdr _e178728178751_)))
                                  (let ((_ann178759_ _hd178729178754_))
                                    (if (gx#stx-pair? _tl178730178756_)
                                        (let ((_e178731178761_
                                               (gx#syntax-e _tl178730178756_)))
                                          (let ((_hd178732178764_
                                                 (##car _e178731178761_))
                                                (_tl178733178766_
                                                 (##cdr _e178731178761_)))
                                            (let ((_expr178769_
                                                   _hd178732178764_))
                                              (if (gx#stx-null?
                                                   _tl178733178766_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr178769_)
                                                      (_E178724178739_))
                                                  (_E178724178739_)))))
                                        (_E178724178739_)))))
                              (_E178724178739_))))
                      (_E178724178739_)))))
          (_E178723178771_))))
    (define gx#core-compile-top-import%
      (lambda (_stx178691_)
        (let* ((_e178692178699_ _stx178691_)
               (_E178694178703_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e178692178699_)))
               (_E178693178717_
                (lambda ()
                  (if (gx#stx-pair? _e178692178699_)
                      (let ((_e178695178707_ (gx#syntax-e _e178692178699_)))
                        (let ((_hd178696178710_ (##car _e178695178707_))
                              (_tl178697178712_ (##cdr _e178695178707_)))
                          (let ((_body178715_ _tl178697178712_))
                            (if '#t
                                (cons '%#import _body178715_)
                                (_E178694178703_)))))
                      (_E178694178703_)))))
          (_E178693178717_))))
    (define gx#core-compile-top-module%
      (lambda (_stx178648_)
        (let* ((_e178649178659_ _stx178648_)
               (_E178651178663_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e178649178659_)))
               (_E178650178687_
                (lambda ()
                  (if (gx#stx-pair? _e178649178659_)
                      (let ((_e178652178667_ (gx#syntax-e _e178649178659_)))
                        (let ((_hd178653178670_ (##car _e178652178667_))
                              (_tl178654178672_ (##cdr _e178652178667_)))
                          (if (gx#stx-pair? _tl178654178672_)
                              (let ((_e178655178675_
                                     (gx#syntax-e _tl178654178672_)))
                                (let ((_hd178656178678_
                                       (##car _e178655178675_))
                                      (_tl178657178680_
                                       (##cdr _e178655178675_)))
                                  (let* ((_hd178683_ _hd178656178678_)
                                         (_body178685_ _tl178657178680_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _hd178683_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body178685_)))
                                        (_E178651178663_)))))
                              (_E178651178663_))))
                      (_E178651178663_)))))
          (_E178650178687_))))
    (define gx#core-compile-top-export%
      (lambda (_stx178618_)
        (let* ((_e178619178626_ _stx178618_)
               (_E178621178630_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e178619178626_)))
               (_E178620178644_
                (lambda ()
                  (if (gx#stx-pair? _e178619178626_)
                      (let ((_e178622178634_ (gx#syntax-e _e178619178626_)))
                        (let ((_hd178623178637_ (##car _e178622178634_))
                              (_tl178624178639_ (##cdr _e178622178634_)))
                          (let ((_body178642_ _tl178624178639_))
                            (if '#t
                                (cons '%#export _body178642_)
                                (_E178621178630_)))))
                      (_E178621178630_)))))
          (_E178620178644_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx178588_)
        (let* ((_e178589178596_ _stx178588_)
               (_E178591178600_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e178589178596_)))
               (_E178590178614_
                (lambda ()
                  (if (gx#stx-pair? _e178589178596_)
                      (let ((_e178592178604_ (gx#syntax-e _e178589178596_)))
                        (let ((_hd178593178607_ (##car _e178592178604_))
                              (_tl178594178609_ (##cdr _e178592178604_)))
                          (let ((_body178612_ _tl178594178609_))
                            (if '#t
                                (cons '%#provide _body178612_)
                                (_E178591178600_)))))
                      (_E178591178600_)))))
          (_E178590178614_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx178558_)
        (let* ((_e178559178566_ _stx178558_)
               (_E178561178570_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e178559178566_)))
               (_E178560178584_
                (lambda ()
                  (if (gx#stx-pair? _e178559178566_)
                      (let ((_e178562178574_ (gx#syntax-e _e178559178566_)))
                        (let ((_hd178563178577_ (##car _e178562178574_))
                              (_tl178564178579_ (##cdr _e178562178574_)))
                          (let ((_body178582_ _tl178564178579_))
                            (if '#t
                                (cons '%#extern _body178582_)
                                (_E178561178570_)))))
                      (_E178561178570_)))))
          (_E178560178584_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx178504_)
        (let* ((_e178505178518_ _stx178504_)
               (_E178507178522_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e178505178518_)))
               (_E178506178554_
                (lambda ()
                  (if (gx#stx-pair? _e178505178518_)
                      (let ((_e178508178526_ (gx#syntax-e _e178505178518_)))
                        (let ((_hd178509178529_ (##car _e178508178526_))
                              (_tl178510178531_ (##cdr _e178508178526_)))
                          (if (gx#stx-pair? _tl178510178531_)
                              (let ((_e178511178534_
                                     (gx#syntax-e _tl178510178531_)))
                                (let ((_hd178512178537_
                                       (##car _e178511178534_))
                                      (_tl178513178539_
                                       (##cdr _e178511178534_)))
                                  (let ((_hd178542_ _hd178512178537_))
                                    (if (gx#stx-pair? _tl178513178539_)
                                        (let ((_e178514178544_
                                               (gx#syntax-e _tl178513178539_)))
                                          (let ((_hd178515178547_
                                                 (##car _e178514178544_))
                                                (_tl178516178549_
                                                 (##cdr _e178514178544_)))
                                            (let ((_expr178552_
                                                   _hd178515178547_))
                                              (if (gx#stx-null?
                                                   _tl178516178549_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd178542_)
                          (cons (gx#core-compile-top-syntax _expr178552_)
                                '())))
              (_E178507178522_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E178507178522_)))))
                                        (_E178507178522_)))))
                              (_E178507178522_))))
                      (_E178507178522_)))))
          (_E178506178554_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx178449_)
        (let* ((_e178450178463_ _stx178449_)
               (_E178452178467_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e178450178463_)))
               (_E178451178500_
                (lambda ()
                  (if (gx#stx-pair? _e178450178463_)
                      (let ((_e178453178471_ (gx#syntax-e _e178450178463_)))
                        (let ((_hd178454178474_ (##car _e178453178471_))
                              (_tl178455178476_ (##cdr _e178453178471_)))
                          (if (gx#stx-pair? _tl178455178476_)
                              (let ((_e178456178479_
                                     (gx#syntax-e _tl178455178476_)))
                                (let ((_hd178457178482_
                                       (##car _e178456178479_))
                                      (_tl178458178484_
                                       (##cdr _e178456178479_)))
                                  (let ((_hd178487_ _hd178457178482_))
                                    (if (gx#stx-pair? _tl178458178484_)
                                        (let ((_e178459178489_
                                               (gx#syntax-e _tl178458178484_)))
                                          (let ((_hd178460178492_
                                                 (##car _e178459178489_))
                                                (_tl178461178494_
                                                 (##cdr _e178459178489_)))
                                            (let ((_expr178497_
                                                   _hd178460178492_))
                                              (if (gx#stx-null?
                                                   _tl178461178494_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd178487_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr178497_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E178452178467_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E178452178467_)))))
                                        (_E178452178467_)))))
                              (_E178452178467_))))
                      (_E178452178467_)))))
          (_E178451178500_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx178419_)
        (let* ((_e178420178427_ _stx178419_)
               (_E178422178431_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e178420178427_)))
               (_E178421178445_
                (lambda ()
                  (if (gx#stx-pair? _e178420178427_)
                      (let ((_e178423178435_ (gx#syntax-e _e178420178427_)))
                        (let ((_hd178424178438_ (##car _e178423178435_))
                              (_tl178425178440_ (##cdr _e178423178435_)))
                          (let ((_body178443_ _tl178425178440_))
                            (if '#t
                                (cons '%#define-alias _body178443_)
                                (_E178422178431_)))))
                      (_E178422178431_)))))
          (_E178421178445_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx178389_)
        (let* ((_e178390178397_ _stx178389_)
               (_E178392178401_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e178390178397_)))
               (_E178391178415_
                (lambda ()
                  (if (gx#stx-pair? _e178390178397_)
                      (let ((_e178393178405_ (gx#syntax-e _e178390178397_)))
                        (let ((_hd178394178408_ (##car _e178393178405_))
                              (_tl178395178410_ (##cdr _e178393178405_)))
                          (let ((_body178413_ _tl178395178410_))
                            (if '#t
                                (cons '%#define-runtime _body178413_)
                                (_E178392178401_)))))
                      (_E178392178401_)))))
          (_E178391178415_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx178359_)
        (let* ((_e178360178367_ _stx178359_)
               (_E178362178371_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e178360178367_)))
               (_E178361178385_
                (lambda ()
                  (if (gx#stx-pair? _e178360178367_)
                      (let ((_e178363178375_ (gx#syntax-e _e178360178367_)))
                        (let ((_hd178364178378_ (##car _e178363178375_))
                              (_tl178365178380_ (##cdr _e178363178375_)))
                          (let ((_decls178383_ _tl178365178380_))
                            (if '#t
                                (cons '%#declare _decls178383_)
                                (_E178362178371_)))))
                      (_E178362178371_)))))
          (_E178361178385_))))
    (define gx#core-compile-top-lambda%
      (lambda (_stx178329_)
        (let* ((_e178330178337_ _stx178329_)
               (_E178332178341_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e178330178337_)))
               (_E178331178355_
                (lambda ()
                  (if (gx#stx-pair? _e178330178337_)
                      (let ((_e178333178345_ (gx#syntax-e _e178330178337_)))
                        (let ((_hd178334178348_ (##car _e178333178345_))
                              (_tl178335178350_ (##cdr _e178333178345_)))
                          (let ((_clause178353_ _tl178335178350_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause178353_))
                                (_E178332178341_)))))
                      (_E178332178341_)))))
          (_E178331178355_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx178286_)
        (let* ((_e178287178297_ _stx178286_)
               (_E178289178301_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e178287178297_)))
               (_E178288178325_
                (lambda ()
                  (if (gx#stx-pair? _e178287178297_)
                      (let ((_e178290178305_ (gx#syntax-e _e178287178297_)))
                        (let ((_hd178291178308_ (##car _e178290178305_))
                              (_tl178292178310_ (##cdr _e178290178305_)))
                          (let ((_hd178313_ _hd178291178308_))
                            (if (gx#stx-pair? _tl178292178310_)
                                (let ((_e178293178315_
                                       (gx#syntax-e _tl178292178310_)))
                                  (let ((_hd178294178318_
                                         (##car _e178293178315_))
                                        (_tl178295178320_
                                         (##cdr _e178293178315_)))
                                    (let ((_body178323_ _hd178294178318_))
                                      (if (gx#stx-null? _tl178295178320_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd178313_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body178323_)
                                                          '()))
                                              (_E178289178301_))
                                          (_E178289178301_)))))
                                (_E178289178301_)))))
                      (_E178289178301_)))))
          (_E178288178325_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx178256_)
        (let* ((_e178257178264_ _stx178256_)
               (_E178259178268_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e178257178264_)))
               (_E178258178282_
                (lambda ()
                  (if (gx#stx-pair? _e178257178264_)
                      (let ((_e178260178272_ (gx#syntax-e _e178257178264_)))
                        (let ((_hd178261178275_ (##car _e178260178272_))
                              (_tl178262178277_ (##cdr _e178260178272_)))
                          (let ((_clauses178280_ _tl178262178277_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses178280_))
                                (_E178259178268_)))))
                      (_E178259178268_)))))
          (_E178258178282_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx178191_ _form178192_)
        (let* ((_e178193178206_ _stx178191_)
               (_E178195178210_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e178193178206_)))
               (_E178194178242_
                (lambda ()
                  (if (gx#stx-pair? _e178193178206_)
                      (let ((_e178196178214_ (gx#syntax-e _e178193178206_)))
                        (let ((_hd178197178217_ (##car _e178196178214_))
                              (_tl178198178219_ (##cdr _e178196178214_)))
                          (if (gx#stx-pair? _tl178198178219_)
                              (let ((_e178199178222_
                                     (gx#syntax-e _tl178198178219_)))
                                (let ((_hd178200178225_
                                       (##car _e178199178222_))
                                      (_tl178201178227_
                                       (##cdr _e178199178222_)))
                                  (let ((_hd178230_ _hd178200178225_))
                                    (if (gx#stx-pair? _tl178201178227_)
                                        (let ((_e178202178232_
                                               (gx#syntax-e _tl178201178227_)))
                                          (let ((_hd178203178235_
                                                 (##car _e178202178232_))
                                                (_tl178204178237_
                                                 (##cdr _e178202178232_)))
                                            (let ((_body178240_
                                                   _hd178203178235_))
                                              (if (gx#stx-null?
                                                   _tl178204178237_)
                                                  (if '#t
                                                      (cons _form178192_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd178230_)
                          (cons (gx#core-compile-top-syntax _body178240_)
                                '())))
              (_E178195178210_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E178195178210_)))))
                                        (_E178195178210_)))))
                              (_E178195178210_))))
                      (_E178195178210_)))))
          (_E178194178242_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx178249_)
        (let ((_form178251_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx178249_ _form178251_))))
    (define gx#core-compile-top-let-values%
      (lambda _g183131_
        (let ((_g183130_ (##length _g183131_)))
          (cond ((##fx= _g183130_ 1)
                 (apply (lambda (_stx178249_)
                          (gx#core-compile-top-let-values%__0 _stx178249_))
                        _g183131_))
                ((##fx= _g183130_ 2)
                 (apply (lambda (_stx178253_ _form178254_)
                          (gx#core-compile-top-let-values%__%
                           _stx178253_
                           _form178254_))
                        _g183131_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g183131_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx178188_)
        (gx#core-compile-top-let-values%__% _stx178188_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx178186_)
        (gx#core-compile-top-let-values%__% _stx178186_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx178145_)
        (let* ((_e178146178156_ _stx178145_)
               (_E178148178160_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e178146178156_)))
               (_E178147178182_
                (lambda ()
                  (if (gx#stx-pair? _e178146178156_)
                      (let ((_e178149178164_ (gx#syntax-e _e178146178156_)))
                        (let ((_hd178150178167_ (##car _e178149178164_))
                              (_tl178151178169_ (##cdr _e178149178164_)))
                          (if (gx#stx-pair? _tl178151178169_)
                              (let ((_e178152178172_
                                     (gx#syntax-e _tl178151178169_)))
                                (let ((_hd178153178175_
                                       (##car _e178152178172_))
                                      (_tl178154178177_
                                       (##cdr _e178152178172_)))
                                  (let ((_e178180_ _hd178153178175_))
                                    (if (gx#stx-null? _tl178154178177_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e178180_)
                                                        '()))
                                            (_E178148178160_))
                                        (_E178148178160_)))))
                              (_E178148178160_))))
                      (_E178148178160_)))))
          (_E178147178182_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx178104_)
        (let* ((_e178105178115_ _stx178104_)
               (_E178107178119_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e178105178115_)))
               (_E178106178141_
                (lambda ()
                  (if (gx#stx-pair? _e178105178115_)
                      (let ((_e178108178123_ (gx#syntax-e _e178105178115_)))
                        (let ((_hd178109178126_ (##car _e178108178123_))
                              (_tl178110178128_ (##cdr _e178108178123_)))
                          (if (gx#stx-pair? _tl178110178128_)
                              (let ((_e178111178131_
                                     (gx#syntax-e _tl178110178128_)))
                                (let ((_hd178112178134_
                                       (##car _e178111178131_))
                                      (_tl178113178136_
                                       (##cdr _e178111178131_)))
                                  (let ((_e178139_ _hd178112178134_))
                                    (if (gx#stx-null? _tl178113178136_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e178139_)
                                                        '()))
                                            (_E178107178119_))
                                        (_E178107178119_)))))
                              (_E178107178119_))))
                      (_E178107178119_)))))
          (_E178106178141_))))
    (define gx#core-compile-top-call%
      (lambda (_stx178061_)
        (let* ((_e178062178072_ _stx178061_)
               (_E178064178076_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e178062178072_)))
               (_E178063178100_
                (lambda ()
                  (if (gx#stx-pair? _e178062178072_)
                      (let ((_e178065178080_ (gx#syntax-e _e178062178072_)))
                        (let ((_hd178066178083_ (##car _e178065178080_))
                              (_tl178067178085_ (##cdr _e178065178080_)))
                          (if (gx#stx-pair? _tl178067178085_)
                              (let ((_e178068178088_
                                     (gx#syntax-e _tl178067178085_)))
                                (let ((_hd178069178091_
                                       (##car _e178068178088_))
                                      (_tl178070178093_
                                       (##cdr _e178068178088_)))
                                  (let* ((_rator178096_ _hd178069178091_)
                                         (_args178098_ _tl178070178093_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator178096_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args178098_)))
                                        (_E178064178076_)))))
                              (_E178064178076_))))
                      (_E178064178076_)))))
          (_E178063178100_))))
    (define gx#core-compile-top-if%
      (lambda (_stx177994_)
        (let* ((_e177995178011_ _stx177994_)
               (_E177997178015_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e177995178011_)))
               (_E177996178057_
                (lambda ()
                  (if (gx#stx-pair? _e177995178011_)
                      (let ((_e177998178019_ (gx#syntax-e _e177995178011_)))
                        (let ((_hd177999178022_ (##car _e177998178019_))
                              (_tl178000178024_ (##cdr _e177998178019_)))
                          (if (gx#stx-pair? _tl178000178024_)
                              (let ((_e178001178027_
                                     (gx#syntax-e _tl178000178024_)))
                                (let ((_hd178002178030_
                                       (##car _e178001178027_))
                                      (_tl178003178032_
                                       (##cdr _e178001178027_)))
                                  (let ((_test178035_ _hd178002178030_))
                                    (if (gx#stx-pair? _tl178003178032_)
                                        (let ((_e178004178037_
                                               (gx#syntax-e _tl178003178032_)))
                                          (let ((_hd178005178040_
                                                 (##car _e178004178037_))
                                                (_tl178006178042_
                                                 (##cdr _e178004178037_)))
                                            (let ((_K178045_ _hd178005178040_))
                                              (if (gx#stx-pair?
                                                   _tl178006178042_)
                                                  (let ((_e178007178047_
                                                         (gx#syntax-e
                                                          _tl178006178042_)))
                                                    (let ((_hd178008178050_
                                                           (##car _e178007178047_))
                                                          (_tl178009178052_
                                                           (##cdr _e178007178047_)))
                                                      (let ((_E178055_
                                                             _hd178008178050_))
                                                        (if (gx#stx-null?
                                                             _tl178009178052_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test178035_)
                                    (cons (gx#core-compile-top-syntax
                                           _K178045_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E178055_)
                                                '()))))
                        (_E177997178015_))
                    (_E177997178015_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E177997178015_)))))
                                        (_E177997178015_)))))
                              (_E177997178015_))))
                      (_E177997178015_)))))
          (_E177996178057_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx177953_)
        (let* ((_e177954177964_ _stx177953_)
               (_E177956177968_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e177954177964_)))
               (_E177955177990_
                (lambda ()
                  (if (gx#stx-pair? _e177954177964_)
                      (let ((_e177957177972_ (gx#syntax-e _e177954177964_)))
                        (let ((_hd177958177975_ (##car _e177957177972_))
                              (_tl177959177977_ (##cdr _e177957177972_)))
                          (if (gx#stx-pair? _tl177959177977_)
                              (let ((_e177960177980_
                                     (gx#syntax-e _tl177959177977_)))
                                (let ((_hd177961177983_
                                       (##car _e177960177980_))
                                      (_tl177962177985_
                                       (##cdr _e177960177980_)))
                                  (let ((_id177988_ _hd177961177983_))
                                    (if (gx#stx-null? _tl177962177985_)
                                        (if (gx#identifier? _id177988_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id177988_)
                                                        '()))
                                            (_E177956177968_))
                                        (_E177956177968_)))))
                              (_E177956177968_))))
                      (_E177956177968_)))))
          (_E177955177990_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx177899_)
        (let* ((_e177900177913_ _stx177899_)
               (_E177902177917_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e177900177913_)))
               (_E177901177949_
                (lambda ()
                  (if (gx#stx-pair? _e177900177913_)
                      (let ((_e177903177921_ (gx#syntax-e _e177900177913_)))
                        (let ((_hd177904177924_ (##car _e177903177921_))
                              (_tl177905177926_ (##cdr _e177903177921_)))
                          (if (gx#stx-pair? _tl177905177926_)
                              (let ((_e177906177929_
                                     (gx#syntax-e _tl177905177926_)))
                                (let ((_hd177907177932_
                                       (##car _e177906177929_))
                                      (_tl177908177934_
                                       (##cdr _e177906177929_)))
                                  (let ((_id177937_ _hd177907177932_))
                                    (if (gx#stx-pair? _tl177908177934_)
                                        (let ((_e177909177939_
                                               (gx#syntax-e _tl177908177934_)))
                                          (let ((_hd177910177942_
                                                 (##car _e177909177939_))
                                                (_tl177911177944_
                                                 (##cdr _e177909177939_)))
                                            (let ((_expr177947_
                                                   _hd177910177942_))
                                              (if (gx#stx-null?
                                                   _tl177911177944_)
                                                  (if (gx#identifier?
                                                       _id177937_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id177937_)
                          (cons (gx#core-compile-top-syntax _expr177947_)
                                '())))
              (_E177902177917_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E177902177917_)))))
                                        (_E177902177917_)))))
                              (_E177902177917_))))
                      (_E177902177917_)))))
          (_E177901177949_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id177894_)
        (let ((_$e177896_ (gx#resolve-identifier__0 _id177894_)))
          (if _$e177896_
              (##unchecked-structure-ref _$e177896_ '1 gx#binding::t '#f)
              _id177894_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd177892_)
        (if (gx#identifier? _hd177892_)
            (gx#core-compile-top-runtime-ref _hd177892_)
            '#f)))))
