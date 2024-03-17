(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1710694204)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx93143_)
        (let* ((_e9314493151_ _stx93143_)
               (_E9314693155_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9314493151_)))
               (_E9314593169_
                (lambda ()
                  (if (gx#stx-pair? _e9314493151_)
                      (let ((_e9314793159_ (gx#syntax-e _e9314493151_)))
                        (let ((_hd9314893162_ (##car _e9314793159_))
                              (_tl9314993164_ (##cdr _e9314793159_)))
                          (let ((_form93167_ _hd9314893162_))
                            (if '#t
                                (let* ((__self93172
                                        (gx#syntax-local-e__0 _form93167_))
                                       (__method93173
                                        (method-ref
                                         __self93172
                                         'compile-top-syntax)))
                                  (if __method93173
                                      (__method93173 __self93172 _stx93143_)
                                      (error '"Missing method"
                                             __self93172
                                             'compile-top-syntax)))
                                (_E9314693155_)))))
                      (_E9314693155_)))))
          (_E9314593169_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self93103_ _stx93104_)
        (let* ((_self9310593113_ _self93103_)
               (_E9310793117_
                (lambda () (error '"No clause matching" _self9310593113_)))
               (_K9310893129_
                (lambda (_K93120_)
                  (let ((_$e93122_ (gx#stx-source _stx93104_)))
                    (if _$e93122_
                        ((lambda (_g9312493126_)
                           (gx#stx-wrap-source
                            (_K93120_ _stx93104_)
                            _g9312493126_))
                         _$e93122_)
                        (_K93120_ _stx93104_))))))
          (if (##structure-instance-of? _self9310593113_ 'gx#core-expander::t)
              (let* ((_e9310993132_
                      (##unchecked-structure-ref
                       _self9310593113_
                       '1
                       gx#expander::t
                       '#f))
                     (_e9311093135_
                      (##unchecked-structure-ref
                       _self9310593113_
                       '2
                       gx#core-expander::t
                       '#f))
                     (_e9311193138_
                      (##unchecked-structure-ref
                       _self9310593113_
                       '3
                       gx#core-expander::t
                       '#f))
                     (_K93141_ _e9311193138_))
                (_K9310893129_ _K93141_))
              (_E9310793117_)))))
    (bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx92977_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx92977_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx92947_)
        (let* ((_e9294892955_ _stx92947_)
               (_E9295092959_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9294892955_)))
               (_E9294992973_
                (lambda ()
                  (if (gx#stx-pair? _e9294892955_)
                      (let ((_e9295192963_ (gx#syntax-e _e9294892955_)))
                        (let ((_hd9295292966_ (##car _e9295192963_))
                              (_tl9295392968_ (##cdr _e9295192963_)))
                          (let ((_body92971_ _tl9295392968_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body92971_))
                                (_E9295092959_)))))
                      (_E9295092959_)))))
          (_E9294992973_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx92916_)
        (let* ((_e9291792924_ _stx92916_)
               (_E9291992928_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9291792924_)))
               (_E9291892943_
                (lambda ()
                  (if (gx#stx-pair? _e9291792924_)
                      (let ((_e9292092932_ (gx#syntax-e _e9291792924_)))
                        (let ((_hd9292192935_ (##car _e9292092932_))
                              (_tl9292292937_ (##cdr _e9292092932_)))
                          (let ((_body92940_ _tl9292292937_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body92940_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E9291992928_)))))
                      (_E9291992928_)))))
          (_E9291892943_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_stx92886_)
        (let* ((_e9288792894_ _stx92886_)
               (_E9288992898_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9288792894_)))
               (_E9288892912_
                (lambda ()
                  (if (gx#stx-pair? _e9288792894_)
                      (let ((_e9289092902_ (gx#syntax-e _e9288792894_)))
                        (let ((_hd9289192905_ (##car _e9289092902_))
                              (_tl9289292907_ (##cdr _e9289092902_)))
                          (let ((_body92910_ _tl9289292907_))
                            (if '#t
                                (cons '%#begin-foreign _body92910_)
                                (_E9288992898_)))))
                      (_E9288992898_)))))
          (_E9288892912_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_stx92832_)
        (let* ((_e9283392846_ _stx92832_)
               (_E9283592850_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9283392846_)))
               (_E9283492882_
                (lambda ()
                  (if (gx#stx-pair? _e9283392846_)
                      (let ((_e9283692854_ (gx#syntax-e _e9283392846_)))
                        (let ((_hd9283792857_ (##car _e9283692854_))
                              (_tl9283892859_ (##cdr _e9283692854_)))
                          (if (gx#stx-pair? _tl9283892859_)
                              (let ((_e9283992862_
                                     (gx#syntax-e _tl9283892859_)))
                                (let ((_hd9284092865_ (##car _e9283992862_))
                                      (_tl9284192867_ (##cdr _e9283992862_)))
                                  (let ((_ann92870_ _hd9284092865_))
                                    (if (gx#stx-pair? _tl9284192867_)
                                        (let ((_e9284292872_
                                               (gx#syntax-e _tl9284192867_)))
                                          (let ((_hd9284392875_
                                                 (##car _e9284292872_))
                                                (_tl9284492877_
                                                 (##cdr _e9284292872_)))
                                            (let ((_expr92880_ _hd9284392875_))
                                              (if (gx#stx-null? _tl9284492877_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr92880_)
                                                      (_E9283592850_))
                                                  (_E9283592850_)))))
                                        (_E9283592850_)))))
                              (_E9283592850_))))
                      (_E9283592850_)))))
          (_E9283492882_))))
    (define gx#core-compile-top-import%
      (lambda (_stx92802_)
        (let* ((_e9280392810_ _stx92802_)
               (_E9280592814_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9280392810_)))
               (_E9280492828_
                (lambda ()
                  (if (gx#stx-pair? _e9280392810_)
                      (let ((_e9280692818_ (gx#syntax-e _e9280392810_)))
                        (let ((_hd9280792821_ (##car _e9280692818_))
                              (_tl9280892823_ (##cdr _e9280692818_)))
                          (let ((_body92826_ _tl9280892823_))
                            (if '#t
                                (cons '%#import _body92826_)
                                (_E9280592814_)))))
                      (_E9280592814_)))))
          (_E9280492828_))))
    (define gx#core-compile-top-module%
      (lambda (_stx92759_)
        (let* ((_e9276092770_ _stx92759_)
               (_E9276292774_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9276092770_)))
               (_E9276192798_
                (lambda ()
                  (if (gx#stx-pair? _e9276092770_)
                      (let ((_e9276392778_ (gx#syntax-e _e9276092770_)))
                        (let ((_hd9276492781_ (##car _e9276392778_))
                              (_tl9276592783_ (##cdr _e9276392778_)))
                          (if (gx#stx-pair? _tl9276592783_)
                              (let ((_e9276692786_
                                     (gx#syntax-e _tl9276592783_)))
                                (let ((_hd9276792789_ (##car _e9276692786_))
                                      (_tl9276892791_ (##cdr _e9276692786_)))
                                  (let* ((_hd92794_ _hd9276792789_)
                                         (_body92796_ _tl9276892791_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _hd92794_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body92796_)))
                                        (_E9276292774_)))))
                              (_E9276292774_))))
                      (_E9276292774_)))))
          (_E9276192798_))))
    (define gx#core-compile-top-export%
      (lambda (_stx92729_)
        (let* ((_e9273092737_ _stx92729_)
               (_E9273292741_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9273092737_)))
               (_E9273192755_
                (lambda ()
                  (if (gx#stx-pair? _e9273092737_)
                      (let ((_e9273392745_ (gx#syntax-e _e9273092737_)))
                        (let ((_hd9273492748_ (##car _e9273392745_))
                              (_tl9273592750_ (##cdr _e9273392745_)))
                          (let ((_body92753_ _tl9273592750_))
                            (if '#t
                                (cons '%#export _body92753_)
                                (_E9273292741_)))))
                      (_E9273292741_)))))
          (_E9273192755_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx92699_)
        (let* ((_e9270092707_ _stx92699_)
               (_E9270292711_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9270092707_)))
               (_E9270192725_
                (lambda ()
                  (if (gx#stx-pair? _e9270092707_)
                      (let ((_e9270392715_ (gx#syntax-e _e9270092707_)))
                        (let ((_hd9270492718_ (##car _e9270392715_))
                              (_tl9270592720_ (##cdr _e9270392715_)))
                          (let ((_body92723_ _tl9270592720_))
                            (if '#t
                                (cons '%#provide _body92723_)
                                (_E9270292711_)))))
                      (_E9270292711_)))))
          (_E9270192725_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx92669_)
        (let* ((_e9267092677_ _stx92669_)
               (_E9267292681_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9267092677_)))
               (_E9267192695_
                (lambda ()
                  (if (gx#stx-pair? _e9267092677_)
                      (let ((_e9267392685_ (gx#syntax-e _e9267092677_)))
                        (let ((_hd9267492688_ (##car _e9267392685_))
                              (_tl9267592690_ (##cdr _e9267392685_)))
                          (let ((_body92693_ _tl9267592690_))
                            (if '#t
                                (cons '%#extern _body92693_)
                                (_E9267292681_)))))
                      (_E9267292681_)))))
          (_E9267192695_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx92615_)
        (let* ((_e9261692629_ _stx92615_)
               (_E9261892633_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9261692629_)))
               (_E9261792665_
                (lambda ()
                  (if (gx#stx-pair? _e9261692629_)
                      (let ((_e9261992637_ (gx#syntax-e _e9261692629_)))
                        (let ((_hd9262092640_ (##car _e9261992637_))
                              (_tl9262192642_ (##cdr _e9261992637_)))
                          (if (gx#stx-pair? _tl9262192642_)
                              (let ((_e9262292645_
                                     (gx#syntax-e _tl9262192642_)))
                                (let ((_hd9262392648_ (##car _e9262292645_))
                                      (_tl9262492650_ (##cdr _e9262292645_)))
                                  (let ((_hd92653_ _hd9262392648_))
                                    (if (gx#stx-pair? _tl9262492650_)
                                        (let ((_e9262592655_
                                               (gx#syntax-e _tl9262492650_)))
                                          (let ((_hd9262692658_
                                                 (##car _e9262592655_))
                                                (_tl9262792660_
                                                 (##cdr _e9262592655_)))
                                            (let ((_expr92663_ _hd9262692658_))
                                              (if (gx#stx-null? _tl9262792660_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd92653_)
                          (cons (gx#core-compile-top-syntax _expr92663_) '())))
              (_E9261892633_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9261892633_)))))
                                        (_E9261892633_)))))
                              (_E9261892633_))))
                      (_E9261892633_)))))
          (_E9261792665_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx92560_)
        (let* ((_e9256192574_ _stx92560_)
               (_E9256392578_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9256192574_)))
               (_E9256292611_
                (lambda ()
                  (if (gx#stx-pair? _e9256192574_)
                      (let ((_e9256492582_ (gx#syntax-e _e9256192574_)))
                        (let ((_hd9256592585_ (##car _e9256492582_))
                              (_tl9256692587_ (##cdr _e9256492582_)))
                          (if (gx#stx-pair? _tl9256692587_)
                              (let ((_e9256792590_
                                     (gx#syntax-e _tl9256692587_)))
                                (let ((_hd9256892593_ (##car _e9256792590_))
                                      (_tl9256992595_ (##cdr _e9256792590_)))
                                  (let ((_hd92598_ _hd9256892593_))
                                    (if (gx#stx-pair? _tl9256992595_)
                                        (let ((_e9257092600_
                                               (gx#syntax-e _tl9256992595_)))
                                          (let ((_hd9257192603_
                                                 (##car _e9257092600_))
                                                (_tl9257292605_
                                                 (##cdr _e9257092600_)))
                                            (let ((_expr92608_ _hd9257192603_))
                                              (if (gx#stx-null? _tl9257292605_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd92598_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr92608_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E9256392578_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9256392578_)))))
                                        (_E9256392578_)))))
                              (_E9256392578_))))
                      (_E9256392578_)))))
          (_E9256292611_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx92530_)
        (let* ((_e9253192538_ _stx92530_)
               (_E9253392542_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9253192538_)))
               (_E9253292556_
                (lambda ()
                  (if (gx#stx-pair? _e9253192538_)
                      (let ((_e9253492546_ (gx#syntax-e _e9253192538_)))
                        (let ((_hd9253592549_ (##car _e9253492546_))
                              (_tl9253692551_ (##cdr _e9253492546_)))
                          (let ((_body92554_ _tl9253692551_))
                            (if '#t
                                (cons '%#define-alias _body92554_)
                                (_E9253392542_)))))
                      (_E9253392542_)))))
          (_E9253292556_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx92500_)
        (let* ((_e9250192508_ _stx92500_)
               (_E9250392512_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9250192508_)))
               (_E9250292526_
                (lambda ()
                  (if (gx#stx-pair? _e9250192508_)
                      (let ((_e9250492516_ (gx#syntax-e _e9250192508_)))
                        (let ((_hd9250592519_ (##car _e9250492516_))
                              (_tl9250692521_ (##cdr _e9250492516_)))
                          (let ((_body92524_ _tl9250692521_))
                            (if '#t
                                (cons '%#define-runtime _body92524_)
                                (_E9250392512_)))))
                      (_E9250392512_)))))
          (_E9250292526_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx92470_)
        (let* ((_e9247192478_ _stx92470_)
               (_E9247392482_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9247192478_)))
               (_E9247292496_
                (lambda ()
                  (if (gx#stx-pair? _e9247192478_)
                      (let ((_e9247492486_ (gx#syntax-e _e9247192478_)))
                        (let ((_hd9247592489_ (##car _e9247492486_))
                              (_tl9247692491_ (##cdr _e9247492486_)))
                          (let ((_decls92494_ _tl9247692491_))
                            (if '#t
                                (cons '%#declare _decls92494_)
                                (_E9247392482_)))))
                      (_E9247392482_)))))
          (_E9247292496_))))
    (define gx#core-compile-top-lambda%
      (lambda (_stx92440_)
        (let* ((_e9244192448_ _stx92440_)
               (_E9244392452_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9244192448_)))
               (_E9244292466_
                (lambda ()
                  (if (gx#stx-pair? _e9244192448_)
                      (let ((_e9244492456_ (gx#syntax-e _e9244192448_)))
                        (let ((_hd9244592459_ (##car _e9244492456_))
                              (_tl9244692461_ (##cdr _e9244492456_)))
                          (let ((_clause92464_ _tl9244692461_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause92464_))
                                (_E9244392452_)))))
                      (_E9244392452_)))))
          (_E9244292466_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx92397_)
        (let* ((_e9239892408_ _stx92397_)
               (_E9240092412_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9239892408_)))
               (_E9239992436_
                (lambda ()
                  (if (gx#stx-pair? _e9239892408_)
                      (let ((_e9240192416_ (gx#syntax-e _e9239892408_)))
                        (let ((_hd9240292419_ (##car _e9240192416_))
                              (_tl9240392421_ (##cdr _e9240192416_)))
                          (let ((_hd92424_ _hd9240292419_))
                            (if (gx#stx-pair? _tl9240392421_)
                                (let ((_e9240492426_
                                       (gx#syntax-e _tl9240392421_)))
                                  (let ((_hd9240592429_ (##car _e9240492426_))
                                        (_tl9240692431_ (##cdr _e9240492426_)))
                                    (let ((_body92434_ _hd9240592429_))
                                      (if (gx#stx-null? _tl9240692431_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd92424_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body92434_)
                                                          '()))
                                              (_E9240092412_))
                                          (_E9240092412_)))))
                                (_E9240092412_)))))
                      (_E9240092412_)))))
          (_E9239992436_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx92367_)
        (let* ((_e9236892375_ _stx92367_)
               (_E9237092379_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9236892375_)))
               (_E9236992393_
                (lambda ()
                  (if (gx#stx-pair? _e9236892375_)
                      (let ((_e9237192383_ (gx#syntax-e _e9236892375_)))
                        (let ((_hd9237292386_ (##car _e9237192383_))
                              (_tl9237392388_ (##cdr _e9237192383_)))
                          (let ((_clauses92391_ _tl9237392388_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses92391_))
                                (_E9237092379_)))))
                      (_E9237092379_)))))
          (_E9236992393_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx92302_ _form92303_)
        (let* ((_e9230492317_ _stx92302_)
               (_E9230692321_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9230492317_)))
               (_E9230592353_
                (lambda ()
                  (if (gx#stx-pair? _e9230492317_)
                      (let ((_e9230792325_ (gx#syntax-e _e9230492317_)))
                        (let ((_hd9230892328_ (##car _e9230792325_))
                              (_tl9230992330_ (##cdr _e9230792325_)))
                          (if (gx#stx-pair? _tl9230992330_)
                              (let ((_e9231092333_
                                     (gx#syntax-e _tl9230992330_)))
                                (let ((_hd9231192336_ (##car _e9231092333_))
                                      (_tl9231292338_ (##cdr _e9231092333_)))
                                  (let ((_hd92341_ _hd9231192336_))
                                    (if (gx#stx-pair? _tl9231292338_)
                                        (let ((_e9231392343_
                                               (gx#syntax-e _tl9231292338_)))
                                          (let ((_hd9231492346_
                                                 (##car _e9231392343_))
                                                (_tl9231592348_
                                                 (##cdr _e9231392343_)))
                                            (let ((_body92351_ _hd9231492346_))
                                              (if (gx#stx-null? _tl9231592348_)
                                                  (if '#t
                                                      (cons _form92303_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd92341_)
                          (cons (gx#core-compile-top-syntax _body92351_) '())))
              (_E9230692321_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9230692321_)))))
                                        (_E9230692321_)))))
                              (_E9230692321_))))
                      (_E9230692321_)))))
          (_E9230592353_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx92360_)
        (let ((_form92362_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx92360_ _form92362_))))
    (define gx#core-compile-top-let-values%
      (lambda _g93175_
        (let ((_g93174_ (##length _g93175_)))
          (cond ((##fx= _g93174_ 1)
                 (apply (lambda (_stx92360_)
                          (gx#core-compile-top-let-values%__0 _stx92360_))
                        _g93175_))
                ((##fx= _g93174_ 2)
                 (apply (lambda (_stx92364_ _form92365_)
                          (gx#core-compile-top-let-values%__%
                           _stx92364_
                           _form92365_))
                        _g93175_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g93175_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx92299_)
        (gx#core-compile-top-let-values%__% _stx92299_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx92297_)
        (gx#core-compile-top-let-values%__% _stx92297_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx92256_)
        (let* ((_e9225792267_ _stx92256_)
               (_E9225992271_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9225792267_)))
               (_E9225892293_
                (lambda ()
                  (if (gx#stx-pair? _e9225792267_)
                      (let ((_e9226092275_ (gx#syntax-e _e9225792267_)))
                        (let ((_hd9226192278_ (##car _e9226092275_))
                              (_tl9226292280_ (##cdr _e9226092275_)))
                          (if (gx#stx-pair? _tl9226292280_)
                              (let ((_e9226392283_
                                     (gx#syntax-e _tl9226292280_)))
                                (let ((_hd9226492286_ (##car _e9226392283_))
                                      (_tl9226592288_ (##cdr _e9226392283_)))
                                  (let ((_e92291_ _hd9226492286_))
                                    (if (gx#stx-null? _tl9226592288_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e92291_)
                                                        '()))
                                            (_E9225992271_))
                                        (_E9225992271_)))))
                              (_E9225992271_))))
                      (_E9225992271_)))))
          (_E9225892293_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx92215_)
        (let* ((_e9221692226_ _stx92215_)
               (_E9221892230_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9221692226_)))
               (_E9221792252_
                (lambda ()
                  (if (gx#stx-pair? _e9221692226_)
                      (let ((_e9221992234_ (gx#syntax-e _e9221692226_)))
                        (let ((_hd9222092237_ (##car _e9221992234_))
                              (_tl9222192239_ (##cdr _e9221992234_)))
                          (if (gx#stx-pair? _tl9222192239_)
                              (let ((_e9222292242_
                                     (gx#syntax-e _tl9222192239_)))
                                (let ((_hd9222392245_ (##car _e9222292242_))
                                      (_tl9222492247_ (##cdr _e9222292242_)))
                                  (let ((_e92250_ _hd9222392245_))
                                    (if (gx#stx-null? _tl9222492247_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e92250_)
                                                        '()))
                                            (_E9221892230_))
                                        (_E9221892230_)))))
                              (_E9221892230_))))
                      (_E9221892230_)))))
          (_E9221792252_))))
    (define gx#core-compile-top-call%
      (lambda (_stx92172_)
        (let* ((_e9217392183_ _stx92172_)
               (_E9217592187_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9217392183_)))
               (_E9217492211_
                (lambda ()
                  (if (gx#stx-pair? _e9217392183_)
                      (let ((_e9217692191_ (gx#syntax-e _e9217392183_)))
                        (let ((_hd9217792194_ (##car _e9217692191_))
                              (_tl9217892196_ (##cdr _e9217692191_)))
                          (if (gx#stx-pair? _tl9217892196_)
                              (let ((_e9217992199_
                                     (gx#syntax-e _tl9217892196_)))
                                (let ((_hd9218092202_ (##car _e9217992199_))
                                      (_tl9218192204_ (##cdr _e9217992199_)))
                                  (let* ((_rator92207_ _hd9218092202_)
                                         (_args92209_ _tl9218192204_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator92207_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args92209_)))
                                        (_E9217592187_)))))
                              (_E9217592187_))))
                      (_E9217592187_)))))
          (_E9217492211_))))
    (define gx#core-compile-top-if%
      (lambda (_stx92105_)
        (let* ((_e9210692122_ _stx92105_)
               (_E9210892126_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9210692122_)))
               (_E9210792168_
                (lambda ()
                  (if (gx#stx-pair? _e9210692122_)
                      (let ((_e9210992130_ (gx#syntax-e _e9210692122_)))
                        (let ((_hd9211092133_ (##car _e9210992130_))
                              (_tl9211192135_ (##cdr _e9210992130_)))
                          (if (gx#stx-pair? _tl9211192135_)
                              (let ((_e9211292138_
                                     (gx#syntax-e _tl9211192135_)))
                                (let ((_hd9211392141_ (##car _e9211292138_))
                                      (_tl9211492143_ (##cdr _e9211292138_)))
                                  (let ((_test92146_ _hd9211392141_))
                                    (if (gx#stx-pair? _tl9211492143_)
                                        (let ((_e9211592148_
                                               (gx#syntax-e _tl9211492143_)))
                                          (let ((_hd9211692151_
                                                 (##car _e9211592148_))
                                                (_tl9211792153_
                                                 (##cdr _e9211592148_)))
                                            (let ((_K92156_ _hd9211692151_))
                                              (if (gx#stx-pair? _tl9211792153_)
                                                  (let ((_e9211892158_
                                                         (gx#syntax-e
                                                          _tl9211792153_)))
                                                    (let ((_hd9211992161_
                                                           (##car _e9211892158_))
                                                          (_tl9212092163_
                                                           (##cdr _e9211892158_)))
                                                      (let ((_E92166_
                                                             _hd9211992161_))
                                                        (if (gx#stx-null?
                                                             _tl9212092163_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test92146_)
                                    (cons (gx#core-compile-top-syntax _K92156_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E92166_)
                                                '()))))
                        (_E9210892126_))
                    (_E9210892126_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9210892126_)))))
                                        (_E9210892126_)))))
                              (_E9210892126_))))
                      (_E9210892126_)))))
          (_E9210792168_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx92064_)
        (let* ((_e9206592075_ _stx92064_)
               (_E9206792079_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9206592075_)))
               (_E9206692101_
                (lambda ()
                  (if (gx#stx-pair? _e9206592075_)
                      (let ((_e9206892083_ (gx#syntax-e _e9206592075_)))
                        (let ((_hd9206992086_ (##car _e9206892083_))
                              (_tl9207092088_ (##cdr _e9206892083_)))
                          (if (gx#stx-pair? _tl9207092088_)
                              (let ((_e9207192091_
                                     (gx#syntax-e _tl9207092088_)))
                                (let ((_hd9207292094_ (##car _e9207192091_))
                                      (_tl9207392096_ (##cdr _e9207192091_)))
                                  (let ((_id92099_ _hd9207292094_))
                                    (if (gx#stx-null? _tl9207392096_)
                                        (if (gx#identifier? _id92099_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id92099_)
                                                        '()))
                                            (_E9206792079_))
                                        (_E9206792079_)))))
                              (_E9206792079_))))
                      (_E9206792079_)))))
          (_E9206692101_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx92010_)
        (let* ((_e9201192024_ _stx92010_)
               (_E9201392028_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9201192024_)))
               (_E9201292060_
                (lambda ()
                  (if (gx#stx-pair? _e9201192024_)
                      (let ((_e9201492032_ (gx#syntax-e _e9201192024_)))
                        (let ((_hd9201592035_ (##car _e9201492032_))
                              (_tl9201692037_ (##cdr _e9201492032_)))
                          (if (gx#stx-pair? _tl9201692037_)
                              (let ((_e9201792040_
                                     (gx#syntax-e _tl9201692037_)))
                                (let ((_hd9201892043_ (##car _e9201792040_))
                                      (_tl9201992045_ (##cdr _e9201792040_)))
                                  (let ((_id92048_ _hd9201892043_))
                                    (if (gx#stx-pair? _tl9201992045_)
                                        (let ((_e9202092050_
                                               (gx#syntax-e _tl9201992045_)))
                                          (let ((_hd9202192053_
                                                 (##car _e9202092050_))
                                                (_tl9202292055_
                                                 (##cdr _e9202092050_)))
                                            (let ((_expr92058_ _hd9202192053_))
                                              (if (gx#stx-null? _tl9202292055_)
                                                  (if (gx#identifier?
                                                       _id92048_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id92048_)
                          (cons (gx#core-compile-top-syntax _expr92058_) '())))
              (_E9201392028_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9201392028_)))))
                                        (_E9201392028_)))))
                              (_E9201392028_))))
                      (_E9201392028_)))))
          (_E9201292060_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id92005_)
        (let ((_$e92007_ (gx#resolve-identifier__0 _id92005_)))
          (if _$e92007_
              (##unchecked-structure-ref _$e92007_ '1 gx#binding::t '#f)
              _id92005_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd92003_)
        (if (gx#identifier? _hd92003_)
            (gx#core-compile-top-runtime-ref _hd92003_)
            '#f)))))
