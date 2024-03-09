(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1709994213)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx95116_)
        (let* ((_e9511795124_ _stx95116_)
               (_E9511995128_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9511795124_)))
               (_E9511895142_
                (lambda ()
                  (if (gx#stx-pair? _e9511795124_)
                      (let ((_e9512095132_ (gx#syntax-e _e9511795124_)))
                        (let ((_hd9512195135_ (##car _e9512095132_))
                              (_tl9512295137_ (##cdr _e9512095132_)))
                          (let ((_form95140_ _hd9512195135_))
                            (if '#t
                                (let* ((__self95145
                                        (gx#syntax-local-e__0 _form95140_))
                                       (__method95146
                                        (method-ref
                                         __self95145
                                         'compile-top-syntax)))
                                  (if __method95146
                                      (__method95146 __self95145 _stx95116_)
                                      (error '"Missing method"
                                             __self95145
                                             'compile-top-syntax)))
                                (_E9511995128_)))))
                      (_E9511995128_)))))
          (_E9511895142_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self95076_ _stx95077_)
        (let* ((_self9507895086_ _self95076_)
               (_E9508095090_
                (lambda () (error '"No clause matching" _self9507895086_)))
               (_K9508195102_
                (lambda (_K95093_)
                  (let ((_$e95095_ (gx#stx-source _stx95077_)))
                    (if _$e95095_
                        ((lambda (_g9509795099_)
                           (gx#stx-wrap-source
                            (_K95093_ _stx95077_)
                            _g9509795099_))
                         _$e95095_)
                        (_K95093_ _stx95077_))))))
          (if (##structure-instance-of? _self9507895086_ 'gx#core-expander::t)
              (let* ((_e9508295105_
                      (##unchecked-structure-ref
                       _self9507895086_
                       '1
                       gx#expander::t
                       '#f))
                     (_e9508395108_
                      (##unchecked-structure-ref
                       _self9507895086_
                       '2
                       gx#core-expander::t
                       '#f))
                     (_e9508495111_
                      (##unchecked-structure-ref
                       _self9507895086_
                       '3
                       gx#core-expander::t
                       '#f))
                     (_K95114_ _e9508495111_))
                (_K9508195102_ _K95114_))
              (_E9508095090_)))))
    (bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx94950_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx94950_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx94920_)
        (let* ((_e9492194928_ _stx94920_)
               (_E9492394932_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9492194928_)))
               (_E9492294946_
                (lambda ()
                  (if (gx#stx-pair? _e9492194928_)
                      (let ((_e9492494936_ (gx#syntax-e _e9492194928_)))
                        (let ((_hd9492594939_ (##car _e9492494936_))
                              (_tl9492694941_ (##cdr _e9492494936_)))
                          (let ((_body94944_ _tl9492694941_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body94944_))
                                (_E9492394932_)))))
                      (_E9492394932_)))))
          (_E9492294946_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx94889_)
        (let* ((_e9489094897_ _stx94889_)
               (_E9489294901_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9489094897_)))
               (_E9489194916_
                (lambda ()
                  (if (gx#stx-pair? _e9489094897_)
                      (let ((_e9489394905_ (gx#syntax-e _e9489094897_)))
                        (let ((_hd9489494908_ (##car _e9489394905_))
                              (_tl9489594910_ (##cdr _e9489394905_)))
                          (let ((_body94913_ _tl9489594910_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body94913_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E9489294901_)))))
                      (_E9489294901_)))))
          (_E9489194916_))))
    (define gx#core-compile-top-begin-foreign%
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
                          (let ((_body94883_ _tl9486594880_))
                            (if '#t
                                (cons '%#begin-foreign _body94883_)
                                (_E9486294871_)))))
                      (_E9486294871_)))))
          (_E9486194885_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_stx94805_)
        (let* ((_e9480694819_ _stx94805_)
               (_E9480894823_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9480694819_)))
               (_E9480794855_
                (lambda ()
                  (if (gx#stx-pair? _e9480694819_)
                      (let ((_e9480994827_ (gx#syntax-e _e9480694819_)))
                        (let ((_hd9481094830_ (##car _e9480994827_))
                              (_tl9481194832_ (##cdr _e9480994827_)))
                          (if (gx#stx-pair? _tl9481194832_)
                              (let ((_e9481294835_
                                     (gx#syntax-e _tl9481194832_)))
                                (let ((_hd9481394838_ (##car _e9481294835_))
                                      (_tl9481494840_ (##cdr _e9481294835_)))
                                  (let ((_ann94843_ _hd9481394838_))
                                    (if (gx#stx-pair? _tl9481494840_)
                                        (let ((_e9481594845_
                                               (gx#syntax-e _tl9481494840_)))
                                          (let ((_hd9481694848_
                                                 (##car _e9481594845_))
                                                (_tl9481794850_
                                                 (##cdr _e9481594845_)))
                                            (let ((_expr94853_ _hd9481694848_))
                                              (if (gx#stx-null? _tl9481794850_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr94853_)
                                                      (_E9480894823_))
                                                  (_E9480894823_)))))
                                        (_E9480894823_)))))
                              (_E9480894823_))))
                      (_E9480894823_)))))
          (_E9480794855_))))
    (define gx#core-compile-top-import%
      (lambda (_stx94775_)
        (let* ((_e9477694783_ _stx94775_)
               (_E9477894787_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9477694783_)))
               (_E9477794801_
                (lambda ()
                  (if (gx#stx-pair? _e9477694783_)
                      (let ((_e9477994791_ (gx#syntax-e _e9477694783_)))
                        (let ((_hd9478094794_ (##car _e9477994791_))
                              (_tl9478194796_ (##cdr _e9477994791_)))
                          (let ((_body94799_ _tl9478194796_))
                            (if '#t
                                (cons '%#import _body94799_)
                                (_E9477894787_)))))
                      (_E9477894787_)))))
          (_E9477794801_))))
    (define gx#core-compile-top-module%
      (lambda (_stx94732_)
        (let* ((_e9473394743_ _stx94732_)
               (_E9473594747_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9473394743_)))
               (_E9473494771_
                (lambda ()
                  (if (gx#stx-pair? _e9473394743_)
                      (let ((_e9473694751_ (gx#syntax-e _e9473394743_)))
                        (let ((_hd9473794754_ (##car _e9473694751_))
                              (_tl9473894756_ (##cdr _e9473694751_)))
                          (if (gx#stx-pair? _tl9473894756_)
                              (let ((_e9473994759_
                                     (gx#syntax-e _tl9473894756_)))
                                (let ((_hd9474094762_ (##car _e9473994759_))
                                      (_tl9474194764_ (##cdr _e9473994759_)))
                                  (let* ((_hd94767_ _hd9474094762_)
                                         (_body94769_ _tl9474194764_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _hd94767_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body94769_)))
                                        (_E9473594747_)))))
                              (_E9473594747_))))
                      (_E9473594747_)))))
          (_E9473494771_))))
    (define gx#core-compile-top-export%
      (lambda (_stx94702_)
        (let* ((_e9470394710_ _stx94702_)
               (_E9470594714_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9470394710_)))
               (_E9470494728_
                (lambda ()
                  (if (gx#stx-pair? _e9470394710_)
                      (let ((_e9470694718_ (gx#syntax-e _e9470394710_)))
                        (let ((_hd9470794721_ (##car _e9470694718_))
                              (_tl9470894723_ (##cdr _e9470694718_)))
                          (let ((_body94726_ _tl9470894723_))
                            (if '#t
                                (cons '%#export _body94726_)
                                (_E9470594714_)))))
                      (_E9470594714_)))))
          (_E9470494728_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx94672_)
        (let* ((_e9467394680_ _stx94672_)
               (_E9467594684_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9467394680_)))
               (_E9467494698_
                (lambda ()
                  (if (gx#stx-pair? _e9467394680_)
                      (let ((_e9467694688_ (gx#syntax-e _e9467394680_)))
                        (let ((_hd9467794691_ (##car _e9467694688_))
                              (_tl9467894693_ (##cdr _e9467694688_)))
                          (let ((_body94696_ _tl9467894693_))
                            (if '#t
                                (cons '%#provide _body94696_)
                                (_E9467594684_)))))
                      (_E9467594684_)))))
          (_E9467494698_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx94642_)
        (let* ((_e9464394650_ _stx94642_)
               (_E9464594654_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9464394650_)))
               (_E9464494668_
                (lambda ()
                  (if (gx#stx-pair? _e9464394650_)
                      (let ((_e9464694658_ (gx#syntax-e _e9464394650_)))
                        (let ((_hd9464794661_ (##car _e9464694658_))
                              (_tl9464894663_ (##cdr _e9464694658_)))
                          (let ((_body94666_ _tl9464894663_))
                            (if '#t
                                (cons '%#extern _body94666_)
                                (_E9464594654_)))))
                      (_E9464594654_)))))
          (_E9464494668_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx94588_)
        (let* ((_e9458994602_ _stx94588_)
               (_E9459194606_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9458994602_)))
               (_E9459094638_
                (lambda ()
                  (if (gx#stx-pair? _e9458994602_)
                      (let ((_e9459294610_ (gx#syntax-e _e9458994602_)))
                        (let ((_hd9459394613_ (##car _e9459294610_))
                              (_tl9459494615_ (##cdr _e9459294610_)))
                          (if (gx#stx-pair? _tl9459494615_)
                              (let ((_e9459594618_
                                     (gx#syntax-e _tl9459494615_)))
                                (let ((_hd9459694621_ (##car _e9459594618_))
                                      (_tl9459794623_ (##cdr _e9459594618_)))
                                  (let ((_hd94626_ _hd9459694621_))
                                    (if (gx#stx-pair? _tl9459794623_)
                                        (let ((_e9459894628_
                                               (gx#syntax-e _tl9459794623_)))
                                          (let ((_hd9459994631_
                                                 (##car _e9459894628_))
                                                (_tl9460094633_
                                                 (##cdr _e9459894628_)))
                                            (let ((_expr94636_ _hd9459994631_))
                                              (if (gx#stx-null? _tl9460094633_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd94626_)
                          (cons (gx#core-compile-top-syntax _expr94636_) '())))
              (_E9459194606_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9459194606_)))))
                                        (_E9459194606_)))))
                              (_E9459194606_))))
                      (_E9459194606_)))))
          (_E9459094638_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx94533_)
        (let* ((_e9453494547_ _stx94533_)
               (_E9453694551_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9453494547_)))
               (_E9453594584_
                (lambda ()
                  (if (gx#stx-pair? _e9453494547_)
                      (let ((_e9453794555_ (gx#syntax-e _e9453494547_)))
                        (let ((_hd9453894558_ (##car _e9453794555_))
                              (_tl9453994560_ (##cdr _e9453794555_)))
                          (if (gx#stx-pair? _tl9453994560_)
                              (let ((_e9454094563_
                                     (gx#syntax-e _tl9453994560_)))
                                (let ((_hd9454194566_ (##car _e9454094563_))
                                      (_tl9454294568_ (##cdr _e9454094563_)))
                                  (let ((_hd94571_ _hd9454194566_))
                                    (if (gx#stx-pair? _tl9454294568_)
                                        (let ((_e9454394573_
                                               (gx#syntax-e _tl9454294568_)))
                                          (let ((_hd9454494576_
                                                 (##car _e9454394573_))
                                                (_tl9454594578_
                                                 (##cdr _e9454394573_)))
                                            (let ((_expr94581_ _hd9454494576_))
                                              (if (gx#stx-null? _tl9454594578_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd94571_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr94581_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E9453694551_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9453694551_)))))
                                        (_E9453694551_)))))
                              (_E9453694551_))))
                      (_E9453694551_)))))
          (_E9453594584_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx94503_)
        (let* ((_e9450494511_ _stx94503_)
               (_E9450694515_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9450494511_)))
               (_E9450594529_
                (lambda ()
                  (if (gx#stx-pair? _e9450494511_)
                      (let ((_e9450794519_ (gx#syntax-e _e9450494511_)))
                        (let ((_hd9450894522_ (##car _e9450794519_))
                              (_tl9450994524_ (##cdr _e9450794519_)))
                          (let ((_body94527_ _tl9450994524_))
                            (if '#t
                                (cons '%#define-alias _body94527_)
                                (_E9450694515_)))))
                      (_E9450694515_)))))
          (_E9450594529_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx94473_)
        (let* ((_e9447494481_ _stx94473_)
               (_E9447694485_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9447494481_)))
               (_E9447594499_
                (lambda ()
                  (if (gx#stx-pair? _e9447494481_)
                      (let ((_e9447794489_ (gx#syntax-e _e9447494481_)))
                        (let ((_hd9447894492_ (##car _e9447794489_))
                              (_tl9447994494_ (##cdr _e9447794489_)))
                          (let ((_body94497_ _tl9447994494_))
                            (if '#t
                                (cons '%#define-runtime _body94497_)
                                (_E9447694485_)))))
                      (_E9447694485_)))))
          (_E9447594499_))))
    (define gx#core-compile-top-declare%
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
                          (let ((_decls94467_ _tl9444994464_))
                            (if '#t
                                (cons '%#declare _decls94467_)
                                (_E9444694455_)))))
                      (_E9444694455_)))))
          (_E9444594469_))))
    (define gx#core-compile-top-lambda%
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
                          (let ((_clause94437_ _tl9441994434_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause94437_))
                                (_E9441694425_)))))
                      (_E9441694425_)))))
          (_E9441594439_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx94370_)
        (let* ((_e9437194381_ _stx94370_)
               (_E9437394385_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9437194381_)))
               (_E9437294409_
                (lambda ()
                  (if (gx#stx-pair? _e9437194381_)
                      (let ((_e9437494389_ (gx#syntax-e _e9437194381_)))
                        (let ((_hd9437594392_ (##car _e9437494389_))
                              (_tl9437694394_ (##cdr _e9437494389_)))
                          (let ((_hd94397_ _hd9437594392_))
                            (if (gx#stx-pair? _tl9437694394_)
                                (let ((_e9437794399_
                                       (gx#syntax-e _tl9437694394_)))
                                  (let ((_hd9437894402_ (##car _e9437794399_))
                                        (_tl9437994404_ (##cdr _e9437794399_)))
                                    (let ((_body94407_ _hd9437894402_))
                                      (if (gx#stx-null? _tl9437994404_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd94397_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body94407_)
                                                          '()))
                                              (_E9437394385_))
                                          (_E9437394385_)))))
                                (_E9437394385_)))))
                      (_E9437394385_)))))
          (_E9437294409_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx94340_)
        (let* ((_e9434194348_ _stx94340_)
               (_E9434394352_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9434194348_)))
               (_E9434294366_
                (lambda ()
                  (if (gx#stx-pair? _e9434194348_)
                      (let ((_e9434494356_ (gx#syntax-e _e9434194348_)))
                        (let ((_hd9434594359_ (##car _e9434494356_))
                              (_tl9434694361_ (##cdr _e9434494356_)))
                          (let ((_clauses94364_ _tl9434694361_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses94364_))
                                (_E9434394352_)))))
                      (_E9434394352_)))))
          (_E9434294366_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx94275_ _form94276_)
        (let* ((_e9427794290_ _stx94275_)
               (_E9427994294_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9427794290_)))
               (_E9427894326_
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
                                            (let ((_body94324_ _hd9428794319_))
                                              (if (gx#stx-null? _tl9428894321_)
                                                  (if '#t
                                                      (cons _form94276_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd94314_)
                          (cons (gx#core-compile-top-syntax _body94324_) '())))
              (_E9427994294_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9427994294_)))))
                                        (_E9427994294_)))))
                              (_E9427994294_))))
                      (_E9427994294_)))))
          (_E9427894326_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx94333_)
        (let ((_form94335_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx94333_ _form94335_))))
    (define gx#core-compile-top-let-values%
      (lambda _g95148_
        (let ((_g95147_ (##length _g95148_)))
          (cond ((##fx= _g95147_ 1)
                 (apply (lambda (_stx94333_)
                          (gx#core-compile-top-let-values%__0 _stx94333_))
                        _g95148_))
                ((##fx= _g95147_ 2)
                 (apply (lambda (_stx94337_ _form94338_)
                          (gx#core-compile-top-let-values%__%
                           _stx94337_
                           _form94338_))
                        _g95148_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g95148_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx94272_)
        (gx#core-compile-top-let-values%__% _stx94272_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx94270_)
        (gx#core-compile-top-let-values%__% _stx94270_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx94229_)
        (let* ((_e9423094240_ _stx94229_)
               (_E9423294244_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9423094240_)))
               (_E9423194266_
                (lambda ()
                  (if (gx#stx-pair? _e9423094240_)
                      (let ((_e9423394248_ (gx#syntax-e _e9423094240_)))
                        (let ((_hd9423494251_ (##car _e9423394248_))
                              (_tl9423594253_ (##cdr _e9423394248_)))
                          (if (gx#stx-pair? _tl9423594253_)
                              (let ((_e9423694256_
                                     (gx#syntax-e _tl9423594253_)))
                                (let ((_hd9423794259_ (##car _e9423694256_))
                                      (_tl9423894261_ (##cdr _e9423694256_)))
                                  (let ((_e94264_ _hd9423794259_))
                                    (if (gx#stx-null? _tl9423894261_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e94264_)
                                                        '()))
                                            (_E9423294244_))
                                        (_E9423294244_)))))
                              (_E9423294244_))))
                      (_E9423294244_)))))
          (_E9423194266_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx94188_)
        (let* ((_e9418994199_ _stx94188_)
               (_E9419194203_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9418994199_)))
               (_E9419094225_
                (lambda ()
                  (if (gx#stx-pair? _e9418994199_)
                      (let ((_e9419294207_ (gx#syntax-e _e9418994199_)))
                        (let ((_hd9419394210_ (##car _e9419294207_))
                              (_tl9419494212_ (##cdr _e9419294207_)))
                          (if (gx#stx-pair? _tl9419494212_)
                              (let ((_e9419594215_
                                     (gx#syntax-e _tl9419494212_)))
                                (let ((_hd9419694218_ (##car _e9419594215_))
                                      (_tl9419794220_ (##cdr _e9419594215_)))
                                  (let ((_e94223_ _hd9419694218_))
                                    (if (gx#stx-null? _tl9419794220_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e94223_)
                                                        '()))
                                            (_E9419194203_))
                                        (_E9419194203_)))))
                              (_E9419194203_))))
                      (_E9419194203_)))))
          (_E9419094225_))))
    (define gx#core-compile-top-call%
      (lambda (_stx94145_)
        (let* ((_e9414694156_ _stx94145_)
               (_E9414894160_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9414694156_)))
               (_E9414794184_
                (lambda ()
                  (if (gx#stx-pair? _e9414694156_)
                      (let ((_e9414994164_ (gx#syntax-e _e9414694156_)))
                        (let ((_hd9415094167_ (##car _e9414994164_))
                              (_tl9415194169_ (##cdr _e9414994164_)))
                          (if (gx#stx-pair? _tl9415194169_)
                              (let ((_e9415294172_
                                     (gx#syntax-e _tl9415194169_)))
                                (let ((_hd9415394175_ (##car _e9415294172_))
                                      (_tl9415494177_ (##cdr _e9415294172_)))
                                  (let* ((_rator94180_ _hd9415394175_)
                                         (_args94182_ _tl9415494177_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator94180_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args94182_)))
                                        (_E9414894160_)))))
                              (_E9414894160_))))
                      (_E9414894160_)))))
          (_E9414794184_))))
    (define gx#core-compile-top-if%
      (lambda (_stx94078_)
        (let* ((_e9407994095_ _stx94078_)
               (_E9408194099_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9407994095_)))
               (_E9408094141_
                (lambda ()
                  (if (gx#stx-pair? _e9407994095_)
                      (let ((_e9408294103_ (gx#syntax-e _e9407994095_)))
                        (let ((_hd9408394106_ (##car _e9408294103_))
                              (_tl9408494108_ (##cdr _e9408294103_)))
                          (if (gx#stx-pair? _tl9408494108_)
                              (let ((_e9408594111_
                                     (gx#syntax-e _tl9408494108_)))
                                (let ((_hd9408694114_ (##car _e9408594111_))
                                      (_tl9408794116_ (##cdr _e9408594111_)))
                                  (let ((_test94119_ _hd9408694114_))
                                    (if (gx#stx-pair? _tl9408794116_)
                                        (let ((_e9408894121_
                                               (gx#syntax-e _tl9408794116_)))
                                          (let ((_hd9408994124_
                                                 (##car _e9408894121_))
                                                (_tl9409094126_
                                                 (##cdr _e9408894121_)))
                                            (let ((_K94129_ _hd9408994124_))
                                              (if (gx#stx-pair? _tl9409094126_)
                                                  (let ((_e9409194131_
                                                         (gx#syntax-e
                                                          _tl9409094126_)))
                                                    (let ((_hd9409294134_
                                                           (##car _e9409194131_))
                                                          (_tl9409394136_
                                                           (##cdr _e9409194131_)))
                                                      (let ((_E94139_
                                                             _hd9409294134_))
                                                        (if (gx#stx-null?
                                                             _tl9409394136_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test94119_)
                                    (cons (gx#core-compile-top-syntax _K94129_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E94139_)
                                                '()))))
                        (_E9408194099_))
                    (_E9408194099_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9408194099_)))))
                                        (_E9408194099_)))))
                              (_E9408194099_))))
                      (_E9408194099_)))))
          (_E9408094141_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx94037_)
        (let* ((_e9403894048_ _stx94037_)
               (_E9404094052_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9403894048_)))
               (_E9403994074_
                (lambda ()
                  (if (gx#stx-pair? _e9403894048_)
                      (let ((_e9404194056_ (gx#syntax-e _e9403894048_)))
                        (let ((_hd9404294059_ (##car _e9404194056_))
                              (_tl9404394061_ (##cdr _e9404194056_)))
                          (if (gx#stx-pair? _tl9404394061_)
                              (let ((_e9404494064_
                                     (gx#syntax-e _tl9404394061_)))
                                (let ((_hd9404594067_ (##car _e9404494064_))
                                      (_tl9404694069_ (##cdr _e9404494064_)))
                                  (let ((_id94072_ _hd9404594067_))
                                    (if (gx#stx-null? _tl9404694069_)
                                        (if (gx#identifier? _id94072_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id94072_)
                                                        '()))
                                            (_E9404094052_))
                                        (_E9404094052_)))))
                              (_E9404094052_))))
                      (_E9404094052_)))))
          (_E9403994074_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx93983_)
        (let* ((_e9398493997_ _stx93983_)
               (_E9398694001_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9398493997_)))
               (_E9398594033_
                (lambda ()
                  (if (gx#stx-pair? _e9398493997_)
                      (let ((_e9398794005_ (gx#syntax-e _e9398493997_)))
                        (let ((_hd9398894008_ (##car _e9398794005_))
                              (_tl9398994010_ (##cdr _e9398794005_)))
                          (if (gx#stx-pair? _tl9398994010_)
                              (let ((_e9399094013_
                                     (gx#syntax-e _tl9398994010_)))
                                (let ((_hd9399194016_ (##car _e9399094013_))
                                      (_tl9399294018_ (##cdr _e9399094013_)))
                                  (let ((_id94021_ _hd9399194016_))
                                    (if (gx#stx-pair? _tl9399294018_)
                                        (let ((_e9399394023_
                                               (gx#syntax-e _tl9399294018_)))
                                          (let ((_hd9399494026_
                                                 (##car _e9399394023_))
                                                (_tl9399594028_
                                                 (##cdr _e9399394023_)))
                                            (let ((_expr94031_ _hd9399494026_))
                                              (if (gx#stx-null? _tl9399594028_)
                                                  (if (gx#identifier?
                                                       _id94021_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id94021_)
                          (cons (gx#core-compile-top-syntax _expr94031_) '())))
              (_E9398694001_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9398694001_)))))
                                        (_E9398694001_)))))
                              (_E9398694001_))))
                      (_E9398694001_)))))
          (_E9398594033_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id93978_)
        (let ((_$e93980_ (gx#resolve-identifier__0 _id93978_)))
          (if _$e93980_
              (##unchecked-structure-ref _$e93980_ '1 gx#binding::t '#f)
              _id93978_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd93976_)
        (if (gx#identifier? _hd93976_)
            (gx#core-compile-top-runtime-ref _hd93976_)
            '#f)))))
