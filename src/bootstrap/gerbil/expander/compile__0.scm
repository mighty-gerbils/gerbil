(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1708352924)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx93789_)
        (let* ((_e9379093797_ _stx93789_)
               (_E9379293801_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9379093797_)))
               (_E9379193815_
                (lambda ()
                  (if (gx#stx-pair? _e9379093797_)
                      (let ((_e9379393805_ (gx#syntax-e _e9379093797_)))
                        (let ((_hd9379493808_ (##car _e9379393805_))
                              (_tl9379593810_ (##cdr _e9379393805_)))
                          (let ((_form93813_ _hd9379493808_))
                            (if '#t
                                (let* ((__self93818
                                        (gx#syntax-local-e__0 _form93813_))
                                       (__method93819
                                        (method-ref
                                         __self93818
                                         'compile-top-syntax)))
                                  (if __method93819
                                      (__method93819 __self93818 _stx93789_)
                                      (error '"Missing method"
                                             __self93818
                                             'compile-top-syntax)))
                                (_E9379293801_)))))
                      (_E9379293801_)))))
          (_E9379193815_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self93749_ _stx93750_)
        (let* ((_self9375193759_ _self93749_)
               (_E9375393763_
                (lambda () (error '"No clause matching" _self9375193759_)))
               (_K9375493775_
                (lambda (_K93766_)
                  (let ((_$e93768_ (gx#stx-source _stx93750_)))
                    (if _$e93768_
                        ((lambda (_g9377093772_)
                           (gx#stx-wrap-source
                            (_K93766_ _stx93750_)
                            _g9377093772_))
                         _$e93768_)
                        (_K93766_ _stx93750_))))))
          (if (##structure-instance-of? _self9375193759_ 'gx#core-expander::t)
              (let* ((_e9375593778_
                      (##unchecked-structure-ref
                       _self9375193759_
                       '1
                       gx#expander::t
                       '#f))
                     (_e9375693781_
                      (##unchecked-structure-ref
                       _self9375193759_
                       '2
                       gx#core-expander::t
                       '#f))
                     (_e9375793784_
                      (##unchecked-structure-ref
                       _self9375193759_
                       '3
                       gx#core-expander::t
                       '#f))
                     (_K93787_ _e9375793784_))
                (_K9375493775_ _K93787_))
              (_E9375393763_)))))
    (bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx93623_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx93623_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx93593_)
        (let* ((_e9359493601_ _stx93593_)
               (_E9359693605_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9359493601_)))
               (_E9359593619_
                (lambda ()
                  (if (gx#stx-pair? _e9359493601_)
                      (let ((_e9359793609_ (gx#syntax-e _e9359493601_)))
                        (let ((_hd9359893612_ (##car _e9359793609_))
                              (_tl9359993614_ (##cdr _e9359793609_)))
                          (let ((_body93617_ _tl9359993614_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body93617_))
                                (_E9359693605_)))))
                      (_E9359693605_)))))
          (_E9359593619_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx93562_)
        (let* ((_e9356393570_ _stx93562_)
               (_E9356593574_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9356393570_)))
               (_E9356493589_
                (lambda ()
                  (if (gx#stx-pair? _e9356393570_)
                      (let ((_e9356693578_ (gx#syntax-e _e9356393570_)))
                        (let ((_hd9356793581_ (##car _e9356693578_))
                              (_tl9356893583_ (##cdr _e9356693578_)))
                          (let ((_body93586_ _tl9356893583_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body93586_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E9356593574_)))))
                      (_E9356593574_)))))
          (_E9356493589_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_stx93532_)
        (let* ((_e9353393540_ _stx93532_)
               (_E9353593544_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9353393540_)))
               (_E9353493558_
                (lambda ()
                  (if (gx#stx-pair? _e9353393540_)
                      (let ((_e9353693548_ (gx#syntax-e _e9353393540_)))
                        (let ((_hd9353793551_ (##car _e9353693548_))
                              (_tl9353893553_ (##cdr _e9353693548_)))
                          (let ((_body93556_ _tl9353893553_))
                            (if '#t
                                (cons '%#begin-foreign _body93556_)
                                (_E9353593544_)))))
                      (_E9353593544_)))))
          (_E9353493558_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_stx93478_)
        (let* ((_e9347993492_ _stx93478_)
               (_E9348193496_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9347993492_)))
               (_E9348093528_
                (lambda ()
                  (if (gx#stx-pair? _e9347993492_)
                      (let ((_e9348293500_ (gx#syntax-e _e9347993492_)))
                        (let ((_hd9348393503_ (##car _e9348293500_))
                              (_tl9348493505_ (##cdr _e9348293500_)))
                          (if (gx#stx-pair? _tl9348493505_)
                              (let ((_e9348593508_
                                     (gx#syntax-e _tl9348493505_)))
                                (let ((_hd9348693511_ (##car _e9348593508_))
                                      (_tl9348793513_ (##cdr _e9348593508_)))
                                  (let ((_ann93516_ _hd9348693511_))
                                    (if (gx#stx-pair? _tl9348793513_)
                                        (let ((_e9348893518_
                                               (gx#syntax-e _tl9348793513_)))
                                          (let ((_hd9348993521_
                                                 (##car _e9348893518_))
                                                (_tl9349093523_
                                                 (##cdr _e9348893518_)))
                                            (let ((_expr93526_ _hd9348993521_))
                                              (if (gx#stx-null? _tl9349093523_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr93526_)
                                                      (_E9348193496_))
                                                  (_E9348193496_)))))
                                        (_E9348193496_)))))
                              (_E9348193496_))))
                      (_E9348193496_)))))
          (_E9348093528_))))
    (define gx#core-compile-top-import%
      (lambda (_stx93448_)
        (let* ((_e9344993456_ _stx93448_)
               (_E9345193460_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9344993456_)))
               (_E9345093474_
                (lambda ()
                  (if (gx#stx-pair? _e9344993456_)
                      (let ((_e9345293464_ (gx#syntax-e _e9344993456_)))
                        (let ((_hd9345393467_ (##car _e9345293464_))
                              (_tl9345493469_ (##cdr _e9345293464_)))
                          (let ((_body93472_ _tl9345493469_))
                            (if '#t
                                (cons '%#import _body93472_)
                                (_E9345193460_)))))
                      (_E9345193460_)))))
          (_E9345093474_))))
    (define gx#core-compile-top-module%
      (lambda (_stx93405_)
        (let* ((_e9340693416_ _stx93405_)
               (_E9340893420_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9340693416_)))
               (_E9340793444_
                (lambda ()
                  (if (gx#stx-pair? _e9340693416_)
                      (let ((_e9340993424_ (gx#syntax-e _e9340693416_)))
                        (let ((_hd9341093427_ (##car _e9340993424_))
                              (_tl9341193429_ (##cdr _e9340993424_)))
                          (if (gx#stx-pair? _tl9341193429_)
                              (let ((_e9341293432_
                                     (gx#syntax-e _tl9341193429_)))
                                (let ((_hd9341393435_ (##car _e9341293432_))
                                      (_tl9341493437_ (##cdr _e9341293432_)))
                                  (let* ((_hd93440_ _hd9341393435_)
                                         (_body93442_ _tl9341493437_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _hd93440_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body93442_)))
                                        (_E9340893420_)))))
                              (_E9340893420_))))
                      (_E9340893420_)))))
          (_E9340793444_))))
    (define gx#core-compile-top-export%
      (lambda (_stx93375_)
        (let* ((_e9337693383_ _stx93375_)
               (_E9337893387_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9337693383_)))
               (_E9337793401_
                (lambda ()
                  (if (gx#stx-pair? _e9337693383_)
                      (let ((_e9337993391_ (gx#syntax-e _e9337693383_)))
                        (let ((_hd9338093394_ (##car _e9337993391_))
                              (_tl9338193396_ (##cdr _e9337993391_)))
                          (let ((_body93399_ _tl9338193396_))
                            (if '#t
                                (cons '%#export _body93399_)
                                (_E9337893387_)))))
                      (_E9337893387_)))))
          (_E9337793401_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx93345_)
        (let* ((_e9334693353_ _stx93345_)
               (_E9334893357_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9334693353_)))
               (_E9334793371_
                (lambda ()
                  (if (gx#stx-pair? _e9334693353_)
                      (let ((_e9334993361_ (gx#syntax-e _e9334693353_)))
                        (let ((_hd9335093364_ (##car _e9334993361_))
                              (_tl9335193366_ (##cdr _e9334993361_)))
                          (let ((_body93369_ _tl9335193366_))
                            (if '#t
                                (cons '%#provide _body93369_)
                                (_E9334893357_)))))
                      (_E9334893357_)))))
          (_E9334793371_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx93315_)
        (let* ((_e9331693323_ _stx93315_)
               (_E9331893327_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9331693323_)))
               (_E9331793341_
                (lambda ()
                  (if (gx#stx-pair? _e9331693323_)
                      (let ((_e9331993331_ (gx#syntax-e _e9331693323_)))
                        (let ((_hd9332093334_ (##car _e9331993331_))
                              (_tl9332193336_ (##cdr _e9331993331_)))
                          (let ((_body93339_ _tl9332193336_))
                            (if '#t
                                (cons '%#extern _body93339_)
                                (_E9331893327_)))))
                      (_E9331893327_)))))
          (_E9331793341_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx93261_)
        (let* ((_e9326293275_ _stx93261_)
               (_E9326493279_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9326293275_)))
               (_E9326393311_
                (lambda ()
                  (if (gx#stx-pair? _e9326293275_)
                      (let ((_e9326593283_ (gx#syntax-e _e9326293275_)))
                        (let ((_hd9326693286_ (##car _e9326593283_))
                              (_tl9326793288_ (##cdr _e9326593283_)))
                          (if (gx#stx-pair? _tl9326793288_)
                              (let ((_e9326893291_
                                     (gx#syntax-e _tl9326793288_)))
                                (let ((_hd9326993294_ (##car _e9326893291_))
                                      (_tl9327093296_ (##cdr _e9326893291_)))
                                  (let ((_hd93299_ _hd9326993294_))
                                    (if (gx#stx-pair? _tl9327093296_)
                                        (let ((_e9327193301_
                                               (gx#syntax-e _tl9327093296_)))
                                          (let ((_hd9327293304_
                                                 (##car _e9327193301_))
                                                (_tl9327393306_
                                                 (##cdr _e9327193301_)))
                                            (let ((_expr93309_ _hd9327293304_))
                                              (if (gx#stx-null? _tl9327393306_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd93299_)
                          (cons (gx#core-compile-top-syntax _expr93309_) '())))
              (_E9326493279_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9326493279_)))))
                                        (_E9326493279_)))))
                              (_E9326493279_))))
                      (_E9326493279_)))))
          (_E9326393311_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx93206_)
        (let* ((_e9320793220_ _stx93206_)
               (_E9320993224_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9320793220_)))
               (_E9320893257_
                (lambda ()
                  (if (gx#stx-pair? _e9320793220_)
                      (let ((_e9321093228_ (gx#syntax-e _e9320793220_)))
                        (let ((_hd9321193231_ (##car _e9321093228_))
                              (_tl9321293233_ (##cdr _e9321093228_)))
                          (if (gx#stx-pair? _tl9321293233_)
                              (let ((_e9321393236_
                                     (gx#syntax-e _tl9321293233_)))
                                (let ((_hd9321493239_ (##car _e9321393236_))
                                      (_tl9321593241_ (##cdr _e9321393236_)))
                                  (let ((_hd93244_ _hd9321493239_))
                                    (if (gx#stx-pair? _tl9321593241_)
                                        (let ((_e9321693246_
                                               (gx#syntax-e _tl9321593241_)))
                                          (let ((_hd9321793249_
                                                 (##car _e9321693246_))
                                                (_tl9321893251_
                                                 (##cdr _e9321693246_)))
                                            (let ((_expr93254_ _hd9321793249_))
                                              (if (gx#stx-null? _tl9321893251_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd93244_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr93254_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E9320993224_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9320993224_)))))
                                        (_E9320993224_)))))
                              (_E9320993224_))))
                      (_E9320993224_)))))
          (_E9320893257_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx93176_)
        (let* ((_e9317793184_ _stx93176_)
               (_E9317993188_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9317793184_)))
               (_E9317893202_
                (lambda ()
                  (if (gx#stx-pair? _e9317793184_)
                      (let ((_e9318093192_ (gx#syntax-e _e9317793184_)))
                        (let ((_hd9318193195_ (##car _e9318093192_))
                              (_tl9318293197_ (##cdr _e9318093192_)))
                          (let ((_body93200_ _tl9318293197_))
                            (if '#t
                                (cons '%#define-alias _body93200_)
                                (_E9317993188_)))))
                      (_E9317993188_)))))
          (_E9317893202_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx93146_)
        (let* ((_e9314793154_ _stx93146_)
               (_E9314993158_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9314793154_)))
               (_E9314893172_
                (lambda ()
                  (if (gx#stx-pair? _e9314793154_)
                      (let ((_e9315093162_ (gx#syntax-e _e9314793154_)))
                        (let ((_hd9315193165_ (##car _e9315093162_))
                              (_tl9315293167_ (##cdr _e9315093162_)))
                          (let ((_body93170_ _tl9315293167_))
                            (if '#t
                                (cons '%#define-runtime _body93170_)
                                (_E9314993158_)))))
                      (_E9314993158_)))))
          (_E9314893172_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx93116_)
        (let* ((_e9311793124_ _stx93116_)
               (_E9311993128_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9311793124_)))
               (_E9311893142_
                (lambda ()
                  (if (gx#stx-pair? _e9311793124_)
                      (let ((_e9312093132_ (gx#syntax-e _e9311793124_)))
                        (let ((_hd9312193135_ (##car _e9312093132_))
                              (_tl9312293137_ (##cdr _e9312093132_)))
                          (let ((_decls93140_ _tl9312293137_))
                            (if '#t
                                (cons '%#declare _decls93140_)
                                (_E9311993128_)))))
                      (_E9311993128_)))))
          (_E9311893142_))))
    (define gx#core-compile-top-lambda%
      (lambda (_stx93086_)
        (let* ((_e9308793094_ _stx93086_)
               (_E9308993098_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9308793094_)))
               (_E9308893112_
                (lambda ()
                  (if (gx#stx-pair? _e9308793094_)
                      (let ((_e9309093102_ (gx#syntax-e _e9308793094_)))
                        (let ((_hd9309193105_ (##car _e9309093102_))
                              (_tl9309293107_ (##cdr _e9309093102_)))
                          (let ((_clause93110_ _tl9309293107_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause93110_))
                                (_E9308993098_)))))
                      (_E9308993098_)))))
          (_E9308893112_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx93043_)
        (let* ((_e9304493054_ _stx93043_)
               (_E9304693058_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9304493054_)))
               (_E9304593082_
                (lambda ()
                  (if (gx#stx-pair? _e9304493054_)
                      (let ((_e9304793062_ (gx#syntax-e _e9304493054_)))
                        (let ((_hd9304893065_ (##car _e9304793062_))
                              (_tl9304993067_ (##cdr _e9304793062_)))
                          (let ((_hd93070_ _hd9304893065_))
                            (if (gx#stx-pair? _tl9304993067_)
                                (let ((_e9305093072_
                                       (gx#syntax-e _tl9304993067_)))
                                  (let ((_hd9305193075_ (##car _e9305093072_))
                                        (_tl9305293077_ (##cdr _e9305093072_)))
                                    (let ((_body93080_ _hd9305193075_))
                                      (if (gx#stx-null? _tl9305293077_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd93070_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body93080_)
                                                          '()))
                                              (_E9304693058_))
                                          (_E9304693058_)))))
                                (_E9304693058_)))))
                      (_E9304693058_)))))
          (_E9304593082_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx93013_)
        (let* ((_e9301493021_ _stx93013_)
               (_E9301693025_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9301493021_)))
               (_E9301593039_
                (lambda ()
                  (if (gx#stx-pair? _e9301493021_)
                      (let ((_e9301793029_ (gx#syntax-e _e9301493021_)))
                        (let ((_hd9301893032_ (##car _e9301793029_))
                              (_tl9301993034_ (##cdr _e9301793029_)))
                          (let ((_clauses93037_ _tl9301993034_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses93037_))
                                (_E9301693025_)))))
                      (_E9301693025_)))))
          (_E9301593039_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx92948_ _form92949_)
        (let* ((_e9295092963_ _stx92948_)
               (_E9295292967_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9295092963_)))
               (_E9295192999_
                (lambda ()
                  (if (gx#stx-pair? _e9295092963_)
                      (let ((_e9295392971_ (gx#syntax-e _e9295092963_)))
                        (let ((_hd9295492974_ (##car _e9295392971_))
                              (_tl9295592976_ (##cdr _e9295392971_)))
                          (if (gx#stx-pair? _tl9295592976_)
                              (let ((_e9295692979_
                                     (gx#syntax-e _tl9295592976_)))
                                (let ((_hd9295792982_ (##car _e9295692979_))
                                      (_tl9295892984_ (##cdr _e9295692979_)))
                                  (let ((_hd92987_ _hd9295792982_))
                                    (if (gx#stx-pair? _tl9295892984_)
                                        (let ((_e9295992989_
                                               (gx#syntax-e _tl9295892984_)))
                                          (let ((_hd9296092992_
                                                 (##car _e9295992989_))
                                                (_tl9296192994_
                                                 (##cdr _e9295992989_)))
                                            (let ((_body92997_ _hd9296092992_))
                                              (if (gx#stx-null? _tl9296192994_)
                                                  (if '#t
                                                      (cons _form92949_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd92987_)
                          (cons (gx#core-compile-top-syntax _body92997_) '())))
              (_E9295292967_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9295292967_)))))
                                        (_E9295292967_)))))
                              (_E9295292967_))))
                      (_E9295292967_)))))
          (_E9295192999_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx93006_)
        (let ((_form93008_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx93006_ _form93008_))))
    (define gx#core-compile-top-let-values%
      (lambda _g93821_
        (let ((_g93820_ (##length _g93821_)))
          (cond ((##fx= _g93820_ 1)
                 (apply (lambda (_stx93006_)
                          (gx#core-compile-top-let-values%__0 _stx93006_))
                        _g93821_))
                ((##fx= _g93820_ 2)
                 (apply (lambda (_stx93010_ _form93011_)
                          (gx#core-compile-top-let-values%__%
                           _stx93010_
                           _form93011_))
                        _g93821_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g93821_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx92945_)
        (gx#core-compile-top-let-values%__% _stx92945_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx92943_)
        (gx#core-compile-top-let-values%__% _stx92943_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx92902_)
        (let* ((_e9290392913_ _stx92902_)
               (_E9290592917_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9290392913_)))
               (_E9290492939_
                (lambda ()
                  (if (gx#stx-pair? _e9290392913_)
                      (let ((_e9290692921_ (gx#syntax-e _e9290392913_)))
                        (let ((_hd9290792924_ (##car _e9290692921_))
                              (_tl9290892926_ (##cdr _e9290692921_)))
                          (if (gx#stx-pair? _tl9290892926_)
                              (let ((_e9290992929_
                                     (gx#syntax-e _tl9290892926_)))
                                (let ((_hd9291092932_ (##car _e9290992929_))
                                      (_tl9291192934_ (##cdr _e9290992929_)))
                                  (let ((_e92937_ _hd9291092932_))
                                    (if (gx#stx-null? _tl9291192934_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e92937_)
                                                        '()))
                                            (_E9290592917_))
                                        (_E9290592917_)))))
                              (_E9290592917_))))
                      (_E9290592917_)))))
          (_E9290492939_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx92861_)
        (let* ((_e9286292872_ _stx92861_)
               (_E9286492876_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9286292872_)))
               (_E9286392898_
                (lambda ()
                  (if (gx#stx-pair? _e9286292872_)
                      (let ((_e9286592880_ (gx#syntax-e _e9286292872_)))
                        (let ((_hd9286692883_ (##car _e9286592880_))
                              (_tl9286792885_ (##cdr _e9286592880_)))
                          (if (gx#stx-pair? _tl9286792885_)
                              (let ((_e9286892888_
                                     (gx#syntax-e _tl9286792885_)))
                                (let ((_hd9286992891_ (##car _e9286892888_))
                                      (_tl9287092893_ (##cdr _e9286892888_)))
                                  (let ((_e92896_ _hd9286992891_))
                                    (if (gx#stx-null? _tl9287092893_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e92896_)
                                                        '()))
                                            (_E9286492876_))
                                        (_E9286492876_)))))
                              (_E9286492876_))))
                      (_E9286492876_)))))
          (_E9286392898_))))
    (define gx#core-compile-top-call%
      (lambda (_stx92818_)
        (let* ((_e9281992829_ _stx92818_)
               (_E9282192833_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9281992829_)))
               (_E9282092857_
                (lambda ()
                  (if (gx#stx-pair? _e9281992829_)
                      (let ((_e9282292837_ (gx#syntax-e _e9281992829_)))
                        (let ((_hd9282392840_ (##car _e9282292837_))
                              (_tl9282492842_ (##cdr _e9282292837_)))
                          (if (gx#stx-pair? _tl9282492842_)
                              (let ((_e9282592845_
                                     (gx#syntax-e _tl9282492842_)))
                                (let ((_hd9282692848_ (##car _e9282592845_))
                                      (_tl9282792850_ (##cdr _e9282592845_)))
                                  (let* ((_rator92853_ _hd9282692848_)
                                         (_args92855_ _tl9282792850_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator92853_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args92855_)))
                                        (_E9282192833_)))))
                              (_E9282192833_))))
                      (_E9282192833_)))))
          (_E9282092857_))))
    (define gx#core-compile-top-if%
      (lambda (_stx92751_)
        (let* ((_e9275292768_ _stx92751_)
               (_E9275492772_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9275292768_)))
               (_E9275392814_
                (lambda ()
                  (if (gx#stx-pair? _e9275292768_)
                      (let ((_e9275592776_ (gx#syntax-e _e9275292768_)))
                        (let ((_hd9275692779_ (##car _e9275592776_))
                              (_tl9275792781_ (##cdr _e9275592776_)))
                          (if (gx#stx-pair? _tl9275792781_)
                              (let ((_e9275892784_
                                     (gx#syntax-e _tl9275792781_)))
                                (let ((_hd9275992787_ (##car _e9275892784_))
                                      (_tl9276092789_ (##cdr _e9275892784_)))
                                  (let ((_test92792_ _hd9275992787_))
                                    (if (gx#stx-pair? _tl9276092789_)
                                        (let ((_e9276192794_
                                               (gx#syntax-e _tl9276092789_)))
                                          (let ((_hd9276292797_
                                                 (##car _e9276192794_))
                                                (_tl9276392799_
                                                 (##cdr _e9276192794_)))
                                            (let ((_K92802_ _hd9276292797_))
                                              (if (gx#stx-pair? _tl9276392799_)
                                                  (let ((_e9276492804_
                                                         (gx#syntax-e
                                                          _tl9276392799_)))
                                                    (let ((_hd9276592807_
                                                           (##car _e9276492804_))
                                                          (_tl9276692809_
                                                           (##cdr _e9276492804_)))
                                                      (let ((_E92812_
                                                             _hd9276592807_))
                                                        (if (gx#stx-null?
                                                             _tl9276692809_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test92792_)
                                    (cons (gx#core-compile-top-syntax _K92802_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E92812_)
                                                '()))))
                        (_E9275492772_))
                    (_E9275492772_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9275492772_)))))
                                        (_E9275492772_)))))
                              (_E9275492772_))))
                      (_E9275492772_)))))
          (_E9275392814_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx92710_)
        (let* ((_e9271192721_ _stx92710_)
               (_E9271392725_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9271192721_)))
               (_E9271292747_
                (lambda ()
                  (if (gx#stx-pair? _e9271192721_)
                      (let ((_e9271492729_ (gx#syntax-e _e9271192721_)))
                        (let ((_hd9271592732_ (##car _e9271492729_))
                              (_tl9271692734_ (##cdr _e9271492729_)))
                          (if (gx#stx-pair? _tl9271692734_)
                              (let ((_e9271792737_
                                     (gx#syntax-e _tl9271692734_)))
                                (let ((_hd9271892740_ (##car _e9271792737_))
                                      (_tl9271992742_ (##cdr _e9271792737_)))
                                  (let ((_id92745_ _hd9271892740_))
                                    (if (gx#stx-null? _tl9271992742_)
                                        (if (gx#identifier? _id92745_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id92745_)
                                                        '()))
                                            (_E9271392725_))
                                        (_E9271392725_)))))
                              (_E9271392725_))))
                      (_E9271392725_)))))
          (_E9271292747_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx92656_)
        (let* ((_e9265792670_ _stx92656_)
               (_E9265992674_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9265792670_)))
               (_E9265892706_
                (lambda ()
                  (if (gx#stx-pair? _e9265792670_)
                      (let ((_e9266092678_ (gx#syntax-e _e9265792670_)))
                        (let ((_hd9266192681_ (##car _e9266092678_))
                              (_tl9266292683_ (##cdr _e9266092678_)))
                          (if (gx#stx-pair? _tl9266292683_)
                              (let ((_e9266392686_
                                     (gx#syntax-e _tl9266292683_)))
                                (let ((_hd9266492689_ (##car _e9266392686_))
                                      (_tl9266592691_ (##cdr _e9266392686_)))
                                  (let ((_id92694_ _hd9266492689_))
                                    (if (gx#stx-pair? _tl9266592691_)
                                        (let ((_e9266692696_
                                               (gx#syntax-e _tl9266592691_)))
                                          (let ((_hd9266792699_
                                                 (##car _e9266692696_))
                                                (_tl9266892701_
                                                 (##cdr _e9266692696_)))
                                            (let ((_expr92704_ _hd9266792699_))
                                              (if (gx#stx-null? _tl9266892701_)
                                                  (if (gx#identifier?
                                                       _id92694_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id92694_)
                          (cons (gx#core-compile-top-syntax _expr92704_) '())))
              (_E9265992674_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9265992674_)))))
                                        (_E9265992674_)))))
                              (_E9265992674_))))
                      (_E9265992674_)))))
          (_E9265892706_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id92651_)
        (let ((_$e92653_ (gx#resolve-identifier__0 _id92651_)))
          (if _$e92653_
              (##unchecked-structure-ref _$e92653_ '1 gx#binding::t '#f)
              _id92651_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd92649_)
        (if (gx#identifier? _hd92649_)
            (gx#core-compile-top-runtime-ref _hd92649_)
            '#f)))))
