(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1707618265)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx167082_)
        (let* ((_e167083167090_ _stx167082_)
               (_E167085167094_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167083167090_)))
               (_E167084167108_
                (lambda ()
                  (if (gx#stx-pair? _e167083167090_)
                      (let ((_e167086167098_ (gx#syntax-e _e167083167090_)))
                        (let ((_hd167087167101_ (##car _e167086167098_))
                              (_tl167088167103_ (##cdr _e167086167098_)))
                          (let ((_form167106_ _hd167087167101_))
                            (if '#t
                                (let* ((__self171579
                                        (gx#syntax-local-e__0 _form167106_))
                                       (__method171580
                                        (method-ref
                                         __self171579
                                         'compile-top-syntax)))
                                  (if __method171580
                                      (__method171580 __self171579 _stx167082_)
                                      (error '"Missing method"
                                             __self171579
                                             'compile-top-syntax)))
                                (_E167085167094_)))))
                      (_E167085167094_)))))
          (_E167084167108_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self167042_ _stx167043_)
        (let* ((_self167044167052_ _self167042_)
               (_E167046167056_
                (lambda () (error '"No clause matching" _self167044167052_)))
               (_K167047167068_
                (lambda (_K167059_)
                  (let ((_$e167061_ (gx#stx-source _stx167043_)))
                    (if _$e167061_
                        ((lambda (_g167063167065_)
                           (gx#stx-wrap-source
                            (_K167059_ _stx167043_)
                            _g167063167065_))
                         _$e167061_)
                        (_K167059_ _stx167043_))))))
          (if (##structure-instance-of?
               _self167044167052_
               'gx#core-expander::t)
              (let* ((_e167048167071_
                      (##unchecked-structure-ref
                       _self167044167052_
                       '1
                       gx#expander::t
                       '#f))
                     (_e167049167074_
                      (##unchecked-structure-ref
                       _self167044167052_
                       '2
                       gx#core-expander::t
                       '#f))
                     (_e167050167077_
                      (##unchecked-structure-ref
                       _self167044167052_
                       '3
                       gx#core-expander::t
                       '#f))
                     (_K167080_ _e167050167077_))
                (_K167047167068_ _K167080_))
              (_E167046167056_)))))
    (bind-method!
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx166916_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx166916_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx166886_)
        (let* ((_e166887166894_ _stx166886_)
               (_E166889166898_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166887166894_)))
               (_E166888166912_
                (lambda ()
                  (if (gx#stx-pair? _e166887166894_)
                      (let ((_e166890166902_ (gx#syntax-e _e166887166894_)))
                        (let ((_hd166891166905_ (##car _e166890166902_))
                              (_tl166892166907_ (##cdr _e166890166902_)))
                          (let ((_body166910_ _tl166892166907_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body166910_))
                                (_E166889166898_)))))
                      (_E166889166898_)))))
          (_E166888166912_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx166855_)
        (let* ((_e166856166863_ _stx166855_)
               (_E166858166867_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166856166863_)))
               (_E166857166882_
                (lambda ()
                  (if (gx#stx-pair? _e166856166863_)
                      (let ((_e166859166871_ (gx#syntax-e _e166856166863_)))
                        (let ((_hd166860166874_ (##car _e166859166871_))
                              (_tl166861166876_ (##cdr _e166859166871_)))
                          (let ((_body166879_ _tl166861166876_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body166879_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E166858166867_)))))
                      (_E166858166867_)))))
          (_E166857166882_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_stx166825_)
        (let* ((_e166826166833_ _stx166825_)
               (_E166828166837_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166826166833_)))
               (_E166827166851_
                (lambda ()
                  (if (gx#stx-pair? _e166826166833_)
                      (let ((_e166829166841_ (gx#syntax-e _e166826166833_)))
                        (let ((_hd166830166844_ (##car _e166829166841_))
                              (_tl166831166846_ (##cdr _e166829166841_)))
                          (let ((_body166849_ _tl166831166846_))
                            (if '#t
                                (cons '%#begin-foreign _body166849_)
                                (_E166828166837_)))))
                      (_E166828166837_)))))
          (_E166827166851_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_stx166771_)
        (let* ((_e166772166785_ _stx166771_)
               (_E166774166789_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166772166785_)))
               (_E166773166821_
                (lambda ()
                  (if (gx#stx-pair? _e166772166785_)
                      (let ((_e166775166793_ (gx#syntax-e _e166772166785_)))
                        (let ((_hd166776166796_ (##car _e166775166793_))
                              (_tl166777166798_ (##cdr _e166775166793_)))
                          (if (gx#stx-pair? _tl166777166798_)
                              (let ((_e166778166801_
                                     (gx#syntax-e _tl166777166798_)))
                                (let ((_hd166779166804_
                                       (##car _e166778166801_))
                                      (_tl166780166806_
                                       (##cdr _e166778166801_)))
                                  (let ((_ann166809_ _hd166779166804_))
                                    (if (gx#stx-pair? _tl166780166806_)
                                        (let ((_e166781166811_
                                               (gx#syntax-e _tl166780166806_)))
                                          (let ((_hd166782166814_
                                                 (##car _e166781166811_))
                                                (_tl166783166816_
                                                 (##cdr _e166781166811_)))
                                            (let ((_expr166819_
                                                   _hd166782166814_))
                                              (if (gx#stx-null?
                                                   _tl166783166816_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr166819_)
                                                      (_E166774166789_))
                                                  (_E166774166789_)))))
                                        (_E166774166789_)))))
                              (_E166774166789_))))
                      (_E166774166789_)))))
          (_E166773166821_))))
    (define gx#core-compile-top-import%
      (lambda (_stx166741_)
        (let* ((_e166742166749_ _stx166741_)
               (_E166744166753_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166742166749_)))
               (_E166743166767_
                (lambda ()
                  (if (gx#stx-pair? _e166742166749_)
                      (let ((_e166745166757_ (gx#syntax-e _e166742166749_)))
                        (let ((_hd166746166760_ (##car _e166745166757_))
                              (_tl166747166762_ (##cdr _e166745166757_)))
                          (let ((_body166765_ _tl166747166762_))
                            (if '#t
                                (cons '%#import _body166765_)
                                (_E166744166753_)))))
                      (_E166744166753_)))))
          (_E166743166767_))))
    (define gx#core-compile-top-module%
      (lambda (_stx166698_)
        (let* ((_e166699166709_ _stx166698_)
               (_E166701166713_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166699166709_)))
               (_E166700166737_
                (lambda ()
                  (if (gx#stx-pair? _e166699166709_)
                      (let ((_e166702166717_ (gx#syntax-e _e166699166709_)))
                        (let ((_hd166703166720_ (##car _e166702166717_))
                              (_tl166704166722_ (##cdr _e166702166717_)))
                          (if (gx#stx-pair? _tl166704166722_)
                              (let ((_e166705166725_
                                     (gx#syntax-e _tl166704166722_)))
                                (let ((_hd166706166728_
                                       (##car _e166705166725_))
                                      (_tl166707166730_
                                       (##cdr _e166705166725_)))
                                  (let* ((_hd166733_ _hd166706166728_)
                                         (_body166735_ _tl166707166730_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _hd166733_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body166735_)))
                                        (_E166701166713_)))))
                              (_E166701166713_))))
                      (_E166701166713_)))))
          (_E166700166737_))))
    (define gx#core-compile-top-export%
      (lambda (_stx166668_)
        (let* ((_e166669166676_ _stx166668_)
               (_E166671166680_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166669166676_)))
               (_E166670166694_
                (lambda ()
                  (if (gx#stx-pair? _e166669166676_)
                      (let ((_e166672166684_ (gx#syntax-e _e166669166676_)))
                        (let ((_hd166673166687_ (##car _e166672166684_))
                              (_tl166674166689_ (##cdr _e166672166684_)))
                          (let ((_body166692_ _tl166674166689_))
                            (if '#t
                                (cons '%#export _body166692_)
                                (_E166671166680_)))))
                      (_E166671166680_)))))
          (_E166670166694_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx166638_)
        (let* ((_e166639166646_ _stx166638_)
               (_E166641166650_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166639166646_)))
               (_E166640166664_
                (lambda ()
                  (if (gx#stx-pair? _e166639166646_)
                      (let ((_e166642166654_ (gx#syntax-e _e166639166646_)))
                        (let ((_hd166643166657_ (##car _e166642166654_))
                              (_tl166644166659_ (##cdr _e166642166654_)))
                          (let ((_body166662_ _tl166644166659_))
                            (if '#t
                                (cons '%#provide _body166662_)
                                (_E166641166650_)))))
                      (_E166641166650_)))))
          (_E166640166664_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx166608_)
        (let* ((_e166609166616_ _stx166608_)
               (_E166611166620_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166609166616_)))
               (_E166610166634_
                (lambda ()
                  (if (gx#stx-pair? _e166609166616_)
                      (let ((_e166612166624_ (gx#syntax-e _e166609166616_)))
                        (let ((_hd166613166627_ (##car _e166612166624_))
                              (_tl166614166629_ (##cdr _e166612166624_)))
                          (let ((_body166632_ _tl166614166629_))
                            (if '#t
                                (cons '%#extern _body166632_)
                                (_E166611166620_)))))
                      (_E166611166620_)))))
          (_E166610166634_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx166554_)
        (let* ((_e166555166568_ _stx166554_)
               (_E166557166572_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166555166568_)))
               (_E166556166604_
                (lambda ()
                  (if (gx#stx-pair? _e166555166568_)
                      (let ((_e166558166576_ (gx#syntax-e _e166555166568_)))
                        (let ((_hd166559166579_ (##car _e166558166576_))
                              (_tl166560166581_ (##cdr _e166558166576_)))
                          (if (gx#stx-pair? _tl166560166581_)
                              (let ((_e166561166584_
                                     (gx#syntax-e _tl166560166581_)))
                                (let ((_hd166562166587_
                                       (##car _e166561166584_))
                                      (_tl166563166589_
                                       (##cdr _e166561166584_)))
                                  (let ((_hd166592_ _hd166562166587_))
                                    (if (gx#stx-pair? _tl166563166589_)
                                        (let ((_e166564166594_
                                               (gx#syntax-e _tl166563166589_)))
                                          (let ((_hd166565166597_
                                                 (##car _e166564166594_))
                                                (_tl166566166599_
                                                 (##cdr _e166564166594_)))
                                            (let ((_expr166602_
                                                   _hd166565166597_))
                                              (if (gx#stx-null?
                                                   _tl166566166599_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd166592_)
                          (cons (gx#core-compile-top-syntax _expr166602_)
                                '())))
              (_E166557166572_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E166557166572_)))))
                                        (_E166557166572_)))))
                              (_E166557166572_))))
                      (_E166557166572_)))))
          (_E166556166604_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx166499_)
        (let* ((_e166500166513_ _stx166499_)
               (_E166502166517_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166500166513_)))
               (_E166501166550_
                (lambda ()
                  (if (gx#stx-pair? _e166500166513_)
                      (let ((_e166503166521_ (gx#syntax-e _e166500166513_)))
                        (let ((_hd166504166524_ (##car _e166503166521_))
                              (_tl166505166526_ (##cdr _e166503166521_)))
                          (if (gx#stx-pair? _tl166505166526_)
                              (let ((_e166506166529_
                                     (gx#syntax-e _tl166505166526_)))
                                (let ((_hd166507166532_
                                       (##car _e166506166529_))
                                      (_tl166508166534_
                                       (##cdr _e166506166529_)))
                                  (let ((_hd166537_ _hd166507166532_))
                                    (if (gx#stx-pair? _tl166508166534_)
                                        (let ((_e166509166539_
                                               (gx#syntax-e _tl166508166534_)))
                                          (let ((_hd166510166542_
                                                 (##car _e166509166539_))
                                                (_tl166511166544_
                                                 (##cdr _e166509166539_)))
                                            (let ((_expr166547_
                                                   _hd166510166542_))
                                              (if (gx#stx-null?
                                                   _tl166511166544_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd166537_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr166547_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E166502166517_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E166502166517_)))))
                                        (_E166502166517_)))))
                              (_E166502166517_))))
                      (_E166502166517_)))))
          (_E166501166550_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx166469_)
        (let* ((_e166470166477_ _stx166469_)
               (_E166472166481_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166470166477_)))
               (_E166471166495_
                (lambda ()
                  (if (gx#stx-pair? _e166470166477_)
                      (let ((_e166473166485_ (gx#syntax-e _e166470166477_)))
                        (let ((_hd166474166488_ (##car _e166473166485_))
                              (_tl166475166490_ (##cdr _e166473166485_)))
                          (let ((_body166493_ _tl166475166490_))
                            (if '#t
                                (cons '%#define-alias _body166493_)
                                (_E166472166481_)))))
                      (_E166472166481_)))))
          (_E166471166495_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx166439_)
        (let* ((_e166440166447_ _stx166439_)
               (_E166442166451_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166440166447_)))
               (_E166441166465_
                (lambda ()
                  (if (gx#stx-pair? _e166440166447_)
                      (let ((_e166443166455_ (gx#syntax-e _e166440166447_)))
                        (let ((_hd166444166458_ (##car _e166443166455_))
                              (_tl166445166460_ (##cdr _e166443166455_)))
                          (let ((_body166463_ _tl166445166460_))
                            (if '#t
                                (cons '%#define-runtime _body166463_)
                                (_E166442166451_)))))
                      (_E166442166451_)))))
          (_E166441166465_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx166409_)
        (let* ((_e166410166417_ _stx166409_)
               (_E166412166421_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166410166417_)))
               (_E166411166435_
                (lambda ()
                  (if (gx#stx-pair? _e166410166417_)
                      (let ((_e166413166425_ (gx#syntax-e _e166410166417_)))
                        (let ((_hd166414166428_ (##car _e166413166425_))
                              (_tl166415166430_ (##cdr _e166413166425_)))
                          (let ((_decls166433_ _tl166415166430_))
                            (if '#t
                                (cons '%#declare _decls166433_)
                                (_E166412166421_)))))
                      (_E166412166421_)))))
          (_E166411166435_))))
    (define gx#core-compile-top-lambda%
      (lambda (_stx166379_)
        (let* ((_e166380166387_ _stx166379_)
               (_E166382166391_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166380166387_)))
               (_E166381166405_
                (lambda ()
                  (if (gx#stx-pair? _e166380166387_)
                      (let ((_e166383166395_ (gx#syntax-e _e166380166387_)))
                        (let ((_hd166384166398_ (##car _e166383166395_))
                              (_tl166385166400_ (##cdr _e166383166395_)))
                          (let ((_clause166403_ _tl166385166400_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause166403_))
                                (_E166382166391_)))))
                      (_E166382166391_)))))
          (_E166381166405_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx166336_)
        (let* ((_e166337166347_ _stx166336_)
               (_E166339166351_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166337166347_)))
               (_E166338166375_
                (lambda ()
                  (if (gx#stx-pair? _e166337166347_)
                      (let ((_e166340166355_ (gx#syntax-e _e166337166347_)))
                        (let ((_hd166341166358_ (##car _e166340166355_))
                              (_tl166342166360_ (##cdr _e166340166355_)))
                          (let ((_hd166363_ _hd166341166358_))
                            (if (gx#stx-pair? _tl166342166360_)
                                (let ((_e166343166365_
                                       (gx#syntax-e _tl166342166360_)))
                                  (let ((_hd166344166368_
                                         (##car _e166343166365_))
                                        (_tl166345166370_
                                         (##cdr _e166343166365_)))
                                    (let ((_body166373_ _hd166344166368_))
                                      (if (gx#stx-null? _tl166345166370_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd166363_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body166373_)
                                                          '()))
                                              (_E166339166351_))
                                          (_E166339166351_)))))
                                (_E166339166351_)))))
                      (_E166339166351_)))))
          (_E166338166375_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx166306_)
        (let* ((_e166307166314_ _stx166306_)
               (_E166309166318_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166307166314_)))
               (_E166308166332_
                (lambda ()
                  (if (gx#stx-pair? _e166307166314_)
                      (let ((_e166310166322_ (gx#syntax-e _e166307166314_)))
                        (let ((_hd166311166325_ (##car _e166310166322_))
                              (_tl166312166327_ (##cdr _e166310166322_)))
                          (let ((_clauses166330_ _tl166312166327_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses166330_))
                                (_E166309166318_)))))
                      (_E166309166318_)))))
          (_E166308166332_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx166241_ _form166242_)
        (let* ((_e166243166256_ _stx166241_)
               (_E166245166260_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166243166256_)))
               (_E166244166292_
                (lambda ()
                  (if (gx#stx-pair? _e166243166256_)
                      (let ((_e166246166264_ (gx#syntax-e _e166243166256_)))
                        (let ((_hd166247166267_ (##car _e166246166264_))
                              (_tl166248166269_ (##cdr _e166246166264_)))
                          (if (gx#stx-pair? _tl166248166269_)
                              (let ((_e166249166272_
                                     (gx#syntax-e _tl166248166269_)))
                                (let ((_hd166250166275_
                                       (##car _e166249166272_))
                                      (_tl166251166277_
                                       (##cdr _e166249166272_)))
                                  (let ((_hd166280_ _hd166250166275_))
                                    (if (gx#stx-pair? _tl166251166277_)
                                        (let ((_e166252166282_
                                               (gx#syntax-e _tl166251166277_)))
                                          (let ((_hd166253166285_
                                                 (##car _e166252166282_))
                                                (_tl166254166287_
                                                 (##cdr _e166252166282_)))
                                            (let ((_body166290_
                                                   _hd166253166285_))
                                              (if (gx#stx-null?
                                                   _tl166254166287_)
                                                  (if '#t
                                                      (cons _form166242_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd166280_)
                          (cons (gx#core-compile-top-syntax _body166290_)
                                '())))
              (_E166245166260_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E166245166260_)))))
                                        (_E166245166260_)))))
                              (_E166245166260_))))
                      (_E166245166260_)))))
          (_E166244166292_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx166299_)
        (let ((_form166301_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx166299_ _form166301_))))
    (define gx#core-compile-top-let-values%
      (lambda _g171582_
        (let ((_g171581_ (##length _g171582_)))
          (cond ((##fx= _g171581_ 1)
                 (apply (lambda (_stx166299_)
                          (gx#core-compile-top-let-values%__0 _stx166299_))
                        _g171582_))
                ((##fx= _g171581_ 2)
                 (apply (lambda (_stx166303_ _form166304_)
                          (gx#core-compile-top-let-values%__%
                           _stx166303_
                           _form166304_))
                        _g171582_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g171582_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx166238_)
        (gx#core-compile-top-let-values%__% _stx166238_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx166236_)
        (gx#core-compile-top-let-values%__% _stx166236_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx166195_)
        (let* ((_e166196166206_ _stx166195_)
               (_E166198166210_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166196166206_)))
               (_E166197166232_
                (lambda ()
                  (if (gx#stx-pair? _e166196166206_)
                      (let ((_e166199166214_ (gx#syntax-e _e166196166206_)))
                        (let ((_hd166200166217_ (##car _e166199166214_))
                              (_tl166201166219_ (##cdr _e166199166214_)))
                          (if (gx#stx-pair? _tl166201166219_)
                              (let ((_e166202166222_
                                     (gx#syntax-e _tl166201166219_)))
                                (let ((_hd166203166225_
                                       (##car _e166202166222_))
                                      (_tl166204166227_
                                       (##cdr _e166202166222_)))
                                  (let ((_e166230_ _hd166203166225_))
                                    (if (gx#stx-null? _tl166204166227_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e166230_)
                                                        '()))
                                            (_E166198166210_))
                                        (_E166198166210_)))))
                              (_E166198166210_))))
                      (_E166198166210_)))))
          (_E166197166232_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx166154_)
        (let* ((_e166155166165_ _stx166154_)
               (_E166157166169_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166155166165_)))
               (_E166156166191_
                (lambda ()
                  (if (gx#stx-pair? _e166155166165_)
                      (let ((_e166158166173_ (gx#syntax-e _e166155166165_)))
                        (let ((_hd166159166176_ (##car _e166158166173_))
                              (_tl166160166178_ (##cdr _e166158166173_)))
                          (if (gx#stx-pair? _tl166160166178_)
                              (let ((_e166161166181_
                                     (gx#syntax-e _tl166160166178_)))
                                (let ((_hd166162166184_
                                       (##car _e166161166181_))
                                      (_tl166163166186_
                                       (##cdr _e166161166181_)))
                                  (let ((_e166189_ _hd166162166184_))
                                    (if (gx#stx-null? _tl166163166186_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e166189_)
                                                        '()))
                                            (_E166157166169_))
                                        (_E166157166169_)))))
                              (_E166157166169_))))
                      (_E166157166169_)))))
          (_E166156166191_))))
    (define gx#core-compile-top-call%
      (lambda (_stx166111_)
        (let* ((_e166112166122_ _stx166111_)
               (_E166114166126_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166112166122_)))
               (_E166113166150_
                (lambda ()
                  (if (gx#stx-pair? _e166112166122_)
                      (let ((_e166115166130_ (gx#syntax-e _e166112166122_)))
                        (let ((_hd166116166133_ (##car _e166115166130_))
                              (_tl166117166135_ (##cdr _e166115166130_)))
                          (if (gx#stx-pair? _tl166117166135_)
                              (let ((_e166118166138_
                                     (gx#syntax-e _tl166117166135_)))
                                (let ((_hd166119166141_
                                       (##car _e166118166138_))
                                      (_tl166120166143_
                                       (##cdr _e166118166138_)))
                                  (let* ((_rator166146_ _hd166119166141_)
                                         (_args166148_ _tl166120166143_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator166146_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args166148_)))
                                        (_E166114166126_)))))
                              (_E166114166126_))))
                      (_E166114166126_)))))
          (_E166113166150_))))
    (define gx#core-compile-top-if%
      (lambda (_stx166044_)
        (let* ((_e166045166061_ _stx166044_)
               (_E166047166065_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166045166061_)))
               (_E166046166107_
                (lambda ()
                  (if (gx#stx-pair? _e166045166061_)
                      (let ((_e166048166069_ (gx#syntax-e _e166045166061_)))
                        (let ((_hd166049166072_ (##car _e166048166069_))
                              (_tl166050166074_ (##cdr _e166048166069_)))
                          (if (gx#stx-pair? _tl166050166074_)
                              (let ((_e166051166077_
                                     (gx#syntax-e _tl166050166074_)))
                                (let ((_hd166052166080_
                                       (##car _e166051166077_))
                                      (_tl166053166082_
                                       (##cdr _e166051166077_)))
                                  (let ((_test166085_ _hd166052166080_))
                                    (if (gx#stx-pair? _tl166053166082_)
                                        (let ((_e166054166087_
                                               (gx#syntax-e _tl166053166082_)))
                                          (let ((_hd166055166090_
                                                 (##car _e166054166087_))
                                                (_tl166056166092_
                                                 (##cdr _e166054166087_)))
                                            (let ((_K166095_ _hd166055166090_))
                                              (if (gx#stx-pair?
                                                   _tl166056166092_)
                                                  (let ((_e166057166097_
                                                         (gx#syntax-e
                                                          _tl166056166092_)))
                                                    (let ((_hd166058166100_
                                                           (##car _e166057166097_))
                                                          (_tl166059166102_
                                                           (##cdr _e166057166097_)))
                                                      (let ((_E166105_
                                                             _hd166058166100_))
                                                        (if (gx#stx-null?
                                                             _tl166059166102_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test166085_)
                                    (cons (gx#core-compile-top-syntax
                                           _K166095_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E166105_)
                                                '()))))
                        (_E166047166065_))
                    (_E166047166065_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E166047166065_)))))
                                        (_E166047166065_)))))
                              (_E166047166065_))))
                      (_E166047166065_)))))
          (_E166046166107_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx166003_)
        (let* ((_e166004166014_ _stx166003_)
               (_E166006166018_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166004166014_)))
               (_E166005166040_
                (lambda ()
                  (if (gx#stx-pair? _e166004166014_)
                      (let ((_e166007166022_ (gx#syntax-e _e166004166014_)))
                        (let ((_hd166008166025_ (##car _e166007166022_))
                              (_tl166009166027_ (##cdr _e166007166022_)))
                          (if (gx#stx-pair? _tl166009166027_)
                              (let ((_e166010166030_
                                     (gx#syntax-e _tl166009166027_)))
                                (let ((_hd166011166033_
                                       (##car _e166010166030_))
                                      (_tl166012166035_
                                       (##cdr _e166010166030_)))
                                  (let ((_id166038_ _hd166011166033_))
                                    (if (gx#stx-null? _tl166012166035_)
                                        (if (gx#identifier? _id166038_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id166038_)
                                                        '()))
                                            (_E166006166018_))
                                        (_E166006166018_)))))
                              (_E166006166018_))))
                      (_E166006166018_)))))
          (_E166005166040_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx165949_)
        (let* ((_e165950165963_ _stx165949_)
               (_E165952165967_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165950165963_)))
               (_E165951165999_
                (lambda ()
                  (if (gx#stx-pair? _e165950165963_)
                      (let ((_e165953165971_ (gx#syntax-e _e165950165963_)))
                        (let ((_hd165954165974_ (##car _e165953165971_))
                              (_tl165955165976_ (##cdr _e165953165971_)))
                          (if (gx#stx-pair? _tl165955165976_)
                              (let ((_e165956165979_
                                     (gx#syntax-e _tl165955165976_)))
                                (let ((_hd165957165982_
                                       (##car _e165956165979_))
                                      (_tl165958165984_
                                       (##cdr _e165956165979_)))
                                  (let ((_id165987_ _hd165957165982_))
                                    (if (gx#stx-pair? _tl165958165984_)
                                        (let ((_e165959165989_
                                               (gx#syntax-e _tl165958165984_)))
                                          (let ((_hd165960165992_
                                                 (##car _e165959165989_))
                                                (_tl165961165994_
                                                 (##cdr _e165959165989_)))
                                            (let ((_expr165997_
                                                   _hd165960165992_))
                                              (if (gx#stx-null?
                                                   _tl165961165994_)
                                                  (if (gx#identifier?
                                                       _id165987_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id165987_)
                          (cons (gx#core-compile-top-syntax _expr165997_)
                                '())))
              (_E165952165967_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E165952165967_)))))
                                        (_E165952165967_)))))
                              (_E165952165967_))))
                      (_E165952165967_)))))
          (_E165951165999_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id165944_)
        (let ((_$e165946_ (gx#resolve-identifier__0 _id165944_)))
          (if _$e165946_
              (##unchecked-structure-ref _$e165946_ '1 gx#binding::t '#f)
              _id165944_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd165942_)
        (if (gx#identifier? _hd165942_)
            (gx#core-compile-top-runtime-ref _hd165942_)
            '#f)))))
