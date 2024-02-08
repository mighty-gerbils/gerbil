(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1707415537)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx161448_)
        (let* ((_e161449161456_ _stx161448_)
               (_E161451161460_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e161449161456_)))
               (_E161450161474_
                (lambda ()
                  (if (gx#stx-pair? _e161449161456_)
                      (let ((_e161452161464_ (gx#syntax-e _e161449161456_)))
                        (let ((_hd161453161467_ (##car _e161452161464_))
                              (_tl161454161469_ (##cdr _e161452161464_)))
                          (let ((_form161472_ _hd161453161467_))
                            (if '#t
                                (let* ((__self165671
                                        (gx#syntax-local-e__0 _form161472_))
                                       (__method165672
                                        (method-ref
                                         __self165671
                                         'compile-top-syntax)))
                                  (if __method165672
                                      (__method165672 __self165671 _stx161448_)
                                      (error '"Missing method"
                                             __self165671
                                             'compile-top-syntax)))
                                (_E161451161460_)))))
                      (_E161451161460_)))))
          (_E161450161474_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self161408_ _stx161409_)
        (let* ((_self161410161418_ _self161408_)
               (_E161412161422_
                (lambda () (error '"No clause matching" _self161410161418_)))
               (_K161413161434_
                (lambda (_K161425_)
                  (let ((_$e161427_ (gx#stx-source _stx161409_)))
                    (if _$e161427_
                        ((lambda (_g161429161431_)
                           (gx#stx-wrap-source
                            (_K161425_ _stx161409_)
                            _g161429161431_))
                         _$e161427_)
                        (_K161425_ _stx161409_))))))
          (if (##structure-instance-of?
               _self161410161418_
               'gx#core-expander::t)
              (let* ((_e161414161437_
                      (##unchecked-structure-ref
                       _self161410161418_
                       '1
                       gx#expander::t
                       '#f))
                     (_e161415161440_
                      (##unchecked-structure-ref
                       _self161410161418_
                       '2
                       gx#core-expander::t
                       '#f))
                     (_e161416161443_
                      (##unchecked-structure-ref
                       _self161410161418_
                       '3
                       gx#core-expander::t
                       '#f))
                     (_K161446_ _e161416161443_))
                (_K161413161434_ _K161446_))
              (_E161412161422_)))))
    (bind-method!
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx161282_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx161282_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx161252_)
        (let* ((_e161253161260_ _stx161252_)
               (_E161255161264_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e161253161260_)))
               (_E161254161278_
                (lambda ()
                  (if (gx#stx-pair? _e161253161260_)
                      (let ((_e161256161268_ (gx#syntax-e _e161253161260_)))
                        (let ((_hd161257161271_ (##car _e161256161268_))
                              (_tl161258161273_ (##cdr _e161256161268_)))
                          (let ((_body161276_ _tl161258161273_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body161276_))
                                (_E161255161264_)))))
                      (_E161255161264_)))))
          (_E161254161278_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx161221_)
        (let* ((_e161222161229_ _stx161221_)
               (_E161224161233_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e161222161229_)))
               (_E161223161248_
                (lambda ()
                  (if (gx#stx-pair? _e161222161229_)
                      (let ((_e161225161237_ (gx#syntax-e _e161222161229_)))
                        (let ((_hd161226161240_ (##car _e161225161237_))
                              (_tl161227161242_ (##cdr _e161225161237_)))
                          (let ((_body161245_ _tl161227161242_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body161245_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E161224161233_)))))
                      (_E161224161233_)))))
          (_E161223161248_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_stx161191_)
        (let* ((_e161192161199_ _stx161191_)
               (_E161194161203_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e161192161199_)))
               (_E161193161217_
                (lambda ()
                  (if (gx#stx-pair? _e161192161199_)
                      (let ((_e161195161207_ (gx#syntax-e _e161192161199_)))
                        (let ((_hd161196161210_ (##car _e161195161207_))
                              (_tl161197161212_ (##cdr _e161195161207_)))
                          (let ((_body161215_ _tl161197161212_))
                            (if '#t
                                (cons '%#begin-foreign _body161215_)
                                (_E161194161203_)))))
                      (_E161194161203_)))))
          (_E161193161217_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_stx161137_)
        (let* ((_e161138161151_ _stx161137_)
               (_E161140161155_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e161138161151_)))
               (_E161139161187_
                (lambda ()
                  (if (gx#stx-pair? _e161138161151_)
                      (let ((_e161141161159_ (gx#syntax-e _e161138161151_)))
                        (let ((_hd161142161162_ (##car _e161141161159_))
                              (_tl161143161164_ (##cdr _e161141161159_)))
                          (if (gx#stx-pair? _tl161143161164_)
                              (let ((_e161144161167_
                                     (gx#syntax-e _tl161143161164_)))
                                (let ((_hd161145161170_
                                       (##car _e161144161167_))
                                      (_tl161146161172_
                                       (##cdr _e161144161167_)))
                                  (let ((_ann161175_ _hd161145161170_))
                                    (if (gx#stx-pair? _tl161146161172_)
                                        (let ((_e161147161177_
                                               (gx#syntax-e _tl161146161172_)))
                                          (let ((_hd161148161180_
                                                 (##car _e161147161177_))
                                                (_tl161149161182_
                                                 (##cdr _e161147161177_)))
                                            (let ((_expr161185_
                                                   _hd161148161180_))
                                              (if (gx#stx-null?
                                                   _tl161149161182_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr161185_)
                                                      (_E161140161155_))
                                                  (_E161140161155_)))))
                                        (_E161140161155_)))))
                              (_E161140161155_))))
                      (_E161140161155_)))))
          (_E161139161187_))))
    (define gx#core-compile-top-import%
      (lambda (_stx161107_)
        (let* ((_e161108161115_ _stx161107_)
               (_E161110161119_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e161108161115_)))
               (_E161109161133_
                (lambda ()
                  (if (gx#stx-pair? _e161108161115_)
                      (let ((_e161111161123_ (gx#syntax-e _e161108161115_)))
                        (let ((_hd161112161126_ (##car _e161111161123_))
                              (_tl161113161128_ (##cdr _e161111161123_)))
                          (let ((_body161131_ _tl161113161128_))
                            (if '#t
                                (cons '%#import _body161131_)
                                (_E161110161119_)))))
                      (_E161110161119_)))))
          (_E161109161133_))))
    (define gx#core-compile-top-module%
      (lambda (_stx161064_)
        (let* ((_e161065161075_ _stx161064_)
               (_E161067161079_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e161065161075_)))
               (_E161066161103_
                (lambda ()
                  (if (gx#stx-pair? _e161065161075_)
                      (let ((_e161068161083_ (gx#syntax-e _e161065161075_)))
                        (let ((_hd161069161086_ (##car _e161068161083_))
                              (_tl161070161088_ (##cdr _e161068161083_)))
                          (if (gx#stx-pair? _tl161070161088_)
                              (let ((_e161071161091_
                                     (gx#syntax-e _tl161070161088_)))
                                (let ((_hd161072161094_
                                       (##car _e161071161091_))
                                      (_tl161073161096_
                                       (##cdr _e161071161091_)))
                                  (let* ((_hd161099_ _hd161072161094_)
                                         (_body161101_ _tl161073161096_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _hd161099_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body161101_)))
                                        (_E161067161079_)))))
                              (_E161067161079_))))
                      (_E161067161079_)))))
          (_E161066161103_))))
    (define gx#core-compile-top-export%
      (lambda (_stx161034_)
        (let* ((_e161035161042_ _stx161034_)
               (_E161037161046_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e161035161042_)))
               (_E161036161060_
                (lambda ()
                  (if (gx#stx-pair? _e161035161042_)
                      (let ((_e161038161050_ (gx#syntax-e _e161035161042_)))
                        (let ((_hd161039161053_ (##car _e161038161050_))
                              (_tl161040161055_ (##cdr _e161038161050_)))
                          (let ((_body161058_ _tl161040161055_))
                            (if '#t
                                (cons '%#export _body161058_)
                                (_E161037161046_)))))
                      (_E161037161046_)))))
          (_E161036161060_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx161004_)
        (let* ((_e161005161012_ _stx161004_)
               (_E161007161016_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e161005161012_)))
               (_E161006161030_
                (lambda ()
                  (if (gx#stx-pair? _e161005161012_)
                      (let ((_e161008161020_ (gx#syntax-e _e161005161012_)))
                        (let ((_hd161009161023_ (##car _e161008161020_))
                              (_tl161010161025_ (##cdr _e161008161020_)))
                          (let ((_body161028_ _tl161010161025_))
                            (if '#t
                                (cons '%#provide _body161028_)
                                (_E161007161016_)))))
                      (_E161007161016_)))))
          (_E161006161030_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx160974_)
        (let* ((_e160975160982_ _stx160974_)
               (_E160977160986_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160975160982_)))
               (_E160976161000_
                (lambda ()
                  (if (gx#stx-pair? _e160975160982_)
                      (let ((_e160978160990_ (gx#syntax-e _e160975160982_)))
                        (let ((_hd160979160993_ (##car _e160978160990_))
                              (_tl160980160995_ (##cdr _e160978160990_)))
                          (let ((_body160998_ _tl160980160995_))
                            (if '#t
                                (cons '%#extern _body160998_)
                                (_E160977160986_)))))
                      (_E160977160986_)))))
          (_E160976161000_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx160920_)
        (let* ((_e160921160934_ _stx160920_)
               (_E160923160938_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160921160934_)))
               (_E160922160970_
                (lambda ()
                  (if (gx#stx-pair? _e160921160934_)
                      (let ((_e160924160942_ (gx#syntax-e _e160921160934_)))
                        (let ((_hd160925160945_ (##car _e160924160942_))
                              (_tl160926160947_ (##cdr _e160924160942_)))
                          (if (gx#stx-pair? _tl160926160947_)
                              (let ((_e160927160950_
                                     (gx#syntax-e _tl160926160947_)))
                                (let ((_hd160928160953_
                                       (##car _e160927160950_))
                                      (_tl160929160955_
                                       (##cdr _e160927160950_)))
                                  (let ((_hd160958_ _hd160928160953_))
                                    (if (gx#stx-pair? _tl160929160955_)
                                        (let ((_e160930160960_
                                               (gx#syntax-e _tl160929160955_)))
                                          (let ((_hd160931160963_
                                                 (##car _e160930160960_))
                                                (_tl160932160965_
                                                 (##cdr _e160930160960_)))
                                            (let ((_expr160968_
                                                   _hd160931160963_))
                                              (if (gx#stx-null?
                                                   _tl160932160965_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd160958_)
                          (cons (gx#core-compile-top-syntax _expr160968_)
                                '())))
              (_E160923160938_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E160923160938_)))))
                                        (_E160923160938_)))))
                              (_E160923160938_))))
                      (_E160923160938_)))))
          (_E160922160970_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx160865_)
        (let* ((_e160866160879_ _stx160865_)
               (_E160868160883_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160866160879_)))
               (_E160867160916_
                (lambda ()
                  (if (gx#stx-pair? _e160866160879_)
                      (let ((_e160869160887_ (gx#syntax-e _e160866160879_)))
                        (let ((_hd160870160890_ (##car _e160869160887_))
                              (_tl160871160892_ (##cdr _e160869160887_)))
                          (if (gx#stx-pair? _tl160871160892_)
                              (let ((_e160872160895_
                                     (gx#syntax-e _tl160871160892_)))
                                (let ((_hd160873160898_
                                       (##car _e160872160895_))
                                      (_tl160874160900_
                                       (##cdr _e160872160895_)))
                                  (let ((_hd160903_ _hd160873160898_))
                                    (if (gx#stx-pair? _tl160874160900_)
                                        (let ((_e160875160905_
                                               (gx#syntax-e _tl160874160900_)))
                                          (let ((_hd160876160908_
                                                 (##car _e160875160905_))
                                                (_tl160877160910_
                                                 (##cdr _e160875160905_)))
                                            (let ((_expr160913_
                                                   _hd160876160908_))
                                              (if (gx#stx-null?
                                                   _tl160877160910_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd160903_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr160913_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E160868160883_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E160868160883_)))))
                                        (_E160868160883_)))))
                              (_E160868160883_))))
                      (_E160868160883_)))))
          (_E160867160916_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx160835_)
        (let* ((_e160836160843_ _stx160835_)
               (_E160838160847_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160836160843_)))
               (_E160837160861_
                (lambda ()
                  (if (gx#stx-pair? _e160836160843_)
                      (let ((_e160839160851_ (gx#syntax-e _e160836160843_)))
                        (let ((_hd160840160854_ (##car _e160839160851_))
                              (_tl160841160856_ (##cdr _e160839160851_)))
                          (let ((_body160859_ _tl160841160856_))
                            (if '#t
                                (cons '%#define-alias _body160859_)
                                (_E160838160847_)))))
                      (_E160838160847_)))))
          (_E160837160861_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx160805_)
        (let* ((_e160806160813_ _stx160805_)
               (_E160808160817_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160806160813_)))
               (_E160807160831_
                (lambda ()
                  (if (gx#stx-pair? _e160806160813_)
                      (let ((_e160809160821_ (gx#syntax-e _e160806160813_)))
                        (let ((_hd160810160824_ (##car _e160809160821_))
                              (_tl160811160826_ (##cdr _e160809160821_)))
                          (let ((_body160829_ _tl160811160826_))
                            (if '#t
                                (cons '%#define-runtime _body160829_)
                                (_E160808160817_)))))
                      (_E160808160817_)))))
          (_E160807160831_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx160775_)
        (let* ((_e160776160783_ _stx160775_)
               (_E160778160787_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160776160783_)))
               (_E160777160801_
                (lambda ()
                  (if (gx#stx-pair? _e160776160783_)
                      (let ((_e160779160791_ (gx#syntax-e _e160776160783_)))
                        (let ((_hd160780160794_ (##car _e160779160791_))
                              (_tl160781160796_ (##cdr _e160779160791_)))
                          (let ((_decls160799_ _tl160781160796_))
                            (if '#t
                                (cons '%#declare _decls160799_)
                                (_E160778160787_)))))
                      (_E160778160787_)))))
          (_E160777160801_))))
    (define gx#core-compile-top-lambda%
      (lambda (_stx160745_)
        (let* ((_e160746160753_ _stx160745_)
               (_E160748160757_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160746160753_)))
               (_E160747160771_
                (lambda ()
                  (if (gx#stx-pair? _e160746160753_)
                      (let ((_e160749160761_ (gx#syntax-e _e160746160753_)))
                        (let ((_hd160750160764_ (##car _e160749160761_))
                              (_tl160751160766_ (##cdr _e160749160761_)))
                          (let ((_clause160769_ _tl160751160766_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause160769_))
                                (_E160748160757_)))))
                      (_E160748160757_)))))
          (_E160747160771_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx160702_)
        (let* ((_e160703160713_ _stx160702_)
               (_E160705160717_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160703160713_)))
               (_E160704160741_
                (lambda ()
                  (if (gx#stx-pair? _e160703160713_)
                      (let ((_e160706160721_ (gx#syntax-e _e160703160713_)))
                        (let ((_hd160707160724_ (##car _e160706160721_))
                              (_tl160708160726_ (##cdr _e160706160721_)))
                          (let ((_hd160729_ _hd160707160724_))
                            (if (gx#stx-pair? _tl160708160726_)
                                (let ((_e160709160731_
                                       (gx#syntax-e _tl160708160726_)))
                                  (let ((_hd160710160734_
                                         (##car _e160709160731_))
                                        (_tl160711160736_
                                         (##cdr _e160709160731_)))
                                    (let ((_body160739_ _hd160710160734_))
                                      (if (gx#stx-null? _tl160711160736_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd160729_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body160739_)
                                                          '()))
                                              (_E160705160717_))
                                          (_E160705160717_)))))
                                (_E160705160717_)))))
                      (_E160705160717_)))))
          (_E160704160741_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx160672_)
        (let* ((_e160673160680_ _stx160672_)
               (_E160675160684_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160673160680_)))
               (_E160674160698_
                (lambda ()
                  (if (gx#stx-pair? _e160673160680_)
                      (let ((_e160676160688_ (gx#syntax-e _e160673160680_)))
                        (let ((_hd160677160691_ (##car _e160676160688_))
                              (_tl160678160693_ (##cdr _e160676160688_)))
                          (let ((_clauses160696_ _tl160678160693_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses160696_))
                                (_E160675160684_)))))
                      (_E160675160684_)))))
          (_E160674160698_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx160607_ _form160608_)
        (let* ((_e160609160622_ _stx160607_)
               (_E160611160626_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160609160622_)))
               (_E160610160658_
                (lambda ()
                  (if (gx#stx-pair? _e160609160622_)
                      (let ((_e160612160630_ (gx#syntax-e _e160609160622_)))
                        (let ((_hd160613160633_ (##car _e160612160630_))
                              (_tl160614160635_ (##cdr _e160612160630_)))
                          (if (gx#stx-pair? _tl160614160635_)
                              (let ((_e160615160638_
                                     (gx#syntax-e _tl160614160635_)))
                                (let ((_hd160616160641_
                                       (##car _e160615160638_))
                                      (_tl160617160643_
                                       (##cdr _e160615160638_)))
                                  (let ((_hd160646_ _hd160616160641_))
                                    (if (gx#stx-pair? _tl160617160643_)
                                        (let ((_e160618160648_
                                               (gx#syntax-e _tl160617160643_)))
                                          (let ((_hd160619160651_
                                                 (##car _e160618160648_))
                                                (_tl160620160653_
                                                 (##cdr _e160618160648_)))
                                            (let ((_body160656_
                                                   _hd160619160651_))
                                              (if (gx#stx-null?
                                                   _tl160620160653_)
                                                  (if '#t
                                                      (cons _form160608_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd160646_)
                          (cons (gx#core-compile-top-syntax _body160656_)
                                '())))
              (_E160611160626_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E160611160626_)))))
                                        (_E160611160626_)))))
                              (_E160611160626_))))
                      (_E160611160626_)))))
          (_E160610160658_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx160665_)
        (let ((_form160667_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx160665_ _form160667_))))
    (define gx#core-compile-top-let-values%
      (lambda _g165674_
        (let ((_g165673_ (##length _g165674_)))
          (cond ((##fx= _g165673_ 1)
                 (apply (lambda (_stx160665_)
                          (gx#core-compile-top-let-values%__0 _stx160665_))
                        _g165674_))
                ((##fx= _g165673_ 2)
                 (apply (lambda (_stx160669_ _form160670_)
                          (gx#core-compile-top-let-values%__%
                           _stx160669_
                           _form160670_))
                        _g165674_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g165674_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx160604_)
        (gx#core-compile-top-let-values%__% _stx160604_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx160602_)
        (gx#core-compile-top-let-values%__% _stx160602_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx160561_)
        (let* ((_e160562160572_ _stx160561_)
               (_E160564160576_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160562160572_)))
               (_E160563160598_
                (lambda ()
                  (if (gx#stx-pair? _e160562160572_)
                      (let ((_e160565160580_ (gx#syntax-e _e160562160572_)))
                        (let ((_hd160566160583_ (##car _e160565160580_))
                              (_tl160567160585_ (##cdr _e160565160580_)))
                          (if (gx#stx-pair? _tl160567160585_)
                              (let ((_e160568160588_
                                     (gx#syntax-e _tl160567160585_)))
                                (let ((_hd160569160591_
                                       (##car _e160568160588_))
                                      (_tl160570160593_
                                       (##cdr _e160568160588_)))
                                  (let ((_e160596_ _hd160569160591_))
                                    (if (gx#stx-null? _tl160570160593_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e160596_)
                                                        '()))
                                            (_E160564160576_))
                                        (_E160564160576_)))))
                              (_E160564160576_))))
                      (_E160564160576_)))))
          (_E160563160598_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx160520_)
        (let* ((_e160521160531_ _stx160520_)
               (_E160523160535_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160521160531_)))
               (_E160522160557_
                (lambda ()
                  (if (gx#stx-pair? _e160521160531_)
                      (let ((_e160524160539_ (gx#syntax-e _e160521160531_)))
                        (let ((_hd160525160542_ (##car _e160524160539_))
                              (_tl160526160544_ (##cdr _e160524160539_)))
                          (if (gx#stx-pair? _tl160526160544_)
                              (let ((_e160527160547_
                                     (gx#syntax-e _tl160526160544_)))
                                (let ((_hd160528160550_
                                       (##car _e160527160547_))
                                      (_tl160529160552_
                                       (##cdr _e160527160547_)))
                                  (let ((_e160555_ _hd160528160550_))
                                    (if (gx#stx-null? _tl160529160552_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e160555_)
                                                        '()))
                                            (_E160523160535_))
                                        (_E160523160535_)))))
                              (_E160523160535_))))
                      (_E160523160535_)))))
          (_E160522160557_))))
    (define gx#core-compile-top-call%
      (lambda (_stx160477_)
        (let* ((_e160478160488_ _stx160477_)
               (_E160480160492_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160478160488_)))
               (_E160479160516_
                (lambda ()
                  (if (gx#stx-pair? _e160478160488_)
                      (let ((_e160481160496_ (gx#syntax-e _e160478160488_)))
                        (let ((_hd160482160499_ (##car _e160481160496_))
                              (_tl160483160501_ (##cdr _e160481160496_)))
                          (if (gx#stx-pair? _tl160483160501_)
                              (let ((_e160484160504_
                                     (gx#syntax-e _tl160483160501_)))
                                (let ((_hd160485160507_
                                       (##car _e160484160504_))
                                      (_tl160486160509_
                                       (##cdr _e160484160504_)))
                                  (let* ((_rator160512_ _hd160485160507_)
                                         (_args160514_ _tl160486160509_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator160512_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args160514_)))
                                        (_E160480160492_)))))
                              (_E160480160492_))))
                      (_E160480160492_)))))
          (_E160479160516_))))
    (define gx#core-compile-top-if%
      (lambda (_stx160410_)
        (let* ((_e160411160427_ _stx160410_)
               (_E160413160431_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160411160427_)))
               (_E160412160473_
                (lambda ()
                  (if (gx#stx-pair? _e160411160427_)
                      (let ((_e160414160435_ (gx#syntax-e _e160411160427_)))
                        (let ((_hd160415160438_ (##car _e160414160435_))
                              (_tl160416160440_ (##cdr _e160414160435_)))
                          (if (gx#stx-pair? _tl160416160440_)
                              (let ((_e160417160443_
                                     (gx#syntax-e _tl160416160440_)))
                                (let ((_hd160418160446_
                                       (##car _e160417160443_))
                                      (_tl160419160448_
                                       (##cdr _e160417160443_)))
                                  (let ((_test160451_ _hd160418160446_))
                                    (if (gx#stx-pair? _tl160419160448_)
                                        (let ((_e160420160453_
                                               (gx#syntax-e _tl160419160448_)))
                                          (let ((_hd160421160456_
                                                 (##car _e160420160453_))
                                                (_tl160422160458_
                                                 (##cdr _e160420160453_)))
                                            (let ((_K160461_ _hd160421160456_))
                                              (if (gx#stx-pair?
                                                   _tl160422160458_)
                                                  (let ((_e160423160463_
                                                         (gx#syntax-e
                                                          _tl160422160458_)))
                                                    (let ((_hd160424160466_
                                                           (##car _e160423160463_))
                                                          (_tl160425160468_
                                                           (##cdr _e160423160463_)))
                                                      (let ((_E160471_
                                                             _hd160424160466_))
                                                        (if (gx#stx-null?
                                                             _tl160425160468_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test160451_)
                                    (cons (gx#core-compile-top-syntax
                                           _K160461_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E160471_)
                                                '()))))
                        (_E160413160431_))
                    (_E160413160431_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E160413160431_)))))
                                        (_E160413160431_)))))
                              (_E160413160431_))))
                      (_E160413160431_)))))
          (_E160412160473_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx160369_)
        (let* ((_e160370160380_ _stx160369_)
               (_E160372160384_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160370160380_)))
               (_E160371160406_
                (lambda ()
                  (if (gx#stx-pair? _e160370160380_)
                      (let ((_e160373160388_ (gx#syntax-e _e160370160380_)))
                        (let ((_hd160374160391_ (##car _e160373160388_))
                              (_tl160375160393_ (##cdr _e160373160388_)))
                          (if (gx#stx-pair? _tl160375160393_)
                              (let ((_e160376160396_
                                     (gx#syntax-e _tl160375160393_)))
                                (let ((_hd160377160399_
                                       (##car _e160376160396_))
                                      (_tl160378160401_
                                       (##cdr _e160376160396_)))
                                  (let ((_id160404_ _hd160377160399_))
                                    (if (gx#stx-null? _tl160378160401_)
                                        (if (gx#identifier? _id160404_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id160404_)
                                                        '()))
                                            (_E160372160384_))
                                        (_E160372160384_)))))
                              (_E160372160384_))))
                      (_E160372160384_)))))
          (_E160371160406_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx160315_)
        (let* ((_e160316160329_ _stx160315_)
               (_E160318160333_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160316160329_)))
               (_E160317160365_
                (lambda ()
                  (if (gx#stx-pair? _e160316160329_)
                      (let ((_e160319160337_ (gx#syntax-e _e160316160329_)))
                        (let ((_hd160320160340_ (##car _e160319160337_))
                              (_tl160321160342_ (##cdr _e160319160337_)))
                          (if (gx#stx-pair? _tl160321160342_)
                              (let ((_e160322160345_
                                     (gx#syntax-e _tl160321160342_)))
                                (let ((_hd160323160348_
                                       (##car _e160322160345_))
                                      (_tl160324160350_
                                       (##cdr _e160322160345_)))
                                  (let ((_id160353_ _hd160323160348_))
                                    (if (gx#stx-pair? _tl160324160350_)
                                        (let ((_e160325160355_
                                               (gx#syntax-e _tl160324160350_)))
                                          (let ((_hd160326160358_
                                                 (##car _e160325160355_))
                                                (_tl160327160360_
                                                 (##cdr _e160325160355_)))
                                            (let ((_expr160363_
                                                   _hd160326160358_))
                                              (if (gx#stx-null?
                                                   _tl160327160360_)
                                                  (if (gx#identifier?
                                                       _id160353_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id160353_)
                          (cons (gx#core-compile-top-syntax _expr160363_)
                                '())))
              (_E160318160333_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E160318160333_)))))
                                        (_E160318160333_)))))
                              (_E160318160333_))))
                      (_E160318160333_)))))
          (_E160317160365_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id160310_)
        (let ((_$e160312_ (gx#resolve-identifier__0 _id160310_)))
          (if _$e160312_
              (##unchecked-structure-ref _$e160312_ '1 gx#binding::t '#f)
              _id160310_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd160308_)
        (if (gx#identifier? _hd160308_)
            (gx#core-compile-top-runtime-ref _hd160308_)
            '#f)))))
