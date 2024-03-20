(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1710943025)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx96181_)
        (let* ((_e9618296189_ _stx96181_)
               (_E9618496193_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9618296189_)))
               (_E9618396207_
                (lambda ()
                  (if (gx#stx-pair? _e9618296189_)
                      (let ((_e9618596197_ (gx#syntax-e _e9618296189_)))
                        (let ((_hd9618696200_ (##car _e9618596197_))
                              (_tl9618796202_ (##cdr _e9618596197_)))
                          (let ((_form96205_ _hd9618696200_))
                            (if '#t
                                (let* ((__self96210
                                        (gx#syntax-local-e__0 _form96205_))
                                       (__method96211
                                        (method-ref
                                         __self96210
                                         'compile-top-syntax)))
                                  (if __method96211
                                      (__method96211 __self96210 _stx96181_)
                                      (error '"Missing method"
                                             __self96210
                                             'compile-top-syntax)))
                                (_E9618496193_)))))
                      (_E9618496193_)))))
          (_E9618396207_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self96141_ _stx96142_)
        (let* ((_self9614396151_ _self96141_)
               (_E9614596155_
                (lambda () (error '"No clause matching" _self9614396151_)))
               (_K9614696167_
                (lambda (_K96158_)
                  (let ((_$e96160_ (gx#stx-source _stx96142_)))
                    (if _$e96160_
                        ((lambda (_g9616296164_)
                           (gx#stx-wrap-source
                            (_K96158_ _stx96142_)
                            _g9616296164_))
                         _$e96160_)
                        (_K96158_ _stx96142_))))))
          (if (##structure-instance-of? _self9614396151_ 'gx#core-expander::t)
              (let* ((_e9614796170_
                      (##unchecked-structure-ref
                       _self9614396151_
                       '1
                       gx#expander::t
                       '#f))
                     (_e9614896173_
                      (##unchecked-structure-ref
                       _self9614396151_
                       '2
                       gx#core-expander::t
                       '#f))
                     (_e9614996176_
                      (##unchecked-structure-ref
                       _self9614396151_
                       '3
                       gx#core-expander::t
                       '#f))
                     (_K96179_ _e9614996176_))
                (_K9614696167_ _K96179_))
              (_E9614596155_)))))
    (bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx96015_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx96015_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx95985_)
        (let* ((_e9598695993_ _stx95985_)
               (_E9598895997_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9598695993_)))
               (_E9598796011_
                (lambda ()
                  (if (gx#stx-pair? _e9598695993_)
                      (let ((_e9598996001_ (gx#syntax-e _e9598695993_)))
                        (let ((_hd9599096004_ (##car _e9598996001_))
                              (_tl9599196006_ (##cdr _e9598996001_)))
                          (let ((_body96009_ _tl9599196006_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body96009_))
                                (_E9598895997_)))))
                      (_E9598895997_)))))
          (_E9598796011_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx95954_)
        (let* ((_e9595595962_ _stx95954_)
               (_E9595795966_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9595595962_)))
               (_E9595695981_
                (lambda ()
                  (if (gx#stx-pair? _e9595595962_)
                      (let ((_e9595895970_ (gx#syntax-e _e9595595962_)))
                        (let ((_hd9595995973_ (##car _e9595895970_))
                              (_tl9596095975_ (##cdr _e9595895970_)))
                          (let ((_body95978_ _tl9596095975_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body95978_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E9595795966_)))))
                      (_E9595795966_)))))
          (_E9595695981_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_stx95924_)
        (let* ((_e9592595932_ _stx95924_)
               (_E9592795936_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9592595932_)))
               (_E9592695950_
                (lambda ()
                  (if (gx#stx-pair? _e9592595932_)
                      (let ((_e9592895940_ (gx#syntax-e _e9592595932_)))
                        (let ((_hd9592995943_ (##car _e9592895940_))
                              (_tl9593095945_ (##cdr _e9592895940_)))
                          (let ((_body95948_ _tl9593095945_))
                            (if '#t
                                (cons '%#begin-foreign _body95948_)
                                (_E9592795936_)))))
                      (_E9592795936_)))))
          (_E9592695950_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_stx95870_)
        (let* ((_e9587195884_ _stx95870_)
               (_E9587395888_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9587195884_)))
               (_E9587295920_
                (lambda ()
                  (if (gx#stx-pair? _e9587195884_)
                      (let ((_e9587495892_ (gx#syntax-e _e9587195884_)))
                        (let ((_hd9587595895_ (##car _e9587495892_))
                              (_tl9587695897_ (##cdr _e9587495892_)))
                          (if (gx#stx-pair? _tl9587695897_)
                              (let ((_e9587795900_
                                     (gx#syntax-e _tl9587695897_)))
                                (let ((_hd9587895903_ (##car _e9587795900_))
                                      (_tl9587995905_ (##cdr _e9587795900_)))
                                  (let ((_ann95908_ _hd9587895903_))
                                    (if (gx#stx-pair? _tl9587995905_)
                                        (let ((_e9588095910_
                                               (gx#syntax-e _tl9587995905_)))
                                          (let ((_hd9588195913_
                                                 (##car _e9588095910_))
                                                (_tl9588295915_
                                                 (##cdr _e9588095910_)))
                                            (let ((_expr95918_ _hd9588195913_))
                                              (if (gx#stx-null? _tl9588295915_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr95918_)
                                                      (_E9587395888_))
                                                  (_E9587395888_)))))
                                        (_E9587395888_)))))
                              (_E9587395888_))))
                      (_E9587395888_)))))
          (_E9587295920_))))
    (define gx#core-compile-top-import%
      (lambda (_stx95840_)
        (let* ((_e9584195848_ _stx95840_)
               (_E9584395852_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9584195848_)))
               (_E9584295866_
                (lambda ()
                  (if (gx#stx-pair? _e9584195848_)
                      (let ((_e9584495856_ (gx#syntax-e _e9584195848_)))
                        (let ((_hd9584595859_ (##car _e9584495856_))
                              (_tl9584695861_ (##cdr _e9584495856_)))
                          (let ((_body95864_ _tl9584695861_))
                            (if '#t
                                (cons '%#import _body95864_)
                                (_E9584395852_)))))
                      (_E9584395852_)))))
          (_E9584295866_))))
    (define gx#core-compile-top-module%
      (lambda (_stx95797_)
        (let* ((_e9579895808_ _stx95797_)
               (_E9580095812_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9579895808_)))
               (_E9579995836_
                (lambda ()
                  (if (gx#stx-pair? _e9579895808_)
                      (let ((_e9580195816_ (gx#syntax-e _e9579895808_)))
                        (let ((_hd9580295819_ (##car _e9580195816_))
                              (_tl9580395821_ (##cdr _e9580195816_)))
                          (if (gx#stx-pair? _tl9580395821_)
                              (let ((_e9580495824_
                                     (gx#syntax-e _tl9580395821_)))
                                (let ((_hd9580595827_ (##car _e9580495824_))
                                      (_tl9580695829_ (##cdr _e9580495824_)))
                                  (let* ((_hd95832_ _hd9580595827_)
                                         (_body95834_ _tl9580695829_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _hd95832_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body95834_)))
                                        (_E9580095812_)))))
                              (_E9580095812_))))
                      (_E9580095812_)))))
          (_E9579995836_))))
    (define gx#core-compile-top-export%
      (lambda (_stx95767_)
        (let* ((_e9576895775_ _stx95767_)
               (_E9577095779_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9576895775_)))
               (_E9576995793_
                (lambda ()
                  (if (gx#stx-pair? _e9576895775_)
                      (let ((_e9577195783_ (gx#syntax-e _e9576895775_)))
                        (let ((_hd9577295786_ (##car _e9577195783_))
                              (_tl9577395788_ (##cdr _e9577195783_)))
                          (let ((_body95791_ _tl9577395788_))
                            (if '#t
                                (cons '%#export _body95791_)
                                (_E9577095779_)))))
                      (_E9577095779_)))))
          (_E9576995793_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx95737_)
        (let* ((_e9573895745_ _stx95737_)
               (_E9574095749_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9573895745_)))
               (_E9573995763_
                (lambda ()
                  (if (gx#stx-pair? _e9573895745_)
                      (let ((_e9574195753_ (gx#syntax-e _e9573895745_)))
                        (let ((_hd9574295756_ (##car _e9574195753_))
                              (_tl9574395758_ (##cdr _e9574195753_)))
                          (let ((_body95761_ _tl9574395758_))
                            (if '#t
                                (cons '%#provide _body95761_)
                                (_E9574095749_)))))
                      (_E9574095749_)))))
          (_E9573995763_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx95707_)
        (let* ((_e9570895715_ _stx95707_)
               (_E9571095719_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9570895715_)))
               (_E9570995733_
                (lambda ()
                  (if (gx#stx-pair? _e9570895715_)
                      (let ((_e9571195723_ (gx#syntax-e _e9570895715_)))
                        (let ((_hd9571295726_ (##car _e9571195723_))
                              (_tl9571395728_ (##cdr _e9571195723_)))
                          (let ((_body95731_ _tl9571395728_))
                            (if '#t
                                (cons '%#extern _body95731_)
                                (_E9571095719_)))))
                      (_E9571095719_)))))
          (_E9570995733_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx95653_)
        (let* ((_e9565495667_ _stx95653_)
               (_E9565695671_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9565495667_)))
               (_E9565595703_
                (lambda ()
                  (if (gx#stx-pair? _e9565495667_)
                      (let ((_e9565795675_ (gx#syntax-e _e9565495667_)))
                        (let ((_hd9565895678_ (##car _e9565795675_))
                              (_tl9565995680_ (##cdr _e9565795675_)))
                          (if (gx#stx-pair? _tl9565995680_)
                              (let ((_e9566095683_
                                     (gx#syntax-e _tl9565995680_)))
                                (let ((_hd9566195686_ (##car _e9566095683_))
                                      (_tl9566295688_ (##cdr _e9566095683_)))
                                  (let ((_hd95691_ _hd9566195686_))
                                    (if (gx#stx-pair? _tl9566295688_)
                                        (let ((_e9566395693_
                                               (gx#syntax-e _tl9566295688_)))
                                          (let ((_hd9566495696_
                                                 (##car _e9566395693_))
                                                (_tl9566595698_
                                                 (##cdr _e9566395693_)))
                                            (let ((_expr95701_ _hd9566495696_))
                                              (if (gx#stx-null? _tl9566595698_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd95691_)
                          (cons (gx#core-compile-top-syntax _expr95701_) '())))
              (_E9565695671_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9565695671_)))))
                                        (_E9565695671_)))))
                              (_E9565695671_))))
                      (_E9565695671_)))))
          (_E9565595703_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx95598_)
        (let* ((_e9559995612_ _stx95598_)
               (_E9560195616_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9559995612_)))
               (_E9560095649_
                (lambda ()
                  (if (gx#stx-pair? _e9559995612_)
                      (let ((_e9560295620_ (gx#syntax-e _e9559995612_)))
                        (let ((_hd9560395623_ (##car _e9560295620_))
                              (_tl9560495625_ (##cdr _e9560295620_)))
                          (if (gx#stx-pair? _tl9560495625_)
                              (let ((_e9560595628_
                                     (gx#syntax-e _tl9560495625_)))
                                (let ((_hd9560695631_ (##car _e9560595628_))
                                      (_tl9560795633_ (##cdr _e9560595628_)))
                                  (let ((_hd95636_ _hd9560695631_))
                                    (if (gx#stx-pair? _tl9560795633_)
                                        (let ((_e9560895638_
                                               (gx#syntax-e _tl9560795633_)))
                                          (let ((_hd9560995641_
                                                 (##car _e9560895638_))
                                                (_tl9561095643_
                                                 (##cdr _e9560895638_)))
                                            (let ((_expr95646_ _hd9560995641_))
                                              (if (gx#stx-null? _tl9561095643_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd95636_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr95646_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E9560195616_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9560195616_)))))
                                        (_E9560195616_)))))
                              (_E9560195616_))))
                      (_E9560195616_)))))
          (_E9560095649_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx95568_)
        (let* ((_e9556995576_ _stx95568_)
               (_E9557195580_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9556995576_)))
               (_E9557095594_
                (lambda ()
                  (if (gx#stx-pair? _e9556995576_)
                      (let ((_e9557295584_ (gx#syntax-e _e9556995576_)))
                        (let ((_hd9557395587_ (##car _e9557295584_))
                              (_tl9557495589_ (##cdr _e9557295584_)))
                          (let ((_body95592_ _tl9557495589_))
                            (if '#t
                                (cons '%#define-alias _body95592_)
                                (_E9557195580_)))))
                      (_E9557195580_)))))
          (_E9557095594_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx95538_)
        (let* ((_e9553995546_ _stx95538_)
               (_E9554195550_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9553995546_)))
               (_E9554095564_
                (lambda ()
                  (if (gx#stx-pair? _e9553995546_)
                      (let ((_e9554295554_ (gx#syntax-e _e9553995546_)))
                        (let ((_hd9554395557_ (##car _e9554295554_))
                              (_tl9554495559_ (##cdr _e9554295554_)))
                          (let ((_body95562_ _tl9554495559_))
                            (if '#t
                                (cons '%#define-runtime _body95562_)
                                (_E9554195550_)))))
                      (_E9554195550_)))))
          (_E9554095564_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx95508_)
        (let* ((_e9550995516_ _stx95508_)
               (_E9551195520_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9550995516_)))
               (_E9551095534_
                (lambda ()
                  (if (gx#stx-pair? _e9550995516_)
                      (let ((_e9551295524_ (gx#syntax-e _e9550995516_)))
                        (let ((_hd9551395527_ (##car _e9551295524_))
                              (_tl9551495529_ (##cdr _e9551295524_)))
                          (let ((_decls95532_ _tl9551495529_))
                            (if '#t
                                (cons '%#declare _decls95532_)
                                (_E9551195520_)))))
                      (_E9551195520_)))))
          (_E9551095534_))))
    (define gx#core-compile-top-lambda%
      (lambda (_stx95478_)
        (let* ((_e9547995486_ _stx95478_)
               (_E9548195490_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9547995486_)))
               (_E9548095504_
                (lambda ()
                  (if (gx#stx-pair? _e9547995486_)
                      (let ((_e9548295494_ (gx#syntax-e _e9547995486_)))
                        (let ((_hd9548395497_ (##car _e9548295494_))
                              (_tl9548495499_ (##cdr _e9548295494_)))
                          (let ((_clause95502_ _tl9548495499_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause95502_))
                                (_E9548195490_)))))
                      (_E9548195490_)))))
          (_E9548095504_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx95435_)
        (let* ((_e9543695446_ _stx95435_)
               (_E9543895450_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9543695446_)))
               (_E9543795474_
                (lambda ()
                  (if (gx#stx-pair? _e9543695446_)
                      (let ((_e9543995454_ (gx#syntax-e _e9543695446_)))
                        (let ((_hd9544095457_ (##car _e9543995454_))
                              (_tl9544195459_ (##cdr _e9543995454_)))
                          (let ((_hd95462_ _hd9544095457_))
                            (if (gx#stx-pair? _tl9544195459_)
                                (let ((_e9544295464_
                                       (gx#syntax-e _tl9544195459_)))
                                  (let ((_hd9544395467_ (##car _e9544295464_))
                                        (_tl9544495469_ (##cdr _e9544295464_)))
                                    (let ((_body95472_ _hd9544395467_))
                                      (if (gx#stx-null? _tl9544495469_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd95462_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body95472_)
                                                          '()))
                                              (_E9543895450_))
                                          (_E9543895450_)))))
                                (_E9543895450_)))))
                      (_E9543895450_)))))
          (_E9543795474_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx95405_)
        (let* ((_e9540695413_ _stx95405_)
               (_E9540895417_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9540695413_)))
               (_E9540795431_
                (lambda ()
                  (if (gx#stx-pair? _e9540695413_)
                      (let ((_e9540995421_ (gx#syntax-e _e9540695413_)))
                        (let ((_hd9541095424_ (##car _e9540995421_))
                              (_tl9541195426_ (##cdr _e9540995421_)))
                          (let ((_clauses95429_ _tl9541195426_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses95429_))
                                (_E9540895417_)))))
                      (_E9540895417_)))))
          (_E9540795431_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx95340_ _form95341_)
        (let* ((_e9534295355_ _stx95340_)
               (_E9534495359_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9534295355_)))
               (_E9534395391_
                (lambda ()
                  (if (gx#stx-pair? _e9534295355_)
                      (let ((_e9534595363_ (gx#syntax-e _e9534295355_)))
                        (let ((_hd9534695366_ (##car _e9534595363_))
                              (_tl9534795368_ (##cdr _e9534595363_)))
                          (if (gx#stx-pair? _tl9534795368_)
                              (let ((_e9534895371_
                                     (gx#syntax-e _tl9534795368_)))
                                (let ((_hd9534995374_ (##car _e9534895371_))
                                      (_tl9535095376_ (##cdr _e9534895371_)))
                                  (let ((_hd95379_ _hd9534995374_))
                                    (if (gx#stx-pair? _tl9535095376_)
                                        (let ((_e9535195381_
                                               (gx#syntax-e _tl9535095376_)))
                                          (let ((_hd9535295384_
                                                 (##car _e9535195381_))
                                                (_tl9535395386_
                                                 (##cdr _e9535195381_)))
                                            (let ((_body95389_ _hd9535295384_))
                                              (if (gx#stx-null? _tl9535395386_)
                                                  (if '#t
                                                      (cons _form95341_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd95379_)
                          (cons (gx#core-compile-top-syntax _body95389_) '())))
              (_E9534495359_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9534495359_)))))
                                        (_E9534495359_)))))
                              (_E9534495359_))))
                      (_E9534495359_)))))
          (_E9534395391_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx95398_)
        (let ((_form95400_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx95398_ _form95400_))))
    (define gx#core-compile-top-let-values%
      (lambda _g96213_
        (let ((_g96212_ (##length _g96213_)))
          (cond ((##fx= _g96212_ 1)
                 (apply (lambda (_stx95398_)
                          (gx#core-compile-top-let-values%__0 _stx95398_))
                        _g96213_))
                ((##fx= _g96212_ 2)
                 (apply (lambda (_stx95402_ _form95403_)
                          (gx#core-compile-top-let-values%__%
                           _stx95402_
                           _form95403_))
                        _g96213_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g96213_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx95337_)
        (gx#core-compile-top-let-values%__% _stx95337_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx95335_)
        (gx#core-compile-top-let-values%__% _stx95335_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx95294_)
        (let* ((_e9529595305_ _stx95294_)
               (_E9529795309_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9529595305_)))
               (_E9529695331_
                (lambda ()
                  (if (gx#stx-pair? _e9529595305_)
                      (let ((_e9529895313_ (gx#syntax-e _e9529595305_)))
                        (let ((_hd9529995316_ (##car _e9529895313_))
                              (_tl9530095318_ (##cdr _e9529895313_)))
                          (if (gx#stx-pair? _tl9530095318_)
                              (let ((_e9530195321_
                                     (gx#syntax-e _tl9530095318_)))
                                (let ((_hd9530295324_ (##car _e9530195321_))
                                      (_tl9530395326_ (##cdr _e9530195321_)))
                                  (let ((_e95329_ _hd9530295324_))
                                    (if (gx#stx-null? _tl9530395326_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e95329_)
                                                        '()))
                                            (_E9529795309_))
                                        (_E9529795309_)))))
                              (_E9529795309_))))
                      (_E9529795309_)))))
          (_E9529695331_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx95253_)
        (let* ((_e9525495264_ _stx95253_)
               (_E9525695268_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9525495264_)))
               (_E9525595290_
                (lambda ()
                  (if (gx#stx-pair? _e9525495264_)
                      (let ((_e9525795272_ (gx#syntax-e _e9525495264_)))
                        (let ((_hd9525895275_ (##car _e9525795272_))
                              (_tl9525995277_ (##cdr _e9525795272_)))
                          (if (gx#stx-pair? _tl9525995277_)
                              (let ((_e9526095280_
                                     (gx#syntax-e _tl9525995277_)))
                                (let ((_hd9526195283_ (##car _e9526095280_))
                                      (_tl9526295285_ (##cdr _e9526095280_)))
                                  (let ((_e95288_ _hd9526195283_))
                                    (if (gx#stx-null? _tl9526295285_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e95288_)
                                                        '()))
                                            (_E9525695268_))
                                        (_E9525695268_)))))
                              (_E9525695268_))))
                      (_E9525695268_)))))
          (_E9525595290_))))
    (define gx#core-compile-top-call%
      (lambda (_stx95210_)
        (let* ((_e9521195221_ _stx95210_)
               (_E9521395225_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9521195221_)))
               (_E9521295249_
                (lambda ()
                  (if (gx#stx-pair? _e9521195221_)
                      (let ((_e9521495229_ (gx#syntax-e _e9521195221_)))
                        (let ((_hd9521595232_ (##car _e9521495229_))
                              (_tl9521695234_ (##cdr _e9521495229_)))
                          (if (gx#stx-pair? _tl9521695234_)
                              (let ((_e9521795237_
                                     (gx#syntax-e _tl9521695234_)))
                                (let ((_hd9521895240_ (##car _e9521795237_))
                                      (_tl9521995242_ (##cdr _e9521795237_)))
                                  (let* ((_rator95245_ _hd9521895240_)
                                         (_args95247_ _tl9521995242_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator95245_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args95247_)))
                                        (_E9521395225_)))))
                              (_E9521395225_))))
                      (_E9521395225_)))))
          (_E9521295249_))))
    (define gx#core-compile-top-if%
      (lambda (_stx95143_)
        (let* ((_e9514495160_ _stx95143_)
               (_E9514695164_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9514495160_)))
               (_E9514595206_
                (lambda ()
                  (if (gx#stx-pair? _e9514495160_)
                      (let ((_e9514795168_ (gx#syntax-e _e9514495160_)))
                        (let ((_hd9514895171_ (##car _e9514795168_))
                              (_tl9514995173_ (##cdr _e9514795168_)))
                          (if (gx#stx-pair? _tl9514995173_)
                              (let ((_e9515095176_
                                     (gx#syntax-e _tl9514995173_)))
                                (let ((_hd9515195179_ (##car _e9515095176_))
                                      (_tl9515295181_ (##cdr _e9515095176_)))
                                  (let ((_test95184_ _hd9515195179_))
                                    (if (gx#stx-pair? _tl9515295181_)
                                        (let ((_e9515395186_
                                               (gx#syntax-e _tl9515295181_)))
                                          (let ((_hd9515495189_
                                                 (##car _e9515395186_))
                                                (_tl9515595191_
                                                 (##cdr _e9515395186_)))
                                            (let ((_K95194_ _hd9515495189_))
                                              (if (gx#stx-pair? _tl9515595191_)
                                                  (let ((_e9515695196_
                                                         (gx#syntax-e
                                                          _tl9515595191_)))
                                                    (let ((_hd9515795199_
                                                           (##car _e9515695196_))
                                                          (_tl9515895201_
                                                           (##cdr _e9515695196_)))
                                                      (let ((_E95204_
                                                             _hd9515795199_))
                                                        (if (gx#stx-null?
                                                             _tl9515895201_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test95184_)
                                    (cons (gx#core-compile-top-syntax _K95194_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E95204_)
                                                '()))))
                        (_E9514695164_))
                    (_E9514695164_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9514695164_)))))
                                        (_E9514695164_)))))
                              (_E9514695164_))))
                      (_E9514695164_)))))
          (_E9514595206_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx95102_)
        (let* ((_e9510395113_ _stx95102_)
               (_E9510595117_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9510395113_)))
               (_E9510495139_
                (lambda ()
                  (if (gx#stx-pair? _e9510395113_)
                      (let ((_e9510695121_ (gx#syntax-e _e9510395113_)))
                        (let ((_hd9510795124_ (##car _e9510695121_))
                              (_tl9510895126_ (##cdr _e9510695121_)))
                          (if (gx#stx-pair? _tl9510895126_)
                              (let ((_e9510995129_
                                     (gx#syntax-e _tl9510895126_)))
                                (let ((_hd9511095132_ (##car _e9510995129_))
                                      (_tl9511195134_ (##cdr _e9510995129_)))
                                  (let ((_id95137_ _hd9511095132_))
                                    (if (gx#stx-null? _tl9511195134_)
                                        (if (gx#identifier? _id95137_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id95137_)
                                                        '()))
                                            (_E9510595117_))
                                        (_E9510595117_)))))
                              (_E9510595117_))))
                      (_E9510595117_)))))
          (_E9510495139_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx95048_)
        (let* ((_e9504995062_ _stx95048_)
               (_E9505195066_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9504995062_)))
               (_E9505095098_
                (lambda ()
                  (if (gx#stx-pair? _e9504995062_)
                      (let ((_e9505295070_ (gx#syntax-e _e9504995062_)))
                        (let ((_hd9505395073_ (##car _e9505295070_))
                              (_tl9505495075_ (##cdr _e9505295070_)))
                          (if (gx#stx-pair? _tl9505495075_)
                              (let ((_e9505595078_
                                     (gx#syntax-e _tl9505495075_)))
                                (let ((_hd9505695081_ (##car _e9505595078_))
                                      (_tl9505795083_ (##cdr _e9505595078_)))
                                  (let ((_id95086_ _hd9505695081_))
                                    (if (gx#stx-pair? _tl9505795083_)
                                        (let ((_e9505895088_
                                               (gx#syntax-e _tl9505795083_)))
                                          (let ((_hd9505995091_
                                                 (##car _e9505895088_))
                                                (_tl9506095093_
                                                 (##cdr _e9505895088_)))
                                            (let ((_expr95096_ _hd9505995091_))
                                              (if (gx#stx-null? _tl9506095093_)
                                                  (if (gx#identifier?
                                                       _id95086_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id95086_)
                          (cons (gx#core-compile-top-syntax _expr95096_) '())))
              (_E9505195066_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9505195066_)))))
                                        (_E9505195066_)))))
                              (_E9505195066_))))
                      (_E9505195066_)))))
          (_E9505095098_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id95043_)
        (let ((_$e95045_ (gx#resolve-identifier__0 _id95043_)))
          (if _$e95045_
              (##unchecked-structure-ref _$e95045_ '1 gx#binding::t '#f)
              _id95043_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd95041_)
        (if (gx#identifier? _hd95041_)
            (gx#core-compile-top-runtime-ref _hd95041_)
            '#f)))))
