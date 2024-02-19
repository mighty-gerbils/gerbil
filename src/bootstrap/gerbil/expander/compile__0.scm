(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1708334575)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx180701_)
        (let* ((_e180702180709_ _stx180701_)
               (_E180704180713_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e180702180709_)))
               (_E180703180727_
                (lambda ()
                  (if (gx#stx-pair? _e180702180709_)
                      (let ((_e180705180717_ (gx#syntax-e _e180702180709_)))
                        (let ((_hd180706180720_ (##car _e180705180717_))
                              (_tl180707180722_ (##cdr _e180705180717_)))
                          (let ((_form180725_ _hd180706180720_))
                            (if '#t
                                (let* ((__self184797
                                        (gx#syntax-local-e__0 _form180725_))
                                       (__method184798
                                        (method-ref
                                         __self184797
                                         'compile-top-syntax)))
                                  (if __method184798
                                      (__method184798 __self184797 _stx180701_)
                                      (error '"Missing method"
                                             __self184797
                                             'compile-top-syntax)))
                                (_E180704180713_)))))
                      (_E180704180713_)))))
          (_E180703180727_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self180661_ _stx180662_)
        (let* ((_self180663180671_ _self180661_)
               (_E180665180675_
                (lambda () (error '"No clause matching" _self180663180671_)))
               (_K180666180687_
                (lambda (_K180678_)
                  (let ((_$e180680_ (gx#stx-source _stx180662_)))
                    (if _$e180680_
                        ((lambda (_g180682180684_)
                           (gx#stx-wrap-source
                            (_K180678_ _stx180662_)
                            _g180682180684_))
                         _$e180680_)
                        (_K180678_ _stx180662_))))))
          (if (##structure-instance-of?
               _self180663180671_
               'gx#core-expander::t)
              (let* ((_e180667180690_
                      (##unchecked-structure-ref
                       _self180663180671_
                       '1
                       gx#expander::t
                       '#f))
                     (_e180668180693_
                      (##unchecked-structure-ref
                       _self180663180671_
                       '2
                       gx#core-expander::t
                       '#f))
                     (_e180669180696_
                      (##unchecked-structure-ref
                       _self180663180671_
                       '3
                       gx#core-expander::t
                       '#f))
                     (_K180699_ _e180669180696_))
                (_K180666180687_ _K180699_))
              (_E180665180675_)))))
    (bind-method!
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx180535_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx180535_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx180505_)
        (let* ((_e180506180513_ _stx180505_)
               (_E180508180517_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e180506180513_)))
               (_E180507180531_
                (lambda ()
                  (if (gx#stx-pair? _e180506180513_)
                      (let ((_e180509180521_ (gx#syntax-e _e180506180513_)))
                        (let ((_hd180510180524_ (##car _e180509180521_))
                              (_tl180511180526_ (##cdr _e180509180521_)))
                          (let ((_body180529_ _tl180511180526_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body180529_))
                                (_E180508180517_)))))
                      (_E180508180517_)))))
          (_E180507180531_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx180474_)
        (let* ((_e180475180482_ _stx180474_)
               (_E180477180486_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e180475180482_)))
               (_E180476180501_
                (lambda ()
                  (if (gx#stx-pair? _e180475180482_)
                      (let ((_e180478180490_ (gx#syntax-e _e180475180482_)))
                        (let ((_hd180479180493_ (##car _e180478180490_))
                              (_tl180480180495_ (##cdr _e180478180490_)))
                          (let ((_body180498_ _tl180480180495_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body180498_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E180477180486_)))))
                      (_E180477180486_)))))
          (_E180476180501_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_stx180444_)
        (let* ((_e180445180452_ _stx180444_)
               (_E180447180456_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e180445180452_)))
               (_E180446180470_
                (lambda ()
                  (if (gx#stx-pair? _e180445180452_)
                      (let ((_e180448180460_ (gx#syntax-e _e180445180452_)))
                        (let ((_hd180449180463_ (##car _e180448180460_))
                              (_tl180450180465_ (##cdr _e180448180460_)))
                          (let ((_body180468_ _tl180450180465_))
                            (if '#t
                                (cons '%#begin-foreign _body180468_)
                                (_E180447180456_)))))
                      (_E180447180456_)))))
          (_E180446180470_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_stx180390_)
        (let* ((_e180391180404_ _stx180390_)
               (_E180393180408_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e180391180404_)))
               (_E180392180440_
                (lambda ()
                  (if (gx#stx-pair? _e180391180404_)
                      (let ((_e180394180412_ (gx#syntax-e _e180391180404_)))
                        (let ((_hd180395180415_ (##car _e180394180412_))
                              (_tl180396180417_ (##cdr _e180394180412_)))
                          (if (gx#stx-pair? _tl180396180417_)
                              (let ((_e180397180420_
                                     (gx#syntax-e _tl180396180417_)))
                                (let ((_hd180398180423_
                                       (##car _e180397180420_))
                                      (_tl180399180425_
                                       (##cdr _e180397180420_)))
                                  (let ((_ann180428_ _hd180398180423_))
                                    (if (gx#stx-pair? _tl180399180425_)
                                        (let ((_e180400180430_
                                               (gx#syntax-e _tl180399180425_)))
                                          (let ((_hd180401180433_
                                                 (##car _e180400180430_))
                                                (_tl180402180435_
                                                 (##cdr _e180400180430_)))
                                            (let ((_expr180438_
                                                   _hd180401180433_))
                                              (if (gx#stx-null?
                                                   _tl180402180435_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr180438_)
                                                      (_E180393180408_))
                                                  (_E180393180408_)))))
                                        (_E180393180408_)))))
                              (_E180393180408_))))
                      (_E180393180408_)))))
          (_E180392180440_))))
    (define gx#core-compile-top-import%
      (lambda (_stx180360_)
        (let* ((_e180361180368_ _stx180360_)
               (_E180363180372_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e180361180368_)))
               (_E180362180386_
                (lambda ()
                  (if (gx#stx-pair? _e180361180368_)
                      (let ((_e180364180376_ (gx#syntax-e _e180361180368_)))
                        (let ((_hd180365180379_ (##car _e180364180376_))
                              (_tl180366180381_ (##cdr _e180364180376_)))
                          (let ((_body180384_ _tl180366180381_))
                            (if '#t
                                (cons '%#import _body180384_)
                                (_E180363180372_)))))
                      (_E180363180372_)))))
          (_E180362180386_))))
    (define gx#core-compile-top-module%
      (lambda (_stx180317_)
        (let* ((_e180318180328_ _stx180317_)
               (_E180320180332_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e180318180328_)))
               (_E180319180356_
                (lambda ()
                  (if (gx#stx-pair? _e180318180328_)
                      (let ((_e180321180336_ (gx#syntax-e _e180318180328_)))
                        (let ((_hd180322180339_ (##car _e180321180336_))
                              (_tl180323180341_ (##cdr _e180321180336_)))
                          (if (gx#stx-pair? _tl180323180341_)
                              (let ((_e180324180344_
                                     (gx#syntax-e _tl180323180341_)))
                                (let ((_hd180325180347_
                                       (##car _e180324180344_))
                                      (_tl180326180349_
                                       (##cdr _e180324180344_)))
                                  (let* ((_hd180352_ _hd180325180347_)
                                         (_body180354_ _tl180326180349_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _hd180352_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body180354_)))
                                        (_E180320180332_)))))
                              (_E180320180332_))))
                      (_E180320180332_)))))
          (_E180319180356_))))
    (define gx#core-compile-top-export%
      (lambda (_stx180287_)
        (let* ((_e180288180295_ _stx180287_)
               (_E180290180299_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e180288180295_)))
               (_E180289180313_
                (lambda ()
                  (if (gx#stx-pair? _e180288180295_)
                      (let ((_e180291180303_ (gx#syntax-e _e180288180295_)))
                        (let ((_hd180292180306_ (##car _e180291180303_))
                              (_tl180293180308_ (##cdr _e180291180303_)))
                          (let ((_body180311_ _tl180293180308_))
                            (if '#t
                                (cons '%#export _body180311_)
                                (_E180290180299_)))))
                      (_E180290180299_)))))
          (_E180289180313_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx180257_)
        (let* ((_e180258180265_ _stx180257_)
               (_E180260180269_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e180258180265_)))
               (_E180259180283_
                (lambda ()
                  (if (gx#stx-pair? _e180258180265_)
                      (let ((_e180261180273_ (gx#syntax-e _e180258180265_)))
                        (let ((_hd180262180276_ (##car _e180261180273_))
                              (_tl180263180278_ (##cdr _e180261180273_)))
                          (let ((_body180281_ _tl180263180278_))
                            (if '#t
                                (cons '%#provide _body180281_)
                                (_E180260180269_)))))
                      (_E180260180269_)))))
          (_E180259180283_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx180227_)
        (let* ((_e180228180235_ _stx180227_)
               (_E180230180239_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e180228180235_)))
               (_E180229180253_
                (lambda ()
                  (if (gx#stx-pair? _e180228180235_)
                      (let ((_e180231180243_ (gx#syntax-e _e180228180235_)))
                        (let ((_hd180232180246_ (##car _e180231180243_))
                              (_tl180233180248_ (##cdr _e180231180243_)))
                          (let ((_body180251_ _tl180233180248_))
                            (if '#t
                                (cons '%#extern _body180251_)
                                (_E180230180239_)))))
                      (_E180230180239_)))))
          (_E180229180253_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx180173_)
        (let* ((_e180174180187_ _stx180173_)
               (_E180176180191_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e180174180187_)))
               (_E180175180223_
                (lambda ()
                  (if (gx#stx-pair? _e180174180187_)
                      (let ((_e180177180195_ (gx#syntax-e _e180174180187_)))
                        (let ((_hd180178180198_ (##car _e180177180195_))
                              (_tl180179180200_ (##cdr _e180177180195_)))
                          (if (gx#stx-pair? _tl180179180200_)
                              (let ((_e180180180203_
                                     (gx#syntax-e _tl180179180200_)))
                                (let ((_hd180181180206_
                                       (##car _e180180180203_))
                                      (_tl180182180208_
                                       (##cdr _e180180180203_)))
                                  (let ((_hd180211_ _hd180181180206_))
                                    (if (gx#stx-pair? _tl180182180208_)
                                        (let ((_e180183180213_
                                               (gx#syntax-e _tl180182180208_)))
                                          (let ((_hd180184180216_
                                                 (##car _e180183180213_))
                                                (_tl180185180218_
                                                 (##cdr _e180183180213_)))
                                            (let ((_expr180221_
                                                   _hd180184180216_))
                                              (if (gx#stx-null?
                                                   _tl180185180218_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd180211_)
                          (cons (gx#core-compile-top-syntax _expr180221_)
                                '())))
              (_E180176180191_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E180176180191_)))))
                                        (_E180176180191_)))))
                              (_E180176180191_))))
                      (_E180176180191_)))))
          (_E180175180223_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx180118_)
        (let* ((_e180119180132_ _stx180118_)
               (_E180121180136_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e180119180132_)))
               (_E180120180169_
                (lambda ()
                  (if (gx#stx-pair? _e180119180132_)
                      (let ((_e180122180140_ (gx#syntax-e _e180119180132_)))
                        (let ((_hd180123180143_ (##car _e180122180140_))
                              (_tl180124180145_ (##cdr _e180122180140_)))
                          (if (gx#stx-pair? _tl180124180145_)
                              (let ((_e180125180148_
                                     (gx#syntax-e _tl180124180145_)))
                                (let ((_hd180126180151_
                                       (##car _e180125180148_))
                                      (_tl180127180153_
                                       (##cdr _e180125180148_)))
                                  (let ((_hd180156_ _hd180126180151_))
                                    (if (gx#stx-pair? _tl180127180153_)
                                        (let ((_e180128180158_
                                               (gx#syntax-e _tl180127180153_)))
                                          (let ((_hd180129180161_
                                                 (##car _e180128180158_))
                                                (_tl180130180163_
                                                 (##cdr _e180128180158_)))
                                            (let ((_expr180166_
                                                   _hd180129180161_))
                                              (if (gx#stx-null?
                                                   _tl180130180163_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd180156_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr180166_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E180121180136_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E180121180136_)))))
                                        (_E180121180136_)))))
                              (_E180121180136_))))
                      (_E180121180136_)))))
          (_E180120180169_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx180088_)
        (let* ((_e180089180096_ _stx180088_)
               (_E180091180100_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e180089180096_)))
               (_E180090180114_
                (lambda ()
                  (if (gx#stx-pair? _e180089180096_)
                      (let ((_e180092180104_ (gx#syntax-e _e180089180096_)))
                        (let ((_hd180093180107_ (##car _e180092180104_))
                              (_tl180094180109_ (##cdr _e180092180104_)))
                          (let ((_body180112_ _tl180094180109_))
                            (if '#t
                                (cons '%#define-alias _body180112_)
                                (_E180091180100_)))))
                      (_E180091180100_)))))
          (_E180090180114_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx180058_)
        (let* ((_e180059180066_ _stx180058_)
               (_E180061180070_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e180059180066_)))
               (_E180060180084_
                (lambda ()
                  (if (gx#stx-pair? _e180059180066_)
                      (let ((_e180062180074_ (gx#syntax-e _e180059180066_)))
                        (let ((_hd180063180077_ (##car _e180062180074_))
                              (_tl180064180079_ (##cdr _e180062180074_)))
                          (let ((_body180082_ _tl180064180079_))
                            (if '#t
                                (cons '%#define-runtime _body180082_)
                                (_E180061180070_)))))
                      (_E180061180070_)))))
          (_E180060180084_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx180028_)
        (let* ((_e180029180036_ _stx180028_)
               (_E180031180040_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e180029180036_)))
               (_E180030180054_
                (lambda ()
                  (if (gx#stx-pair? _e180029180036_)
                      (let ((_e180032180044_ (gx#syntax-e _e180029180036_)))
                        (let ((_hd180033180047_ (##car _e180032180044_))
                              (_tl180034180049_ (##cdr _e180032180044_)))
                          (let ((_decls180052_ _tl180034180049_))
                            (if '#t
                                (cons '%#declare _decls180052_)
                                (_E180031180040_)))))
                      (_E180031180040_)))))
          (_E180030180054_))))
    (define gx#core-compile-top-lambda%
      (lambda (_stx179998_)
        (let* ((_e179999180006_ _stx179998_)
               (_E180001180010_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e179999180006_)))
               (_E180000180024_
                (lambda ()
                  (if (gx#stx-pair? _e179999180006_)
                      (let ((_e180002180014_ (gx#syntax-e _e179999180006_)))
                        (let ((_hd180003180017_ (##car _e180002180014_))
                              (_tl180004180019_ (##cdr _e180002180014_)))
                          (let ((_clause180022_ _tl180004180019_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause180022_))
                                (_E180001180010_)))))
                      (_E180001180010_)))))
          (_E180000180024_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx179955_)
        (let* ((_e179956179966_ _stx179955_)
               (_E179958179970_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e179956179966_)))
               (_E179957179994_
                (lambda ()
                  (if (gx#stx-pair? _e179956179966_)
                      (let ((_e179959179974_ (gx#syntax-e _e179956179966_)))
                        (let ((_hd179960179977_ (##car _e179959179974_))
                              (_tl179961179979_ (##cdr _e179959179974_)))
                          (let ((_hd179982_ _hd179960179977_))
                            (if (gx#stx-pair? _tl179961179979_)
                                (let ((_e179962179984_
                                       (gx#syntax-e _tl179961179979_)))
                                  (let ((_hd179963179987_
                                         (##car _e179962179984_))
                                        (_tl179964179989_
                                         (##cdr _e179962179984_)))
                                    (let ((_body179992_ _hd179963179987_))
                                      (if (gx#stx-null? _tl179964179989_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd179982_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body179992_)
                                                          '()))
                                              (_E179958179970_))
                                          (_E179958179970_)))))
                                (_E179958179970_)))))
                      (_E179958179970_)))))
          (_E179957179994_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx179925_)
        (let* ((_e179926179933_ _stx179925_)
               (_E179928179937_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e179926179933_)))
               (_E179927179951_
                (lambda ()
                  (if (gx#stx-pair? _e179926179933_)
                      (let ((_e179929179941_ (gx#syntax-e _e179926179933_)))
                        (let ((_hd179930179944_ (##car _e179929179941_))
                              (_tl179931179946_ (##cdr _e179929179941_)))
                          (let ((_clauses179949_ _tl179931179946_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses179949_))
                                (_E179928179937_)))))
                      (_E179928179937_)))))
          (_E179927179951_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx179860_ _form179861_)
        (let* ((_e179862179875_ _stx179860_)
               (_E179864179879_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e179862179875_)))
               (_E179863179911_
                (lambda ()
                  (if (gx#stx-pair? _e179862179875_)
                      (let ((_e179865179883_ (gx#syntax-e _e179862179875_)))
                        (let ((_hd179866179886_ (##car _e179865179883_))
                              (_tl179867179888_ (##cdr _e179865179883_)))
                          (if (gx#stx-pair? _tl179867179888_)
                              (let ((_e179868179891_
                                     (gx#syntax-e _tl179867179888_)))
                                (let ((_hd179869179894_
                                       (##car _e179868179891_))
                                      (_tl179870179896_
                                       (##cdr _e179868179891_)))
                                  (let ((_hd179899_ _hd179869179894_))
                                    (if (gx#stx-pair? _tl179870179896_)
                                        (let ((_e179871179901_
                                               (gx#syntax-e _tl179870179896_)))
                                          (let ((_hd179872179904_
                                                 (##car _e179871179901_))
                                                (_tl179873179906_
                                                 (##cdr _e179871179901_)))
                                            (let ((_body179909_
                                                   _hd179872179904_))
                                              (if (gx#stx-null?
                                                   _tl179873179906_)
                                                  (if '#t
                                                      (cons _form179861_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd179899_)
                          (cons (gx#core-compile-top-syntax _body179909_)
                                '())))
              (_E179864179879_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E179864179879_)))))
                                        (_E179864179879_)))))
                              (_E179864179879_))))
                      (_E179864179879_)))))
          (_E179863179911_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx179918_)
        (let ((_form179920_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx179918_ _form179920_))))
    (define gx#core-compile-top-let-values%
      (lambda _g184800_
        (let ((_g184799_ (##length _g184800_)))
          (cond ((##fx= _g184799_ 1)
                 (apply (lambda (_stx179918_)
                          (gx#core-compile-top-let-values%__0 _stx179918_))
                        _g184800_))
                ((##fx= _g184799_ 2)
                 (apply (lambda (_stx179922_ _form179923_)
                          (gx#core-compile-top-let-values%__%
                           _stx179922_
                           _form179923_))
                        _g184800_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g184800_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx179857_)
        (gx#core-compile-top-let-values%__% _stx179857_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx179855_)
        (gx#core-compile-top-let-values%__% _stx179855_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx179814_)
        (let* ((_e179815179825_ _stx179814_)
               (_E179817179829_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e179815179825_)))
               (_E179816179851_
                (lambda ()
                  (if (gx#stx-pair? _e179815179825_)
                      (let ((_e179818179833_ (gx#syntax-e _e179815179825_)))
                        (let ((_hd179819179836_ (##car _e179818179833_))
                              (_tl179820179838_ (##cdr _e179818179833_)))
                          (if (gx#stx-pair? _tl179820179838_)
                              (let ((_e179821179841_
                                     (gx#syntax-e _tl179820179838_)))
                                (let ((_hd179822179844_
                                       (##car _e179821179841_))
                                      (_tl179823179846_
                                       (##cdr _e179821179841_)))
                                  (let ((_e179849_ _hd179822179844_))
                                    (if (gx#stx-null? _tl179823179846_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e179849_)
                                                        '()))
                                            (_E179817179829_))
                                        (_E179817179829_)))))
                              (_E179817179829_))))
                      (_E179817179829_)))))
          (_E179816179851_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx179773_)
        (let* ((_e179774179784_ _stx179773_)
               (_E179776179788_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e179774179784_)))
               (_E179775179810_
                (lambda ()
                  (if (gx#stx-pair? _e179774179784_)
                      (let ((_e179777179792_ (gx#syntax-e _e179774179784_)))
                        (let ((_hd179778179795_ (##car _e179777179792_))
                              (_tl179779179797_ (##cdr _e179777179792_)))
                          (if (gx#stx-pair? _tl179779179797_)
                              (let ((_e179780179800_
                                     (gx#syntax-e _tl179779179797_)))
                                (let ((_hd179781179803_
                                       (##car _e179780179800_))
                                      (_tl179782179805_
                                       (##cdr _e179780179800_)))
                                  (let ((_e179808_ _hd179781179803_))
                                    (if (gx#stx-null? _tl179782179805_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e179808_)
                                                        '()))
                                            (_E179776179788_))
                                        (_E179776179788_)))))
                              (_E179776179788_))))
                      (_E179776179788_)))))
          (_E179775179810_))))
    (define gx#core-compile-top-call%
      (lambda (_stx179730_)
        (let* ((_e179731179741_ _stx179730_)
               (_E179733179745_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e179731179741_)))
               (_E179732179769_
                (lambda ()
                  (if (gx#stx-pair? _e179731179741_)
                      (let ((_e179734179749_ (gx#syntax-e _e179731179741_)))
                        (let ((_hd179735179752_ (##car _e179734179749_))
                              (_tl179736179754_ (##cdr _e179734179749_)))
                          (if (gx#stx-pair? _tl179736179754_)
                              (let ((_e179737179757_
                                     (gx#syntax-e _tl179736179754_)))
                                (let ((_hd179738179760_
                                       (##car _e179737179757_))
                                      (_tl179739179762_
                                       (##cdr _e179737179757_)))
                                  (let* ((_rator179765_ _hd179738179760_)
                                         (_args179767_ _tl179739179762_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator179765_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args179767_)))
                                        (_E179733179745_)))))
                              (_E179733179745_))))
                      (_E179733179745_)))))
          (_E179732179769_))))
    (define gx#core-compile-top-if%
      (lambda (_stx179663_)
        (let* ((_e179664179680_ _stx179663_)
               (_E179666179684_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e179664179680_)))
               (_E179665179726_
                (lambda ()
                  (if (gx#stx-pair? _e179664179680_)
                      (let ((_e179667179688_ (gx#syntax-e _e179664179680_)))
                        (let ((_hd179668179691_ (##car _e179667179688_))
                              (_tl179669179693_ (##cdr _e179667179688_)))
                          (if (gx#stx-pair? _tl179669179693_)
                              (let ((_e179670179696_
                                     (gx#syntax-e _tl179669179693_)))
                                (let ((_hd179671179699_
                                       (##car _e179670179696_))
                                      (_tl179672179701_
                                       (##cdr _e179670179696_)))
                                  (let ((_test179704_ _hd179671179699_))
                                    (if (gx#stx-pair? _tl179672179701_)
                                        (let ((_e179673179706_
                                               (gx#syntax-e _tl179672179701_)))
                                          (let ((_hd179674179709_
                                                 (##car _e179673179706_))
                                                (_tl179675179711_
                                                 (##cdr _e179673179706_)))
                                            (let ((_K179714_ _hd179674179709_))
                                              (if (gx#stx-pair?
                                                   _tl179675179711_)
                                                  (let ((_e179676179716_
                                                         (gx#syntax-e
                                                          _tl179675179711_)))
                                                    (let ((_hd179677179719_
                                                           (##car _e179676179716_))
                                                          (_tl179678179721_
                                                           (##cdr _e179676179716_)))
                                                      (let ((_E179724_
                                                             _hd179677179719_))
                                                        (if (gx#stx-null?
                                                             _tl179678179721_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test179704_)
                                    (cons (gx#core-compile-top-syntax
                                           _K179714_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E179724_)
                                                '()))))
                        (_E179666179684_))
                    (_E179666179684_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E179666179684_)))))
                                        (_E179666179684_)))))
                              (_E179666179684_))))
                      (_E179666179684_)))))
          (_E179665179726_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx179622_)
        (let* ((_e179623179633_ _stx179622_)
               (_E179625179637_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e179623179633_)))
               (_E179624179659_
                (lambda ()
                  (if (gx#stx-pair? _e179623179633_)
                      (let ((_e179626179641_ (gx#syntax-e _e179623179633_)))
                        (let ((_hd179627179644_ (##car _e179626179641_))
                              (_tl179628179646_ (##cdr _e179626179641_)))
                          (if (gx#stx-pair? _tl179628179646_)
                              (let ((_e179629179649_
                                     (gx#syntax-e _tl179628179646_)))
                                (let ((_hd179630179652_
                                       (##car _e179629179649_))
                                      (_tl179631179654_
                                       (##cdr _e179629179649_)))
                                  (let ((_id179657_ _hd179630179652_))
                                    (if (gx#stx-null? _tl179631179654_)
                                        (if (gx#identifier? _id179657_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id179657_)
                                                        '()))
                                            (_E179625179637_))
                                        (_E179625179637_)))))
                              (_E179625179637_))))
                      (_E179625179637_)))))
          (_E179624179659_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx179568_)
        (let* ((_e179569179582_ _stx179568_)
               (_E179571179586_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e179569179582_)))
               (_E179570179618_
                (lambda ()
                  (if (gx#stx-pair? _e179569179582_)
                      (let ((_e179572179590_ (gx#syntax-e _e179569179582_)))
                        (let ((_hd179573179593_ (##car _e179572179590_))
                              (_tl179574179595_ (##cdr _e179572179590_)))
                          (if (gx#stx-pair? _tl179574179595_)
                              (let ((_e179575179598_
                                     (gx#syntax-e _tl179574179595_)))
                                (let ((_hd179576179601_
                                       (##car _e179575179598_))
                                      (_tl179577179603_
                                       (##cdr _e179575179598_)))
                                  (let ((_id179606_ _hd179576179601_))
                                    (if (gx#stx-pair? _tl179577179603_)
                                        (let ((_e179578179608_
                                               (gx#syntax-e _tl179577179603_)))
                                          (let ((_hd179579179611_
                                                 (##car _e179578179608_))
                                                (_tl179580179613_
                                                 (##cdr _e179578179608_)))
                                            (let ((_expr179616_
                                                   _hd179579179611_))
                                              (if (gx#stx-null?
                                                   _tl179580179613_)
                                                  (if (gx#identifier?
                                                       _id179606_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id179606_)
                          (cons (gx#core-compile-top-syntax _expr179616_)
                                '())))
              (_E179571179586_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E179571179586_)))))
                                        (_E179571179586_)))))
                              (_E179571179586_))))
                      (_E179571179586_)))))
          (_E179570179618_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id179563_)
        (let ((_$e179565_ (gx#resolve-identifier__0 _id179563_)))
          (if _$e179565_
              (##unchecked-structure-ref _$e179565_ '1 gx#binding::t '#f)
              _id179563_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd179561_)
        (if (gx#identifier? _hd179561_)
            (gx#core-compile-top-runtime-ref _hd179561_)
            '#f)))))
