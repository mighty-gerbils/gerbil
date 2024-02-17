(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1708210941)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx166260_)
        (let* ((_e166261166268_ _stx166260_)
               (_E166263166272_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166261166268_)))
               (_E166262166286_
                (lambda ()
                  (if (gx#stx-pair? _e166261166268_)
                      (let ((_e166264166276_ (gx#syntax-e _e166261166268_)))
                        (let ((_hd166265166279_ (##car _e166264166276_))
                              (_tl166266166281_ (##cdr _e166264166276_)))
                          (let ((_form166284_ _hd166265166279_))
                            (if '#t
                                (let* ((__self170356
                                        (gx#syntax-local-e__0 _form166284_))
                                       (__method170357
                                        (method-ref
                                         __self170356
                                         'compile-top-syntax)))
                                  (if __method170357
                                      (__method170357 __self170356 _stx166260_)
                                      (error '"Missing method"
                                             __self170356
                                             'compile-top-syntax)))
                                (_E166263166272_)))))
                      (_E166263166272_)))))
          (_E166262166286_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self166220_ _stx166221_)
        (let* ((_self166222166230_ _self166220_)
               (_E166224166234_
                (lambda () (error '"No clause matching" _self166222166230_)))
               (_K166225166246_
                (lambda (_K166237_)
                  (let ((_$e166239_ (gx#stx-source _stx166221_)))
                    (if _$e166239_
                        ((lambda (_g166241166243_)
                           (gx#stx-wrap-source
                            (_K166237_ _stx166221_)
                            _g166241166243_))
                         _$e166239_)
                        (_K166237_ _stx166221_))))))
          (if (##structure-instance-of?
               _self166222166230_
               'gx#core-expander::t)
              (let* ((_e166226166249_
                      (##unchecked-structure-ref
                       _self166222166230_
                       '1
                       gx#expander::t
                       '#f))
                     (_e166227166252_
                      (##unchecked-structure-ref
                       _self166222166230_
                       '2
                       gx#core-expander::t
                       '#f))
                     (_e166228166255_
                      (##unchecked-structure-ref
                       _self166222166230_
                       '3
                       gx#core-expander::t
                       '#f))
                     (_K166258_ _e166228166255_))
                (_K166225166246_ _K166258_))
              (_E166224166234_)))))
    (bind-method!
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx166094_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx166094_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx166064_)
        (let* ((_e166065166072_ _stx166064_)
               (_E166067166076_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166065166072_)))
               (_E166066166090_
                (lambda ()
                  (if (gx#stx-pair? _e166065166072_)
                      (let ((_e166068166080_ (gx#syntax-e _e166065166072_)))
                        (let ((_hd166069166083_ (##car _e166068166080_))
                              (_tl166070166085_ (##cdr _e166068166080_)))
                          (let ((_body166088_ _tl166070166085_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body166088_))
                                (_E166067166076_)))))
                      (_E166067166076_)))))
          (_E166066166090_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx166033_)
        (let* ((_e166034166041_ _stx166033_)
               (_E166036166045_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166034166041_)))
               (_E166035166060_
                (lambda ()
                  (if (gx#stx-pair? _e166034166041_)
                      (let ((_e166037166049_ (gx#syntax-e _e166034166041_)))
                        (let ((_hd166038166052_ (##car _e166037166049_))
                              (_tl166039166054_ (##cdr _e166037166049_)))
                          (let ((_body166057_ _tl166039166054_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body166057_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E166036166045_)))))
                      (_E166036166045_)))))
          (_E166035166060_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_stx166003_)
        (let* ((_e166004166011_ _stx166003_)
               (_E166006166015_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166004166011_)))
               (_E166005166029_
                (lambda ()
                  (if (gx#stx-pair? _e166004166011_)
                      (let ((_e166007166019_ (gx#syntax-e _e166004166011_)))
                        (let ((_hd166008166022_ (##car _e166007166019_))
                              (_tl166009166024_ (##cdr _e166007166019_)))
                          (let ((_body166027_ _tl166009166024_))
                            (if '#t
                                (cons '%#begin-foreign _body166027_)
                                (_E166006166015_)))))
                      (_E166006166015_)))))
          (_E166005166029_))))
    (define gx#core-compile-top-begin-annotation%
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
                                  (let ((_ann165987_ _hd165957165982_))
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
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr165997_)
                                                      (_E165952165967_))
                                                  (_E165952165967_)))))
                                        (_E165952165967_)))))
                              (_E165952165967_))))
                      (_E165952165967_)))))
          (_E165951165999_))))
    (define gx#core-compile-top-import%
      (lambda (_stx165919_)
        (let* ((_e165920165927_ _stx165919_)
               (_E165922165931_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165920165927_)))
               (_E165921165945_
                (lambda ()
                  (if (gx#stx-pair? _e165920165927_)
                      (let ((_e165923165935_ (gx#syntax-e _e165920165927_)))
                        (let ((_hd165924165938_ (##car _e165923165935_))
                              (_tl165925165940_ (##cdr _e165923165935_)))
                          (let ((_body165943_ _tl165925165940_))
                            (if '#t
                                (cons '%#import _body165943_)
                                (_E165922165931_)))))
                      (_E165922165931_)))))
          (_E165921165945_))))
    (define gx#core-compile-top-module%
      (lambda (_stx165876_)
        (let* ((_e165877165887_ _stx165876_)
               (_E165879165891_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165877165887_)))
               (_E165878165915_
                (lambda ()
                  (if (gx#stx-pair? _e165877165887_)
                      (let ((_e165880165895_ (gx#syntax-e _e165877165887_)))
                        (let ((_hd165881165898_ (##car _e165880165895_))
                              (_tl165882165900_ (##cdr _e165880165895_)))
                          (if (gx#stx-pair? _tl165882165900_)
                              (let ((_e165883165903_
                                     (gx#syntax-e _tl165882165900_)))
                                (let ((_hd165884165906_
                                       (##car _e165883165903_))
                                      (_tl165885165908_
                                       (##cdr _e165883165903_)))
                                  (let* ((_hd165911_ _hd165884165906_)
                                         (_body165913_ _tl165885165908_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _hd165911_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body165913_)))
                                        (_E165879165891_)))))
                              (_E165879165891_))))
                      (_E165879165891_)))))
          (_E165878165915_))))
    (define gx#core-compile-top-export%
      (lambda (_stx165846_)
        (let* ((_e165847165854_ _stx165846_)
               (_E165849165858_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165847165854_)))
               (_E165848165872_
                (lambda ()
                  (if (gx#stx-pair? _e165847165854_)
                      (let ((_e165850165862_ (gx#syntax-e _e165847165854_)))
                        (let ((_hd165851165865_ (##car _e165850165862_))
                              (_tl165852165867_ (##cdr _e165850165862_)))
                          (let ((_body165870_ _tl165852165867_))
                            (if '#t
                                (cons '%#export _body165870_)
                                (_E165849165858_)))))
                      (_E165849165858_)))))
          (_E165848165872_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx165816_)
        (let* ((_e165817165824_ _stx165816_)
               (_E165819165828_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165817165824_)))
               (_E165818165842_
                (lambda ()
                  (if (gx#stx-pair? _e165817165824_)
                      (let ((_e165820165832_ (gx#syntax-e _e165817165824_)))
                        (let ((_hd165821165835_ (##car _e165820165832_))
                              (_tl165822165837_ (##cdr _e165820165832_)))
                          (let ((_body165840_ _tl165822165837_))
                            (if '#t
                                (cons '%#provide _body165840_)
                                (_E165819165828_)))))
                      (_E165819165828_)))))
          (_E165818165842_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx165786_)
        (let* ((_e165787165794_ _stx165786_)
               (_E165789165798_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165787165794_)))
               (_E165788165812_
                (lambda ()
                  (if (gx#stx-pair? _e165787165794_)
                      (let ((_e165790165802_ (gx#syntax-e _e165787165794_)))
                        (let ((_hd165791165805_ (##car _e165790165802_))
                              (_tl165792165807_ (##cdr _e165790165802_)))
                          (let ((_body165810_ _tl165792165807_))
                            (if '#t
                                (cons '%#extern _body165810_)
                                (_E165789165798_)))))
                      (_E165789165798_)))))
          (_E165788165812_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx165732_)
        (let* ((_e165733165746_ _stx165732_)
               (_E165735165750_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165733165746_)))
               (_E165734165782_
                (lambda ()
                  (if (gx#stx-pair? _e165733165746_)
                      (let ((_e165736165754_ (gx#syntax-e _e165733165746_)))
                        (let ((_hd165737165757_ (##car _e165736165754_))
                              (_tl165738165759_ (##cdr _e165736165754_)))
                          (if (gx#stx-pair? _tl165738165759_)
                              (let ((_e165739165762_
                                     (gx#syntax-e _tl165738165759_)))
                                (let ((_hd165740165765_
                                       (##car _e165739165762_))
                                      (_tl165741165767_
                                       (##cdr _e165739165762_)))
                                  (let ((_hd165770_ _hd165740165765_))
                                    (if (gx#stx-pair? _tl165741165767_)
                                        (let ((_e165742165772_
                                               (gx#syntax-e _tl165741165767_)))
                                          (let ((_hd165743165775_
                                                 (##car _e165742165772_))
                                                (_tl165744165777_
                                                 (##cdr _e165742165772_)))
                                            (let ((_expr165780_
                                                   _hd165743165775_))
                                              (if (gx#stx-null?
                                                   _tl165744165777_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd165770_)
                          (cons (gx#core-compile-top-syntax _expr165780_)
                                '())))
              (_E165735165750_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E165735165750_)))))
                                        (_E165735165750_)))))
                              (_E165735165750_))))
                      (_E165735165750_)))))
          (_E165734165782_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx165677_)
        (let* ((_e165678165691_ _stx165677_)
               (_E165680165695_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165678165691_)))
               (_E165679165728_
                (lambda ()
                  (if (gx#stx-pair? _e165678165691_)
                      (let ((_e165681165699_ (gx#syntax-e _e165678165691_)))
                        (let ((_hd165682165702_ (##car _e165681165699_))
                              (_tl165683165704_ (##cdr _e165681165699_)))
                          (if (gx#stx-pair? _tl165683165704_)
                              (let ((_e165684165707_
                                     (gx#syntax-e _tl165683165704_)))
                                (let ((_hd165685165710_
                                       (##car _e165684165707_))
                                      (_tl165686165712_
                                       (##cdr _e165684165707_)))
                                  (let ((_hd165715_ _hd165685165710_))
                                    (if (gx#stx-pair? _tl165686165712_)
                                        (let ((_e165687165717_
                                               (gx#syntax-e _tl165686165712_)))
                                          (let ((_hd165688165720_
                                                 (##car _e165687165717_))
                                                (_tl165689165722_
                                                 (##cdr _e165687165717_)))
                                            (let ((_expr165725_
                                                   _hd165688165720_))
                                              (if (gx#stx-null?
                                                   _tl165689165722_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd165715_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr165725_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E165680165695_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E165680165695_)))))
                                        (_E165680165695_)))))
                              (_E165680165695_))))
                      (_E165680165695_)))))
          (_E165679165728_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx165647_)
        (let* ((_e165648165655_ _stx165647_)
               (_E165650165659_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165648165655_)))
               (_E165649165673_
                (lambda ()
                  (if (gx#stx-pair? _e165648165655_)
                      (let ((_e165651165663_ (gx#syntax-e _e165648165655_)))
                        (let ((_hd165652165666_ (##car _e165651165663_))
                              (_tl165653165668_ (##cdr _e165651165663_)))
                          (let ((_body165671_ _tl165653165668_))
                            (if '#t
                                (cons '%#define-alias _body165671_)
                                (_E165650165659_)))))
                      (_E165650165659_)))))
          (_E165649165673_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx165617_)
        (let* ((_e165618165625_ _stx165617_)
               (_E165620165629_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165618165625_)))
               (_E165619165643_
                (lambda ()
                  (if (gx#stx-pair? _e165618165625_)
                      (let ((_e165621165633_ (gx#syntax-e _e165618165625_)))
                        (let ((_hd165622165636_ (##car _e165621165633_))
                              (_tl165623165638_ (##cdr _e165621165633_)))
                          (let ((_body165641_ _tl165623165638_))
                            (if '#t
                                (cons '%#define-runtime _body165641_)
                                (_E165620165629_)))))
                      (_E165620165629_)))))
          (_E165619165643_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx165587_)
        (let* ((_e165588165595_ _stx165587_)
               (_E165590165599_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165588165595_)))
               (_E165589165613_
                (lambda ()
                  (if (gx#stx-pair? _e165588165595_)
                      (let ((_e165591165603_ (gx#syntax-e _e165588165595_)))
                        (let ((_hd165592165606_ (##car _e165591165603_))
                              (_tl165593165608_ (##cdr _e165591165603_)))
                          (let ((_decls165611_ _tl165593165608_))
                            (if '#t
                                (cons '%#declare _decls165611_)
                                (_E165590165599_)))))
                      (_E165590165599_)))))
          (_E165589165613_))))
    (define gx#core-compile-top-lambda%
      (lambda (_stx165557_)
        (let* ((_e165558165565_ _stx165557_)
               (_E165560165569_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165558165565_)))
               (_E165559165583_
                (lambda ()
                  (if (gx#stx-pair? _e165558165565_)
                      (let ((_e165561165573_ (gx#syntax-e _e165558165565_)))
                        (let ((_hd165562165576_ (##car _e165561165573_))
                              (_tl165563165578_ (##cdr _e165561165573_)))
                          (let ((_clause165581_ _tl165563165578_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause165581_))
                                (_E165560165569_)))))
                      (_E165560165569_)))))
          (_E165559165583_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx165514_)
        (let* ((_e165515165525_ _stx165514_)
               (_E165517165529_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165515165525_)))
               (_E165516165553_
                (lambda ()
                  (if (gx#stx-pair? _e165515165525_)
                      (let ((_e165518165533_ (gx#syntax-e _e165515165525_)))
                        (let ((_hd165519165536_ (##car _e165518165533_))
                              (_tl165520165538_ (##cdr _e165518165533_)))
                          (let ((_hd165541_ _hd165519165536_))
                            (if (gx#stx-pair? _tl165520165538_)
                                (let ((_e165521165543_
                                       (gx#syntax-e _tl165520165538_)))
                                  (let ((_hd165522165546_
                                         (##car _e165521165543_))
                                        (_tl165523165548_
                                         (##cdr _e165521165543_)))
                                    (let ((_body165551_ _hd165522165546_))
                                      (if (gx#stx-null? _tl165523165548_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd165541_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body165551_)
                                                          '()))
                                              (_E165517165529_))
                                          (_E165517165529_)))))
                                (_E165517165529_)))))
                      (_E165517165529_)))))
          (_E165516165553_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx165484_)
        (let* ((_e165485165492_ _stx165484_)
               (_E165487165496_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165485165492_)))
               (_E165486165510_
                (lambda ()
                  (if (gx#stx-pair? _e165485165492_)
                      (let ((_e165488165500_ (gx#syntax-e _e165485165492_)))
                        (let ((_hd165489165503_ (##car _e165488165500_))
                              (_tl165490165505_ (##cdr _e165488165500_)))
                          (let ((_clauses165508_ _tl165490165505_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses165508_))
                                (_E165487165496_)))))
                      (_E165487165496_)))))
          (_E165486165510_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx165419_ _form165420_)
        (let* ((_e165421165434_ _stx165419_)
               (_E165423165438_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165421165434_)))
               (_E165422165470_
                (lambda ()
                  (if (gx#stx-pair? _e165421165434_)
                      (let ((_e165424165442_ (gx#syntax-e _e165421165434_)))
                        (let ((_hd165425165445_ (##car _e165424165442_))
                              (_tl165426165447_ (##cdr _e165424165442_)))
                          (if (gx#stx-pair? _tl165426165447_)
                              (let ((_e165427165450_
                                     (gx#syntax-e _tl165426165447_)))
                                (let ((_hd165428165453_
                                       (##car _e165427165450_))
                                      (_tl165429165455_
                                       (##cdr _e165427165450_)))
                                  (let ((_hd165458_ _hd165428165453_))
                                    (if (gx#stx-pair? _tl165429165455_)
                                        (let ((_e165430165460_
                                               (gx#syntax-e _tl165429165455_)))
                                          (let ((_hd165431165463_
                                                 (##car _e165430165460_))
                                                (_tl165432165465_
                                                 (##cdr _e165430165460_)))
                                            (let ((_body165468_
                                                   _hd165431165463_))
                                              (if (gx#stx-null?
                                                   _tl165432165465_)
                                                  (if '#t
                                                      (cons _form165420_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd165458_)
                          (cons (gx#core-compile-top-syntax _body165468_)
                                '())))
              (_E165423165438_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E165423165438_)))))
                                        (_E165423165438_)))))
                              (_E165423165438_))))
                      (_E165423165438_)))))
          (_E165422165470_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx165477_)
        (let ((_form165479_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx165477_ _form165479_))))
    (define gx#core-compile-top-let-values%
      (lambda _g170359_
        (let ((_g170358_ (##length _g170359_)))
          (cond ((##fx= _g170358_ 1)
                 (apply (lambda (_stx165477_)
                          (gx#core-compile-top-let-values%__0 _stx165477_))
                        _g170359_))
                ((##fx= _g170358_ 2)
                 (apply (lambda (_stx165481_ _form165482_)
                          (gx#core-compile-top-let-values%__%
                           _stx165481_
                           _form165482_))
                        _g170359_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g170359_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx165416_)
        (gx#core-compile-top-let-values%__% _stx165416_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx165414_)
        (gx#core-compile-top-let-values%__% _stx165414_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx165373_)
        (let* ((_e165374165384_ _stx165373_)
               (_E165376165388_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165374165384_)))
               (_E165375165410_
                (lambda ()
                  (if (gx#stx-pair? _e165374165384_)
                      (let ((_e165377165392_ (gx#syntax-e _e165374165384_)))
                        (let ((_hd165378165395_ (##car _e165377165392_))
                              (_tl165379165397_ (##cdr _e165377165392_)))
                          (if (gx#stx-pair? _tl165379165397_)
                              (let ((_e165380165400_
                                     (gx#syntax-e _tl165379165397_)))
                                (let ((_hd165381165403_
                                       (##car _e165380165400_))
                                      (_tl165382165405_
                                       (##cdr _e165380165400_)))
                                  (let ((_e165408_ _hd165381165403_))
                                    (if (gx#stx-null? _tl165382165405_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e165408_)
                                                        '()))
                                            (_E165376165388_))
                                        (_E165376165388_)))))
                              (_E165376165388_))))
                      (_E165376165388_)))))
          (_E165375165410_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx165332_)
        (let* ((_e165333165343_ _stx165332_)
               (_E165335165347_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165333165343_)))
               (_E165334165369_
                (lambda ()
                  (if (gx#stx-pair? _e165333165343_)
                      (let ((_e165336165351_ (gx#syntax-e _e165333165343_)))
                        (let ((_hd165337165354_ (##car _e165336165351_))
                              (_tl165338165356_ (##cdr _e165336165351_)))
                          (if (gx#stx-pair? _tl165338165356_)
                              (let ((_e165339165359_
                                     (gx#syntax-e _tl165338165356_)))
                                (let ((_hd165340165362_
                                       (##car _e165339165359_))
                                      (_tl165341165364_
                                       (##cdr _e165339165359_)))
                                  (let ((_e165367_ _hd165340165362_))
                                    (if (gx#stx-null? _tl165341165364_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e165367_)
                                                        '()))
                                            (_E165335165347_))
                                        (_E165335165347_)))))
                              (_E165335165347_))))
                      (_E165335165347_)))))
          (_E165334165369_))))
    (define gx#core-compile-top-call%
      (lambda (_stx165289_)
        (let* ((_e165290165300_ _stx165289_)
               (_E165292165304_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165290165300_)))
               (_E165291165328_
                (lambda ()
                  (if (gx#stx-pair? _e165290165300_)
                      (let ((_e165293165308_ (gx#syntax-e _e165290165300_)))
                        (let ((_hd165294165311_ (##car _e165293165308_))
                              (_tl165295165313_ (##cdr _e165293165308_)))
                          (if (gx#stx-pair? _tl165295165313_)
                              (let ((_e165296165316_
                                     (gx#syntax-e _tl165295165313_)))
                                (let ((_hd165297165319_
                                       (##car _e165296165316_))
                                      (_tl165298165321_
                                       (##cdr _e165296165316_)))
                                  (let* ((_rator165324_ _hd165297165319_)
                                         (_args165326_ _tl165298165321_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator165324_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args165326_)))
                                        (_E165292165304_)))))
                              (_E165292165304_))))
                      (_E165292165304_)))))
          (_E165291165328_))))
    (define gx#core-compile-top-if%
      (lambda (_stx165222_)
        (let* ((_e165223165239_ _stx165222_)
               (_E165225165243_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165223165239_)))
               (_E165224165285_
                (lambda ()
                  (if (gx#stx-pair? _e165223165239_)
                      (let ((_e165226165247_ (gx#syntax-e _e165223165239_)))
                        (let ((_hd165227165250_ (##car _e165226165247_))
                              (_tl165228165252_ (##cdr _e165226165247_)))
                          (if (gx#stx-pair? _tl165228165252_)
                              (let ((_e165229165255_
                                     (gx#syntax-e _tl165228165252_)))
                                (let ((_hd165230165258_
                                       (##car _e165229165255_))
                                      (_tl165231165260_
                                       (##cdr _e165229165255_)))
                                  (let ((_test165263_ _hd165230165258_))
                                    (if (gx#stx-pair? _tl165231165260_)
                                        (let ((_e165232165265_
                                               (gx#syntax-e _tl165231165260_)))
                                          (let ((_hd165233165268_
                                                 (##car _e165232165265_))
                                                (_tl165234165270_
                                                 (##cdr _e165232165265_)))
                                            (let ((_K165273_ _hd165233165268_))
                                              (if (gx#stx-pair?
                                                   _tl165234165270_)
                                                  (let ((_e165235165275_
                                                         (gx#syntax-e
                                                          _tl165234165270_)))
                                                    (let ((_hd165236165278_
                                                           (##car _e165235165275_))
                                                          (_tl165237165280_
                                                           (##cdr _e165235165275_)))
                                                      (let ((_E165283_
                                                             _hd165236165278_))
                                                        (if (gx#stx-null?
                                                             _tl165237165280_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test165263_)
                                    (cons (gx#core-compile-top-syntax
                                           _K165273_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E165283_)
                                                '()))))
                        (_E165225165243_))
                    (_E165225165243_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E165225165243_)))))
                                        (_E165225165243_)))))
                              (_E165225165243_))))
                      (_E165225165243_)))))
          (_E165224165285_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx165181_)
        (let* ((_e165182165192_ _stx165181_)
               (_E165184165196_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165182165192_)))
               (_E165183165218_
                (lambda ()
                  (if (gx#stx-pair? _e165182165192_)
                      (let ((_e165185165200_ (gx#syntax-e _e165182165192_)))
                        (let ((_hd165186165203_ (##car _e165185165200_))
                              (_tl165187165205_ (##cdr _e165185165200_)))
                          (if (gx#stx-pair? _tl165187165205_)
                              (let ((_e165188165208_
                                     (gx#syntax-e _tl165187165205_)))
                                (let ((_hd165189165211_
                                       (##car _e165188165208_))
                                      (_tl165190165213_
                                       (##cdr _e165188165208_)))
                                  (let ((_id165216_ _hd165189165211_))
                                    (if (gx#stx-null? _tl165190165213_)
                                        (if (gx#identifier? _id165216_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id165216_)
                                                        '()))
                                            (_E165184165196_))
                                        (_E165184165196_)))))
                              (_E165184165196_))))
                      (_E165184165196_)))))
          (_E165183165218_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx165127_)
        (let* ((_e165128165141_ _stx165127_)
               (_E165130165145_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165128165141_)))
               (_E165129165177_
                (lambda ()
                  (if (gx#stx-pair? _e165128165141_)
                      (let ((_e165131165149_ (gx#syntax-e _e165128165141_)))
                        (let ((_hd165132165152_ (##car _e165131165149_))
                              (_tl165133165154_ (##cdr _e165131165149_)))
                          (if (gx#stx-pair? _tl165133165154_)
                              (let ((_e165134165157_
                                     (gx#syntax-e _tl165133165154_)))
                                (let ((_hd165135165160_
                                       (##car _e165134165157_))
                                      (_tl165136165162_
                                       (##cdr _e165134165157_)))
                                  (let ((_id165165_ _hd165135165160_))
                                    (if (gx#stx-pair? _tl165136165162_)
                                        (let ((_e165137165167_
                                               (gx#syntax-e _tl165136165162_)))
                                          (let ((_hd165138165170_
                                                 (##car _e165137165167_))
                                                (_tl165139165172_
                                                 (##cdr _e165137165167_)))
                                            (let ((_expr165175_
                                                   _hd165138165170_))
                                              (if (gx#stx-null?
                                                   _tl165139165172_)
                                                  (if (gx#identifier?
                                                       _id165165_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id165165_)
                          (cons (gx#core-compile-top-syntax _expr165175_)
                                '())))
              (_E165130165145_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E165130165145_)))))
                                        (_E165130165145_)))))
                              (_E165130165145_))))
                      (_E165130165145_)))))
          (_E165129165177_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id165122_)
        (let ((_$e165124_ (gx#resolve-identifier__0 _id165122_)))
          (if _$e165124_
              (##unchecked-structure-ref _$e165124_ '1 gx#binding::t '#f)
              _id165122_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd165120_)
        (if (gx#identifier? _hd165120_)
            (gx#core-compile-top-runtime-ref _hd165120_)
            '#f)))))
