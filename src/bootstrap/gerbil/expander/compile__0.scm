(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1709213450)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx94867_)
        (let* ((_e9486894875_ _stx94867_)
               (_E9487094879_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9486894875_)))
               (_E9486994893_
                (lambda ()
                  (if (gx#stx-pair? _e9486894875_)
                      (let ((_e9487194883_ (gx#syntax-e _e9486894875_)))
                        (let ((_hd9487294886_ (##car _e9487194883_))
                              (_tl9487394888_ (##cdr _e9487194883_)))
                          (let ((_form94891_ _hd9487294886_))
                            (if '#t
                                (let* ((__self94896
                                        (gx#syntax-local-e__0 _form94891_))
                                       (__method94897
                                        (method-ref
                                         __self94896
                                         'compile-top-syntax)))
                                  (if __method94897
                                      (__method94897 __self94896 _stx94867_)
                                      (error '"Missing method"
                                             __self94896
                                             'compile-top-syntax)))
                                (_E9487094879_)))))
                      (_E9487094879_)))))
          (_E9486994893_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self94827_ _stx94828_)
        (let* ((_self9482994837_ _self94827_)
               (_E9483194841_
                (lambda () (error '"No clause matching" _self9482994837_)))
               (_K9483294853_
                (lambda (_K94844_)
                  (let ((_$e94846_ (gx#stx-source _stx94828_)))
                    (if _$e94846_
                        ((lambda (_g9484894850_)
                           (gx#stx-wrap-source
                            (_K94844_ _stx94828_)
                            _g9484894850_))
                         _$e94846_)
                        (_K94844_ _stx94828_))))))
          (if (##structure-instance-of? _self9482994837_ 'gx#core-expander::t)
              (let* ((_e9483394856_
                      (##unchecked-structure-ref
                       _self9482994837_
                       '1
                       gx#expander::t
                       '#f))
                     (_e9483494859_
                      (##unchecked-structure-ref
                       _self9482994837_
                       '2
                       gx#core-expander::t
                       '#f))
                     (_e9483594862_
                      (##unchecked-structure-ref
                       _self9482994837_
                       '3
                       gx#core-expander::t
                       '#f))
                     (_K94865_ _e9483594862_))
                (_K9483294853_ _K94865_))
              (_E9483194841_)))))
    (bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx94701_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx94701_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx94671_)
        (let* ((_e9467294679_ _stx94671_)
               (_E9467494683_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9467294679_)))
               (_E9467394697_
                (lambda ()
                  (if (gx#stx-pair? _e9467294679_)
                      (let ((_e9467594687_ (gx#syntax-e _e9467294679_)))
                        (let ((_hd9467694690_ (##car _e9467594687_))
                              (_tl9467794692_ (##cdr _e9467594687_)))
                          (let ((_body94695_ _tl9467794692_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body94695_))
                                (_E9467494683_)))))
                      (_E9467494683_)))))
          (_E9467394697_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx94640_)
        (let* ((_e9464194648_ _stx94640_)
               (_E9464394652_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9464194648_)))
               (_E9464294667_
                (lambda ()
                  (if (gx#stx-pair? _e9464194648_)
                      (let ((_e9464494656_ (gx#syntax-e _e9464194648_)))
                        (let ((_hd9464594659_ (##car _e9464494656_))
                              (_tl9464694661_ (##cdr _e9464494656_)))
                          (let ((_body94664_ _tl9464694661_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body94664_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E9464394652_)))))
                      (_E9464394652_)))))
          (_E9464294667_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_stx94610_)
        (let* ((_e9461194618_ _stx94610_)
               (_E9461394622_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9461194618_)))
               (_E9461294636_
                (lambda ()
                  (if (gx#stx-pair? _e9461194618_)
                      (let ((_e9461494626_ (gx#syntax-e _e9461194618_)))
                        (let ((_hd9461594629_ (##car _e9461494626_))
                              (_tl9461694631_ (##cdr _e9461494626_)))
                          (let ((_body94634_ _tl9461694631_))
                            (if '#t
                                (cons '%#begin-foreign _body94634_)
                                (_E9461394622_)))))
                      (_E9461394622_)))))
          (_E9461294636_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_stx94556_)
        (let* ((_e9455794570_ _stx94556_)
               (_E9455994574_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9455794570_)))
               (_E9455894606_
                (lambda ()
                  (if (gx#stx-pair? _e9455794570_)
                      (let ((_e9456094578_ (gx#syntax-e _e9455794570_)))
                        (let ((_hd9456194581_ (##car _e9456094578_))
                              (_tl9456294583_ (##cdr _e9456094578_)))
                          (if (gx#stx-pair? _tl9456294583_)
                              (let ((_e9456394586_
                                     (gx#syntax-e _tl9456294583_)))
                                (let ((_hd9456494589_ (##car _e9456394586_))
                                      (_tl9456594591_ (##cdr _e9456394586_)))
                                  (let ((_ann94594_ _hd9456494589_))
                                    (if (gx#stx-pair? _tl9456594591_)
                                        (let ((_e9456694596_
                                               (gx#syntax-e _tl9456594591_)))
                                          (let ((_hd9456794599_
                                                 (##car _e9456694596_))
                                                (_tl9456894601_
                                                 (##cdr _e9456694596_)))
                                            (let ((_expr94604_ _hd9456794599_))
                                              (if (gx#stx-null? _tl9456894601_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr94604_)
                                                      (_E9455994574_))
                                                  (_E9455994574_)))))
                                        (_E9455994574_)))))
                              (_E9455994574_))))
                      (_E9455994574_)))))
          (_E9455894606_))))
    (define gx#core-compile-top-import%
      (lambda (_stx94526_)
        (let* ((_e9452794534_ _stx94526_)
               (_E9452994538_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9452794534_)))
               (_E9452894552_
                (lambda ()
                  (if (gx#stx-pair? _e9452794534_)
                      (let ((_e9453094542_ (gx#syntax-e _e9452794534_)))
                        (let ((_hd9453194545_ (##car _e9453094542_))
                              (_tl9453294547_ (##cdr _e9453094542_)))
                          (let ((_body94550_ _tl9453294547_))
                            (if '#t
                                (cons '%#import _body94550_)
                                (_E9452994538_)))))
                      (_E9452994538_)))))
          (_E9452894552_))))
    (define gx#core-compile-top-module%
      (lambda (_stx94483_)
        (let* ((_e9448494494_ _stx94483_)
               (_E9448694498_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9448494494_)))
               (_E9448594522_
                (lambda ()
                  (if (gx#stx-pair? _e9448494494_)
                      (let ((_e9448794502_ (gx#syntax-e _e9448494494_)))
                        (let ((_hd9448894505_ (##car _e9448794502_))
                              (_tl9448994507_ (##cdr _e9448794502_)))
                          (if (gx#stx-pair? _tl9448994507_)
                              (let ((_e9449094510_
                                     (gx#syntax-e _tl9448994507_)))
                                (let ((_hd9449194513_ (##car _e9449094510_))
                                      (_tl9449294515_ (##cdr _e9449094510_)))
                                  (let* ((_hd94518_ _hd9449194513_)
                                         (_body94520_ _tl9449294515_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _hd94518_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body94520_)))
                                        (_E9448694498_)))))
                              (_E9448694498_))))
                      (_E9448694498_)))))
          (_E9448594522_))))
    (define gx#core-compile-top-export%
      (lambda (_stx94453_)
        (let* ((_e9445494461_ _stx94453_)
               (_E9445694465_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9445494461_)))
               (_E9445594479_
                (lambda ()
                  (if (gx#stx-pair? _e9445494461_)
                      (let ((_e9445794469_ (gx#syntax-e _e9445494461_)))
                        (let ((_hd9445894472_ (##car _e9445794469_))
                              (_tl9445994474_ (##cdr _e9445794469_)))
                          (let ((_body94477_ _tl9445994474_))
                            (if '#t
                                (cons '%#export _body94477_)
                                (_E9445694465_)))))
                      (_E9445694465_)))))
          (_E9445594479_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx94423_)
        (let* ((_e9442494431_ _stx94423_)
               (_E9442694435_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9442494431_)))
               (_E9442594449_
                (lambda ()
                  (if (gx#stx-pair? _e9442494431_)
                      (let ((_e9442794439_ (gx#syntax-e _e9442494431_)))
                        (let ((_hd9442894442_ (##car _e9442794439_))
                              (_tl9442994444_ (##cdr _e9442794439_)))
                          (let ((_body94447_ _tl9442994444_))
                            (if '#t
                                (cons '%#provide _body94447_)
                                (_E9442694435_)))))
                      (_E9442694435_)))))
          (_E9442594449_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx94393_)
        (let* ((_e9439494401_ _stx94393_)
               (_E9439694405_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9439494401_)))
               (_E9439594419_
                (lambda ()
                  (if (gx#stx-pair? _e9439494401_)
                      (let ((_e9439794409_ (gx#syntax-e _e9439494401_)))
                        (let ((_hd9439894412_ (##car _e9439794409_))
                              (_tl9439994414_ (##cdr _e9439794409_)))
                          (let ((_body94417_ _tl9439994414_))
                            (if '#t
                                (cons '%#extern _body94417_)
                                (_E9439694405_)))))
                      (_E9439694405_)))))
          (_E9439594419_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx94339_)
        (let* ((_e9434094353_ _stx94339_)
               (_E9434294357_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9434094353_)))
               (_E9434194389_
                (lambda ()
                  (if (gx#stx-pair? _e9434094353_)
                      (let ((_e9434394361_ (gx#syntax-e _e9434094353_)))
                        (let ((_hd9434494364_ (##car _e9434394361_))
                              (_tl9434594366_ (##cdr _e9434394361_)))
                          (if (gx#stx-pair? _tl9434594366_)
                              (let ((_e9434694369_
                                     (gx#syntax-e _tl9434594366_)))
                                (let ((_hd9434794372_ (##car _e9434694369_))
                                      (_tl9434894374_ (##cdr _e9434694369_)))
                                  (let ((_hd94377_ _hd9434794372_))
                                    (if (gx#stx-pair? _tl9434894374_)
                                        (let ((_e9434994379_
                                               (gx#syntax-e _tl9434894374_)))
                                          (let ((_hd9435094382_
                                                 (##car _e9434994379_))
                                                (_tl9435194384_
                                                 (##cdr _e9434994379_)))
                                            (let ((_expr94387_ _hd9435094382_))
                                              (if (gx#stx-null? _tl9435194384_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd94377_)
                          (cons (gx#core-compile-top-syntax _expr94387_) '())))
              (_E9434294357_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9434294357_)))))
                                        (_E9434294357_)))))
                              (_E9434294357_))))
                      (_E9434294357_)))))
          (_E9434194389_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx94284_)
        (let* ((_e9428594298_ _stx94284_)
               (_E9428794302_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9428594298_)))
               (_E9428694335_
                (lambda ()
                  (if (gx#stx-pair? _e9428594298_)
                      (let ((_e9428894306_ (gx#syntax-e _e9428594298_)))
                        (let ((_hd9428994309_ (##car _e9428894306_))
                              (_tl9429094311_ (##cdr _e9428894306_)))
                          (if (gx#stx-pair? _tl9429094311_)
                              (let ((_e9429194314_
                                     (gx#syntax-e _tl9429094311_)))
                                (let ((_hd9429294317_ (##car _e9429194314_))
                                      (_tl9429394319_ (##cdr _e9429194314_)))
                                  (let ((_hd94322_ _hd9429294317_))
                                    (if (gx#stx-pair? _tl9429394319_)
                                        (let ((_e9429494324_
                                               (gx#syntax-e _tl9429394319_)))
                                          (let ((_hd9429594327_
                                                 (##car _e9429494324_))
                                                (_tl9429694329_
                                                 (##cdr _e9429494324_)))
                                            (let ((_expr94332_ _hd9429594327_))
                                              (if (gx#stx-null? _tl9429694329_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd94322_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr94332_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E9428794302_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9428794302_)))))
                                        (_E9428794302_)))))
                              (_E9428794302_))))
                      (_E9428794302_)))))
          (_E9428694335_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx94254_)
        (let* ((_e9425594262_ _stx94254_)
               (_E9425794266_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9425594262_)))
               (_E9425694280_
                (lambda ()
                  (if (gx#stx-pair? _e9425594262_)
                      (let ((_e9425894270_ (gx#syntax-e _e9425594262_)))
                        (let ((_hd9425994273_ (##car _e9425894270_))
                              (_tl9426094275_ (##cdr _e9425894270_)))
                          (let ((_body94278_ _tl9426094275_))
                            (if '#t
                                (cons '%#define-alias _body94278_)
                                (_E9425794266_)))))
                      (_E9425794266_)))))
          (_E9425694280_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx94224_)
        (let* ((_e9422594232_ _stx94224_)
               (_E9422794236_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9422594232_)))
               (_E9422694250_
                (lambda ()
                  (if (gx#stx-pair? _e9422594232_)
                      (let ((_e9422894240_ (gx#syntax-e _e9422594232_)))
                        (let ((_hd9422994243_ (##car _e9422894240_))
                              (_tl9423094245_ (##cdr _e9422894240_)))
                          (let ((_body94248_ _tl9423094245_))
                            (if '#t
                                (cons '%#define-runtime _body94248_)
                                (_E9422794236_)))))
                      (_E9422794236_)))))
          (_E9422694250_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx94194_)
        (let* ((_e9419594202_ _stx94194_)
               (_E9419794206_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9419594202_)))
               (_E9419694220_
                (lambda ()
                  (if (gx#stx-pair? _e9419594202_)
                      (let ((_e9419894210_ (gx#syntax-e _e9419594202_)))
                        (let ((_hd9419994213_ (##car _e9419894210_))
                              (_tl9420094215_ (##cdr _e9419894210_)))
                          (let ((_decls94218_ _tl9420094215_))
                            (if '#t
                                (cons '%#declare _decls94218_)
                                (_E9419794206_)))))
                      (_E9419794206_)))))
          (_E9419694220_))))
    (define gx#core-compile-top-lambda%
      (lambda (_stx94164_)
        (let* ((_e9416594172_ _stx94164_)
               (_E9416794176_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9416594172_)))
               (_E9416694190_
                (lambda ()
                  (if (gx#stx-pair? _e9416594172_)
                      (let ((_e9416894180_ (gx#syntax-e _e9416594172_)))
                        (let ((_hd9416994183_ (##car _e9416894180_))
                              (_tl9417094185_ (##cdr _e9416894180_)))
                          (let ((_clause94188_ _tl9417094185_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause94188_))
                                (_E9416794176_)))))
                      (_E9416794176_)))))
          (_E9416694190_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx94121_)
        (let* ((_e9412294132_ _stx94121_)
               (_E9412494136_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9412294132_)))
               (_E9412394160_
                (lambda ()
                  (if (gx#stx-pair? _e9412294132_)
                      (let ((_e9412594140_ (gx#syntax-e _e9412294132_)))
                        (let ((_hd9412694143_ (##car _e9412594140_))
                              (_tl9412794145_ (##cdr _e9412594140_)))
                          (let ((_hd94148_ _hd9412694143_))
                            (if (gx#stx-pair? _tl9412794145_)
                                (let ((_e9412894150_
                                       (gx#syntax-e _tl9412794145_)))
                                  (let ((_hd9412994153_ (##car _e9412894150_))
                                        (_tl9413094155_ (##cdr _e9412894150_)))
                                    (let ((_body94158_ _hd9412994153_))
                                      (if (gx#stx-null? _tl9413094155_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd94148_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body94158_)
                                                          '()))
                                              (_E9412494136_))
                                          (_E9412494136_)))))
                                (_E9412494136_)))))
                      (_E9412494136_)))))
          (_E9412394160_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx94091_)
        (let* ((_e9409294099_ _stx94091_)
               (_E9409494103_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9409294099_)))
               (_E9409394117_
                (lambda ()
                  (if (gx#stx-pair? _e9409294099_)
                      (let ((_e9409594107_ (gx#syntax-e _e9409294099_)))
                        (let ((_hd9409694110_ (##car _e9409594107_))
                              (_tl9409794112_ (##cdr _e9409594107_)))
                          (let ((_clauses94115_ _tl9409794112_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses94115_))
                                (_E9409494103_)))))
                      (_E9409494103_)))))
          (_E9409394117_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx94026_ _form94027_)
        (let* ((_e9402894041_ _stx94026_)
               (_E9403094045_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9402894041_)))
               (_E9402994077_
                (lambda ()
                  (if (gx#stx-pair? _e9402894041_)
                      (let ((_e9403194049_ (gx#syntax-e _e9402894041_)))
                        (let ((_hd9403294052_ (##car _e9403194049_))
                              (_tl9403394054_ (##cdr _e9403194049_)))
                          (if (gx#stx-pair? _tl9403394054_)
                              (let ((_e9403494057_
                                     (gx#syntax-e _tl9403394054_)))
                                (let ((_hd9403594060_ (##car _e9403494057_))
                                      (_tl9403694062_ (##cdr _e9403494057_)))
                                  (let ((_hd94065_ _hd9403594060_))
                                    (if (gx#stx-pair? _tl9403694062_)
                                        (let ((_e9403794067_
                                               (gx#syntax-e _tl9403694062_)))
                                          (let ((_hd9403894070_
                                                 (##car _e9403794067_))
                                                (_tl9403994072_
                                                 (##cdr _e9403794067_)))
                                            (let ((_body94075_ _hd9403894070_))
                                              (if (gx#stx-null? _tl9403994072_)
                                                  (if '#t
                                                      (cons _form94027_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd94065_)
                          (cons (gx#core-compile-top-syntax _body94075_) '())))
              (_E9403094045_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9403094045_)))))
                                        (_E9403094045_)))))
                              (_E9403094045_))))
                      (_E9403094045_)))))
          (_E9402994077_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx94084_)
        (let ((_form94086_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx94084_ _form94086_))))
    (define gx#core-compile-top-let-values%
      (lambda _g94899_
        (let ((_g94898_ (##length _g94899_)))
          (cond ((##fx= _g94898_ 1)
                 (apply (lambda (_stx94084_)
                          (gx#core-compile-top-let-values%__0 _stx94084_))
                        _g94899_))
                ((##fx= _g94898_ 2)
                 (apply (lambda (_stx94088_ _form94089_)
                          (gx#core-compile-top-let-values%__%
                           _stx94088_
                           _form94089_))
                        _g94899_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g94899_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx94023_)
        (gx#core-compile-top-let-values%__% _stx94023_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx94021_)
        (gx#core-compile-top-let-values%__% _stx94021_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx93980_)
        (let* ((_e9398193991_ _stx93980_)
               (_E9398393995_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9398193991_)))
               (_E9398294017_
                (lambda ()
                  (if (gx#stx-pair? _e9398193991_)
                      (let ((_e9398493999_ (gx#syntax-e _e9398193991_)))
                        (let ((_hd9398594002_ (##car _e9398493999_))
                              (_tl9398694004_ (##cdr _e9398493999_)))
                          (if (gx#stx-pair? _tl9398694004_)
                              (let ((_e9398794007_
                                     (gx#syntax-e _tl9398694004_)))
                                (let ((_hd9398894010_ (##car _e9398794007_))
                                      (_tl9398994012_ (##cdr _e9398794007_)))
                                  (let ((_e94015_ _hd9398894010_))
                                    (if (gx#stx-null? _tl9398994012_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e94015_)
                                                        '()))
                                            (_E9398393995_))
                                        (_E9398393995_)))))
                              (_E9398393995_))))
                      (_E9398393995_)))))
          (_E9398294017_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx93939_)
        (let* ((_e9394093950_ _stx93939_)
               (_E9394293954_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9394093950_)))
               (_E9394193976_
                (lambda ()
                  (if (gx#stx-pair? _e9394093950_)
                      (let ((_e9394393958_ (gx#syntax-e _e9394093950_)))
                        (let ((_hd9394493961_ (##car _e9394393958_))
                              (_tl9394593963_ (##cdr _e9394393958_)))
                          (if (gx#stx-pair? _tl9394593963_)
                              (let ((_e9394693966_
                                     (gx#syntax-e _tl9394593963_)))
                                (let ((_hd9394793969_ (##car _e9394693966_))
                                      (_tl9394893971_ (##cdr _e9394693966_)))
                                  (let ((_e93974_ _hd9394793969_))
                                    (if (gx#stx-null? _tl9394893971_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e93974_)
                                                        '()))
                                            (_E9394293954_))
                                        (_E9394293954_)))))
                              (_E9394293954_))))
                      (_E9394293954_)))))
          (_E9394193976_))))
    (define gx#core-compile-top-call%
      (lambda (_stx93896_)
        (let* ((_e9389793907_ _stx93896_)
               (_E9389993911_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9389793907_)))
               (_E9389893935_
                (lambda ()
                  (if (gx#stx-pair? _e9389793907_)
                      (let ((_e9390093915_ (gx#syntax-e _e9389793907_)))
                        (let ((_hd9390193918_ (##car _e9390093915_))
                              (_tl9390293920_ (##cdr _e9390093915_)))
                          (if (gx#stx-pair? _tl9390293920_)
                              (let ((_e9390393923_
                                     (gx#syntax-e _tl9390293920_)))
                                (let ((_hd9390493926_ (##car _e9390393923_))
                                      (_tl9390593928_ (##cdr _e9390393923_)))
                                  (let* ((_rator93931_ _hd9390493926_)
                                         (_args93933_ _tl9390593928_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator93931_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args93933_)))
                                        (_E9389993911_)))))
                              (_E9389993911_))))
                      (_E9389993911_)))))
          (_E9389893935_))))
    (define gx#core-compile-top-if%
      (lambda (_stx93829_)
        (let* ((_e9383093846_ _stx93829_)
               (_E9383293850_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9383093846_)))
               (_E9383193892_
                (lambda ()
                  (if (gx#stx-pair? _e9383093846_)
                      (let ((_e9383393854_ (gx#syntax-e _e9383093846_)))
                        (let ((_hd9383493857_ (##car _e9383393854_))
                              (_tl9383593859_ (##cdr _e9383393854_)))
                          (if (gx#stx-pair? _tl9383593859_)
                              (let ((_e9383693862_
                                     (gx#syntax-e _tl9383593859_)))
                                (let ((_hd9383793865_ (##car _e9383693862_))
                                      (_tl9383893867_ (##cdr _e9383693862_)))
                                  (let ((_test93870_ _hd9383793865_))
                                    (if (gx#stx-pair? _tl9383893867_)
                                        (let ((_e9383993872_
                                               (gx#syntax-e _tl9383893867_)))
                                          (let ((_hd9384093875_
                                                 (##car _e9383993872_))
                                                (_tl9384193877_
                                                 (##cdr _e9383993872_)))
                                            (let ((_K93880_ _hd9384093875_))
                                              (if (gx#stx-pair? _tl9384193877_)
                                                  (let ((_e9384293882_
                                                         (gx#syntax-e
                                                          _tl9384193877_)))
                                                    (let ((_hd9384393885_
                                                           (##car _e9384293882_))
                                                          (_tl9384493887_
                                                           (##cdr _e9384293882_)))
                                                      (let ((_E93890_
                                                             _hd9384393885_))
                                                        (if (gx#stx-null?
                                                             _tl9384493887_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test93870_)
                                    (cons (gx#core-compile-top-syntax _K93880_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E93890_)
                                                '()))))
                        (_E9383293850_))
                    (_E9383293850_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9383293850_)))))
                                        (_E9383293850_)))))
                              (_E9383293850_))))
                      (_E9383293850_)))))
          (_E9383193892_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx93788_)
        (let* ((_e9378993799_ _stx93788_)
               (_E9379193803_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9378993799_)))
               (_E9379093825_
                (lambda ()
                  (if (gx#stx-pair? _e9378993799_)
                      (let ((_e9379293807_ (gx#syntax-e _e9378993799_)))
                        (let ((_hd9379393810_ (##car _e9379293807_))
                              (_tl9379493812_ (##cdr _e9379293807_)))
                          (if (gx#stx-pair? _tl9379493812_)
                              (let ((_e9379593815_
                                     (gx#syntax-e _tl9379493812_)))
                                (let ((_hd9379693818_ (##car _e9379593815_))
                                      (_tl9379793820_ (##cdr _e9379593815_)))
                                  (let ((_id93823_ _hd9379693818_))
                                    (if (gx#stx-null? _tl9379793820_)
                                        (if (gx#identifier? _id93823_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id93823_)
                                                        '()))
                                            (_E9379193803_))
                                        (_E9379193803_)))))
                              (_E9379193803_))))
                      (_E9379193803_)))))
          (_E9379093825_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx93734_)
        (let* ((_e9373593748_ _stx93734_)
               (_E9373793752_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9373593748_)))
               (_E9373693784_
                (lambda ()
                  (if (gx#stx-pair? _e9373593748_)
                      (let ((_e9373893756_ (gx#syntax-e _e9373593748_)))
                        (let ((_hd9373993759_ (##car _e9373893756_))
                              (_tl9374093761_ (##cdr _e9373893756_)))
                          (if (gx#stx-pair? _tl9374093761_)
                              (let ((_e9374193764_
                                     (gx#syntax-e _tl9374093761_)))
                                (let ((_hd9374293767_ (##car _e9374193764_))
                                      (_tl9374393769_ (##cdr _e9374193764_)))
                                  (let ((_id93772_ _hd9374293767_))
                                    (if (gx#stx-pair? _tl9374393769_)
                                        (let ((_e9374493774_
                                               (gx#syntax-e _tl9374393769_)))
                                          (let ((_hd9374593777_
                                                 (##car _e9374493774_))
                                                (_tl9374693779_
                                                 (##cdr _e9374493774_)))
                                            (let ((_expr93782_ _hd9374593777_))
                                              (if (gx#stx-null? _tl9374693779_)
                                                  (if (gx#identifier?
                                                       _id93772_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id93772_)
                          (cons (gx#core-compile-top-syntax _expr93782_) '())))
              (_E9373793752_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9373793752_)))))
                                        (_E9373793752_)))))
                              (_E9373793752_))))
                      (_E9373793752_)))))
          (_E9373693784_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id93729_)
        (let ((_$e93731_ (gx#resolve-identifier__0 _id93729_)))
          (if _$e93731_
              (##unchecked-structure-ref _$e93731_ '1 gx#binding::t '#f)
              _id93729_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd93727_)
        (if (gx#identifier? _hd93727_)
            (gx#core-compile-top-runtime-ref _hd93727_)
            '#f)))))
