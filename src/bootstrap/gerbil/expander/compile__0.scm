(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1707552287)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx161379_)
        (let* ((_e161380161387_ _stx161379_)
               (_E161382161391_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e161380161387_)))
               (_E161381161405_
                (lambda ()
                  (if (gx#stx-pair? _e161380161387_)
                      (let ((_e161383161395_ (gx#syntax-e _e161380161387_)))
                        (let ((_hd161384161398_ (##car _e161383161395_))
                              (_tl161385161400_ (##cdr _e161383161395_)))
                          (let ((_form161403_ _hd161384161398_))
                            (if '#t
                                (let* ((__self165602
                                        (gx#syntax-local-e__0 _form161403_))
                                       (__method165603
                                        (method-ref
                                         __self165602
                                         'compile-top-syntax)))
                                  (if __method165603
                                      (__method165603 __self165602 _stx161379_)
                                      (error '"Missing method"
                                             __self165602
                                             'compile-top-syntax)))
                                (_E161382161391_)))))
                      (_E161382161391_)))))
          (_E161381161405_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self161339_ _stx161340_)
        (let* ((_self161341161349_ _self161339_)
               (_E161343161353_
                (lambda () (error '"No clause matching" _self161341161349_)))
               (_K161344161365_
                (lambda (_K161356_)
                  (let ((_$e161358_ (gx#stx-source _stx161340_)))
                    (if _$e161358_
                        ((lambda (_g161360161362_)
                           (gx#stx-wrap-source
                            (_K161356_ _stx161340_)
                            _g161360161362_))
                         _$e161358_)
                        (_K161356_ _stx161340_))))))
          (if (##structure-instance-of?
               _self161341161349_
               'gx#core-expander::t)
              (let* ((_e161345161368_
                      (##unchecked-structure-ref
                       _self161341161349_
                       '1
                       gx#expander::t
                       '#f))
                     (_e161346161371_
                      (##unchecked-structure-ref
                       _self161341161349_
                       '2
                       gx#core-expander::t
                       '#f))
                     (_e161347161374_
                      (##unchecked-structure-ref
                       _self161341161349_
                       '3
                       gx#core-expander::t
                       '#f))
                     (_K161377_ _e161347161374_))
                (_K161344161365_ _K161377_))
              (_E161343161353_)))))
    (bind-method!
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx161213_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx161213_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx161183_)
        (let* ((_e161184161191_ _stx161183_)
               (_E161186161195_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e161184161191_)))
               (_E161185161209_
                (lambda ()
                  (if (gx#stx-pair? _e161184161191_)
                      (let ((_e161187161199_ (gx#syntax-e _e161184161191_)))
                        (let ((_hd161188161202_ (##car _e161187161199_))
                              (_tl161189161204_ (##cdr _e161187161199_)))
                          (let ((_body161207_ _tl161189161204_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body161207_))
                                (_E161186161195_)))))
                      (_E161186161195_)))))
          (_E161185161209_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx161152_)
        (let* ((_e161153161160_ _stx161152_)
               (_E161155161164_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e161153161160_)))
               (_E161154161179_
                (lambda ()
                  (if (gx#stx-pair? _e161153161160_)
                      (let ((_e161156161168_ (gx#syntax-e _e161153161160_)))
                        (let ((_hd161157161171_ (##car _e161156161168_))
                              (_tl161158161173_ (##cdr _e161156161168_)))
                          (let ((_body161176_ _tl161158161173_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body161176_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E161155161164_)))))
                      (_E161155161164_)))))
          (_E161154161179_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_stx161122_)
        (let* ((_e161123161130_ _stx161122_)
               (_E161125161134_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e161123161130_)))
               (_E161124161148_
                (lambda ()
                  (if (gx#stx-pair? _e161123161130_)
                      (let ((_e161126161138_ (gx#syntax-e _e161123161130_)))
                        (let ((_hd161127161141_ (##car _e161126161138_))
                              (_tl161128161143_ (##cdr _e161126161138_)))
                          (let ((_body161146_ _tl161128161143_))
                            (if '#t
                                (cons '%#begin-foreign _body161146_)
                                (_E161125161134_)))))
                      (_E161125161134_)))))
          (_E161124161148_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_stx161068_)
        (let* ((_e161069161082_ _stx161068_)
               (_E161071161086_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e161069161082_)))
               (_E161070161118_
                (lambda ()
                  (if (gx#stx-pair? _e161069161082_)
                      (let ((_e161072161090_ (gx#syntax-e _e161069161082_)))
                        (let ((_hd161073161093_ (##car _e161072161090_))
                              (_tl161074161095_ (##cdr _e161072161090_)))
                          (if (gx#stx-pair? _tl161074161095_)
                              (let ((_e161075161098_
                                     (gx#syntax-e _tl161074161095_)))
                                (let ((_hd161076161101_
                                       (##car _e161075161098_))
                                      (_tl161077161103_
                                       (##cdr _e161075161098_)))
                                  (let ((_ann161106_ _hd161076161101_))
                                    (if (gx#stx-pair? _tl161077161103_)
                                        (let ((_e161078161108_
                                               (gx#syntax-e _tl161077161103_)))
                                          (let ((_hd161079161111_
                                                 (##car _e161078161108_))
                                                (_tl161080161113_
                                                 (##cdr _e161078161108_)))
                                            (let ((_expr161116_
                                                   _hd161079161111_))
                                              (if (gx#stx-null?
                                                   _tl161080161113_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr161116_)
                                                      (_E161071161086_))
                                                  (_E161071161086_)))))
                                        (_E161071161086_)))))
                              (_E161071161086_))))
                      (_E161071161086_)))))
          (_E161070161118_))))
    (define gx#core-compile-top-import%
      (lambda (_stx161038_)
        (let* ((_e161039161046_ _stx161038_)
               (_E161041161050_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e161039161046_)))
               (_E161040161064_
                (lambda ()
                  (if (gx#stx-pair? _e161039161046_)
                      (let ((_e161042161054_ (gx#syntax-e _e161039161046_)))
                        (let ((_hd161043161057_ (##car _e161042161054_))
                              (_tl161044161059_ (##cdr _e161042161054_)))
                          (let ((_body161062_ _tl161044161059_))
                            (if '#t
                                (cons '%#import _body161062_)
                                (_E161041161050_)))))
                      (_E161041161050_)))))
          (_E161040161064_))))
    (define gx#core-compile-top-module%
      (lambda (_stx160995_)
        (let* ((_e160996161006_ _stx160995_)
               (_E160998161010_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160996161006_)))
               (_E160997161034_
                (lambda ()
                  (if (gx#stx-pair? _e160996161006_)
                      (let ((_e160999161014_ (gx#syntax-e _e160996161006_)))
                        (let ((_hd161000161017_ (##car _e160999161014_))
                              (_tl161001161019_ (##cdr _e160999161014_)))
                          (if (gx#stx-pair? _tl161001161019_)
                              (let ((_e161002161022_
                                     (gx#syntax-e _tl161001161019_)))
                                (let ((_hd161003161025_
                                       (##car _e161002161022_))
                                      (_tl161004161027_
                                       (##cdr _e161002161022_)))
                                  (let* ((_hd161030_ _hd161003161025_)
                                         (_body161032_ _tl161004161027_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _hd161030_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body161032_)))
                                        (_E160998161010_)))))
                              (_E160998161010_))))
                      (_E160998161010_)))))
          (_E160997161034_))))
    (define gx#core-compile-top-export%
      (lambda (_stx160965_)
        (let* ((_e160966160973_ _stx160965_)
               (_E160968160977_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160966160973_)))
               (_E160967160991_
                (lambda ()
                  (if (gx#stx-pair? _e160966160973_)
                      (let ((_e160969160981_ (gx#syntax-e _e160966160973_)))
                        (let ((_hd160970160984_ (##car _e160969160981_))
                              (_tl160971160986_ (##cdr _e160969160981_)))
                          (let ((_body160989_ _tl160971160986_))
                            (if '#t
                                (cons '%#export _body160989_)
                                (_E160968160977_)))))
                      (_E160968160977_)))))
          (_E160967160991_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx160935_)
        (let* ((_e160936160943_ _stx160935_)
               (_E160938160947_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160936160943_)))
               (_E160937160961_
                (lambda ()
                  (if (gx#stx-pair? _e160936160943_)
                      (let ((_e160939160951_ (gx#syntax-e _e160936160943_)))
                        (let ((_hd160940160954_ (##car _e160939160951_))
                              (_tl160941160956_ (##cdr _e160939160951_)))
                          (let ((_body160959_ _tl160941160956_))
                            (if '#t
                                (cons '%#provide _body160959_)
                                (_E160938160947_)))))
                      (_E160938160947_)))))
          (_E160937160961_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx160905_)
        (let* ((_e160906160913_ _stx160905_)
               (_E160908160917_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160906160913_)))
               (_E160907160931_
                (lambda ()
                  (if (gx#stx-pair? _e160906160913_)
                      (let ((_e160909160921_ (gx#syntax-e _e160906160913_)))
                        (let ((_hd160910160924_ (##car _e160909160921_))
                              (_tl160911160926_ (##cdr _e160909160921_)))
                          (let ((_body160929_ _tl160911160926_))
                            (if '#t
                                (cons '%#extern _body160929_)
                                (_E160908160917_)))))
                      (_E160908160917_)))))
          (_E160907160931_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx160851_)
        (let* ((_e160852160865_ _stx160851_)
               (_E160854160869_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160852160865_)))
               (_E160853160901_
                (lambda ()
                  (if (gx#stx-pair? _e160852160865_)
                      (let ((_e160855160873_ (gx#syntax-e _e160852160865_)))
                        (let ((_hd160856160876_ (##car _e160855160873_))
                              (_tl160857160878_ (##cdr _e160855160873_)))
                          (if (gx#stx-pair? _tl160857160878_)
                              (let ((_e160858160881_
                                     (gx#syntax-e _tl160857160878_)))
                                (let ((_hd160859160884_
                                       (##car _e160858160881_))
                                      (_tl160860160886_
                                       (##cdr _e160858160881_)))
                                  (let ((_hd160889_ _hd160859160884_))
                                    (if (gx#stx-pair? _tl160860160886_)
                                        (let ((_e160861160891_
                                               (gx#syntax-e _tl160860160886_)))
                                          (let ((_hd160862160894_
                                                 (##car _e160861160891_))
                                                (_tl160863160896_
                                                 (##cdr _e160861160891_)))
                                            (let ((_expr160899_
                                                   _hd160862160894_))
                                              (if (gx#stx-null?
                                                   _tl160863160896_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd160889_)
                          (cons (gx#core-compile-top-syntax _expr160899_)
                                '())))
              (_E160854160869_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E160854160869_)))))
                                        (_E160854160869_)))))
                              (_E160854160869_))))
                      (_E160854160869_)))))
          (_E160853160901_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx160796_)
        (let* ((_e160797160810_ _stx160796_)
               (_E160799160814_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160797160810_)))
               (_E160798160847_
                (lambda ()
                  (if (gx#stx-pair? _e160797160810_)
                      (let ((_e160800160818_ (gx#syntax-e _e160797160810_)))
                        (let ((_hd160801160821_ (##car _e160800160818_))
                              (_tl160802160823_ (##cdr _e160800160818_)))
                          (if (gx#stx-pair? _tl160802160823_)
                              (let ((_e160803160826_
                                     (gx#syntax-e _tl160802160823_)))
                                (let ((_hd160804160829_
                                       (##car _e160803160826_))
                                      (_tl160805160831_
                                       (##cdr _e160803160826_)))
                                  (let ((_hd160834_ _hd160804160829_))
                                    (if (gx#stx-pair? _tl160805160831_)
                                        (let ((_e160806160836_
                                               (gx#syntax-e _tl160805160831_)))
                                          (let ((_hd160807160839_
                                                 (##car _e160806160836_))
                                                (_tl160808160841_
                                                 (##cdr _e160806160836_)))
                                            (let ((_expr160844_
                                                   _hd160807160839_))
                                              (if (gx#stx-null?
                                                   _tl160808160841_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd160834_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr160844_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E160799160814_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E160799160814_)))))
                                        (_E160799160814_)))))
                              (_E160799160814_))))
                      (_E160799160814_)))))
          (_E160798160847_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx160766_)
        (let* ((_e160767160774_ _stx160766_)
               (_E160769160778_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160767160774_)))
               (_E160768160792_
                (lambda ()
                  (if (gx#stx-pair? _e160767160774_)
                      (let ((_e160770160782_ (gx#syntax-e _e160767160774_)))
                        (let ((_hd160771160785_ (##car _e160770160782_))
                              (_tl160772160787_ (##cdr _e160770160782_)))
                          (let ((_body160790_ _tl160772160787_))
                            (if '#t
                                (cons '%#define-alias _body160790_)
                                (_E160769160778_)))))
                      (_E160769160778_)))))
          (_E160768160792_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx160736_)
        (let* ((_e160737160744_ _stx160736_)
               (_E160739160748_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160737160744_)))
               (_E160738160762_
                (lambda ()
                  (if (gx#stx-pair? _e160737160744_)
                      (let ((_e160740160752_ (gx#syntax-e _e160737160744_)))
                        (let ((_hd160741160755_ (##car _e160740160752_))
                              (_tl160742160757_ (##cdr _e160740160752_)))
                          (let ((_body160760_ _tl160742160757_))
                            (if '#t
                                (cons '%#define-runtime _body160760_)
                                (_E160739160748_)))))
                      (_E160739160748_)))))
          (_E160738160762_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx160706_)
        (let* ((_e160707160714_ _stx160706_)
               (_E160709160718_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160707160714_)))
               (_E160708160732_
                (lambda ()
                  (if (gx#stx-pair? _e160707160714_)
                      (let ((_e160710160722_ (gx#syntax-e _e160707160714_)))
                        (let ((_hd160711160725_ (##car _e160710160722_))
                              (_tl160712160727_ (##cdr _e160710160722_)))
                          (let ((_decls160730_ _tl160712160727_))
                            (if '#t
                                (cons '%#declare _decls160730_)
                                (_E160709160718_)))))
                      (_E160709160718_)))))
          (_E160708160732_))))
    (define gx#core-compile-top-lambda%
      (lambda (_stx160676_)
        (let* ((_e160677160684_ _stx160676_)
               (_E160679160688_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160677160684_)))
               (_E160678160702_
                (lambda ()
                  (if (gx#stx-pair? _e160677160684_)
                      (let ((_e160680160692_ (gx#syntax-e _e160677160684_)))
                        (let ((_hd160681160695_ (##car _e160680160692_))
                              (_tl160682160697_ (##cdr _e160680160692_)))
                          (let ((_clause160700_ _tl160682160697_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause160700_))
                                (_E160679160688_)))))
                      (_E160679160688_)))))
          (_E160678160702_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx160633_)
        (let* ((_e160634160644_ _stx160633_)
               (_E160636160648_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160634160644_)))
               (_E160635160672_
                (lambda ()
                  (if (gx#stx-pair? _e160634160644_)
                      (let ((_e160637160652_ (gx#syntax-e _e160634160644_)))
                        (let ((_hd160638160655_ (##car _e160637160652_))
                              (_tl160639160657_ (##cdr _e160637160652_)))
                          (let ((_hd160660_ _hd160638160655_))
                            (if (gx#stx-pair? _tl160639160657_)
                                (let ((_e160640160662_
                                       (gx#syntax-e _tl160639160657_)))
                                  (let ((_hd160641160665_
                                         (##car _e160640160662_))
                                        (_tl160642160667_
                                         (##cdr _e160640160662_)))
                                    (let ((_body160670_ _hd160641160665_))
                                      (if (gx#stx-null? _tl160642160667_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd160660_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body160670_)
                                                          '()))
                                              (_E160636160648_))
                                          (_E160636160648_)))))
                                (_E160636160648_)))))
                      (_E160636160648_)))))
          (_E160635160672_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx160603_)
        (let* ((_e160604160611_ _stx160603_)
               (_E160606160615_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160604160611_)))
               (_E160605160629_
                (lambda ()
                  (if (gx#stx-pair? _e160604160611_)
                      (let ((_e160607160619_ (gx#syntax-e _e160604160611_)))
                        (let ((_hd160608160622_ (##car _e160607160619_))
                              (_tl160609160624_ (##cdr _e160607160619_)))
                          (let ((_clauses160627_ _tl160609160624_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses160627_))
                                (_E160606160615_)))))
                      (_E160606160615_)))))
          (_E160605160629_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx160538_ _form160539_)
        (let* ((_e160540160553_ _stx160538_)
               (_E160542160557_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160540160553_)))
               (_E160541160589_
                (lambda ()
                  (if (gx#stx-pair? _e160540160553_)
                      (let ((_e160543160561_ (gx#syntax-e _e160540160553_)))
                        (let ((_hd160544160564_ (##car _e160543160561_))
                              (_tl160545160566_ (##cdr _e160543160561_)))
                          (if (gx#stx-pair? _tl160545160566_)
                              (let ((_e160546160569_
                                     (gx#syntax-e _tl160545160566_)))
                                (let ((_hd160547160572_
                                       (##car _e160546160569_))
                                      (_tl160548160574_
                                       (##cdr _e160546160569_)))
                                  (let ((_hd160577_ _hd160547160572_))
                                    (if (gx#stx-pair? _tl160548160574_)
                                        (let ((_e160549160579_
                                               (gx#syntax-e _tl160548160574_)))
                                          (let ((_hd160550160582_
                                                 (##car _e160549160579_))
                                                (_tl160551160584_
                                                 (##cdr _e160549160579_)))
                                            (let ((_body160587_
                                                   _hd160550160582_))
                                              (if (gx#stx-null?
                                                   _tl160551160584_)
                                                  (if '#t
                                                      (cons _form160539_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd160577_)
                          (cons (gx#core-compile-top-syntax _body160587_)
                                '())))
              (_E160542160557_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E160542160557_)))))
                                        (_E160542160557_)))))
                              (_E160542160557_))))
                      (_E160542160557_)))))
          (_E160541160589_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx160596_)
        (let ((_form160598_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx160596_ _form160598_))))
    (define gx#core-compile-top-let-values%
      (lambda _g165605_
        (let ((_g165604_ (##length _g165605_)))
          (cond ((##fx= _g165604_ 1)
                 (apply (lambda (_stx160596_)
                          (gx#core-compile-top-let-values%__0 _stx160596_))
                        _g165605_))
                ((##fx= _g165604_ 2)
                 (apply (lambda (_stx160600_ _form160601_)
                          (gx#core-compile-top-let-values%__%
                           _stx160600_
                           _form160601_))
                        _g165605_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g165605_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx160535_)
        (gx#core-compile-top-let-values%__% _stx160535_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx160533_)
        (gx#core-compile-top-let-values%__% _stx160533_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx160492_)
        (let* ((_e160493160503_ _stx160492_)
               (_E160495160507_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160493160503_)))
               (_E160494160529_
                (lambda ()
                  (if (gx#stx-pair? _e160493160503_)
                      (let ((_e160496160511_ (gx#syntax-e _e160493160503_)))
                        (let ((_hd160497160514_ (##car _e160496160511_))
                              (_tl160498160516_ (##cdr _e160496160511_)))
                          (if (gx#stx-pair? _tl160498160516_)
                              (let ((_e160499160519_
                                     (gx#syntax-e _tl160498160516_)))
                                (let ((_hd160500160522_
                                       (##car _e160499160519_))
                                      (_tl160501160524_
                                       (##cdr _e160499160519_)))
                                  (let ((_e160527_ _hd160500160522_))
                                    (if (gx#stx-null? _tl160501160524_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e160527_)
                                                        '()))
                                            (_E160495160507_))
                                        (_E160495160507_)))))
                              (_E160495160507_))))
                      (_E160495160507_)))))
          (_E160494160529_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx160451_)
        (let* ((_e160452160462_ _stx160451_)
               (_E160454160466_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160452160462_)))
               (_E160453160488_
                (lambda ()
                  (if (gx#stx-pair? _e160452160462_)
                      (let ((_e160455160470_ (gx#syntax-e _e160452160462_)))
                        (let ((_hd160456160473_ (##car _e160455160470_))
                              (_tl160457160475_ (##cdr _e160455160470_)))
                          (if (gx#stx-pair? _tl160457160475_)
                              (let ((_e160458160478_
                                     (gx#syntax-e _tl160457160475_)))
                                (let ((_hd160459160481_
                                       (##car _e160458160478_))
                                      (_tl160460160483_
                                       (##cdr _e160458160478_)))
                                  (let ((_e160486_ _hd160459160481_))
                                    (if (gx#stx-null? _tl160460160483_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e160486_)
                                                        '()))
                                            (_E160454160466_))
                                        (_E160454160466_)))))
                              (_E160454160466_))))
                      (_E160454160466_)))))
          (_E160453160488_))))
    (define gx#core-compile-top-call%
      (lambda (_stx160408_)
        (let* ((_e160409160419_ _stx160408_)
               (_E160411160423_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160409160419_)))
               (_E160410160447_
                (lambda ()
                  (if (gx#stx-pair? _e160409160419_)
                      (let ((_e160412160427_ (gx#syntax-e _e160409160419_)))
                        (let ((_hd160413160430_ (##car _e160412160427_))
                              (_tl160414160432_ (##cdr _e160412160427_)))
                          (if (gx#stx-pair? _tl160414160432_)
                              (let ((_e160415160435_
                                     (gx#syntax-e _tl160414160432_)))
                                (let ((_hd160416160438_
                                       (##car _e160415160435_))
                                      (_tl160417160440_
                                       (##cdr _e160415160435_)))
                                  (let* ((_rator160443_ _hd160416160438_)
                                         (_args160445_ _tl160417160440_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator160443_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args160445_)))
                                        (_E160411160423_)))))
                              (_E160411160423_))))
                      (_E160411160423_)))))
          (_E160410160447_))))
    (define gx#core-compile-top-if%
      (lambda (_stx160341_)
        (let* ((_e160342160358_ _stx160341_)
               (_E160344160362_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160342160358_)))
               (_E160343160404_
                (lambda ()
                  (if (gx#stx-pair? _e160342160358_)
                      (let ((_e160345160366_ (gx#syntax-e _e160342160358_)))
                        (let ((_hd160346160369_ (##car _e160345160366_))
                              (_tl160347160371_ (##cdr _e160345160366_)))
                          (if (gx#stx-pair? _tl160347160371_)
                              (let ((_e160348160374_
                                     (gx#syntax-e _tl160347160371_)))
                                (let ((_hd160349160377_
                                       (##car _e160348160374_))
                                      (_tl160350160379_
                                       (##cdr _e160348160374_)))
                                  (let ((_test160382_ _hd160349160377_))
                                    (if (gx#stx-pair? _tl160350160379_)
                                        (let ((_e160351160384_
                                               (gx#syntax-e _tl160350160379_)))
                                          (let ((_hd160352160387_
                                                 (##car _e160351160384_))
                                                (_tl160353160389_
                                                 (##cdr _e160351160384_)))
                                            (let ((_K160392_ _hd160352160387_))
                                              (if (gx#stx-pair?
                                                   _tl160353160389_)
                                                  (let ((_e160354160394_
                                                         (gx#syntax-e
                                                          _tl160353160389_)))
                                                    (let ((_hd160355160397_
                                                           (##car _e160354160394_))
                                                          (_tl160356160399_
                                                           (##cdr _e160354160394_)))
                                                      (let ((_E160402_
                                                             _hd160355160397_))
                                                        (if (gx#stx-null?
                                                             _tl160356160399_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test160382_)
                                    (cons (gx#core-compile-top-syntax
                                           _K160392_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E160402_)
                                                '()))))
                        (_E160344160362_))
                    (_E160344160362_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E160344160362_)))))
                                        (_E160344160362_)))))
                              (_E160344160362_))))
                      (_E160344160362_)))))
          (_E160343160404_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx160300_)
        (let* ((_e160301160311_ _stx160300_)
               (_E160303160315_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160301160311_)))
               (_E160302160337_
                (lambda ()
                  (if (gx#stx-pair? _e160301160311_)
                      (let ((_e160304160319_ (gx#syntax-e _e160301160311_)))
                        (let ((_hd160305160322_ (##car _e160304160319_))
                              (_tl160306160324_ (##cdr _e160304160319_)))
                          (if (gx#stx-pair? _tl160306160324_)
                              (let ((_e160307160327_
                                     (gx#syntax-e _tl160306160324_)))
                                (let ((_hd160308160330_
                                       (##car _e160307160327_))
                                      (_tl160309160332_
                                       (##cdr _e160307160327_)))
                                  (let ((_id160335_ _hd160308160330_))
                                    (if (gx#stx-null? _tl160309160332_)
                                        (if (gx#identifier? _id160335_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id160335_)
                                                        '()))
                                            (_E160303160315_))
                                        (_E160303160315_)))))
                              (_E160303160315_))))
                      (_E160303160315_)))))
          (_E160302160337_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx160246_)
        (let* ((_e160247160260_ _stx160246_)
               (_E160249160264_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160247160260_)))
               (_E160248160296_
                (lambda ()
                  (if (gx#stx-pair? _e160247160260_)
                      (let ((_e160250160268_ (gx#syntax-e _e160247160260_)))
                        (let ((_hd160251160271_ (##car _e160250160268_))
                              (_tl160252160273_ (##cdr _e160250160268_)))
                          (if (gx#stx-pair? _tl160252160273_)
                              (let ((_e160253160276_
                                     (gx#syntax-e _tl160252160273_)))
                                (let ((_hd160254160279_
                                       (##car _e160253160276_))
                                      (_tl160255160281_
                                       (##cdr _e160253160276_)))
                                  (let ((_id160284_ _hd160254160279_))
                                    (if (gx#stx-pair? _tl160255160281_)
                                        (let ((_e160256160286_
                                               (gx#syntax-e _tl160255160281_)))
                                          (let ((_hd160257160289_
                                                 (##car _e160256160286_))
                                                (_tl160258160291_
                                                 (##cdr _e160256160286_)))
                                            (let ((_expr160294_
                                                   _hd160257160289_))
                                              (if (gx#stx-null?
                                                   _tl160258160291_)
                                                  (if (gx#identifier?
                                                       _id160284_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id160284_)
                          (cons (gx#core-compile-top-syntax _expr160294_)
                                '())))
              (_E160249160264_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E160249160264_)))))
                                        (_E160249160264_)))))
                              (_E160249160264_))))
                      (_E160249160264_)))))
          (_E160248160296_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id160241_)
        (let ((_$e160243_ (gx#resolve-identifier__0 _id160241_)))
          (if _$e160243_
              (##unchecked-structure-ref _$e160243_ '1 gx#binding::t '#f)
              _id160241_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd160239_)
        (if (gx#identifier? _hd160239_)
            (gx#core-compile-top-runtime-ref _hd160239_)
            '#f)))))
