(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1709229970)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx94854_)
        (let* ((_e9485594862_ _stx94854_)
               (_E9485794866_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9485594862_)))
               (_E9485694880_
                (lambda ()
                  (if (gx#stx-pair? _e9485594862_)
                      (let ((_e9485894870_ (gx#syntax-e _e9485594862_)))
                        (let ((_hd9485994873_ (##car _e9485894870_))
                              (_tl9486094875_ (##cdr _e9485894870_)))
                          (let ((_form94878_ _hd9485994873_))
                            (if '#t
                                (let* ((__self94883
                                        (gx#syntax-local-e__0 _form94878_))
                                       (__method94884
                                        (method-ref
                                         __self94883
                                         'compile-top-syntax)))
                                  (if __method94884
                                      (__method94884 __self94883 _stx94854_)
                                      (error '"Missing method"
                                             __self94883
                                             'compile-top-syntax)))
                                (_E9485794866_)))))
                      (_E9485794866_)))))
          (_E9485694880_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self94814_ _stx94815_)
        (let* ((_self9481694824_ _self94814_)
               (_E9481894828_
                (lambda () (error '"No clause matching" _self9481694824_)))
               (_K9481994840_
                (lambda (_K94831_)
                  (let ((_$e94833_ (gx#stx-source _stx94815_)))
                    (if _$e94833_
                        ((lambda (_g9483594837_)
                           (gx#stx-wrap-source
                            (_K94831_ _stx94815_)
                            _g9483594837_))
                         _$e94833_)
                        (_K94831_ _stx94815_))))))
          (if (##structure-instance-of? _self9481694824_ 'gx#core-expander::t)
              (let* ((_e9482094843_
                      (##unchecked-structure-ref
                       _self9481694824_
                       '1
                       gx#expander::t
                       '#f))
                     (_e9482194846_
                      (##unchecked-structure-ref
                       _self9481694824_
                       '2
                       gx#core-expander::t
                       '#f))
                     (_e9482294849_
                      (##unchecked-structure-ref
                       _self9481694824_
                       '3
                       gx#core-expander::t
                       '#f))
                     (_K94852_ _e9482294849_))
                (_K9481994840_ _K94852_))
              (_E9481894828_)))))
    (bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx94688_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx94688_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx94658_)
        (let* ((_e9465994666_ _stx94658_)
               (_E9466194670_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9465994666_)))
               (_E9466094684_
                (lambda ()
                  (if (gx#stx-pair? _e9465994666_)
                      (let ((_e9466294674_ (gx#syntax-e _e9465994666_)))
                        (let ((_hd9466394677_ (##car _e9466294674_))
                              (_tl9466494679_ (##cdr _e9466294674_)))
                          (let ((_body94682_ _tl9466494679_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body94682_))
                                (_E9466194670_)))))
                      (_E9466194670_)))))
          (_E9466094684_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx94627_)
        (let* ((_e9462894635_ _stx94627_)
               (_E9463094639_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9462894635_)))
               (_E9462994654_
                (lambda ()
                  (if (gx#stx-pair? _e9462894635_)
                      (let ((_e9463194643_ (gx#syntax-e _e9462894635_)))
                        (let ((_hd9463294646_ (##car _e9463194643_))
                              (_tl9463394648_ (##cdr _e9463194643_)))
                          (let ((_body94651_ _tl9463394648_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body94651_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E9463094639_)))))
                      (_E9463094639_)))))
          (_E9462994654_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_stx94597_)
        (let* ((_e9459894605_ _stx94597_)
               (_E9460094609_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9459894605_)))
               (_E9459994623_
                (lambda ()
                  (if (gx#stx-pair? _e9459894605_)
                      (let ((_e9460194613_ (gx#syntax-e _e9459894605_)))
                        (let ((_hd9460294616_ (##car _e9460194613_))
                              (_tl9460394618_ (##cdr _e9460194613_)))
                          (let ((_body94621_ _tl9460394618_))
                            (if '#t
                                (cons '%#begin-foreign _body94621_)
                                (_E9460094609_)))))
                      (_E9460094609_)))))
          (_E9459994623_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_stx94543_)
        (let* ((_e9454494557_ _stx94543_)
               (_E9454694561_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9454494557_)))
               (_E9454594593_
                (lambda ()
                  (if (gx#stx-pair? _e9454494557_)
                      (let ((_e9454794565_ (gx#syntax-e _e9454494557_)))
                        (let ((_hd9454894568_ (##car _e9454794565_))
                              (_tl9454994570_ (##cdr _e9454794565_)))
                          (if (gx#stx-pair? _tl9454994570_)
                              (let ((_e9455094573_
                                     (gx#syntax-e _tl9454994570_)))
                                (let ((_hd9455194576_ (##car _e9455094573_))
                                      (_tl9455294578_ (##cdr _e9455094573_)))
                                  (let ((_ann94581_ _hd9455194576_))
                                    (if (gx#stx-pair? _tl9455294578_)
                                        (let ((_e9455394583_
                                               (gx#syntax-e _tl9455294578_)))
                                          (let ((_hd9455494586_
                                                 (##car _e9455394583_))
                                                (_tl9455594588_
                                                 (##cdr _e9455394583_)))
                                            (let ((_expr94591_ _hd9455494586_))
                                              (if (gx#stx-null? _tl9455594588_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr94591_)
                                                      (_E9454694561_))
                                                  (_E9454694561_)))))
                                        (_E9454694561_)))))
                              (_E9454694561_))))
                      (_E9454694561_)))))
          (_E9454594593_))))
    (define gx#core-compile-top-import%
      (lambda (_stx94513_)
        (let* ((_e9451494521_ _stx94513_)
               (_E9451694525_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9451494521_)))
               (_E9451594539_
                (lambda ()
                  (if (gx#stx-pair? _e9451494521_)
                      (let ((_e9451794529_ (gx#syntax-e _e9451494521_)))
                        (let ((_hd9451894532_ (##car _e9451794529_))
                              (_tl9451994534_ (##cdr _e9451794529_)))
                          (let ((_body94537_ _tl9451994534_))
                            (if '#t
                                (cons '%#import _body94537_)
                                (_E9451694525_)))))
                      (_E9451694525_)))))
          (_E9451594539_))))
    (define gx#core-compile-top-module%
      (lambda (_stx94470_)
        (let* ((_e9447194481_ _stx94470_)
               (_E9447394485_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9447194481_)))
               (_E9447294509_
                (lambda ()
                  (if (gx#stx-pair? _e9447194481_)
                      (let ((_e9447494489_ (gx#syntax-e _e9447194481_)))
                        (let ((_hd9447594492_ (##car _e9447494489_))
                              (_tl9447694494_ (##cdr _e9447494489_)))
                          (if (gx#stx-pair? _tl9447694494_)
                              (let ((_e9447794497_
                                     (gx#syntax-e _tl9447694494_)))
                                (let ((_hd9447894500_ (##car _e9447794497_))
                                      (_tl9447994502_ (##cdr _e9447794497_)))
                                  (let* ((_hd94505_ _hd9447894500_)
                                         (_body94507_ _tl9447994502_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _hd94505_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body94507_)))
                                        (_E9447394485_)))))
                              (_E9447394485_))))
                      (_E9447394485_)))))
          (_E9447294509_))))
    (define gx#core-compile-top-export%
      (lambda (_stx94440_)
        (let* ((_e9444194448_ _stx94440_)
               (_E9444394452_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9444194448_)))
               (_E9444294466_
                (lambda ()
                  (if (gx#stx-pair? _e9444194448_)
                      (let ((_e9444494456_ (gx#syntax-e _e9444194448_)))
                        (let ((_hd9444594459_ (##car _e9444494456_))
                              (_tl9444694461_ (##cdr _e9444494456_)))
                          (let ((_body94464_ _tl9444694461_))
                            (if '#t
                                (cons '%#export _body94464_)
                                (_E9444394452_)))))
                      (_E9444394452_)))))
          (_E9444294466_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx94410_)
        (let* ((_e9441194418_ _stx94410_)
               (_E9441394422_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9441194418_)))
               (_E9441294436_
                (lambda ()
                  (if (gx#stx-pair? _e9441194418_)
                      (let ((_e9441494426_ (gx#syntax-e _e9441194418_)))
                        (let ((_hd9441594429_ (##car _e9441494426_))
                              (_tl9441694431_ (##cdr _e9441494426_)))
                          (let ((_body94434_ _tl9441694431_))
                            (if '#t
                                (cons '%#provide _body94434_)
                                (_E9441394422_)))))
                      (_E9441394422_)))))
          (_E9441294436_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx94380_)
        (let* ((_e9438194388_ _stx94380_)
               (_E9438394392_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9438194388_)))
               (_E9438294406_
                (lambda ()
                  (if (gx#stx-pair? _e9438194388_)
                      (let ((_e9438494396_ (gx#syntax-e _e9438194388_)))
                        (let ((_hd9438594399_ (##car _e9438494396_))
                              (_tl9438694401_ (##cdr _e9438494396_)))
                          (let ((_body94404_ _tl9438694401_))
                            (if '#t
                                (cons '%#extern _body94404_)
                                (_E9438394392_)))))
                      (_E9438394392_)))))
          (_E9438294406_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx94326_)
        (let* ((_e9432794340_ _stx94326_)
               (_E9432994344_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9432794340_)))
               (_E9432894376_
                (lambda ()
                  (if (gx#stx-pair? _e9432794340_)
                      (let ((_e9433094348_ (gx#syntax-e _e9432794340_)))
                        (let ((_hd9433194351_ (##car _e9433094348_))
                              (_tl9433294353_ (##cdr _e9433094348_)))
                          (if (gx#stx-pair? _tl9433294353_)
                              (let ((_e9433394356_
                                     (gx#syntax-e _tl9433294353_)))
                                (let ((_hd9433494359_ (##car _e9433394356_))
                                      (_tl9433594361_ (##cdr _e9433394356_)))
                                  (let ((_hd94364_ _hd9433494359_))
                                    (if (gx#stx-pair? _tl9433594361_)
                                        (let ((_e9433694366_
                                               (gx#syntax-e _tl9433594361_)))
                                          (let ((_hd9433794369_
                                                 (##car _e9433694366_))
                                                (_tl9433894371_
                                                 (##cdr _e9433694366_)))
                                            (let ((_expr94374_ _hd9433794369_))
                                              (if (gx#stx-null? _tl9433894371_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd94364_)
                          (cons (gx#core-compile-top-syntax _expr94374_) '())))
              (_E9432994344_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9432994344_)))))
                                        (_E9432994344_)))))
                              (_E9432994344_))))
                      (_E9432994344_)))))
          (_E9432894376_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx94271_)
        (let* ((_e9427294285_ _stx94271_)
               (_E9427494289_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9427294285_)))
               (_E9427394322_
                (lambda ()
                  (if (gx#stx-pair? _e9427294285_)
                      (let ((_e9427594293_ (gx#syntax-e _e9427294285_)))
                        (let ((_hd9427694296_ (##car _e9427594293_))
                              (_tl9427794298_ (##cdr _e9427594293_)))
                          (if (gx#stx-pair? _tl9427794298_)
                              (let ((_e9427894301_
                                     (gx#syntax-e _tl9427794298_)))
                                (let ((_hd9427994304_ (##car _e9427894301_))
                                      (_tl9428094306_ (##cdr _e9427894301_)))
                                  (let ((_hd94309_ _hd9427994304_))
                                    (if (gx#stx-pair? _tl9428094306_)
                                        (let ((_e9428194311_
                                               (gx#syntax-e _tl9428094306_)))
                                          (let ((_hd9428294314_
                                                 (##car _e9428194311_))
                                                (_tl9428394316_
                                                 (##cdr _e9428194311_)))
                                            (let ((_expr94319_ _hd9428294314_))
                                              (if (gx#stx-null? _tl9428394316_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd94309_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr94319_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E9427494289_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9427494289_)))))
                                        (_E9427494289_)))))
                              (_E9427494289_))))
                      (_E9427494289_)))))
          (_E9427394322_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx94241_)
        (let* ((_e9424294249_ _stx94241_)
               (_E9424494253_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9424294249_)))
               (_E9424394267_
                (lambda ()
                  (if (gx#stx-pair? _e9424294249_)
                      (let ((_e9424594257_ (gx#syntax-e _e9424294249_)))
                        (let ((_hd9424694260_ (##car _e9424594257_))
                              (_tl9424794262_ (##cdr _e9424594257_)))
                          (let ((_body94265_ _tl9424794262_))
                            (if '#t
                                (cons '%#define-alias _body94265_)
                                (_E9424494253_)))))
                      (_E9424494253_)))))
          (_E9424394267_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx94211_)
        (let* ((_e9421294219_ _stx94211_)
               (_E9421494223_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9421294219_)))
               (_E9421394237_
                (lambda ()
                  (if (gx#stx-pair? _e9421294219_)
                      (let ((_e9421594227_ (gx#syntax-e _e9421294219_)))
                        (let ((_hd9421694230_ (##car _e9421594227_))
                              (_tl9421794232_ (##cdr _e9421594227_)))
                          (let ((_body94235_ _tl9421794232_))
                            (if '#t
                                (cons '%#define-runtime _body94235_)
                                (_E9421494223_)))))
                      (_E9421494223_)))))
          (_E9421394237_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx94181_)
        (let* ((_e9418294189_ _stx94181_)
               (_E9418494193_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9418294189_)))
               (_E9418394207_
                (lambda ()
                  (if (gx#stx-pair? _e9418294189_)
                      (let ((_e9418594197_ (gx#syntax-e _e9418294189_)))
                        (let ((_hd9418694200_ (##car _e9418594197_))
                              (_tl9418794202_ (##cdr _e9418594197_)))
                          (let ((_decls94205_ _tl9418794202_))
                            (if '#t
                                (cons '%#declare _decls94205_)
                                (_E9418494193_)))))
                      (_E9418494193_)))))
          (_E9418394207_))))
    (define gx#core-compile-top-lambda%
      (lambda (_stx94151_)
        (let* ((_e9415294159_ _stx94151_)
               (_E9415494163_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9415294159_)))
               (_E9415394177_
                (lambda ()
                  (if (gx#stx-pair? _e9415294159_)
                      (let ((_e9415594167_ (gx#syntax-e _e9415294159_)))
                        (let ((_hd9415694170_ (##car _e9415594167_))
                              (_tl9415794172_ (##cdr _e9415594167_)))
                          (let ((_clause94175_ _tl9415794172_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause94175_))
                                (_E9415494163_)))))
                      (_E9415494163_)))))
          (_E9415394177_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx94108_)
        (let* ((_e9410994119_ _stx94108_)
               (_E9411194123_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9410994119_)))
               (_E9411094147_
                (lambda ()
                  (if (gx#stx-pair? _e9410994119_)
                      (let ((_e9411294127_ (gx#syntax-e _e9410994119_)))
                        (let ((_hd9411394130_ (##car _e9411294127_))
                              (_tl9411494132_ (##cdr _e9411294127_)))
                          (let ((_hd94135_ _hd9411394130_))
                            (if (gx#stx-pair? _tl9411494132_)
                                (let ((_e9411594137_
                                       (gx#syntax-e _tl9411494132_)))
                                  (let ((_hd9411694140_ (##car _e9411594137_))
                                        (_tl9411794142_ (##cdr _e9411594137_)))
                                    (let ((_body94145_ _hd9411694140_))
                                      (if (gx#stx-null? _tl9411794142_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd94135_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body94145_)
                                                          '()))
                                              (_E9411194123_))
                                          (_E9411194123_)))))
                                (_E9411194123_)))))
                      (_E9411194123_)))))
          (_E9411094147_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx94078_)
        (let* ((_e9407994086_ _stx94078_)
               (_E9408194090_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9407994086_)))
               (_E9408094104_
                (lambda ()
                  (if (gx#stx-pair? _e9407994086_)
                      (let ((_e9408294094_ (gx#syntax-e _e9407994086_)))
                        (let ((_hd9408394097_ (##car _e9408294094_))
                              (_tl9408494099_ (##cdr _e9408294094_)))
                          (let ((_clauses94102_ _tl9408494099_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses94102_))
                                (_E9408194090_)))))
                      (_E9408194090_)))))
          (_E9408094104_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx94013_ _form94014_)
        (let* ((_e9401594028_ _stx94013_)
               (_E9401794032_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9401594028_)))
               (_E9401694064_
                (lambda ()
                  (if (gx#stx-pair? _e9401594028_)
                      (let ((_e9401894036_ (gx#syntax-e _e9401594028_)))
                        (let ((_hd9401994039_ (##car _e9401894036_))
                              (_tl9402094041_ (##cdr _e9401894036_)))
                          (if (gx#stx-pair? _tl9402094041_)
                              (let ((_e9402194044_
                                     (gx#syntax-e _tl9402094041_)))
                                (let ((_hd9402294047_ (##car _e9402194044_))
                                      (_tl9402394049_ (##cdr _e9402194044_)))
                                  (let ((_hd94052_ _hd9402294047_))
                                    (if (gx#stx-pair? _tl9402394049_)
                                        (let ((_e9402494054_
                                               (gx#syntax-e _tl9402394049_)))
                                          (let ((_hd9402594057_
                                                 (##car _e9402494054_))
                                                (_tl9402694059_
                                                 (##cdr _e9402494054_)))
                                            (let ((_body94062_ _hd9402594057_))
                                              (if (gx#stx-null? _tl9402694059_)
                                                  (if '#t
                                                      (cons _form94014_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd94052_)
                          (cons (gx#core-compile-top-syntax _body94062_) '())))
              (_E9401794032_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9401794032_)))))
                                        (_E9401794032_)))))
                              (_E9401794032_))))
                      (_E9401794032_)))))
          (_E9401694064_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx94071_)
        (let ((_form94073_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx94071_ _form94073_))))
    (define gx#core-compile-top-let-values%
      (lambda _g94886_
        (let ((_g94885_ (##length _g94886_)))
          (cond ((##fx= _g94885_ 1)
                 (apply (lambda (_stx94071_)
                          (gx#core-compile-top-let-values%__0 _stx94071_))
                        _g94886_))
                ((##fx= _g94885_ 2)
                 (apply (lambda (_stx94075_ _form94076_)
                          (gx#core-compile-top-let-values%__%
                           _stx94075_
                           _form94076_))
                        _g94886_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g94886_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx94010_)
        (gx#core-compile-top-let-values%__% _stx94010_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx94008_)
        (gx#core-compile-top-let-values%__% _stx94008_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx93967_)
        (let* ((_e9396893978_ _stx93967_)
               (_E9397093982_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9396893978_)))
               (_E9396994004_
                (lambda ()
                  (if (gx#stx-pair? _e9396893978_)
                      (let ((_e9397193986_ (gx#syntax-e _e9396893978_)))
                        (let ((_hd9397293989_ (##car _e9397193986_))
                              (_tl9397393991_ (##cdr _e9397193986_)))
                          (if (gx#stx-pair? _tl9397393991_)
                              (let ((_e9397493994_
                                     (gx#syntax-e _tl9397393991_)))
                                (let ((_hd9397593997_ (##car _e9397493994_))
                                      (_tl9397693999_ (##cdr _e9397493994_)))
                                  (let ((_e94002_ _hd9397593997_))
                                    (if (gx#stx-null? _tl9397693999_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e94002_)
                                                        '()))
                                            (_E9397093982_))
                                        (_E9397093982_)))))
                              (_E9397093982_))))
                      (_E9397093982_)))))
          (_E9396994004_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx93926_)
        (let* ((_e9392793937_ _stx93926_)
               (_E9392993941_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9392793937_)))
               (_E9392893963_
                (lambda ()
                  (if (gx#stx-pair? _e9392793937_)
                      (let ((_e9393093945_ (gx#syntax-e _e9392793937_)))
                        (let ((_hd9393193948_ (##car _e9393093945_))
                              (_tl9393293950_ (##cdr _e9393093945_)))
                          (if (gx#stx-pair? _tl9393293950_)
                              (let ((_e9393393953_
                                     (gx#syntax-e _tl9393293950_)))
                                (let ((_hd9393493956_ (##car _e9393393953_))
                                      (_tl9393593958_ (##cdr _e9393393953_)))
                                  (let ((_e93961_ _hd9393493956_))
                                    (if (gx#stx-null? _tl9393593958_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e93961_)
                                                        '()))
                                            (_E9392993941_))
                                        (_E9392993941_)))))
                              (_E9392993941_))))
                      (_E9392993941_)))))
          (_E9392893963_))))
    (define gx#core-compile-top-call%
      (lambda (_stx93883_)
        (let* ((_e9388493894_ _stx93883_)
               (_E9388693898_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9388493894_)))
               (_E9388593922_
                (lambda ()
                  (if (gx#stx-pair? _e9388493894_)
                      (let ((_e9388793902_ (gx#syntax-e _e9388493894_)))
                        (let ((_hd9388893905_ (##car _e9388793902_))
                              (_tl9388993907_ (##cdr _e9388793902_)))
                          (if (gx#stx-pair? _tl9388993907_)
                              (let ((_e9389093910_
                                     (gx#syntax-e _tl9388993907_)))
                                (let ((_hd9389193913_ (##car _e9389093910_))
                                      (_tl9389293915_ (##cdr _e9389093910_)))
                                  (let* ((_rator93918_ _hd9389193913_)
                                         (_args93920_ _tl9389293915_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator93918_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args93920_)))
                                        (_E9388693898_)))))
                              (_E9388693898_))))
                      (_E9388693898_)))))
          (_E9388593922_))))
    (define gx#core-compile-top-if%
      (lambda (_stx93816_)
        (let* ((_e9381793833_ _stx93816_)
               (_E9381993837_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9381793833_)))
               (_E9381893879_
                (lambda ()
                  (if (gx#stx-pair? _e9381793833_)
                      (let ((_e9382093841_ (gx#syntax-e _e9381793833_)))
                        (let ((_hd9382193844_ (##car _e9382093841_))
                              (_tl9382293846_ (##cdr _e9382093841_)))
                          (if (gx#stx-pair? _tl9382293846_)
                              (let ((_e9382393849_
                                     (gx#syntax-e _tl9382293846_)))
                                (let ((_hd9382493852_ (##car _e9382393849_))
                                      (_tl9382593854_ (##cdr _e9382393849_)))
                                  (let ((_test93857_ _hd9382493852_))
                                    (if (gx#stx-pair? _tl9382593854_)
                                        (let ((_e9382693859_
                                               (gx#syntax-e _tl9382593854_)))
                                          (let ((_hd9382793862_
                                                 (##car _e9382693859_))
                                                (_tl9382893864_
                                                 (##cdr _e9382693859_)))
                                            (let ((_K93867_ _hd9382793862_))
                                              (if (gx#stx-pair? _tl9382893864_)
                                                  (let ((_e9382993869_
                                                         (gx#syntax-e
                                                          _tl9382893864_)))
                                                    (let ((_hd9383093872_
                                                           (##car _e9382993869_))
                                                          (_tl9383193874_
                                                           (##cdr _e9382993869_)))
                                                      (let ((_E93877_
                                                             _hd9383093872_))
                                                        (if (gx#stx-null?
                                                             _tl9383193874_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test93857_)
                                    (cons (gx#core-compile-top-syntax _K93867_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E93877_)
                                                '()))))
                        (_E9381993837_))
                    (_E9381993837_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9381993837_)))))
                                        (_E9381993837_)))))
                              (_E9381993837_))))
                      (_E9381993837_)))))
          (_E9381893879_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx93775_)
        (let* ((_e9377693786_ _stx93775_)
               (_E9377893790_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9377693786_)))
               (_E9377793812_
                (lambda ()
                  (if (gx#stx-pair? _e9377693786_)
                      (let ((_e9377993794_ (gx#syntax-e _e9377693786_)))
                        (let ((_hd9378093797_ (##car _e9377993794_))
                              (_tl9378193799_ (##cdr _e9377993794_)))
                          (if (gx#stx-pair? _tl9378193799_)
                              (let ((_e9378293802_
                                     (gx#syntax-e _tl9378193799_)))
                                (let ((_hd9378393805_ (##car _e9378293802_))
                                      (_tl9378493807_ (##cdr _e9378293802_)))
                                  (let ((_id93810_ _hd9378393805_))
                                    (if (gx#stx-null? _tl9378493807_)
                                        (if (gx#identifier? _id93810_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id93810_)
                                                        '()))
                                            (_E9377893790_))
                                        (_E9377893790_)))))
                              (_E9377893790_))))
                      (_E9377893790_)))))
          (_E9377793812_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx93721_)
        (let* ((_e9372293735_ _stx93721_)
               (_E9372493739_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9372293735_)))
               (_E9372393771_
                (lambda ()
                  (if (gx#stx-pair? _e9372293735_)
                      (let ((_e9372593743_ (gx#syntax-e _e9372293735_)))
                        (let ((_hd9372693746_ (##car _e9372593743_))
                              (_tl9372793748_ (##cdr _e9372593743_)))
                          (if (gx#stx-pair? _tl9372793748_)
                              (let ((_e9372893751_
                                     (gx#syntax-e _tl9372793748_)))
                                (let ((_hd9372993754_ (##car _e9372893751_))
                                      (_tl9373093756_ (##cdr _e9372893751_)))
                                  (let ((_id93759_ _hd9372993754_))
                                    (if (gx#stx-pair? _tl9373093756_)
                                        (let ((_e9373193761_
                                               (gx#syntax-e _tl9373093756_)))
                                          (let ((_hd9373293764_
                                                 (##car _e9373193761_))
                                                (_tl9373393766_
                                                 (##cdr _e9373193761_)))
                                            (let ((_expr93769_ _hd9373293764_))
                                              (if (gx#stx-null? _tl9373393766_)
                                                  (if (gx#identifier?
                                                       _id93759_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id93759_)
                          (cons (gx#core-compile-top-syntax _expr93769_) '())))
              (_E9372493739_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9372493739_)))))
                                        (_E9372493739_)))))
                              (_E9372493739_))))
                      (_E9372493739_)))))
          (_E9372393771_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id93716_)
        (let ((_$e93718_ (gx#resolve-identifier__0 _id93716_)))
          (if _$e93718_
              (##unchecked-structure-ref _$e93718_ '1 gx#binding::t '#f)
              _id93716_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd93714_)
        (if (gx#identifier? _hd93714_)
            (gx#core-compile-top-runtime-ref _hd93714_)
            '#f)))))
