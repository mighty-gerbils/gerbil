(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1711709197)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx92718_)
        (let* ((_e9271992726_ _stx92718_)
               (_E9272192730_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9271992726_)))
               (_E9272092744_
                (lambda ()
                  (if (gx#stx-pair? _e9271992726_)
                      (let ((_e9272292734_ (gx#syntax-e _e9271992726_)))
                        (let ((_hd9272392737_ (##car _e9272292734_))
                              (_tl9272492739_ (##cdr _e9272292734_)))
                          (let ((_form92742_ _hd9272392737_))
                            (if '#t
                                (let* ((__self92747
                                        (gx#syntax-local-e__0 _form92742_))
                                       (__method92748
                                        (__method-ref
                                         __self92747
                                         'compile-top-syntax)))
                                  (if __method92748
                                      (__method92748 __self92747 _stx92718_)
                                      (error '"Missing method"
                                             __self92747
                                             'compile-top-syntax)))
                                (_E9272192730_)))))
                      (_E9272192730_)))))
          (_E9272092744_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self92678_ _stx92679_)
        (let* ((_self9268092688_ _self92678_)
               (_E9268292692_
                (lambda () (error '"No clause matching" _self9268092688_)))
               (_K9268392704_
                (lambda (_K92695_)
                  (let ((_$e92697_ (gx#stx-source _stx92679_)))
                    (if _$e92697_
                        ((lambda (_g9269992701_)
                           (gx#stx-wrap-source
                            (_K92695_ _stx92679_)
                            _g9269992701_))
                         _$e92697_)
                        (_K92695_ _stx92679_))))))
          (if (##structure-instance-of? _self9268092688_ 'gx#core-expander::t)
              (let* ((_e9268492707_
                      (##unchecked-structure-ref _self9268092688_ '1 '#f '#f))
                     (_e9268592710_
                      (##unchecked-structure-ref _self9268092688_ '2 '#f '#f))
                     (_e9268692713_
                      (##unchecked-structure-ref _self9268092688_ '3 '#f '#f))
                     (_K92716_ _e9268692713_))
                (_K9268392704_ _K92716_))
              (_E9268292692_)))))
    (__bind-method!
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx92552_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx92552_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx92522_)
        (let* ((_e9252392530_ _stx92522_)
               (_E9252592534_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9252392530_)))
               (_E9252492548_
                (lambda ()
                  (if (gx#stx-pair? _e9252392530_)
                      (let ((_e9252692538_ (gx#syntax-e _e9252392530_)))
                        (let ((_hd9252792541_ (##car _e9252692538_))
                              (_tl9252892543_ (##cdr _e9252692538_)))
                          (let ((_body92546_ _tl9252892543_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body92546_))
                                (_E9252592534_)))))
                      (_E9252592534_)))))
          (_E9252492548_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx92491_)
        (let* ((_e9249292499_ _stx92491_)
               (_E9249492503_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9249292499_)))
               (_E9249392518_
                (lambda ()
                  (if (gx#stx-pair? _e9249292499_)
                      (let ((_e9249592507_ (gx#syntax-e _e9249292499_)))
                        (let ((_hd9249692510_ (##car _e9249592507_))
                              (_tl9249792512_ (##cdr _e9249592507_)))
                          (let ((_body92515_ _tl9249792512_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (__call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body92515_))
                                       gx#current-expander-phi
                                       (##fx+ (gx#current-expander-phi) '1)))
                                (_E9249492503_)))))
                      (_E9249492503_)))))
          (_E9249392518_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_stx92461_)
        (let* ((_e9246292469_ _stx92461_)
               (_E9246492473_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9246292469_)))
               (_E9246392487_
                (lambda ()
                  (if (gx#stx-pair? _e9246292469_)
                      (let ((_e9246592477_ (gx#syntax-e _e9246292469_)))
                        (let ((_hd9246692480_ (##car _e9246592477_))
                              (_tl9246792482_ (##cdr _e9246592477_)))
                          (let ((_body92485_ _tl9246792482_))
                            (if '#t
                                (cons '%#begin-foreign _body92485_)
                                (_E9246492473_)))))
                      (_E9246492473_)))))
          (_E9246392487_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_stx92407_)
        (let* ((_e9240892421_ _stx92407_)
               (_E9241092425_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9240892421_)))
               (_E9240992457_
                (lambda ()
                  (if (gx#stx-pair? _e9240892421_)
                      (let ((_e9241192429_ (gx#syntax-e _e9240892421_)))
                        (let ((_hd9241292432_ (##car _e9241192429_))
                              (_tl9241392434_ (##cdr _e9241192429_)))
                          (if (gx#stx-pair? _tl9241392434_)
                              (let ((_e9241492437_
                                     (gx#syntax-e _tl9241392434_)))
                                (let ((_hd9241592440_ (##car _e9241492437_))
                                      (_tl9241692442_ (##cdr _e9241492437_)))
                                  (let ((_ann92445_ _hd9241592440_))
                                    (if (gx#stx-pair? _tl9241692442_)
                                        (let ((_e9241792447_
                                               (gx#syntax-e _tl9241692442_)))
                                          (let ((_hd9241892450_
                                                 (##car _e9241792447_))
                                                (_tl9241992452_
                                                 (##cdr _e9241792447_)))
                                            (let ((_expr92455_ _hd9241892450_))
                                              (if (gx#stx-null? _tl9241992452_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr92455_)
                                                      (_E9241092425_))
                                                  (_E9241092425_)))))
                                        (_E9241092425_)))))
                              (_E9241092425_))))
                      (_E9241092425_)))))
          (_E9240992457_))))
    (define gx#core-compile-top-import%
      (lambda (_stx92377_)
        (let* ((_e9237892385_ _stx92377_)
               (_E9238092389_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9237892385_)))
               (_E9237992403_
                (lambda ()
                  (if (gx#stx-pair? _e9237892385_)
                      (let ((_e9238192393_ (gx#syntax-e _e9237892385_)))
                        (let ((_hd9238292396_ (##car _e9238192393_))
                              (_tl9238392398_ (##cdr _e9238192393_)))
                          (let ((_body92401_ _tl9238392398_))
                            (if '#t
                                (cons '%#import _body92401_)
                                (_E9238092389_)))))
                      (_E9238092389_)))))
          (_E9237992403_))))
    (define gx#core-compile-top-module%
      (lambda (_stx92334_)
        (let* ((_e9233592345_ _stx92334_)
               (_E9233792349_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9233592345_)))
               (_E9233692373_
                (lambda ()
                  (if (gx#stx-pair? _e9233592345_)
                      (let ((_e9233892353_ (gx#syntax-e _e9233592345_)))
                        (let ((_hd9233992356_ (##car _e9233892353_))
                              (_tl9234092358_ (##cdr _e9233892353_)))
                          (if (gx#stx-pair? _tl9234092358_)
                              (let ((_e9234192361_
                                     (gx#syntax-e _tl9234092358_)))
                                (let ((_hd9234292364_ (##car _e9234192361_))
                                      (_tl9234392366_ (##cdr _e9234192361_)))
                                  (let* ((_hd92369_ _hd9234292364_)
                                         (_body92371_ _tl9234392366_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _hd92369_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body92371_)))
                                        (_E9233792349_)))))
                              (_E9233792349_))))
                      (_E9233792349_)))))
          (_E9233692373_))))
    (define gx#core-compile-top-export%
      (lambda (_stx92304_)
        (let* ((_e9230592312_ _stx92304_)
               (_E9230792316_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9230592312_)))
               (_E9230692330_
                (lambda ()
                  (if (gx#stx-pair? _e9230592312_)
                      (let ((_e9230892320_ (gx#syntax-e _e9230592312_)))
                        (let ((_hd9230992323_ (##car _e9230892320_))
                              (_tl9231092325_ (##cdr _e9230892320_)))
                          (let ((_body92328_ _tl9231092325_))
                            (if '#t
                                (cons '%#export _body92328_)
                                (_E9230792316_)))))
                      (_E9230792316_)))))
          (_E9230692330_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx92274_)
        (let* ((_e9227592282_ _stx92274_)
               (_E9227792286_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9227592282_)))
               (_E9227692300_
                (lambda ()
                  (if (gx#stx-pair? _e9227592282_)
                      (let ((_e9227892290_ (gx#syntax-e _e9227592282_)))
                        (let ((_hd9227992293_ (##car _e9227892290_))
                              (_tl9228092295_ (##cdr _e9227892290_)))
                          (let ((_body92298_ _tl9228092295_))
                            (if '#t
                                (cons '%#provide _body92298_)
                                (_E9227792286_)))))
                      (_E9227792286_)))))
          (_E9227692300_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx92244_)
        (let* ((_e9224592252_ _stx92244_)
               (_E9224792256_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9224592252_)))
               (_E9224692270_
                (lambda ()
                  (if (gx#stx-pair? _e9224592252_)
                      (let ((_e9224892260_ (gx#syntax-e _e9224592252_)))
                        (let ((_hd9224992263_ (##car _e9224892260_))
                              (_tl9225092265_ (##cdr _e9224892260_)))
                          (let ((_body92268_ _tl9225092265_))
                            (if '#t
                                (cons '%#extern _body92268_)
                                (_E9224792256_)))))
                      (_E9224792256_)))))
          (_E9224692270_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx92190_)
        (let* ((_e9219192204_ _stx92190_)
               (_E9219392208_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9219192204_)))
               (_E9219292240_
                (lambda ()
                  (if (gx#stx-pair? _e9219192204_)
                      (let ((_e9219492212_ (gx#syntax-e _e9219192204_)))
                        (let ((_hd9219592215_ (##car _e9219492212_))
                              (_tl9219692217_ (##cdr _e9219492212_)))
                          (if (gx#stx-pair? _tl9219692217_)
                              (let ((_e9219792220_
                                     (gx#syntax-e _tl9219692217_)))
                                (let ((_hd9219892223_ (##car _e9219792220_))
                                      (_tl9219992225_ (##cdr _e9219792220_)))
                                  (let ((_hd92228_ _hd9219892223_))
                                    (if (gx#stx-pair? _tl9219992225_)
                                        (let ((_e9220092230_
                                               (gx#syntax-e _tl9219992225_)))
                                          (let ((_hd9220192233_
                                                 (##car _e9220092230_))
                                                (_tl9220292235_
                                                 (##cdr _e9220092230_)))
                                            (let ((_expr92238_ _hd9220192233_))
                                              (if (gx#stx-null? _tl9220292235_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd92228_)
                          (cons (gx#core-compile-top-syntax _expr92238_) '())))
              (_E9219392208_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9219392208_)))))
                                        (_E9219392208_)))))
                              (_E9219392208_))))
                      (_E9219392208_)))))
          (_E9219292240_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx92135_)
        (let* ((_e9213692149_ _stx92135_)
               (_E9213892153_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9213692149_)))
               (_E9213792186_
                (lambda ()
                  (if (gx#stx-pair? _e9213692149_)
                      (let ((_e9213992157_ (gx#syntax-e _e9213692149_)))
                        (let ((_hd9214092160_ (##car _e9213992157_))
                              (_tl9214192162_ (##cdr _e9213992157_)))
                          (if (gx#stx-pair? _tl9214192162_)
                              (let ((_e9214292165_
                                     (gx#syntax-e _tl9214192162_)))
                                (let ((_hd9214392168_ (##car _e9214292165_))
                                      (_tl9214492170_ (##cdr _e9214292165_)))
                                  (let ((_hd92173_ _hd9214392168_))
                                    (if (gx#stx-pair? _tl9214492170_)
                                        (let ((_e9214592175_
                                               (gx#syntax-e _tl9214492170_)))
                                          (let ((_hd9214692178_
                                                 (##car _e9214592175_))
                                                (_tl9214792180_
                                                 (##cdr _e9214592175_)))
                                            (let ((_expr92183_ _hd9214692178_))
                                              (if (gx#stx-null? _tl9214792180_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd92173_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (__call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr92183_))
                                 gx#current-expander-phi
                                 (##fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E9213892153_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9213892153_)))))
                                        (_E9213892153_)))))
                              (_E9213892153_))))
                      (_E9213892153_)))))
          (_E9213792186_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx92105_)
        (let* ((_e9210692113_ _stx92105_)
               (_E9210892117_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9210692113_)))
               (_E9210792131_
                (lambda ()
                  (if (gx#stx-pair? _e9210692113_)
                      (let ((_e9210992121_ (gx#syntax-e _e9210692113_)))
                        (let ((_hd9211092124_ (##car _e9210992121_))
                              (_tl9211192126_ (##cdr _e9210992121_)))
                          (let ((_body92129_ _tl9211192126_))
                            (if '#t
                                (cons '%#define-alias _body92129_)
                                (_E9210892117_)))))
                      (_E9210892117_)))))
          (_E9210792131_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx92075_)
        (let* ((_e9207692083_ _stx92075_)
               (_E9207892087_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9207692083_)))
               (_E9207792101_
                (lambda ()
                  (if (gx#stx-pair? _e9207692083_)
                      (let ((_e9207992091_ (gx#syntax-e _e9207692083_)))
                        (let ((_hd9208092094_ (##car _e9207992091_))
                              (_tl9208192096_ (##cdr _e9207992091_)))
                          (let ((_body92099_ _tl9208192096_))
                            (if '#t
                                (cons '%#define-runtime _body92099_)
                                (_E9207892087_)))))
                      (_E9207892087_)))))
          (_E9207792101_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx92045_)
        (let* ((_e9204692053_ _stx92045_)
               (_E9204892057_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9204692053_)))
               (_E9204792071_
                (lambda ()
                  (if (gx#stx-pair? _e9204692053_)
                      (let ((_e9204992061_ (gx#syntax-e _e9204692053_)))
                        (let ((_hd9205092064_ (##car _e9204992061_))
                              (_tl9205192066_ (##cdr _e9204992061_)))
                          (let ((_decls92069_ _tl9205192066_))
                            (if '#t
                                (cons '%#declare _decls92069_)
                                (_E9204892057_)))))
                      (_E9204892057_)))))
          (_E9204792071_))))
    (define gx#core-compile-top-lambda%
      (lambda (_stx92015_)
        (let* ((_e9201692023_ _stx92015_)
               (_E9201892027_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9201692023_)))
               (_E9201792041_
                (lambda ()
                  (if (gx#stx-pair? _e9201692023_)
                      (let ((_e9201992031_ (gx#syntax-e _e9201692023_)))
                        (let ((_hd9202092034_ (##car _e9201992031_))
                              (_tl9202192036_ (##cdr _e9201992031_)))
                          (let ((_clause92039_ _tl9202192036_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause92039_))
                                (_E9201892027_)))))
                      (_E9201892027_)))))
          (_E9201792041_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx91972_)
        (let* ((_e9197391983_ _stx91972_)
               (_E9197591987_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9197391983_)))
               (_E9197492011_
                (lambda ()
                  (if (gx#stx-pair? _e9197391983_)
                      (let ((_e9197691991_ (gx#syntax-e _e9197391983_)))
                        (let ((_hd9197791994_ (##car _e9197691991_))
                              (_tl9197891996_ (##cdr _e9197691991_)))
                          (let ((_hd91999_ _hd9197791994_))
                            (if (gx#stx-pair? _tl9197891996_)
                                (let ((_e9197992001_
                                       (gx#syntax-e _tl9197891996_)))
                                  (let ((_hd9198092004_ (##car _e9197992001_))
                                        (_tl9198192006_ (##cdr _e9197992001_)))
                                    (let ((_body92009_ _hd9198092004_))
                                      (if (gx#stx-null? _tl9198192006_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd91999_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body92009_)
                                                          '()))
                                              (_E9197591987_))
                                          (_E9197591987_)))))
                                (_E9197591987_)))))
                      (_E9197591987_)))))
          (_E9197492011_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx91942_)
        (let* ((_e9194391950_ _stx91942_)
               (_E9194591954_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9194391950_)))
               (_E9194491968_
                (lambda ()
                  (if (gx#stx-pair? _e9194391950_)
                      (let ((_e9194691958_ (gx#syntax-e _e9194391950_)))
                        (let ((_hd9194791961_ (##car _e9194691958_))
                              (_tl9194891963_ (##cdr _e9194691958_)))
                          (let ((_clauses91966_ _tl9194891963_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses91966_))
                                (_E9194591954_)))))
                      (_E9194591954_)))))
          (_E9194491968_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx91877_ _form91878_)
        (let* ((_e9187991892_ _stx91877_)
               (_E9188191896_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9187991892_)))
               (_E9188091928_
                (lambda ()
                  (if (gx#stx-pair? _e9187991892_)
                      (let ((_e9188291900_ (gx#syntax-e _e9187991892_)))
                        (let ((_hd9188391903_ (##car _e9188291900_))
                              (_tl9188491905_ (##cdr _e9188291900_)))
                          (if (gx#stx-pair? _tl9188491905_)
                              (let ((_e9188591908_
                                     (gx#syntax-e _tl9188491905_)))
                                (let ((_hd9188691911_ (##car _e9188591908_))
                                      (_tl9188791913_ (##cdr _e9188591908_)))
                                  (let ((_hd91916_ _hd9188691911_))
                                    (if (gx#stx-pair? _tl9188791913_)
                                        (let ((_e9188891918_
                                               (gx#syntax-e _tl9188791913_)))
                                          (let ((_hd9188991921_
                                                 (##car _e9188891918_))
                                                (_tl9189091923_
                                                 (##cdr _e9188891918_)))
                                            (let ((_body91926_ _hd9188991921_))
                                              (if (gx#stx-null? _tl9189091923_)
                                                  (if '#t
                                                      (cons _form91878_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd91916_)
                          (cons (gx#core-compile-top-syntax _body91926_) '())))
              (_E9188191896_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9188191896_)))))
                                        (_E9188191896_)))))
                              (_E9188191896_))))
                      (_E9188191896_)))))
          (_E9188091928_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx91935_)
        (let ((_form91937_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx91935_ _form91937_))))
    (define gx#core-compile-top-let-values%
      (lambda _g92750_
        (let ((_g92749_ (##length _g92750_)))
          (cond ((##fx= _g92749_ 1)
                 (apply (lambda (_stx91935_)
                          (gx#core-compile-top-let-values%__0 _stx91935_))
                        _g92750_))
                ((##fx= _g92749_ 2)
                 (apply (lambda (_stx91939_ _form91940_)
                          (gx#core-compile-top-let-values%__%
                           _stx91939_
                           _form91940_))
                        _g92750_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g92750_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx91874_)
        (gx#core-compile-top-let-values%__% _stx91874_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx91872_)
        (gx#core-compile-top-let-values%__% _stx91872_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx91831_)
        (let* ((_e9183291842_ _stx91831_)
               (_E9183491846_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9183291842_)))
               (_E9183391868_
                (lambda ()
                  (if (gx#stx-pair? _e9183291842_)
                      (let ((_e9183591850_ (gx#syntax-e _e9183291842_)))
                        (let ((_hd9183691853_ (##car _e9183591850_))
                              (_tl9183791855_ (##cdr _e9183591850_)))
                          (if (gx#stx-pair? _tl9183791855_)
                              (let ((_e9183891858_
                                     (gx#syntax-e _tl9183791855_)))
                                (let ((_hd9183991861_ (##car _e9183891858_))
                                      (_tl9184091863_ (##cdr _e9183891858_)))
                                  (let ((_e91866_ _hd9183991861_))
                                    (if (gx#stx-null? _tl9184091863_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e91866_)
                                                        '()))
                                            (_E9183491846_))
                                        (_E9183491846_)))))
                              (_E9183491846_))))
                      (_E9183491846_)))))
          (_E9183391868_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx91790_)
        (let* ((_e9179191801_ _stx91790_)
               (_E9179391805_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9179191801_)))
               (_E9179291827_
                (lambda ()
                  (if (gx#stx-pair? _e9179191801_)
                      (let ((_e9179491809_ (gx#syntax-e _e9179191801_)))
                        (let ((_hd9179591812_ (##car _e9179491809_))
                              (_tl9179691814_ (##cdr _e9179491809_)))
                          (if (gx#stx-pair? _tl9179691814_)
                              (let ((_e9179791817_
                                     (gx#syntax-e _tl9179691814_)))
                                (let ((_hd9179891820_ (##car _e9179791817_))
                                      (_tl9179991822_ (##cdr _e9179791817_)))
                                  (let ((_e91825_ _hd9179891820_))
                                    (if (gx#stx-null? _tl9179991822_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e91825_)
                                                        '()))
                                            (_E9179391805_))
                                        (_E9179391805_)))))
                              (_E9179391805_))))
                      (_E9179391805_)))))
          (_E9179291827_))))
    (define gx#core-compile-top-call%
      (lambda (_stx91747_)
        (let* ((_e9174891758_ _stx91747_)
               (_E9175091762_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9174891758_)))
               (_E9174991786_
                (lambda ()
                  (if (gx#stx-pair? _e9174891758_)
                      (let ((_e9175191766_ (gx#syntax-e _e9174891758_)))
                        (let ((_hd9175291769_ (##car _e9175191766_))
                              (_tl9175391771_ (##cdr _e9175191766_)))
                          (if (gx#stx-pair? _tl9175391771_)
                              (let ((_e9175491774_
                                     (gx#syntax-e _tl9175391771_)))
                                (let ((_hd9175591777_ (##car _e9175491774_))
                                      (_tl9175691779_ (##cdr _e9175491774_)))
                                  (let* ((_rator91782_ _hd9175591777_)
                                         (_args91784_ _tl9175691779_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator91782_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args91784_)))
                                        (_E9175091762_)))))
                              (_E9175091762_))))
                      (_E9175091762_)))))
          (_E9174991786_))))
    (define gx#core-compile-top-if%
      (lambda (_stx91680_)
        (let* ((_e9168191697_ _stx91680_)
               (_E9168391701_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9168191697_)))
               (_E9168291743_
                (lambda ()
                  (if (gx#stx-pair? _e9168191697_)
                      (let ((_e9168491705_ (gx#syntax-e _e9168191697_)))
                        (let ((_hd9168591708_ (##car _e9168491705_))
                              (_tl9168691710_ (##cdr _e9168491705_)))
                          (if (gx#stx-pair? _tl9168691710_)
                              (let ((_e9168791713_
                                     (gx#syntax-e _tl9168691710_)))
                                (let ((_hd9168891716_ (##car _e9168791713_))
                                      (_tl9168991718_ (##cdr _e9168791713_)))
                                  (let ((_test91721_ _hd9168891716_))
                                    (if (gx#stx-pair? _tl9168991718_)
                                        (let ((_e9169091723_
                                               (gx#syntax-e _tl9168991718_)))
                                          (let ((_hd9169191726_
                                                 (##car _e9169091723_))
                                                (_tl9169291728_
                                                 (##cdr _e9169091723_)))
                                            (let ((_K91731_ _hd9169191726_))
                                              (if (gx#stx-pair? _tl9169291728_)
                                                  (let ((_e9169391733_
                                                         (gx#syntax-e
                                                          _tl9169291728_)))
                                                    (let ((_hd9169491736_
                                                           (##car _e9169391733_))
                                                          (_tl9169591738_
                                                           (##cdr _e9169391733_)))
                                                      (let ((_E91741_
                                                             _hd9169491736_))
                                                        (if (gx#stx-null?
                                                             _tl9169591738_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test91721_)
                                    (cons (gx#core-compile-top-syntax _K91731_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E91741_)
                                                '()))))
                        (_E9168391701_))
                    (_E9168391701_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9168391701_)))))
                                        (_E9168391701_)))))
                              (_E9168391701_))))
                      (_E9168391701_)))))
          (_E9168291743_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx91639_)
        (let* ((_e9164091650_ _stx91639_)
               (_E9164291654_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9164091650_)))
               (_E9164191676_
                (lambda ()
                  (if (gx#stx-pair? _e9164091650_)
                      (let ((_e9164391658_ (gx#syntax-e _e9164091650_)))
                        (let ((_hd9164491661_ (##car _e9164391658_))
                              (_tl9164591663_ (##cdr _e9164391658_)))
                          (if (gx#stx-pair? _tl9164591663_)
                              (let ((_e9164691666_
                                     (gx#syntax-e _tl9164591663_)))
                                (let ((_hd9164791669_ (##car _e9164691666_))
                                      (_tl9164891671_ (##cdr _e9164691666_)))
                                  (let ((_id91674_ _hd9164791669_))
                                    (if (gx#stx-null? _tl9164891671_)
                                        (if (gx#identifier? _id91674_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id91674_)
                                                        '()))
                                            (_E9164291654_))
                                        (_E9164291654_)))))
                              (_E9164291654_))))
                      (_E9164291654_)))))
          (_E9164191676_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx91585_)
        (let* ((_e9158691599_ _stx91585_)
               (_E9158891603_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9158691599_)))
               (_E9158791635_
                (lambda ()
                  (if (gx#stx-pair? _e9158691599_)
                      (let ((_e9158991607_ (gx#syntax-e _e9158691599_)))
                        (let ((_hd9159091610_ (##car _e9158991607_))
                              (_tl9159191612_ (##cdr _e9158991607_)))
                          (if (gx#stx-pair? _tl9159191612_)
                              (let ((_e9159291615_
                                     (gx#syntax-e _tl9159191612_)))
                                (let ((_hd9159391618_ (##car _e9159291615_))
                                      (_tl9159491620_ (##cdr _e9159291615_)))
                                  (let ((_id91623_ _hd9159391618_))
                                    (if (gx#stx-pair? _tl9159491620_)
                                        (let ((_e9159591625_
                                               (gx#syntax-e _tl9159491620_)))
                                          (let ((_hd9159691628_
                                                 (##car _e9159591625_))
                                                (_tl9159791630_
                                                 (##cdr _e9159591625_)))
                                            (let ((_expr91633_ _hd9159691628_))
                                              (if (gx#stx-null? _tl9159791630_)
                                                  (if (gx#identifier?
                                                       _id91623_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id91623_)
                          (cons (gx#core-compile-top-syntax _expr91633_) '())))
              (_E9158891603_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9158891603_)))))
                                        (_E9158891603_)))))
                              (_E9158891603_))))
                      (_E9158891603_)))))
          (_E9158791635_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id91580_)
        (let ((_$e91582_ (gx#resolve-identifier__0 _id91580_)))
          (if _$e91582_
              (##unchecked-structure-ref _$e91582_ '1 '#f '#f)
              _id91580_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd91578_)
        (if (gx#identifier? _hd91578_)
            (gx#core-compile-top-runtime-ref _hd91578_)
            '#f)))))
