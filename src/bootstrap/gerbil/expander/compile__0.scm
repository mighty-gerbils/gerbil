(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1710488240)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx94428_)
        (let* ((_e9442994436_ _stx94428_)
               (_E9443194440_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9442994436_)))
               (_E9443094454_
                (lambda ()
                  (if (gx#stx-pair? _e9442994436_)
                      (let ((_e9443294444_ (gx#syntax-e _e9442994436_)))
                        (let ((_hd9443394447_ (##car _e9443294444_))
                              (_tl9443494449_ (##cdr _e9443294444_)))
                          (let ((_form94452_ _hd9443394447_))
                            (if '#t
                                (let* ((__self94457
                                        (gx#syntax-local-e__0 _form94452_))
                                       (__method94458
                                        (method-ref
                                         __self94457
                                         'compile-top-syntax)))
                                  (if __method94458
                                      (__method94458 __self94457 _stx94428_)
                                      (error '"Missing method"
                                             __self94457
                                             'compile-top-syntax)))
                                (_E9443194440_)))))
                      (_E9443194440_)))))
          (_E9443094454_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self94388_ _stx94389_)
        (let* ((_self9439094398_ _self94388_)
               (_E9439294402_
                (lambda () (error '"No clause matching" _self9439094398_)))
               (_K9439394414_
                (lambda (_K94405_)
                  (let ((_$e94407_ (gx#stx-source _stx94389_)))
                    (if _$e94407_
                        ((lambda (_g9440994411_)
                           (gx#stx-wrap-source
                            (_K94405_ _stx94389_)
                            _g9440994411_))
                         _$e94407_)
                        (_K94405_ _stx94389_))))))
          (if (##structure-instance-of? _self9439094398_ 'gx#core-expander::t)
              (let* ((_e9439494417_
                      (##unchecked-structure-ref
                       _self9439094398_
                       '1
                       gx#expander::t
                       '#f))
                     (_e9439594420_
                      (##unchecked-structure-ref
                       _self9439094398_
                       '2
                       gx#core-expander::t
                       '#f))
                     (_e9439694423_
                      (##unchecked-structure-ref
                       _self9439094398_
                       '3
                       gx#core-expander::t
                       '#f))
                     (_K94426_ _e9439694423_))
                (_K9439394414_ _K94426_))
              (_E9439294402_)))))
    (bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx94262_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx94262_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx94232_)
        (let* ((_e9423394240_ _stx94232_)
               (_E9423594244_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9423394240_)))
               (_E9423494258_
                (lambda ()
                  (if (gx#stx-pair? _e9423394240_)
                      (let ((_e9423694248_ (gx#syntax-e _e9423394240_)))
                        (let ((_hd9423794251_ (##car _e9423694248_))
                              (_tl9423894253_ (##cdr _e9423694248_)))
                          (let ((_body94256_ _tl9423894253_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body94256_))
                                (_E9423594244_)))))
                      (_E9423594244_)))))
          (_E9423494258_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx94201_)
        (let* ((_e9420294209_ _stx94201_)
               (_E9420494213_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9420294209_)))
               (_E9420394228_
                (lambda ()
                  (if (gx#stx-pair? _e9420294209_)
                      (let ((_e9420594217_ (gx#syntax-e _e9420294209_)))
                        (let ((_hd9420694220_ (##car _e9420594217_))
                              (_tl9420794222_ (##cdr _e9420594217_)))
                          (let ((_body94225_ _tl9420794222_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body94225_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E9420494213_)))))
                      (_E9420494213_)))))
          (_E9420394228_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_stx94171_)
        (let* ((_e9417294179_ _stx94171_)
               (_E9417494183_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9417294179_)))
               (_E9417394197_
                (lambda ()
                  (if (gx#stx-pair? _e9417294179_)
                      (let ((_e9417594187_ (gx#syntax-e _e9417294179_)))
                        (let ((_hd9417694190_ (##car _e9417594187_))
                              (_tl9417794192_ (##cdr _e9417594187_)))
                          (let ((_body94195_ _tl9417794192_))
                            (if '#t
                                (cons '%#begin-foreign _body94195_)
                                (_E9417494183_)))))
                      (_E9417494183_)))))
          (_E9417394197_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_stx94117_)
        (let* ((_e9411894131_ _stx94117_)
               (_E9412094135_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9411894131_)))
               (_E9411994167_
                (lambda ()
                  (if (gx#stx-pair? _e9411894131_)
                      (let ((_e9412194139_ (gx#syntax-e _e9411894131_)))
                        (let ((_hd9412294142_ (##car _e9412194139_))
                              (_tl9412394144_ (##cdr _e9412194139_)))
                          (if (gx#stx-pair? _tl9412394144_)
                              (let ((_e9412494147_
                                     (gx#syntax-e _tl9412394144_)))
                                (let ((_hd9412594150_ (##car _e9412494147_))
                                      (_tl9412694152_ (##cdr _e9412494147_)))
                                  (let ((_ann94155_ _hd9412594150_))
                                    (if (gx#stx-pair? _tl9412694152_)
                                        (let ((_e9412794157_
                                               (gx#syntax-e _tl9412694152_)))
                                          (let ((_hd9412894160_
                                                 (##car _e9412794157_))
                                                (_tl9412994162_
                                                 (##cdr _e9412794157_)))
                                            (let ((_expr94165_ _hd9412894160_))
                                              (if (gx#stx-null? _tl9412994162_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr94165_)
                                                      (_E9412094135_))
                                                  (_E9412094135_)))))
                                        (_E9412094135_)))))
                              (_E9412094135_))))
                      (_E9412094135_)))))
          (_E9411994167_))))
    (define gx#core-compile-top-import%
      (lambda (_stx94087_)
        (let* ((_e9408894095_ _stx94087_)
               (_E9409094099_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9408894095_)))
               (_E9408994113_
                (lambda ()
                  (if (gx#stx-pair? _e9408894095_)
                      (let ((_e9409194103_ (gx#syntax-e _e9408894095_)))
                        (let ((_hd9409294106_ (##car _e9409194103_))
                              (_tl9409394108_ (##cdr _e9409194103_)))
                          (let ((_body94111_ _tl9409394108_))
                            (if '#t
                                (cons '%#import _body94111_)
                                (_E9409094099_)))))
                      (_E9409094099_)))))
          (_E9408994113_))))
    (define gx#core-compile-top-module%
      (lambda (_stx94044_)
        (let* ((_e9404594055_ _stx94044_)
               (_E9404794059_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9404594055_)))
               (_E9404694083_
                (lambda ()
                  (if (gx#stx-pair? _e9404594055_)
                      (let ((_e9404894063_ (gx#syntax-e _e9404594055_)))
                        (let ((_hd9404994066_ (##car _e9404894063_))
                              (_tl9405094068_ (##cdr _e9404894063_)))
                          (if (gx#stx-pair? _tl9405094068_)
                              (let ((_e9405194071_
                                     (gx#syntax-e _tl9405094068_)))
                                (let ((_hd9405294074_ (##car _e9405194071_))
                                      (_tl9405394076_ (##cdr _e9405194071_)))
                                  (let* ((_hd94079_ _hd9405294074_)
                                         (_body94081_ _tl9405394076_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _hd94079_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body94081_)))
                                        (_E9404794059_)))))
                              (_E9404794059_))))
                      (_E9404794059_)))))
          (_E9404694083_))))
    (define gx#core-compile-top-export%
      (lambda (_stx94014_)
        (let* ((_e9401594022_ _stx94014_)
               (_E9401794026_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9401594022_)))
               (_E9401694040_
                (lambda ()
                  (if (gx#stx-pair? _e9401594022_)
                      (let ((_e9401894030_ (gx#syntax-e _e9401594022_)))
                        (let ((_hd9401994033_ (##car _e9401894030_))
                              (_tl9402094035_ (##cdr _e9401894030_)))
                          (let ((_body94038_ _tl9402094035_))
                            (if '#t
                                (cons '%#export _body94038_)
                                (_E9401794026_)))))
                      (_E9401794026_)))))
          (_E9401694040_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx93984_)
        (let* ((_e9398593992_ _stx93984_)
               (_E9398793996_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9398593992_)))
               (_E9398694010_
                (lambda ()
                  (if (gx#stx-pair? _e9398593992_)
                      (let ((_e9398894000_ (gx#syntax-e _e9398593992_)))
                        (let ((_hd9398994003_ (##car _e9398894000_))
                              (_tl9399094005_ (##cdr _e9398894000_)))
                          (let ((_body94008_ _tl9399094005_))
                            (if '#t
                                (cons '%#provide _body94008_)
                                (_E9398793996_)))))
                      (_E9398793996_)))))
          (_E9398694010_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx93954_)
        (let* ((_e9395593962_ _stx93954_)
               (_E9395793966_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9395593962_)))
               (_E9395693980_
                (lambda ()
                  (if (gx#stx-pair? _e9395593962_)
                      (let ((_e9395893970_ (gx#syntax-e _e9395593962_)))
                        (let ((_hd9395993973_ (##car _e9395893970_))
                              (_tl9396093975_ (##cdr _e9395893970_)))
                          (let ((_body93978_ _tl9396093975_))
                            (if '#t
                                (cons '%#extern _body93978_)
                                (_E9395793966_)))))
                      (_E9395793966_)))))
          (_E9395693980_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx93900_)
        (let* ((_e9390193914_ _stx93900_)
               (_E9390393918_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9390193914_)))
               (_E9390293950_
                (lambda ()
                  (if (gx#stx-pair? _e9390193914_)
                      (let ((_e9390493922_ (gx#syntax-e _e9390193914_)))
                        (let ((_hd9390593925_ (##car _e9390493922_))
                              (_tl9390693927_ (##cdr _e9390493922_)))
                          (if (gx#stx-pair? _tl9390693927_)
                              (let ((_e9390793930_
                                     (gx#syntax-e _tl9390693927_)))
                                (let ((_hd9390893933_ (##car _e9390793930_))
                                      (_tl9390993935_ (##cdr _e9390793930_)))
                                  (let ((_hd93938_ _hd9390893933_))
                                    (if (gx#stx-pair? _tl9390993935_)
                                        (let ((_e9391093940_
                                               (gx#syntax-e _tl9390993935_)))
                                          (let ((_hd9391193943_
                                                 (##car _e9391093940_))
                                                (_tl9391293945_
                                                 (##cdr _e9391093940_)))
                                            (let ((_expr93948_ _hd9391193943_))
                                              (if (gx#stx-null? _tl9391293945_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd93938_)
                          (cons (gx#core-compile-top-syntax _expr93948_) '())))
              (_E9390393918_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9390393918_)))))
                                        (_E9390393918_)))))
                              (_E9390393918_))))
                      (_E9390393918_)))))
          (_E9390293950_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx93845_)
        (let* ((_e9384693859_ _stx93845_)
               (_E9384893863_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9384693859_)))
               (_E9384793896_
                (lambda ()
                  (if (gx#stx-pair? _e9384693859_)
                      (let ((_e9384993867_ (gx#syntax-e _e9384693859_)))
                        (let ((_hd9385093870_ (##car _e9384993867_))
                              (_tl9385193872_ (##cdr _e9384993867_)))
                          (if (gx#stx-pair? _tl9385193872_)
                              (let ((_e9385293875_
                                     (gx#syntax-e _tl9385193872_)))
                                (let ((_hd9385393878_ (##car _e9385293875_))
                                      (_tl9385493880_ (##cdr _e9385293875_)))
                                  (let ((_hd93883_ _hd9385393878_))
                                    (if (gx#stx-pair? _tl9385493880_)
                                        (let ((_e9385593885_
                                               (gx#syntax-e _tl9385493880_)))
                                          (let ((_hd9385693888_
                                                 (##car _e9385593885_))
                                                (_tl9385793890_
                                                 (##cdr _e9385593885_)))
                                            (let ((_expr93893_ _hd9385693888_))
                                              (if (gx#stx-null? _tl9385793890_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd93883_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr93893_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E9384893863_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9384893863_)))))
                                        (_E9384893863_)))))
                              (_E9384893863_))))
                      (_E9384893863_)))))
          (_E9384793896_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx93815_)
        (let* ((_e9381693823_ _stx93815_)
               (_E9381893827_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9381693823_)))
               (_E9381793841_
                (lambda ()
                  (if (gx#stx-pair? _e9381693823_)
                      (let ((_e9381993831_ (gx#syntax-e _e9381693823_)))
                        (let ((_hd9382093834_ (##car _e9381993831_))
                              (_tl9382193836_ (##cdr _e9381993831_)))
                          (let ((_body93839_ _tl9382193836_))
                            (if '#t
                                (cons '%#define-alias _body93839_)
                                (_E9381893827_)))))
                      (_E9381893827_)))))
          (_E9381793841_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx93785_)
        (let* ((_e9378693793_ _stx93785_)
               (_E9378893797_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9378693793_)))
               (_E9378793811_
                (lambda ()
                  (if (gx#stx-pair? _e9378693793_)
                      (let ((_e9378993801_ (gx#syntax-e _e9378693793_)))
                        (let ((_hd9379093804_ (##car _e9378993801_))
                              (_tl9379193806_ (##cdr _e9378993801_)))
                          (let ((_body93809_ _tl9379193806_))
                            (if '#t
                                (cons '%#define-runtime _body93809_)
                                (_E9378893797_)))))
                      (_E9378893797_)))))
          (_E9378793811_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx93755_)
        (let* ((_e9375693763_ _stx93755_)
               (_E9375893767_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9375693763_)))
               (_E9375793781_
                (lambda ()
                  (if (gx#stx-pair? _e9375693763_)
                      (let ((_e9375993771_ (gx#syntax-e _e9375693763_)))
                        (let ((_hd9376093774_ (##car _e9375993771_))
                              (_tl9376193776_ (##cdr _e9375993771_)))
                          (let ((_decls93779_ _tl9376193776_))
                            (if '#t
                                (cons '%#declare _decls93779_)
                                (_E9375893767_)))))
                      (_E9375893767_)))))
          (_E9375793781_))))
    (define gx#core-compile-top-lambda%
      (lambda (_stx93725_)
        (let* ((_e9372693733_ _stx93725_)
               (_E9372893737_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9372693733_)))
               (_E9372793751_
                (lambda ()
                  (if (gx#stx-pair? _e9372693733_)
                      (let ((_e9372993741_ (gx#syntax-e _e9372693733_)))
                        (let ((_hd9373093744_ (##car _e9372993741_))
                              (_tl9373193746_ (##cdr _e9372993741_)))
                          (let ((_clause93749_ _tl9373193746_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause93749_))
                                (_E9372893737_)))))
                      (_E9372893737_)))))
          (_E9372793751_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx93682_)
        (let* ((_e9368393693_ _stx93682_)
               (_E9368593697_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9368393693_)))
               (_E9368493721_
                (lambda ()
                  (if (gx#stx-pair? _e9368393693_)
                      (let ((_e9368693701_ (gx#syntax-e _e9368393693_)))
                        (let ((_hd9368793704_ (##car _e9368693701_))
                              (_tl9368893706_ (##cdr _e9368693701_)))
                          (let ((_hd93709_ _hd9368793704_))
                            (if (gx#stx-pair? _tl9368893706_)
                                (let ((_e9368993711_
                                       (gx#syntax-e _tl9368893706_)))
                                  (let ((_hd9369093714_ (##car _e9368993711_))
                                        (_tl9369193716_ (##cdr _e9368993711_)))
                                    (let ((_body93719_ _hd9369093714_))
                                      (if (gx#stx-null? _tl9369193716_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd93709_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body93719_)
                                                          '()))
                                              (_E9368593697_))
                                          (_E9368593697_)))))
                                (_E9368593697_)))))
                      (_E9368593697_)))))
          (_E9368493721_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx93652_)
        (let* ((_e9365393660_ _stx93652_)
               (_E9365593664_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9365393660_)))
               (_E9365493678_
                (lambda ()
                  (if (gx#stx-pair? _e9365393660_)
                      (let ((_e9365693668_ (gx#syntax-e _e9365393660_)))
                        (let ((_hd9365793671_ (##car _e9365693668_))
                              (_tl9365893673_ (##cdr _e9365693668_)))
                          (let ((_clauses93676_ _tl9365893673_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses93676_))
                                (_E9365593664_)))))
                      (_E9365593664_)))))
          (_E9365493678_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx93587_ _form93588_)
        (let* ((_e9358993602_ _stx93587_)
               (_E9359193606_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9358993602_)))
               (_E9359093638_
                (lambda ()
                  (if (gx#stx-pair? _e9358993602_)
                      (let ((_e9359293610_ (gx#syntax-e _e9358993602_)))
                        (let ((_hd9359393613_ (##car _e9359293610_))
                              (_tl9359493615_ (##cdr _e9359293610_)))
                          (if (gx#stx-pair? _tl9359493615_)
                              (let ((_e9359593618_
                                     (gx#syntax-e _tl9359493615_)))
                                (let ((_hd9359693621_ (##car _e9359593618_))
                                      (_tl9359793623_ (##cdr _e9359593618_)))
                                  (let ((_hd93626_ _hd9359693621_))
                                    (if (gx#stx-pair? _tl9359793623_)
                                        (let ((_e9359893628_
                                               (gx#syntax-e _tl9359793623_)))
                                          (let ((_hd9359993631_
                                                 (##car _e9359893628_))
                                                (_tl9360093633_
                                                 (##cdr _e9359893628_)))
                                            (let ((_body93636_ _hd9359993631_))
                                              (if (gx#stx-null? _tl9360093633_)
                                                  (if '#t
                                                      (cons _form93588_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd93626_)
                          (cons (gx#core-compile-top-syntax _body93636_) '())))
              (_E9359193606_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9359193606_)))))
                                        (_E9359193606_)))))
                              (_E9359193606_))))
                      (_E9359193606_)))))
          (_E9359093638_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx93645_)
        (let ((_form93647_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx93645_ _form93647_))))
    (define gx#core-compile-top-let-values%
      (lambda _g94460_
        (let ((_g94459_ (##length _g94460_)))
          (cond ((##fx= _g94459_ 1)
                 (apply (lambda (_stx93645_)
                          (gx#core-compile-top-let-values%__0 _stx93645_))
                        _g94460_))
                ((##fx= _g94459_ 2)
                 (apply (lambda (_stx93649_ _form93650_)
                          (gx#core-compile-top-let-values%__%
                           _stx93649_
                           _form93650_))
                        _g94460_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g94460_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx93584_)
        (gx#core-compile-top-let-values%__% _stx93584_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx93582_)
        (gx#core-compile-top-let-values%__% _stx93582_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx93541_)
        (let* ((_e9354293552_ _stx93541_)
               (_E9354493556_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9354293552_)))
               (_E9354393578_
                (lambda ()
                  (if (gx#stx-pair? _e9354293552_)
                      (let ((_e9354593560_ (gx#syntax-e _e9354293552_)))
                        (let ((_hd9354693563_ (##car _e9354593560_))
                              (_tl9354793565_ (##cdr _e9354593560_)))
                          (if (gx#stx-pair? _tl9354793565_)
                              (let ((_e9354893568_
                                     (gx#syntax-e _tl9354793565_)))
                                (let ((_hd9354993571_ (##car _e9354893568_))
                                      (_tl9355093573_ (##cdr _e9354893568_)))
                                  (let ((_e93576_ _hd9354993571_))
                                    (if (gx#stx-null? _tl9355093573_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e93576_)
                                                        '()))
                                            (_E9354493556_))
                                        (_E9354493556_)))))
                              (_E9354493556_))))
                      (_E9354493556_)))))
          (_E9354393578_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx93500_)
        (let* ((_e9350193511_ _stx93500_)
               (_E9350393515_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9350193511_)))
               (_E9350293537_
                (lambda ()
                  (if (gx#stx-pair? _e9350193511_)
                      (let ((_e9350493519_ (gx#syntax-e _e9350193511_)))
                        (let ((_hd9350593522_ (##car _e9350493519_))
                              (_tl9350693524_ (##cdr _e9350493519_)))
                          (if (gx#stx-pair? _tl9350693524_)
                              (let ((_e9350793527_
                                     (gx#syntax-e _tl9350693524_)))
                                (let ((_hd9350893530_ (##car _e9350793527_))
                                      (_tl9350993532_ (##cdr _e9350793527_)))
                                  (let ((_e93535_ _hd9350893530_))
                                    (if (gx#stx-null? _tl9350993532_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e93535_)
                                                        '()))
                                            (_E9350393515_))
                                        (_E9350393515_)))))
                              (_E9350393515_))))
                      (_E9350393515_)))))
          (_E9350293537_))))
    (define gx#core-compile-top-call%
      (lambda (_stx93457_)
        (let* ((_e9345893468_ _stx93457_)
               (_E9346093472_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9345893468_)))
               (_E9345993496_
                (lambda ()
                  (if (gx#stx-pair? _e9345893468_)
                      (let ((_e9346193476_ (gx#syntax-e _e9345893468_)))
                        (let ((_hd9346293479_ (##car _e9346193476_))
                              (_tl9346393481_ (##cdr _e9346193476_)))
                          (if (gx#stx-pair? _tl9346393481_)
                              (let ((_e9346493484_
                                     (gx#syntax-e _tl9346393481_)))
                                (let ((_hd9346593487_ (##car _e9346493484_))
                                      (_tl9346693489_ (##cdr _e9346493484_)))
                                  (let* ((_rator93492_ _hd9346593487_)
                                         (_args93494_ _tl9346693489_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator93492_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args93494_)))
                                        (_E9346093472_)))))
                              (_E9346093472_))))
                      (_E9346093472_)))))
          (_E9345993496_))))
    (define gx#core-compile-top-if%
      (lambda (_stx93390_)
        (let* ((_e9339193407_ _stx93390_)
               (_E9339393411_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9339193407_)))
               (_E9339293453_
                (lambda ()
                  (if (gx#stx-pair? _e9339193407_)
                      (let ((_e9339493415_ (gx#syntax-e _e9339193407_)))
                        (let ((_hd9339593418_ (##car _e9339493415_))
                              (_tl9339693420_ (##cdr _e9339493415_)))
                          (if (gx#stx-pair? _tl9339693420_)
                              (let ((_e9339793423_
                                     (gx#syntax-e _tl9339693420_)))
                                (let ((_hd9339893426_ (##car _e9339793423_))
                                      (_tl9339993428_ (##cdr _e9339793423_)))
                                  (let ((_test93431_ _hd9339893426_))
                                    (if (gx#stx-pair? _tl9339993428_)
                                        (let ((_e9340093433_
                                               (gx#syntax-e _tl9339993428_)))
                                          (let ((_hd9340193436_
                                                 (##car _e9340093433_))
                                                (_tl9340293438_
                                                 (##cdr _e9340093433_)))
                                            (let ((_K93441_ _hd9340193436_))
                                              (if (gx#stx-pair? _tl9340293438_)
                                                  (let ((_e9340393443_
                                                         (gx#syntax-e
                                                          _tl9340293438_)))
                                                    (let ((_hd9340493446_
                                                           (##car _e9340393443_))
                                                          (_tl9340593448_
                                                           (##cdr _e9340393443_)))
                                                      (let ((_E93451_
                                                             _hd9340493446_))
                                                        (if (gx#stx-null?
                                                             _tl9340593448_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test93431_)
                                    (cons (gx#core-compile-top-syntax _K93441_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E93451_)
                                                '()))))
                        (_E9339393411_))
                    (_E9339393411_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9339393411_)))))
                                        (_E9339393411_)))))
                              (_E9339393411_))))
                      (_E9339393411_)))))
          (_E9339293453_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx93349_)
        (let* ((_e9335093360_ _stx93349_)
               (_E9335293364_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9335093360_)))
               (_E9335193386_
                (lambda ()
                  (if (gx#stx-pair? _e9335093360_)
                      (let ((_e9335393368_ (gx#syntax-e _e9335093360_)))
                        (let ((_hd9335493371_ (##car _e9335393368_))
                              (_tl9335593373_ (##cdr _e9335393368_)))
                          (if (gx#stx-pair? _tl9335593373_)
                              (let ((_e9335693376_
                                     (gx#syntax-e _tl9335593373_)))
                                (let ((_hd9335793379_ (##car _e9335693376_))
                                      (_tl9335893381_ (##cdr _e9335693376_)))
                                  (let ((_id93384_ _hd9335793379_))
                                    (if (gx#stx-null? _tl9335893381_)
                                        (if (gx#identifier? _id93384_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id93384_)
                                                        '()))
                                            (_E9335293364_))
                                        (_E9335293364_)))))
                              (_E9335293364_))))
                      (_E9335293364_)))))
          (_E9335193386_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx93295_)
        (let* ((_e9329693309_ _stx93295_)
               (_E9329893313_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9329693309_)))
               (_E9329793345_
                (lambda ()
                  (if (gx#stx-pair? _e9329693309_)
                      (let ((_e9329993317_ (gx#syntax-e _e9329693309_)))
                        (let ((_hd9330093320_ (##car _e9329993317_))
                              (_tl9330193322_ (##cdr _e9329993317_)))
                          (if (gx#stx-pair? _tl9330193322_)
                              (let ((_e9330293325_
                                     (gx#syntax-e _tl9330193322_)))
                                (let ((_hd9330393328_ (##car _e9330293325_))
                                      (_tl9330493330_ (##cdr _e9330293325_)))
                                  (let ((_id93333_ _hd9330393328_))
                                    (if (gx#stx-pair? _tl9330493330_)
                                        (let ((_e9330593335_
                                               (gx#syntax-e _tl9330493330_)))
                                          (let ((_hd9330693338_
                                                 (##car _e9330593335_))
                                                (_tl9330793340_
                                                 (##cdr _e9330593335_)))
                                            (let ((_expr93343_ _hd9330693338_))
                                              (if (gx#stx-null? _tl9330793340_)
                                                  (if (gx#identifier?
                                                       _id93333_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id93333_)
                          (cons (gx#core-compile-top-syntax _expr93343_) '())))
              (_E9329893313_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9329893313_)))))
                                        (_E9329893313_)))))
                              (_E9329893313_))))
                      (_E9329893313_)))))
          (_E9329793345_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id93290_)
        (let ((_$e93292_ (gx#resolve-identifier__0 _id93290_)))
          (if _$e93292_
              (##unchecked-structure-ref _$e93292_ '1 gx#binding::t '#f)
              _id93290_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd93288_)
        (if (gx#identifier? _hd93288_)
            (gx#core-compile-top-runtime-ref _hd93288_)
            '#f)))))
