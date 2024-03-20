(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1710943498)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx96162_)
        (let* ((_e9616396170_ _stx96162_)
               (_E9616596174_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9616396170_)))
               (_E9616496188_
                (lambda ()
                  (if (gx#stx-pair? _e9616396170_)
                      (let ((_e9616696178_ (gx#syntax-e _e9616396170_)))
                        (let ((_hd9616796181_ (##car _e9616696178_))
                              (_tl9616896183_ (##cdr _e9616696178_)))
                          (let ((_form96186_ _hd9616796181_))
                            (if '#t
                                (let* ((__self96191
                                        (gx#syntax-local-e__0 _form96186_))
                                       (__method96192
                                        (method-ref
                                         __self96191
                                         'compile-top-syntax)))
                                  (if __method96192
                                      (__method96192 __self96191 _stx96162_)
                                      (error '"Missing method"
                                             __self96191
                                             'compile-top-syntax)))
                                (_E9616596174_)))))
                      (_E9616596174_)))))
          (_E9616496188_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self96122_ _stx96123_)
        (let* ((_self9612496132_ _self96122_)
               (_E9612696136_
                (lambda () (error '"No clause matching" _self9612496132_)))
               (_K9612796148_
                (lambda (_K96139_)
                  (let ((_$e96141_ (gx#stx-source _stx96123_)))
                    (if _$e96141_
                        ((lambda (_g9614396145_)
                           (gx#stx-wrap-source
                            (_K96139_ _stx96123_)
                            _g9614396145_))
                         _$e96141_)
                        (_K96139_ _stx96123_))))))
          (if (##structure-instance-of? _self9612496132_ 'gx#core-expander::t)
              (let* ((_e9612896151_
                      (##unchecked-structure-ref
                       _self9612496132_
                       '1
                       gx#expander::t
                       '#f))
                     (_e9612996154_
                      (##unchecked-structure-ref
                       _self9612496132_
                       '2
                       gx#core-expander::t
                       '#f))
                     (_e9613096157_
                      (##unchecked-structure-ref
                       _self9612496132_
                       '3
                       gx#core-expander::t
                       '#f))
                     (_K96160_ _e9613096157_))
                (_K9612796148_ _K96160_))
              (_E9612696136_)))))
    (bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx95996_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx95996_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx95966_)
        (let* ((_e9596795974_ _stx95966_)
               (_E9596995978_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9596795974_)))
               (_E9596895992_
                (lambda ()
                  (if (gx#stx-pair? _e9596795974_)
                      (let ((_e9597095982_ (gx#syntax-e _e9596795974_)))
                        (let ((_hd9597195985_ (##car _e9597095982_))
                              (_tl9597295987_ (##cdr _e9597095982_)))
                          (let ((_body95990_ _tl9597295987_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body95990_))
                                (_E9596995978_)))))
                      (_E9596995978_)))))
          (_E9596895992_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx95935_)
        (let* ((_e9593695943_ _stx95935_)
               (_E9593895947_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9593695943_)))
               (_E9593795962_
                (lambda ()
                  (if (gx#stx-pair? _e9593695943_)
                      (let ((_e9593995951_ (gx#syntax-e _e9593695943_)))
                        (let ((_hd9594095954_ (##car _e9593995951_))
                              (_tl9594195956_ (##cdr _e9593995951_)))
                          (let ((_body95959_ _tl9594195956_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body95959_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E9593895947_)))))
                      (_E9593895947_)))))
          (_E9593795962_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_stx95905_)
        (let* ((_e9590695913_ _stx95905_)
               (_E9590895917_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9590695913_)))
               (_E9590795931_
                (lambda ()
                  (if (gx#stx-pair? _e9590695913_)
                      (let ((_e9590995921_ (gx#syntax-e _e9590695913_)))
                        (let ((_hd9591095924_ (##car _e9590995921_))
                              (_tl9591195926_ (##cdr _e9590995921_)))
                          (let ((_body95929_ _tl9591195926_))
                            (if '#t
                                (cons '%#begin-foreign _body95929_)
                                (_E9590895917_)))))
                      (_E9590895917_)))))
          (_E9590795931_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_stx95851_)
        (let* ((_e9585295865_ _stx95851_)
               (_E9585495869_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9585295865_)))
               (_E9585395901_
                (lambda ()
                  (if (gx#stx-pair? _e9585295865_)
                      (let ((_e9585595873_ (gx#syntax-e _e9585295865_)))
                        (let ((_hd9585695876_ (##car _e9585595873_))
                              (_tl9585795878_ (##cdr _e9585595873_)))
                          (if (gx#stx-pair? _tl9585795878_)
                              (let ((_e9585895881_
                                     (gx#syntax-e _tl9585795878_)))
                                (let ((_hd9585995884_ (##car _e9585895881_))
                                      (_tl9586095886_ (##cdr _e9585895881_)))
                                  (let ((_ann95889_ _hd9585995884_))
                                    (if (gx#stx-pair? _tl9586095886_)
                                        (let ((_e9586195891_
                                               (gx#syntax-e _tl9586095886_)))
                                          (let ((_hd9586295894_
                                                 (##car _e9586195891_))
                                                (_tl9586395896_
                                                 (##cdr _e9586195891_)))
                                            (let ((_expr95899_ _hd9586295894_))
                                              (if (gx#stx-null? _tl9586395896_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr95899_)
                                                      (_E9585495869_))
                                                  (_E9585495869_)))))
                                        (_E9585495869_)))))
                              (_E9585495869_))))
                      (_E9585495869_)))))
          (_E9585395901_))))
    (define gx#core-compile-top-import%
      (lambda (_stx95821_)
        (let* ((_e9582295829_ _stx95821_)
               (_E9582495833_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9582295829_)))
               (_E9582395847_
                (lambda ()
                  (if (gx#stx-pair? _e9582295829_)
                      (let ((_e9582595837_ (gx#syntax-e _e9582295829_)))
                        (let ((_hd9582695840_ (##car _e9582595837_))
                              (_tl9582795842_ (##cdr _e9582595837_)))
                          (let ((_body95845_ _tl9582795842_))
                            (if '#t
                                (cons '%#import _body95845_)
                                (_E9582495833_)))))
                      (_E9582495833_)))))
          (_E9582395847_))))
    (define gx#core-compile-top-module%
      (lambda (_stx95778_)
        (let* ((_e9577995789_ _stx95778_)
               (_E9578195793_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9577995789_)))
               (_E9578095817_
                (lambda ()
                  (if (gx#stx-pair? _e9577995789_)
                      (let ((_e9578295797_ (gx#syntax-e _e9577995789_)))
                        (let ((_hd9578395800_ (##car _e9578295797_))
                              (_tl9578495802_ (##cdr _e9578295797_)))
                          (if (gx#stx-pair? _tl9578495802_)
                              (let ((_e9578595805_
                                     (gx#syntax-e _tl9578495802_)))
                                (let ((_hd9578695808_ (##car _e9578595805_))
                                      (_tl9578795810_ (##cdr _e9578595805_)))
                                  (let* ((_hd95813_ _hd9578695808_)
                                         (_body95815_ _tl9578795810_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _hd95813_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body95815_)))
                                        (_E9578195793_)))))
                              (_E9578195793_))))
                      (_E9578195793_)))))
          (_E9578095817_))))
    (define gx#core-compile-top-export%
      (lambda (_stx95748_)
        (let* ((_e9574995756_ _stx95748_)
               (_E9575195760_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9574995756_)))
               (_E9575095774_
                (lambda ()
                  (if (gx#stx-pair? _e9574995756_)
                      (let ((_e9575295764_ (gx#syntax-e _e9574995756_)))
                        (let ((_hd9575395767_ (##car _e9575295764_))
                              (_tl9575495769_ (##cdr _e9575295764_)))
                          (let ((_body95772_ _tl9575495769_))
                            (if '#t
                                (cons '%#export _body95772_)
                                (_E9575195760_)))))
                      (_E9575195760_)))))
          (_E9575095774_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx95718_)
        (let* ((_e9571995726_ _stx95718_)
               (_E9572195730_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9571995726_)))
               (_E9572095744_
                (lambda ()
                  (if (gx#stx-pair? _e9571995726_)
                      (let ((_e9572295734_ (gx#syntax-e _e9571995726_)))
                        (let ((_hd9572395737_ (##car _e9572295734_))
                              (_tl9572495739_ (##cdr _e9572295734_)))
                          (let ((_body95742_ _tl9572495739_))
                            (if '#t
                                (cons '%#provide _body95742_)
                                (_E9572195730_)))))
                      (_E9572195730_)))))
          (_E9572095744_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx95688_)
        (let* ((_e9568995696_ _stx95688_)
               (_E9569195700_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9568995696_)))
               (_E9569095714_
                (lambda ()
                  (if (gx#stx-pair? _e9568995696_)
                      (let ((_e9569295704_ (gx#syntax-e _e9568995696_)))
                        (let ((_hd9569395707_ (##car _e9569295704_))
                              (_tl9569495709_ (##cdr _e9569295704_)))
                          (let ((_body95712_ _tl9569495709_))
                            (if '#t
                                (cons '%#extern _body95712_)
                                (_E9569195700_)))))
                      (_E9569195700_)))))
          (_E9569095714_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx95634_)
        (let* ((_e9563595648_ _stx95634_)
               (_E9563795652_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9563595648_)))
               (_E9563695684_
                (lambda ()
                  (if (gx#stx-pair? _e9563595648_)
                      (let ((_e9563895656_ (gx#syntax-e _e9563595648_)))
                        (let ((_hd9563995659_ (##car _e9563895656_))
                              (_tl9564095661_ (##cdr _e9563895656_)))
                          (if (gx#stx-pair? _tl9564095661_)
                              (let ((_e9564195664_
                                     (gx#syntax-e _tl9564095661_)))
                                (let ((_hd9564295667_ (##car _e9564195664_))
                                      (_tl9564395669_ (##cdr _e9564195664_)))
                                  (let ((_hd95672_ _hd9564295667_))
                                    (if (gx#stx-pair? _tl9564395669_)
                                        (let ((_e9564495674_
                                               (gx#syntax-e _tl9564395669_)))
                                          (let ((_hd9564595677_
                                                 (##car _e9564495674_))
                                                (_tl9564695679_
                                                 (##cdr _e9564495674_)))
                                            (let ((_expr95682_ _hd9564595677_))
                                              (if (gx#stx-null? _tl9564695679_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd95672_)
                          (cons (gx#core-compile-top-syntax _expr95682_) '())))
              (_E9563795652_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9563795652_)))))
                                        (_E9563795652_)))))
                              (_E9563795652_))))
                      (_E9563795652_)))))
          (_E9563695684_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx95579_)
        (let* ((_e9558095593_ _stx95579_)
               (_E9558295597_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9558095593_)))
               (_E9558195630_
                (lambda ()
                  (if (gx#stx-pair? _e9558095593_)
                      (let ((_e9558395601_ (gx#syntax-e _e9558095593_)))
                        (let ((_hd9558495604_ (##car _e9558395601_))
                              (_tl9558595606_ (##cdr _e9558395601_)))
                          (if (gx#stx-pair? _tl9558595606_)
                              (let ((_e9558695609_
                                     (gx#syntax-e _tl9558595606_)))
                                (let ((_hd9558795612_ (##car _e9558695609_))
                                      (_tl9558895614_ (##cdr _e9558695609_)))
                                  (let ((_hd95617_ _hd9558795612_))
                                    (if (gx#stx-pair? _tl9558895614_)
                                        (let ((_e9558995619_
                                               (gx#syntax-e _tl9558895614_)))
                                          (let ((_hd9559095622_
                                                 (##car _e9558995619_))
                                                (_tl9559195624_
                                                 (##cdr _e9558995619_)))
                                            (let ((_expr95627_ _hd9559095622_))
                                              (if (gx#stx-null? _tl9559195624_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd95617_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr95627_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E9558295597_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9558295597_)))))
                                        (_E9558295597_)))))
                              (_E9558295597_))))
                      (_E9558295597_)))))
          (_E9558195630_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx95549_)
        (let* ((_e9555095557_ _stx95549_)
               (_E9555295561_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9555095557_)))
               (_E9555195575_
                (lambda ()
                  (if (gx#stx-pair? _e9555095557_)
                      (let ((_e9555395565_ (gx#syntax-e _e9555095557_)))
                        (let ((_hd9555495568_ (##car _e9555395565_))
                              (_tl9555595570_ (##cdr _e9555395565_)))
                          (let ((_body95573_ _tl9555595570_))
                            (if '#t
                                (cons '%#define-alias _body95573_)
                                (_E9555295561_)))))
                      (_E9555295561_)))))
          (_E9555195575_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx95519_)
        (let* ((_e9552095527_ _stx95519_)
               (_E9552295531_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9552095527_)))
               (_E9552195545_
                (lambda ()
                  (if (gx#stx-pair? _e9552095527_)
                      (let ((_e9552395535_ (gx#syntax-e _e9552095527_)))
                        (let ((_hd9552495538_ (##car _e9552395535_))
                              (_tl9552595540_ (##cdr _e9552395535_)))
                          (let ((_body95543_ _tl9552595540_))
                            (if '#t
                                (cons '%#define-runtime _body95543_)
                                (_E9552295531_)))))
                      (_E9552295531_)))))
          (_E9552195545_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx95489_)
        (let* ((_e9549095497_ _stx95489_)
               (_E9549295501_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9549095497_)))
               (_E9549195515_
                (lambda ()
                  (if (gx#stx-pair? _e9549095497_)
                      (let ((_e9549395505_ (gx#syntax-e _e9549095497_)))
                        (let ((_hd9549495508_ (##car _e9549395505_))
                              (_tl9549595510_ (##cdr _e9549395505_)))
                          (let ((_decls95513_ _tl9549595510_))
                            (if '#t
                                (cons '%#declare _decls95513_)
                                (_E9549295501_)))))
                      (_E9549295501_)))))
          (_E9549195515_))))
    (define gx#core-compile-top-lambda%
      (lambda (_stx95459_)
        (let* ((_e9546095467_ _stx95459_)
               (_E9546295471_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9546095467_)))
               (_E9546195485_
                (lambda ()
                  (if (gx#stx-pair? _e9546095467_)
                      (let ((_e9546395475_ (gx#syntax-e _e9546095467_)))
                        (let ((_hd9546495478_ (##car _e9546395475_))
                              (_tl9546595480_ (##cdr _e9546395475_)))
                          (let ((_clause95483_ _tl9546595480_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause95483_))
                                (_E9546295471_)))))
                      (_E9546295471_)))))
          (_E9546195485_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx95416_)
        (let* ((_e9541795427_ _stx95416_)
               (_E9541995431_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9541795427_)))
               (_E9541895455_
                (lambda ()
                  (if (gx#stx-pair? _e9541795427_)
                      (let ((_e9542095435_ (gx#syntax-e _e9541795427_)))
                        (let ((_hd9542195438_ (##car _e9542095435_))
                              (_tl9542295440_ (##cdr _e9542095435_)))
                          (let ((_hd95443_ _hd9542195438_))
                            (if (gx#stx-pair? _tl9542295440_)
                                (let ((_e9542395445_
                                       (gx#syntax-e _tl9542295440_)))
                                  (let ((_hd9542495448_ (##car _e9542395445_))
                                        (_tl9542595450_ (##cdr _e9542395445_)))
                                    (let ((_body95453_ _hd9542495448_))
                                      (if (gx#stx-null? _tl9542595450_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd95443_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body95453_)
                                                          '()))
                                              (_E9541995431_))
                                          (_E9541995431_)))))
                                (_E9541995431_)))))
                      (_E9541995431_)))))
          (_E9541895455_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx95386_)
        (let* ((_e9538795394_ _stx95386_)
               (_E9538995398_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9538795394_)))
               (_E9538895412_
                (lambda ()
                  (if (gx#stx-pair? _e9538795394_)
                      (let ((_e9539095402_ (gx#syntax-e _e9538795394_)))
                        (let ((_hd9539195405_ (##car _e9539095402_))
                              (_tl9539295407_ (##cdr _e9539095402_)))
                          (let ((_clauses95410_ _tl9539295407_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses95410_))
                                (_E9538995398_)))))
                      (_E9538995398_)))))
          (_E9538895412_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx95321_ _form95322_)
        (let* ((_e9532395336_ _stx95321_)
               (_E9532595340_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9532395336_)))
               (_E9532495372_
                (lambda ()
                  (if (gx#stx-pair? _e9532395336_)
                      (let ((_e9532695344_ (gx#syntax-e _e9532395336_)))
                        (let ((_hd9532795347_ (##car _e9532695344_))
                              (_tl9532895349_ (##cdr _e9532695344_)))
                          (if (gx#stx-pair? _tl9532895349_)
                              (let ((_e9532995352_
                                     (gx#syntax-e _tl9532895349_)))
                                (let ((_hd9533095355_ (##car _e9532995352_))
                                      (_tl9533195357_ (##cdr _e9532995352_)))
                                  (let ((_hd95360_ _hd9533095355_))
                                    (if (gx#stx-pair? _tl9533195357_)
                                        (let ((_e9533295362_
                                               (gx#syntax-e _tl9533195357_)))
                                          (let ((_hd9533395365_
                                                 (##car _e9533295362_))
                                                (_tl9533495367_
                                                 (##cdr _e9533295362_)))
                                            (let ((_body95370_ _hd9533395365_))
                                              (if (gx#stx-null? _tl9533495367_)
                                                  (if '#t
                                                      (cons _form95322_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd95360_)
                          (cons (gx#core-compile-top-syntax _body95370_) '())))
              (_E9532595340_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9532595340_)))))
                                        (_E9532595340_)))))
                              (_E9532595340_))))
                      (_E9532595340_)))))
          (_E9532495372_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx95379_)
        (let ((_form95381_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx95379_ _form95381_))))
    (define gx#core-compile-top-let-values%
      (lambda _g96194_
        (let ((_g96193_ (##length _g96194_)))
          (cond ((##fx= _g96193_ 1)
                 (apply (lambda (_stx95379_)
                          (gx#core-compile-top-let-values%__0 _stx95379_))
                        _g96194_))
                ((##fx= _g96193_ 2)
                 (apply (lambda (_stx95383_ _form95384_)
                          (gx#core-compile-top-let-values%__%
                           _stx95383_
                           _form95384_))
                        _g96194_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g96194_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx95318_)
        (gx#core-compile-top-let-values%__% _stx95318_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx95316_)
        (gx#core-compile-top-let-values%__% _stx95316_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx95275_)
        (let* ((_e9527695286_ _stx95275_)
               (_E9527895290_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9527695286_)))
               (_E9527795312_
                (lambda ()
                  (if (gx#stx-pair? _e9527695286_)
                      (let ((_e9527995294_ (gx#syntax-e _e9527695286_)))
                        (let ((_hd9528095297_ (##car _e9527995294_))
                              (_tl9528195299_ (##cdr _e9527995294_)))
                          (if (gx#stx-pair? _tl9528195299_)
                              (let ((_e9528295302_
                                     (gx#syntax-e _tl9528195299_)))
                                (let ((_hd9528395305_ (##car _e9528295302_))
                                      (_tl9528495307_ (##cdr _e9528295302_)))
                                  (let ((_e95310_ _hd9528395305_))
                                    (if (gx#stx-null? _tl9528495307_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e95310_)
                                                        '()))
                                            (_E9527895290_))
                                        (_E9527895290_)))))
                              (_E9527895290_))))
                      (_E9527895290_)))))
          (_E9527795312_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx95234_)
        (let* ((_e9523595245_ _stx95234_)
               (_E9523795249_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9523595245_)))
               (_E9523695271_
                (lambda ()
                  (if (gx#stx-pair? _e9523595245_)
                      (let ((_e9523895253_ (gx#syntax-e _e9523595245_)))
                        (let ((_hd9523995256_ (##car _e9523895253_))
                              (_tl9524095258_ (##cdr _e9523895253_)))
                          (if (gx#stx-pair? _tl9524095258_)
                              (let ((_e9524195261_
                                     (gx#syntax-e _tl9524095258_)))
                                (let ((_hd9524295264_ (##car _e9524195261_))
                                      (_tl9524395266_ (##cdr _e9524195261_)))
                                  (let ((_e95269_ _hd9524295264_))
                                    (if (gx#stx-null? _tl9524395266_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e95269_)
                                                        '()))
                                            (_E9523795249_))
                                        (_E9523795249_)))))
                              (_E9523795249_))))
                      (_E9523795249_)))))
          (_E9523695271_))))
    (define gx#core-compile-top-call%
      (lambda (_stx95191_)
        (let* ((_e9519295202_ _stx95191_)
               (_E9519495206_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9519295202_)))
               (_E9519395230_
                (lambda ()
                  (if (gx#stx-pair? _e9519295202_)
                      (let ((_e9519595210_ (gx#syntax-e _e9519295202_)))
                        (let ((_hd9519695213_ (##car _e9519595210_))
                              (_tl9519795215_ (##cdr _e9519595210_)))
                          (if (gx#stx-pair? _tl9519795215_)
                              (let ((_e9519895218_
                                     (gx#syntax-e _tl9519795215_)))
                                (let ((_hd9519995221_ (##car _e9519895218_))
                                      (_tl9520095223_ (##cdr _e9519895218_)))
                                  (let* ((_rator95226_ _hd9519995221_)
                                         (_args95228_ _tl9520095223_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator95226_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args95228_)))
                                        (_E9519495206_)))))
                              (_E9519495206_))))
                      (_E9519495206_)))))
          (_E9519395230_))))
    (define gx#core-compile-top-if%
      (lambda (_stx95124_)
        (let* ((_e9512595141_ _stx95124_)
               (_E9512795145_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9512595141_)))
               (_E9512695187_
                (lambda ()
                  (if (gx#stx-pair? _e9512595141_)
                      (let ((_e9512895149_ (gx#syntax-e _e9512595141_)))
                        (let ((_hd9512995152_ (##car _e9512895149_))
                              (_tl9513095154_ (##cdr _e9512895149_)))
                          (if (gx#stx-pair? _tl9513095154_)
                              (let ((_e9513195157_
                                     (gx#syntax-e _tl9513095154_)))
                                (let ((_hd9513295160_ (##car _e9513195157_))
                                      (_tl9513395162_ (##cdr _e9513195157_)))
                                  (let ((_test95165_ _hd9513295160_))
                                    (if (gx#stx-pair? _tl9513395162_)
                                        (let ((_e9513495167_
                                               (gx#syntax-e _tl9513395162_)))
                                          (let ((_hd9513595170_
                                                 (##car _e9513495167_))
                                                (_tl9513695172_
                                                 (##cdr _e9513495167_)))
                                            (let ((_K95175_ _hd9513595170_))
                                              (if (gx#stx-pair? _tl9513695172_)
                                                  (let ((_e9513795177_
                                                         (gx#syntax-e
                                                          _tl9513695172_)))
                                                    (let ((_hd9513895180_
                                                           (##car _e9513795177_))
                                                          (_tl9513995182_
                                                           (##cdr _e9513795177_)))
                                                      (let ((_E95185_
                                                             _hd9513895180_))
                                                        (if (gx#stx-null?
                                                             _tl9513995182_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test95165_)
                                    (cons (gx#core-compile-top-syntax _K95175_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E95185_)
                                                '()))))
                        (_E9512795145_))
                    (_E9512795145_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9512795145_)))))
                                        (_E9512795145_)))))
                              (_E9512795145_))))
                      (_E9512795145_)))))
          (_E9512695187_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx95083_)
        (let* ((_e9508495094_ _stx95083_)
               (_E9508695098_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9508495094_)))
               (_E9508595120_
                (lambda ()
                  (if (gx#stx-pair? _e9508495094_)
                      (let ((_e9508795102_ (gx#syntax-e _e9508495094_)))
                        (let ((_hd9508895105_ (##car _e9508795102_))
                              (_tl9508995107_ (##cdr _e9508795102_)))
                          (if (gx#stx-pair? _tl9508995107_)
                              (let ((_e9509095110_
                                     (gx#syntax-e _tl9508995107_)))
                                (let ((_hd9509195113_ (##car _e9509095110_))
                                      (_tl9509295115_ (##cdr _e9509095110_)))
                                  (let ((_id95118_ _hd9509195113_))
                                    (if (gx#stx-null? _tl9509295115_)
                                        (if (gx#identifier? _id95118_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id95118_)
                                                        '()))
                                            (_E9508695098_))
                                        (_E9508695098_)))))
                              (_E9508695098_))))
                      (_E9508695098_)))))
          (_E9508595120_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx95029_)
        (let* ((_e9503095043_ _stx95029_)
               (_E9503295047_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9503095043_)))
               (_E9503195079_
                (lambda ()
                  (if (gx#stx-pair? _e9503095043_)
                      (let ((_e9503395051_ (gx#syntax-e _e9503095043_)))
                        (let ((_hd9503495054_ (##car _e9503395051_))
                              (_tl9503595056_ (##cdr _e9503395051_)))
                          (if (gx#stx-pair? _tl9503595056_)
                              (let ((_e9503695059_
                                     (gx#syntax-e _tl9503595056_)))
                                (let ((_hd9503795062_ (##car _e9503695059_))
                                      (_tl9503895064_ (##cdr _e9503695059_)))
                                  (let ((_id95067_ _hd9503795062_))
                                    (if (gx#stx-pair? _tl9503895064_)
                                        (let ((_e9503995069_
                                               (gx#syntax-e _tl9503895064_)))
                                          (let ((_hd9504095072_
                                                 (##car _e9503995069_))
                                                (_tl9504195074_
                                                 (##cdr _e9503995069_)))
                                            (let ((_expr95077_ _hd9504095072_))
                                              (if (gx#stx-null? _tl9504195074_)
                                                  (if (gx#identifier?
                                                       _id95067_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id95067_)
                          (cons (gx#core-compile-top-syntax _expr95077_) '())))
              (_E9503295047_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9503295047_)))))
                                        (_E9503295047_)))))
                              (_E9503295047_))))
                      (_E9503295047_)))))
          (_E9503195079_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id95024_)
        (let ((_$e95026_ (gx#resolve-identifier__0 _id95024_)))
          (if _$e95026_
              (##unchecked-structure-ref _$e95026_ '1 gx#binding::t '#f)
              _id95024_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd95022_)
        (if (gx#identifier? _hd95022_)
            (gx#core-compile-top-runtime-ref _hd95022_)
            '#f)))))
