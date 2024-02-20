(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1708387688)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx93800_)
        (let* ((_e9380193808_ _stx93800_)
               (_E9380393812_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9380193808_)))
               (_E9380293826_
                (lambda ()
                  (if (gx#stx-pair? _e9380193808_)
                      (let ((_e9380493816_ (gx#syntax-e _e9380193808_)))
                        (let ((_hd9380593819_ (##car _e9380493816_))
                              (_tl9380693821_ (##cdr _e9380493816_)))
                          (let ((_form93824_ _hd9380593819_))
                            (if '#t
                                (let* ((__self93829
                                        (gx#syntax-local-e__0 _form93824_))
                                       (__method93830
                                        (method-ref
                                         __self93829
                                         'compile-top-syntax)))
                                  (if __method93830
                                      (__method93830 __self93829 _stx93800_)
                                      (error '"Missing method"
                                             __self93829
                                             'compile-top-syntax)))
                                (_E9380393812_)))))
                      (_E9380393812_)))))
          (_E9380293826_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self93760_ _stx93761_)
        (let* ((_self9376293770_ _self93760_)
               (_E9376493774_
                (lambda () (error '"No clause matching" _self9376293770_)))
               (_K9376593786_
                (lambda (_K93777_)
                  (let ((_$e93779_ (gx#stx-source _stx93761_)))
                    (if _$e93779_
                        ((lambda (_g9378193783_)
                           (gx#stx-wrap-source
                            (_K93777_ _stx93761_)
                            _g9378193783_))
                         _$e93779_)
                        (_K93777_ _stx93761_))))))
          (if (##structure-instance-of? _self9376293770_ 'gx#core-expander::t)
              (let* ((_e9376693789_
                      (##unchecked-structure-ref
                       _self9376293770_
                       '1
                       gx#expander::t
                       '#f))
                     (_e9376793792_
                      (##unchecked-structure-ref
                       _self9376293770_
                       '2
                       gx#core-expander::t
                       '#f))
                     (_e9376893795_
                      (##unchecked-structure-ref
                       _self9376293770_
                       '3
                       gx#core-expander::t
                       '#f))
                     (_K93798_ _e9376893795_))
                (_K9376593786_ _K93798_))
              (_E9376493774_)))))
    (bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx93634_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx93634_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx93604_)
        (let* ((_e9360593612_ _stx93604_)
               (_E9360793616_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9360593612_)))
               (_E9360693630_
                (lambda ()
                  (if (gx#stx-pair? _e9360593612_)
                      (let ((_e9360893620_ (gx#syntax-e _e9360593612_)))
                        (let ((_hd9360993623_ (##car _e9360893620_))
                              (_tl9361093625_ (##cdr _e9360893620_)))
                          (let ((_body93628_ _tl9361093625_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body93628_))
                                (_E9360793616_)))))
                      (_E9360793616_)))))
          (_E9360693630_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx93573_)
        (let* ((_e9357493581_ _stx93573_)
               (_E9357693585_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9357493581_)))
               (_E9357593600_
                (lambda ()
                  (if (gx#stx-pair? _e9357493581_)
                      (let ((_e9357793589_ (gx#syntax-e _e9357493581_)))
                        (let ((_hd9357893592_ (##car _e9357793589_))
                              (_tl9357993594_ (##cdr _e9357793589_)))
                          (let ((_body93597_ _tl9357993594_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body93597_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E9357693585_)))))
                      (_E9357693585_)))))
          (_E9357593600_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_stx93543_)
        (let* ((_e9354493551_ _stx93543_)
               (_E9354693555_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9354493551_)))
               (_E9354593569_
                (lambda ()
                  (if (gx#stx-pair? _e9354493551_)
                      (let ((_e9354793559_ (gx#syntax-e _e9354493551_)))
                        (let ((_hd9354893562_ (##car _e9354793559_))
                              (_tl9354993564_ (##cdr _e9354793559_)))
                          (let ((_body93567_ _tl9354993564_))
                            (if '#t
                                (cons '%#begin-foreign _body93567_)
                                (_E9354693555_)))))
                      (_E9354693555_)))))
          (_E9354593569_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_stx93489_)
        (let* ((_e9349093503_ _stx93489_)
               (_E9349293507_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9349093503_)))
               (_E9349193539_
                (lambda ()
                  (if (gx#stx-pair? _e9349093503_)
                      (let ((_e9349393511_ (gx#syntax-e _e9349093503_)))
                        (let ((_hd9349493514_ (##car _e9349393511_))
                              (_tl9349593516_ (##cdr _e9349393511_)))
                          (if (gx#stx-pair? _tl9349593516_)
                              (let ((_e9349693519_
                                     (gx#syntax-e _tl9349593516_)))
                                (let ((_hd9349793522_ (##car _e9349693519_))
                                      (_tl9349893524_ (##cdr _e9349693519_)))
                                  (let ((_ann93527_ _hd9349793522_))
                                    (if (gx#stx-pair? _tl9349893524_)
                                        (let ((_e9349993529_
                                               (gx#syntax-e _tl9349893524_)))
                                          (let ((_hd9350093532_
                                                 (##car _e9349993529_))
                                                (_tl9350193534_
                                                 (##cdr _e9349993529_)))
                                            (let ((_expr93537_ _hd9350093532_))
                                              (if (gx#stx-null? _tl9350193534_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr93537_)
                                                      (_E9349293507_))
                                                  (_E9349293507_)))))
                                        (_E9349293507_)))))
                              (_E9349293507_))))
                      (_E9349293507_)))))
          (_E9349193539_))))
    (define gx#core-compile-top-import%
      (lambda (_stx93459_)
        (let* ((_e9346093467_ _stx93459_)
               (_E9346293471_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9346093467_)))
               (_E9346193485_
                (lambda ()
                  (if (gx#stx-pair? _e9346093467_)
                      (let ((_e9346393475_ (gx#syntax-e _e9346093467_)))
                        (let ((_hd9346493478_ (##car _e9346393475_))
                              (_tl9346593480_ (##cdr _e9346393475_)))
                          (let ((_body93483_ _tl9346593480_))
                            (if '#t
                                (cons '%#import _body93483_)
                                (_E9346293471_)))))
                      (_E9346293471_)))))
          (_E9346193485_))))
    (define gx#core-compile-top-module%
      (lambda (_stx93416_)
        (let* ((_e9341793427_ _stx93416_)
               (_E9341993431_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9341793427_)))
               (_E9341893455_
                (lambda ()
                  (if (gx#stx-pair? _e9341793427_)
                      (let ((_e9342093435_ (gx#syntax-e _e9341793427_)))
                        (let ((_hd9342193438_ (##car _e9342093435_))
                              (_tl9342293440_ (##cdr _e9342093435_)))
                          (if (gx#stx-pair? _tl9342293440_)
                              (let ((_e9342393443_
                                     (gx#syntax-e _tl9342293440_)))
                                (let ((_hd9342493446_ (##car _e9342393443_))
                                      (_tl9342593448_ (##cdr _e9342393443_)))
                                  (let* ((_hd93451_ _hd9342493446_)
                                         (_body93453_ _tl9342593448_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _hd93451_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body93453_)))
                                        (_E9341993431_)))))
                              (_E9341993431_))))
                      (_E9341993431_)))))
          (_E9341893455_))))
    (define gx#core-compile-top-export%
      (lambda (_stx93386_)
        (let* ((_e9338793394_ _stx93386_)
               (_E9338993398_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9338793394_)))
               (_E9338893412_
                (lambda ()
                  (if (gx#stx-pair? _e9338793394_)
                      (let ((_e9339093402_ (gx#syntax-e _e9338793394_)))
                        (let ((_hd9339193405_ (##car _e9339093402_))
                              (_tl9339293407_ (##cdr _e9339093402_)))
                          (let ((_body93410_ _tl9339293407_))
                            (if '#t
                                (cons '%#export _body93410_)
                                (_E9338993398_)))))
                      (_E9338993398_)))))
          (_E9338893412_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx93356_)
        (let* ((_e9335793364_ _stx93356_)
               (_E9335993368_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9335793364_)))
               (_E9335893382_
                (lambda ()
                  (if (gx#stx-pair? _e9335793364_)
                      (let ((_e9336093372_ (gx#syntax-e _e9335793364_)))
                        (let ((_hd9336193375_ (##car _e9336093372_))
                              (_tl9336293377_ (##cdr _e9336093372_)))
                          (let ((_body93380_ _tl9336293377_))
                            (if '#t
                                (cons '%#provide _body93380_)
                                (_E9335993368_)))))
                      (_E9335993368_)))))
          (_E9335893382_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx93326_)
        (let* ((_e9332793334_ _stx93326_)
               (_E9332993338_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9332793334_)))
               (_E9332893352_
                (lambda ()
                  (if (gx#stx-pair? _e9332793334_)
                      (let ((_e9333093342_ (gx#syntax-e _e9332793334_)))
                        (let ((_hd9333193345_ (##car _e9333093342_))
                              (_tl9333293347_ (##cdr _e9333093342_)))
                          (let ((_body93350_ _tl9333293347_))
                            (if '#t
                                (cons '%#extern _body93350_)
                                (_E9332993338_)))))
                      (_E9332993338_)))))
          (_E9332893352_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx93272_)
        (let* ((_e9327393286_ _stx93272_)
               (_E9327593290_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9327393286_)))
               (_E9327493322_
                (lambda ()
                  (if (gx#stx-pair? _e9327393286_)
                      (let ((_e9327693294_ (gx#syntax-e _e9327393286_)))
                        (let ((_hd9327793297_ (##car _e9327693294_))
                              (_tl9327893299_ (##cdr _e9327693294_)))
                          (if (gx#stx-pair? _tl9327893299_)
                              (let ((_e9327993302_
                                     (gx#syntax-e _tl9327893299_)))
                                (let ((_hd9328093305_ (##car _e9327993302_))
                                      (_tl9328193307_ (##cdr _e9327993302_)))
                                  (let ((_hd93310_ _hd9328093305_))
                                    (if (gx#stx-pair? _tl9328193307_)
                                        (let ((_e9328293312_
                                               (gx#syntax-e _tl9328193307_)))
                                          (let ((_hd9328393315_
                                                 (##car _e9328293312_))
                                                (_tl9328493317_
                                                 (##cdr _e9328293312_)))
                                            (let ((_expr93320_ _hd9328393315_))
                                              (if (gx#stx-null? _tl9328493317_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd93310_)
                          (cons (gx#core-compile-top-syntax _expr93320_) '())))
              (_E9327593290_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9327593290_)))))
                                        (_E9327593290_)))))
                              (_E9327593290_))))
                      (_E9327593290_)))))
          (_E9327493322_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx93217_)
        (let* ((_e9321893231_ _stx93217_)
               (_E9322093235_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9321893231_)))
               (_E9321993268_
                (lambda ()
                  (if (gx#stx-pair? _e9321893231_)
                      (let ((_e9322193239_ (gx#syntax-e _e9321893231_)))
                        (let ((_hd9322293242_ (##car _e9322193239_))
                              (_tl9322393244_ (##cdr _e9322193239_)))
                          (if (gx#stx-pair? _tl9322393244_)
                              (let ((_e9322493247_
                                     (gx#syntax-e _tl9322393244_)))
                                (let ((_hd9322593250_ (##car _e9322493247_))
                                      (_tl9322693252_ (##cdr _e9322493247_)))
                                  (let ((_hd93255_ _hd9322593250_))
                                    (if (gx#stx-pair? _tl9322693252_)
                                        (let ((_e9322793257_
                                               (gx#syntax-e _tl9322693252_)))
                                          (let ((_hd9322893260_
                                                 (##car _e9322793257_))
                                                (_tl9322993262_
                                                 (##cdr _e9322793257_)))
                                            (let ((_expr93265_ _hd9322893260_))
                                              (if (gx#stx-null? _tl9322993262_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd93255_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr93265_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E9322093235_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9322093235_)))))
                                        (_E9322093235_)))))
                              (_E9322093235_))))
                      (_E9322093235_)))))
          (_E9321993268_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx93187_)
        (let* ((_e9318893195_ _stx93187_)
               (_E9319093199_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9318893195_)))
               (_E9318993213_
                (lambda ()
                  (if (gx#stx-pair? _e9318893195_)
                      (let ((_e9319193203_ (gx#syntax-e _e9318893195_)))
                        (let ((_hd9319293206_ (##car _e9319193203_))
                              (_tl9319393208_ (##cdr _e9319193203_)))
                          (let ((_body93211_ _tl9319393208_))
                            (if '#t
                                (cons '%#define-alias _body93211_)
                                (_E9319093199_)))))
                      (_E9319093199_)))))
          (_E9318993213_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx93157_)
        (let* ((_e9315893165_ _stx93157_)
               (_E9316093169_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9315893165_)))
               (_E9315993183_
                (lambda ()
                  (if (gx#stx-pair? _e9315893165_)
                      (let ((_e9316193173_ (gx#syntax-e _e9315893165_)))
                        (let ((_hd9316293176_ (##car _e9316193173_))
                              (_tl9316393178_ (##cdr _e9316193173_)))
                          (let ((_body93181_ _tl9316393178_))
                            (if '#t
                                (cons '%#define-runtime _body93181_)
                                (_E9316093169_)))))
                      (_E9316093169_)))))
          (_E9315993183_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx93127_)
        (let* ((_e9312893135_ _stx93127_)
               (_E9313093139_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9312893135_)))
               (_E9312993153_
                (lambda ()
                  (if (gx#stx-pair? _e9312893135_)
                      (let ((_e9313193143_ (gx#syntax-e _e9312893135_)))
                        (let ((_hd9313293146_ (##car _e9313193143_))
                              (_tl9313393148_ (##cdr _e9313193143_)))
                          (let ((_decls93151_ _tl9313393148_))
                            (if '#t
                                (cons '%#declare _decls93151_)
                                (_E9313093139_)))))
                      (_E9313093139_)))))
          (_E9312993153_))))
    (define gx#core-compile-top-lambda%
      (lambda (_stx93097_)
        (let* ((_e9309893105_ _stx93097_)
               (_E9310093109_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9309893105_)))
               (_E9309993123_
                (lambda ()
                  (if (gx#stx-pair? _e9309893105_)
                      (let ((_e9310193113_ (gx#syntax-e _e9309893105_)))
                        (let ((_hd9310293116_ (##car _e9310193113_))
                              (_tl9310393118_ (##cdr _e9310193113_)))
                          (let ((_clause93121_ _tl9310393118_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause93121_))
                                (_E9310093109_)))))
                      (_E9310093109_)))))
          (_E9309993123_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx93054_)
        (let* ((_e9305593065_ _stx93054_)
               (_E9305793069_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9305593065_)))
               (_E9305693093_
                (lambda ()
                  (if (gx#stx-pair? _e9305593065_)
                      (let ((_e9305893073_ (gx#syntax-e _e9305593065_)))
                        (let ((_hd9305993076_ (##car _e9305893073_))
                              (_tl9306093078_ (##cdr _e9305893073_)))
                          (let ((_hd93081_ _hd9305993076_))
                            (if (gx#stx-pair? _tl9306093078_)
                                (let ((_e9306193083_
                                       (gx#syntax-e _tl9306093078_)))
                                  (let ((_hd9306293086_ (##car _e9306193083_))
                                        (_tl9306393088_ (##cdr _e9306193083_)))
                                    (let ((_body93091_ _hd9306293086_))
                                      (if (gx#stx-null? _tl9306393088_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd93081_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body93091_)
                                                          '()))
                                              (_E9305793069_))
                                          (_E9305793069_)))))
                                (_E9305793069_)))))
                      (_E9305793069_)))))
          (_E9305693093_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx93024_)
        (let* ((_e9302593032_ _stx93024_)
               (_E9302793036_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9302593032_)))
               (_E9302693050_
                (lambda ()
                  (if (gx#stx-pair? _e9302593032_)
                      (let ((_e9302893040_ (gx#syntax-e _e9302593032_)))
                        (let ((_hd9302993043_ (##car _e9302893040_))
                              (_tl9303093045_ (##cdr _e9302893040_)))
                          (let ((_clauses93048_ _tl9303093045_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses93048_))
                                (_E9302793036_)))))
                      (_E9302793036_)))))
          (_E9302693050_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx92959_ _form92960_)
        (let* ((_e9296192974_ _stx92959_)
               (_E9296392978_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9296192974_)))
               (_E9296293010_
                (lambda ()
                  (if (gx#stx-pair? _e9296192974_)
                      (let ((_e9296492982_ (gx#syntax-e _e9296192974_)))
                        (let ((_hd9296592985_ (##car _e9296492982_))
                              (_tl9296692987_ (##cdr _e9296492982_)))
                          (if (gx#stx-pair? _tl9296692987_)
                              (let ((_e9296792990_
                                     (gx#syntax-e _tl9296692987_)))
                                (let ((_hd9296892993_ (##car _e9296792990_))
                                      (_tl9296992995_ (##cdr _e9296792990_)))
                                  (let ((_hd92998_ _hd9296892993_))
                                    (if (gx#stx-pair? _tl9296992995_)
                                        (let ((_e9297093000_
                                               (gx#syntax-e _tl9296992995_)))
                                          (let ((_hd9297193003_
                                                 (##car _e9297093000_))
                                                (_tl9297293005_
                                                 (##cdr _e9297093000_)))
                                            (let ((_body93008_ _hd9297193003_))
                                              (if (gx#stx-null? _tl9297293005_)
                                                  (if '#t
                                                      (cons _form92960_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd92998_)
                          (cons (gx#core-compile-top-syntax _body93008_) '())))
              (_E9296392978_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9296392978_)))))
                                        (_E9296392978_)))))
                              (_E9296392978_))))
                      (_E9296392978_)))))
          (_E9296293010_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx93017_)
        (let ((_form93019_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx93017_ _form93019_))))
    (define gx#core-compile-top-let-values%
      (lambda _g93832_
        (let ((_g93831_ (##length _g93832_)))
          (cond ((##fx= _g93831_ 1)
                 (apply (lambda (_stx93017_)
                          (gx#core-compile-top-let-values%__0 _stx93017_))
                        _g93832_))
                ((##fx= _g93831_ 2)
                 (apply (lambda (_stx93021_ _form93022_)
                          (gx#core-compile-top-let-values%__%
                           _stx93021_
                           _form93022_))
                        _g93832_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g93832_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx92956_)
        (gx#core-compile-top-let-values%__% _stx92956_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx92954_)
        (gx#core-compile-top-let-values%__% _stx92954_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx92913_)
        (let* ((_e9291492924_ _stx92913_)
               (_E9291692928_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9291492924_)))
               (_E9291592950_
                (lambda ()
                  (if (gx#stx-pair? _e9291492924_)
                      (let ((_e9291792932_ (gx#syntax-e _e9291492924_)))
                        (let ((_hd9291892935_ (##car _e9291792932_))
                              (_tl9291992937_ (##cdr _e9291792932_)))
                          (if (gx#stx-pair? _tl9291992937_)
                              (let ((_e9292092940_
                                     (gx#syntax-e _tl9291992937_)))
                                (let ((_hd9292192943_ (##car _e9292092940_))
                                      (_tl9292292945_ (##cdr _e9292092940_)))
                                  (let ((_e92948_ _hd9292192943_))
                                    (if (gx#stx-null? _tl9292292945_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e92948_)
                                                        '()))
                                            (_E9291692928_))
                                        (_E9291692928_)))))
                              (_E9291692928_))))
                      (_E9291692928_)))))
          (_E9291592950_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx92872_)
        (let* ((_e9287392883_ _stx92872_)
               (_E9287592887_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9287392883_)))
               (_E9287492909_
                (lambda ()
                  (if (gx#stx-pair? _e9287392883_)
                      (let ((_e9287692891_ (gx#syntax-e _e9287392883_)))
                        (let ((_hd9287792894_ (##car _e9287692891_))
                              (_tl9287892896_ (##cdr _e9287692891_)))
                          (if (gx#stx-pair? _tl9287892896_)
                              (let ((_e9287992899_
                                     (gx#syntax-e _tl9287892896_)))
                                (let ((_hd9288092902_ (##car _e9287992899_))
                                      (_tl9288192904_ (##cdr _e9287992899_)))
                                  (let ((_e92907_ _hd9288092902_))
                                    (if (gx#stx-null? _tl9288192904_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e92907_)
                                                        '()))
                                            (_E9287592887_))
                                        (_E9287592887_)))))
                              (_E9287592887_))))
                      (_E9287592887_)))))
          (_E9287492909_))))
    (define gx#core-compile-top-call%
      (lambda (_stx92829_)
        (let* ((_e9283092840_ _stx92829_)
               (_E9283292844_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9283092840_)))
               (_E9283192868_
                (lambda ()
                  (if (gx#stx-pair? _e9283092840_)
                      (let ((_e9283392848_ (gx#syntax-e _e9283092840_)))
                        (let ((_hd9283492851_ (##car _e9283392848_))
                              (_tl9283592853_ (##cdr _e9283392848_)))
                          (if (gx#stx-pair? _tl9283592853_)
                              (let ((_e9283692856_
                                     (gx#syntax-e _tl9283592853_)))
                                (let ((_hd9283792859_ (##car _e9283692856_))
                                      (_tl9283892861_ (##cdr _e9283692856_)))
                                  (let* ((_rator92864_ _hd9283792859_)
                                         (_args92866_ _tl9283892861_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator92864_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args92866_)))
                                        (_E9283292844_)))))
                              (_E9283292844_))))
                      (_E9283292844_)))))
          (_E9283192868_))))
    (define gx#core-compile-top-if%
      (lambda (_stx92762_)
        (let* ((_e9276392779_ _stx92762_)
               (_E9276592783_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9276392779_)))
               (_E9276492825_
                (lambda ()
                  (if (gx#stx-pair? _e9276392779_)
                      (let ((_e9276692787_ (gx#syntax-e _e9276392779_)))
                        (let ((_hd9276792790_ (##car _e9276692787_))
                              (_tl9276892792_ (##cdr _e9276692787_)))
                          (if (gx#stx-pair? _tl9276892792_)
                              (let ((_e9276992795_
                                     (gx#syntax-e _tl9276892792_)))
                                (let ((_hd9277092798_ (##car _e9276992795_))
                                      (_tl9277192800_ (##cdr _e9276992795_)))
                                  (let ((_test92803_ _hd9277092798_))
                                    (if (gx#stx-pair? _tl9277192800_)
                                        (let ((_e9277292805_
                                               (gx#syntax-e _tl9277192800_)))
                                          (let ((_hd9277392808_
                                                 (##car _e9277292805_))
                                                (_tl9277492810_
                                                 (##cdr _e9277292805_)))
                                            (let ((_K92813_ _hd9277392808_))
                                              (if (gx#stx-pair? _tl9277492810_)
                                                  (let ((_e9277592815_
                                                         (gx#syntax-e
                                                          _tl9277492810_)))
                                                    (let ((_hd9277692818_
                                                           (##car _e9277592815_))
                                                          (_tl9277792820_
                                                           (##cdr _e9277592815_)))
                                                      (let ((_E92823_
                                                             _hd9277692818_))
                                                        (if (gx#stx-null?
                                                             _tl9277792820_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test92803_)
                                    (cons (gx#core-compile-top-syntax _K92813_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E92823_)
                                                '()))))
                        (_E9276592783_))
                    (_E9276592783_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9276592783_)))))
                                        (_E9276592783_)))))
                              (_E9276592783_))))
                      (_E9276592783_)))))
          (_E9276492825_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx92721_)
        (let* ((_e9272292732_ _stx92721_)
               (_E9272492736_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9272292732_)))
               (_E9272392758_
                (lambda ()
                  (if (gx#stx-pair? _e9272292732_)
                      (let ((_e9272592740_ (gx#syntax-e _e9272292732_)))
                        (let ((_hd9272692743_ (##car _e9272592740_))
                              (_tl9272792745_ (##cdr _e9272592740_)))
                          (if (gx#stx-pair? _tl9272792745_)
                              (let ((_e9272892748_
                                     (gx#syntax-e _tl9272792745_)))
                                (let ((_hd9272992751_ (##car _e9272892748_))
                                      (_tl9273092753_ (##cdr _e9272892748_)))
                                  (let ((_id92756_ _hd9272992751_))
                                    (if (gx#stx-null? _tl9273092753_)
                                        (if (gx#identifier? _id92756_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id92756_)
                                                        '()))
                                            (_E9272492736_))
                                        (_E9272492736_)))))
                              (_E9272492736_))))
                      (_E9272492736_)))))
          (_E9272392758_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx92667_)
        (let* ((_e9266892681_ _stx92667_)
               (_E9267092685_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9266892681_)))
               (_E9266992717_
                (lambda ()
                  (if (gx#stx-pair? _e9266892681_)
                      (let ((_e9267192689_ (gx#syntax-e _e9266892681_)))
                        (let ((_hd9267292692_ (##car _e9267192689_))
                              (_tl9267392694_ (##cdr _e9267192689_)))
                          (if (gx#stx-pair? _tl9267392694_)
                              (let ((_e9267492697_
                                     (gx#syntax-e _tl9267392694_)))
                                (let ((_hd9267592700_ (##car _e9267492697_))
                                      (_tl9267692702_ (##cdr _e9267492697_)))
                                  (let ((_id92705_ _hd9267592700_))
                                    (if (gx#stx-pair? _tl9267692702_)
                                        (let ((_e9267792707_
                                               (gx#syntax-e _tl9267692702_)))
                                          (let ((_hd9267892710_
                                                 (##car _e9267792707_))
                                                (_tl9267992712_
                                                 (##cdr _e9267792707_)))
                                            (let ((_expr92715_ _hd9267892710_))
                                              (if (gx#stx-null? _tl9267992712_)
                                                  (if (gx#identifier?
                                                       _id92705_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id92705_)
                          (cons (gx#core-compile-top-syntax _expr92715_) '())))
              (_E9267092685_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9267092685_)))))
                                        (_E9267092685_)))))
                              (_E9267092685_))))
                      (_E9267092685_)))))
          (_E9266992717_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id92662_)
        (let ((_$e92664_ (gx#resolve-identifier__0 _id92662_)))
          (if _$e92664_
              (##unchecked-structure-ref _$e92664_ '1 gx#binding::t '#f)
              _id92662_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd92660_)
        (if (gx#identifier? _hd92660_)
            (gx#core-compile-top-runtime-ref _hd92660_)
            '#f)))))
