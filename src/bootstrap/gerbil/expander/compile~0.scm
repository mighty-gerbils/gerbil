(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1711108655)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx96171_)
        (let* ((_e9617296179_ _stx96171_)
               (_E9617496183_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9617296179_)))
               (_E9617396197_
                (lambda ()
                  (if (gx#stx-pair? _e9617296179_)
                      (let ((_e9617596187_ (gx#syntax-e _e9617296179_)))
                        (let ((_hd9617696190_ (##car _e9617596187_))
                              (_tl9617796192_ (##cdr _e9617596187_)))
                          (let ((_form96195_ _hd9617696190_))
                            (if '#t
                                (let* ((__self96200
                                        (gx#syntax-local-e__0 _form96195_))
                                       (__method96201
                                        (method-ref
                                         __self96200
                                         'compile-top-syntax)))
                                  (if __method96201
                                      (__method96201 __self96200 _stx96171_)
                                      (error '"Missing method"
                                             __self96200
                                             'compile-top-syntax)))
                                (_E9617496183_)))))
                      (_E9617496183_)))))
          (_E9617396197_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self96131_ _stx96132_)
        (let* ((_self9613396141_ _self96131_)
               (_E9613596145_
                (lambda () (error '"No clause matching" _self9613396141_)))
               (_K9613696157_
                (lambda (_K96148_)
                  (let ((_$e96150_ (gx#stx-source _stx96132_)))
                    (if _$e96150_
                        ((lambda (_g9615296154_)
                           (gx#stx-wrap-source
                            (_K96148_ _stx96132_)
                            _g9615296154_))
                         _$e96150_)
                        (_K96148_ _stx96132_))))))
          (if (##structure-instance-of? _self9613396141_ 'gx#core-expander::t)
              (let* ((_e9613796160_
                      (##unchecked-structure-ref
                       _self9613396141_
                       '1
                       gx#expander::t
                       '#f))
                     (_e9613896163_
                      (##unchecked-structure-ref
                       _self9613396141_
                       '2
                       gx#core-expander::t
                       '#f))
                     (_e9613996166_
                      (##unchecked-structure-ref
                       _self9613396141_
                       '3
                       gx#core-expander::t
                       '#f))
                     (_K96169_ _e9613996166_))
                (_K9613696157_ _K96169_))
              (_E9613596145_)))))
    (bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx96005_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx96005_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx95975_)
        (let* ((_e9597695983_ _stx95975_)
               (_E9597895987_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9597695983_)))
               (_E9597796001_
                (lambda ()
                  (if (gx#stx-pair? _e9597695983_)
                      (let ((_e9597995991_ (gx#syntax-e _e9597695983_)))
                        (let ((_hd9598095994_ (##car _e9597995991_))
                              (_tl9598195996_ (##cdr _e9597995991_)))
                          (let ((_body95999_ _tl9598195996_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body95999_))
                                (_E9597895987_)))))
                      (_E9597895987_)))))
          (_E9597796001_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx95944_)
        (let* ((_e9594595952_ _stx95944_)
               (_E9594795956_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9594595952_)))
               (_E9594695971_
                (lambda ()
                  (if (gx#stx-pair? _e9594595952_)
                      (let ((_e9594895960_ (gx#syntax-e _e9594595952_)))
                        (let ((_hd9594995963_ (##car _e9594895960_))
                              (_tl9595095965_ (##cdr _e9594895960_)))
                          (let ((_body95968_ _tl9595095965_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body95968_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E9594795956_)))))
                      (_E9594795956_)))))
          (_E9594695971_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_stx95914_)
        (let* ((_e9591595922_ _stx95914_)
               (_E9591795926_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9591595922_)))
               (_E9591695940_
                (lambda ()
                  (if (gx#stx-pair? _e9591595922_)
                      (let ((_e9591895930_ (gx#syntax-e _e9591595922_)))
                        (let ((_hd9591995933_ (##car _e9591895930_))
                              (_tl9592095935_ (##cdr _e9591895930_)))
                          (let ((_body95938_ _tl9592095935_))
                            (if '#t
                                (cons '%#begin-foreign _body95938_)
                                (_E9591795926_)))))
                      (_E9591795926_)))))
          (_E9591695940_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_stx95860_)
        (let* ((_e9586195874_ _stx95860_)
               (_E9586395878_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9586195874_)))
               (_E9586295910_
                (lambda ()
                  (if (gx#stx-pair? _e9586195874_)
                      (let ((_e9586495882_ (gx#syntax-e _e9586195874_)))
                        (let ((_hd9586595885_ (##car _e9586495882_))
                              (_tl9586695887_ (##cdr _e9586495882_)))
                          (if (gx#stx-pair? _tl9586695887_)
                              (let ((_e9586795890_
                                     (gx#syntax-e _tl9586695887_)))
                                (let ((_hd9586895893_ (##car _e9586795890_))
                                      (_tl9586995895_ (##cdr _e9586795890_)))
                                  (let ((_ann95898_ _hd9586895893_))
                                    (if (gx#stx-pair? _tl9586995895_)
                                        (let ((_e9587095900_
                                               (gx#syntax-e _tl9586995895_)))
                                          (let ((_hd9587195903_
                                                 (##car _e9587095900_))
                                                (_tl9587295905_
                                                 (##cdr _e9587095900_)))
                                            (let ((_expr95908_ _hd9587195903_))
                                              (if (gx#stx-null? _tl9587295905_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr95908_)
                                                      (_E9586395878_))
                                                  (_E9586395878_)))))
                                        (_E9586395878_)))))
                              (_E9586395878_))))
                      (_E9586395878_)))))
          (_E9586295910_))))
    (define gx#core-compile-top-import%
      (lambda (_stx95830_)
        (let* ((_e9583195838_ _stx95830_)
               (_E9583395842_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9583195838_)))
               (_E9583295856_
                (lambda ()
                  (if (gx#stx-pair? _e9583195838_)
                      (let ((_e9583495846_ (gx#syntax-e _e9583195838_)))
                        (let ((_hd9583595849_ (##car _e9583495846_))
                              (_tl9583695851_ (##cdr _e9583495846_)))
                          (let ((_body95854_ _tl9583695851_))
                            (if '#t
                                (cons '%#import _body95854_)
                                (_E9583395842_)))))
                      (_E9583395842_)))))
          (_E9583295856_))))
    (define gx#core-compile-top-module%
      (lambda (_stx95787_)
        (let* ((_e9578895798_ _stx95787_)
               (_E9579095802_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9578895798_)))
               (_E9578995826_
                (lambda ()
                  (if (gx#stx-pair? _e9578895798_)
                      (let ((_e9579195806_ (gx#syntax-e _e9578895798_)))
                        (let ((_hd9579295809_ (##car _e9579195806_))
                              (_tl9579395811_ (##cdr _e9579195806_)))
                          (if (gx#stx-pair? _tl9579395811_)
                              (let ((_e9579495814_
                                     (gx#syntax-e _tl9579395811_)))
                                (let ((_hd9579595817_ (##car _e9579495814_))
                                      (_tl9579695819_ (##cdr _e9579495814_)))
                                  (let* ((_hd95822_ _hd9579595817_)
                                         (_body95824_ _tl9579695819_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _hd95822_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body95824_)))
                                        (_E9579095802_)))))
                              (_E9579095802_))))
                      (_E9579095802_)))))
          (_E9578995826_))))
    (define gx#core-compile-top-export%
      (lambda (_stx95757_)
        (let* ((_e9575895765_ _stx95757_)
               (_E9576095769_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9575895765_)))
               (_E9575995783_
                (lambda ()
                  (if (gx#stx-pair? _e9575895765_)
                      (let ((_e9576195773_ (gx#syntax-e _e9575895765_)))
                        (let ((_hd9576295776_ (##car _e9576195773_))
                              (_tl9576395778_ (##cdr _e9576195773_)))
                          (let ((_body95781_ _tl9576395778_))
                            (if '#t
                                (cons '%#export _body95781_)
                                (_E9576095769_)))))
                      (_E9576095769_)))))
          (_E9575995783_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx95727_)
        (let* ((_e9572895735_ _stx95727_)
               (_E9573095739_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9572895735_)))
               (_E9572995753_
                (lambda ()
                  (if (gx#stx-pair? _e9572895735_)
                      (let ((_e9573195743_ (gx#syntax-e _e9572895735_)))
                        (let ((_hd9573295746_ (##car _e9573195743_))
                              (_tl9573395748_ (##cdr _e9573195743_)))
                          (let ((_body95751_ _tl9573395748_))
                            (if '#t
                                (cons '%#provide _body95751_)
                                (_E9573095739_)))))
                      (_E9573095739_)))))
          (_E9572995753_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx95697_)
        (let* ((_e9569895705_ _stx95697_)
               (_E9570095709_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9569895705_)))
               (_E9569995723_
                (lambda ()
                  (if (gx#stx-pair? _e9569895705_)
                      (let ((_e9570195713_ (gx#syntax-e _e9569895705_)))
                        (let ((_hd9570295716_ (##car _e9570195713_))
                              (_tl9570395718_ (##cdr _e9570195713_)))
                          (let ((_body95721_ _tl9570395718_))
                            (if '#t
                                (cons '%#extern _body95721_)
                                (_E9570095709_)))))
                      (_E9570095709_)))))
          (_E9569995723_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx95643_)
        (let* ((_e9564495657_ _stx95643_)
               (_E9564695661_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9564495657_)))
               (_E9564595693_
                (lambda ()
                  (if (gx#stx-pair? _e9564495657_)
                      (let ((_e9564795665_ (gx#syntax-e _e9564495657_)))
                        (let ((_hd9564895668_ (##car _e9564795665_))
                              (_tl9564995670_ (##cdr _e9564795665_)))
                          (if (gx#stx-pair? _tl9564995670_)
                              (let ((_e9565095673_
                                     (gx#syntax-e _tl9564995670_)))
                                (let ((_hd9565195676_ (##car _e9565095673_))
                                      (_tl9565295678_ (##cdr _e9565095673_)))
                                  (let ((_hd95681_ _hd9565195676_))
                                    (if (gx#stx-pair? _tl9565295678_)
                                        (let ((_e9565395683_
                                               (gx#syntax-e _tl9565295678_)))
                                          (let ((_hd9565495686_
                                                 (##car _e9565395683_))
                                                (_tl9565595688_
                                                 (##cdr _e9565395683_)))
                                            (let ((_expr95691_ _hd9565495686_))
                                              (if (gx#stx-null? _tl9565595688_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd95681_)
                          (cons (gx#core-compile-top-syntax _expr95691_) '())))
              (_E9564695661_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9564695661_)))))
                                        (_E9564695661_)))))
                              (_E9564695661_))))
                      (_E9564695661_)))))
          (_E9564595693_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx95588_)
        (let* ((_e9558995602_ _stx95588_)
               (_E9559195606_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9558995602_)))
               (_E9559095639_
                (lambda ()
                  (if (gx#stx-pair? _e9558995602_)
                      (let ((_e9559295610_ (gx#syntax-e _e9558995602_)))
                        (let ((_hd9559395613_ (##car _e9559295610_))
                              (_tl9559495615_ (##cdr _e9559295610_)))
                          (if (gx#stx-pair? _tl9559495615_)
                              (let ((_e9559595618_
                                     (gx#syntax-e _tl9559495615_)))
                                (let ((_hd9559695621_ (##car _e9559595618_))
                                      (_tl9559795623_ (##cdr _e9559595618_)))
                                  (let ((_hd95626_ _hd9559695621_))
                                    (if (gx#stx-pair? _tl9559795623_)
                                        (let ((_e9559895628_
                                               (gx#syntax-e _tl9559795623_)))
                                          (let ((_hd9559995631_
                                                 (##car _e9559895628_))
                                                (_tl9560095633_
                                                 (##cdr _e9559895628_)))
                                            (let ((_expr95636_ _hd9559995631_))
                                              (if (gx#stx-null? _tl9560095633_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd95626_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr95636_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E9559195606_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9559195606_)))))
                                        (_E9559195606_)))))
                              (_E9559195606_))))
                      (_E9559195606_)))))
          (_E9559095639_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx95558_)
        (let* ((_e9555995566_ _stx95558_)
               (_E9556195570_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9555995566_)))
               (_E9556095584_
                (lambda ()
                  (if (gx#stx-pair? _e9555995566_)
                      (let ((_e9556295574_ (gx#syntax-e _e9555995566_)))
                        (let ((_hd9556395577_ (##car _e9556295574_))
                              (_tl9556495579_ (##cdr _e9556295574_)))
                          (let ((_body95582_ _tl9556495579_))
                            (if '#t
                                (cons '%#define-alias _body95582_)
                                (_E9556195570_)))))
                      (_E9556195570_)))))
          (_E9556095584_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx95528_)
        (let* ((_e9552995536_ _stx95528_)
               (_E9553195540_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9552995536_)))
               (_E9553095554_
                (lambda ()
                  (if (gx#stx-pair? _e9552995536_)
                      (let ((_e9553295544_ (gx#syntax-e _e9552995536_)))
                        (let ((_hd9553395547_ (##car _e9553295544_))
                              (_tl9553495549_ (##cdr _e9553295544_)))
                          (let ((_body95552_ _tl9553495549_))
                            (if '#t
                                (cons '%#define-runtime _body95552_)
                                (_E9553195540_)))))
                      (_E9553195540_)))))
          (_E9553095554_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx95498_)
        (let* ((_e9549995506_ _stx95498_)
               (_E9550195510_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9549995506_)))
               (_E9550095524_
                (lambda ()
                  (if (gx#stx-pair? _e9549995506_)
                      (let ((_e9550295514_ (gx#syntax-e _e9549995506_)))
                        (let ((_hd9550395517_ (##car _e9550295514_))
                              (_tl9550495519_ (##cdr _e9550295514_)))
                          (let ((_decls95522_ _tl9550495519_))
                            (if '#t
                                (cons '%#declare _decls95522_)
                                (_E9550195510_)))))
                      (_E9550195510_)))))
          (_E9550095524_))))
    (define gx#core-compile-top-lambda%
      (lambda (_stx95468_)
        (let* ((_e9546995476_ _stx95468_)
               (_E9547195480_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9546995476_)))
               (_E9547095494_
                (lambda ()
                  (if (gx#stx-pair? _e9546995476_)
                      (let ((_e9547295484_ (gx#syntax-e _e9546995476_)))
                        (let ((_hd9547395487_ (##car _e9547295484_))
                              (_tl9547495489_ (##cdr _e9547295484_)))
                          (let ((_clause95492_ _tl9547495489_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause95492_))
                                (_E9547195480_)))))
                      (_E9547195480_)))))
          (_E9547095494_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx95425_)
        (let* ((_e9542695436_ _stx95425_)
               (_E9542895440_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9542695436_)))
               (_E9542795464_
                (lambda ()
                  (if (gx#stx-pair? _e9542695436_)
                      (let ((_e9542995444_ (gx#syntax-e _e9542695436_)))
                        (let ((_hd9543095447_ (##car _e9542995444_))
                              (_tl9543195449_ (##cdr _e9542995444_)))
                          (let ((_hd95452_ _hd9543095447_))
                            (if (gx#stx-pair? _tl9543195449_)
                                (let ((_e9543295454_
                                       (gx#syntax-e _tl9543195449_)))
                                  (let ((_hd9543395457_ (##car _e9543295454_))
                                        (_tl9543495459_ (##cdr _e9543295454_)))
                                    (let ((_body95462_ _hd9543395457_))
                                      (if (gx#stx-null? _tl9543495459_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd95452_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body95462_)
                                                          '()))
                                              (_E9542895440_))
                                          (_E9542895440_)))))
                                (_E9542895440_)))))
                      (_E9542895440_)))))
          (_E9542795464_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx95395_)
        (let* ((_e9539695403_ _stx95395_)
               (_E9539895407_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9539695403_)))
               (_E9539795421_
                (lambda ()
                  (if (gx#stx-pair? _e9539695403_)
                      (let ((_e9539995411_ (gx#syntax-e _e9539695403_)))
                        (let ((_hd9540095414_ (##car _e9539995411_))
                              (_tl9540195416_ (##cdr _e9539995411_)))
                          (let ((_clauses95419_ _tl9540195416_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses95419_))
                                (_E9539895407_)))))
                      (_E9539895407_)))))
          (_E9539795421_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx95330_ _form95331_)
        (let* ((_e9533295345_ _stx95330_)
               (_E9533495349_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9533295345_)))
               (_E9533395381_
                (lambda ()
                  (if (gx#stx-pair? _e9533295345_)
                      (let ((_e9533595353_ (gx#syntax-e _e9533295345_)))
                        (let ((_hd9533695356_ (##car _e9533595353_))
                              (_tl9533795358_ (##cdr _e9533595353_)))
                          (if (gx#stx-pair? _tl9533795358_)
                              (let ((_e9533895361_
                                     (gx#syntax-e _tl9533795358_)))
                                (let ((_hd9533995364_ (##car _e9533895361_))
                                      (_tl9534095366_ (##cdr _e9533895361_)))
                                  (let ((_hd95369_ _hd9533995364_))
                                    (if (gx#stx-pair? _tl9534095366_)
                                        (let ((_e9534195371_
                                               (gx#syntax-e _tl9534095366_)))
                                          (let ((_hd9534295374_
                                                 (##car _e9534195371_))
                                                (_tl9534395376_
                                                 (##cdr _e9534195371_)))
                                            (let ((_body95379_ _hd9534295374_))
                                              (if (gx#stx-null? _tl9534395376_)
                                                  (if '#t
                                                      (cons _form95331_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd95369_)
                          (cons (gx#core-compile-top-syntax _body95379_) '())))
              (_E9533495349_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9533495349_)))))
                                        (_E9533495349_)))))
                              (_E9533495349_))))
                      (_E9533495349_)))))
          (_E9533395381_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx95388_)
        (let ((_form95390_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx95388_ _form95390_))))
    (define gx#core-compile-top-let-values%
      (lambda _g96203_
        (let ((_g96202_ (##length _g96203_)))
          (cond ((##fx= _g96202_ 1)
                 (apply (lambda (_stx95388_)
                          (gx#core-compile-top-let-values%__0 _stx95388_))
                        _g96203_))
                ((##fx= _g96202_ 2)
                 (apply (lambda (_stx95392_ _form95393_)
                          (gx#core-compile-top-let-values%__%
                           _stx95392_
                           _form95393_))
                        _g96203_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g96203_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx95327_)
        (gx#core-compile-top-let-values%__% _stx95327_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx95325_)
        (gx#core-compile-top-let-values%__% _stx95325_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx95284_)
        (let* ((_e9528595295_ _stx95284_)
               (_E9528795299_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9528595295_)))
               (_E9528695321_
                (lambda ()
                  (if (gx#stx-pair? _e9528595295_)
                      (let ((_e9528895303_ (gx#syntax-e _e9528595295_)))
                        (let ((_hd9528995306_ (##car _e9528895303_))
                              (_tl9529095308_ (##cdr _e9528895303_)))
                          (if (gx#stx-pair? _tl9529095308_)
                              (let ((_e9529195311_
                                     (gx#syntax-e _tl9529095308_)))
                                (let ((_hd9529295314_ (##car _e9529195311_))
                                      (_tl9529395316_ (##cdr _e9529195311_)))
                                  (let ((_e95319_ _hd9529295314_))
                                    (if (gx#stx-null? _tl9529395316_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e95319_)
                                                        '()))
                                            (_E9528795299_))
                                        (_E9528795299_)))))
                              (_E9528795299_))))
                      (_E9528795299_)))))
          (_E9528695321_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx95243_)
        (let* ((_e9524495254_ _stx95243_)
               (_E9524695258_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9524495254_)))
               (_E9524595280_
                (lambda ()
                  (if (gx#stx-pair? _e9524495254_)
                      (let ((_e9524795262_ (gx#syntax-e _e9524495254_)))
                        (let ((_hd9524895265_ (##car _e9524795262_))
                              (_tl9524995267_ (##cdr _e9524795262_)))
                          (if (gx#stx-pair? _tl9524995267_)
                              (let ((_e9525095270_
                                     (gx#syntax-e _tl9524995267_)))
                                (let ((_hd9525195273_ (##car _e9525095270_))
                                      (_tl9525295275_ (##cdr _e9525095270_)))
                                  (let ((_e95278_ _hd9525195273_))
                                    (if (gx#stx-null? _tl9525295275_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e95278_)
                                                        '()))
                                            (_E9524695258_))
                                        (_E9524695258_)))))
                              (_E9524695258_))))
                      (_E9524695258_)))))
          (_E9524595280_))))
    (define gx#core-compile-top-call%
      (lambda (_stx95200_)
        (let* ((_e9520195211_ _stx95200_)
               (_E9520395215_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9520195211_)))
               (_E9520295239_
                (lambda ()
                  (if (gx#stx-pair? _e9520195211_)
                      (let ((_e9520495219_ (gx#syntax-e _e9520195211_)))
                        (let ((_hd9520595222_ (##car _e9520495219_))
                              (_tl9520695224_ (##cdr _e9520495219_)))
                          (if (gx#stx-pair? _tl9520695224_)
                              (let ((_e9520795227_
                                     (gx#syntax-e _tl9520695224_)))
                                (let ((_hd9520895230_ (##car _e9520795227_))
                                      (_tl9520995232_ (##cdr _e9520795227_)))
                                  (let* ((_rator95235_ _hd9520895230_)
                                         (_args95237_ _tl9520995232_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator95235_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args95237_)))
                                        (_E9520395215_)))))
                              (_E9520395215_))))
                      (_E9520395215_)))))
          (_E9520295239_))))
    (define gx#core-compile-top-if%
      (lambda (_stx95133_)
        (let* ((_e9513495150_ _stx95133_)
               (_E9513695154_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9513495150_)))
               (_E9513595196_
                (lambda ()
                  (if (gx#stx-pair? _e9513495150_)
                      (let ((_e9513795158_ (gx#syntax-e _e9513495150_)))
                        (let ((_hd9513895161_ (##car _e9513795158_))
                              (_tl9513995163_ (##cdr _e9513795158_)))
                          (if (gx#stx-pair? _tl9513995163_)
                              (let ((_e9514095166_
                                     (gx#syntax-e _tl9513995163_)))
                                (let ((_hd9514195169_ (##car _e9514095166_))
                                      (_tl9514295171_ (##cdr _e9514095166_)))
                                  (let ((_test95174_ _hd9514195169_))
                                    (if (gx#stx-pair? _tl9514295171_)
                                        (let ((_e9514395176_
                                               (gx#syntax-e _tl9514295171_)))
                                          (let ((_hd9514495179_
                                                 (##car _e9514395176_))
                                                (_tl9514595181_
                                                 (##cdr _e9514395176_)))
                                            (let ((_K95184_ _hd9514495179_))
                                              (if (gx#stx-pair? _tl9514595181_)
                                                  (let ((_e9514695186_
                                                         (gx#syntax-e
                                                          _tl9514595181_)))
                                                    (let ((_hd9514795189_
                                                           (##car _e9514695186_))
                                                          (_tl9514895191_
                                                           (##cdr _e9514695186_)))
                                                      (let ((_E95194_
                                                             _hd9514795189_))
                                                        (if (gx#stx-null?
                                                             _tl9514895191_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test95174_)
                                    (cons (gx#core-compile-top-syntax _K95184_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E95194_)
                                                '()))))
                        (_E9513695154_))
                    (_E9513695154_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9513695154_)))))
                                        (_E9513695154_)))))
                              (_E9513695154_))))
                      (_E9513695154_)))))
          (_E9513595196_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx95092_)
        (let* ((_e9509395103_ _stx95092_)
               (_E9509595107_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9509395103_)))
               (_E9509495129_
                (lambda ()
                  (if (gx#stx-pair? _e9509395103_)
                      (let ((_e9509695111_ (gx#syntax-e _e9509395103_)))
                        (let ((_hd9509795114_ (##car _e9509695111_))
                              (_tl9509895116_ (##cdr _e9509695111_)))
                          (if (gx#stx-pair? _tl9509895116_)
                              (let ((_e9509995119_
                                     (gx#syntax-e _tl9509895116_)))
                                (let ((_hd9510095122_ (##car _e9509995119_))
                                      (_tl9510195124_ (##cdr _e9509995119_)))
                                  (let ((_id95127_ _hd9510095122_))
                                    (if (gx#stx-null? _tl9510195124_)
                                        (if (gx#identifier? _id95127_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id95127_)
                                                        '()))
                                            (_E9509595107_))
                                        (_E9509595107_)))))
                              (_E9509595107_))))
                      (_E9509595107_)))))
          (_E9509495129_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx95038_)
        (let* ((_e9503995052_ _stx95038_)
               (_E9504195056_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9503995052_)))
               (_E9504095088_
                (lambda ()
                  (if (gx#stx-pair? _e9503995052_)
                      (let ((_e9504295060_ (gx#syntax-e _e9503995052_)))
                        (let ((_hd9504395063_ (##car _e9504295060_))
                              (_tl9504495065_ (##cdr _e9504295060_)))
                          (if (gx#stx-pair? _tl9504495065_)
                              (let ((_e9504595068_
                                     (gx#syntax-e _tl9504495065_)))
                                (let ((_hd9504695071_ (##car _e9504595068_))
                                      (_tl9504795073_ (##cdr _e9504595068_)))
                                  (let ((_id95076_ _hd9504695071_))
                                    (if (gx#stx-pair? _tl9504795073_)
                                        (let ((_e9504895078_
                                               (gx#syntax-e _tl9504795073_)))
                                          (let ((_hd9504995081_
                                                 (##car _e9504895078_))
                                                (_tl9505095083_
                                                 (##cdr _e9504895078_)))
                                            (let ((_expr95086_ _hd9504995081_))
                                              (if (gx#stx-null? _tl9505095083_)
                                                  (if (gx#identifier?
                                                       _id95076_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id95076_)
                          (cons (gx#core-compile-top-syntax _expr95086_) '())))
              (_E9504195056_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9504195056_)))))
                                        (_E9504195056_)))))
                              (_E9504195056_))))
                      (_E9504195056_)))))
          (_E9504095088_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id95033_)
        (let ((_$e95035_ (gx#resolve-identifier__0 _id95033_)))
          (if _$e95035_
              (##unchecked-structure-ref _$e95035_ '1 gx#binding::t '#f)
              _id95033_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd95031_)
        (if (gx#identifier? _hd95031_)
            (gx#core-compile-top-runtime-ref _hd95031_)
            '#f)))))
