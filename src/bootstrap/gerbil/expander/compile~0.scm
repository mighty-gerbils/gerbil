(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1710776832)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx96129_)
        (let* ((_e9613096137_ _stx96129_)
               (_E9613296141_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9613096137_)))
               (_E9613196155_
                (lambda ()
                  (if (gx#stx-pair? _e9613096137_)
                      (let ((_e9613396145_ (gx#syntax-e _e9613096137_)))
                        (let ((_hd9613496148_ (##car _e9613396145_))
                              (_tl9613596150_ (##cdr _e9613396145_)))
                          (let ((_form96153_ _hd9613496148_))
                            (if '#t
                                (let* ((__self96158
                                        (gx#syntax-local-e__0 _form96153_))
                                       (__method96159
                                        (method-ref
                                         __self96158
                                         'compile-top-syntax)))
                                  (if __method96159
                                      (__method96159 __self96158 _stx96129_)
                                      (error '"Missing method"
                                             __self96158
                                             'compile-top-syntax)))
                                (_E9613296141_)))))
                      (_E9613296141_)))))
          (_E9613196155_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self96089_ _stx96090_)
        (let* ((_self9609196099_ _self96089_)
               (_E9609396103_
                (lambda () (error '"No clause matching" _self9609196099_)))
               (_K9609496115_
                (lambda (_K96106_)
                  (let ((_$e96108_ (gx#stx-source _stx96090_)))
                    (if _$e96108_
                        ((lambda (_g9611096112_)
                           (gx#stx-wrap-source
                            (_K96106_ _stx96090_)
                            _g9611096112_))
                         _$e96108_)
                        (_K96106_ _stx96090_))))))
          (if (##structure-instance-of? _self9609196099_ 'gx#core-expander::t)
              (let* ((_e9609596118_
                      (##unchecked-structure-ref
                       _self9609196099_
                       '1
                       gx#expander::t
                       '#f))
                     (_e9609696121_
                      (##unchecked-structure-ref
                       _self9609196099_
                       '2
                       gx#core-expander::t
                       '#f))
                     (_e9609796124_
                      (##unchecked-structure-ref
                       _self9609196099_
                       '3
                       gx#core-expander::t
                       '#f))
                     (_K96127_ _e9609796124_))
                (_K9609496115_ _K96127_))
              (_E9609396103_)))))
    (bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx95963_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx95963_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx95933_)
        (let* ((_e9593495941_ _stx95933_)
               (_E9593695945_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9593495941_)))
               (_E9593595959_
                (lambda ()
                  (if (gx#stx-pair? _e9593495941_)
                      (let ((_e9593795949_ (gx#syntax-e _e9593495941_)))
                        (let ((_hd9593895952_ (##car _e9593795949_))
                              (_tl9593995954_ (##cdr _e9593795949_)))
                          (let ((_body95957_ _tl9593995954_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body95957_))
                                (_E9593695945_)))))
                      (_E9593695945_)))))
          (_E9593595959_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx95902_)
        (let* ((_e9590395910_ _stx95902_)
               (_E9590595914_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9590395910_)))
               (_E9590495929_
                (lambda ()
                  (if (gx#stx-pair? _e9590395910_)
                      (let ((_e9590695918_ (gx#syntax-e _e9590395910_)))
                        (let ((_hd9590795921_ (##car _e9590695918_))
                              (_tl9590895923_ (##cdr _e9590695918_)))
                          (let ((_body95926_ _tl9590895923_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body95926_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E9590595914_)))))
                      (_E9590595914_)))))
          (_E9590495929_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_stx95872_)
        (let* ((_e9587395880_ _stx95872_)
               (_E9587595884_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9587395880_)))
               (_E9587495898_
                (lambda ()
                  (if (gx#stx-pair? _e9587395880_)
                      (let ((_e9587695888_ (gx#syntax-e _e9587395880_)))
                        (let ((_hd9587795891_ (##car _e9587695888_))
                              (_tl9587895893_ (##cdr _e9587695888_)))
                          (let ((_body95896_ _tl9587895893_))
                            (if '#t
                                (cons '%#begin-foreign _body95896_)
                                (_E9587595884_)))))
                      (_E9587595884_)))))
          (_E9587495898_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_stx95818_)
        (let* ((_e9581995832_ _stx95818_)
               (_E9582195836_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9581995832_)))
               (_E9582095868_
                (lambda ()
                  (if (gx#stx-pair? _e9581995832_)
                      (let ((_e9582295840_ (gx#syntax-e _e9581995832_)))
                        (let ((_hd9582395843_ (##car _e9582295840_))
                              (_tl9582495845_ (##cdr _e9582295840_)))
                          (if (gx#stx-pair? _tl9582495845_)
                              (let ((_e9582595848_
                                     (gx#syntax-e _tl9582495845_)))
                                (let ((_hd9582695851_ (##car _e9582595848_))
                                      (_tl9582795853_ (##cdr _e9582595848_)))
                                  (let ((_ann95856_ _hd9582695851_))
                                    (if (gx#stx-pair? _tl9582795853_)
                                        (let ((_e9582895858_
                                               (gx#syntax-e _tl9582795853_)))
                                          (let ((_hd9582995861_
                                                 (##car _e9582895858_))
                                                (_tl9583095863_
                                                 (##cdr _e9582895858_)))
                                            (let ((_expr95866_ _hd9582995861_))
                                              (if (gx#stx-null? _tl9583095863_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr95866_)
                                                      (_E9582195836_))
                                                  (_E9582195836_)))))
                                        (_E9582195836_)))))
                              (_E9582195836_))))
                      (_E9582195836_)))))
          (_E9582095868_))))
    (define gx#core-compile-top-import%
      (lambda (_stx95788_)
        (let* ((_e9578995796_ _stx95788_)
               (_E9579195800_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9578995796_)))
               (_E9579095814_
                (lambda ()
                  (if (gx#stx-pair? _e9578995796_)
                      (let ((_e9579295804_ (gx#syntax-e _e9578995796_)))
                        (let ((_hd9579395807_ (##car _e9579295804_))
                              (_tl9579495809_ (##cdr _e9579295804_)))
                          (let ((_body95812_ _tl9579495809_))
                            (if '#t
                                (cons '%#import _body95812_)
                                (_E9579195800_)))))
                      (_E9579195800_)))))
          (_E9579095814_))))
    (define gx#core-compile-top-module%
      (lambda (_stx95745_)
        (let* ((_e9574695756_ _stx95745_)
               (_E9574895760_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9574695756_)))
               (_E9574795784_
                (lambda ()
                  (if (gx#stx-pair? _e9574695756_)
                      (let ((_e9574995764_ (gx#syntax-e _e9574695756_)))
                        (let ((_hd9575095767_ (##car _e9574995764_))
                              (_tl9575195769_ (##cdr _e9574995764_)))
                          (if (gx#stx-pair? _tl9575195769_)
                              (let ((_e9575295772_
                                     (gx#syntax-e _tl9575195769_)))
                                (let ((_hd9575395775_ (##car _e9575295772_))
                                      (_tl9575495777_ (##cdr _e9575295772_)))
                                  (let* ((_hd95780_ _hd9575395775_)
                                         (_body95782_ _tl9575495777_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _hd95780_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body95782_)))
                                        (_E9574895760_)))))
                              (_E9574895760_))))
                      (_E9574895760_)))))
          (_E9574795784_))))
    (define gx#core-compile-top-export%
      (lambda (_stx95715_)
        (let* ((_e9571695723_ _stx95715_)
               (_E9571895727_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9571695723_)))
               (_E9571795741_
                (lambda ()
                  (if (gx#stx-pair? _e9571695723_)
                      (let ((_e9571995731_ (gx#syntax-e _e9571695723_)))
                        (let ((_hd9572095734_ (##car _e9571995731_))
                              (_tl9572195736_ (##cdr _e9571995731_)))
                          (let ((_body95739_ _tl9572195736_))
                            (if '#t
                                (cons '%#export _body95739_)
                                (_E9571895727_)))))
                      (_E9571895727_)))))
          (_E9571795741_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx95685_)
        (let* ((_e9568695693_ _stx95685_)
               (_E9568895697_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9568695693_)))
               (_E9568795711_
                (lambda ()
                  (if (gx#stx-pair? _e9568695693_)
                      (let ((_e9568995701_ (gx#syntax-e _e9568695693_)))
                        (let ((_hd9569095704_ (##car _e9568995701_))
                              (_tl9569195706_ (##cdr _e9568995701_)))
                          (let ((_body95709_ _tl9569195706_))
                            (if '#t
                                (cons '%#provide _body95709_)
                                (_E9568895697_)))))
                      (_E9568895697_)))))
          (_E9568795711_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx95655_)
        (let* ((_e9565695663_ _stx95655_)
               (_E9565895667_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9565695663_)))
               (_E9565795681_
                (lambda ()
                  (if (gx#stx-pair? _e9565695663_)
                      (let ((_e9565995671_ (gx#syntax-e _e9565695663_)))
                        (let ((_hd9566095674_ (##car _e9565995671_))
                              (_tl9566195676_ (##cdr _e9565995671_)))
                          (let ((_body95679_ _tl9566195676_))
                            (if '#t
                                (cons '%#extern _body95679_)
                                (_E9565895667_)))))
                      (_E9565895667_)))))
          (_E9565795681_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx95601_)
        (let* ((_e9560295615_ _stx95601_)
               (_E9560495619_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9560295615_)))
               (_E9560395651_
                (lambda ()
                  (if (gx#stx-pair? _e9560295615_)
                      (let ((_e9560595623_ (gx#syntax-e _e9560295615_)))
                        (let ((_hd9560695626_ (##car _e9560595623_))
                              (_tl9560795628_ (##cdr _e9560595623_)))
                          (if (gx#stx-pair? _tl9560795628_)
                              (let ((_e9560895631_
                                     (gx#syntax-e _tl9560795628_)))
                                (let ((_hd9560995634_ (##car _e9560895631_))
                                      (_tl9561095636_ (##cdr _e9560895631_)))
                                  (let ((_hd95639_ _hd9560995634_))
                                    (if (gx#stx-pair? _tl9561095636_)
                                        (let ((_e9561195641_
                                               (gx#syntax-e _tl9561095636_)))
                                          (let ((_hd9561295644_
                                                 (##car _e9561195641_))
                                                (_tl9561395646_
                                                 (##cdr _e9561195641_)))
                                            (let ((_expr95649_ _hd9561295644_))
                                              (if (gx#stx-null? _tl9561395646_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd95639_)
                          (cons (gx#core-compile-top-syntax _expr95649_) '())))
              (_E9560495619_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9560495619_)))))
                                        (_E9560495619_)))))
                              (_E9560495619_))))
                      (_E9560495619_)))))
          (_E9560395651_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx95546_)
        (let* ((_e9554795560_ _stx95546_)
               (_E9554995564_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9554795560_)))
               (_E9554895597_
                (lambda ()
                  (if (gx#stx-pair? _e9554795560_)
                      (let ((_e9555095568_ (gx#syntax-e _e9554795560_)))
                        (let ((_hd9555195571_ (##car _e9555095568_))
                              (_tl9555295573_ (##cdr _e9555095568_)))
                          (if (gx#stx-pair? _tl9555295573_)
                              (let ((_e9555395576_
                                     (gx#syntax-e _tl9555295573_)))
                                (let ((_hd9555495579_ (##car _e9555395576_))
                                      (_tl9555595581_ (##cdr _e9555395576_)))
                                  (let ((_hd95584_ _hd9555495579_))
                                    (if (gx#stx-pair? _tl9555595581_)
                                        (let ((_e9555695586_
                                               (gx#syntax-e _tl9555595581_)))
                                          (let ((_hd9555795589_
                                                 (##car _e9555695586_))
                                                (_tl9555895591_
                                                 (##cdr _e9555695586_)))
                                            (let ((_expr95594_ _hd9555795589_))
                                              (if (gx#stx-null? _tl9555895591_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd95584_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr95594_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E9554995564_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9554995564_)))))
                                        (_E9554995564_)))))
                              (_E9554995564_))))
                      (_E9554995564_)))))
          (_E9554895597_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx95516_)
        (let* ((_e9551795524_ _stx95516_)
               (_E9551995528_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9551795524_)))
               (_E9551895542_
                (lambda ()
                  (if (gx#stx-pair? _e9551795524_)
                      (let ((_e9552095532_ (gx#syntax-e _e9551795524_)))
                        (let ((_hd9552195535_ (##car _e9552095532_))
                              (_tl9552295537_ (##cdr _e9552095532_)))
                          (let ((_body95540_ _tl9552295537_))
                            (if '#t
                                (cons '%#define-alias _body95540_)
                                (_E9551995528_)))))
                      (_E9551995528_)))))
          (_E9551895542_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx95486_)
        (let* ((_e9548795494_ _stx95486_)
               (_E9548995498_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9548795494_)))
               (_E9548895512_
                (lambda ()
                  (if (gx#stx-pair? _e9548795494_)
                      (let ((_e9549095502_ (gx#syntax-e _e9548795494_)))
                        (let ((_hd9549195505_ (##car _e9549095502_))
                              (_tl9549295507_ (##cdr _e9549095502_)))
                          (let ((_body95510_ _tl9549295507_))
                            (if '#t
                                (cons '%#define-runtime _body95510_)
                                (_E9548995498_)))))
                      (_E9548995498_)))))
          (_E9548895512_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx95456_)
        (let* ((_e9545795464_ _stx95456_)
               (_E9545995468_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9545795464_)))
               (_E9545895482_
                (lambda ()
                  (if (gx#stx-pair? _e9545795464_)
                      (let ((_e9546095472_ (gx#syntax-e _e9545795464_)))
                        (let ((_hd9546195475_ (##car _e9546095472_))
                              (_tl9546295477_ (##cdr _e9546095472_)))
                          (let ((_decls95480_ _tl9546295477_))
                            (if '#t
                                (cons '%#declare _decls95480_)
                                (_E9545995468_)))))
                      (_E9545995468_)))))
          (_E9545895482_))))
    (define gx#core-compile-top-lambda%
      (lambda (_stx95426_)
        (let* ((_e9542795434_ _stx95426_)
               (_E9542995438_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9542795434_)))
               (_E9542895452_
                (lambda ()
                  (if (gx#stx-pair? _e9542795434_)
                      (let ((_e9543095442_ (gx#syntax-e _e9542795434_)))
                        (let ((_hd9543195445_ (##car _e9543095442_))
                              (_tl9543295447_ (##cdr _e9543095442_)))
                          (let ((_clause95450_ _tl9543295447_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause95450_))
                                (_E9542995438_)))))
                      (_E9542995438_)))))
          (_E9542895452_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx95383_)
        (let* ((_e9538495394_ _stx95383_)
               (_E9538695398_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9538495394_)))
               (_E9538595422_
                (lambda ()
                  (if (gx#stx-pair? _e9538495394_)
                      (let ((_e9538795402_ (gx#syntax-e _e9538495394_)))
                        (let ((_hd9538895405_ (##car _e9538795402_))
                              (_tl9538995407_ (##cdr _e9538795402_)))
                          (let ((_hd95410_ _hd9538895405_))
                            (if (gx#stx-pair? _tl9538995407_)
                                (let ((_e9539095412_
                                       (gx#syntax-e _tl9538995407_)))
                                  (let ((_hd9539195415_ (##car _e9539095412_))
                                        (_tl9539295417_ (##cdr _e9539095412_)))
                                    (let ((_body95420_ _hd9539195415_))
                                      (if (gx#stx-null? _tl9539295417_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd95410_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body95420_)
                                                          '()))
                                              (_E9538695398_))
                                          (_E9538695398_)))))
                                (_E9538695398_)))))
                      (_E9538695398_)))))
          (_E9538595422_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx95353_)
        (let* ((_e9535495361_ _stx95353_)
               (_E9535695365_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9535495361_)))
               (_E9535595379_
                (lambda ()
                  (if (gx#stx-pair? _e9535495361_)
                      (let ((_e9535795369_ (gx#syntax-e _e9535495361_)))
                        (let ((_hd9535895372_ (##car _e9535795369_))
                              (_tl9535995374_ (##cdr _e9535795369_)))
                          (let ((_clauses95377_ _tl9535995374_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses95377_))
                                (_E9535695365_)))))
                      (_E9535695365_)))))
          (_E9535595379_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx95288_ _form95289_)
        (let* ((_e9529095303_ _stx95288_)
               (_E9529295307_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9529095303_)))
               (_E9529195339_
                (lambda ()
                  (if (gx#stx-pair? _e9529095303_)
                      (let ((_e9529395311_ (gx#syntax-e _e9529095303_)))
                        (let ((_hd9529495314_ (##car _e9529395311_))
                              (_tl9529595316_ (##cdr _e9529395311_)))
                          (if (gx#stx-pair? _tl9529595316_)
                              (let ((_e9529695319_
                                     (gx#syntax-e _tl9529595316_)))
                                (let ((_hd9529795322_ (##car _e9529695319_))
                                      (_tl9529895324_ (##cdr _e9529695319_)))
                                  (let ((_hd95327_ _hd9529795322_))
                                    (if (gx#stx-pair? _tl9529895324_)
                                        (let ((_e9529995329_
                                               (gx#syntax-e _tl9529895324_)))
                                          (let ((_hd9530095332_
                                                 (##car _e9529995329_))
                                                (_tl9530195334_
                                                 (##cdr _e9529995329_)))
                                            (let ((_body95337_ _hd9530095332_))
                                              (if (gx#stx-null? _tl9530195334_)
                                                  (if '#t
                                                      (cons _form95289_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd95327_)
                          (cons (gx#core-compile-top-syntax _body95337_) '())))
              (_E9529295307_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9529295307_)))))
                                        (_E9529295307_)))))
                              (_E9529295307_))))
                      (_E9529295307_)))))
          (_E9529195339_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx95346_)
        (let ((_form95348_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx95346_ _form95348_))))
    (define gx#core-compile-top-let-values%
      (lambda _g96161_
        (let ((_g96160_ (##length _g96161_)))
          (cond ((##fx= _g96160_ 1)
                 (apply (lambda (_stx95346_)
                          (gx#core-compile-top-let-values%__0 _stx95346_))
                        _g96161_))
                ((##fx= _g96160_ 2)
                 (apply (lambda (_stx95350_ _form95351_)
                          (gx#core-compile-top-let-values%__%
                           _stx95350_
                           _form95351_))
                        _g96161_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g96161_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx95285_)
        (gx#core-compile-top-let-values%__% _stx95285_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx95283_)
        (gx#core-compile-top-let-values%__% _stx95283_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx95242_)
        (let* ((_e9524395253_ _stx95242_)
               (_E9524595257_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9524395253_)))
               (_E9524495279_
                (lambda ()
                  (if (gx#stx-pair? _e9524395253_)
                      (let ((_e9524695261_ (gx#syntax-e _e9524395253_)))
                        (let ((_hd9524795264_ (##car _e9524695261_))
                              (_tl9524895266_ (##cdr _e9524695261_)))
                          (if (gx#stx-pair? _tl9524895266_)
                              (let ((_e9524995269_
                                     (gx#syntax-e _tl9524895266_)))
                                (let ((_hd9525095272_ (##car _e9524995269_))
                                      (_tl9525195274_ (##cdr _e9524995269_)))
                                  (let ((_e95277_ _hd9525095272_))
                                    (if (gx#stx-null? _tl9525195274_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e95277_)
                                                        '()))
                                            (_E9524595257_))
                                        (_E9524595257_)))))
                              (_E9524595257_))))
                      (_E9524595257_)))))
          (_E9524495279_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx95201_)
        (let* ((_e9520295212_ _stx95201_)
               (_E9520495216_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9520295212_)))
               (_E9520395238_
                (lambda ()
                  (if (gx#stx-pair? _e9520295212_)
                      (let ((_e9520595220_ (gx#syntax-e _e9520295212_)))
                        (let ((_hd9520695223_ (##car _e9520595220_))
                              (_tl9520795225_ (##cdr _e9520595220_)))
                          (if (gx#stx-pair? _tl9520795225_)
                              (let ((_e9520895228_
                                     (gx#syntax-e _tl9520795225_)))
                                (let ((_hd9520995231_ (##car _e9520895228_))
                                      (_tl9521095233_ (##cdr _e9520895228_)))
                                  (let ((_e95236_ _hd9520995231_))
                                    (if (gx#stx-null? _tl9521095233_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e95236_)
                                                        '()))
                                            (_E9520495216_))
                                        (_E9520495216_)))))
                              (_E9520495216_))))
                      (_E9520495216_)))))
          (_E9520395238_))))
    (define gx#core-compile-top-call%
      (lambda (_stx95158_)
        (let* ((_e9515995169_ _stx95158_)
               (_E9516195173_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9515995169_)))
               (_E9516095197_
                (lambda ()
                  (if (gx#stx-pair? _e9515995169_)
                      (let ((_e9516295177_ (gx#syntax-e _e9515995169_)))
                        (let ((_hd9516395180_ (##car _e9516295177_))
                              (_tl9516495182_ (##cdr _e9516295177_)))
                          (if (gx#stx-pair? _tl9516495182_)
                              (let ((_e9516595185_
                                     (gx#syntax-e _tl9516495182_)))
                                (let ((_hd9516695188_ (##car _e9516595185_))
                                      (_tl9516795190_ (##cdr _e9516595185_)))
                                  (let* ((_rator95193_ _hd9516695188_)
                                         (_args95195_ _tl9516795190_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator95193_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args95195_)))
                                        (_E9516195173_)))))
                              (_E9516195173_))))
                      (_E9516195173_)))))
          (_E9516095197_))))
    (define gx#core-compile-top-if%
      (lambda (_stx95091_)
        (let* ((_e9509295108_ _stx95091_)
               (_E9509495112_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9509295108_)))
               (_E9509395154_
                (lambda ()
                  (if (gx#stx-pair? _e9509295108_)
                      (let ((_e9509595116_ (gx#syntax-e _e9509295108_)))
                        (let ((_hd9509695119_ (##car _e9509595116_))
                              (_tl9509795121_ (##cdr _e9509595116_)))
                          (if (gx#stx-pair? _tl9509795121_)
                              (let ((_e9509895124_
                                     (gx#syntax-e _tl9509795121_)))
                                (let ((_hd9509995127_ (##car _e9509895124_))
                                      (_tl9510095129_ (##cdr _e9509895124_)))
                                  (let ((_test95132_ _hd9509995127_))
                                    (if (gx#stx-pair? _tl9510095129_)
                                        (let ((_e9510195134_
                                               (gx#syntax-e _tl9510095129_)))
                                          (let ((_hd9510295137_
                                                 (##car _e9510195134_))
                                                (_tl9510395139_
                                                 (##cdr _e9510195134_)))
                                            (let ((_K95142_ _hd9510295137_))
                                              (if (gx#stx-pair? _tl9510395139_)
                                                  (let ((_e9510495144_
                                                         (gx#syntax-e
                                                          _tl9510395139_)))
                                                    (let ((_hd9510595147_
                                                           (##car _e9510495144_))
                                                          (_tl9510695149_
                                                           (##cdr _e9510495144_)))
                                                      (let ((_E95152_
                                                             _hd9510595147_))
                                                        (if (gx#stx-null?
                                                             _tl9510695149_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test95132_)
                                    (cons (gx#core-compile-top-syntax _K95142_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E95152_)
                                                '()))))
                        (_E9509495112_))
                    (_E9509495112_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9509495112_)))))
                                        (_E9509495112_)))))
                              (_E9509495112_))))
                      (_E9509495112_)))))
          (_E9509395154_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx95050_)
        (let* ((_e9505195061_ _stx95050_)
               (_E9505395065_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9505195061_)))
               (_E9505295087_
                (lambda ()
                  (if (gx#stx-pair? _e9505195061_)
                      (let ((_e9505495069_ (gx#syntax-e _e9505195061_)))
                        (let ((_hd9505595072_ (##car _e9505495069_))
                              (_tl9505695074_ (##cdr _e9505495069_)))
                          (if (gx#stx-pair? _tl9505695074_)
                              (let ((_e9505795077_
                                     (gx#syntax-e _tl9505695074_)))
                                (let ((_hd9505895080_ (##car _e9505795077_))
                                      (_tl9505995082_ (##cdr _e9505795077_)))
                                  (let ((_id95085_ _hd9505895080_))
                                    (if (gx#stx-null? _tl9505995082_)
                                        (if (gx#identifier? _id95085_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id95085_)
                                                        '()))
                                            (_E9505395065_))
                                        (_E9505395065_)))))
                              (_E9505395065_))))
                      (_E9505395065_)))))
          (_E9505295087_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx94996_)
        (let* ((_e9499795010_ _stx94996_)
               (_E9499995014_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9499795010_)))
               (_E9499895046_
                (lambda ()
                  (if (gx#stx-pair? _e9499795010_)
                      (let ((_e9500095018_ (gx#syntax-e _e9499795010_)))
                        (let ((_hd9500195021_ (##car _e9500095018_))
                              (_tl9500295023_ (##cdr _e9500095018_)))
                          (if (gx#stx-pair? _tl9500295023_)
                              (let ((_e9500395026_
                                     (gx#syntax-e _tl9500295023_)))
                                (let ((_hd9500495029_ (##car _e9500395026_))
                                      (_tl9500595031_ (##cdr _e9500395026_)))
                                  (let ((_id95034_ _hd9500495029_))
                                    (if (gx#stx-pair? _tl9500595031_)
                                        (let ((_e9500695036_
                                               (gx#syntax-e _tl9500595031_)))
                                          (let ((_hd9500795039_
                                                 (##car _e9500695036_))
                                                (_tl9500895041_
                                                 (##cdr _e9500695036_)))
                                            (let ((_expr95044_ _hd9500795039_))
                                              (if (gx#stx-null? _tl9500895041_)
                                                  (if (gx#identifier?
                                                       _id95034_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id95034_)
                          (cons (gx#core-compile-top-syntax _expr95044_) '())))
              (_E9499995014_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9499995014_)))))
                                        (_E9499995014_)))))
                              (_E9499995014_))))
                      (_E9499995014_)))))
          (_E9499895046_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id94991_)
        (let ((_$e94993_ (gx#resolve-identifier__0 _id94991_)))
          (if _$e94993_
              (##unchecked-structure-ref _$e94993_ '1 gx#binding::t '#f)
              _id94991_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd94989_)
        (if (gx#identifier? _hd94989_)
            (gx#core-compile-top-runtime-ref _hd94989_)
            '#f)))))
