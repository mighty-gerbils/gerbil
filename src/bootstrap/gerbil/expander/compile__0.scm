(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1707565660)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx161378_)
        (let* ((_e161379161386_ _stx161378_)
               (_E161381161390_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e161379161386_)))
               (_E161380161404_
                (lambda ()
                  (if (gx#stx-pair? _e161379161386_)
                      (let ((_e161382161394_ (gx#syntax-e _e161379161386_)))
                        (let ((_hd161383161397_ (##car _e161382161394_))
                              (_tl161384161399_ (##cdr _e161382161394_)))
                          (let ((_form161402_ _hd161383161397_))
                            (if '#t
                                (let* ((__self165601
                                        (gx#syntax-local-e__0 _form161402_))
                                       (__method165602
                                        (method-ref
                                         __self165601
                                         'compile-top-syntax)))
                                  (if __method165602
                                      (__method165602 __self165601 _stx161378_)
                                      (error '"Missing method"
                                             __self165601
                                             'compile-top-syntax)))
                                (_E161381161390_)))))
                      (_E161381161390_)))))
          (_E161380161404_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self161338_ _stx161339_)
        (let* ((_self161340161348_ _self161338_)
               (_E161342161352_
                (lambda () (error '"No clause matching" _self161340161348_)))
               (_K161343161364_
                (lambda (_K161355_)
                  (let ((_$e161357_ (gx#stx-source _stx161339_)))
                    (if _$e161357_
                        ((lambda (_g161359161361_)
                           (gx#stx-wrap-source
                            (_K161355_ _stx161339_)
                            _g161359161361_))
                         _$e161357_)
                        (_K161355_ _stx161339_))))))
          (if (##structure-instance-of?
               _self161340161348_
               'gx#core-expander::t)
              (let* ((_e161344161367_
                      (##unchecked-structure-ref
                       _self161340161348_
                       '1
                       gx#expander::t
                       '#f))
                     (_e161345161370_
                      (##unchecked-structure-ref
                       _self161340161348_
                       '2
                       gx#core-expander::t
                       '#f))
                     (_e161346161373_
                      (##unchecked-structure-ref
                       _self161340161348_
                       '3
                       gx#core-expander::t
                       '#f))
                     (_K161376_ _e161346161373_))
                (_K161343161364_ _K161376_))
              (_E161342161352_)))))
    (bind-method!
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx161212_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx161212_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx161182_)
        (let* ((_e161183161190_ _stx161182_)
               (_E161185161194_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e161183161190_)))
               (_E161184161208_
                (lambda ()
                  (if (gx#stx-pair? _e161183161190_)
                      (let ((_e161186161198_ (gx#syntax-e _e161183161190_)))
                        (let ((_hd161187161201_ (##car _e161186161198_))
                              (_tl161188161203_ (##cdr _e161186161198_)))
                          (let ((_body161206_ _tl161188161203_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body161206_))
                                (_E161185161194_)))))
                      (_E161185161194_)))))
          (_E161184161208_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx161151_)
        (let* ((_e161152161159_ _stx161151_)
               (_E161154161163_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e161152161159_)))
               (_E161153161178_
                (lambda ()
                  (if (gx#stx-pair? _e161152161159_)
                      (let ((_e161155161167_ (gx#syntax-e _e161152161159_)))
                        (let ((_hd161156161170_ (##car _e161155161167_))
                              (_tl161157161172_ (##cdr _e161155161167_)))
                          (let ((_body161175_ _tl161157161172_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body161175_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E161154161163_)))))
                      (_E161154161163_)))))
          (_E161153161178_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_stx161121_)
        (let* ((_e161122161129_ _stx161121_)
               (_E161124161133_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e161122161129_)))
               (_E161123161147_
                (lambda ()
                  (if (gx#stx-pair? _e161122161129_)
                      (let ((_e161125161137_ (gx#syntax-e _e161122161129_)))
                        (let ((_hd161126161140_ (##car _e161125161137_))
                              (_tl161127161142_ (##cdr _e161125161137_)))
                          (let ((_body161145_ _tl161127161142_))
                            (if '#t
                                (cons '%#begin-foreign _body161145_)
                                (_E161124161133_)))))
                      (_E161124161133_)))))
          (_E161123161147_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_stx161067_)
        (let* ((_e161068161081_ _stx161067_)
               (_E161070161085_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e161068161081_)))
               (_E161069161117_
                (lambda ()
                  (if (gx#stx-pair? _e161068161081_)
                      (let ((_e161071161089_ (gx#syntax-e _e161068161081_)))
                        (let ((_hd161072161092_ (##car _e161071161089_))
                              (_tl161073161094_ (##cdr _e161071161089_)))
                          (if (gx#stx-pair? _tl161073161094_)
                              (let ((_e161074161097_
                                     (gx#syntax-e _tl161073161094_)))
                                (let ((_hd161075161100_
                                       (##car _e161074161097_))
                                      (_tl161076161102_
                                       (##cdr _e161074161097_)))
                                  (let ((_ann161105_ _hd161075161100_))
                                    (if (gx#stx-pair? _tl161076161102_)
                                        (let ((_e161077161107_
                                               (gx#syntax-e _tl161076161102_)))
                                          (let ((_hd161078161110_
                                                 (##car _e161077161107_))
                                                (_tl161079161112_
                                                 (##cdr _e161077161107_)))
                                            (let ((_expr161115_
                                                   _hd161078161110_))
                                              (if (gx#stx-null?
                                                   _tl161079161112_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr161115_)
                                                      (_E161070161085_))
                                                  (_E161070161085_)))))
                                        (_E161070161085_)))))
                              (_E161070161085_))))
                      (_E161070161085_)))))
          (_E161069161117_))))
    (define gx#core-compile-top-import%
      (lambda (_stx161037_)
        (let* ((_e161038161045_ _stx161037_)
               (_E161040161049_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e161038161045_)))
               (_E161039161063_
                (lambda ()
                  (if (gx#stx-pair? _e161038161045_)
                      (let ((_e161041161053_ (gx#syntax-e _e161038161045_)))
                        (let ((_hd161042161056_ (##car _e161041161053_))
                              (_tl161043161058_ (##cdr _e161041161053_)))
                          (let ((_body161061_ _tl161043161058_))
                            (if '#t
                                (cons '%#import _body161061_)
                                (_E161040161049_)))))
                      (_E161040161049_)))))
          (_E161039161063_))))
    (define gx#core-compile-top-module%
      (lambda (_stx160994_)
        (let* ((_e160995161005_ _stx160994_)
               (_E160997161009_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160995161005_)))
               (_E160996161033_
                (lambda ()
                  (if (gx#stx-pair? _e160995161005_)
                      (let ((_e160998161013_ (gx#syntax-e _e160995161005_)))
                        (let ((_hd160999161016_ (##car _e160998161013_))
                              (_tl161000161018_ (##cdr _e160998161013_)))
                          (if (gx#stx-pair? _tl161000161018_)
                              (let ((_e161001161021_
                                     (gx#syntax-e _tl161000161018_)))
                                (let ((_hd161002161024_
                                       (##car _e161001161021_))
                                      (_tl161003161026_
                                       (##cdr _e161001161021_)))
                                  (let* ((_hd161029_ _hd161002161024_)
                                         (_body161031_ _tl161003161026_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _hd161029_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body161031_)))
                                        (_E160997161009_)))))
                              (_E160997161009_))))
                      (_E160997161009_)))))
          (_E160996161033_))))
    (define gx#core-compile-top-export%
      (lambda (_stx160964_)
        (let* ((_e160965160972_ _stx160964_)
               (_E160967160976_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160965160972_)))
               (_E160966160990_
                (lambda ()
                  (if (gx#stx-pair? _e160965160972_)
                      (let ((_e160968160980_ (gx#syntax-e _e160965160972_)))
                        (let ((_hd160969160983_ (##car _e160968160980_))
                              (_tl160970160985_ (##cdr _e160968160980_)))
                          (let ((_body160988_ _tl160970160985_))
                            (if '#t
                                (cons '%#export _body160988_)
                                (_E160967160976_)))))
                      (_E160967160976_)))))
          (_E160966160990_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx160934_)
        (let* ((_e160935160942_ _stx160934_)
               (_E160937160946_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160935160942_)))
               (_E160936160960_
                (lambda ()
                  (if (gx#stx-pair? _e160935160942_)
                      (let ((_e160938160950_ (gx#syntax-e _e160935160942_)))
                        (let ((_hd160939160953_ (##car _e160938160950_))
                              (_tl160940160955_ (##cdr _e160938160950_)))
                          (let ((_body160958_ _tl160940160955_))
                            (if '#t
                                (cons '%#provide _body160958_)
                                (_E160937160946_)))))
                      (_E160937160946_)))))
          (_E160936160960_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx160904_)
        (let* ((_e160905160912_ _stx160904_)
               (_E160907160916_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160905160912_)))
               (_E160906160930_
                (lambda ()
                  (if (gx#stx-pair? _e160905160912_)
                      (let ((_e160908160920_ (gx#syntax-e _e160905160912_)))
                        (let ((_hd160909160923_ (##car _e160908160920_))
                              (_tl160910160925_ (##cdr _e160908160920_)))
                          (let ((_body160928_ _tl160910160925_))
                            (if '#t
                                (cons '%#extern _body160928_)
                                (_E160907160916_)))))
                      (_E160907160916_)))))
          (_E160906160930_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx160850_)
        (let* ((_e160851160864_ _stx160850_)
               (_E160853160868_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160851160864_)))
               (_E160852160900_
                (lambda ()
                  (if (gx#stx-pair? _e160851160864_)
                      (let ((_e160854160872_ (gx#syntax-e _e160851160864_)))
                        (let ((_hd160855160875_ (##car _e160854160872_))
                              (_tl160856160877_ (##cdr _e160854160872_)))
                          (if (gx#stx-pair? _tl160856160877_)
                              (let ((_e160857160880_
                                     (gx#syntax-e _tl160856160877_)))
                                (let ((_hd160858160883_
                                       (##car _e160857160880_))
                                      (_tl160859160885_
                                       (##cdr _e160857160880_)))
                                  (let ((_hd160888_ _hd160858160883_))
                                    (if (gx#stx-pair? _tl160859160885_)
                                        (let ((_e160860160890_
                                               (gx#syntax-e _tl160859160885_)))
                                          (let ((_hd160861160893_
                                                 (##car _e160860160890_))
                                                (_tl160862160895_
                                                 (##cdr _e160860160890_)))
                                            (let ((_expr160898_
                                                   _hd160861160893_))
                                              (if (gx#stx-null?
                                                   _tl160862160895_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd160888_)
                          (cons (gx#core-compile-top-syntax _expr160898_)
                                '())))
              (_E160853160868_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E160853160868_)))))
                                        (_E160853160868_)))))
                              (_E160853160868_))))
                      (_E160853160868_)))))
          (_E160852160900_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx160795_)
        (let* ((_e160796160809_ _stx160795_)
               (_E160798160813_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160796160809_)))
               (_E160797160846_
                (lambda ()
                  (if (gx#stx-pair? _e160796160809_)
                      (let ((_e160799160817_ (gx#syntax-e _e160796160809_)))
                        (let ((_hd160800160820_ (##car _e160799160817_))
                              (_tl160801160822_ (##cdr _e160799160817_)))
                          (if (gx#stx-pair? _tl160801160822_)
                              (let ((_e160802160825_
                                     (gx#syntax-e _tl160801160822_)))
                                (let ((_hd160803160828_
                                       (##car _e160802160825_))
                                      (_tl160804160830_
                                       (##cdr _e160802160825_)))
                                  (let ((_hd160833_ _hd160803160828_))
                                    (if (gx#stx-pair? _tl160804160830_)
                                        (let ((_e160805160835_
                                               (gx#syntax-e _tl160804160830_)))
                                          (let ((_hd160806160838_
                                                 (##car _e160805160835_))
                                                (_tl160807160840_
                                                 (##cdr _e160805160835_)))
                                            (let ((_expr160843_
                                                   _hd160806160838_))
                                              (if (gx#stx-null?
                                                   _tl160807160840_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd160833_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr160843_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E160798160813_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E160798160813_)))))
                                        (_E160798160813_)))))
                              (_E160798160813_))))
                      (_E160798160813_)))))
          (_E160797160846_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx160765_)
        (let* ((_e160766160773_ _stx160765_)
               (_E160768160777_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160766160773_)))
               (_E160767160791_
                (lambda ()
                  (if (gx#stx-pair? _e160766160773_)
                      (let ((_e160769160781_ (gx#syntax-e _e160766160773_)))
                        (let ((_hd160770160784_ (##car _e160769160781_))
                              (_tl160771160786_ (##cdr _e160769160781_)))
                          (let ((_body160789_ _tl160771160786_))
                            (if '#t
                                (cons '%#define-alias _body160789_)
                                (_E160768160777_)))))
                      (_E160768160777_)))))
          (_E160767160791_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx160735_)
        (let* ((_e160736160743_ _stx160735_)
               (_E160738160747_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160736160743_)))
               (_E160737160761_
                (lambda ()
                  (if (gx#stx-pair? _e160736160743_)
                      (let ((_e160739160751_ (gx#syntax-e _e160736160743_)))
                        (let ((_hd160740160754_ (##car _e160739160751_))
                              (_tl160741160756_ (##cdr _e160739160751_)))
                          (let ((_body160759_ _tl160741160756_))
                            (if '#t
                                (cons '%#define-runtime _body160759_)
                                (_E160738160747_)))))
                      (_E160738160747_)))))
          (_E160737160761_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx160705_)
        (let* ((_e160706160713_ _stx160705_)
               (_E160708160717_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160706160713_)))
               (_E160707160731_
                (lambda ()
                  (if (gx#stx-pair? _e160706160713_)
                      (let ((_e160709160721_ (gx#syntax-e _e160706160713_)))
                        (let ((_hd160710160724_ (##car _e160709160721_))
                              (_tl160711160726_ (##cdr _e160709160721_)))
                          (let ((_decls160729_ _tl160711160726_))
                            (if '#t
                                (cons '%#declare _decls160729_)
                                (_E160708160717_)))))
                      (_E160708160717_)))))
          (_E160707160731_))))
    (define gx#core-compile-top-lambda%
      (lambda (_stx160675_)
        (let* ((_e160676160683_ _stx160675_)
               (_E160678160687_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160676160683_)))
               (_E160677160701_
                (lambda ()
                  (if (gx#stx-pair? _e160676160683_)
                      (let ((_e160679160691_ (gx#syntax-e _e160676160683_)))
                        (let ((_hd160680160694_ (##car _e160679160691_))
                              (_tl160681160696_ (##cdr _e160679160691_)))
                          (let ((_clause160699_ _tl160681160696_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause160699_))
                                (_E160678160687_)))))
                      (_E160678160687_)))))
          (_E160677160701_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx160632_)
        (let* ((_e160633160643_ _stx160632_)
               (_E160635160647_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160633160643_)))
               (_E160634160671_
                (lambda ()
                  (if (gx#stx-pair? _e160633160643_)
                      (let ((_e160636160651_ (gx#syntax-e _e160633160643_)))
                        (let ((_hd160637160654_ (##car _e160636160651_))
                              (_tl160638160656_ (##cdr _e160636160651_)))
                          (let ((_hd160659_ _hd160637160654_))
                            (if (gx#stx-pair? _tl160638160656_)
                                (let ((_e160639160661_
                                       (gx#syntax-e _tl160638160656_)))
                                  (let ((_hd160640160664_
                                         (##car _e160639160661_))
                                        (_tl160641160666_
                                         (##cdr _e160639160661_)))
                                    (let ((_body160669_ _hd160640160664_))
                                      (if (gx#stx-null? _tl160641160666_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd160659_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body160669_)
                                                          '()))
                                              (_E160635160647_))
                                          (_E160635160647_)))))
                                (_E160635160647_)))))
                      (_E160635160647_)))))
          (_E160634160671_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx160602_)
        (let* ((_e160603160610_ _stx160602_)
               (_E160605160614_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160603160610_)))
               (_E160604160628_
                (lambda ()
                  (if (gx#stx-pair? _e160603160610_)
                      (let ((_e160606160618_ (gx#syntax-e _e160603160610_)))
                        (let ((_hd160607160621_ (##car _e160606160618_))
                              (_tl160608160623_ (##cdr _e160606160618_)))
                          (let ((_clauses160626_ _tl160608160623_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses160626_))
                                (_E160605160614_)))))
                      (_E160605160614_)))))
          (_E160604160628_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx160537_ _form160538_)
        (let* ((_e160539160552_ _stx160537_)
               (_E160541160556_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160539160552_)))
               (_E160540160588_
                (lambda ()
                  (if (gx#stx-pair? _e160539160552_)
                      (let ((_e160542160560_ (gx#syntax-e _e160539160552_)))
                        (let ((_hd160543160563_ (##car _e160542160560_))
                              (_tl160544160565_ (##cdr _e160542160560_)))
                          (if (gx#stx-pair? _tl160544160565_)
                              (let ((_e160545160568_
                                     (gx#syntax-e _tl160544160565_)))
                                (let ((_hd160546160571_
                                       (##car _e160545160568_))
                                      (_tl160547160573_
                                       (##cdr _e160545160568_)))
                                  (let ((_hd160576_ _hd160546160571_))
                                    (if (gx#stx-pair? _tl160547160573_)
                                        (let ((_e160548160578_
                                               (gx#syntax-e _tl160547160573_)))
                                          (let ((_hd160549160581_
                                                 (##car _e160548160578_))
                                                (_tl160550160583_
                                                 (##cdr _e160548160578_)))
                                            (let ((_body160586_
                                                   _hd160549160581_))
                                              (if (gx#stx-null?
                                                   _tl160550160583_)
                                                  (if '#t
                                                      (cons _form160538_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd160576_)
                          (cons (gx#core-compile-top-syntax _body160586_)
                                '())))
              (_E160541160556_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E160541160556_)))))
                                        (_E160541160556_)))))
                              (_E160541160556_))))
                      (_E160541160556_)))))
          (_E160540160588_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx160595_)
        (let ((_form160597_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx160595_ _form160597_))))
    (define gx#core-compile-top-let-values%
      (lambda _g165604_
        (let ((_g165603_ (##length _g165604_)))
          (cond ((##fx= _g165603_ 1)
                 (apply (lambda (_stx160595_)
                          (gx#core-compile-top-let-values%__0 _stx160595_))
                        _g165604_))
                ((##fx= _g165603_ 2)
                 (apply (lambda (_stx160599_ _form160600_)
                          (gx#core-compile-top-let-values%__%
                           _stx160599_
                           _form160600_))
                        _g165604_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g165604_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx160534_)
        (gx#core-compile-top-let-values%__% _stx160534_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx160532_)
        (gx#core-compile-top-let-values%__% _stx160532_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx160491_)
        (let* ((_e160492160502_ _stx160491_)
               (_E160494160506_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160492160502_)))
               (_E160493160528_
                (lambda ()
                  (if (gx#stx-pair? _e160492160502_)
                      (let ((_e160495160510_ (gx#syntax-e _e160492160502_)))
                        (let ((_hd160496160513_ (##car _e160495160510_))
                              (_tl160497160515_ (##cdr _e160495160510_)))
                          (if (gx#stx-pair? _tl160497160515_)
                              (let ((_e160498160518_
                                     (gx#syntax-e _tl160497160515_)))
                                (let ((_hd160499160521_
                                       (##car _e160498160518_))
                                      (_tl160500160523_
                                       (##cdr _e160498160518_)))
                                  (let ((_e160526_ _hd160499160521_))
                                    (if (gx#stx-null? _tl160500160523_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e160526_)
                                                        '()))
                                            (_E160494160506_))
                                        (_E160494160506_)))))
                              (_E160494160506_))))
                      (_E160494160506_)))))
          (_E160493160528_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx160450_)
        (let* ((_e160451160461_ _stx160450_)
               (_E160453160465_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160451160461_)))
               (_E160452160487_
                (lambda ()
                  (if (gx#stx-pair? _e160451160461_)
                      (let ((_e160454160469_ (gx#syntax-e _e160451160461_)))
                        (let ((_hd160455160472_ (##car _e160454160469_))
                              (_tl160456160474_ (##cdr _e160454160469_)))
                          (if (gx#stx-pair? _tl160456160474_)
                              (let ((_e160457160477_
                                     (gx#syntax-e _tl160456160474_)))
                                (let ((_hd160458160480_
                                       (##car _e160457160477_))
                                      (_tl160459160482_
                                       (##cdr _e160457160477_)))
                                  (let ((_e160485_ _hd160458160480_))
                                    (if (gx#stx-null? _tl160459160482_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e160485_)
                                                        '()))
                                            (_E160453160465_))
                                        (_E160453160465_)))))
                              (_E160453160465_))))
                      (_E160453160465_)))))
          (_E160452160487_))))
    (define gx#core-compile-top-call%
      (lambda (_stx160407_)
        (let* ((_e160408160418_ _stx160407_)
               (_E160410160422_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160408160418_)))
               (_E160409160446_
                (lambda ()
                  (if (gx#stx-pair? _e160408160418_)
                      (let ((_e160411160426_ (gx#syntax-e _e160408160418_)))
                        (let ((_hd160412160429_ (##car _e160411160426_))
                              (_tl160413160431_ (##cdr _e160411160426_)))
                          (if (gx#stx-pair? _tl160413160431_)
                              (let ((_e160414160434_
                                     (gx#syntax-e _tl160413160431_)))
                                (let ((_hd160415160437_
                                       (##car _e160414160434_))
                                      (_tl160416160439_
                                       (##cdr _e160414160434_)))
                                  (let* ((_rator160442_ _hd160415160437_)
                                         (_args160444_ _tl160416160439_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator160442_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args160444_)))
                                        (_E160410160422_)))))
                              (_E160410160422_))))
                      (_E160410160422_)))))
          (_E160409160446_))))
    (define gx#core-compile-top-if%
      (lambda (_stx160340_)
        (let* ((_e160341160357_ _stx160340_)
               (_E160343160361_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160341160357_)))
               (_E160342160403_
                (lambda ()
                  (if (gx#stx-pair? _e160341160357_)
                      (let ((_e160344160365_ (gx#syntax-e _e160341160357_)))
                        (let ((_hd160345160368_ (##car _e160344160365_))
                              (_tl160346160370_ (##cdr _e160344160365_)))
                          (if (gx#stx-pair? _tl160346160370_)
                              (let ((_e160347160373_
                                     (gx#syntax-e _tl160346160370_)))
                                (let ((_hd160348160376_
                                       (##car _e160347160373_))
                                      (_tl160349160378_
                                       (##cdr _e160347160373_)))
                                  (let ((_test160381_ _hd160348160376_))
                                    (if (gx#stx-pair? _tl160349160378_)
                                        (let ((_e160350160383_
                                               (gx#syntax-e _tl160349160378_)))
                                          (let ((_hd160351160386_
                                                 (##car _e160350160383_))
                                                (_tl160352160388_
                                                 (##cdr _e160350160383_)))
                                            (let ((_K160391_ _hd160351160386_))
                                              (if (gx#stx-pair?
                                                   _tl160352160388_)
                                                  (let ((_e160353160393_
                                                         (gx#syntax-e
                                                          _tl160352160388_)))
                                                    (let ((_hd160354160396_
                                                           (##car _e160353160393_))
                                                          (_tl160355160398_
                                                           (##cdr _e160353160393_)))
                                                      (let ((_E160401_
                                                             _hd160354160396_))
                                                        (if (gx#stx-null?
                                                             _tl160355160398_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test160381_)
                                    (cons (gx#core-compile-top-syntax
                                           _K160391_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E160401_)
                                                '()))))
                        (_E160343160361_))
                    (_E160343160361_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E160343160361_)))))
                                        (_E160343160361_)))))
                              (_E160343160361_))))
                      (_E160343160361_)))))
          (_E160342160403_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx160299_)
        (let* ((_e160300160310_ _stx160299_)
               (_E160302160314_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160300160310_)))
               (_E160301160336_
                (lambda ()
                  (if (gx#stx-pair? _e160300160310_)
                      (let ((_e160303160318_ (gx#syntax-e _e160300160310_)))
                        (let ((_hd160304160321_ (##car _e160303160318_))
                              (_tl160305160323_ (##cdr _e160303160318_)))
                          (if (gx#stx-pair? _tl160305160323_)
                              (let ((_e160306160326_
                                     (gx#syntax-e _tl160305160323_)))
                                (let ((_hd160307160329_
                                       (##car _e160306160326_))
                                      (_tl160308160331_
                                       (##cdr _e160306160326_)))
                                  (let ((_id160334_ _hd160307160329_))
                                    (if (gx#stx-null? _tl160308160331_)
                                        (if (gx#identifier? _id160334_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id160334_)
                                                        '()))
                                            (_E160302160314_))
                                        (_E160302160314_)))))
                              (_E160302160314_))))
                      (_E160302160314_)))))
          (_E160301160336_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx160245_)
        (let* ((_e160246160259_ _stx160245_)
               (_E160248160263_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160246160259_)))
               (_E160247160295_
                (lambda ()
                  (if (gx#stx-pair? _e160246160259_)
                      (let ((_e160249160267_ (gx#syntax-e _e160246160259_)))
                        (let ((_hd160250160270_ (##car _e160249160267_))
                              (_tl160251160272_ (##cdr _e160249160267_)))
                          (if (gx#stx-pair? _tl160251160272_)
                              (let ((_e160252160275_
                                     (gx#syntax-e _tl160251160272_)))
                                (let ((_hd160253160278_
                                       (##car _e160252160275_))
                                      (_tl160254160280_
                                       (##cdr _e160252160275_)))
                                  (let ((_id160283_ _hd160253160278_))
                                    (if (gx#stx-pair? _tl160254160280_)
                                        (let ((_e160255160285_
                                               (gx#syntax-e _tl160254160280_)))
                                          (let ((_hd160256160288_
                                                 (##car _e160255160285_))
                                                (_tl160257160290_
                                                 (##cdr _e160255160285_)))
                                            (let ((_expr160293_
                                                   _hd160256160288_))
                                              (if (gx#stx-null?
                                                   _tl160257160290_)
                                                  (if (gx#identifier?
                                                       _id160283_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id160283_)
                          (cons (gx#core-compile-top-syntax _expr160293_)
                                '())))
              (_E160248160263_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E160248160263_)))))
                                        (_E160248160263_)))))
                              (_E160248160263_))))
                      (_E160248160263_)))))
          (_E160247160295_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id160240_)
        (let ((_$e160242_ (gx#resolve-identifier__0 _id160240_)))
          (if _$e160242_
              (##unchecked-structure-ref _$e160242_ '1 gx#binding::t '#f)
              _id160240_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd160238_)
        (if (gx#identifier? _hd160238_)
            (gx#core-compile-top-runtime-ref _hd160238_)
            '#f)))))
