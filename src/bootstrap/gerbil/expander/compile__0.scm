(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1708202848)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx166257_)
        (let* ((_e166258166265_ _stx166257_)
               (_E166260166269_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166258166265_)))
               (_E166259166283_
                (lambda ()
                  (if (gx#stx-pair? _e166258166265_)
                      (let ((_e166261166273_ (gx#syntax-e _e166258166265_)))
                        (let ((_hd166262166276_ (##car _e166261166273_))
                              (_tl166263166278_ (##cdr _e166261166273_)))
                          (let ((_form166281_ _hd166262166276_))
                            (if '#t
                                (let* ((__self170353
                                        (gx#syntax-local-e__0 _form166281_))
                                       (__method170354
                                        (method-ref
                                         __self170353
                                         'compile-top-syntax)))
                                  (if __method170354
                                      (__method170354 __self170353 _stx166257_)
                                      (error '"Missing method"
                                             __self170353
                                             'compile-top-syntax)))
                                (_E166260166269_)))))
                      (_E166260166269_)))))
          (_E166259166283_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self166217_ _stx166218_)
        (let* ((_self166219166227_ _self166217_)
               (_E166221166231_
                (lambda () (error '"No clause matching" _self166219166227_)))
               (_K166222166243_
                (lambda (_K166234_)
                  (let ((_$e166236_ (gx#stx-source _stx166218_)))
                    (if _$e166236_
                        ((lambda (_g166238166240_)
                           (gx#stx-wrap-source
                            (_K166234_ _stx166218_)
                            _g166238166240_))
                         _$e166236_)
                        (_K166234_ _stx166218_))))))
          (if (##structure-instance-of?
               _self166219166227_
               'gx#core-expander::t)
              (let* ((_e166223166246_
                      (##unchecked-structure-ref
                       _self166219166227_
                       '1
                       gx#expander::t
                       '#f))
                     (_e166224166249_
                      (##unchecked-structure-ref
                       _self166219166227_
                       '2
                       gx#core-expander::t
                       '#f))
                     (_e166225166252_
                      (##unchecked-structure-ref
                       _self166219166227_
                       '3
                       gx#core-expander::t
                       '#f))
                     (_K166255_ _e166225166252_))
                (_K166222166243_ _K166255_))
              (_E166221166231_)))))
    (bind-method!
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx166091_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx166091_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx166061_)
        (let* ((_e166062166069_ _stx166061_)
               (_E166064166073_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166062166069_)))
               (_E166063166087_
                (lambda ()
                  (if (gx#stx-pair? _e166062166069_)
                      (let ((_e166065166077_ (gx#syntax-e _e166062166069_)))
                        (let ((_hd166066166080_ (##car _e166065166077_))
                              (_tl166067166082_ (##cdr _e166065166077_)))
                          (let ((_body166085_ _tl166067166082_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body166085_))
                                (_E166064166073_)))))
                      (_E166064166073_)))))
          (_E166063166087_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx166030_)
        (let* ((_e166031166038_ _stx166030_)
               (_E166033166042_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166031166038_)))
               (_E166032166057_
                (lambda ()
                  (if (gx#stx-pair? _e166031166038_)
                      (let ((_e166034166046_ (gx#syntax-e _e166031166038_)))
                        (let ((_hd166035166049_ (##car _e166034166046_))
                              (_tl166036166051_ (##cdr _e166034166046_)))
                          (let ((_body166054_ _tl166036166051_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body166054_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E166033166042_)))))
                      (_E166033166042_)))))
          (_E166032166057_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_stx166000_)
        (let* ((_e166001166008_ _stx166000_)
               (_E166003166012_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166001166008_)))
               (_E166002166026_
                (lambda ()
                  (if (gx#stx-pair? _e166001166008_)
                      (let ((_e166004166016_ (gx#syntax-e _e166001166008_)))
                        (let ((_hd166005166019_ (##car _e166004166016_))
                              (_tl166006166021_ (##cdr _e166004166016_)))
                          (let ((_body166024_ _tl166006166021_))
                            (if '#t
                                (cons '%#begin-foreign _body166024_)
                                (_E166003166012_)))))
                      (_E166003166012_)))))
          (_E166002166026_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_stx165946_)
        (let* ((_e165947165960_ _stx165946_)
               (_E165949165964_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165947165960_)))
               (_E165948165996_
                (lambda ()
                  (if (gx#stx-pair? _e165947165960_)
                      (let ((_e165950165968_ (gx#syntax-e _e165947165960_)))
                        (let ((_hd165951165971_ (##car _e165950165968_))
                              (_tl165952165973_ (##cdr _e165950165968_)))
                          (if (gx#stx-pair? _tl165952165973_)
                              (let ((_e165953165976_
                                     (gx#syntax-e _tl165952165973_)))
                                (let ((_hd165954165979_
                                       (##car _e165953165976_))
                                      (_tl165955165981_
                                       (##cdr _e165953165976_)))
                                  (let ((_ann165984_ _hd165954165979_))
                                    (if (gx#stx-pair? _tl165955165981_)
                                        (let ((_e165956165986_
                                               (gx#syntax-e _tl165955165981_)))
                                          (let ((_hd165957165989_
                                                 (##car _e165956165986_))
                                                (_tl165958165991_
                                                 (##cdr _e165956165986_)))
                                            (let ((_expr165994_
                                                   _hd165957165989_))
                                              (if (gx#stx-null?
                                                   _tl165958165991_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr165994_)
                                                      (_E165949165964_))
                                                  (_E165949165964_)))))
                                        (_E165949165964_)))))
                              (_E165949165964_))))
                      (_E165949165964_)))))
          (_E165948165996_))))
    (define gx#core-compile-top-import%
      (lambda (_stx165916_)
        (let* ((_e165917165924_ _stx165916_)
               (_E165919165928_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165917165924_)))
               (_E165918165942_
                (lambda ()
                  (if (gx#stx-pair? _e165917165924_)
                      (let ((_e165920165932_ (gx#syntax-e _e165917165924_)))
                        (let ((_hd165921165935_ (##car _e165920165932_))
                              (_tl165922165937_ (##cdr _e165920165932_)))
                          (let ((_body165940_ _tl165922165937_))
                            (if '#t
                                (cons '%#import _body165940_)
                                (_E165919165928_)))))
                      (_E165919165928_)))))
          (_E165918165942_))))
    (define gx#core-compile-top-module%
      (lambda (_stx165873_)
        (let* ((_e165874165884_ _stx165873_)
               (_E165876165888_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165874165884_)))
               (_E165875165912_
                (lambda ()
                  (if (gx#stx-pair? _e165874165884_)
                      (let ((_e165877165892_ (gx#syntax-e _e165874165884_)))
                        (let ((_hd165878165895_ (##car _e165877165892_))
                              (_tl165879165897_ (##cdr _e165877165892_)))
                          (if (gx#stx-pair? _tl165879165897_)
                              (let ((_e165880165900_
                                     (gx#syntax-e _tl165879165897_)))
                                (let ((_hd165881165903_
                                       (##car _e165880165900_))
                                      (_tl165882165905_
                                       (##cdr _e165880165900_)))
                                  (let* ((_hd165908_ _hd165881165903_)
                                         (_body165910_ _tl165882165905_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _hd165908_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body165910_)))
                                        (_E165876165888_)))))
                              (_E165876165888_))))
                      (_E165876165888_)))))
          (_E165875165912_))))
    (define gx#core-compile-top-export%
      (lambda (_stx165843_)
        (let* ((_e165844165851_ _stx165843_)
               (_E165846165855_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165844165851_)))
               (_E165845165869_
                (lambda ()
                  (if (gx#stx-pair? _e165844165851_)
                      (let ((_e165847165859_ (gx#syntax-e _e165844165851_)))
                        (let ((_hd165848165862_ (##car _e165847165859_))
                              (_tl165849165864_ (##cdr _e165847165859_)))
                          (let ((_body165867_ _tl165849165864_))
                            (if '#t
                                (cons '%#export _body165867_)
                                (_E165846165855_)))))
                      (_E165846165855_)))))
          (_E165845165869_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx165813_)
        (let* ((_e165814165821_ _stx165813_)
               (_E165816165825_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165814165821_)))
               (_E165815165839_
                (lambda ()
                  (if (gx#stx-pair? _e165814165821_)
                      (let ((_e165817165829_ (gx#syntax-e _e165814165821_)))
                        (let ((_hd165818165832_ (##car _e165817165829_))
                              (_tl165819165834_ (##cdr _e165817165829_)))
                          (let ((_body165837_ _tl165819165834_))
                            (if '#t
                                (cons '%#provide _body165837_)
                                (_E165816165825_)))))
                      (_E165816165825_)))))
          (_E165815165839_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx165783_)
        (let* ((_e165784165791_ _stx165783_)
               (_E165786165795_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165784165791_)))
               (_E165785165809_
                (lambda ()
                  (if (gx#stx-pair? _e165784165791_)
                      (let ((_e165787165799_ (gx#syntax-e _e165784165791_)))
                        (let ((_hd165788165802_ (##car _e165787165799_))
                              (_tl165789165804_ (##cdr _e165787165799_)))
                          (let ((_body165807_ _tl165789165804_))
                            (if '#t
                                (cons '%#extern _body165807_)
                                (_E165786165795_)))))
                      (_E165786165795_)))))
          (_E165785165809_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx165729_)
        (let* ((_e165730165743_ _stx165729_)
               (_E165732165747_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165730165743_)))
               (_E165731165779_
                (lambda ()
                  (if (gx#stx-pair? _e165730165743_)
                      (let ((_e165733165751_ (gx#syntax-e _e165730165743_)))
                        (let ((_hd165734165754_ (##car _e165733165751_))
                              (_tl165735165756_ (##cdr _e165733165751_)))
                          (if (gx#stx-pair? _tl165735165756_)
                              (let ((_e165736165759_
                                     (gx#syntax-e _tl165735165756_)))
                                (let ((_hd165737165762_
                                       (##car _e165736165759_))
                                      (_tl165738165764_
                                       (##cdr _e165736165759_)))
                                  (let ((_hd165767_ _hd165737165762_))
                                    (if (gx#stx-pair? _tl165738165764_)
                                        (let ((_e165739165769_
                                               (gx#syntax-e _tl165738165764_)))
                                          (let ((_hd165740165772_
                                                 (##car _e165739165769_))
                                                (_tl165741165774_
                                                 (##cdr _e165739165769_)))
                                            (let ((_expr165777_
                                                   _hd165740165772_))
                                              (if (gx#stx-null?
                                                   _tl165741165774_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd165767_)
                          (cons (gx#core-compile-top-syntax _expr165777_)
                                '())))
              (_E165732165747_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E165732165747_)))))
                                        (_E165732165747_)))))
                              (_E165732165747_))))
                      (_E165732165747_)))))
          (_E165731165779_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx165674_)
        (let* ((_e165675165688_ _stx165674_)
               (_E165677165692_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165675165688_)))
               (_E165676165725_
                (lambda ()
                  (if (gx#stx-pair? _e165675165688_)
                      (let ((_e165678165696_ (gx#syntax-e _e165675165688_)))
                        (let ((_hd165679165699_ (##car _e165678165696_))
                              (_tl165680165701_ (##cdr _e165678165696_)))
                          (if (gx#stx-pair? _tl165680165701_)
                              (let ((_e165681165704_
                                     (gx#syntax-e _tl165680165701_)))
                                (let ((_hd165682165707_
                                       (##car _e165681165704_))
                                      (_tl165683165709_
                                       (##cdr _e165681165704_)))
                                  (let ((_hd165712_ _hd165682165707_))
                                    (if (gx#stx-pair? _tl165683165709_)
                                        (let ((_e165684165714_
                                               (gx#syntax-e _tl165683165709_)))
                                          (let ((_hd165685165717_
                                                 (##car _e165684165714_))
                                                (_tl165686165719_
                                                 (##cdr _e165684165714_)))
                                            (let ((_expr165722_
                                                   _hd165685165717_))
                                              (if (gx#stx-null?
                                                   _tl165686165719_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd165712_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr165722_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E165677165692_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E165677165692_)))))
                                        (_E165677165692_)))))
                              (_E165677165692_))))
                      (_E165677165692_)))))
          (_E165676165725_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx165644_)
        (let* ((_e165645165652_ _stx165644_)
               (_E165647165656_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165645165652_)))
               (_E165646165670_
                (lambda ()
                  (if (gx#stx-pair? _e165645165652_)
                      (let ((_e165648165660_ (gx#syntax-e _e165645165652_)))
                        (let ((_hd165649165663_ (##car _e165648165660_))
                              (_tl165650165665_ (##cdr _e165648165660_)))
                          (let ((_body165668_ _tl165650165665_))
                            (if '#t
                                (cons '%#define-alias _body165668_)
                                (_E165647165656_)))))
                      (_E165647165656_)))))
          (_E165646165670_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx165614_)
        (let* ((_e165615165622_ _stx165614_)
               (_E165617165626_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165615165622_)))
               (_E165616165640_
                (lambda ()
                  (if (gx#stx-pair? _e165615165622_)
                      (let ((_e165618165630_ (gx#syntax-e _e165615165622_)))
                        (let ((_hd165619165633_ (##car _e165618165630_))
                              (_tl165620165635_ (##cdr _e165618165630_)))
                          (let ((_body165638_ _tl165620165635_))
                            (if '#t
                                (cons '%#define-runtime _body165638_)
                                (_E165617165626_)))))
                      (_E165617165626_)))))
          (_E165616165640_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx165584_)
        (let* ((_e165585165592_ _stx165584_)
               (_E165587165596_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165585165592_)))
               (_E165586165610_
                (lambda ()
                  (if (gx#stx-pair? _e165585165592_)
                      (let ((_e165588165600_ (gx#syntax-e _e165585165592_)))
                        (let ((_hd165589165603_ (##car _e165588165600_))
                              (_tl165590165605_ (##cdr _e165588165600_)))
                          (let ((_decls165608_ _tl165590165605_))
                            (if '#t
                                (cons '%#declare _decls165608_)
                                (_E165587165596_)))))
                      (_E165587165596_)))))
          (_E165586165610_))))
    (define gx#core-compile-top-lambda%
      (lambda (_stx165554_)
        (let* ((_e165555165562_ _stx165554_)
               (_E165557165566_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165555165562_)))
               (_E165556165580_
                (lambda ()
                  (if (gx#stx-pair? _e165555165562_)
                      (let ((_e165558165570_ (gx#syntax-e _e165555165562_)))
                        (let ((_hd165559165573_ (##car _e165558165570_))
                              (_tl165560165575_ (##cdr _e165558165570_)))
                          (let ((_clause165578_ _tl165560165575_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause165578_))
                                (_E165557165566_)))))
                      (_E165557165566_)))))
          (_E165556165580_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx165511_)
        (let* ((_e165512165522_ _stx165511_)
               (_E165514165526_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165512165522_)))
               (_E165513165550_
                (lambda ()
                  (if (gx#stx-pair? _e165512165522_)
                      (let ((_e165515165530_ (gx#syntax-e _e165512165522_)))
                        (let ((_hd165516165533_ (##car _e165515165530_))
                              (_tl165517165535_ (##cdr _e165515165530_)))
                          (let ((_hd165538_ _hd165516165533_))
                            (if (gx#stx-pair? _tl165517165535_)
                                (let ((_e165518165540_
                                       (gx#syntax-e _tl165517165535_)))
                                  (let ((_hd165519165543_
                                         (##car _e165518165540_))
                                        (_tl165520165545_
                                         (##cdr _e165518165540_)))
                                    (let ((_body165548_ _hd165519165543_))
                                      (if (gx#stx-null? _tl165520165545_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd165538_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body165548_)
                                                          '()))
                                              (_E165514165526_))
                                          (_E165514165526_)))))
                                (_E165514165526_)))))
                      (_E165514165526_)))))
          (_E165513165550_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx165481_)
        (let* ((_e165482165489_ _stx165481_)
               (_E165484165493_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165482165489_)))
               (_E165483165507_
                (lambda ()
                  (if (gx#stx-pair? _e165482165489_)
                      (let ((_e165485165497_ (gx#syntax-e _e165482165489_)))
                        (let ((_hd165486165500_ (##car _e165485165497_))
                              (_tl165487165502_ (##cdr _e165485165497_)))
                          (let ((_clauses165505_ _tl165487165502_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses165505_))
                                (_E165484165493_)))))
                      (_E165484165493_)))))
          (_E165483165507_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx165416_ _form165417_)
        (let* ((_e165418165431_ _stx165416_)
               (_E165420165435_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165418165431_)))
               (_E165419165467_
                (lambda ()
                  (if (gx#stx-pair? _e165418165431_)
                      (let ((_e165421165439_ (gx#syntax-e _e165418165431_)))
                        (let ((_hd165422165442_ (##car _e165421165439_))
                              (_tl165423165444_ (##cdr _e165421165439_)))
                          (if (gx#stx-pair? _tl165423165444_)
                              (let ((_e165424165447_
                                     (gx#syntax-e _tl165423165444_)))
                                (let ((_hd165425165450_
                                       (##car _e165424165447_))
                                      (_tl165426165452_
                                       (##cdr _e165424165447_)))
                                  (let ((_hd165455_ _hd165425165450_))
                                    (if (gx#stx-pair? _tl165426165452_)
                                        (let ((_e165427165457_
                                               (gx#syntax-e _tl165426165452_)))
                                          (let ((_hd165428165460_
                                                 (##car _e165427165457_))
                                                (_tl165429165462_
                                                 (##cdr _e165427165457_)))
                                            (let ((_body165465_
                                                   _hd165428165460_))
                                              (if (gx#stx-null?
                                                   _tl165429165462_)
                                                  (if '#t
                                                      (cons _form165417_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd165455_)
                          (cons (gx#core-compile-top-syntax _body165465_)
                                '())))
              (_E165420165435_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E165420165435_)))))
                                        (_E165420165435_)))))
                              (_E165420165435_))))
                      (_E165420165435_)))))
          (_E165419165467_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx165474_)
        (let ((_form165476_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx165474_ _form165476_))))
    (define gx#core-compile-top-let-values%
      (lambda _g170356_
        (let ((_g170355_ (##length _g170356_)))
          (cond ((##fx= _g170355_ 1)
                 (apply (lambda (_stx165474_)
                          (gx#core-compile-top-let-values%__0 _stx165474_))
                        _g170356_))
                ((##fx= _g170355_ 2)
                 (apply (lambda (_stx165478_ _form165479_)
                          (gx#core-compile-top-let-values%__%
                           _stx165478_
                           _form165479_))
                        _g170356_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g170356_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx165413_)
        (gx#core-compile-top-let-values%__% _stx165413_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx165411_)
        (gx#core-compile-top-let-values%__% _stx165411_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx165370_)
        (let* ((_e165371165381_ _stx165370_)
               (_E165373165385_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165371165381_)))
               (_E165372165407_
                (lambda ()
                  (if (gx#stx-pair? _e165371165381_)
                      (let ((_e165374165389_ (gx#syntax-e _e165371165381_)))
                        (let ((_hd165375165392_ (##car _e165374165389_))
                              (_tl165376165394_ (##cdr _e165374165389_)))
                          (if (gx#stx-pair? _tl165376165394_)
                              (let ((_e165377165397_
                                     (gx#syntax-e _tl165376165394_)))
                                (let ((_hd165378165400_
                                       (##car _e165377165397_))
                                      (_tl165379165402_
                                       (##cdr _e165377165397_)))
                                  (let ((_e165405_ _hd165378165400_))
                                    (if (gx#stx-null? _tl165379165402_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e165405_)
                                                        '()))
                                            (_E165373165385_))
                                        (_E165373165385_)))))
                              (_E165373165385_))))
                      (_E165373165385_)))))
          (_E165372165407_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx165329_)
        (let* ((_e165330165340_ _stx165329_)
               (_E165332165344_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165330165340_)))
               (_E165331165366_
                (lambda ()
                  (if (gx#stx-pair? _e165330165340_)
                      (let ((_e165333165348_ (gx#syntax-e _e165330165340_)))
                        (let ((_hd165334165351_ (##car _e165333165348_))
                              (_tl165335165353_ (##cdr _e165333165348_)))
                          (if (gx#stx-pair? _tl165335165353_)
                              (let ((_e165336165356_
                                     (gx#syntax-e _tl165335165353_)))
                                (let ((_hd165337165359_
                                       (##car _e165336165356_))
                                      (_tl165338165361_
                                       (##cdr _e165336165356_)))
                                  (let ((_e165364_ _hd165337165359_))
                                    (if (gx#stx-null? _tl165338165361_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e165364_)
                                                        '()))
                                            (_E165332165344_))
                                        (_E165332165344_)))))
                              (_E165332165344_))))
                      (_E165332165344_)))))
          (_E165331165366_))))
    (define gx#core-compile-top-call%
      (lambda (_stx165286_)
        (let* ((_e165287165297_ _stx165286_)
               (_E165289165301_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165287165297_)))
               (_E165288165325_
                (lambda ()
                  (if (gx#stx-pair? _e165287165297_)
                      (let ((_e165290165305_ (gx#syntax-e _e165287165297_)))
                        (let ((_hd165291165308_ (##car _e165290165305_))
                              (_tl165292165310_ (##cdr _e165290165305_)))
                          (if (gx#stx-pair? _tl165292165310_)
                              (let ((_e165293165313_
                                     (gx#syntax-e _tl165292165310_)))
                                (let ((_hd165294165316_
                                       (##car _e165293165313_))
                                      (_tl165295165318_
                                       (##cdr _e165293165313_)))
                                  (let* ((_rator165321_ _hd165294165316_)
                                         (_args165323_ _tl165295165318_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator165321_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args165323_)))
                                        (_E165289165301_)))))
                              (_E165289165301_))))
                      (_E165289165301_)))))
          (_E165288165325_))))
    (define gx#core-compile-top-if%
      (lambda (_stx165219_)
        (let* ((_e165220165236_ _stx165219_)
               (_E165222165240_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165220165236_)))
               (_E165221165282_
                (lambda ()
                  (if (gx#stx-pair? _e165220165236_)
                      (let ((_e165223165244_ (gx#syntax-e _e165220165236_)))
                        (let ((_hd165224165247_ (##car _e165223165244_))
                              (_tl165225165249_ (##cdr _e165223165244_)))
                          (if (gx#stx-pair? _tl165225165249_)
                              (let ((_e165226165252_
                                     (gx#syntax-e _tl165225165249_)))
                                (let ((_hd165227165255_
                                       (##car _e165226165252_))
                                      (_tl165228165257_
                                       (##cdr _e165226165252_)))
                                  (let ((_test165260_ _hd165227165255_))
                                    (if (gx#stx-pair? _tl165228165257_)
                                        (let ((_e165229165262_
                                               (gx#syntax-e _tl165228165257_)))
                                          (let ((_hd165230165265_
                                                 (##car _e165229165262_))
                                                (_tl165231165267_
                                                 (##cdr _e165229165262_)))
                                            (let ((_K165270_ _hd165230165265_))
                                              (if (gx#stx-pair?
                                                   _tl165231165267_)
                                                  (let ((_e165232165272_
                                                         (gx#syntax-e
                                                          _tl165231165267_)))
                                                    (let ((_hd165233165275_
                                                           (##car _e165232165272_))
                                                          (_tl165234165277_
                                                           (##cdr _e165232165272_)))
                                                      (let ((_E165280_
                                                             _hd165233165275_))
                                                        (if (gx#stx-null?
                                                             _tl165234165277_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test165260_)
                                    (cons (gx#core-compile-top-syntax
                                           _K165270_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E165280_)
                                                '()))))
                        (_E165222165240_))
                    (_E165222165240_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E165222165240_)))))
                                        (_E165222165240_)))))
                              (_E165222165240_))))
                      (_E165222165240_)))))
          (_E165221165282_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx165178_)
        (let* ((_e165179165189_ _stx165178_)
               (_E165181165193_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165179165189_)))
               (_E165180165215_
                (lambda ()
                  (if (gx#stx-pair? _e165179165189_)
                      (let ((_e165182165197_ (gx#syntax-e _e165179165189_)))
                        (let ((_hd165183165200_ (##car _e165182165197_))
                              (_tl165184165202_ (##cdr _e165182165197_)))
                          (if (gx#stx-pair? _tl165184165202_)
                              (let ((_e165185165205_
                                     (gx#syntax-e _tl165184165202_)))
                                (let ((_hd165186165208_
                                       (##car _e165185165205_))
                                      (_tl165187165210_
                                       (##cdr _e165185165205_)))
                                  (let ((_id165213_ _hd165186165208_))
                                    (if (gx#stx-null? _tl165187165210_)
                                        (if (gx#identifier? _id165213_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id165213_)
                                                        '()))
                                            (_E165181165193_))
                                        (_E165181165193_)))))
                              (_E165181165193_))))
                      (_E165181165193_)))))
          (_E165180165215_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx165124_)
        (let* ((_e165125165138_ _stx165124_)
               (_E165127165142_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165125165138_)))
               (_E165126165174_
                (lambda ()
                  (if (gx#stx-pair? _e165125165138_)
                      (let ((_e165128165146_ (gx#syntax-e _e165125165138_)))
                        (let ((_hd165129165149_ (##car _e165128165146_))
                              (_tl165130165151_ (##cdr _e165128165146_)))
                          (if (gx#stx-pair? _tl165130165151_)
                              (let ((_e165131165154_
                                     (gx#syntax-e _tl165130165151_)))
                                (let ((_hd165132165157_
                                       (##car _e165131165154_))
                                      (_tl165133165159_
                                       (##cdr _e165131165154_)))
                                  (let ((_id165162_ _hd165132165157_))
                                    (if (gx#stx-pair? _tl165133165159_)
                                        (let ((_e165134165164_
                                               (gx#syntax-e _tl165133165159_)))
                                          (let ((_hd165135165167_
                                                 (##car _e165134165164_))
                                                (_tl165136165169_
                                                 (##cdr _e165134165164_)))
                                            (let ((_expr165172_
                                                   _hd165135165167_))
                                              (if (gx#stx-null?
                                                   _tl165136165169_)
                                                  (if (gx#identifier?
                                                       _id165162_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id165162_)
                          (cons (gx#core-compile-top-syntax _expr165172_)
                                '())))
              (_E165127165142_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E165127165142_)))))
                                        (_E165127165142_)))))
                              (_E165127165142_))))
                      (_E165127165142_)))))
          (_E165126165174_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id165119_)
        (let ((_$e165121_ (gx#resolve-identifier__0 _id165119_)))
          (if _$e165121_
              (##unchecked-structure-ref _$e165121_ '1 gx#binding::t '#f)
              _id165119_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd165117_)
        (if (gx#identifier? _hd165117_)
            (gx#core-compile-top-runtime-ref _hd165117_)
            '#f)))))
