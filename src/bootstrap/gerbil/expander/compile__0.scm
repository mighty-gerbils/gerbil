(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1709159707)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx94859_)
        (let* ((_e9486094867_ _stx94859_)
               (_E9486294871_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9486094867_)))
               (_E9486194885_
                (lambda ()
                  (if (gx#stx-pair? _e9486094867_)
                      (let ((_e9486394875_ (gx#syntax-e _e9486094867_)))
                        (let ((_hd9486494878_ (##car _e9486394875_))
                              (_tl9486594880_ (##cdr _e9486394875_)))
                          (let ((_form94883_ _hd9486494878_))
                            (if '#t
                                (let* ((__self94888
                                        (gx#syntax-local-e__0 _form94883_))
                                       (__method94889
                                        (method-ref
                                         __self94888
                                         'compile-top-syntax)))
                                  (if __method94889
                                      (__method94889 __self94888 _stx94859_)
                                      (error '"Missing method"
                                             __self94888
                                             'compile-top-syntax)))
                                (_E9486294871_)))))
                      (_E9486294871_)))))
          (_E9486194885_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self94819_ _stx94820_)
        (let* ((_self9482194829_ _self94819_)
               (_E9482394833_
                (lambda () (error '"No clause matching" _self9482194829_)))
               (_K9482494845_
                (lambda (_K94836_)
                  (let ((_$e94838_ (gx#stx-source _stx94820_)))
                    (if _$e94838_
                        ((lambda (_g9484094842_)
                           (gx#stx-wrap-source
                            (_K94836_ _stx94820_)
                            _g9484094842_))
                         _$e94838_)
                        (_K94836_ _stx94820_))))))
          (if (##structure-instance-of? _self9482194829_ 'gx#core-expander::t)
              (let* ((_e9482594848_
                      (##unchecked-structure-ref
                       _self9482194829_
                       '1
                       gx#expander::t
                       '#f))
                     (_e9482694851_
                      (##unchecked-structure-ref
                       _self9482194829_
                       '2
                       gx#core-expander::t
                       '#f))
                     (_e9482794854_
                      (##unchecked-structure-ref
                       _self9482194829_
                       '3
                       gx#core-expander::t
                       '#f))
                     (_K94857_ _e9482794854_))
                (_K9482494845_ _K94857_))
              (_E9482394833_)))))
    (bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx94693_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx94693_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx94663_)
        (let* ((_e9466494671_ _stx94663_)
               (_E9466694675_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9466494671_)))
               (_E9466594689_
                (lambda ()
                  (if (gx#stx-pair? _e9466494671_)
                      (let ((_e9466794679_ (gx#syntax-e _e9466494671_)))
                        (let ((_hd9466894682_ (##car _e9466794679_))
                              (_tl9466994684_ (##cdr _e9466794679_)))
                          (let ((_body94687_ _tl9466994684_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body94687_))
                                (_E9466694675_)))))
                      (_E9466694675_)))))
          (_E9466594689_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx94632_)
        (let* ((_e9463394640_ _stx94632_)
               (_E9463594644_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9463394640_)))
               (_E9463494659_
                (lambda ()
                  (if (gx#stx-pair? _e9463394640_)
                      (let ((_e9463694648_ (gx#syntax-e _e9463394640_)))
                        (let ((_hd9463794651_ (##car _e9463694648_))
                              (_tl9463894653_ (##cdr _e9463694648_)))
                          (let ((_body94656_ _tl9463894653_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body94656_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E9463594644_)))))
                      (_E9463594644_)))))
          (_E9463494659_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_stx94602_)
        (let* ((_e9460394610_ _stx94602_)
               (_E9460594614_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9460394610_)))
               (_E9460494628_
                (lambda ()
                  (if (gx#stx-pair? _e9460394610_)
                      (let ((_e9460694618_ (gx#syntax-e _e9460394610_)))
                        (let ((_hd9460794621_ (##car _e9460694618_))
                              (_tl9460894623_ (##cdr _e9460694618_)))
                          (let ((_body94626_ _tl9460894623_))
                            (if '#t
                                (cons '%#begin-foreign _body94626_)
                                (_E9460594614_)))))
                      (_E9460594614_)))))
          (_E9460494628_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_stx94548_)
        (let* ((_e9454994562_ _stx94548_)
               (_E9455194566_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9454994562_)))
               (_E9455094598_
                (lambda ()
                  (if (gx#stx-pair? _e9454994562_)
                      (let ((_e9455294570_ (gx#syntax-e _e9454994562_)))
                        (let ((_hd9455394573_ (##car _e9455294570_))
                              (_tl9455494575_ (##cdr _e9455294570_)))
                          (if (gx#stx-pair? _tl9455494575_)
                              (let ((_e9455594578_
                                     (gx#syntax-e _tl9455494575_)))
                                (let ((_hd9455694581_ (##car _e9455594578_))
                                      (_tl9455794583_ (##cdr _e9455594578_)))
                                  (let ((_ann94586_ _hd9455694581_))
                                    (if (gx#stx-pair? _tl9455794583_)
                                        (let ((_e9455894588_
                                               (gx#syntax-e _tl9455794583_)))
                                          (let ((_hd9455994591_
                                                 (##car _e9455894588_))
                                                (_tl9456094593_
                                                 (##cdr _e9455894588_)))
                                            (let ((_expr94596_ _hd9455994591_))
                                              (if (gx#stx-null? _tl9456094593_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr94596_)
                                                      (_E9455194566_))
                                                  (_E9455194566_)))))
                                        (_E9455194566_)))))
                              (_E9455194566_))))
                      (_E9455194566_)))))
          (_E9455094598_))))
    (define gx#core-compile-top-import%
      (lambda (_stx94518_)
        (let* ((_e9451994526_ _stx94518_)
               (_E9452194530_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9451994526_)))
               (_E9452094544_
                (lambda ()
                  (if (gx#stx-pair? _e9451994526_)
                      (let ((_e9452294534_ (gx#syntax-e _e9451994526_)))
                        (let ((_hd9452394537_ (##car _e9452294534_))
                              (_tl9452494539_ (##cdr _e9452294534_)))
                          (let ((_body94542_ _tl9452494539_))
                            (if '#t
                                (cons '%#import _body94542_)
                                (_E9452194530_)))))
                      (_E9452194530_)))))
          (_E9452094544_))))
    (define gx#core-compile-top-module%
      (lambda (_stx94475_)
        (let* ((_e9447694486_ _stx94475_)
               (_E9447894490_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9447694486_)))
               (_E9447794514_
                (lambda ()
                  (if (gx#stx-pair? _e9447694486_)
                      (let ((_e9447994494_ (gx#syntax-e _e9447694486_)))
                        (let ((_hd9448094497_ (##car _e9447994494_))
                              (_tl9448194499_ (##cdr _e9447994494_)))
                          (if (gx#stx-pair? _tl9448194499_)
                              (let ((_e9448294502_
                                     (gx#syntax-e _tl9448194499_)))
                                (let ((_hd9448394505_ (##car _e9448294502_))
                                      (_tl9448494507_ (##cdr _e9448294502_)))
                                  (let* ((_hd94510_ _hd9448394505_)
                                         (_body94512_ _tl9448494507_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _hd94510_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body94512_)))
                                        (_E9447894490_)))))
                              (_E9447894490_))))
                      (_E9447894490_)))))
          (_E9447794514_))))
    (define gx#core-compile-top-export%
      (lambda (_stx94445_)
        (let* ((_e9444694453_ _stx94445_)
               (_E9444894457_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9444694453_)))
               (_E9444794471_
                (lambda ()
                  (if (gx#stx-pair? _e9444694453_)
                      (let ((_e9444994461_ (gx#syntax-e _e9444694453_)))
                        (let ((_hd9445094464_ (##car _e9444994461_))
                              (_tl9445194466_ (##cdr _e9444994461_)))
                          (let ((_body94469_ _tl9445194466_))
                            (if '#t
                                (cons '%#export _body94469_)
                                (_E9444894457_)))))
                      (_E9444894457_)))))
          (_E9444794471_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx94415_)
        (let* ((_e9441694423_ _stx94415_)
               (_E9441894427_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9441694423_)))
               (_E9441794441_
                (lambda ()
                  (if (gx#stx-pair? _e9441694423_)
                      (let ((_e9441994431_ (gx#syntax-e _e9441694423_)))
                        (let ((_hd9442094434_ (##car _e9441994431_))
                              (_tl9442194436_ (##cdr _e9441994431_)))
                          (let ((_body94439_ _tl9442194436_))
                            (if '#t
                                (cons '%#provide _body94439_)
                                (_E9441894427_)))))
                      (_E9441894427_)))))
          (_E9441794441_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx94385_)
        (let* ((_e9438694393_ _stx94385_)
               (_E9438894397_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9438694393_)))
               (_E9438794411_
                (lambda ()
                  (if (gx#stx-pair? _e9438694393_)
                      (let ((_e9438994401_ (gx#syntax-e _e9438694393_)))
                        (let ((_hd9439094404_ (##car _e9438994401_))
                              (_tl9439194406_ (##cdr _e9438994401_)))
                          (let ((_body94409_ _tl9439194406_))
                            (if '#t
                                (cons '%#extern _body94409_)
                                (_E9438894397_)))))
                      (_E9438894397_)))))
          (_E9438794411_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx94331_)
        (let* ((_e9433294345_ _stx94331_)
               (_E9433494349_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9433294345_)))
               (_E9433394381_
                (lambda ()
                  (if (gx#stx-pair? _e9433294345_)
                      (let ((_e9433594353_ (gx#syntax-e _e9433294345_)))
                        (let ((_hd9433694356_ (##car _e9433594353_))
                              (_tl9433794358_ (##cdr _e9433594353_)))
                          (if (gx#stx-pair? _tl9433794358_)
                              (let ((_e9433894361_
                                     (gx#syntax-e _tl9433794358_)))
                                (let ((_hd9433994364_ (##car _e9433894361_))
                                      (_tl9434094366_ (##cdr _e9433894361_)))
                                  (let ((_hd94369_ _hd9433994364_))
                                    (if (gx#stx-pair? _tl9434094366_)
                                        (let ((_e9434194371_
                                               (gx#syntax-e _tl9434094366_)))
                                          (let ((_hd9434294374_
                                                 (##car _e9434194371_))
                                                (_tl9434394376_
                                                 (##cdr _e9434194371_)))
                                            (let ((_expr94379_ _hd9434294374_))
                                              (if (gx#stx-null? _tl9434394376_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd94369_)
                          (cons (gx#core-compile-top-syntax _expr94379_) '())))
              (_E9433494349_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9433494349_)))))
                                        (_E9433494349_)))))
                              (_E9433494349_))))
                      (_E9433494349_)))))
          (_E9433394381_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx94276_)
        (let* ((_e9427794290_ _stx94276_)
               (_E9427994294_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9427794290_)))
               (_E9427894327_
                (lambda ()
                  (if (gx#stx-pair? _e9427794290_)
                      (let ((_e9428094298_ (gx#syntax-e _e9427794290_)))
                        (let ((_hd9428194301_ (##car _e9428094298_))
                              (_tl9428294303_ (##cdr _e9428094298_)))
                          (if (gx#stx-pair? _tl9428294303_)
                              (let ((_e9428394306_
                                     (gx#syntax-e _tl9428294303_)))
                                (let ((_hd9428494309_ (##car _e9428394306_))
                                      (_tl9428594311_ (##cdr _e9428394306_)))
                                  (let ((_hd94314_ _hd9428494309_))
                                    (if (gx#stx-pair? _tl9428594311_)
                                        (let ((_e9428694316_
                                               (gx#syntax-e _tl9428594311_)))
                                          (let ((_hd9428794319_
                                                 (##car _e9428694316_))
                                                (_tl9428894321_
                                                 (##cdr _e9428694316_)))
                                            (let ((_expr94324_ _hd9428794319_))
                                              (if (gx#stx-null? _tl9428894321_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd94314_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr94324_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E9427994294_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9427994294_)))))
                                        (_E9427994294_)))))
                              (_E9427994294_))))
                      (_E9427994294_)))))
          (_E9427894327_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx94246_)
        (let* ((_e9424794254_ _stx94246_)
               (_E9424994258_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9424794254_)))
               (_E9424894272_
                (lambda ()
                  (if (gx#stx-pair? _e9424794254_)
                      (let ((_e9425094262_ (gx#syntax-e _e9424794254_)))
                        (let ((_hd9425194265_ (##car _e9425094262_))
                              (_tl9425294267_ (##cdr _e9425094262_)))
                          (let ((_body94270_ _tl9425294267_))
                            (if '#t
                                (cons '%#define-alias _body94270_)
                                (_E9424994258_)))))
                      (_E9424994258_)))))
          (_E9424894272_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx94216_)
        (let* ((_e9421794224_ _stx94216_)
               (_E9421994228_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9421794224_)))
               (_E9421894242_
                (lambda ()
                  (if (gx#stx-pair? _e9421794224_)
                      (let ((_e9422094232_ (gx#syntax-e _e9421794224_)))
                        (let ((_hd9422194235_ (##car _e9422094232_))
                              (_tl9422294237_ (##cdr _e9422094232_)))
                          (let ((_body94240_ _tl9422294237_))
                            (if '#t
                                (cons '%#define-runtime _body94240_)
                                (_E9421994228_)))))
                      (_E9421994228_)))))
          (_E9421894242_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx94186_)
        (let* ((_e9418794194_ _stx94186_)
               (_E9418994198_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9418794194_)))
               (_E9418894212_
                (lambda ()
                  (if (gx#stx-pair? _e9418794194_)
                      (let ((_e9419094202_ (gx#syntax-e _e9418794194_)))
                        (let ((_hd9419194205_ (##car _e9419094202_))
                              (_tl9419294207_ (##cdr _e9419094202_)))
                          (let ((_decls94210_ _tl9419294207_))
                            (if '#t
                                (cons '%#declare _decls94210_)
                                (_E9418994198_)))))
                      (_E9418994198_)))))
          (_E9418894212_))))
    (define gx#core-compile-top-lambda%
      (lambda (_stx94156_)
        (let* ((_e9415794164_ _stx94156_)
               (_E9415994168_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9415794164_)))
               (_E9415894182_
                (lambda ()
                  (if (gx#stx-pair? _e9415794164_)
                      (let ((_e9416094172_ (gx#syntax-e _e9415794164_)))
                        (let ((_hd9416194175_ (##car _e9416094172_))
                              (_tl9416294177_ (##cdr _e9416094172_)))
                          (let ((_clause94180_ _tl9416294177_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause94180_))
                                (_E9415994168_)))))
                      (_E9415994168_)))))
          (_E9415894182_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx94113_)
        (let* ((_e9411494124_ _stx94113_)
               (_E9411694128_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9411494124_)))
               (_E9411594152_
                (lambda ()
                  (if (gx#stx-pair? _e9411494124_)
                      (let ((_e9411794132_ (gx#syntax-e _e9411494124_)))
                        (let ((_hd9411894135_ (##car _e9411794132_))
                              (_tl9411994137_ (##cdr _e9411794132_)))
                          (let ((_hd94140_ _hd9411894135_))
                            (if (gx#stx-pair? _tl9411994137_)
                                (let ((_e9412094142_
                                       (gx#syntax-e _tl9411994137_)))
                                  (let ((_hd9412194145_ (##car _e9412094142_))
                                        (_tl9412294147_ (##cdr _e9412094142_)))
                                    (let ((_body94150_ _hd9412194145_))
                                      (if (gx#stx-null? _tl9412294147_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd94140_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body94150_)
                                                          '()))
                                              (_E9411694128_))
                                          (_E9411694128_)))))
                                (_E9411694128_)))))
                      (_E9411694128_)))))
          (_E9411594152_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx94083_)
        (let* ((_e9408494091_ _stx94083_)
               (_E9408694095_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9408494091_)))
               (_E9408594109_
                (lambda ()
                  (if (gx#stx-pair? _e9408494091_)
                      (let ((_e9408794099_ (gx#syntax-e _e9408494091_)))
                        (let ((_hd9408894102_ (##car _e9408794099_))
                              (_tl9408994104_ (##cdr _e9408794099_)))
                          (let ((_clauses94107_ _tl9408994104_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses94107_))
                                (_E9408694095_)))))
                      (_E9408694095_)))))
          (_E9408594109_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx94018_ _form94019_)
        (let* ((_e9402094033_ _stx94018_)
               (_E9402294037_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9402094033_)))
               (_E9402194069_
                (lambda ()
                  (if (gx#stx-pair? _e9402094033_)
                      (let ((_e9402394041_ (gx#syntax-e _e9402094033_)))
                        (let ((_hd9402494044_ (##car _e9402394041_))
                              (_tl9402594046_ (##cdr _e9402394041_)))
                          (if (gx#stx-pair? _tl9402594046_)
                              (let ((_e9402694049_
                                     (gx#syntax-e _tl9402594046_)))
                                (let ((_hd9402794052_ (##car _e9402694049_))
                                      (_tl9402894054_ (##cdr _e9402694049_)))
                                  (let ((_hd94057_ _hd9402794052_))
                                    (if (gx#stx-pair? _tl9402894054_)
                                        (let ((_e9402994059_
                                               (gx#syntax-e _tl9402894054_)))
                                          (let ((_hd9403094062_
                                                 (##car _e9402994059_))
                                                (_tl9403194064_
                                                 (##cdr _e9402994059_)))
                                            (let ((_body94067_ _hd9403094062_))
                                              (if (gx#stx-null? _tl9403194064_)
                                                  (if '#t
                                                      (cons _form94019_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd94057_)
                          (cons (gx#core-compile-top-syntax _body94067_) '())))
              (_E9402294037_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9402294037_)))))
                                        (_E9402294037_)))))
                              (_E9402294037_))))
                      (_E9402294037_)))))
          (_E9402194069_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx94076_)
        (let ((_form94078_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx94076_ _form94078_))))
    (define gx#core-compile-top-let-values%
      (lambda _g94891_
        (let ((_g94890_ (##length _g94891_)))
          (cond ((##fx= _g94890_ 1)
                 (apply (lambda (_stx94076_)
                          (gx#core-compile-top-let-values%__0 _stx94076_))
                        _g94891_))
                ((##fx= _g94890_ 2)
                 (apply (lambda (_stx94080_ _form94081_)
                          (gx#core-compile-top-let-values%__%
                           _stx94080_
                           _form94081_))
                        _g94891_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g94891_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx94015_)
        (gx#core-compile-top-let-values%__% _stx94015_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx94013_)
        (gx#core-compile-top-let-values%__% _stx94013_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx93972_)
        (let* ((_e9397393983_ _stx93972_)
               (_E9397593987_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9397393983_)))
               (_E9397494009_
                (lambda ()
                  (if (gx#stx-pair? _e9397393983_)
                      (let ((_e9397693991_ (gx#syntax-e _e9397393983_)))
                        (let ((_hd9397793994_ (##car _e9397693991_))
                              (_tl9397893996_ (##cdr _e9397693991_)))
                          (if (gx#stx-pair? _tl9397893996_)
                              (let ((_e9397993999_
                                     (gx#syntax-e _tl9397893996_)))
                                (let ((_hd9398094002_ (##car _e9397993999_))
                                      (_tl9398194004_ (##cdr _e9397993999_)))
                                  (let ((_e94007_ _hd9398094002_))
                                    (if (gx#stx-null? _tl9398194004_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e94007_)
                                                        '()))
                                            (_E9397593987_))
                                        (_E9397593987_)))))
                              (_E9397593987_))))
                      (_E9397593987_)))))
          (_E9397494009_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx93931_)
        (let* ((_e9393293942_ _stx93931_)
               (_E9393493946_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9393293942_)))
               (_E9393393968_
                (lambda ()
                  (if (gx#stx-pair? _e9393293942_)
                      (let ((_e9393593950_ (gx#syntax-e _e9393293942_)))
                        (let ((_hd9393693953_ (##car _e9393593950_))
                              (_tl9393793955_ (##cdr _e9393593950_)))
                          (if (gx#stx-pair? _tl9393793955_)
                              (let ((_e9393893958_
                                     (gx#syntax-e _tl9393793955_)))
                                (let ((_hd9393993961_ (##car _e9393893958_))
                                      (_tl9394093963_ (##cdr _e9393893958_)))
                                  (let ((_e93966_ _hd9393993961_))
                                    (if (gx#stx-null? _tl9394093963_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e93966_)
                                                        '()))
                                            (_E9393493946_))
                                        (_E9393493946_)))))
                              (_E9393493946_))))
                      (_E9393493946_)))))
          (_E9393393968_))))
    (define gx#core-compile-top-call%
      (lambda (_stx93888_)
        (let* ((_e9388993899_ _stx93888_)
               (_E9389193903_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9388993899_)))
               (_E9389093927_
                (lambda ()
                  (if (gx#stx-pair? _e9388993899_)
                      (let ((_e9389293907_ (gx#syntax-e _e9388993899_)))
                        (let ((_hd9389393910_ (##car _e9389293907_))
                              (_tl9389493912_ (##cdr _e9389293907_)))
                          (if (gx#stx-pair? _tl9389493912_)
                              (let ((_e9389593915_
                                     (gx#syntax-e _tl9389493912_)))
                                (let ((_hd9389693918_ (##car _e9389593915_))
                                      (_tl9389793920_ (##cdr _e9389593915_)))
                                  (let* ((_rator93923_ _hd9389693918_)
                                         (_args93925_ _tl9389793920_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator93923_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args93925_)))
                                        (_E9389193903_)))))
                              (_E9389193903_))))
                      (_E9389193903_)))))
          (_E9389093927_))))
    (define gx#core-compile-top-if%
      (lambda (_stx93821_)
        (let* ((_e9382293838_ _stx93821_)
               (_E9382493842_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9382293838_)))
               (_E9382393884_
                (lambda ()
                  (if (gx#stx-pair? _e9382293838_)
                      (let ((_e9382593846_ (gx#syntax-e _e9382293838_)))
                        (let ((_hd9382693849_ (##car _e9382593846_))
                              (_tl9382793851_ (##cdr _e9382593846_)))
                          (if (gx#stx-pair? _tl9382793851_)
                              (let ((_e9382893854_
                                     (gx#syntax-e _tl9382793851_)))
                                (let ((_hd9382993857_ (##car _e9382893854_))
                                      (_tl9383093859_ (##cdr _e9382893854_)))
                                  (let ((_test93862_ _hd9382993857_))
                                    (if (gx#stx-pair? _tl9383093859_)
                                        (let ((_e9383193864_
                                               (gx#syntax-e _tl9383093859_)))
                                          (let ((_hd9383293867_
                                                 (##car _e9383193864_))
                                                (_tl9383393869_
                                                 (##cdr _e9383193864_)))
                                            (let ((_K93872_ _hd9383293867_))
                                              (if (gx#stx-pair? _tl9383393869_)
                                                  (let ((_e9383493874_
                                                         (gx#syntax-e
                                                          _tl9383393869_)))
                                                    (let ((_hd9383593877_
                                                           (##car _e9383493874_))
                                                          (_tl9383693879_
                                                           (##cdr _e9383493874_)))
                                                      (let ((_E93882_
                                                             _hd9383593877_))
                                                        (if (gx#stx-null?
                                                             _tl9383693879_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test93862_)
                                    (cons (gx#core-compile-top-syntax _K93872_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E93882_)
                                                '()))))
                        (_E9382493842_))
                    (_E9382493842_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9382493842_)))))
                                        (_E9382493842_)))))
                              (_E9382493842_))))
                      (_E9382493842_)))))
          (_E9382393884_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx93780_)
        (let* ((_e9378193791_ _stx93780_)
               (_E9378393795_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9378193791_)))
               (_E9378293817_
                (lambda ()
                  (if (gx#stx-pair? _e9378193791_)
                      (let ((_e9378493799_ (gx#syntax-e _e9378193791_)))
                        (let ((_hd9378593802_ (##car _e9378493799_))
                              (_tl9378693804_ (##cdr _e9378493799_)))
                          (if (gx#stx-pair? _tl9378693804_)
                              (let ((_e9378793807_
                                     (gx#syntax-e _tl9378693804_)))
                                (let ((_hd9378893810_ (##car _e9378793807_))
                                      (_tl9378993812_ (##cdr _e9378793807_)))
                                  (let ((_id93815_ _hd9378893810_))
                                    (if (gx#stx-null? _tl9378993812_)
                                        (if (gx#identifier? _id93815_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id93815_)
                                                        '()))
                                            (_E9378393795_))
                                        (_E9378393795_)))))
                              (_E9378393795_))))
                      (_E9378393795_)))))
          (_E9378293817_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx93726_)
        (let* ((_e9372793740_ _stx93726_)
               (_E9372993744_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9372793740_)))
               (_E9372893776_
                (lambda ()
                  (if (gx#stx-pair? _e9372793740_)
                      (let ((_e9373093748_ (gx#syntax-e _e9372793740_)))
                        (let ((_hd9373193751_ (##car _e9373093748_))
                              (_tl9373293753_ (##cdr _e9373093748_)))
                          (if (gx#stx-pair? _tl9373293753_)
                              (let ((_e9373393756_
                                     (gx#syntax-e _tl9373293753_)))
                                (let ((_hd9373493759_ (##car _e9373393756_))
                                      (_tl9373593761_ (##cdr _e9373393756_)))
                                  (let ((_id93764_ _hd9373493759_))
                                    (if (gx#stx-pair? _tl9373593761_)
                                        (let ((_e9373693766_
                                               (gx#syntax-e _tl9373593761_)))
                                          (let ((_hd9373793769_
                                                 (##car _e9373693766_))
                                                (_tl9373893771_
                                                 (##cdr _e9373693766_)))
                                            (let ((_expr93774_ _hd9373793769_))
                                              (if (gx#stx-null? _tl9373893771_)
                                                  (if (gx#identifier?
                                                       _id93764_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id93764_)
                          (cons (gx#core-compile-top-syntax _expr93774_) '())))
              (_E9372993744_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9372993744_)))))
                                        (_E9372993744_)))))
                              (_E9372993744_))))
                      (_E9372993744_)))))
          (_E9372893776_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id93721_)
        (let ((_$e93723_ (gx#resolve-identifier__0 _id93721_)))
          (if _$e93723_
              (##unchecked-structure-ref _$e93723_ '1 gx#binding::t '#f)
              _id93721_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd93719_)
        (if (gx#identifier? _hd93719_)
            (gx#core-compile-top-runtime-ref _hd93719_)
            '#f)))))
