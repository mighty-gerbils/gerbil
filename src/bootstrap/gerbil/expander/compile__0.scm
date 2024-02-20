(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1708418155)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx93869_)
        (let* ((_e9387093877_ _stx93869_)
               (_E9387293881_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9387093877_)))
               (_E9387193895_
                (lambda ()
                  (if (gx#stx-pair? _e9387093877_)
                      (let ((_e9387393885_ (gx#syntax-e _e9387093877_)))
                        (let ((_hd9387493888_ (##car _e9387393885_))
                              (_tl9387593890_ (##cdr _e9387393885_)))
                          (let ((_form93893_ _hd9387493888_))
                            (if '#t
                                (let* ((__self93898
                                        (gx#syntax-local-e__0 _form93893_))
                                       (__method93899
                                        (method-ref
                                         __self93898
                                         'compile-top-syntax)))
                                  (if __method93899
                                      (__method93899 __self93898 _stx93869_)
                                      (error '"Missing method"
                                             __self93898
                                             'compile-top-syntax)))
                                (_E9387293881_)))))
                      (_E9387293881_)))))
          (_E9387193895_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self93829_ _stx93830_)
        (let* ((_self9383193839_ _self93829_)
               (_E9383393843_
                (lambda () (error '"No clause matching" _self9383193839_)))
               (_K9383493855_
                (lambda (_K93846_)
                  (let ((_$e93848_ (gx#stx-source _stx93830_)))
                    (if _$e93848_
                        ((lambda (_g9385093852_)
                           (gx#stx-wrap-source
                            (_K93846_ _stx93830_)
                            _g9385093852_))
                         _$e93848_)
                        (_K93846_ _stx93830_))))))
          (if (##structure-instance-of? _self9383193839_ 'gx#core-expander::t)
              (let* ((_e9383593858_
                      (##unchecked-structure-ref
                       _self9383193839_
                       '1
                       gx#expander::t
                       '#f))
                     (_e9383693861_
                      (##unchecked-structure-ref
                       _self9383193839_
                       '2
                       gx#core-expander::t
                       '#f))
                     (_e9383793864_
                      (##unchecked-structure-ref
                       _self9383193839_
                       '3
                       gx#core-expander::t
                       '#f))
                     (_K93867_ _e9383793864_))
                (_K9383493855_ _K93867_))
              (_E9383393843_)))))
    (bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx93703_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx93703_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx93673_)
        (let* ((_e9367493681_ _stx93673_)
               (_E9367693685_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9367493681_)))
               (_E9367593699_
                (lambda ()
                  (if (gx#stx-pair? _e9367493681_)
                      (let ((_e9367793689_ (gx#syntax-e _e9367493681_)))
                        (let ((_hd9367893692_ (##car _e9367793689_))
                              (_tl9367993694_ (##cdr _e9367793689_)))
                          (let ((_body93697_ _tl9367993694_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body93697_))
                                (_E9367693685_)))))
                      (_E9367693685_)))))
          (_E9367593699_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx93642_)
        (let* ((_e9364393650_ _stx93642_)
               (_E9364593654_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9364393650_)))
               (_E9364493669_
                (lambda ()
                  (if (gx#stx-pair? _e9364393650_)
                      (let ((_e9364693658_ (gx#syntax-e _e9364393650_)))
                        (let ((_hd9364793661_ (##car _e9364693658_))
                              (_tl9364893663_ (##cdr _e9364693658_)))
                          (let ((_body93666_ _tl9364893663_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body93666_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E9364593654_)))))
                      (_E9364593654_)))))
          (_E9364493669_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_stx93612_)
        (let* ((_e9361393620_ _stx93612_)
               (_E9361593624_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9361393620_)))
               (_E9361493638_
                (lambda ()
                  (if (gx#stx-pair? _e9361393620_)
                      (let ((_e9361693628_ (gx#syntax-e _e9361393620_)))
                        (let ((_hd9361793631_ (##car _e9361693628_))
                              (_tl9361893633_ (##cdr _e9361693628_)))
                          (let ((_body93636_ _tl9361893633_))
                            (if '#t
                                (cons '%#begin-foreign _body93636_)
                                (_E9361593624_)))))
                      (_E9361593624_)))))
          (_E9361493638_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_stx93558_)
        (let* ((_e9355993572_ _stx93558_)
               (_E9356193576_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9355993572_)))
               (_E9356093608_
                (lambda ()
                  (if (gx#stx-pair? _e9355993572_)
                      (let ((_e9356293580_ (gx#syntax-e _e9355993572_)))
                        (let ((_hd9356393583_ (##car _e9356293580_))
                              (_tl9356493585_ (##cdr _e9356293580_)))
                          (if (gx#stx-pair? _tl9356493585_)
                              (let ((_e9356593588_
                                     (gx#syntax-e _tl9356493585_)))
                                (let ((_hd9356693591_ (##car _e9356593588_))
                                      (_tl9356793593_ (##cdr _e9356593588_)))
                                  (let ((_ann93596_ _hd9356693591_))
                                    (if (gx#stx-pair? _tl9356793593_)
                                        (let ((_e9356893598_
                                               (gx#syntax-e _tl9356793593_)))
                                          (let ((_hd9356993601_
                                                 (##car _e9356893598_))
                                                (_tl9357093603_
                                                 (##cdr _e9356893598_)))
                                            (let ((_expr93606_ _hd9356993601_))
                                              (if (gx#stx-null? _tl9357093603_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr93606_)
                                                      (_E9356193576_))
                                                  (_E9356193576_)))))
                                        (_E9356193576_)))))
                              (_E9356193576_))))
                      (_E9356193576_)))))
          (_E9356093608_))))
    (define gx#core-compile-top-import%
      (lambda (_stx93528_)
        (let* ((_e9352993536_ _stx93528_)
               (_E9353193540_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9352993536_)))
               (_E9353093554_
                (lambda ()
                  (if (gx#stx-pair? _e9352993536_)
                      (let ((_e9353293544_ (gx#syntax-e _e9352993536_)))
                        (let ((_hd9353393547_ (##car _e9353293544_))
                              (_tl9353493549_ (##cdr _e9353293544_)))
                          (let ((_body93552_ _tl9353493549_))
                            (if '#t
                                (cons '%#import _body93552_)
                                (_E9353193540_)))))
                      (_E9353193540_)))))
          (_E9353093554_))))
    (define gx#core-compile-top-module%
      (lambda (_stx93485_)
        (let* ((_e9348693496_ _stx93485_)
               (_E9348893500_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9348693496_)))
               (_E9348793524_
                (lambda ()
                  (if (gx#stx-pair? _e9348693496_)
                      (let ((_e9348993504_ (gx#syntax-e _e9348693496_)))
                        (let ((_hd9349093507_ (##car _e9348993504_))
                              (_tl9349193509_ (##cdr _e9348993504_)))
                          (if (gx#stx-pair? _tl9349193509_)
                              (let ((_e9349293512_
                                     (gx#syntax-e _tl9349193509_)))
                                (let ((_hd9349393515_ (##car _e9349293512_))
                                      (_tl9349493517_ (##cdr _e9349293512_)))
                                  (let* ((_hd93520_ _hd9349393515_)
                                         (_body93522_ _tl9349493517_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _hd93520_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body93522_)))
                                        (_E9348893500_)))))
                              (_E9348893500_))))
                      (_E9348893500_)))))
          (_E9348793524_))))
    (define gx#core-compile-top-export%
      (lambda (_stx93455_)
        (let* ((_e9345693463_ _stx93455_)
               (_E9345893467_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9345693463_)))
               (_E9345793481_
                (lambda ()
                  (if (gx#stx-pair? _e9345693463_)
                      (let ((_e9345993471_ (gx#syntax-e _e9345693463_)))
                        (let ((_hd9346093474_ (##car _e9345993471_))
                              (_tl9346193476_ (##cdr _e9345993471_)))
                          (let ((_body93479_ _tl9346193476_))
                            (if '#t
                                (cons '%#export _body93479_)
                                (_E9345893467_)))))
                      (_E9345893467_)))))
          (_E9345793481_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx93425_)
        (let* ((_e9342693433_ _stx93425_)
               (_E9342893437_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9342693433_)))
               (_E9342793451_
                (lambda ()
                  (if (gx#stx-pair? _e9342693433_)
                      (let ((_e9342993441_ (gx#syntax-e _e9342693433_)))
                        (let ((_hd9343093444_ (##car _e9342993441_))
                              (_tl9343193446_ (##cdr _e9342993441_)))
                          (let ((_body93449_ _tl9343193446_))
                            (if '#t
                                (cons '%#provide _body93449_)
                                (_E9342893437_)))))
                      (_E9342893437_)))))
          (_E9342793451_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx93395_)
        (let* ((_e9339693403_ _stx93395_)
               (_E9339893407_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9339693403_)))
               (_E9339793421_
                (lambda ()
                  (if (gx#stx-pair? _e9339693403_)
                      (let ((_e9339993411_ (gx#syntax-e _e9339693403_)))
                        (let ((_hd9340093414_ (##car _e9339993411_))
                              (_tl9340193416_ (##cdr _e9339993411_)))
                          (let ((_body93419_ _tl9340193416_))
                            (if '#t
                                (cons '%#extern _body93419_)
                                (_E9339893407_)))))
                      (_E9339893407_)))))
          (_E9339793421_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx93341_)
        (let* ((_e9334293355_ _stx93341_)
               (_E9334493359_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9334293355_)))
               (_E9334393391_
                (lambda ()
                  (if (gx#stx-pair? _e9334293355_)
                      (let ((_e9334593363_ (gx#syntax-e _e9334293355_)))
                        (let ((_hd9334693366_ (##car _e9334593363_))
                              (_tl9334793368_ (##cdr _e9334593363_)))
                          (if (gx#stx-pair? _tl9334793368_)
                              (let ((_e9334893371_
                                     (gx#syntax-e _tl9334793368_)))
                                (let ((_hd9334993374_ (##car _e9334893371_))
                                      (_tl9335093376_ (##cdr _e9334893371_)))
                                  (let ((_hd93379_ _hd9334993374_))
                                    (if (gx#stx-pair? _tl9335093376_)
                                        (let ((_e9335193381_
                                               (gx#syntax-e _tl9335093376_)))
                                          (let ((_hd9335293384_
                                                 (##car _e9335193381_))
                                                (_tl9335393386_
                                                 (##cdr _e9335193381_)))
                                            (let ((_expr93389_ _hd9335293384_))
                                              (if (gx#stx-null? _tl9335393386_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd93379_)
                          (cons (gx#core-compile-top-syntax _expr93389_) '())))
              (_E9334493359_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9334493359_)))))
                                        (_E9334493359_)))))
                              (_E9334493359_))))
                      (_E9334493359_)))))
          (_E9334393391_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx93286_)
        (let* ((_e9328793300_ _stx93286_)
               (_E9328993304_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9328793300_)))
               (_E9328893337_
                (lambda ()
                  (if (gx#stx-pair? _e9328793300_)
                      (let ((_e9329093308_ (gx#syntax-e _e9328793300_)))
                        (let ((_hd9329193311_ (##car _e9329093308_))
                              (_tl9329293313_ (##cdr _e9329093308_)))
                          (if (gx#stx-pair? _tl9329293313_)
                              (let ((_e9329393316_
                                     (gx#syntax-e _tl9329293313_)))
                                (let ((_hd9329493319_ (##car _e9329393316_))
                                      (_tl9329593321_ (##cdr _e9329393316_)))
                                  (let ((_hd93324_ _hd9329493319_))
                                    (if (gx#stx-pair? _tl9329593321_)
                                        (let ((_e9329693326_
                                               (gx#syntax-e _tl9329593321_)))
                                          (let ((_hd9329793329_
                                                 (##car _e9329693326_))
                                                (_tl9329893331_
                                                 (##cdr _e9329693326_)))
                                            (let ((_expr93334_ _hd9329793329_))
                                              (if (gx#stx-null? _tl9329893331_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd93324_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr93334_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E9328993304_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9328993304_)))))
                                        (_E9328993304_)))))
                              (_E9328993304_))))
                      (_E9328993304_)))))
          (_E9328893337_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx93256_)
        (let* ((_e9325793264_ _stx93256_)
               (_E9325993268_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9325793264_)))
               (_E9325893282_
                (lambda ()
                  (if (gx#stx-pair? _e9325793264_)
                      (let ((_e9326093272_ (gx#syntax-e _e9325793264_)))
                        (let ((_hd9326193275_ (##car _e9326093272_))
                              (_tl9326293277_ (##cdr _e9326093272_)))
                          (let ((_body93280_ _tl9326293277_))
                            (if '#t
                                (cons '%#define-alias _body93280_)
                                (_E9325993268_)))))
                      (_E9325993268_)))))
          (_E9325893282_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx93226_)
        (let* ((_e9322793234_ _stx93226_)
               (_E9322993238_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9322793234_)))
               (_E9322893252_
                (lambda ()
                  (if (gx#stx-pair? _e9322793234_)
                      (let ((_e9323093242_ (gx#syntax-e _e9322793234_)))
                        (let ((_hd9323193245_ (##car _e9323093242_))
                              (_tl9323293247_ (##cdr _e9323093242_)))
                          (let ((_body93250_ _tl9323293247_))
                            (if '#t
                                (cons '%#define-runtime _body93250_)
                                (_E9322993238_)))))
                      (_E9322993238_)))))
          (_E9322893252_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx93196_)
        (let* ((_e9319793204_ _stx93196_)
               (_E9319993208_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9319793204_)))
               (_E9319893222_
                (lambda ()
                  (if (gx#stx-pair? _e9319793204_)
                      (let ((_e9320093212_ (gx#syntax-e _e9319793204_)))
                        (let ((_hd9320193215_ (##car _e9320093212_))
                              (_tl9320293217_ (##cdr _e9320093212_)))
                          (let ((_decls93220_ _tl9320293217_))
                            (if '#t
                                (cons '%#declare _decls93220_)
                                (_E9319993208_)))))
                      (_E9319993208_)))))
          (_E9319893222_))))
    (define gx#core-compile-top-lambda%
      (lambda (_stx93166_)
        (let* ((_e9316793174_ _stx93166_)
               (_E9316993178_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9316793174_)))
               (_E9316893192_
                (lambda ()
                  (if (gx#stx-pair? _e9316793174_)
                      (let ((_e9317093182_ (gx#syntax-e _e9316793174_)))
                        (let ((_hd9317193185_ (##car _e9317093182_))
                              (_tl9317293187_ (##cdr _e9317093182_)))
                          (let ((_clause93190_ _tl9317293187_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause93190_))
                                (_E9316993178_)))))
                      (_E9316993178_)))))
          (_E9316893192_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx93123_)
        (let* ((_e9312493134_ _stx93123_)
               (_E9312693138_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9312493134_)))
               (_E9312593162_
                (lambda ()
                  (if (gx#stx-pair? _e9312493134_)
                      (let ((_e9312793142_ (gx#syntax-e _e9312493134_)))
                        (let ((_hd9312893145_ (##car _e9312793142_))
                              (_tl9312993147_ (##cdr _e9312793142_)))
                          (let ((_hd93150_ _hd9312893145_))
                            (if (gx#stx-pair? _tl9312993147_)
                                (let ((_e9313093152_
                                       (gx#syntax-e _tl9312993147_)))
                                  (let ((_hd9313193155_ (##car _e9313093152_))
                                        (_tl9313293157_ (##cdr _e9313093152_)))
                                    (let ((_body93160_ _hd9313193155_))
                                      (if (gx#stx-null? _tl9313293157_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd93150_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body93160_)
                                                          '()))
                                              (_E9312693138_))
                                          (_E9312693138_)))))
                                (_E9312693138_)))))
                      (_E9312693138_)))))
          (_E9312593162_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx93093_)
        (let* ((_e9309493101_ _stx93093_)
               (_E9309693105_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9309493101_)))
               (_E9309593119_
                (lambda ()
                  (if (gx#stx-pair? _e9309493101_)
                      (let ((_e9309793109_ (gx#syntax-e _e9309493101_)))
                        (let ((_hd9309893112_ (##car _e9309793109_))
                              (_tl9309993114_ (##cdr _e9309793109_)))
                          (let ((_clauses93117_ _tl9309993114_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses93117_))
                                (_E9309693105_)))))
                      (_E9309693105_)))))
          (_E9309593119_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx93028_ _form93029_)
        (let* ((_e9303093043_ _stx93028_)
               (_E9303293047_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9303093043_)))
               (_E9303193079_
                (lambda ()
                  (if (gx#stx-pair? _e9303093043_)
                      (let ((_e9303393051_ (gx#syntax-e _e9303093043_)))
                        (let ((_hd9303493054_ (##car _e9303393051_))
                              (_tl9303593056_ (##cdr _e9303393051_)))
                          (if (gx#stx-pair? _tl9303593056_)
                              (let ((_e9303693059_
                                     (gx#syntax-e _tl9303593056_)))
                                (let ((_hd9303793062_ (##car _e9303693059_))
                                      (_tl9303893064_ (##cdr _e9303693059_)))
                                  (let ((_hd93067_ _hd9303793062_))
                                    (if (gx#stx-pair? _tl9303893064_)
                                        (let ((_e9303993069_
                                               (gx#syntax-e _tl9303893064_)))
                                          (let ((_hd9304093072_
                                                 (##car _e9303993069_))
                                                (_tl9304193074_
                                                 (##cdr _e9303993069_)))
                                            (let ((_body93077_ _hd9304093072_))
                                              (if (gx#stx-null? _tl9304193074_)
                                                  (if '#t
                                                      (cons _form93029_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd93067_)
                          (cons (gx#core-compile-top-syntax _body93077_) '())))
              (_E9303293047_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9303293047_)))))
                                        (_E9303293047_)))))
                              (_E9303293047_))))
                      (_E9303293047_)))))
          (_E9303193079_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx93086_)
        (let ((_form93088_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx93086_ _form93088_))))
    (define gx#core-compile-top-let-values%
      (lambda _g93901_
        (let ((_g93900_ (##length _g93901_)))
          (cond ((##fx= _g93900_ 1)
                 (apply (lambda (_stx93086_)
                          (gx#core-compile-top-let-values%__0 _stx93086_))
                        _g93901_))
                ((##fx= _g93900_ 2)
                 (apply (lambda (_stx93090_ _form93091_)
                          (gx#core-compile-top-let-values%__%
                           _stx93090_
                           _form93091_))
                        _g93901_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g93901_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx93025_)
        (gx#core-compile-top-let-values%__% _stx93025_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx93023_)
        (gx#core-compile-top-let-values%__% _stx93023_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx92982_)
        (let* ((_e9298392993_ _stx92982_)
               (_E9298592997_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9298392993_)))
               (_E9298493019_
                (lambda ()
                  (if (gx#stx-pair? _e9298392993_)
                      (let ((_e9298693001_ (gx#syntax-e _e9298392993_)))
                        (let ((_hd9298793004_ (##car _e9298693001_))
                              (_tl9298893006_ (##cdr _e9298693001_)))
                          (if (gx#stx-pair? _tl9298893006_)
                              (let ((_e9298993009_
                                     (gx#syntax-e _tl9298893006_)))
                                (let ((_hd9299093012_ (##car _e9298993009_))
                                      (_tl9299193014_ (##cdr _e9298993009_)))
                                  (let ((_e93017_ _hd9299093012_))
                                    (if (gx#stx-null? _tl9299193014_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e93017_)
                                                        '()))
                                            (_E9298592997_))
                                        (_E9298592997_)))))
                              (_E9298592997_))))
                      (_E9298592997_)))))
          (_E9298493019_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx92941_)
        (let* ((_e9294292952_ _stx92941_)
               (_E9294492956_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9294292952_)))
               (_E9294392978_
                (lambda ()
                  (if (gx#stx-pair? _e9294292952_)
                      (let ((_e9294592960_ (gx#syntax-e _e9294292952_)))
                        (let ((_hd9294692963_ (##car _e9294592960_))
                              (_tl9294792965_ (##cdr _e9294592960_)))
                          (if (gx#stx-pair? _tl9294792965_)
                              (let ((_e9294892968_
                                     (gx#syntax-e _tl9294792965_)))
                                (let ((_hd9294992971_ (##car _e9294892968_))
                                      (_tl9295092973_ (##cdr _e9294892968_)))
                                  (let ((_e92976_ _hd9294992971_))
                                    (if (gx#stx-null? _tl9295092973_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e92976_)
                                                        '()))
                                            (_E9294492956_))
                                        (_E9294492956_)))))
                              (_E9294492956_))))
                      (_E9294492956_)))))
          (_E9294392978_))))
    (define gx#core-compile-top-call%
      (lambda (_stx92898_)
        (let* ((_e9289992909_ _stx92898_)
               (_E9290192913_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9289992909_)))
               (_E9290092937_
                (lambda ()
                  (if (gx#stx-pair? _e9289992909_)
                      (let ((_e9290292917_ (gx#syntax-e _e9289992909_)))
                        (let ((_hd9290392920_ (##car _e9290292917_))
                              (_tl9290492922_ (##cdr _e9290292917_)))
                          (if (gx#stx-pair? _tl9290492922_)
                              (let ((_e9290592925_
                                     (gx#syntax-e _tl9290492922_)))
                                (let ((_hd9290692928_ (##car _e9290592925_))
                                      (_tl9290792930_ (##cdr _e9290592925_)))
                                  (let* ((_rator92933_ _hd9290692928_)
                                         (_args92935_ _tl9290792930_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator92933_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args92935_)))
                                        (_E9290192913_)))))
                              (_E9290192913_))))
                      (_E9290192913_)))))
          (_E9290092937_))))
    (define gx#core-compile-top-if%
      (lambda (_stx92831_)
        (let* ((_e9283292848_ _stx92831_)
               (_E9283492852_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9283292848_)))
               (_E9283392894_
                (lambda ()
                  (if (gx#stx-pair? _e9283292848_)
                      (let ((_e9283592856_ (gx#syntax-e _e9283292848_)))
                        (let ((_hd9283692859_ (##car _e9283592856_))
                              (_tl9283792861_ (##cdr _e9283592856_)))
                          (if (gx#stx-pair? _tl9283792861_)
                              (let ((_e9283892864_
                                     (gx#syntax-e _tl9283792861_)))
                                (let ((_hd9283992867_ (##car _e9283892864_))
                                      (_tl9284092869_ (##cdr _e9283892864_)))
                                  (let ((_test92872_ _hd9283992867_))
                                    (if (gx#stx-pair? _tl9284092869_)
                                        (let ((_e9284192874_
                                               (gx#syntax-e _tl9284092869_)))
                                          (let ((_hd9284292877_
                                                 (##car _e9284192874_))
                                                (_tl9284392879_
                                                 (##cdr _e9284192874_)))
                                            (let ((_K92882_ _hd9284292877_))
                                              (if (gx#stx-pair? _tl9284392879_)
                                                  (let ((_e9284492884_
                                                         (gx#syntax-e
                                                          _tl9284392879_)))
                                                    (let ((_hd9284592887_
                                                           (##car _e9284492884_))
                                                          (_tl9284692889_
                                                           (##cdr _e9284492884_)))
                                                      (let ((_E92892_
                                                             _hd9284592887_))
                                                        (if (gx#stx-null?
                                                             _tl9284692889_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test92872_)
                                    (cons (gx#core-compile-top-syntax _K92882_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E92892_)
                                                '()))))
                        (_E9283492852_))
                    (_E9283492852_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9283492852_)))))
                                        (_E9283492852_)))))
                              (_E9283492852_))))
                      (_E9283492852_)))))
          (_E9283392894_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx92790_)
        (let* ((_e9279192801_ _stx92790_)
               (_E9279392805_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9279192801_)))
               (_E9279292827_
                (lambda ()
                  (if (gx#stx-pair? _e9279192801_)
                      (let ((_e9279492809_ (gx#syntax-e _e9279192801_)))
                        (let ((_hd9279592812_ (##car _e9279492809_))
                              (_tl9279692814_ (##cdr _e9279492809_)))
                          (if (gx#stx-pair? _tl9279692814_)
                              (let ((_e9279792817_
                                     (gx#syntax-e _tl9279692814_)))
                                (let ((_hd9279892820_ (##car _e9279792817_))
                                      (_tl9279992822_ (##cdr _e9279792817_)))
                                  (let ((_id92825_ _hd9279892820_))
                                    (if (gx#stx-null? _tl9279992822_)
                                        (if (gx#identifier? _id92825_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id92825_)
                                                        '()))
                                            (_E9279392805_))
                                        (_E9279392805_)))))
                              (_E9279392805_))))
                      (_E9279392805_)))))
          (_E9279292827_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx92736_)
        (let* ((_e9273792750_ _stx92736_)
               (_E9273992754_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9273792750_)))
               (_E9273892786_
                (lambda ()
                  (if (gx#stx-pair? _e9273792750_)
                      (let ((_e9274092758_ (gx#syntax-e _e9273792750_)))
                        (let ((_hd9274192761_ (##car _e9274092758_))
                              (_tl9274292763_ (##cdr _e9274092758_)))
                          (if (gx#stx-pair? _tl9274292763_)
                              (let ((_e9274392766_
                                     (gx#syntax-e _tl9274292763_)))
                                (let ((_hd9274492769_ (##car _e9274392766_))
                                      (_tl9274592771_ (##cdr _e9274392766_)))
                                  (let ((_id92774_ _hd9274492769_))
                                    (if (gx#stx-pair? _tl9274592771_)
                                        (let ((_e9274692776_
                                               (gx#syntax-e _tl9274592771_)))
                                          (let ((_hd9274792779_
                                                 (##car _e9274692776_))
                                                (_tl9274892781_
                                                 (##cdr _e9274692776_)))
                                            (let ((_expr92784_ _hd9274792779_))
                                              (if (gx#stx-null? _tl9274892781_)
                                                  (if (gx#identifier?
                                                       _id92774_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id92774_)
                          (cons (gx#core-compile-top-syntax _expr92784_) '())))
              (_E9273992754_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9273992754_)))))
                                        (_E9273992754_)))))
                              (_E9273992754_))))
                      (_E9273992754_)))))
          (_E9273892786_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id92731_)
        (let ((_$e92733_ (gx#resolve-identifier__0 _id92731_)))
          (if _$e92733_
              (##unchecked-structure-ref _$e92733_ '1 gx#binding::t '#f)
              _id92731_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd92729_)
        (if (gx#identifier? _hd92729_)
            (gx#core-compile-top-runtime-ref _hd92729_)
            '#f)))))
