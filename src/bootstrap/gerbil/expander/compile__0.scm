(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1708247275)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx171930_)
        (let* ((_e171931171938_ _stx171930_)
               (_E171933171942_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e171931171938_)))
               (_E171932171956_
                (lambda ()
                  (if (gx#stx-pair? _e171931171938_)
                      (let ((_e171934171946_ (gx#syntax-e _e171931171938_)))
                        (let ((_hd171935171949_ (##car _e171934171946_))
                              (_tl171936171951_ (##cdr _e171934171946_)))
                          (let ((_form171954_ _hd171935171949_))
                            (if '#t
                                (let* ((__self176026
                                        (gx#syntax-local-e__0 _form171954_))
                                       (__method176027
                                        (method-ref
                                         __self176026
                                         'compile-top-syntax)))
                                  (if __method176027
                                      (__method176027 __self176026 _stx171930_)
                                      (error '"Missing method"
                                             __self176026
                                             'compile-top-syntax)))
                                (_E171933171942_)))))
                      (_E171933171942_)))))
          (_E171932171956_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self171890_ _stx171891_)
        (let* ((_self171892171900_ _self171890_)
               (_E171894171904_
                (lambda () (error '"No clause matching" _self171892171900_)))
               (_K171895171916_
                (lambda (_K171907_)
                  (let ((_$e171909_ (gx#stx-source _stx171891_)))
                    (if _$e171909_
                        ((lambda (_g171911171913_)
                           (gx#stx-wrap-source
                            (_K171907_ _stx171891_)
                            _g171911171913_))
                         _$e171909_)
                        (_K171907_ _stx171891_))))))
          (if (##structure-instance-of?
               _self171892171900_
               'gx#core-expander::t)
              (let* ((_e171896171919_
                      (##unchecked-structure-ref
                       _self171892171900_
                       '1
                       gx#expander::t
                       '#f))
                     (_e171897171922_
                      (##unchecked-structure-ref
                       _self171892171900_
                       '2
                       gx#core-expander::t
                       '#f))
                     (_e171898171925_
                      (##unchecked-structure-ref
                       _self171892171900_
                       '3
                       gx#core-expander::t
                       '#f))
                     (_K171928_ _e171898171925_))
                (_K171895171916_ _K171928_))
              (_E171894171904_)))))
    (bind-method!
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx171764_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx171764_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx171734_)
        (let* ((_e171735171742_ _stx171734_)
               (_E171737171746_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e171735171742_)))
               (_E171736171760_
                (lambda ()
                  (if (gx#stx-pair? _e171735171742_)
                      (let ((_e171738171750_ (gx#syntax-e _e171735171742_)))
                        (let ((_hd171739171753_ (##car _e171738171750_))
                              (_tl171740171755_ (##cdr _e171738171750_)))
                          (let ((_body171758_ _tl171740171755_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body171758_))
                                (_E171737171746_)))))
                      (_E171737171746_)))))
          (_E171736171760_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx171703_)
        (let* ((_e171704171711_ _stx171703_)
               (_E171706171715_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e171704171711_)))
               (_E171705171730_
                (lambda ()
                  (if (gx#stx-pair? _e171704171711_)
                      (let ((_e171707171719_ (gx#syntax-e _e171704171711_)))
                        (let ((_hd171708171722_ (##car _e171707171719_))
                              (_tl171709171724_ (##cdr _e171707171719_)))
                          (let ((_body171727_ _tl171709171724_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body171727_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E171706171715_)))))
                      (_E171706171715_)))))
          (_E171705171730_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_stx171673_)
        (let* ((_e171674171681_ _stx171673_)
               (_E171676171685_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e171674171681_)))
               (_E171675171699_
                (lambda ()
                  (if (gx#stx-pair? _e171674171681_)
                      (let ((_e171677171689_ (gx#syntax-e _e171674171681_)))
                        (let ((_hd171678171692_ (##car _e171677171689_))
                              (_tl171679171694_ (##cdr _e171677171689_)))
                          (let ((_body171697_ _tl171679171694_))
                            (if '#t
                                (cons '%#begin-foreign _body171697_)
                                (_E171676171685_)))))
                      (_E171676171685_)))))
          (_E171675171699_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_stx171619_)
        (let* ((_e171620171633_ _stx171619_)
               (_E171622171637_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e171620171633_)))
               (_E171621171669_
                (lambda ()
                  (if (gx#stx-pair? _e171620171633_)
                      (let ((_e171623171641_ (gx#syntax-e _e171620171633_)))
                        (let ((_hd171624171644_ (##car _e171623171641_))
                              (_tl171625171646_ (##cdr _e171623171641_)))
                          (if (gx#stx-pair? _tl171625171646_)
                              (let ((_e171626171649_
                                     (gx#syntax-e _tl171625171646_)))
                                (let ((_hd171627171652_
                                       (##car _e171626171649_))
                                      (_tl171628171654_
                                       (##cdr _e171626171649_)))
                                  (let ((_ann171657_ _hd171627171652_))
                                    (if (gx#stx-pair? _tl171628171654_)
                                        (let ((_e171629171659_
                                               (gx#syntax-e _tl171628171654_)))
                                          (let ((_hd171630171662_
                                                 (##car _e171629171659_))
                                                (_tl171631171664_
                                                 (##cdr _e171629171659_)))
                                            (let ((_expr171667_
                                                   _hd171630171662_))
                                              (if (gx#stx-null?
                                                   _tl171631171664_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr171667_)
                                                      (_E171622171637_))
                                                  (_E171622171637_)))))
                                        (_E171622171637_)))))
                              (_E171622171637_))))
                      (_E171622171637_)))))
          (_E171621171669_))))
    (define gx#core-compile-top-import%
      (lambda (_stx171589_)
        (let* ((_e171590171597_ _stx171589_)
               (_E171592171601_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e171590171597_)))
               (_E171591171615_
                (lambda ()
                  (if (gx#stx-pair? _e171590171597_)
                      (let ((_e171593171605_ (gx#syntax-e _e171590171597_)))
                        (let ((_hd171594171608_ (##car _e171593171605_))
                              (_tl171595171610_ (##cdr _e171593171605_)))
                          (let ((_body171613_ _tl171595171610_))
                            (if '#t
                                (cons '%#import _body171613_)
                                (_E171592171601_)))))
                      (_E171592171601_)))))
          (_E171591171615_))))
    (define gx#core-compile-top-module%
      (lambda (_stx171546_)
        (let* ((_e171547171557_ _stx171546_)
               (_E171549171561_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e171547171557_)))
               (_E171548171585_
                (lambda ()
                  (if (gx#stx-pair? _e171547171557_)
                      (let ((_e171550171565_ (gx#syntax-e _e171547171557_)))
                        (let ((_hd171551171568_ (##car _e171550171565_))
                              (_tl171552171570_ (##cdr _e171550171565_)))
                          (if (gx#stx-pair? _tl171552171570_)
                              (let ((_e171553171573_
                                     (gx#syntax-e _tl171552171570_)))
                                (let ((_hd171554171576_
                                       (##car _e171553171573_))
                                      (_tl171555171578_
                                       (##cdr _e171553171573_)))
                                  (let* ((_hd171581_ _hd171554171576_)
                                         (_body171583_ _tl171555171578_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _hd171581_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body171583_)))
                                        (_E171549171561_)))))
                              (_E171549171561_))))
                      (_E171549171561_)))))
          (_E171548171585_))))
    (define gx#core-compile-top-export%
      (lambda (_stx171516_)
        (let* ((_e171517171524_ _stx171516_)
               (_E171519171528_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e171517171524_)))
               (_E171518171542_
                (lambda ()
                  (if (gx#stx-pair? _e171517171524_)
                      (let ((_e171520171532_ (gx#syntax-e _e171517171524_)))
                        (let ((_hd171521171535_ (##car _e171520171532_))
                              (_tl171522171537_ (##cdr _e171520171532_)))
                          (let ((_body171540_ _tl171522171537_))
                            (if '#t
                                (cons '%#export _body171540_)
                                (_E171519171528_)))))
                      (_E171519171528_)))))
          (_E171518171542_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx171486_)
        (let* ((_e171487171494_ _stx171486_)
               (_E171489171498_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e171487171494_)))
               (_E171488171512_
                (lambda ()
                  (if (gx#stx-pair? _e171487171494_)
                      (let ((_e171490171502_ (gx#syntax-e _e171487171494_)))
                        (let ((_hd171491171505_ (##car _e171490171502_))
                              (_tl171492171507_ (##cdr _e171490171502_)))
                          (let ((_body171510_ _tl171492171507_))
                            (if '#t
                                (cons '%#provide _body171510_)
                                (_E171489171498_)))))
                      (_E171489171498_)))))
          (_E171488171512_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx171456_)
        (let* ((_e171457171464_ _stx171456_)
               (_E171459171468_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e171457171464_)))
               (_E171458171482_
                (lambda ()
                  (if (gx#stx-pair? _e171457171464_)
                      (let ((_e171460171472_ (gx#syntax-e _e171457171464_)))
                        (let ((_hd171461171475_ (##car _e171460171472_))
                              (_tl171462171477_ (##cdr _e171460171472_)))
                          (let ((_body171480_ _tl171462171477_))
                            (if '#t
                                (cons '%#extern _body171480_)
                                (_E171459171468_)))))
                      (_E171459171468_)))))
          (_E171458171482_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx171402_)
        (let* ((_e171403171416_ _stx171402_)
               (_E171405171420_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e171403171416_)))
               (_E171404171452_
                (lambda ()
                  (if (gx#stx-pair? _e171403171416_)
                      (let ((_e171406171424_ (gx#syntax-e _e171403171416_)))
                        (let ((_hd171407171427_ (##car _e171406171424_))
                              (_tl171408171429_ (##cdr _e171406171424_)))
                          (if (gx#stx-pair? _tl171408171429_)
                              (let ((_e171409171432_
                                     (gx#syntax-e _tl171408171429_)))
                                (let ((_hd171410171435_
                                       (##car _e171409171432_))
                                      (_tl171411171437_
                                       (##cdr _e171409171432_)))
                                  (let ((_hd171440_ _hd171410171435_))
                                    (if (gx#stx-pair? _tl171411171437_)
                                        (let ((_e171412171442_
                                               (gx#syntax-e _tl171411171437_)))
                                          (let ((_hd171413171445_
                                                 (##car _e171412171442_))
                                                (_tl171414171447_
                                                 (##cdr _e171412171442_)))
                                            (let ((_expr171450_
                                                   _hd171413171445_))
                                              (if (gx#stx-null?
                                                   _tl171414171447_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd171440_)
                          (cons (gx#core-compile-top-syntax _expr171450_)
                                '())))
              (_E171405171420_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E171405171420_)))))
                                        (_E171405171420_)))))
                              (_E171405171420_))))
                      (_E171405171420_)))))
          (_E171404171452_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx171347_)
        (let* ((_e171348171361_ _stx171347_)
               (_E171350171365_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e171348171361_)))
               (_E171349171398_
                (lambda ()
                  (if (gx#stx-pair? _e171348171361_)
                      (let ((_e171351171369_ (gx#syntax-e _e171348171361_)))
                        (let ((_hd171352171372_ (##car _e171351171369_))
                              (_tl171353171374_ (##cdr _e171351171369_)))
                          (if (gx#stx-pair? _tl171353171374_)
                              (let ((_e171354171377_
                                     (gx#syntax-e _tl171353171374_)))
                                (let ((_hd171355171380_
                                       (##car _e171354171377_))
                                      (_tl171356171382_
                                       (##cdr _e171354171377_)))
                                  (let ((_hd171385_ _hd171355171380_))
                                    (if (gx#stx-pair? _tl171356171382_)
                                        (let ((_e171357171387_
                                               (gx#syntax-e _tl171356171382_)))
                                          (let ((_hd171358171390_
                                                 (##car _e171357171387_))
                                                (_tl171359171392_
                                                 (##cdr _e171357171387_)))
                                            (let ((_expr171395_
                                                   _hd171358171390_))
                                              (if (gx#stx-null?
                                                   _tl171359171392_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd171385_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr171395_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E171350171365_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E171350171365_)))))
                                        (_E171350171365_)))))
                              (_E171350171365_))))
                      (_E171350171365_)))))
          (_E171349171398_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx171317_)
        (let* ((_e171318171325_ _stx171317_)
               (_E171320171329_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e171318171325_)))
               (_E171319171343_
                (lambda ()
                  (if (gx#stx-pair? _e171318171325_)
                      (let ((_e171321171333_ (gx#syntax-e _e171318171325_)))
                        (let ((_hd171322171336_ (##car _e171321171333_))
                              (_tl171323171338_ (##cdr _e171321171333_)))
                          (let ((_body171341_ _tl171323171338_))
                            (if '#t
                                (cons '%#define-alias _body171341_)
                                (_E171320171329_)))))
                      (_E171320171329_)))))
          (_E171319171343_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx171287_)
        (let* ((_e171288171295_ _stx171287_)
               (_E171290171299_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e171288171295_)))
               (_E171289171313_
                (lambda ()
                  (if (gx#stx-pair? _e171288171295_)
                      (let ((_e171291171303_ (gx#syntax-e _e171288171295_)))
                        (let ((_hd171292171306_ (##car _e171291171303_))
                              (_tl171293171308_ (##cdr _e171291171303_)))
                          (let ((_body171311_ _tl171293171308_))
                            (if '#t
                                (cons '%#define-runtime _body171311_)
                                (_E171290171299_)))))
                      (_E171290171299_)))))
          (_E171289171313_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx171257_)
        (let* ((_e171258171265_ _stx171257_)
               (_E171260171269_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e171258171265_)))
               (_E171259171283_
                (lambda ()
                  (if (gx#stx-pair? _e171258171265_)
                      (let ((_e171261171273_ (gx#syntax-e _e171258171265_)))
                        (let ((_hd171262171276_ (##car _e171261171273_))
                              (_tl171263171278_ (##cdr _e171261171273_)))
                          (let ((_decls171281_ _tl171263171278_))
                            (if '#t
                                (cons '%#declare _decls171281_)
                                (_E171260171269_)))))
                      (_E171260171269_)))))
          (_E171259171283_))))
    (define gx#core-compile-top-lambda%
      (lambda (_stx171227_)
        (let* ((_e171228171235_ _stx171227_)
               (_E171230171239_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e171228171235_)))
               (_E171229171253_
                (lambda ()
                  (if (gx#stx-pair? _e171228171235_)
                      (let ((_e171231171243_ (gx#syntax-e _e171228171235_)))
                        (let ((_hd171232171246_ (##car _e171231171243_))
                              (_tl171233171248_ (##cdr _e171231171243_)))
                          (let ((_clause171251_ _tl171233171248_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause171251_))
                                (_E171230171239_)))))
                      (_E171230171239_)))))
          (_E171229171253_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx171184_)
        (let* ((_e171185171195_ _stx171184_)
               (_E171187171199_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e171185171195_)))
               (_E171186171223_
                (lambda ()
                  (if (gx#stx-pair? _e171185171195_)
                      (let ((_e171188171203_ (gx#syntax-e _e171185171195_)))
                        (let ((_hd171189171206_ (##car _e171188171203_))
                              (_tl171190171208_ (##cdr _e171188171203_)))
                          (let ((_hd171211_ _hd171189171206_))
                            (if (gx#stx-pair? _tl171190171208_)
                                (let ((_e171191171213_
                                       (gx#syntax-e _tl171190171208_)))
                                  (let ((_hd171192171216_
                                         (##car _e171191171213_))
                                        (_tl171193171218_
                                         (##cdr _e171191171213_)))
                                    (let ((_body171221_ _hd171192171216_))
                                      (if (gx#stx-null? _tl171193171218_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd171211_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body171221_)
                                                          '()))
                                              (_E171187171199_))
                                          (_E171187171199_)))))
                                (_E171187171199_)))))
                      (_E171187171199_)))))
          (_E171186171223_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx171154_)
        (let* ((_e171155171162_ _stx171154_)
               (_E171157171166_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e171155171162_)))
               (_E171156171180_
                (lambda ()
                  (if (gx#stx-pair? _e171155171162_)
                      (let ((_e171158171170_ (gx#syntax-e _e171155171162_)))
                        (let ((_hd171159171173_ (##car _e171158171170_))
                              (_tl171160171175_ (##cdr _e171158171170_)))
                          (let ((_clauses171178_ _tl171160171175_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses171178_))
                                (_E171157171166_)))))
                      (_E171157171166_)))))
          (_E171156171180_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx171089_ _form171090_)
        (let* ((_e171091171104_ _stx171089_)
               (_E171093171108_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e171091171104_)))
               (_E171092171140_
                (lambda ()
                  (if (gx#stx-pair? _e171091171104_)
                      (let ((_e171094171112_ (gx#syntax-e _e171091171104_)))
                        (let ((_hd171095171115_ (##car _e171094171112_))
                              (_tl171096171117_ (##cdr _e171094171112_)))
                          (if (gx#stx-pair? _tl171096171117_)
                              (let ((_e171097171120_
                                     (gx#syntax-e _tl171096171117_)))
                                (let ((_hd171098171123_
                                       (##car _e171097171120_))
                                      (_tl171099171125_
                                       (##cdr _e171097171120_)))
                                  (let ((_hd171128_ _hd171098171123_))
                                    (if (gx#stx-pair? _tl171099171125_)
                                        (let ((_e171100171130_
                                               (gx#syntax-e _tl171099171125_)))
                                          (let ((_hd171101171133_
                                                 (##car _e171100171130_))
                                                (_tl171102171135_
                                                 (##cdr _e171100171130_)))
                                            (let ((_body171138_
                                                   _hd171101171133_))
                                              (if (gx#stx-null?
                                                   _tl171102171135_)
                                                  (if '#t
                                                      (cons _form171090_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd171128_)
                          (cons (gx#core-compile-top-syntax _body171138_)
                                '())))
              (_E171093171108_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E171093171108_)))))
                                        (_E171093171108_)))))
                              (_E171093171108_))))
                      (_E171093171108_)))))
          (_E171092171140_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx171147_)
        (let ((_form171149_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx171147_ _form171149_))))
    (define gx#core-compile-top-let-values%
      (lambda _g176029_
        (let ((_g176028_ (##length _g176029_)))
          (cond ((##fx= _g176028_ 1)
                 (apply (lambda (_stx171147_)
                          (gx#core-compile-top-let-values%__0 _stx171147_))
                        _g176029_))
                ((##fx= _g176028_ 2)
                 (apply (lambda (_stx171151_ _form171152_)
                          (gx#core-compile-top-let-values%__%
                           _stx171151_
                           _form171152_))
                        _g176029_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g176029_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx171086_)
        (gx#core-compile-top-let-values%__% _stx171086_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx171084_)
        (gx#core-compile-top-let-values%__% _stx171084_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx171043_)
        (let* ((_e171044171054_ _stx171043_)
               (_E171046171058_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e171044171054_)))
               (_E171045171080_
                (lambda ()
                  (if (gx#stx-pair? _e171044171054_)
                      (let ((_e171047171062_ (gx#syntax-e _e171044171054_)))
                        (let ((_hd171048171065_ (##car _e171047171062_))
                              (_tl171049171067_ (##cdr _e171047171062_)))
                          (if (gx#stx-pair? _tl171049171067_)
                              (let ((_e171050171070_
                                     (gx#syntax-e _tl171049171067_)))
                                (let ((_hd171051171073_
                                       (##car _e171050171070_))
                                      (_tl171052171075_
                                       (##cdr _e171050171070_)))
                                  (let ((_e171078_ _hd171051171073_))
                                    (if (gx#stx-null? _tl171052171075_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e171078_)
                                                        '()))
                                            (_E171046171058_))
                                        (_E171046171058_)))))
                              (_E171046171058_))))
                      (_E171046171058_)))))
          (_E171045171080_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx171002_)
        (let* ((_e171003171013_ _stx171002_)
               (_E171005171017_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e171003171013_)))
               (_E171004171039_
                (lambda ()
                  (if (gx#stx-pair? _e171003171013_)
                      (let ((_e171006171021_ (gx#syntax-e _e171003171013_)))
                        (let ((_hd171007171024_ (##car _e171006171021_))
                              (_tl171008171026_ (##cdr _e171006171021_)))
                          (if (gx#stx-pair? _tl171008171026_)
                              (let ((_e171009171029_
                                     (gx#syntax-e _tl171008171026_)))
                                (let ((_hd171010171032_
                                       (##car _e171009171029_))
                                      (_tl171011171034_
                                       (##cdr _e171009171029_)))
                                  (let ((_e171037_ _hd171010171032_))
                                    (if (gx#stx-null? _tl171011171034_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e171037_)
                                                        '()))
                                            (_E171005171017_))
                                        (_E171005171017_)))))
                              (_E171005171017_))))
                      (_E171005171017_)))))
          (_E171004171039_))))
    (define gx#core-compile-top-call%
      (lambda (_stx170959_)
        (let* ((_e170960170970_ _stx170959_)
               (_E170962170974_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e170960170970_)))
               (_E170961170998_
                (lambda ()
                  (if (gx#stx-pair? _e170960170970_)
                      (let ((_e170963170978_ (gx#syntax-e _e170960170970_)))
                        (let ((_hd170964170981_ (##car _e170963170978_))
                              (_tl170965170983_ (##cdr _e170963170978_)))
                          (if (gx#stx-pair? _tl170965170983_)
                              (let ((_e170966170986_
                                     (gx#syntax-e _tl170965170983_)))
                                (let ((_hd170967170989_
                                       (##car _e170966170986_))
                                      (_tl170968170991_
                                       (##cdr _e170966170986_)))
                                  (let* ((_rator170994_ _hd170967170989_)
                                         (_args170996_ _tl170968170991_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator170994_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args170996_)))
                                        (_E170962170974_)))))
                              (_E170962170974_))))
                      (_E170962170974_)))))
          (_E170961170998_))))
    (define gx#core-compile-top-if%
      (lambda (_stx170892_)
        (let* ((_e170893170909_ _stx170892_)
               (_E170895170913_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e170893170909_)))
               (_E170894170955_
                (lambda ()
                  (if (gx#stx-pair? _e170893170909_)
                      (let ((_e170896170917_ (gx#syntax-e _e170893170909_)))
                        (let ((_hd170897170920_ (##car _e170896170917_))
                              (_tl170898170922_ (##cdr _e170896170917_)))
                          (if (gx#stx-pair? _tl170898170922_)
                              (let ((_e170899170925_
                                     (gx#syntax-e _tl170898170922_)))
                                (let ((_hd170900170928_
                                       (##car _e170899170925_))
                                      (_tl170901170930_
                                       (##cdr _e170899170925_)))
                                  (let ((_test170933_ _hd170900170928_))
                                    (if (gx#stx-pair? _tl170901170930_)
                                        (let ((_e170902170935_
                                               (gx#syntax-e _tl170901170930_)))
                                          (let ((_hd170903170938_
                                                 (##car _e170902170935_))
                                                (_tl170904170940_
                                                 (##cdr _e170902170935_)))
                                            (let ((_K170943_ _hd170903170938_))
                                              (if (gx#stx-pair?
                                                   _tl170904170940_)
                                                  (let ((_e170905170945_
                                                         (gx#syntax-e
                                                          _tl170904170940_)))
                                                    (let ((_hd170906170948_
                                                           (##car _e170905170945_))
                                                          (_tl170907170950_
                                                           (##cdr _e170905170945_)))
                                                      (let ((_E170953_
                                                             _hd170906170948_))
                                                        (if (gx#stx-null?
                                                             _tl170907170950_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test170933_)
                                    (cons (gx#core-compile-top-syntax
                                           _K170943_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E170953_)
                                                '()))))
                        (_E170895170913_))
                    (_E170895170913_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E170895170913_)))))
                                        (_E170895170913_)))))
                              (_E170895170913_))))
                      (_E170895170913_)))))
          (_E170894170955_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx170851_)
        (let* ((_e170852170862_ _stx170851_)
               (_E170854170866_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e170852170862_)))
               (_E170853170888_
                (lambda ()
                  (if (gx#stx-pair? _e170852170862_)
                      (let ((_e170855170870_ (gx#syntax-e _e170852170862_)))
                        (let ((_hd170856170873_ (##car _e170855170870_))
                              (_tl170857170875_ (##cdr _e170855170870_)))
                          (if (gx#stx-pair? _tl170857170875_)
                              (let ((_e170858170878_
                                     (gx#syntax-e _tl170857170875_)))
                                (let ((_hd170859170881_
                                       (##car _e170858170878_))
                                      (_tl170860170883_
                                       (##cdr _e170858170878_)))
                                  (let ((_id170886_ _hd170859170881_))
                                    (if (gx#stx-null? _tl170860170883_)
                                        (if (gx#identifier? _id170886_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id170886_)
                                                        '()))
                                            (_E170854170866_))
                                        (_E170854170866_)))))
                              (_E170854170866_))))
                      (_E170854170866_)))))
          (_E170853170888_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx170797_)
        (let* ((_e170798170811_ _stx170797_)
               (_E170800170815_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e170798170811_)))
               (_E170799170847_
                (lambda ()
                  (if (gx#stx-pair? _e170798170811_)
                      (let ((_e170801170819_ (gx#syntax-e _e170798170811_)))
                        (let ((_hd170802170822_ (##car _e170801170819_))
                              (_tl170803170824_ (##cdr _e170801170819_)))
                          (if (gx#stx-pair? _tl170803170824_)
                              (let ((_e170804170827_
                                     (gx#syntax-e _tl170803170824_)))
                                (let ((_hd170805170830_
                                       (##car _e170804170827_))
                                      (_tl170806170832_
                                       (##cdr _e170804170827_)))
                                  (let ((_id170835_ _hd170805170830_))
                                    (if (gx#stx-pair? _tl170806170832_)
                                        (let ((_e170807170837_
                                               (gx#syntax-e _tl170806170832_)))
                                          (let ((_hd170808170840_
                                                 (##car _e170807170837_))
                                                (_tl170809170842_
                                                 (##cdr _e170807170837_)))
                                            (let ((_expr170845_
                                                   _hd170808170840_))
                                              (if (gx#stx-null?
                                                   _tl170809170842_)
                                                  (if (gx#identifier?
                                                       _id170835_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id170835_)
                          (cons (gx#core-compile-top-syntax _expr170845_)
                                '())))
              (_E170800170815_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E170800170815_)))))
                                        (_E170800170815_)))))
                              (_E170800170815_))))
                      (_E170800170815_)))))
          (_E170799170847_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id170792_)
        (let ((_$e170794_ (gx#resolve-identifier__0 _id170792_)))
          (if _$e170794_
              (##unchecked-structure-ref _$e170794_ '1 gx#binding::t '#f)
              _id170792_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd170790_)
        (if (gx#identifier? _hd170790_)
            (gx#core-compile-top-runtime-ref _hd170790_)
            '#f)))))
