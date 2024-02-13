(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1707831899)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx169357_)
        (let* ((_e169358169365_ _stx169357_)
               (_E169360169369_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169358169365_)))
               (_E169359169383_
                (lambda ()
                  (if (gx#stx-pair? _e169358169365_)
                      (let ((_e169361169373_ (gx#syntax-e _e169358169365_)))
                        (let ((_hd169362169376_ (##car _e169361169373_))
                              (_tl169363169378_ (##cdr _e169361169373_)))
                          (let ((_form169381_ _hd169362169376_))
                            (if '#t
                                (let* ((__self173954
                                        (gx#syntax-local-e__0 _form169381_))
                                       (__method173955
                                        (method-ref
                                         __self173954
                                         'compile-top-syntax)))
                                  (if __method173955
                                      (__method173955 __self173954 _stx169357_)
                                      (error '"Missing method"
                                             __self173954
                                             'compile-top-syntax)))
                                (_E169360169369_)))))
                      (_E169360169369_)))))
          (_E169359169383_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self169317_ _stx169318_)
        (let* ((_self169319169327_ _self169317_)
               (_E169321169331_
                (lambda () (error '"No clause matching" _self169319169327_)))
               (_K169322169343_
                (lambda (_K169334_)
                  (let ((_$e169336_ (gx#stx-source _stx169318_)))
                    (if _$e169336_
                        ((lambda (_g169338169340_)
                           (gx#stx-wrap-source
                            (_K169334_ _stx169318_)
                            _g169338169340_))
                         _$e169336_)
                        (_K169334_ _stx169318_))))))
          (if (##structure-instance-of?
               _self169319169327_
               'gx#core-expander::t)
              (let* ((_e169323169346_
                      (##unchecked-structure-ref
                       _self169319169327_
                       '1
                       gx#expander::t
                       '#f))
                     (_e169324169349_
                      (##unchecked-structure-ref
                       _self169319169327_
                       '2
                       gx#core-expander::t
                       '#f))
                     (_e169325169352_
                      (##unchecked-structure-ref
                       _self169319169327_
                       '3
                       gx#core-expander::t
                       '#f))
                     (_K169355_ _e169325169352_))
                (_K169322169343_ _K169355_))
              (_E169321169331_)))))
    (bind-method!
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx169191_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx169191_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx169161_)
        (let* ((_e169162169169_ _stx169161_)
               (_E169164169173_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169162169169_)))
               (_E169163169187_
                (lambda ()
                  (if (gx#stx-pair? _e169162169169_)
                      (let ((_e169165169177_ (gx#syntax-e _e169162169169_)))
                        (let ((_hd169166169180_ (##car _e169165169177_))
                              (_tl169167169182_ (##cdr _e169165169177_)))
                          (let ((_body169185_ _tl169167169182_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body169185_))
                                (_E169164169173_)))))
                      (_E169164169173_)))))
          (_E169163169187_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx169130_)
        (let* ((_e169131169138_ _stx169130_)
               (_E169133169142_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169131169138_)))
               (_E169132169157_
                (lambda ()
                  (if (gx#stx-pair? _e169131169138_)
                      (let ((_e169134169146_ (gx#syntax-e _e169131169138_)))
                        (let ((_hd169135169149_ (##car _e169134169146_))
                              (_tl169136169151_ (##cdr _e169134169146_)))
                          (let ((_body169154_ _tl169136169151_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body169154_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E169133169142_)))))
                      (_E169133169142_)))))
          (_E169132169157_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_stx169100_)
        (let* ((_e169101169108_ _stx169100_)
               (_E169103169112_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169101169108_)))
               (_E169102169126_
                (lambda ()
                  (if (gx#stx-pair? _e169101169108_)
                      (let ((_e169104169116_ (gx#syntax-e _e169101169108_)))
                        (let ((_hd169105169119_ (##car _e169104169116_))
                              (_tl169106169121_ (##cdr _e169104169116_)))
                          (let ((_body169124_ _tl169106169121_))
                            (if '#t
                                (cons '%#begin-foreign _body169124_)
                                (_E169103169112_)))))
                      (_E169103169112_)))))
          (_E169102169126_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_stx169046_)
        (let* ((_e169047169060_ _stx169046_)
               (_E169049169064_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169047169060_)))
               (_E169048169096_
                (lambda ()
                  (if (gx#stx-pair? _e169047169060_)
                      (let ((_e169050169068_ (gx#syntax-e _e169047169060_)))
                        (let ((_hd169051169071_ (##car _e169050169068_))
                              (_tl169052169073_ (##cdr _e169050169068_)))
                          (if (gx#stx-pair? _tl169052169073_)
                              (let ((_e169053169076_
                                     (gx#syntax-e _tl169052169073_)))
                                (let ((_hd169054169079_
                                       (##car _e169053169076_))
                                      (_tl169055169081_
                                       (##cdr _e169053169076_)))
                                  (let ((_ann169084_ _hd169054169079_))
                                    (if (gx#stx-pair? _tl169055169081_)
                                        (let ((_e169056169086_
                                               (gx#syntax-e _tl169055169081_)))
                                          (let ((_hd169057169089_
                                                 (##car _e169056169086_))
                                                (_tl169058169091_
                                                 (##cdr _e169056169086_)))
                                            (let ((_expr169094_
                                                   _hd169057169089_))
                                              (if (gx#stx-null?
                                                   _tl169058169091_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr169094_)
                                                      (_E169049169064_))
                                                  (_E169049169064_)))))
                                        (_E169049169064_)))))
                              (_E169049169064_))))
                      (_E169049169064_)))))
          (_E169048169096_))))
    (define gx#core-compile-top-import%
      (lambda (_stx169016_)
        (let* ((_e169017169024_ _stx169016_)
               (_E169019169028_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169017169024_)))
               (_E169018169042_
                (lambda ()
                  (if (gx#stx-pair? _e169017169024_)
                      (let ((_e169020169032_ (gx#syntax-e _e169017169024_)))
                        (let ((_hd169021169035_ (##car _e169020169032_))
                              (_tl169022169037_ (##cdr _e169020169032_)))
                          (let ((_body169040_ _tl169022169037_))
                            (if '#t
                                (cons '%#import _body169040_)
                                (_E169019169028_)))))
                      (_E169019169028_)))))
          (_E169018169042_))))
    (define gx#core-compile-top-module%
      (lambda (_stx168973_)
        (let* ((_e168974168984_ _stx168973_)
               (_E168976168988_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168974168984_)))
               (_E168975169012_
                (lambda ()
                  (if (gx#stx-pair? _e168974168984_)
                      (let ((_e168977168992_ (gx#syntax-e _e168974168984_)))
                        (let ((_hd168978168995_ (##car _e168977168992_))
                              (_tl168979168997_ (##cdr _e168977168992_)))
                          (if (gx#stx-pair? _tl168979168997_)
                              (let ((_e168980169000_
                                     (gx#syntax-e _tl168979168997_)))
                                (let ((_hd168981169003_
                                       (##car _e168980169000_))
                                      (_tl168982169005_
                                       (##cdr _e168980169000_)))
                                  (let* ((_hd169008_ _hd168981169003_)
                                         (_body169010_ _tl168982169005_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _hd169008_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body169010_)))
                                        (_E168976168988_)))))
                              (_E168976168988_))))
                      (_E168976168988_)))))
          (_E168975169012_))))
    (define gx#core-compile-top-export%
      (lambda (_stx168943_)
        (let* ((_e168944168951_ _stx168943_)
               (_E168946168955_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168944168951_)))
               (_E168945168969_
                (lambda ()
                  (if (gx#stx-pair? _e168944168951_)
                      (let ((_e168947168959_ (gx#syntax-e _e168944168951_)))
                        (let ((_hd168948168962_ (##car _e168947168959_))
                              (_tl168949168964_ (##cdr _e168947168959_)))
                          (let ((_body168967_ _tl168949168964_))
                            (if '#t
                                (cons '%#export _body168967_)
                                (_E168946168955_)))))
                      (_E168946168955_)))))
          (_E168945168969_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx168913_)
        (let* ((_e168914168921_ _stx168913_)
               (_E168916168925_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168914168921_)))
               (_E168915168939_
                (lambda ()
                  (if (gx#stx-pair? _e168914168921_)
                      (let ((_e168917168929_ (gx#syntax-e _e168914168921_)))
                        (let ((_hd168918168932_ (##car _e168917168929_))
                              (_tl168919168934_ (##cdr _e168917168929_)))
                          (let ((_body168937_ _tl168919168934_))
                            (if '#t
                                (cons '%#provide _body168937_)
                                (_E168916168925_)))))
                      (_E168916168925_)))))
          (_E168915168939_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx168883_)
        (let* ((_e168884168891_ _stx168883_)
               (_E168886168895_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168884168891_)))
               (_E168885168909_
                (lambda ()
                  (if (gx#stx-pair? _e168884168891_)
                      (let ((_e168887168899_ (gx#syntax-e _e168884168891_)))
                        (let ((_hd168888168902_ (##car _e168887168899_))
                              (_tl168889168904_ (##cdr _e168887168899_)))
                          (let ((_body168907_ _tl168889168904_))
                            (if '#t
                                (cons '%#extern _body168907_)
                                (_E168886168895_)))))
                      (_E168886168895_)))))
          (_E168885168909_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx168829_)
        (let* ((_e168830168843_ _stx168829_)
               (_E168832168847_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168830168843_)))
               (_E168831168879_
                (lambda ()
                  (if (gx#stx-pair? _e168830168843_)
                      (let ((_e168833168851_ (gx#syntax-e _e168830168843_)))
                        (let ((_hd168834168854_ (##car _e168833168851_))
                              (_tl168835168856_ (##cdr _e168833168851_)))
                          (if (gx#stx-pair? _tl168835168856_)
                              (let ((_e168836168859_
                                     (gx#syntax-e _tl168835168856_)))
                                (let ((_hd168837168862_
                                       (##car _e168836168859_))
                                      (_tl168838168864_
                                       (##cdr _e168836168859_)))
                                  (let ((_hd168867_ _hd168837168862_))
                                    (if (gx#stx-pair? _tl168838168864_)
                                        (let ((_e168839168869_
                                               (gx#syntax-e _tl168838168864_)))
                                          (let ((_hd168840168872_
                                                 (##car _e168839168869_))
                                                (_tl168841168874_
                                                 (##cdr _e168839168869_)))
                                            (let ((_expr168877_
                                                   _hd168840168872_))
                                              (if (gx#stx-null?
                                                   _tl168841168874_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd168867_)
                          (cons (gx#core-compile-top-syntax _expr168877_)
                                '())))
              (_E168832168847_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E168832168847_)))))
                                        (_E168832168847_)))))
                              (_E168832168847_))))
                      (_E168832168847_)))))
          (_E168831168879_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx168774_)
        (let* ((_e168775168788_ _stx168774_)
               (_E168777168792_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168775168788_)))
               (_E168776168825_
                (lambda ()
                  (if (gx#stx-pair? _e168775168788_)
                      (let ((_e168778168796_ (gx#syntax-e _e168775168788_)))
                        (let ((_hd168779168799_ (##car _e168778168796_))
                              (_tl168780168801_ (##cdr _e168778168796_)))
                          (if (gx#stx-pair? _tl168780168801_)
                              (let ((_e168781168804_
                                     (gx#syntax-e _tl168780168801_)))
                                (let ((_hd168782168807_
                                       (##car _e168781168804_))
                                      (_tl168783168809_
                                       (##cdr _e168781168804_)))
                                  (let ((_hd168812_ _hd168782168807_))
                                    (if (gx#stx-pair? _tl168783168809_)
                                        (let ((_e168784168814_
                                               (gx#syntax-e _tl168783168809_)))
                                          (let ((_hd168785168817_
                                                 (##car _e168784168814_))
                                                (_tl168786168819_
                                                 (##cdr _e168784168814_)))
                                            (let ((_expr168822_
                                                   _hd168785168817_))
                                              (if (gx#stx-null?
                                                   _tl168786168819_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd168812_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr168822_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E168777168792_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E168777168792_)))))
                                        (_E168777168792_)))))
                              (_E168777168792_))))
                      (_E168777168792_)))))
          (_E168776168825_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx168744_)
        (let* ((_e168745168752_ _stx168744_)
               (_E168747168756_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168745168752_)))
               (_E168746168770_
                (lambda ()
                  (if (gx#stx-pair? _e168745168752_)
                      (let ((_e168748168760_ (gx#syntax-e _e168745168752_)))
                        (let ((_hd168749168763_ (##car _e168748168760_))
                              (_tl168750168765_ (##cdr _e168748168760_)))
                          (let ((_body168768_ _tl168750168765_))
                            (if '#t
                                (cons '%#define-alias _body168768_)
                                (_E168747168756_)))))
                      (_E168747168756_)))))
          (_E168746168770_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx168714_)
        (let* ((_e168715168722_ _stx168714_)
               (_E168717168726_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168715168722_)))
               (_E168716168740_
                (lambda ()
                  (if (gx#stx-pair? _e168715168722_)
                      (let ((_e168718168730_ (gx#syntax-e _e168715168722_)))
                        (let ((_hd168719168733_ (##car _e168718168730_))
                              (_tl168720168735_ (##cdr _e168718168730_)))
                          (let ((_body168738_ _tl168720168735_))
                            (if '#t
                                (cons '%#define-runtime _body168738_)
                                (_E168717168726_)))))
                      (_E168717168726_)))))
          (_E168716168740_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx168684_)
        (let* ((_e168685168692_ _stx168684_)
               (_E168687168696_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168685168692_)))
               (_E168686168710_
                (lambda ()
                  (if (gx#stx-pair? _e168685168692_)
                      (let ((_e168688168700_ (gx#syntax-e _e168685168692_)))
                        (let ((_hd168689168703_ (##car _e168688168700_))
                              (_tl168690168705_ (##cdr _e168688168700_)))
                          (let ((_decls168708_ _tl168690168705_))
                            (if '#t
                                (cons '%#declare _decls168708_)
                                (_E168687168696_)))))
                      (_E168687168696_)))))
          (_E168686168710_))))
    (define gx#core-compile-top-lambda%
      (lambda (_stx168654_)
        (let* ((_e168655168662_ _stx168654_)
               (_E168657168666_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168655168662_)))
               (_E168656168680_
                (lambda ()
                  (if (gx#stx-pair? _e168655168662_)
                      (let ((_e168658168670_ (gx#syntax-e _e168655168662_)))
                        (let ((_hd168659168673_ (##car _e168658168670_))
                              (_tl168660168675_ (##cdr _e168658168670_)))
                          (let ((_clause168678_ _tl168660168675_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause168678_))
                                (_E168657168666_)))))
                      (_E168657168666_)))))
          (_E168656168680_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx168611_)
        (let* ((_e168612168622_ _stx168611_)
               (_E168614168626_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168612168622_)))
               (_E168613168650_
                (lambda ()
                  (if (gx#stx-pair? _e168612168622_)
                      (let ((_e168615168630_ (gx#syntax-e _e168612168622_)))
                        (let ((_hd168616168633_ (##car _e168615168630_))
                              (_tl168617168635_ (##cdr _e168615168630_)))
                          (let ((_hd168638_ _hd168616168633_))
                            (if (gx#stx-pair? _tl168617168635_)
                                (let ((_e168618168640_
                                       (gx#syntax-e _tl168617168635_)))
                                  (let ((_hd168619168643_
                                         (##car _e168618168640_))
                                        (_tl168620168645_
                                         (##cdr _e168618168640_)))
                                    (let ((_body168648_ _hd168619168643_))
                                      (if (gx#stx-null? _tl168620168645_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd168638_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body168648_)
                                                          '()))
                                              (_E168614168626_))
                                          (_E168614168626_)))))
                                (_E168614168626_)))))
                      (_E168614168626_)))))
          (_E168613168650_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx168581_)
        (let* ((_e168582168589_ _stx168581_)
               (_E168584168593_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168582168589_)))
               (_E168583168607_
                (lambda ()
                  (if (gx#stx-pair? _e168582168589_)
                      (let ((_e168585168597_ (gx#syntax-e _e168582168589_)))
                        (let ((_hd168586168600_ (##car _e168585168597_))
                              (_tl168587168602_ (##cdr _e168585168597_)))
                          (let ((_clauses168605_ _tl168587168602_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses168605_))
                                (_E168584168593_)))))
                      (_E168584168593_)))))
          (_E168583168607_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx168516_ _form168517_)
        (let* ((_e168518168531_ _stx168516_)
               (_E168520168535_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168518168531_)))
               (_E168519168567_
                (lambda ()
                  (if (gx#stx-pair? _e168518168531_)
                      (let ((_e168521168539_ (gx#syntax-e _e168518168531_)))
                        (let ((_hd168522168542_ (##car _e168521168539_))
                              (_tl168523168544_ (##cdr _e168521168539_)))
                          (if (gx#stx-pair? _tl168523168544_)
                              (let ((_e168524168547_
                                     (gx#syntax-e _tl168523168544_)))
                                (let ((_hd168525168550_
                                       (##car _e168524168547_))
                                      (_tl168526168552_
                                       (##cdr _e168524168547_)))
                                  (let ((_hd168555_ _hd168525168550_))
                                    (if (gx#stx-pair? _tl168526168552_)
                                        (let ((_e168527168557_
                                               (gx#syntax-e _tl168526168552_)))
                                          (let ((_hd168528168560_
                                                 (##car _e168527168557_))
                                                (_tl168529168562_
                                                 (##cdr _e168527168557_)))
                                            (let ((_body168565_
                                                   _hd168528168560_))
                                              (if (gx#stx-null?
                                                   _tl168529168562_)
                                                  (if '#t
                                                      (cons _form168517_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd168555_)
                          (cons (gx#core-compile-top-syntax _body168565_)
                                '())))
              (_E168520168535_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E168520168535_)))))
                                        (_E168520168535_)))))
                              (_E168520168535_))))
                      (_E168520168535_)))))
          (_E168519168567_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx168574_)
        (let ((_form168576_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx168574_ _form168576_))))
    (define gx#core-compile-top-let-values%
      (lambda _g173957_
        (let ((_g173956_ (##length _g173957_)))
          (cond ((##fx= _g173956_ 1)
                 (apply (lambda (_stx168574_)
                          (gx#core-compile-top-let-values%__0 _stx168574_))
                        _g173957_))
                ((##fx= _g173956_ 2)
                 (apply (lambda (_stx168578_ _form168579_)
                          (gx#core-compile-top-let-values%__%
                           _stx168578_
                           _form168579_))
                        _g173957_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g173957_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx168513_)
        (gx#core-compile-top-let-values%__% _stx168513_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx168511_)
        (gx#core-compile-top-let-values%__% _stx168511_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx168470_)
        (let* ((_e168471168481_ _stx168470_)
               (_E168473168485_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168471168481_)))
               (_E168472168507_
                (lambda ()
                  (if (gx#stx-pair? _e168471168481_)
                      (let ((_e168474168489_ (gx#syntax-e _e168471168481_)))
                        (let ((_hd168475168492_ (##car _e168474168489_))
                              (_tl168476168494_ (##cdr _e168474168489_)))
                          (if (gx#stx-pair? _tl168476168494_)
                              (let ((_e168477168497_
                                     (gx#syntax-e _tl168476168494_)))
                                (let ((_hd168478168500_
                                       (##car _e168477168497_))
                                      (_tl168479168502_
                                       (##cdr _e168477168497_)))
                                  (let ((_e168505_ _hd168478168500_))
                                    (if (gx#stx-null? _tl168479168502_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e168505_)
                                                        '()))
                                            (_E168473168485_))
                                        (_E168473168485_)))))
                              (_E168473168485_))))
                      (_E168473168485_)))))
          (_E168472168507_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx168429_)
        (let* ((_e168430168440_ _stx168429_)
               (_E168432168444_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168430168440_)))
               (_E168431168466_
                (lambda ()
                  (if (gx#stx-pair? _e168430168440_)
                      (let ((_e168433168448_ (gx#syntax-e _e168430168440_)))
                        (let ((_hd168434168451_ (##car _e168433168448_))
                              (_tl168435168453_ (##cdr _e168433168448_)))
                          (if (gx#stx-pair? _tl168435168453_)
                              (let ((_e168436168456_
                                     (gx#syntax-e _tl168435168453_)))
                                (let ((_hd168437168459_
                                       (##car _e168436168456_))
                                      (_tl168438168461_
                                       (##cdr _e168436168456_)))
                                  (let ((_e168464_ _hd168437168459_))
                                    (if (gx#stx-null? _tl168438168461_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e168464_)
                                                        '()))
                                            (_E168432168444_))
                                        (_E168432168444_)))))
                              (_E168432168444_))))
                      (_E168432168444_)))))
          (_E168431168466_))))
    (define gx#core-compile-top-call%
      (lambda (_stx168386_)
        (let* ((_e168387168397_ _stx168386_)
               (_E168389168401_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168387168397_)))
               (_E168388168425_
                (lambda ()
                  (if (gx#stx-pair? _e168387168397_)
                      (let ((_e168390168405_ (gx#syntax-e _e168387168397_)))
                        (let ((_hd168391168408_ (##car _e168390168405_))
                              (_tl168392168410_ (##cdr _e168390168405_)))
                          (if (gx#stx-pair? _tl168392168410_)
                              (let ((_e168393168413_
                                     (gx#syntax-e _tl168392168410_)))
                                (let ((_hd168394168416_
                                       (##car _e168393168413_))
                                      (_tl168395168418_
                                       (##cdr _e168393168413_)))
                                  (let* ((_rator168421_ _hd168394168416_)
                                         (_args168423_ _tl168395168418_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator168421_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args168423_)))
                                        (_E168389168401_)))))
                              (_E168389168401_))))
                      (_E168389168401_)))))
          (_E168388168425_))))
    (define gx#core-compile-top-if%
      (lambda (_stx168319_)
        (let* ((_e168320168336_ _stx168319_)
               (_E168322168340_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168320168336_)))
               (_E168321168382_
                (lambda ()
                  (if (gx#stx-pair? _e168320168336_)
                      (let ((_e168323168344_ (gx#syntax-e _e168320168336_)))
                        (let ((_hd168324168347_ (##car _e168323168344_))
                              (_tl168325168349_ (##cdr _e168323168344_)))
                          (if (gx#stx-pair? _tl168325168349_)
                              (let ((_e168326168352_
                                     (gx#syntax-e _tl168325168349_)))
                                (let ((_hd168327168355_
                                       (##car _e168326168352_))
                                      (_tl168328168357_
                                       (##cdr _e168326168352_)))
                                  (let ((_test168360_ _hd168327168355_))
                                    (if (gx#stx-pair? _tl168328168357_)
                                        (let ((_e168329168362_
                                               (gx#syntax-e _tl168328168357_)))
                                          (let ((_hd168330168365_
                                                 (##car _e168329168362_))
                                                (_tl168331168367_
                                                 (##cdr _e168329168362_)))
                                            (let ((_K168370_ _hd168330168365_))
                                              (if (gx#stx-pair?
                                                   _tl168331168367_)
                                                  (let ((_e168332168372_
                                                         (gx#syntax-e
                                                          _tl168331168367_)))
                                                    (let ((_hd168333168375_
                                                           (##car _e168332168372_))
                                                          (_tl168334168377_
                                                           (##cdr _e168332168372_)))
                                                      (let ((_E168380_
                                                             _hd168333168375_))
                                                        (if (gx#stx-null?
                                                             _tl168334168377_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test168360_)
                                    (cons (gx#core-compile-top-syntax
                                           _K168370_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E168380_)
                                                '()))))
                        (_E168322168340_))
                    (_E168322168340_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E168322168340_)))))
                                        (_E168322168340_)))))
                              (_E168322168340_))))
                      (_E168322168340_)))))
          (_E168321168382_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx168278_)
        (let* ((_e168279168289_ _stx168278_)
               (_E168281168293_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168279168289_)))
               (_E168280168315_
                (lambda ()
                  (if (gx#stx-pair? _e168279168289_)
                      (let ((_e168282168297_ (gx#syntax-e _e168279168289_)))
                        (let ((_hd168283168300_ (##car _e168282168297_))
                              (_tl168284168302_ (##cdr _e168282168297_)))
                          (if (gx#stx-pair? _tl168284168302_)
                              (let ((_e168285168305_
                                     (gx#syntax-e _tl168284168302_)))
                                (let ((_hd168286168308_
                                       (##car _e168285168305_))
                                      (_tl168287168310_
                                       (##cdr _e168285168305_)))
                                  (let ((_id168313_ _hd168286168308_))
                                    (if (gx#stx-null? _tl168287168310_)
                                        (if (gx#identifier? _id168313_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id168313_)
                                                        '()))
                                            (_E168281168293_))
                                        (_E168281168293_)))))
                              (_E168281168293_))))
                      (_E168281168293_)))))
          (_E168280168315_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx168224_)
        (let* ((_e168225168238_ _stx168224_)
               (_E168227168242_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168225168238_)))
               (_E168226168274_
                (lambda ()
                  (if (gx#stx-pair? _e168225168238_)
                      (let ((_e168228168246_ (gx#syntax-e _e168225168238_)))
                        (let ((_hd168229168249_ (##car _e168228168246_))
                              (_tl168230168251_ (##cdr _e168228168246_)))
                          (if (gx#stx-pair? _tl168230168251_)
                              (let ((_e168231168254_
                                     (gx#syntax-e _tl168230168251_)))
                                (let ((_hd168232168257_
                                       (##car _e168231168254_))
                                      (_tl168233168259_
                                       (##cdr _e168231168254_)))
                                  (let ((_id168262_ _hd168232168257_))
                                    (if (gx#stx-pair? _tl168233168259_)
                                        (let ((_e168234168264_
                                               (gx#syntax-e _tl168233168259_)))
                                          (let ((_hd168235168267_
                                                 (##car _e168234168264_))
                                                (_tl168236168269_
                                                 (##cdr _e168234168264_)))
                                            (let ((_expr168272_
                                                   _hd168235168267_))
                                              (if (gx#stx-null?
                                                   _tl168236168269_)
                                                  (if (gx#identifier?
                                                       _id168262_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id168262_)
                          (cons (gx#core-compile-top-syntax _expr168272_)
                                '())))
              (_E168227168242_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E168227168242_)))))
                                        (_E168227168242_)))))
                              (_E168227168242_))))
                      (_E168227168242_)))))
          (_E168226168274_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id168219_)
        (let ((_$e168221_ (gx#resolve-identifier__0 _id168219_)))
          (if _$e168221_
              (##unchecked-structure-ref _$e168221_ '1 gx#binding::t '#f)
              _id168219_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd168217_)
        (if (gx#identifier? _hd168217_)
            (gx#core-compile-top-runtime-ref _hd168217_)
            '#f)))))
