(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1707840756)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx170110_)
        (let* ((_e170111170118_ _stx170110_)
               (_E170113170122_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e170111170118_)))
               (_E170112170136_
                (lambda ()
                  (if (gx#stx-pair? _e170111170118_)
                      (let ((_e170114170126_ (gx#syntax-e _e170111170118_)))
                        (let ((_hd170115170129_ (##car _e170114170126_))
                              (_tl170116170131_ (##cdr _e170114170126_)))
                          (let ((_form170134_ _hd170115170129_))
                            (if '#t
                                (let* ((__self174707
                                        (gx#syntax-local-e__0 _form170134_))
                                       (__method174708
                                        (method-ref
                                         __self174707
                                         'compile-top-syntax)))
                                  (if __method174708
                                      (__method174708 __self174707 _stx170110_)
                                      (error '"Missing method"
                                             __self174707
                                             'compile-top-syntax)))
                                (_E170113170122_)))))
                      (_E170113170122_)))))
          (_E170112170136_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self170070_ _stx170071_)
        (let* ((_self170072170080_ _self170070_)
               (_E170074170084_
                (lambda () (error '"No clause matching" _self170072170080_)))
               (_K170075170096_
                (lambda (_K170087_)
                  (let ((_$e170089_ (gx#stx-source _stx170071_)))
                    (if _$e170089_
                        ((lambda (_g170091170093_)
                           (gx#stx-wrap-source
                            (_K170087_ _stx170071_)
                            _g170091170093_))
                         _$e170089_)
                        (_K170087_ _stx170071_))))))
          (if (##structure-instance-of?
               _self170072170080_
               'gx#core-expander::t)
              (let* ((_e170076170099_
                      (##unchecked-structure-ref
                       _self170072170080_
                       '1
                       gx#expander::t
                       '#f))
                     (_e170077170102_
                      (##unchecked-structure-ref
                       _self170072170080_
                       '2
                       gx#core-expander::t
                       '#f))
                     (_e170078170105_
                      (##unchecked-structure-ref
                       _self170072170080_
                       '3
                       gx#core-expander::t
                       '#f))
                     (_K170108_ _e170078170105_))
                (_K170075170096_ _K170108_))
              (_E170074170084_)))))
    (bind-method!
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx169944_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx169944_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx169914_)
        (let* ((_e169915169922_ _stx169914_)
               (_E169917169926_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169915169922_)))
               (_E169916169940_
                (lambda ()
                  (if (gx#stx-pair? _e169915169922_)
                      (let ((_e169918169930_ (gx#syntax-e _e169915169922_)))
                        (let ((_hd169919169933_ (##car _e169918169930_))
                              (_tl169920169935_ (##cdr _e169918169930_)))
                          (let ((_body169938_ _tl169920169935_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body169938_))
                                (_E169917169926_)))))
                      (_E169917169926_)))))
          (_E169916169940_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx169883_)
        (let* ((_e169884169891_ _stx169883_)
               (_E169886169895_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169884169891_)))
               (_E169885169910_
                (lambda ()
                  (if (gx#stx-pair? _e169884169891_)
                      (let ((_e169887169899_ (gx#syntax-e _e169884169891_)))
                        (let ((_hd169888169902_ (##car _e169887169899_))
                              (_tl169889169904_ (##cdr _e169887169899_)))
                          (let ((_body169907_ _tl169889169904_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body169907_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E169886169895_)))))
                      (_E169886169895_)))))
          (_E169885169910_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_stx169853_)
        (let* ((_e169854169861_ _stx169853_)
               (_E169856169865_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169854169861_)))
               (_E169855169879_
                (lambda ()
                  (if (gx#stx-pair? _e169854169861_)
                      (let ((_e169857169869_ (gx#syntax-e _e169854169861_)))
                        (let ((_hd169858169872_ (##car _e169857169869_))
                              (_tl169859169874_ (##cdr _e169857169869_)))
                          (let ((_body169877_ _tl169859169874_))
                            (if '#t
                                (cons '%#begin-foreign _body169877_)
                                (_E169856169865_)))))
                      (_E169856169865_)))))
          (_E169855169879_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_stx169799_)
        (let* ((_e169800169813_ _stx169799_)
               (_E169802169817_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169800169813_)))
               (_E169801169849_
                (lambda ()
                  (if (gx#stx-pair? _e169800169813_)
                      (let ((_e169803169821_ (gx#syntax-e _e169800169813_)))
                        (let ((_hd169804169824_ (##car _e169803169821_))
                              (_tl169805169826_ (##cdr _e169803169821_)))
                          (if (gx#stx-pair? _tl169805169826_)
                              (let ((_e169806169829_
                                     (gx#syntax-e _tl169805169826_)))
                                (let ((_hd169807169832_
                                       (##car _e169806169829_))
                                      (_tl169808169834_
                                       (##cdr _e169806169829_)))
                                  (let ((_ann169837_ _hd169807169832_))
                                    (if (gx#stx-pair? _tl169808169834_)
                                        (let ((_e169809169839_
                                               (gx#syntax-e _tl169808169834_)))
                                          (let ((_hd169810169842_
                                                 (##car _e169809169839_))
                                                (_tl169811169844_
                                                 (##cdr _e169809169839_)))
                                            (let ((_expr169847_
                                                   _hd169810169842_))
                                              (if (gx#stx-null?
                                                   _tl169811169844_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr169847_)
                                                      (_E169802169817_))
                                                  (_E169802169817_)))))
                                        (_E169802169817_)))))
                              (_E169802169817_))))
                      (_E169802169817_)))))
          (_E169801169849_))))
    (define gx#core-compile-top-import%
      (lambda (_stx169769_)
        (let* ((_e169770169777_ _stx169769_)
               (_E169772169781_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169770169777_)))
               (_E169771169795_
                (lambda ()
                  (if (gx#stx-pair? _e169770169777_)
                      (let ((_e169773169785_ (gx#syntax-e _e169770169777_)))
                        (let ((_hd169774169788_ (##car _e169773169785_))
                              (_tl169775169790_ (##cdr _e169773169785_)))
                          (let ((_body169793_ _tl169775169790_))
                            (if '#t
                                (cons '%#import _body169793_)
                                (_E169772169781_)))))
                      (_E169772169781_)))))
          (_E169771169795_))))
    (define gx#core-compile-top-module%
      (lambda (_stx169726_)
        (let* ((_e169727169737_ _stx169726_)
               (_E169729169741_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169727169737_)))
               (_E169728169765_
                (lambda ()
                  (if (gx#stx-pair? _e169727169737_)
                      (let ((_e169730169745_ (gx#syntax-e _e169727169737_)))
                        (let ((_hd169731169748_ (##car _e169730169745_))
                              (_tl169732169750_ (##cdr _e169730169745_)))
                          (if (gx#stx-pair? _tl169732169750_)
                              (let ((_e169733169753_
                                     (gx#syntax-e _tl169732169750_)))
                                (let ((_hd169734169756_
                                       (##car _e169733169753_))
                                      (_tl169735169758_
                                       (##cdr _e169733169753_)))
                                  (let* ((_hd169761_ _hd169734169756_)
                                         (_body169763_ _tl169735169758_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _hd169761_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body169763_)))
                                        (_E169729169741_)))))
                              (_E169729169741_))))
                      (_E169729169741_)))))
          (_E169728169765_))))
    (define gx#core-compile-top-export%
      (lambda (_stx169696_)
        (let* ((_e169697169704_ _stx169696_)
               (_E169699169708_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169697169704_)))
               (_E169698169722_
                (lambda ()
                  (if (gx#stx-pair? _e169697169704_)
                      (let ((_e169700169712_ (gx#syntax-e _e169697169704_)))
                        (let ((_hd169701169715_ (##car _e169700169712_))
                              (_tl169702169717_ (##cdr _e169700169712_)))
                          (let ((_body169720_ _tl169702169717_))
                            (if '#t
                                (cons '%#export _body169720_)
                                (_E169699169708_)))))
                      (_E169699169708_)))))
          (_E169698169722_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx169666_)
        (let* ((_e169667169674_ _stx169666_)
               (_E169669169678_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169667169674_)))
               (_E169668169692_
                (lambda ()
                  (if (gx#stx-pair? _e169667169674_)
                      (let ((_e169670169682_ (gx#syntax-e _e169667169674_)))
                        (let ((_hd169671169685_ (##car _e169670169682_))
                              (_tl169672169687_ (##cdr _e169670169682_)))
                          (let ((_body169690_ _tl169672169687_))
                            (if '#t
                                (cons '%#provide _body169690_)
                                (_E169669169678_)))))
                      (_E169669169678_)))))
          (_E169668169692_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx169636_)
        (let* ((_e169637169644_ _stx169636_)
               (_E169639169648_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169637169644_)))
               (_E169638169662_
                (lambda ()
                  (if (gx#stx-pair? _e169637169644_)
                      (let ((_e169640169652_ (gx#syntax-e _e169637169644_)))
                        (let ((_hd169641169655_ (##car _e169640169652_))
                              (_tl169642169657_ (##cdr _e169640169652_)))
                          (let ((_body169660_ _tl169642169657_))
                            (if '#t
                                (cons '%#extern _body169660_)
                                (_E169639169648_)))))
                      (_E169639169648_)))))
          (_E169638169662_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx169582_)
        (let* ((_e169583169596_ _stx169582_)
               (_E169585169600_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169583169596_)))
               (_E169584169632_
                (lambda ()
                  (if (gx#stx-pair? _e169583169596_)
                      (let ((_e169586169604_ (gx#syntax-e _e169583169596_)))
                        (let ((_hd169587169607_ (##car _e169586169604_))
                              (_tl169588169609_ (##cdr _e169586169604_)))
                          (if (gx#stx-pair? _tl169588169609_)
                              (let ((_e169589169612_
                                     (gx#syntax-e _tl169588169609_)))
                                (let ((_hd169590169615_
                                       (##car _e169589169612_))
                                      (_tl169591169617_
                                       (##cdr _e169589169612_)))
                                  (let ((_hd169620_ _hd169590169615_))
                                    (if (gx#stx-pair? _tl169591169617_)
                                        (let ((_e169592169622_
                                               (gx#syntax-e _tl169591169617_)))
                                          (let ((_hd169593169625_
                                                 (##car _e169592169622_))
                                                (_tl169594169627_
                                                 (##cdr _e169592169622_)))
                                            (let ((_expr169630_
                                                   _hd169593169625_))
                                              (if (gx#stx-null?
                                                   _tl169594169627_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd169620_)
                          (cons (gx#core-compile-top-syntax _expr169630_)
                                '())))
              (_E169585169600_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E169585169600_)))))
                                        (_E169585169600_)))))
                              (_E169585169600_))))
                      (_E169585169600_)))))
          (_E169584169632_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx169527_)
        (let* ((_e169528169541_ _stx169527_)
               (_E169530169545_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169528169541_)))
               (_E169529169578_
                (lambda ()
                  (if (gx#stx-pair? _e169528169541_)
                      (let ((_e169531169549_ (gx#syntax-e _e169528169541_)))
                        (let ((_hd169532169552_ (##car _e169531169549_))
                              (_tl169533169554_ (##cdr _e169531169549_)))
                          (if (gx#stx-pair? _tl169533169554_)
                              (let ((_e169534169557_
                                     (gx#syntax-e _tl169533169554_)))
                                (let ((_hd169535169560_
                                       (##car _e169534169557_))
                                      (_tl169536169562_
                                       (##cdr _e169534169557_)))
                                  (let ((_hd169565_ _hd169535169560_))
                                    (if (gx#stx-pair? _tl169536169562_)
                                        (let ((_e169537169567_
                                               (gx#syntax-e _tl169536169562_)))
                                          (let ((_hd169538169570_
                                                 (##car _e169537169567_))
                                                (_tl169539169572_
                                                 (##cdr _e169537169567_)))
                                            (let ((_expr169575_
                                                   _hd169538169570_))
                                              (if (gx#stx-null?
                                                   _tl169539169572_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd169565_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr169575_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E169530169545_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E169530169545_)))))
                                        (_E169530169545_)))))
                              (_E169530169545_))))
                      (_E169530169545_)))))
          (_E169529169578_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx169497_)
        (let* ((_e169498169505_ _stx169497_)
               (_E169500169509_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169498169505_)))
               (_E169499169523_
                (lambda ()
                  (if (gx#stx-pair? _e169498169505_)
                      (let ((_e169501169513_ (gx#syntax-e _e169498169505_)))
                        (let ((_hd169502169516_ (##car _e169501169513_))
                              (_tl169503169518_ (##cdr _e169501169513_)))
                          (let ((_body169521_ _tl169503169518_))
                            (if '#t
                                (cons '%#define-alias _body169521_)
                                (_E169500169509_)))))
                      (_E169500169509_)))))
          (_E169499169523_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx169467_)
        (let* ((_e169468169475_ _stx169467_)
               (_E169470169479_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169468169475_)))
               (_E169469169493_
                (lambda ()
                  (if (gx#stx-pair? _e169468169475_)
                      (let ((_e169471169483_ (gx#syntax-e _e169468169475_)))
                        (let ((_hd169472169486_ (##car _e169471169483_))
                              (_tl169473169488_ (##cdr _e169471169483_)))
                          (let ((_body169491_ _tl169473169488_))
                            (if '#t
                                (cons '%#define-runtime _body169491_)
                                (_E169470169479_)))))
                      (_E169470169479_)))))
          (_E169469169493_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx169437_)
        (let* ((_e169438169445_ _stx169437_)
               (_E169440169449_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169438169445_)))
               (_E169439169463_
                (lambda ()
                  (if (gx#stx-pair? _e169438169445_)
                      (let ((_e169441169453_ (gx#syntax-e _e169438169445_)))
                        (let ((_hd169442169456_ (##car _e169441169453_))
                              (_tl169443169458_ (##cdr _e169441169453_)))
                          (let ((_decls169461_ _tl169443169458_))
                            (if '#t
                                (cons '%#declare _decls169461_)
                                (_E169440169449_)))))
                      (_E169440169449_)))))
          (_E169439169463_))))
    (define gx#core-compile-top-lambda%
      (lambda (_stx169407_)
        (let* ((_e169408169415_ _stx169407_)
               (_E169410169419_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169408169415_)))
               (_E169409169433_
                (lambda ()
                  (if (gx#stx-pair? _e169408169415_)
                      (let ((_e169411169423_ (gx#syntax-e _e169408169415_)))
                        (let ((_hd169412169426_ (##car _e169411169423_))
                              (_tl169413169428_ (##cdr _e169411169423_)))
                          (let ((_clause169431_ _tl169413169428_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause169431_))
                                (_E169410169419_)))))
                      (_E169410169419_)))))
          (_E169409169433_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx169364_)
        (let* ((_e169365169375_ _stx169364_)
               (_E169367169379_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169365169375_)))
               (_E169366169403_
                (lambda ()
                  (if (gx#stx-pair? _e169365169375_)
                      (let ((_e169368169383_ (gx#syntax-e _e169365169375_)))
                        (let ((_hd169369169386_ (##car _e169368169383_))
                              (_tl169370169388_ (##cdr _e169368169383_)))
                          (let ((_hd169391_ _hd169369169386_))
                            (if (gx#stx-pair? _tl169370169388_)
                                (let ((_e169371169393_
                                       (gx#syntax-e _tl169370169388_)))
                                  (let ((_hd169372169396_
                                         (##car _e169371169393_))
                                        (_tl169373169398_
                                         (##cdr _e169371169393_)))
                                    (let ((_body169401_ _hd169372169396_))
                                      (if (gx#stx-null? _tl169373169398_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd169391_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body169401_)
                                                          '()))
                                              (_E169367169379_))
                                          (_E169367169379_)))))
                                (_E169367169379_)))))
                      (_E169367169379_)))))
          (_E169366169403_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx169334_)
        (let* ((_e169335169342_ _stx169334_)
               (_E169337169346_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169335169342_)))
               (_E169336169360_
                (lambda ()
                  (if (gx#stx-pair? _e169335169342_)
                      (let ((_e169338169350_ (gx#syntax-e _e169335169342_)))
                        (let ((_hd169339169353_ (##car _e169338169350_))
                              (_tl169340169355_ (##cdr _e169338169350_)))
                          (let ((_clauses169358_ _tl169340169355_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses169358_))
                                (_E169337169346_)))))
                      (_E169337169346_)))))
          (_E169336169360_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx169269_ _form169270_)
        (let* ((_e169271169284_ _stx169269_)
               (_E169273169288_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169271169284_)))
               (_E169272169320_
                (lambda ()
                  (if (gx#stx-pair? _e169271169284_)
                      (let ((_e169274169292_ (gx#syntax-e _e169271169284_)))
                        (let ((_hd169275169295_ (##car _e169274169292_))
                              (_tl169276169297_ (##cdr _e169274169292_)))
                          (if (gx#stx-pair? _tl169276169297_)
                              (let ((_e169277169300_
                                     (gx#syntax-e _tl169276169297_)))
                                (let ((_hd169278169303_
                                       (##car _e169277169300_))
                                      (_tl169279169305_
                                       (##cdr _e169277169300_)))
                                  (let ((_hd169308_ _hd169278169303_))
                                    (if (gx#stx-pair? _tl169279169305_)
                                        (let ((_e169280169310_
                                               (gx#syntax-e _tl169279169305_)))
                                          (let ((_hd169281169313_
                                                 (##car _e169280169310_))
                                                (_tl169282169315_
                                                 (##cdr _e169280169310_)))
                                            (let ((_body169318_
                                                   _hd169281169313_))
                                              (if (gx#stx-null?
                                                   _tl169282169315_)
                                                  (if '#t
                                                      (cons _form169270_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd169308_)
                          (cons (gx#core-compile-top-syntax _body169318_)
                                '())))
              (_E169273169288_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E169273169288_)))))
                                        (_E169273169288_)))))
                              (_E169273169288_))))
                      (_E169273169288_)))))
          (_E169272169320_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx169327_)
        (let ((_form169329_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx169327_ _form169329_))))
    (define gx#core-compile-top-let-values%
      (lambda _g174710_
        (let ((_g174709_ (##length _g174710_)))
          (cond ((##fx= _g174709_ 1)
                 (apply (lambda (_stx169327_)
                          (gx#core-compile-top-let-values%__0 _stx169327_))
                        _g174710_))
                ((##fx= _g174709_ 2)
                 (apply (lambda (_stx169331_ _form169332_)
                          (gx#core-compile-top-let-values%__%
                           _stx169331_
                           _form169332_))
                        _g174710_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g174710_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx169266_)
        (gx#core-compile-top-let-values%__% _stx169266_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx169264_)
        (gx#core-compile-top-let-values%__% _stx169264_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx169223_)
        (let* ((_e169224169234_ _stx169223_)
               (_E169226169238_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169224169234_)))
               (_E169225169260_
                (lambda ()
                  (if (gx#stx-pair? _e169224169234_)
                      (let ((_e169227169242_ (gx#syntax-e _e169224169234_)))
                        (let ((_hd169228169245_ (##car _e169227169242_))
                              (_tl169229169247_ (##cdr _e169227169242_)))
                          (if (gx#stx-pair? _tl169229169247_)
                              (let ((_e169230169250_
                                     (gx#syntax-e _tl169229169247_)))
                                (let ((_hd169231169253_
                                       (##car _e169230169250_))
                                      (_tl169232169255_
                                       (##cdr _e169230169250_)))
                                  (let ((_e169258_ _hd169231169253_))
                                    (if (gx#stx-null? _tl169232169255_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e169258_)
                                                        '()))
                                            (_E169226169238_))
                                        (_E169226169238_)))))
                              (_E169226169238_))))
                      (_E169226169238_)))))
          (_E169225169260_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx169182_)
        (let* ((_e169183169193_ _stx169182_)
               (_E169185169197_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169183169193_)))
               (_E169184169219_
                (lambda ()
                  (if (gx#stx-pair? _e169183169193_)
                      (let ((_e169186169201_ (gx#syntax-e _e169183169193_)))
                        (let ((_hd169187169204_ (##car _e169186169201_))
                              (_tl169188169206_ (##cdr _e169186169201_)))
                          (if (gx#stx-pair? _tl169188169206_)
                              (let ((_e169189169209_
                                     (gx#syntax-e _tl169188169206_)))
                                (let ((_hd169190169212_
                                       (##car _e169189169209_))
                                      (_tl169191169214_
                                       (##cdr _e169189169209_)))
                                  (let ((_e169217_ _hd169190169212_))
                                    (if (gx#stx-null? _tl169191169214_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e169217_)
                                                        '()))
                                            (_E169185169197_))
                                        (_E169185169197_)))))
                              (_E169185169197_))))
                      (_E169185169197_)))))
          (_E169184169219_))))
    (define gx#core-compile-top-call%
      (lambda (_stx169139_)
        (let* ((_e169140169150_ _stx169139_)
               (_E169142169154_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169140169150_)))
               (_E169141169178_
                (lambda ()
                  (if (gx#stx-pair? _e169140169150_)
                      (let ((_e169143169158_ (gx#syntax-e _e169140169150_)))
                        (let ((_hd169144169161_ (##car _e169143169158_))
                              (_tl169145169163_ (##cdr _e169143169158_)))
                          (if (gx#stx-pair? _tl169145169163_)
                              (let ((_e169146169166_
                                     (gx#syntax-e _tl169145169163_)))
                                (let ((_hd169147169169_
                                       (##car _e169146169166_))
                                      (_tl169148169171_
                                       (##cdr _e169146169166_)))
                                  (let* ((_rator169174_ _hd169147169169_)
                                         (_args169176_ _tl169148169171_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator169174_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args169176_)))
                                        (_E169142169154_)))))
                              (_E169142169154_))))
                      (_E169142169154_)))))
          (_E169141169178_))))
    (define gx#core-compile-top-if%
      (lambda (_stx169072_)
        (let* ((_e169073169089_ _stx169072_)
               (_E169075169093_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169073169089_)))
               (_E169074169135_
                (lambda ()
                  (if (gx#stx-pair? _e169073169089_)
                      (let ((_e169076169097_ (gx#syntax-e _e169073169089_)))
                        (let ((_hd169077169100_ (##car _e169076169097_))
                              (_tl169078169102_ (##cdr _e169076169097_)))
                          (if (gx#stx-pair? _tl169078169102_)
                              (let ((_e169079169105_
                                     (gx#syntax-e _tl169078169102_)))
                                (let ((_hd169080169108_
                                       (##car _e169079169105_))
                                      (_tl169081169110_
                                       (##cdr _e169079169105_)))
                                  (let ((_test169113_ _hd169080169108_))
                                    (if (gx#stx-pair? _tl169081169110_)
                                        (let ((_e169082169115_
                                               (gx#syntax-e _tl169081169110_)))
                                          (let ((_hd169083169118_
                                                 (##car _e169082169115_))
                                                (_tl169084169120_
                                                 (##cdr _e169082169115_)))
                                            (let ((_K169123_ _hd169083169118_))
                                              (if (gx#stx-pair?
                                                   _tl169084169120_)
                                                  (let ((_e169085169125_
                                                         (gx#syntax-e
                                                          _tl169084169120_)))
                                                    (let ((_hd169086169128_
                                                           (##car _e169085169125_))
                                                          (_tl169087169130_
                                                           (##cdr _e169085169125_)))
                                                      (let ((_E169133_
                                                             _hd169086169128_))
                                                        (if (gx#stx-null?
                                                             _tl169087169130_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test169113_)
                                    (cons (gx#core-compile-top-syntax
                                           _K169123_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E169133_)
                                                '()))))
                        (_E169075169093_))
                    (_E169075169093_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E169075169093_)))))
                                        (_E169075169093_)))))
                              (_E169075169093_))))
                      (_E169075169093_)))))
          (_E169074169135_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx169031_)
        (let* ((_e169032169042_ _stx169031_)
               (_E169034169046_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169032169042_)))
               (_E169033169068_
                (lambda ()
                  (if (gx#stx-pair? _e169032169042_)
                      (let ((_e169035169050_ (gx#syntax-e _e169032169042_)))
                        (let ((_hd169036169053_ (##car _e169035169050_))
                              (_tl169037169055_ (##cdr _e169035169050_)))
                          (if (gx#stx-pair? _tl169037169055_)
                              (let ((_e169038169058_
                                     (gx#syntax-e _tl169037169055_)))
                                (let ((_hd169039169061_
                                       (##car _e169038169058_))
                                      (_tl169040169063_
                                       (##cdr _e169038169058_)))
                                  (let ((_id169066_ _hd169039169061_))
                                    (if (gx#stx-null? _tl169040169063_)
                                        (if (gx#identifier? _id169066_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id169066_)
                                                        '()))
                                            (_E169034169046_))
                                        (_E169034169046_)))))
                              (_E169034169046_))))
                      (_E169034169046_)))))
          (_E169033169068_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx168977_)
        (let* ((_e168978168991_ _stx168977_)
               (_E168980168995_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168978168991_)))
               (_E168979169027_
                (lambda ()
                  (if (gx#stx-pair? _e168978168991_)
                      (let ((_e168981168999_ (gx#syntax-e _e168978168991_)))
                        (let ((_hd168982169002_ (##car _e168981168999_))
                              (_tl168983169004_ (##cdr _e168981168999_)))
                          (if (gx#stx-pair? _tl168983169004_)
                              (let ((_e168984169007_
                                     (gx#syntax-e _tl168983169004_)))
                                (let ((_hd168985169010_
                                       (##car _e168984169007_))
                                      (_tl168986169012_
                                       (##cdr _e168984169007_)))
                                  (let ((_id169015_ _hd168985169010_))
                                    (if (gx#stx-pair? _tl168986169012_)
                                        (let ((_e168987169017_
                                               (gx#syntax-e _tl168986169012_)))
                                          (let ((_hd168988169020_
                                                 (##car _e168987169017_))
                                                (_tl168989169022_
                                                 (##cdr _e168987169017_)))
                                            (let ((_expr169025_
                                                   _hd168988169020_))
                                              (if (gx#stx-null?
                                                   _tl168989169022_)
                                                  (if (gx#identifier?
                                                       _id169015_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id169015_)
                          (cons (gx#core-compile-top-syntax _expr169025_)
                                '())))
              (_E168980168995_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E168980168995_)))))
                                        (_E168980168995_)))))
                              (_E168980168995_))))
                      (_E168980168995_)))))
          (_E168979169027_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id168972_)
        (let ((_$e168974_ (gx#resolve-identifier__0 _id168972_)))
          (if _$e168974_
              (##unchecked-structure-ref _$e168974_ '1 gx#binding::t '#f)
              _id168972_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd168970_)
        (if (gx#identifier? _hd168970_)
            (gx#core-compile-top-runtime-ref _hd168970_)
            '#f)))))
