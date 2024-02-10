(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1707554638)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx161384_)
        (let* ((_e161385161392_ _stx161384_)
               (_E161387161396_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e161385161392_)))
               (_E161386161410_
                (lambda ()
                  (if (gx#stx-pair? _e161385161392_)
                      (let ((_e161388161400_ (gx#syntax-e _e161385161392_)))
                        (let ((_hd161389161403_ (##car _e161388161400_))
                              (_tl161390161405_ (##cdr _e161388161400_)))
                          (let ((_form161408_ _hd161389161403_))
                            (if '#t
                                (let* ((__self165607
                                        (gx#syntax-local-e__0 _form161408_))
                                       (__method165608
                                        (method-ref
                                         __self165607
                                         'compile-top-syntax)))
                                  (if __method165608
                                      (__method165608 __self165607 _stx161384_)
                                      (error '"Missing method"
                                             __self165607
                                             'compile-top-syntax)))
                                (_E161387161396_)))))
                      (_E161387161396_)))))
          (_E161386161410_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self161344_ _stx161345_)
        (let* ((_self161346161354_ _self161344_)
               (_E161348161358_
                (lambda () (error '"No clause matching" _self161346161354_)))
               (_K161349161370_
                (lambda (_K161361_)
                  (let ((_$e161363_ (gx#stx-source _stx161345_)))
                    (if _$e161363_
                        ((lambda (_g161365161367_)
                           (gx#stx-wrap-source
                            (_K161361_ _stx161345_)
                            _g161365161367_))
                         _$e161363_)
                        (_K161361_ _stx161345_))))))
          (if (##structure-instance-of?
               _self161346161354_
               'gx#core-expander::t)
              (let* ((_e161350161373_
                      (##unchecked-structure-ref
                       _self161346161354_
                       '1
                       gx#expander::t
                       '#f))
                     (_e161351161376_
                      (##unchecked-structure-ref
                       _self161346161354_
                       '2
                       gx#core-expander::t
                       '#f))
                     (_e161352161379_
                      (##unchecked-structure-ref
                       _self161346161354_
                       '3
                       gx#core-expander::t
                       '#f))
                     (_K161382_ _e161352161379_))
                (_K161349161370_ _K161382_))
              (_E161348161358_)))))
    (bind-method!
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx161218_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx161218_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx161188_)
        (let* ((_e161189161196_ _stx161188_)
               (_E161191161200_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e161189161196_)))
               (_E161190161214_
                (lambda ()
                  (if (gx#stx-pair? _e161189161196_)
                      (let ((_e161192161204_ (gx#syntax-e _e161189161196_)))
                        (let ((_hd161193161207_ (##car _e161192161204_))
                              (_tl161194161209_ (##cdr _e161192161204_)))
                          (let ((_body161212_ _tl161194161209_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body161212_))
                                (_E161191161200_)))))
                      (_E161191161200_)))))
          (_E161190161214_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx161157_)
        (let* ((_e161158161165_ _stx161157_)
               (_E161160161169_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e161158161165_)))
               (_E161159161184_
                (lambda ()
                  (if (gx#stx-pair? _e161158161165_)
                      (let ((_e161161161173_ (gx#syntax-e _e161158161165_)))
                        (let ((_hd161162161176_ (##car _e161161161173_))
                              (_tl161163161178_ (##cdr _e161161161173_)))
                          (let ((_body161181_ _tl161163161178_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body161181_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E161160161169_)))))
                      (_E161160161169_)))))
          (_E161159161184_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_stx161127_)
        (let* ((_e161128161135_ _stx161127_)
               (_E161130161139_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e161128161135_)))
               (_E161129161153_
                (lambda ()
                  (if (gx#stx-pair? _e161128161135_)
                      (let ((_e161131161143_ (gx#syntax-e _e161128161135_)))
                        (let ((_hd161132161146_ (##car _e161131161143_))
                              (_tl161133161148_ (##cdr _e161131161143_)))
                          (let ((_body161151_ _tl161133161148_))
                            (if '#t
                                (cons '%#begin-foreign _body161151_)
                                (_E161130161139_)))))
                      (_E161130161139_)))))
          (_E161129161153_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_stx161073_)
        (let* ((_e161074161087_ _stx161073_)
               (_E161076161091_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e161074161087_)))
               (_E161075161123_
                (lambda ()
                  (if (gx#stx-pair? _e161074161087_)
                      (let ((_e161077161095_ (gx#syntax-e _e161074161087_)))
                        (let ((_hd161078161098_ (##car _e161077161095_))
                              (_tl161079161100_ (##cdr _e161077161095_)))
                          (if (gx#stx-pair? _tl161079161100_)
                              (let ((_e161080161103_
                                     (gx#syntax-e _tl161079161100_)))
                                (let ((_hd161081161106_
                                       (##car _e161080161103_))
                                      (_tl161082161108_
                                       (##cdr _e161080161103_)))
                                  (let ((_ann161111_ _hd161081161106_))
                                    (if (gx#stx-pair? _tl161082161108_)
                                        (let ((_e161083161113_
                                               (gx#syntax-e _tl161082161108_)))
                                          (let ((_hd161084161116_
                                                 (##car _e161083161113_))
                                                (_tl161085161118_
                                                 (##cdr _e161083161113_)))
                                            (let ((_expr161121_
                                                   _hd161084161116_))
                                              (if (gx#stx-null?
                                                   _tl161085161118_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr161121_)
                                                      (_E161076161091_))
                                                  (_E161076161091_)))))
                                        (_E161076161091_)))))
                              (_E161076161091_))))
                      (_E161076161091_)))))
          (_E161075161123_))))
    (define gx#core-compile-top-import%
      (lambda (_stx161043_)
        (let* ((_e161044161051_ _stx161043_)
               (_E161046161055_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e161044161051_)))
               (_E161045161069_
                (lambda ()
                  (if (gx#stx-pair? _e161044161051_)
                      (let ((_e161047161059_ (gx#syntax-e _e161044161051_)))
                        (let ((_hd161048161062_ (##car _e161047161059_))
                              (_tl161049161064_ (##cdr _e161047161059_)))
                          (let ((_body161067_ _tl161049161064_))
                            (if '#t
                                (cons '%#import _body161067_)
                                (_E161046161055_)))))
                      (_E161046161055_)))))
          (_E161045161069_))))
    (define gx#core-compile-top-module%
      (lambda (_stx161000_)
        (let* ((_e161001161011_ _stx161000_)
               (_E161003161015_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e161001161011_)))
               (_E161002161039_
                (lambda ()
                  (if (gx#stx-pair? _e161001161011_)
                      (let ((_e161004161019_ (gx#syntax-e _e161001161011_)))
                        (let ((_hd161005161022_ (##car _e161004161019_))
                              (_tl161006161024_ (##cdr _e161004161019_)))
                          (if (gx#stx-pair? _tl161006161024_)
                              (let ((_e161007161027_
                                     (gx#syntax-e _tl161006161024_)))
                                (let ((_hd161008161030_
                                       (##car _e161007161027_))
                                      (_tl161009161032_
                                       (##cdr _e161007161027_)))
                                  (let* ((_hd161035_ _hd161008161030_)
                                         (_body161037_ _tl161009161032_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _hd161035_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body161037_)))
                                        (_E161003161015_)))))
                              (_E161003161015_))))
                      (_E161003161015_)))))
          (_E161002161039_))))
    (define gx#core-compile-top-export%
      (lambda (_stx160970_)
        (let* ((_e160971160978_ _stx160970_)
               (_E160973160982_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160971160978_)))
               (_E160972160996_
                (lambda ()
                  (if (gx#stx-pair? _e160971160978_)
                      (let ((_e160974160986_ (gx#syntax-e _e160971160978_)))
                        (let ((_hd160975160989_ (##car _e160974160986_))
                              (_tl160976160991_ (##cdr _e160974160986_)))
                          (let ((_body160994_ _tl160976160991_))
                            (if '#t
                                (cons '%#export _body160994_)
                                (_E160973160982_)))))
                      (_E160973160982_)))))
          (_E160972160996_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx160940_)
        (let* ((_e160941160948_ _stx160940_)
               (_E160943160952_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160941160948_)))
               (_E160942160966_
                (lambda ()
                  (if (gx#stx-pair? _e160941160948_)
                      (let ((_e160944160956_ (gx#syntax-e _e160941160948_)))
                        (let ((_hd160945160959_ (##car _e160944160956_))
                              (_tl160946160961_ (##cdr _e160944160956_)))
                          (let ((_body160964_ _tl160946160961_))
                            (if '#t
                                (cons '%#provide _body160964_)
                                (_E160943160952_)))))
                      (_E160943160952_)))))
          (_E160942160966_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx160910_)
        (let* ((_e160911160918_ _stx160910_)
               (_E160913160922_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160911160918_)))
               (_E160912160936_
                (lambda ()
                  (if (gx#stx-pair? _e160911160918_)
                      (let ((_e160914160926_ (gx#syntax-e _e160911160918_)))
                        (let ((_hd160915160929_ (##car _e160914160926_))
                              (_tl160916160931_ (##cdr _e160914160926_)))
                          (let ((_body160934_ _tl160916160931_))
                            (if '#t
                                (cons '%#extern _body160934_)
                                (_E160913160922_)))))
                      (_E160913160922_)))))
          (_E160912160936_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx160856_)
        (let* ((_e160857160870_ _stx160856_)
               (_E160859160874_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160857160870_)))
               (_E160858160906_
                (lambda ()
                  (if (gx#stx-pair? _e160857160870_)
                      (let ((_e160860160878_ (gx#syntax-e _e160857160870_)))
                        (let ((_hd160861160881_ (##car _e160860160878_))
                              (_tl160862160883_ (##cdr _e160860160878_)))
                          (if (gx#stx-pair? _tl160862160883_)
                              (let ((_e160863160886_
                                     (gx#syntax-e _tl160862160883_)))
                                (let ((_hd160864160889_
                                       (##car _e160863160886_))
                                      (_tl160865160891_
                                       (##cdr _e160863160886_)))
                                  (let ((_hd160894_ _hd160864160889_))
                                    (if (gx#stx-pair? _tl160865160891_)
                                        (let ((_e160866160896_
                                               (gx#syntax-e _tl160865160891_)))
                                          (let ((_hd160867160899_
                                                 (##car _e160866160896_))
                                                (_tl160868160901_
                                                 (##cdr _e160866160896_)))
                                            (let ((_expr160904_
                                                   _hd160867160899_))
                                              (if (gx#stx-null?
                                                   _tl160868160901_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd160894_)
                          (cons (gx#core-compile-top-syntax _expr160904_)
                                '())))
              (_E160859160874_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E160859160874_)))))
                                        (_E160859160874_)))))
                              (_E160859160874_))))
                      (_E160859160874_)))))
          (_E160858160906_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx160801_)
        (let* ((_e160802160815_ _stx160801_)
               (_E160804160819_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160802160815_)))
               (_E160803160852_
                (lambda ()
                  (if (gx#stx-pair? _e160802160815_)
                      (let ((_e160805160823_ (gx#syntax-e _e160802160815_)))
                        (let ((_hd160806160826_ (##car _e160805160823_))
                              (_tl160807160828_ (##cdr _e160805160823_)))
                          (if (gx#stx-pair? _tl160807160828_)
                              (let ((_e160808160831_
                                     (gx#syntax-e _tl160807160828_)))
                                (let ((_hd160809160834_
                                       (##car _e160808160831_))
                                      (_tl160810160836_
                                       (##cdr _e160808160831_)))
                                  (let ((_hd160839_ _hd160809160834_))
                                    (if (gx#stx-pair? _tl160810160836_)
                                        (let ((_e160811160841_
                                               (gx#syntax-e _tl160810160836_)))
                                          (let ((_hd160812160844_
                                                 (##car _e160811160841_))
                                                (_tl160813160846_
                                                 (##cdr _e160811160841_)))
                                            (let ((_expr160849_
                                                   _hd160812160844_))
                                              (if (gx#stx-null?
                                                   _tl160813160846_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd160839_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr160849_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E160804160819_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E160804160819_)))))
                                        (_E160804160819_)))))
                              (_E160804160819_))))
                      (_E160804160819_)))))
          (_E160803160852_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx160771_)
        (let* ((_e160772160779_ _stx160771_)
               (_E160774160783_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160772160779_)))
               (_E160773160797_
                (lambda ()
                  (if (gx#stx-pair? _e160772160779_)
                      (let ((_e160775160787_ (gx#syntax-e _e160772160779_)))
                        (let ((_hd160776160790_ (##car _e160775160787_))
                              (_tl160777160792_ (##cdr _e160775160787_)))
                          (let ((_body160795_ _tl160777160792_))
                            (if '#t
                                (cons '%#define-alias _body160795_)
                                (_E160774160783_)))))
                      (_E160774160783_)))))
          (_E160773160797_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx160741_)
        (let* ((_e160742160749_ _stx160741_)
               (_E160744160753_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160742160749_)))
               (_E160743160767_
                (lambda ()
                  (if (gx#stx-pair? _e160742160749_)
                      (let ((_e160745160757_ (gx#syntax-e _e160742160749_)))
                        (let ((_hd160746160760_ (##car _e160745160757_))
                              (_tl160747160762_ (##cdr _e160745160757_)))
                          (let ((_body160765_ _tl160747160762_))
                            (if '#t
                                (cons '%#define-runtime _body160765_)
                                (_E160744160753_)))))
                      (_E160744160753_)))))
          (_E160743160767_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx160711_)
        (let* ((_e160712160719_ _stx160711_)
               (_E160714160723_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160712160719_)))
               (_E160713160737_
                (lambda ()
                  (if (gx#stx-pair? _e160712160719_)
                      (let ((_e160715160727_ (gx#syntax-e _e160712160719_)))
                        (let ((_hd160716160730_ (##car _e160715160727_))
                              (_tl160717160732_ (##cdr _e160715160727_)))
                          (let ((_decls160735_ _tl160717160732_))
                            (if '#t
                                (cons '%#declare _decls160735_)
                                (_E160714160723_)))))
                      (_E160714160723_)))))
          (_E160713160737_))))
    (define gx#core-compile-top-lambda%
      (lambda (_stx160681_)
        (let* ((_e160682160689_ _stx160681_)
               (_E160684160693_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160682160689_)))
               (_E160683160707_
                (lambda ()
                  (if (gx#stx-pair? _e160682160689_)
                      (let ((_e160685160697_ (gx#syntax-e _e160682160689_)))
                        (let ((_hd160686160700_ (##car _e160685160697_))
                              (_tl160687160702_ (##cdr _e160685160697_)))
                          (let ((_clause160705_ _tl160687160702_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause160705_))
                                (_E160684160693_)))))
                      (_E160684160693_)))))
          (_E160683160707_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx160638_)
        (let* ((_e160639160649_ _stx160638_)
               (_E160641160653_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160639160649_)))
               (_E160640160677_
                (lambda ()
                  (if (gx#stx-pair? _e160639160649_)
                      (let ((_e160642160657_ (gx#syntax-e _e160639160649_)))
                        (let ((_hd160643160660_ (##car _e160642160657_))
                              (_tl160644160662_ (##cdr _e160642160657_)))
                          (let ((_hd160665_ _hd160643160660_))
                            (if (gx#stx-pair? _tl160644160662_)
                                (let ((_e160645160667_
                                       (gx#syntax-e _tl160644160662_)))
                                  (let ((_hd160646160670_
                                         (##car _e160645160667_))
                                        (_tl160647160672_
                                         (##cdr _e160645160667_)))
                                    (let ((_body160675_ _hd160646160670_))
                                      (if (gx#stx-null? _tl160647160672_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd160665_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body160675_)
                                                          '()))
                                              (_E160641160653_))
                                          (_E160641160653_)))))
                                (_E160641160653_)))))
                      (_E160641160653_)))))
          (_E160640160677_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx160608_)
        (let* ((_e160609160616_ _stx160608_)
               (_E160611160620_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160609160616_)))
               (_E160610160634_
                (lambda ()
                  (if (gx#stx-pair? _e160609160616_)
                      (let ((_e160612160624_ (gx#syntax-e _e160609160616_)))
                        (let ((_hd160613160627_ (##car _e160612160624_))
                              (_tl160614160629_ (##cdr _e160612160624_)))
                          (let ((_clauses160632_ _tl160614160629_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses160632_))
                                (_E160611160620_)))))
                      (_E160611160620_)))))
          (_E160610160634_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx160543_ _form160544_)
        (let* ((_e160545160558_ _stx160543_)
               (_E160547160562_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160545160558_)))
               (_E160546160594_
                (lambda ()
                  (if (gx#stx-pair? _e160545160558_)
                      (let ((_e160548160566_ (gx#syntax-e _e160545160558_)))
                        (let ((_hd160549160569_ (##car _e160548160566_))
                              (_tl160550160571_ (##cdr _e160548160566_)))
                          (if (gx#stx-pair? _tl160550160571_)
                              (let ((_e160551160574_
                                     (gx#syntax-e _tl160550160571_)))
                                (let ((_hd160552160577_
                                       (##car _e160551160574_))
                                      (_tl160553160579_
                                       (##cdr _e160551160574_)))
                                  (let ((_hd160582_ _hd160552160577_))
                                    (if (gx#stx-pair? _tl160553160579_)
                                        (let ((_e160554160584_
                                               (gx#syntax-e _tl160553160579_)))
                                          (let ((_hd160555160587_
                                                 (##car _e160554160584_))
                                                (_tl160556160589_
                                                 (##cdr _e160554160584_)))
                                            (let ((_body160592_
                                                   _hd160555160587_))
                                              (if (gx#stx-null?
                                                   _tl160556160589_)
                                                  (if '#t
                                                      (cons _form160544_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd160582_)
                          (cons (gx#core-compile-top-syntax _body160592_)
                                '())))
              (_E160547160562_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E160547160562_)))))
                                        (_E160547160562_)))))
                              (_E160547160562_))))
                      (_E160547160562_)))))
          (_E160546160594_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx160601_)
        (let ((_form160603_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx160601_ _form160603_))))
    (define gx#core-compile-top-let-values%
      (lambda _g165610_
        (let ((_g165609_ (##length _g165610_)))
          (cond ((##fx= _g165609_ 1)
                 (apply (lambda (_stx160601_)
                          (gx#core-compile-top-let-values%__0 _stx160601_))
                        _g165610_))
                ((##fx= _g165609_ 2)
                 (apply (lambda (_stx160605_ _form160606_)
                          (gx#core-compile-top-let-values%__%
                           _stx160605_
                           _form160606_))
                        _g165610_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g165610_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx160540_)
        (gx#core-compile-top-let-values%__% _stx160540_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx160538_)
        (gx#core-compile-top-let-values%__% _stx160538_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx160497_)
        (let* ((_e160498160508_ _stx160497_)
               (_E160500160512_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160498160508_)))
               (_E160499160534_
                (lambda ()
                  (if (gx#stx-pair? _e160498160508_)
                      (let ((_e160501160516_ (gx#syntax-e _e160498160508_)))
                        (let ((_hd160502160519_ (##car _e160501160516_))
                              (_tl160503160521_ (##cdr _e160501160516_)))
                          (if (gx#stx-pair? _tl160503160521_)
                              (let ((_e160504160524_
                                     (gx#syntax-e _tl160503160521_)))
                                (let ((_hd160505160527_
                                       (##car _e160504160524_))
                                      (_tl160506160529_
                                       (##cdr _e160504160524_)))
                                  (let ((_e160532_ _hd160505160527_))
                                    (if (gx#stx-null? _tl160506160529_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e160532_)
                                                        '()))
                                            (_E160500160512_))
                                        (_E160500160512_)))))
                              (_E160500160512_))))
                      (_E160500160512_)))))
          (_E160499160534_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx160456_)
        (let* ((_e160457160467_ _stx160456_)
               (_E160459160471_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160457160467_)))
               (_E160458160493_
                (lambda ()
                  (if (gx#stx-pair? _e160457160467_)
                      (let ((_e160460160475_ (gx#syntax-e _e160457160467_)))
                        (let ((_hd160461160478_ (##car _e160460160475_))
                              (_tl160462160480_ (##cdr _e160460160475_)))
                          (if (gx#stx-pair? _tl160462160480_)
                              (let ((_e160463160483_
                                     (gx#syntax-e _tl160462160480_)))
                                (let ((_hd160464160486_
                                       (##car _e160463160483_))
                                      (_tl160465160488_
                                       (##cdr _e160463160483_)))
                                  (let ((_e160491_ _hd160464160486_))
                                    (if (gx#stx-null? _tl160465160488_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e160491_)
                                                        '()))
                                            (_E160459160471_))
                                        (_E160459160471_)))))
                              (_E160459160471_))))
                      (_E160459160471_)))))
          (_E160458160493_))))
    (define gx#core-compile-top-call%
      (lambda (_stx160413_)
        (let* ((_e160414160424_ _stx160413_)
               (_E160416160428_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160414160424_)))
               (_E160415160452_
                (lambda ()
                  (if (gx#stx-pair? _e160414160424_)
                      (let ((_e160417160432_ (gx#syntax-e _e160414160424_)))
                        (let ((_hd160418160435_ (##car _e160417160432_))
                              (_tl160419160437_ (##cdr _e160417160432_)))
                          (if (gx#stx-pair? _tl160419160437_)
                              (let ((_e160420160440_
                                     (gx#syntax-e _tl160419160437_)))
                                (let ((_hd160421160443_
                                       (##car _e160420160440_))
                                      (_tl160422160445_
                                       (##cdr _e160420160440_)))
                                  (let* ((_rator160448_ _hd160421160443_)
                                         (_args160450_ _tl160422160445_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator160448_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args160450_)))
                                        (_E160416160428_)))))
                              (_E160416160428_))))
                      (_E160416160428_)))))
          (_E160415160452_))))
    (define gx#core-compile-top-if%
      (lambda (_stx160346_)
        (let* ((_e160347160363_ _stx160346_)
               (_E160349160367_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160347160363_)))
               (_E160348160409_
                (lambda ()
                  (if (gx#stx-pair? _e160347160363_)
                      (let ((_e160350160371_ (gx#syntax-e _e160347160363_)))
                        (let ((_hd160351160374_ (##car _e160350160371_))
                              (_tl160352160376_ (##cdr _e160350160371_)))
                          (if (gx#stx-pair? _tl160352160376_)
                              (let ((_e160353160379_
                                     (gx#syntax-e _tl160352160376_)))
                                (let ((_hd160354160382_
                                       (##car _e160353160379_))
                                      (_tl160355160384_
                                       (##cdr _e160353160379_)))
                                  (let ((_test160387_ _hd160354160382_))
                                    (if (gx#stx-pair? _tl160355160384_)
                                        (let ((_e160356160389_
                                               (gx#syntax-e _tl160355160384_)))
                                          (let ((_hd160357160392_
                                                 (##car _e160356160389_))
                                                (_tl160358160394_
                                                 (##cdr _e160356160389_)))
                                            (let ((_K160397_ _hd160357160392_))
                                              (if (gx#stx-pair?
                                                   _tl160358160394_)
                                                  (let ((_e160359160399_
                                                         (gx#syntax-e
                                                          _tl160358160394_)))
                                                    (let ((_hd160360160402_
                                                           (##car _e160359160399_))
                                                          (_tl160361160404_
                                                           (##cdr _e160359160399_)))
                                                      (let ((_E160407_
                                                             _hd160360160402_))
                                                        (if (gx#stx-null?
                                                             _tl160361160404_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test160387_)
                                    (cons (gx#core-compile-top-syntax
                                           _K160397_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E160407_)
                                                '()))))
                        (_E160349160367_))
                    (_E160349160367_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E160349160367_)))))
                                        (_E160349160367_)))))
                              (_E160349160367_))))
                      (_E160349160367_)))))
          (_E160348160409_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx160305_)
        (let* ((_e160306160316_ _stx160305_)
               (_E160308160320_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160306160316_)))
               (_E160307160342_
                (lambda ()
                  (if (gx#stx-pair? _e160306160316_)
                      (let ((_e160309160324_ (gx#syntax-e _e160306160316_)))
                        (let ((_hd160310160327_ (##car _e160309160324_))
                              (_tl160311160329_ (##cdr _e160309160324_)))
                          (if (gx#stx-pair? _tl160311160329_)
                              (let ((_e160312160332_
                                     (gx#syntax-e _tl160311160329_)))
                                (let ((_hd160313160335_
                                       (##car _e160312160332_))
                                      (_tl160314160337_
                                       (##cdr _e160312160332_)))
                                  (let ((_id160340_ _hd160313160335_))
                                    (if (gx#stx-null? _tl160314160337_)
                                        (if (gx#identifier? _id160340_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id160340_)
                                                        '()))
                                            (_E160308160320_))
                                        (_E160308160320_)))))
                              (_E160308160320_))))
                      (_E160308160320_)))))
          (_E160307160342_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx160251_)
        (let* ((_e160252160265_ _stx160251_)
               (_E160254160269_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160252160265_)))
               (_E160253160301_
                (lambda ()
                  (if (gx#stx-pair? _e160252160265_)
                      (let ((_e160255160273_ (gx#syntax-e _e160252160265_)))
                        (let ((_hd160256160276_ (##car _e160255160273_))
                              (_tl160257160278_ (##cdr _e160255160273_)))
                          (if (gx#stx-pair? _tl160257160278_)
                              (let ((_e160258160281_
                                     (gx#syntax-e _tl160257160278_)))
                                (let ((_hd160259160284_
                                       (##car _e160258160281_))
                                      (_tl160260160286_
                                       (##cdr _e160258160281_)))
                                  (let ((_id160289_ _hd160259160284_))
                                    (if (gx#stx-pair? _tl160260160286_)
                                        (let ((_e160261160291_
                                               (gx#syntax-e _tl160260160286_)))
                                          (let ((_hd160262160294_
                                                 (##car _e160261160291_))
                                                (_tl160263160296_
                                                 (##cdr _e160261160291_)))
                                            (let ((_expr160299_
                                                   _hd160262160294_))
                                              (if (gx#stx-null?
                                                   _tl160263160296_)
                                                  (if (gx#identifier?
                                                       _id160289_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id160289_)
                          (cons (gx#core-compile-top-syntax _expr160299_)
                                '())))
              (_E160254160269_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E160254160269_)))))
                                        (_E160254160269_)))))
                              (_E160254160269_))))
                      (_E160254160269_)))))
          (_E160253160301_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id160246_)
        (let ((_$e160248_ (gx#resolve-identifier__0 _id160246_)))
          (if _$e160248_
              (##unchecked-structure-ref _$e160248_ '1 gx#binding::t '#f)
              _id160246_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd160244_)
        (if (gx#identifier? _hd160244_)
            (gx#core-compile-top-runtime-ref _hd160244_)
            '#f)))))
