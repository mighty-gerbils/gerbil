(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1709128372)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx94857_)
        (let* ((_e9485894865_ _stx94857_)
               (_E9486094869_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9485894865_)))
               (_E9485994883_
                (lambda ()
                  (if (gx#stx-pair? _e9485894865_)
                      (let ((_e9486194873_ (gx#syntax-e _e9485894865_)))
                        (let ((_hd9486294876_ (##car _e9486194873_))
                              (_tl9486394878_ (##cdr _e9486194873_)))
                          (let ((_form94881_ _hd9486294876_))
                            (if '#t
                                (let* ((__self94886
                                        (gx#syntax-local-e__0 _form94881_))
                                       (__method94887
                                        (method-ref
                                         __self94886
                                         'compile-top-syntax)))
                                  (if __method94887
                                      (__method94887 __self94886 _stx94857_)
                                      (error '"Missing method"
                                             __self94886
                                             'compile-top-syntax)))
                                (_E9486094869_)))))
                      (_E9486094869_)))))
          (_E9485994883_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self94817_ _stx94818_)
        (let* ((_self9481994827_ _self94817_)
               (_E9482194831_
                (lambda () (error '"No clause matching" _self9481994827_)))
               (_K9482294843_
                (lambda (_K94834_)
                  (let ((_$e94836_ (gx#stx-source _stx94818_)))
                    (if _$e94836_
                        ((lambda (_g9483894840_)
                           (gx#stx-wrap-source
                            (_K94834_ _stx94818_)
                            _g9483894840_))
                         _$e94836_)
                        (_K94834_ _stx94818_))))))
          (if (##structure-instance-of? _self9481994827_ 'gx#core-expander::t)
              (let* ((_e9482394846_
                      (##unchecked-structure-ref
                       _self9481994827_
                       '1
                       gx#expander::t
                       '#f))
                     (_e9482494849_
                      (##unchecked-structure-ref
                       _self9481994827_
                       '2
                       gx#core-expander::t
                       '#f))
                     (_e9482594852_
                      (##unchecked-structure-ref
                       _self9481994827_
                       '3
                       gx#core-expander::t
                       '#f))
                     (_K94855_ _e9482594852_))
                (_K9482294843_ _K94855_))
              (_E9482194831_)))))
    (bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx94691_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx94691_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx94661_)
        (let* ((_e9466294669_ _stx94661_)
               (_E9466494673_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9466294669_)))
               (_E9466394687_
                (lambda ()
                  (if (gx#stx-pair? _e9466294669_)
                      (let ((_e9466594677_ (gx#syntax-e _e9466294669_)))
                        (let ((_hd9466694680_ (##car _e9466594677_))
                              (_tl9466794682_ (##cdr _e9466594677_)))
                          (let ((_body94685_ _tl9466794682_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body94685_))
                                (_E9466494673_)))))
                      (_E9466494673_)))))
          (_E9466394687_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx94630_)
        (let* ((_e9463194638_ _stx94630_)
               (_E9463394642_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9463194638_)))
               (_E9463294657_
                (lambda ()
                  (if (gx#stx-pair? _e9463194638_)
                      (let ((_e9463494646_ (gx#syntax-e _e9463194638_)))
                        (let ((_hd9463594649_ (##car _e9463494646_))
                              (_tl9463694651_ (##cdr _e9463494646_)))
                          (let ((_body94654_ _tl9463694651_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body94654_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E9463394642_)))))
                      (_E9463394642_)))))
          (_E9463294657_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_stx94600_)
        (let* ((_e9460194608_ _stx94600_)
               (_E9460394612_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9460194608_)))
               (_E9460294626_
                (lambda ()
                  (if (gx#stx-pair? _e9460194608_)
                      (let ((_e9460494616_ (gx#syntax-e _e9460194608_)))
                        (let ((_hd9460594619_ (##car _e9460494616_))
                              (_tl9460694621_ (##cdr _e9460494616_)))
                          (let ((_body94624_ _tl9460694621_))
                            (if '#t
                                (cons '%#begin-foreign _body94624_)
                                (_E9460394612_)))))
                      (_E9460394612_)))))
          (_E9460294626_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_stx94546_)
        (let* ((_e9454794560_ _stx94546_)
               (_E9454994564_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9454794560_)))
               (_E9454894596_
                (lambda ()
                  (if (gx#stx-pair? _e9454794560_)
                      (let ((_e9455094568_ (gx#syntax-e _e9454794560_)))
                        (let ((_hd9455194571_ (##car _e9455094568_))
                              (_tl9455294573_ (##cdr _e9455094568_)))
                          (if (gx#stx-pair? _tl9455294573_)
                              (let ((_e9455394576_
                                     (gx#syntax-e _tl9455294573_)))
                                (let ((_hd9455494579_ (##car _e9455394576_))
                                      (_tl9455594581_ (##cdr _e9455394576_)))
                                  (let ((_ann94584_ _hd9455494579_))
                                    (if (gx#stx-pair? _tl9455594581_)
                                        (let ((_e9455694586_
                                               (gx#syntax-e _tl9455594581_)))
                                          (let ((_hd9455794589_
                                                 (##car _e9455694586_))
                                                (_tl9455894591_
                                                 (##cdr _e9455694586_)))
                                            (let ((_expr94594_ _hd9455794589_))
                                              (if (gx#stx-null? _tl9455894591_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr94594_)
                                                      (_E9454994564_))
                                                  (_E9454994564_)))))
                                        (_E9454994564_)))))
                              (_E9454994564_))))
                      (_E9454994564_)))))
          (_E9454894596_))))
    (define gx#core-compile-top-import%
      (lambda (_stx94516_)
        (let* ((_e9451794524_ _stx94516_)
               (_E9451994528_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9451794524_)))
               (_E9451894542_
                (lambda ()
                  (if (gx#stx-pair? _e9451794524_)
                      (let ((_e9452094532_ (gx#syntax-e _e9451794524_)))
                        (let ((_hd9452194535_ (##car _e9452094532_))
                              (_tl9452294537_ (##cdr _e9452094532_)))
                          (let ((_body94540_ _tl9452294537_))
                            (if '#t
                                (cons '%#import _body94540_)
                                (_E9451994528_)))))
                      (_E9451994528_)))))
          (_E9451894542_))))
    (define gx#core-compile-top-module%
      (lambda (_stx94473_)
        (let* ((_e9447494484_ _stx94473_)
               (_E9447694488_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9447494484_)))
               (_E9447594512_
                (lambda ()
                  (if (gx#stx-pair? _e9447494484_)
                      (let ((_e9447794492_ (gx#syntax-e _e9447494484_)))
                        (let ((_hd9447894495_ (##car _e9447794492_))
                              (_tl9447994497_ (##cdr _e9447794492_)))
                          (if (gx#stx-pair? _tl9447994497_)
                              (let ((_e9448094500_
                                     (gx#syntax-e _tl9447994497_)))
                                (let ((_hd9448194503_ (##car _e9448094500_))
                                      (_tl9448294505_ (##cdr _e9448094500_)))
                                  (let* ((_hd94508_ _hd9448194503_)
                                         (_body94510_ _tl9448294505_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _hd94508_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body94510_)))
                                        (_E9447694488_)))))
                              (_E9447694488_))))
                      (_E9447694488_)))))
          (_E9447594512_))))
    (define gx#core-compile-top-export%
      (lambda (_stx94443_)
        (let* ((_e9444494451_ _stx94443_)
               (_E9444694455_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9444494451_)))
               (_E9444594469_
                (lambda ()
                  (if (gx#stx-pair? _e9444494451_)
                      (let ((_e9444794459_ (gx#syntax-e _e9444494451_)))
                        (let ((_hd9444894462_ (##car _e9444794459_))
                              (_tl9444994464_ (##cdr _e9444794459_)))
                          (let ((_body94467_ _tl9444994464_))
                            (if '#t
                                (cons '%#export _body94467_)
                                (_E9444694455_)))))
                      (_E9444694455_)))))
          (_E9444594469_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx94413_)
        (let* ((_e9441494421_ _stx94413_)
               (_E9441694425_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9441494421_)))
               (_E9441594439_
                (lambda ()
                  (if (gx#stx-pair? _e9441494421_)
                      (let ((_e9441794429_ (gx#syntax-e _e9441494421_)))
                        (let ((_hd9441894432_ (##car _e9441794429_))
                              (_tl9441994434_ (##cdr _e9441794429_)))
                          (let ((_body94437_ _tl9441994434_))
                            (if '#t
                                (cons '%#provide _body94437_)
                                (_E9441694425_)))))
                      (_E9441694425_)))))
          (_E9441594439_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx94383_)
        (let* ((_e9438494391_ _stx94383_)
               (_E9438694395_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9438494391_)))
               (_E9438594409_
                (lambda ()
                  (if (gx#stx-pair? _e9438494391_)
                      (let ((_e9438794399_ (gx#syntax-e _e9438494391_)))
                        (let ((_hd9438894402_ (##car _e9438794399_))
                              (_tl9438994404_ (##cdr _e9438794399_)))
                          (let ((_body94407_ _tl9438994404_))
                            (if '#t
                                (cons '%#extern _body94407_)
                                (_E9438694395_)))))
                      (_E9438694395_)))))
          (_E9438594409_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx94329_)
        (let* ((_e9433094343_ _stx94329_)
               (_E9433294347_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9433094343_)))
               (_E9433194379_
                (lambda ()
                  (if (gx#stx-pair? _e9433094343_)
                      (let ((_e9433394351_ (gx#syntax-e _e9433094343_)))
                        (let ((_hd9433494354_ (##car _e9433394351_))
                              (_tl9433594356_ (##cdr _e9433394351_)))
                          (if (gx#stx-pair? _tl9433594356_)
                              (let ((_e9433694359_
                                     (gx#syntax-e _tl9433594356_)))
                                (let ((_hd9433794362_ (##car _e9433694359_))
                                      (_tl9433894364_ (##cdr _e9433694359_)))
                                  (let ((_hd94367_ _hd9433794362_))
                                    (if (gx#stx-pair? _tl9433894364_)
                                        (let ((_e9433994369_
                                               (gx#syntax-e _tl9433894364_)))
                                          (let ((_hd9434094372_
                                                 (##car _e9433994369_))
                                                (_tl9434194374_
                                                 (##cdr _e9433994369_)))
                                            (let ((_expr94377_ _hd9434094372_))
                                              (if (gx#stx-null? _tl9434194374_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd94367_)
                          (cons (gx#core-compile-top-syntax _expr94377_) '())))
              (_E9433294347_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9433294347_)))))
                                        (_E9433294347_)))))
                              (_E9433294347_))))
                      (_E9433294347_)))))
          (_E9433194379_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx94274_)
        (let* ((_e9427594288_ _stx94274_)
               (_E9427794292_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9427594288_)))
               (_E9427694325_
                (lambda ()
                  (if (gx#stx-pair? _e9427594288_)
                      (let ((_e9427894296_ (gx#syntax-e _e9427594288_)))
                        (let ((_hd9427994299_ (##car _e9427894296_))
                              (_tl9428094301_ (##cdr _e9427894296_)))
                          (if (gx#stx-pair? _tl9428094301_)
                              (let ((_e9428194304_
                                     (gx#syntax-e _tl9428094301_)))
                                (let ((_hd9428294307_ (##car _e9428194304_))
                                      (_tl9428394309_ (##cdr _e9428194304_)))
                                  (let ((_hd94312_ _hd9428294307_))
                                    (if (gx#stx-pair? _tl9428394309_)
                                        (let ((_e9428494314_
                                               (gx#syntax-e _tl9428394309_)))
                                          (let ((_hd9428594317_
                                                 (##car _e9428494314_))
                                                (_tl9428694319_
                                                 (##cdr _e9428494314_)))
                                            (let ((_expr94322_ _hd9428594317_))
                                              (if (gx#stx-null? _tl9428694319_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd94312_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr94322_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E9427794292_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9427794292_)))))
                                        (_E9427794292_)))))
                              (_E9427794292_))))
                      (_E9427794292_)))))
          (_E9427694325_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx94244_)
        (let* ((_e9424594252_ _stx94244_)
               (_E9424794256_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9424594252_)))
               (_E9424694270_
                (lambda ()
                  (if (gx#stx-pair? _e9424594252_)
                      (let ((_e9424894260_ (gx#syntax-e _e9424594252_)))
                        (let ((_hd9424994263_ (##car _e9424894260_))
                              (_tl9425094265_ (##cdr _e9424894260_)))
                          (let ((_body94268_ _tl9425094265_))
                            (if '#t
                                (cons '%#define-alias _body94268_)
                                (_E9424794256_)))))
                      (_E9424794256_)))))
          (_E9424694270_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx94214_)
        (let* ((_e9421594222_ _stx94214_)
               (_E9421794226_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9421594222_)))
               (_E9421694240_
                (lambda ()
                  (if (gx#stx-pair? _e9421594222_)
                      (let ((_e9421894230_ (gx#syntax-e _e9421594222_)))
                        (let ((_hd9421994233_ (##car _e9421894230_))
                              (_tl9422094235_ (##cdr _e9421894230_)))
                          (let ((_body94238_ _tl9422094235_))
                            (if '#t
                                (cons '%#define-runtime _body94238_)
                                (_E9421794226_)))))
                      (_E9421794226_)))))
          (_E9421694240_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx94184_)
        (let* ((_e9418594192_ _stx94184_)
               (_E9418794196_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9418594192_)))
               (_E9418694210_
                (lambda ()
                  (if (gx#stx-pair? _e9418594192_)
                      (let ((_e9418894200_ (gx#syntax-e _e9418594192_)))
                        (let ((_hd9418994203_ (##car _e9418894200_))
                              (_tl9419094205_ (##cdr _e9418894200_)))
                          (let ((_decls94208_ _tl9419094205_))
                            (if '#t
                                (cons '%#declare _decls94208_)
                                (_E9418794196_)))))
                      (_E9418794196_)))))
          (_E9418694210_))))
    (define gx#core-compile-top-lambda%
      (lambda (_stx94154_)
        (let* ((_e9415594162_ _stx94154_)
               (_E9415794166_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9415594162_)))
               (_E9415694180_
                (lambda ()
                  (if (gx#stx-pair? _e9415594162_)
                      (let ((_e9415894170_ (gx#syntax-e _e9415594162_)))
                        (let ((_hd9415994173_ (##car _e9415894170_))
                              (_tl9416094175_ (##cdr _e9415894170_)))
                          (let ((_clause94178_ _tl9416094175_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause94178_))
                                (_E9415794166_)))))
                      (_E9415794166_)))))
          (_E9415694180_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx94111_)
        (let* ((_e9411294122_ _stx94111_)
               (_E9411494126_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9411294122_)))
               (_E9411394150_
                (lambda ()
                  (if (gx#stx-pair? _e9411294122_)
                      (let ((_e9411594130_ (gx#syntax-e _e9411294122_)))
                        (let ((_hd9411694133_ (##car _e9411594130_))
                              (_tl9411794135_ (##cdr _e9411594130_)))
                          (let ((_hd94138_ _hd9411694133_))
                            (if (gx#stx-pair? _tl9411794135_)
                                (let ((_e9411894140_
                                       (gx#syntax-e _tl9411794135_)))
                                  (let ((_hd9411994143_ (##car _e9411894140_))
                                        (_tl9412094145_ (##cdr _e9411894140_)))
                                    (let ((_body94148_ _hd9411994143_))
                                      (if (gx#stx-null? _tl9412094145_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd94138_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body94148_)
                                                          '()))
                                              (_E9411494126_))
                                          (_E9411494126_)))))
                                (_E9411494126_)))))
                      (_E9411494126_)))))
          (_E9411394150_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx94081_)
        (let* ((_e9408294089_ _stx94081_)
               (_E9408494093_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9408294089_)))
               (_E9408394107_
                (lambda ()
                  (if (gx#stx-pair? _e9408294089_)
                      (let ((_e9408594097_ (gx#syntax-e _e9408294089_)))
                        (let ((_hd9408694100_ (##car _e9408594097_))
                              (_tl9408794102_ (##cdr _e9408594097_)))
                          (let ((_clauses94105_ _tl9408794102_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses94105_))
                                (_E9408494093_)))))
                      (_E9408494093_)))))
          (_E9408394107_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx94016_ _form94017_)
        (let* ((_e9401894031_ _stx94016_)
               (_E9402094035_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9401894031_)))
               (_E9401994067_
                (lambda ()
                  (if (gx#stx-pair? _e9401894031_)
                      (let ((_e9402194039_ (gx#syntax-e _e9401894031_)))
                        (let ((_hd9402294042_ (##car _e9402194039_))
                              (_tl9402394044_ (##cdr _e9402194039_)))
                          (if (gx#stx-pair? _tl9402394044_)
                              (let ((_e9402494047_
                                     (gx#syntax-e _tl9402394044_)))
                                (let ((_hd9402594050_ (##car _e9402494047_))
                                      (_tl9402694052_ (##cdr _e9402494047_)))
                                  (let ((_hd94055_ _hd9402594050_))
                                    (if (gx#stx-pair? _tl9402694052_)
                                        (let ((_e9402794057_
                                               (gx#syntax-e _tl9402694052_)))
                                          (let ((_hd9402894060_
                                                 (##car _e9402794057_))
                                                (_tl9402994062_
                                                 (##cdr _e9402794057_)))
                                            (let ((_body94065_ _hd9402894060_))
                                              (if (gx#stx-null? _tl9402994062_)
                                                  (if '#t
                                                      (cons _form94017_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd94055_)
                          (cons (gx#core-compile-top-syntax _body94065_) '())))
              (_E9402094035_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9402094035_)))))
                                        (_E9402094035_)))))
                              (_E9402094035_))))
                      (_E9402094035_)))))
          (_E9401994067_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx94074_)
        (let ((_form94076_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx94074_ _form94076_))))
    (define gx#core-compile-top-let-values%
      (lambda _g94889_
        (let ((_g94888_ (##length _g94889_)))
          (cond ((##fx= _g94888_ 1)
                 (apply (lambda (_stx94074_)
                          (gx#core-compile-top-let-values%__0 _stx94074_))
                        _g94889_))
                ((##fx= _g94888_ 2)
                 (apply (lambda (_stx94078_ _form94079_)
                          (gx#core-compile-top-let-values%__%
                           _stx94078_
                           _form94079_))
                        _g94889_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g94889_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx94013_)
        (gx#core-compile-top-let-values%__% _stx94013_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx94011_)
        (gx#core-compile-top-let-values%__% _stx94011_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx93970_)
        (let* ((_e9397193981_ _stx93970_)
               (_E9397393985_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9397193981_)))
               (_E9397294007_
                (lambda ()
                  (if (gx#stx-pair? _e9397193981_)
                      (let ((_e9397493989_ (gx#syntax-e _e9397193981_)))
                        (let ((_hd9397593992_ (##car _e9397493989_))
                              (_tl9397693994_ (##cdr _e9397493989_)))
                          (if (gx#stx-pair? _tl9397693994_)
                              (let ((_e9397793997_
                                     (gx#syntax-e _tl9397693994_)))
                                (let ((_hd9397894000_ (##car _e9397793997_))
                                      (_tl9397994002_ (##cdr _e9397793997_)))
                                  (let ((_e94005_ _hd9397894000_))
                                    (if (gx#stx-null? _tl9397994002_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e94005_)
                                                        '()))
                                            (_E9397393985_))
                                        (_E9397393985_)))))
                              (_E9397393985_))))
                      (_E9397393985_)))))
          (_E9397294007_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx93929_)
        (let* ((_e9393093940_ _stx93929_)
               (_E9393293944_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9393093940_)))
               (_E9393193966_
                (lambda ()
                  (if (gx#stx-pair? _e9393093940_)
                      (let ((_e9393393948_ (gx#syntax-e _e9393093940_)))
                        (let ((_hd9393493951_ (##car _e9393393948_))
                              (_tl9393593953_ (##cdr _e9393393948_)))
                          (if (gx#stx-pair? _tl9393593953_)
                              (let ((_e9393693956_
                                     (gx#syntax-e _tl9393593953_)))
                                (let ((_hd9393793959_ (##car _e9393693956_))
                                      (_tl9393893961_ (##cdr _e9393693956_)))
                                  (let ((_e93964_ _hd9393793959_))
                                    (if (gx#stx-null? _tl9393893961_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e93964_)
                                                        '()))
                                            (_E9393293944_))
                                        (_E9393293944_)))))
                              (_E9393293944_))))
                      (_E9393293944_)))))
          (_E9393193966_))))
    (define gx#core-compile-top-call%
      (lambda (_stx93886_)
        (let* ((_e9388793897_ _stx93886_)
               (_E9388993901_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9388793897_)))
               (_E9388893925_
                (lambda ()
                  (if (gx#stx-pair? _e9388793897_)
                      (let ((_e9389093905_ (gx#syntax-e _e9388793897_)))
                        (let ((_hd9389193908_ (##car _e9389093905_))
                              (_tl9389293910_ (##cdr _e9389093905_)))
                          (if (gx#stx-pair? _tl9389293910_)
                              (let ((_e9389393913_
                                     (gx#syntax-e _tl9389293910_)))
                                (let ((_hd9389493916_ (##car _e9389393913_))
                                      (_tl9389593918_ (##cdr _e9389393913_)))
                                  (let* ((_rator93921_ _hd9389493916_)
                                         (_args93923_ _tl9389593918_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator93921_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args93923_)))
                                        (_E9388993901_)))))
                              (_E9388993901_))))
                      (_E9388993901_)))))
          (_E9388893925_))))
    (define gx#core-compile-top-if%
      (lambda (_stx93819_)
        (let* ((_e9382093836_ _stx93819_)
               (_E9382293840_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9382093836_)))
               (_E9382193882_
                (lambda ()
                  (if (gx#stx-pair? _e9382093836_)
                      (let ((_e9382393844_ (gx#syntax-e _e9382093836_)))
                        (let ((_hd9382493847_ (##car _e9382393844_))
                              (_tl9382593849_ (##cdr _e9382393844_)))
                          (if (gx#stx-pair? _tl9382593849_)
                              (let ((_e9382693852_
                                     (gx#syntax-e _tl9382593849_)))
                                (let ((_hd9382793855_ (##car _e9382693852_))
                                      (_tl9382893857_ (##cdr _e9382693852_)))
                                  (let ((_test93860_ _hd9382793855_))
                                    (if (gx#stx-pair? _tl9382893857_)
                                        (let ((_e9382993862_
                                               (gx#syntax-e _tl9382893857_)))
                                          (let ((_hd9383093865_
                                                 (##car _e9382993862_))
                                                (_tl9383193867_
                                                 (##cdr _e9382993862_)))
                                            (let ((_K93870_ _hd9383093865_))
                                              (if (gx#stx-pair? _tl9383193867_)
                                                  (let ((_e9383293872_
                                                         (gx#syntax-e
                                                          _tl9383193867_)))
                                                    (let ((_hd9383393875_
                                                           (##car _e9383293872_))
                                                          (_tl9383493877_
                                                           (##cdr _e9383293872_)))
                                                      (let ((_E93880_
                                                             _hd9383393875_))
                                                        (if (gx#stx-null?
                                                             _tl9383493877_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test93860_)
                                    (cons (gx#core-compile-top-syntax _K93870_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E93880_)
                                                '()))))
                        (_E9382293840_))
                    (_E9382293840_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9382293840_)))))
                                        (_E9382293840_)))))
                              (_E9382293840_))))
                      (_E9382293840_)))))
          (_E9382193882_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx93778_)
        (let* ((_e9377993789_ _stx93778_)
               (_E9378193793_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9377993789_)))
               (_E9378093815_
                (lambda ()
                  (if (gx#stx-pair? _e9377993789_)
                      (let ((_e9378293797_ (gx#syntax-e _e9377993789_)))
                        (let ((_hd9378393800_ (##car _e9378293797_))
                              (_tl9378493802_ (##cdr _e9378293797_)))
                          (if (gx#stx-pair? _tl9378493802_)
                              (let ((_e9378593805_
                                     (gx#syntax-e _tl9378493802_)))
                                (let ((_hd9378693808_ (##car _e9378593805_))
                                      (_tl9378793810_ (##cdr _e9378593805_)))
                                  (let ((_id93813_ _hd9378693808_))
                                    (if (gx#stx-null? _tl9378793810_)
                                        (if (gx#identifier? _id93813_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id93813_)
                                                        '()))
                                            (_E9378193793_))
                                        (_E9378193793_)))))
                              (_E9378193793_))))
                      (_E9378193793_)))))
          (_E9378093815_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx93724_)
        (let* ((_e9372593738_ _stx93724_)
               (_E9372793742_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9372593738_)))
               (_E9372693774_
                (lambda ()
                  (if (gx#stx-pair? _e9372593738_)
                      (let ((_e9372893746_ (gx#syntax-e _e9372593738_)))
                        (let ((_hd9372993749_ (##car _e9372893746_))
                              (_tl9373093751_ (##cdr _e9372893746_)))
                          (if (gx#stx-pair? _tl9373093751_)
                              (let ((_e9373193754_
                                     (gx#syntax-e _tl9373093751_)))
                                (let ((_hd9373293757_ (##car _e9373193754_))
                                      (_tl9373393759_ (##cdr _e9373193754_)))
                                  (let ((_id93762_ _hd9373293757_))
                                    (if (gx#stx-pair? _tl9373393759_)
                                        (let ((_e9373493764_
                                               (gx#syntax-e _tl9373393759_)))
                                          (let ((_hd9373593767_
                                                 (##car _e9373493764_))
                                                (_tl9373693769_
                                                 (##cdr _e9373493764_)))
                                            (let ((_expr93772_ _hd9373593767_))
                                              (if (gx#stx-null? _tl9373693769_)
                                                  (if (gx#identifier?
                                                       _id93762_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id93762_)
                          (cons (gx#core-compile-top-syntax _expr93772_) '())))
              (_E9372793742_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9372793742_)))))
                                        (_E9372793742_)))))
                              (_E9372793742_))))
                      (_E9372793742_)))))
          (_E9372693774_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id93719_)
        (let ((_$e93721_ (gx#resolve-identifier__0 _id93719_)))
          (if _$e93721_
              (##unchecked-structure-ref _$e93721_ '1 gx#binding::t '#f)
              _id93719_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd93717_)
        (if (gx#identifier? _hd93717_)
            (gx#core-compile-top-runtime-ref _hd93717_)
            '#f)))))
