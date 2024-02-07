(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1707346617)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx161433_)
        (let* ((_e161434161441_ _stx161433_)
               (_E161436161445_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e161434161441_)))
               (_E161435161459_
                (lambda ()
                  (if (gx#stx-pair? _e161434161441_)
                      (let ((_e161437161449_ (gx#syntax-e _e161434161441_)))
                        (let ((_hd161438161452_ (##car _e161437161449_))
                              (_tl161439161454_ (##cdr _e161437161449_)))
                          (let ((_form161457_ _hd161438161452_))
                            (if '#t
                                (let* ((__self165656
                                        (gx#syntax-local-e__0 _form161457_))
                                       (__method165657
                                        (method-ref
                                         __self165656
                                         'compile-top-syntax)))
                                  (if __method165657
                                      (__method165657 __self165656 _stx161433_)
                                      (error '"Missing method"
                                             __self165656
                                             'compile-top-syntax)))
                                (_E161436161445_)))))
                      (_E161436161445_)))))
          (_E161435161459_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self161393_ _stx161394_)
        (let* ((_self161395161403_ _self161393_)
               (_E161397161407_
                (lambda () (error '"No clause matching" _self161395161403_)))
               (_K161398161419_
                (lambda (_K161410_)
                  (let ((_$e161412_ (gx#stx-source _stx161394_)))
                    (if _$e161412_
                        ((lambda (_g161414161416_)
                           (gx#stx-wrap-source
                            (_K161410_ _stx161394_)
                            _g161414161416_))
                         _$e161412_)
                        (_K161410_ _stx161394_))))))
          (if (##structure-instance-of?
               _self161395161403_
               'gx#core-expander::t)
              (let* ((_e161399161422_
                      (##unchecked-structure-ref
                       _self161395161403_
                       '1
                       gx#expander::t
                       '#f))
                     (_e161400161425_
                      (##unchecked-structure-ref
                       _self161395161403_
                       '2
                       gx#core-expander::t
                       '#f))
                     (_e161401161428_
                      (##unchecked-structure-ref
                       _self161395161403_
                       '3
                       gx#core-expander::t
                       '#f))
                     (_K161431_ _e161401161428_))
                (_K161398161419_ _K161431_))
              (_E161397161407_)))))
    (bind-method!
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx161267_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx161267_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx161237_)
        (let* ((_e161238161245_ _stx161237_)
               (_E161240161249_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e161238161245_)))
               (_E161239161263_
                (lambda ()
                  (if (gx#stx-pair? _e161238161245_)
                      (let ((_e161241161253_ (gx#syntax-e _e161238161245_)))
                        (let ((_hd161242161256_ (##car _e161241161253_))
                              (_tl161243161258_ (##cdr _e161241161253_)))
                          (let ((_body161261_ _tl161243161258_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body161261_))
                                (_E161240161249_)))))
                      (_E161240161249_)))))
          (_E161239161263_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx161206_)
        (let* ((_e161207161214_ _stx161206_)
               (_E161209161218_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e161207161214_)))
               (_E161208161233_
                (lambda ()
                  (if (gx#stx-pair? _e161207161214_)
                      (let ((_e161210161222_ (gx#syntax-e _e161207161214_)))
                        (let ((_hd161211161225_ (##car _e161210161222_))
                              (_tl161212161227_ (##cdr _e161210161222_)))
                          (let ((_body161230_ _tl161212161227_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body161230_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E161209161218_)))))
                      (_E161209161218_)))))
          (_E161208161233_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_stx161176_)
        (let* ((_e161177161184_ _stx161176_)
               (_E161179161188_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e161177161184_)))
               (_E161178161202_
                (lambda ()
                  (if (gx#stx-pair? _e161177161184_)
                      (let ((_e161180161192_ (gx#syntax-e _e161177161184_)))
                        (let ((_hd161181161195_ (##car _e161180161192_))
                              (_tl161182161197_ (##cdr _e161180161192_)))
                          (let ((_body161200_ _tl161182161197_))
                            (if '#t
                                (cons '%#begin-foreign _body161200_)
                                (_E161179161188_)))))
                      (_E161179161188_)))))
          (_E161178161202_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_stx161122_)
        (let* ((_e161123161136_ _stx161122_)
               (_E161125161140_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e161123161136_)))
               (_E161124161172_
                (lambda ()
                  (if (gx#stx-pair? _e161123161136_)
                      (let ((_e161126161144_ (gx#syntax-e _e161123161136_)))
                        (let ((_hd161127161147_ (##car _e161126161144_))
                              (_tl161128161149_ (##cdr _e161126161144_)))
                          (if (gx#stx-pair? _tl161128161149_)
                              (let ((_e161129161152_
                                     (gx#syntax-e _tl161128161149_)))
                                (let ((_hd161130161155_
                                       (##car _e161129161152_))
                                      (_tl161131161157_
                                       (##cdr _e161129161152_)))
                                  (let ((_ann161160_ _hd161130161155_))
                                    (if (gx#stx-pair? _tl161131161157_)
                                        (let ((_e161132161162_
                                               (gx#syntax-e _tl161131161157_)))
                                          (let ((_hd161133161165_
                                                 (##car _e161132161162_))
                                                (_tl161134161167_
                                                 (##cdr _e161132161162_)))
                                            (let ((_expr161170_
                                                   _hd161133161165_))
                                              (if (gx#stx-null?
                                                   _tl161134161167_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr161170_)
                                                      (_E161125161140_))
                                                  (_E161125161140_)))))
                                        (_E161125161140_)))))
                              (_E161125161140_))))
                      (_E161125161140_)))))
          (_E161124161172_))))
    (define gx#core-compile-top-import%
      (lambda (_stx161092_)
        (let* ((_e161093161100_ _stx161092_)
               (_E161095161104_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e161093161100_)))
               (_E161094161118_
                (lambda ()
                  (if (gx#stx-pair? _e161093161100_)
                      (let ((_e161096161108_ (gx#syntax-e _e161093161100_)))
                        (let ((_hd161097161111_ (##car _e161096161108_))
                              (_tl161098161113_ (##cdr _e161096161108_)))
                          (let ((_body161116_ _tl161098161113_))
                            (if '#t
                                (cons '%#import _body161116_)
                                (_E161095161104_)))))
                      (_E161095161104_)))))
          (_E161094161118_))))
    (define gx#core-compile-top-module%
      (lambda (_stx161049_)
        (let* ((_e161050161060_ _stx161049_)
               (_E161052161064_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e161050161060_)))
               (_E161051161088_
                (lambda ()
                  (if (gx#stx-pair? _e161050161060_)
                      (let ((_e161053161068_ (gx#syntax-e _e161050161060_)))
                        (let ((_hd161054161071_ (##car _e161053161068_))
                              (_tl161055161073_ (##cdr _e161053161068_)))
                          (if (gx#stx-pair? _tl161055161073_)
                              (let ((_e161056161076_
                                     (gx#syntax-e _tl161055161073_)))
                                (let ((_hd161057161079_
                                       (##car _e161056161076_))
                                      (_tl161058161081_
                                       (##cdr _e161056161076_)))
                                  (let* ((_hd161084_ _hd161057161079_)
                                         (_body161086_ _tl161058161081_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _hd161084_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body161086_)))
                                        (_E161052161064_)))))
                              (_E161052161064_))))
                      (_E161052161064_)))))
          (_E161051161088_))))
    (define gx#core-compile-top-export%
      (lambda (_stx161019_)
        (let* ((_e161020161027_ _stx161019_)
               (_E161022161031_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e161020161027_)))
               (_E161021161045_
                (lambda ()
                  (if (gx#stx-pair? _e161020161027_)
                      (let ((_e161023161035_ (gx#syntax-e _e161020161027_)))
                        (let ((_hd161024161038_ (##car _e161023161035_))
                              (_tl161025161040_ (##cdr _e161023161035_)))
                          (let ((_body161043_ _tl161025161040_))
                            (if '#t
                                (cons '%#export _body161043_)
                                (_E161022161031_)))))
                      (_E161022161031_)))))
          (_E161021161045_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx160989_)
        (let* ((_e160990160997_ _stx160989_)
               (_E160992161001_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160990160997_)))
               (_E160991161015_
                (lambda ()
                  (if (gx#stx-pair? _e160990160997_)
                      (let ((_e160993161005_ (gx#syntax-e _e160990160997_)))
                        (let ((_hd160994161008_ (##car _e160993161005_))
                              (_tl160995161010_ (##cdr _e160993161005_)))
                          (let ((_body161013_ _tl160995161010_))
                            (if '#t
                                (cons '%#provide _body161013_)
                                (_E160992161001_)))))
                      (_E160992161001_)))))
          (_E160991161015_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx160959_)
        (let* ((_e160960160967_ _stx160959_)
               (_E160962160971_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160960160967_)))
               (_E160961160985_
                (lambda ()
                  (if (gx#stx-pair? _e160960160967_)
                      (let ((_e160963160975_ (gx#syntax-e _e160960160967_)))
                        (let ((_hd160964160978_ (##car _e160963160975_))
                              (_tl160965160980_ (##cdr _e160963160975_)))
                          (let ((_body160983_ _tl160965160980_))
                            (if '#t
                                (cons '%#extern _body160983_)
                                (_E160962160971_)))))
                      (_E160962160971_)))))
          (_E160961160985_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx160905_)
        (let* ((_e160906160919_ _stx160905_)
               (_E160908160923_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160906160919_)))
               (_E160907160955_
                (lambda ()
                  (if (gx#stx-pair? _e160906160919_)
                      (let ((_e160909160927_ (gx#syntax-e _e160906160919_)))
                        (let ((_hd160910160930_ (##car _e160909160927_))
                              (_tl160911160932_ (##cdr _e160909160927_)))
                          (if (gx#stx-pair? _tl160911160932_)
                              (let ((_e160912160935_
                                     (gx#syntax-e _tl160911160932_)))
                                (let ((_hd160913160938_
                                       (##car _e160912160935_))
                                      (_tl160914160940_
                                       (##cdr _e160912160935_)))
                                  (let ((_hd160943_ _hd160913160938_))
                                    (if (gx#stx-pair? _tl160914160940_)
                                        (let ((_e160915160945_
                                               (gx#syntax-e _tl160914160940_)))
                                          (let ((_hd160916160948_
                                                 (##car _e160915160945_))
                                                (_tl160917160950_
                                                 (##cdr _e160915160945_)))
                                            (let ((_expr160953_
                                                   _hd160916160948_))
                                              (if (gx#stx-null?
                                                   _tl160917160950_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd160943_)
                          (cons (gx#core-compile-top-syntax _expr160953_)
                                '())))
              (_E160908160923_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E160908160923_)))))
                                        (_E160908160923_)))))
                              (_E160908160923_))))
                      (_E160908160923_)))))
          (_E160907160955_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx160850_)
        (let* ((_e160851160864_ _stx160850_)
               (_E160853160868_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160851160864_)))
               (_E160852160901_
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
                                                      (cons '%#define-syntax
                                                            (cons _hd160888_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr160898_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E160853160868_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E160853160868_)))))
                                        (_E160853160868_)))))
                              (_E160853160868_))))
                      (_E160853160868_)))))
          (_E160852160901_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx160820_)
        (let* ((_e160821160828_ _stx160820_)
               (_E160823160832_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160821160828_)))
               (_E160822160846_
                (lambda ()
                  (if (gx#stx-pair? _e160821160828_)
                      (let ((_e160824160836_ (gx#syntax-e _e160821160828_)))
                        (let ((_hd160825160839_ (##car _e160824160836_))
                              (_tl160826160841_ (##cdr _e160824160836_)))
                          (let ((_body160844_ _tl160826160841_))
                            (if '#t
                                (cons '%#define-alias _body160844_)
                                (_E160823160832_)))))
                      (_E160823160832_)))))
          (_E160822160846_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx160790_)
        (let* ((_e160791160798_ _stx160790_)
               (_E160793160802_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160791160798_)))
               (_E160792160816_
                (lambda ()
                  (if (gx#stx-pair? _e160791160798_)
                      (let ((_e160794160806_ (gx#syntax-e _e160791160798_)))
                        (let ((_hd160795160809_ (##car _e160794160806_))
                              (_tl160796160811_ (##cdr _e160794160806_)))
                          (let ((_body160814_ _tl160796160811_))
                            (if '#t
                                (cons '%#define-runtime _body160814_)
                                (_E160793160802_)))))
                      (_E160793160802_)))))
          (_E160792160816_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx160760_)
        (let* ((_e160761160768_ _stx160760_)
               (_E160763160772_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160761160768_)))
               (_E160762160786_
                (lambda ()
                  (if (gx#stx-pair? _e160761160768_)
                      (let ((_e160764160776_ (gx#syntax-e _e160761160768_)))
                        (let ((_hd160765160779_ (##car _e160764160776_))
                              (_tl160766160781_ (##cdr _e160764160776_)))
                          (let ((_decls160784_ _tl160766160781_))
                            (if '#t
                                (cons '%#declare _decls160784_)
                                (_E160763160772_)))))
                      (_E160763160772_)))))
          (_E160762160786_))))
    (define gx#core-compile-top-lambda%
      (lambda (_stx160730_)
        (let* ((_e160731160738_ _stx160730_)
               (_E160733160742_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160731160738_)))
               (_E160732160756_
                (lambda ()
                  (if (gx#stx-pair? _e160731160738_)
                      (let ((_e160734160746_ (gx#syntax-e _e160731160738_)))
                        (let ((_hd160735160749_ (##car _e160734160746_))
                              (_tl160736160751_ (##cdr _e160734160746_)))
                          (let ((_clause160754_ _tl160736160751_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause160754_))
                                (_E160733160742_)))))
                      (_E160733160742_)))))
          (_E160732160756_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx160687_)
        (let* ((_e160688160698_ _stx160687_)
               (_E160690160702_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160688160698_)))
               (_E160689160726_
                (lambda ()
                  (if (gx#stx-pair? _e160688160698_)
                      (let ((_e160691160706_ (gx#syntax-e _e160688160698_)))
                        (let ((_hd160692160709_ (##car _e160691160706_))
                              (_tl160693160711_ (##cdr _e160691160706_)))
                          (let ((_hd160714_ _hd160692160709_))
                            (if (gx#stx-pair? _tl160693160711_)
                                (let ((_e160694160716_
                                       (gx#syntax-e _tl160693160711_)))
                                  (let ((_hd160695160719_
                                         (##car _e160694160716_))
                                        (_tl160696160721_
                                         (##cdr _e160694160716_)))
                                    (let ((_body160724_ _hd160695160719_))
                                      (if (gx#stx-null? _tl160696160721_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd160714_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body160724_)
                                                          '()))
                                              (_E160690160702_))
                                          (_E160690160702_)))))
                                (_E160690160702_)))))
                      (_E160690160702_)))))
          (_E160689160726_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx160657_)
        (let* ((_e160658160665_ _stx160657_)
               (_E160660160669_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160658160665_)))
               (_E160659160683_
                (lambda ()
                  (if (gx#stx-pair? _e160658160665_)
                      (let ((_e160661160673_ (gx#syntax-e _e160658160665_)))
                        (let ((_hd160662160676_ (##car _e160661160673_))
                              (_tl160663160678_ (##cdr _e160661160673_)))
                          (let ((_clauses160681_ _tl160663160678_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses160681_))
                                (_E160660160669_)))))
                      (_E160660160669_)))))
          (_E160659160683_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx160592_ _form160593_)
        (let* ((_e160594160607_ _stx160592_)
               (_E160596160611_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160594160607_)))
               (_E160595160643_
                (lambda ()
                  (if (gx#stx-pair? _e160594160607_)
                      (let ((_e160597160615_ (gx#syntax-e _e160594160607_)))
                        (let ((_hd160598160618_ (##car _e160597160615_))
                              (_tl160599160620_ (##cdr _e160597160615_)))
                          (if (gx#stx-pair? _tl160599160620_)
                              (let ((_e160600160623_
                                     (gx#syntax-e _tl160599160620_)))
                                (let ((_hd160601160626_
                                       (##car _e160600160623_))
                                      (_tl160602160628_
                                       (##cdr _e160600160623_)))
                                  (let ((_hd160631_ _hd160601160626_))
                                    (if (gx#stx-pair? _tl160602160628_)
                                        (let ((_e160603160633_
                                               (gx#syntax-e _tl160602160628_)))
                                          (let ((_hd160604160636_
                                                 (##car _e160603160633_))
                                                (_tl160605160638_
                                                 (##cdr _e160603160633_)))
                                            (let ((_body160641_
                                                   _hd160604160636_))
                                              (if (gx#stx-null?
                                                   _tl160605160638_)
                                                  (if '#t
                                                      (cons _form160593_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd160631_)
                          (cons (gx#core-compile-top-syntax _body160641_)
                                '())))
              (_E160596160611_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E160596160611_)))))
                                        (_E160596160611_)))))
                              (_E160596160611_))))
                      (_E160596160611_)))))
          (_E160595160643_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx160650_)
        (let ((_form160652_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx160650_ _form160652_))))
    (define gx#core-compile-top-let-values%
      (lambda _g165659_
        (let ((_g165658_ (##length _g165659_)))
          (cond ((##fx= _g165658_ 1)
                 (apply (lambda (_stx160650_)
                          (gx#core-compile-top-let-values%__0 _stx160650_))
                        _g165659_))
                ((##fx= _g165658_ 2)
                 (apply (lambda (_stx160654_ _form160655_)
                          (gx#core-compile-top-let-values%__%
                           _stx160654_
                           _form160655_))
                        _g165659_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g165659_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx160589_)
        (gx#core-compile-top-let-values%__% _stx160589_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx160587_)
        (gx#core-compile-top-let-values%__% _stx160587_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx160546_)
        (let* ((_e160547160557_ _stx160546_)
               (_E160549160561_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160547160557_)))
               (_E160548160583_
                (lambda ()
                  (if (gx#stx-pair? _e160547160557_)
                      (let ((_e160550160565_ (gx#syntax-e _e160547160557_)))
                        (let ((_hd160551160568_ (##car _e160550160565_))
                              (_tl160552160570_ (##cdr _e160550160565_)))
                          (if (gx#stx-pair? _tl160552160570_)
                              (let ((_e160553160573_
                                     (gx#syntax-e _tl160552160570_)))
                                (let ((_hd160554160576_
                                       (##car _e160553160573_))
                                      (_tl160555160578_
                                       (##cdr _e160553160573_)))
                                  (let ((_e160581_ _hd160554160576_))
                                    (if (gx#stx-null? _tl160555160578_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e160581_)
                                                        '()))
                                            (_E160549160561_))
                                        (_E160549160561_)))))
                              (_E160549160561_))))
                      (_E160549160561_)))))
          (_E160548160583_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx160505_)
        (let* ((_e160506160516_ _stx160505_)
               (_E160508160520_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160506160516_)))
               (_E160507160542_
                (lambda ()
                  (if (gx#stx-pair? _e160506160516_)
                      (let ((_e160509160524_ (gx#syntax-e _e160506160516_)))
                        (let ((_hd160510160527_ (##car _e160509160524_))
                              (_tl160511160529_ (##cdr _e160509160524_)))
                          (if (gx#stx-pair? _tl160511160529_)
                              (let ((_e160512160532_
                                     (gx#syntax-e _tl160511160529_)))
                                (let ((_hd160513160535_
                                       (##car _e160512160532_))
                                      (_tl160514160537_
                                       (##cdr _e160512160532_)))
                                  (let ((_e160540_ _hd160513160535_))
                                    (if (gx#stx-null? _tl160514160537_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e160540_)
                                                        '()))
                                            (_E160508160520_))
                                        (_E160508160520_)))))
                              (_E160508160520_))))
                      (_E160508160520_)))))
          (_E160507160542_))))
    (define gx#core-compile-top-call%
      (lambda (_stx160462_)
        (let* ((_e160463160473_ _stx160462_)
               (_E160465160477_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160463160473_)))
               (_E160464160501_
                (lambda ()
                  (if (gx#stx-pair? _e160463160473_)
                      (let ((_e160466160481_ (gx#syntax-e _e160463160473_)))
                        (let ((_hd160467160484_ (##car _e160466160481_))
                              (_tl160468160486_ (##cdr _e160466160481_)))
                          (if (gx#stx-pair? _tl160468160486_)
                              (let ((_e160469160489_
                                     (gx#syntax-e _tl160468160486_)))
                                (let ((_hd160470160492_
                                       (##car _e160469160489_))
                                      (_tl160471160494_
                                       (##cdr _e160469160489_)))
                                  (let* ((_rator160497_ _hd160470160492_)
                                         (_args160499_ _tl160471160494_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator160497_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args160499_)))
                                        (_E160465160477_)))))
                              (_E160465160477_))))
                      (_E160465160477_)))))
          (_E160464160501_))))
    (define gx#core-compile-top-if%
      (lambda (_stx160395_)
        (let* ((_e160396160412_ _stx160395_)
               (_E160398160416_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160396160412_)))
               (_E160397160458_
                (lambda ()
                  (if (gx#stx-pair? _e160396160412_)
                      (let ((_e160399160420_ (gx#syntax-e _e160396160412_)))
                        (let ((_hd160400160423_ (##car _e160399160420_))
                              (_tl160401160425_ (##cdr _e160399160420_)))
                          (if (gx#stx-pair? _tl160401160425_)
                              (let ((_e160402160428_
                                     (gx#syntax-e _tl160401160425_)))
                                (let ((_hd160403160431_
                                       (##car _e160402160428_))
                                      (_tl160404160433_
                                       (##cdr _e160402160428_)))
                                  (let ((_test160436_ _hd160403160431_))
                                    (if (gx#stx-pair? _tl160404160433_)
                                        (let ((_e160405160438_
                                               (gx#syntax-e _tl160404160433_)))
                                          (let ((_hd160406160441_
                                                 (##car _e160405160438_))
                                                (_tl160407160443_
                                                 (##cdr _e160405160438_)))
                                            (let ((_K160446_ _hd160406160441_))
                                              (if (gx#stx-pair?
                                                   _tl160407160443_)
                                                  (let ((_e160408160448_
                                                         (gx#syntax-e
                                                          _tl160407160443_)))
                                                    (let ((_hd160409160451_
                                                           (##car _e160408160448_))
                                                          (_tl160410160453_
                                                           (##cdr _e160408160448_)))
                                                      (let ((_E160456_
                                                             _hd160409160451_))
                                                        (if (gx#stx-null?
                                                             _tl160410160453_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test160436_)
                                    (cons (gx#core-compile-top-syntax
                                           _K160446_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E160456_)
                                                '()))))
                        (_E160398160416_))
                    (_E160398160416_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E160398160416_)))))
                                        (_E160398160416_)))))
                              (_E160398160416_))))
                      (_E160398160416_)))))
          (_E160397160458_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx160354_)
        (let* ((_e160355160365_ _stx160354_)
               (_E160357160369_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160355160365_)))
               (_E160356160391_
                (lambda ()
                  (if (gx#stx-pair? _e160355160365_)
                      (let ((_e160358160373_ (gx#syntax-e _e160355160365_)))
                        (let ((_hd160359160376_ (##car _e160358160373_))
                              (_tl160360160378_ (##cdr _e160358160373_)))
                          (if (gx#stx-pair? _tl160360160378_)
                              (let ((_e160361160381_
                                     (gx#syntax-e _tl160360160378_)))
                                (let ((_hd160362160384_
                                       (##car _e160361160381_))
                                      (_tl160363160386_
                                       (##cdr _e160361160381_)))
                                  (let ((_id160389_ _hd160362160384_))
                                    (if (gx#stx-null? _tl160363160386_)
                                        (if (gx#identifier? _id160389_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id160389_)
                                                        '()))
                                            (_E160357160369_))
                                        (_E160357160369_)))))
                              (_E160357160369_))))
                      (_E160357160369_)))))
          (_E160356160391_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx160300_)
        (let* ((_e160301160314_ _stx160300_)
               (_E160303160318_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160301160314_)))
               (_E160302160350_
                (lambda ()
                  (if (gx#stx-pair? _e160301160314_)
                      (let ((_e160304160322_ (gx#syntax-e _e160301160314_)))
                        (let ((_hd160305160325_ (##car _e160304160322_))
                              (_tl160306160327_ (##cdr _e160304160322_)))
                          (if (gx#stx-pair? _tl160306160327_)
                              (let ((_e160307160330_
                                     (gx#syntax-e _tl160306160327_)))
                                (let ((_hd160308160333_
                                       (##car _e160307160330_))
                                      (_tl160309160335_
                                       (##cdr _e160307160330_)))
                                  (let ((_id160338_ _hd160308160333_))
                                    (if (gx#stx-pair? _tl160309160335_)
                                        (let ((_e160310160340_
                                               (gx#syntax-e _tl160309160335_)))
                                          (let ((_hd160311160343_
                                                 (##car _e160310160340_))
                                                (_tl160312160345_
                                                 (##cdr _e160310160340_)))
                                            (let ((_expr160348_
                                                   _hd160311160343_))
                                              (if (gx#stx-null?
                                                   _tl160312160345_)
                                                  (if (gx#identifier?
                                                       _id160338_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id160338_)
                          (cons (gx#core-compile-top-syntax _expr160348_)
                                '())))
              (_E160303160318_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E160303160318_)))))
                                        (_E160303160318_)))))
                              (_E160303160318_))))
                      (_E160303160318_)))))
          (_E160302160350_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id160295_)
        (let ((_$e160297_ (gx#resolve-identifier__0 _id160295_)))
          (if _$e160297_
              (##unchecked-structure-ref _$e160297_ '1 gx#binding::t '#f)
              _id160295_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd160293_)
        (if (gx#identifier? _hd160293_)
            (gx#core-compile-top-runtime-ref _hd160293_)
            '#f)))))
