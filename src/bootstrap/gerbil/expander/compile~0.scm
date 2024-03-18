(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1710781149)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx96176_)
        (let* ((_e9617796184_ _stx96176_)
               (_E9617996188_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9617796184_)))
               (_E9617896202_
                (lambda ()
                  (if (gx#stx-pair? _e9617796184_)
                      (let ((_e9618096192_ (gx#syntax-e _e9617796184_)))
                        (let ((_hd9618196195_ (##car _e9618096192_))
                              (_tl9618296197_ (##cdr _e9618096192_)))
                          (let ((_form96200_ _hd9618196195_))
                            (if '#t
                                (let* ((__self96205
                                        (gx#syntax-local-e__0 _form96200_))
                                       (__method96206
                                        (method-ref
                                         __self96205
                                         'compile-top-syntax)))
                                  (if __method96206
                                      (__method96206 __self96205 _stx96176_)
                                      (error '"Missing method"
                                             __self96205
                                             'compile-top-syntax)))
                                (_E9617996188_)))))
                      (_E9617996188_)))))
          (_E9617896202_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self96136_ _stx96137_)
        (let* ((_self9613896146_ _self96136_)
               (_E9614096150_
                (lambda () (error '"No clause matching" _self9613896146_)))
               (_K9614196162_
                (lambda (_K96153_)
                  (let ((_$e96155_ (gx#stx-source _stx96137_)))
                    (if _$e96155_
                        ((lambda (_g9615796159_)
                           (gx#stx-wrap-source
                            (_K96153_ _stx96137_)
                            _g9615796159_))
                         _$e96155_)
                        (_K96153_ _stx96137_))))))
          (if (##structure-instance-of? _self9613896146_ 'gx#core-expander::t)
              (let* ((_e9614296165_
                      (##unchecked-structure-ref
                       _self9613896146_
                       '1
                       gx#expander::t
                       '#f))
                     (_e9614396168_
                      (##unchecked-structure-ref
                       _self9613896146_
                       '2
                       gx#core-expander::t
                       '#f))
                     (_e9614496171_
                      (##unchecked-structure-ref
                       _self9613896146_
                       '3
                       gx#core-expander::t
                       '#f))
                     (_K96174_ _e9614496171_))
                (_K9614196162_ _K96174_))
              (_E9614096150_)))))
    (bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx96010_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx96010_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx95980_)
        (let* ((_e9598195988_ _stx95980_)
               (_E9598395992_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9598195988_)))
               (_E9598296006_
                (lambda ()
                  (if (gx#stx-pair? _e9598195988_)
                      (let ((_e9598495996_ (gx#syntax-e _e9598195988_)))
                        (let ((_hd9598595999_ (##car _e9598495996_))
                              (_tl9598696001_ (##cdr _e9598495996_)))
                          (let ((_body96004_ _tl9598696001_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body96004_))
                                (_E9598395992_)))))
                      (_E9598395992_)))))
          (_E9598296006_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx95949_)
        (let* ((_e9595095957_ _stx95949_)
               (_E9595295961_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9595095957_)))
               (_E9595195976_
                (lambda ()
                  (if (gx#stx-pair? _e9595095957_)
                      (let ((_e9595395965_ (gx#syntax-e _e9595095957_)))
                        (let ((_hd9595495968_ (##car _e9595395965_))
                              (_tl9595595970_ (##cdr _e9595395965_)))
                          (let ((_body95973_ _tl9595595970_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body95973_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E9595295961_)))))
                      (_E9595295961_)))))
          (_E9595195976_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_stx95919_)
        (let* ((_e9592095927_ _stx95919_)
               (_E9592295931_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9592095927_)))
               (_E9592195945_
                (lambda ()
                  (if (gx#stx-pair? _e9592095927_)
                      (let ((_e9592395935_ (gx#syntax-e _e9592095927_)))
                        (let ((_hd9592495938_ (##car _e9592395935_))
                              (_tl9592595940_ (##cdr _e9592395935_)))
                          (let ((_body95943_ _tl9592595940_))
                            (if '#t
                                (cons '%#begin-foreign _body95943_)
                                (_E9592295931_)))))
                      (_E9592295931_)))))
          (_E9592195945_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_stx95865_)
        (let* ((_e9586695879_ _stx95865_)
               (_E9586895883_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9586695879_)))
               (_E9586795915_
                (lambda ()
                  (if (gx#stx-pair? _e9586695879_)
                      (let ((_e9586995887_ (gx#syntax-e _e9586695879_)))
                        (let ((_hd9587095890_ (##car _e9586995887_))
                              (_tl9587195892_ (##cdr _e9586995887_)))
                          (if (gx#stx-pair? _tl9587195892_)
                              (let ((_e9587295895_
                                     (gx#syntax-e _tl9587195892_)))
                                (let ((_hd9587395898_ (##car _e9587295895_))
                                      (_tl9587495900_ (##cdr _e9587295895_)))
                                  (let ((_ann95903_ _hd9587395898_))
                                    (if (gx#stx-pair? _tl9587495900_)
                                        (let ((_e9587595905_
                                               (gx#syntax-e _tl9587495900_)))
                                          (let ((_hd9587695908_
                                                 (##car _e9587595905_))
                                                (_tl9587795910_
                                                 (##cdr _e9587595905_)))
                                            (let ((_expr95913_ _hd9587695908_))
                                              (if (gx#stx-null? _tl9587795910_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr95913_)
                                                      (_E9586895883_))
                                                  (_E9586895883_)))))
                                        (_E9586895883_)))))
                              (_E9586895883_))))
                      (_E9586895883_)))))
          (_E9586795915_))))
    (define gx#core-compile-top-import%
      (lambda (_stx95835_)
        (let* ((_e9583695843_ _stx95835_)
               (_E9583895847_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9583695843_)))
               (_E9583795861_
                (lambda ()
                  (if (gx#stx-pair? _e9583695843_)
                      (let ((_e9583995851_ (gx#syntax-e _e9583695843_)))
                        (let ((_hd9584095854_ (##car _e9583995851_))
                              (_tl9584195856_ (##cdr _e9583995851_)))
                          (let ((_body95859_ _tl9584195856_))
                            (if '#t
                                (cons '%#import _body95859_)
                                (_E9583895847_)))))
                      (_E9583895847_)))))
          (_E9583795861_))))
    (define gx#core-compile-top-module%
      (lambda (_stx95792_)
        (let* ((_e9579395803_ _stx95792_)
               (_E9579595807_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9579395803_)))
               (_E9579495831_
                (lambda ()
                  (if (gx#stx-pair? _e9579395803_)
                      (let ((_e9579695811_ (gx#syntax-e _e9579395803_)))
                        (let ((_hd9579795814_ (##car _e9579695811_))
                              (_tl9579895816_ (##cdr _e9579695811_)))
                          (if (gx#stx-pair? _tl9579895816_)
                              (let ((_e9579995819_
                                     (gx#syntax-e _tl9579895816_)))
                                (let ((_hd9580095822_ (##car _e9579995819_))
                                      (_tl9580195824_ (##cdr _e9579995819_)))
                                  (let* ((_hd95827_ _hd9580095822_)
                                         (_body95829_ _tl9580195824_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _hd95827_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body95829_)))
                                        (_E9579595807_)))))
                              (_E9579595807_))))
                      (_E9579595807_)))))
          (_E9579495831_))))
    (define gx#core-compile-top-export%
      (lambda (_stx95762_)
        (let* ((_e9576395770_ _stx95762_)
               (_E9576595774_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9576395770_)))
               (_E9576495788_
                (lambda ()
                  (if (gx#stx-pair? _e9576395770_)
                      (let ((_e9576695778_ (gx#syntax-e _e9576395770_)))
                        (let ((_hd9576795781_ (##car _e9576695778_))
                              (_tl9576895783_ (##cdr _e9576695778_)))
                          (let ((_body95786_ _tl9576895783_))
                            (if '#t
                                (cons '%#export _body95786_)
                                (_E9576595774_)))))
                      (_E9576595774_)))))
          (_E9576495788_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx95732_)
        (let* ((_e9573395740_ _stx95732_)
               (_E9573595744_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9573395740_)))
               (_E9573495758_
                (lambda ()
                  (if (gx#stx-pair? _e9573395740_)
                      (let ((_e9573695748_ (gx#syntax-e _e9573395740_)))
                        (let ((_hd9573795751_ (##car _e9573695748_))
                              (_tl9573895753_ (##cdr _e9573695748_)))
                          (let ((_body95756_ _tl9573895753_))
                            (if '#t
                                (cons '%#provide _body95756_)
                                (_E9573595744_)))))
                      (_E9573595744_)))))
          (_E9573495758_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx95702_)
        (let* ((_e9570395710_ _stx95702_)
               (_E9570595714_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9570395710_)))
               (_E9570495728_
                (lambda ()
                  (if (gx#stx-pair? _e9570395710_)
                      (let ((_e9570695718_ (gx#syntax-e _e9570395710_)))
                        (let ((_hd9570795721_ (##car _e9570695718_))
                              (_tl9570895723_ (##cdr _e9570695718_)))
                          (let ((_body95726_ _tl9570895723_))
                            (if '#t
                                (cons '%#extern _body95726_)
                                (_E9570595714_)))))
                      (_E9570595714_)))))
          (_E9570495728_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx95648_)
        (let* ((_e9564995662_ _stx95648_)
               (_E9565195666_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9564995662_)))
               (_E9565095698_
                (lambda ()
                  (if (gx#stx-pair? _e9564995662_)
                      (let ((_e9565295670_ (gx#syntax-e _e9564995662_)))
                        (let ((_hd9565395673_ (##car _e9565295670_))
                              (_tl9565495675_ (##cdr _e9565295670_)))
                          (if (gx#stx-pair? _tl9565495675_)
                              (let ((_e9565595678_
                                     (gx#syntax-e _tl9565495675_)))
                                (let ((_hd9565695681_ (##car _e9565595678_))
                                      (_tl9565795683_ (##cdr _e9565595678_)))
                                  (let ((_hd95686_ _hd9565695681_))
                                    (if (gx#stx-pair? _tl9565795683_)
                                        (let ((_e9565895688_
                                               (gx#syntax-e _tl9565795683_)))
                                          (let ((_hd9565995691_
                                                 (##car _e9565895688_))
                                                (_tl9566095693_
                                                 (##cdr _e9565895688_)))
                                            (let ((_expr95696_ _hd9565995691_))
                                              (if (gx#stx-null? _tl9566095693_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd95686_)
                          (cons (gx#core-compile-top-syntax _expr95696_) '())))
              (_E9565195666_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9565195666_)))))
                                        (_E9565195666_)))))
                              (_E9565195666_))))
                      (_E9565195666_)))))
          (_E9565095698_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx95593_)
        (let* ((_e9559495607_ _stx95593_)
               (_E9559695611_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9559495607_)))
               (_E9559595644_
                (lambda ()
                  (if (gx#stx-pair? _e9559495607_)
                      (let ((_e9559795615_ (gx#syntax-e _e9559495607_)))
                        (let ((_hd9559895618_ (##car _e9559795615_))
                              (_tl9559995620_ (##cdr _e9559795615_)))
                          (if (gx#stx-pair? _tl9559995620_)
                              (let ((_e9560095623_
                                     (gx#syntax-e _tl9559995620_)))
                                (let ((_hd9560195626_ (##car _e9560095623_))
                                      (_tl9560295628_ (##cdr _e9560095623_)))
                                  (let ((_hd95631_ _hd9560195626_))
                                    (if (gx#stx-pair? _tl9560295628_)
                                        (let ((_e9560395633_
                                               (gx#syntax-e _tl9560295628_)))
                                          (let ((_hd9560495636_
                                                 (##car _e9560395633_))
                                                (_tl9560595638_
                                                 (##cdr _e9560395633_)))
                                            (let ((_expr95641_ _hd9560495636_))
                                              (if (gx#stx-null? _tl9560595638_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd95631_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr95641_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E9559695611_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9559695611_)))))
                                        (_E9559695611_)))))
                              (_E9559695611_))))
                      (_E9559695611_)))))
          (_E9559595644_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx95563_)
        (let* ((_e9556495571_ _stx95563_)
               (_E9556695575_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9556495571_)))
               (_E9556595589_
                (lambda ()
                  (if (gx#stx-pair? _e9556495571_)
                      (let ((_e9556795579_ (gx#syntax-e _e9556495571_)))
                        (let ((_hd9556895582_ (##car _e9556795579_))
                              (_tl9556995584_ (##cdr _e9556795579_)))
                          (let ((_body95587_ _tl9556995584_))
                            (if '#t
                                (cons '%#define-alias _body95587_)
                                (_E9556695575_)))))
                      (_E9556695575_)))))
          (_E9556595589_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx95533_)
        (let* ((_e9553495541_ _stx95533_)
               (_E9553695545_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9553495541_)))
               (_E9553595559_
                (lambda ()
                  (if (gx#stx-pair? _e9553495541_)
                      (let ((_e9553795549_ (gx#syntax-e _e9553495541_)))
                        (let ((_hd9553895552_ (##car _e9553795549_))
                              (_tl9553995554_ (##cdr _e9553795549_)))
                          (let ((_body95557_ _tl9553995554_))
                            (if '#t
                                (cons '%#define-runtime _body95557_)
                                (_E9553695545_)))))
                      (_E9553695545_)))))
          (_E9553595559_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx95503_)
        (let* ((_e9550495511_ _stx95503_)
               (_E9550695515_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9550495511_)))
               (_E9550595529_
                (lambda ()
                  (if (gx#stx-pair? _e9550495511_)
                      (let ((_e9550795519_ (gx#syntax-e _e9550495511_)))
                        (let ((_hd9550895522_ (##car _e9550795519_))
                              (_tl9550995524_ (##cdr _e9550795519_)))
                          (let ((_decls95527_ _tl9550995524_))
                            (if '#t
                                (cons '%#declare _decls95527_)
                                (_E9550695515_)))))
                      (_E9550695515_)))))
          (_E9550595529_))))
    (define gx#core-compile-top-lambda%
      (lambda (_stx95473_)
        (let* ((_e9547495481_ _stx95473_)
               (_E9547695485_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9547495481_)))
               (_E9547595499_
                (lambda ()
                  (if (gx#stx-pair? _e9547495481_)
                      (let ((_e9547795489_ (gx#syntax-e _e9547495481_)))
                        (let ((_hd9547895492_ (##car _e9547795489_))
                              (_tl9547995494_ (##cdr _e9547795489_)))
                          (let ((_clause95497_ _tl9547995494_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause95497_))
                                (_E9547695485_)))))
                      (_E9547695485_)))))
          (_E9547595499_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx95430_)
        (let* ((_e9543195441_ _stx95430_)
               (_E9543395445_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9543195441_)))
               (_E9543295469_
                (lambda ()
                  (if (gx#stx-pair? _e9543195441_)
                      (let ((_e9543495449_ (gx#syntax-e _e9543195441_)))
                        (let ((_hd9543595452_ (##car _e9543495449_))
                              (_tl9543695454_ (##cdr _e9543495449_)))
                          (let ((_hd95457_ _hd9543595452_))
                            (if (gx#stx-pair? _tl9543695454_)
                                (let ((_e9543795459_
                                       (gx#syntax-e _tl9543695454_)))
                                  (let ((_hd9543895462_ (##car _e9543795459_))
                                        (_tl9543995464_ (##cdr _e9543795459_)))
                                    (let ((_body95467_ _hd9543895462_))
                                      (if (gx#stx-null? _tl9543995464_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd95457_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body95467_)
                                                          '()))
                                              (_E9543395445_))
                                          (_E9543395445_)))))
                                (_E9543395445_)))))
                      (_E9543395445_)))))
          (_E9543295469_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx95400_)
        (let* ((_e9540195408_ _stx95400_)
               (_E9540395412_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9540195408_)))
               (_E9540295426_
                (lambda ()
                  (if (gx#stx-pair? _e9540195408_)
                      (let ((_e9540495416_ (gx#syntax-e _e9540195408_)))
                        (let ((_hd9540595419_ (##car _e9540495416_))
                              (_tl9540695421_ (##cdr _e9540495416_)))
                          (let ((_clauses95424_ _tl9540695421_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses95424_))
                                (_E9540395412_)))))
                      (_E9540395412_)))))
          (_E9540295426_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx95335_ _form95336_)
        (let* ((_e9533795350_ _stx95335_)
               (_E9533995354_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9533795350_)))
               (_E9533895386_
                (lambda ()
                  (if (gx#stx-pair? _e9533795350_)
                      (let ((_e9534095358_ (gx#syntax-e _e9533795350_)))
                        (let ((_hd9534195361_ (##car _e9534095358_))
                              (_tl9534295363_ (##cdr _e9534095358_)))
                          (if (gx#stx-pair? _tl9534295363_)
                              (let ((_e9534395366_
                                     (gx#syntax-e _tl9534295363_)))
                                (let ((_hd9534495369_ (##car _e9534395366_))
                                      (_tl9534595371_ (##cdr _e9534395366_)))
                                  (let ((_hd95374_ _hd9534495369_))
                                    (if (gx#stx-pair? _tl9534595371_)
                                        (let ((_e9534695376_
                                               (gx#syntax-e _tl9534595371_)))
                                          (let ((_hd9534795379_
                                                 (##car _e9534695376_))
                                                (_tl9534895381_
                                                 (##cdr _e9534695376_)))
                                            (let ((_body95384_ _hd9534795379_))
                                              (if (gx#stx-null? _tl9534895381_)
                                                  (if '#t
                                                      (cons _form95336_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd95374_)
                          (cons (gx#core-compile-top-syntax _body95384_) '())))
              (_E9533995354_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9533995354_)))))
                                        (_E9533995354_)))))
                              (_E9533995354_))))
                      (_E9533995354_)))))
          (_E9533895386_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx95393_)
        (let ((_form95395_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx95393_ _form95395_))))
    (define gx#core-compile-top-let-values%
      (lambda _g96208_
        (let ((_g96207_ (##length _g96208_)))
          (cond ((##fx= _g96207_ 1)
                 (apply (lambda (_stx95393_)
                          (gx#core-compile-top-let-values%__0 _stx95393_))
                        _g96208_))
                ((##fx= _g96207_ 2)
                 (apply (lambda (_stx95397_ _form95398_)
                          (gx#core-compile-top-let-values%__%
                           _stx95397_
                           _form95398_))
                        _g96208_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g96208_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx95332_)
        (gx#core-compile-top-let-values%__% _stx95332_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx95330_)
        (gx#core-compile-top-let-values%__% _stx95330_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx95289_)
        (let* ((_e9529095300_ _stx95289_)
               (_E9529295304_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9529095300_)))
               (_E9529195326_
                (lambda ()
                  (if (gx#stx-pair? _e9529095300_)
                      (let ((_e9529395308_ (gx#syntax-e _e9529095300_)))
                        (let ((_hd9529495311_ (##car _e9529395308_))
                              (_tl9529595313_ (##cdr _e9529395308_)))
                          (if (gx#stx-pair? _tl9529595313_)
                              (let ((_e9529695316_
                                     (gx#syntax-e _tl9529595313_)))
                                (let ((_hd9529795319_ (##car _e9529695316_))
                                      (_tl9529895321_ (##cdr _e9529695316_)))
                                  (let ((_e95324_ _hd9529795319_))
                                    (if (gx#stx-null? _tl9529895321_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e95324_)
                                                        '()))
                                            (_E9529295304_))
                                        (_E9529295304_)))))
                              (_E9529295304_))))
                      (_E9529295304_)))))
          (_E9529195326_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx95248_)
        (let* ((_e9524995259_ _stx95248_)
               (_E9525195263_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9524995259_)))
               (_E9525095285_
                (lambda ()
                  (if (gx#stx-pair? _e9524995259_)
                      (let ((_e9525295267_ (gx#syntax-e _e9524995259_)))
                        (let ((_hd9525395270_ (##car _e9525295267_))
                              (_tl9525495272_ (##cdr _e9525295267_)))
                          (if (gx#stx-pair? _tl9525495272_)
                              (let ((_e9525595275_
                                     (gx#syntax-e _tl9525495272_)))
                                (let ((_hd9525695278_ (##car _e9525595275_))
                                      (_tl9525795280_ (##cdr _e9525595275_)))
                                  (let ((_e95283_ _hd9525695278_))
                                    (if (gx#stx-null? _tl9525795280_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e95283_)
                                                        '()))
                                            (_E9525195263_))
                                        (_E9525195263_)))))
                              (_E9525195263_))))
                      (_E9525195263_)))))
          (_E9525095285_))))
    (define gx#core-compile-top-call%
      (lambda (_stx95205_)
        (let* ((_e9520695216_ _stx95205_)
               (_E9520895220_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9520695216_)))
               (_E9520795244_
                (lambda ()
                  (if (gx#stx-pair? _e9520695216_)
                      (let ((_e9520995224_ (gx#syntax-e _e9520695216_)))
                        (let ((_hd9521095227_ (##car _e9520995224_))
                              (_tl9521195229_ (##cdr _e9520995224_)))
                          (if (gx#stx-pair? _tl9521195229_)
                              (let ((_e9521295232_
                                     (gx#syntax-e _tl9521195229_)))
                                (let ((_hd9521395235_ (##car _e9521295232_))
                                      (_tl9521495237_ (##cdr _e9521295232_)))
                                  (let* ((_rator95240_ _hd9521395235_)
                                         (_args95242_ _tl9521495237_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator95240_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args95242_)))
                                        (_E9520895220_)))))
                              (_E9520895220_))))
                      (_E9520895220_)))))
          (_E9520795244_))))
    (define gx#core-compile-top-if%
      (lambda (_stx95138_)
        (let* ((_e9513995155_ _stx95138_)
               (_E9514195159_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9513995155_)))
               (_E9514095201_
                (lambda ()
                  (if (gx#stx-pair? _e9513995155_)
                      (let ((_e9514295163_ (gx#syntax-e _e9513995155_)))
                        (let ((_hd9514395166_ (##car _e9514295163_))
                              (_tl9514495168_ (##cdr _e9514295163_)))
                          (if (gx#stx-pair? _tl9514495168_)
                              (let ((_e9514595171_
                                     (gx#syntax-e _tl9514495168_)))
                                (let ((_hd9514695174_ (##car _e9514595171_))
                                      (_tl9514795176_ (##cdr _e9514595171_)))
                                  (let ((_test95179_ _hd9514695174_))
                                    (if (gx#stx-pair? _tl9514795176_)
                                        (let ((_e9514895181_
                                               (gx#syntax-e _tl9514795176_)))
                                          (let ((_hd9514995184_
                                                 (##car _e9514895181_))
                                                (_tl9515095186_
                                                 (##cdr _e9514895181_)))
                                            (let ((_K95189_ _hd9514995184_))
                                              (if (gx#stx-pair? _tl9515095186_)
                                                  (let ((_e9515195191_
                                                         (gx#syntax-e
                                                          _tl9515095186_)))
                                                    (let ((_hd9515295194_
                                                           (##car _e9515195191_))
                                                          (_tl9515395196_
                                                           (##cdr _e9515195191_)))
                                                      (let ((_E95199_
                                                             _hd9515295194_))
                                                        (if (gx#stx-null?
                                                             _tl9515395196_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test95179_)
                                    (cons (gx#core-compile-top-syntax _K95189_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E95199_)
                                                '()))))
                        (_E9514195159_))
                    (_E9514195159_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9514195159_)))))
                                        (_E9514195159_)))))
                              (_E9514195159_))))
                      (_E9514195159_)))))
          (_E9514095201_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx95097_)
        (let* ((_e9509895108_ _stx95097_)
               (_E9510095112_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9509895108_)))
               (_E9509995134_
                (lambda ()
                  (if (gx#stx-pair? _e9509895108_)
                      (let ((_e9510195116_ (gx#syntax-e _e9509895108_)))
                        (let ((_hd9510295119_ (##car _e9510195116_))
                              (_tl9510395121_ (##cdr _e9510195116_)))
                          (if (gx#stx-pair? _tl9510395121_)
                              (let ((_e9510495124_
                                     (gx#syntax-e _tl9510395121_)))
                                (let ((_hd9510595127_ (##car _e9510495124_))
                                      (_tl9510695129_ (##cdr _e9510495124_)))
                                  (let ((_id95132_ _hd9510595127_))
                                    (if (gx#stx-null? _tl9510695129_)
                                        (if (gx#identifier? _id95132_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id95132_)
                                                        '()))
                                            (_E9510095112_))
                                        (_E9510095112_)))))
                              (_E9510095112_))))
                      (_E9510095112_)))))
          (_E9509995134_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx95043_)
        (let* ((_e9504495057_ _stx95043_)
               (_E9504695061_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9504495057_)))
               (_E9504595093_
                (lambda ()
                  (if (gx#stx-pair? _e9504495057_)
                      (let ((_e9504795065_ (gx#syntax-e _e9504495057_)))
                        (let ((_hd9504895068_ (##car _e9504795065_))
                              (_tl9504995070_ (##cdr _e9504795065_)))
                          (if (gx#stx-pair? _tl9504995070_)
                              (let ((_e9505095073_
                                     (gx#syntax-e _tl9504995070_)))
                                (let ((_hd9505195076_ (##car _e9505095073_))
                                      (_tl9505295078_ (##cdr _e9505095073_)))
                                  (let ((_id95081_ _hd9505195076_))
                                    (if (gx#stx-pair? _tl9505295078_)
                                        (let ((_e9505395083_
                                               (gx#syntax-e _tl9505295078_)))
                                          (let ((_hd9505495086_
                                                 (##car _e9505395083_))
                                                (_tl9505595088_
                                                 (##cdr _e9505395083_)))
                                            (let ((_expr95091_ _hd9505495086_))
                                              (if (gx#stx-null? _tl9505595088_)
                                                  (if (gx#identifier?
                                                       _id95081_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id95081_)
                          (cons (gx#core-compile-top-syntax _expr95091_) '())))
              (_E9504695061_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9504695061_)))))
                                        (_E9504695061_)))))
                              (_E9504695061_))))
                      (_E9504695061_)))))
          (_E9504595093_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id95038_)
        (let ((_$e95040_ (gx#resolve-identifier__0 _id95038_)))
          (if _$e95040_
              (##unchecked-structure-ref _$e95040_ '1 gx#binding::t '#f)
              _id95038_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd95036_)
        (if (gx#identifier? _hd95036_)
            (gx#core-compile-top-runtime-ref _hd95036_)
            '#f)))))
