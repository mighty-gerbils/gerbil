(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1708289481)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx180547_)
        (let* ((_e180548180555_ _stx180547_)
               (_E180550180559_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e180548180555_)))
               (_E180549180573_
                (lambda ()
                  (if (gx#stx-pair? _e180548180555_)
                      (let ((_e180551180563_ (gx#syntax-e _e180548180555_)))
                        (let ((_hd180552180566_ (##car _e180551180563_))
                              (_tl180553180568_ (##cdr _e180551180563_)))
                          (let ((_form180571_ _hd180552180566_))
                            (if '#t
                                (let* ((__self184643
                                        (gx#syntax-local-e__0 _form180571_))
                                       (__method184644
                                        (method-ref
                                         __self184643
                                         'compile-top-syntax)))
                                  (if __method184644
                                      (__method184644 __self184643 _stx180547_)
                                      (error '"Missing method"
                                             __self184643
                                             'compile-top-syntax)))
                                (_E180550180559_)))))
                      (_E180550180559_)))))
          (_E180549180573_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self180507_ _stx180508_)
        (let* ((_self180509180517_ _self180507_)
               (_E180511180521_
                (lambda () (error '"No clause matching" _self180509180517_)))
               (_K180512180533_
                (lambda (_K180524_)
                  (let ((_$e180526_ (gx#stx-source _stx180508_)))
                    (if _$e180526_
                        ((lambda (_g180528180530_)
                           (gx#stx-wrap-source
                            (_K180524_ _stx180508_)
                            _g180528180530_))
                         _$e180526_)
                        (_K180524_ _stx180508_))))))
          (if (##structure-instance-of?
               _self180509180517_
               'gx#core-expander::t)
              (let* ((_e180513180536_
                      (##unchecked-structure-ref
                       _self180509180517_
                       '1
                       gx#expander::t
                       '#f))
                     (_e180514180539_
                      (##unchecked-structure-ref
                       _self180509180517_
                       '2
                       gx#core-expander::t
                       '#f))
                     (_e180515180542_
                      (##unchecked-structure-ref
                       _self180509180517_
                       '3
                       gx#core-expander::t
                       '#f))
                     (_K180545_ _e180515180542_))
                (_K180512180533_ _K180545_))
              (_E180511180521_)))))
    (bind-method!
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx180381_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx180381_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx180351_)
        (let* ((_e180352180359_ _stx180351_)
               (_E180354180363_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e180352180359_)))
               (_E180353180377_
                (lambda ()
                  (if (gx#stx-pair? _e180352180359_)
                      (let ((_e180355180367_ (gx#syntax-e _e180352180359_)))
                        (let ((_hd180356180370_ (##car _e180355180367_))
                              (_tl180357180372_ (##cdr _e180355180367_)))
                          (let ((_body180375_ _tl180357180372_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body180375_))
                                (_E180354180363_)))))
                      (_E180354180363_)))))
          (_E180353180377_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx180320_)
        (let* ((_e180321180328_ _stx180320_)
               (_E180323180332_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e180321180328_)))
               (_E180322180347_
                (lambda ()
                  (if (gx#stx-pair? _e180321180328_)
                      (let ((_e180324180336_ (gx#syntax-e _e180321180328_)))
                        (let ((_hd180325180339_ (##car _e180324180336_))
                              (_tl180326180341_ (##cdr _e180324180336_)))
                          (let ((_body180344_ _tl180326180341_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body180344_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E180323180332_)))))
                      (_E180323180332_)))))
          (_E180322180347_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_stx180290_)
        (let* ((_e180291180298_ _stx180290_)
               (_E180293180302_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e180291180298_)))
               (_E180292180316_
                (lambda ()
                  (if (gx#stx-pair? _e180291180298_)
                      (let ((_e180294180306_ (gx#syntax-e _e180291180298_)))
                        (let ((_hd180295180309_ (##car _e180294180306_))
                              (_tl180296180311_ (##cdr _e180294180306_)))
                          (let ((_body180314_ _tl180296180311_))
                            (if '#t
                                (cons '%#begin-foreign _body180314_)
                                (_E180293180302_)))))
                      (_E180293180302_)))))
          (_E180292180316_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_stx180236_)
        (let* ((_e180237180250_ _stx180236_)
               (_E180239180254_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e180237180250_)))
               (_E180238180286_
                (lambda ()
                  (if (gx#stx-pair? _e180237180250_)
                      (let ((_e180240180258_ (gx#syntax-e _e180237180250_)))
                        (let ((_hd180241180261_ (##car _e180240180258_))
                              (_tl180242180263_ (##cdr _e180240180258_)))
                          (if (gx#stx-pair? _tl180242180263_)
                              (let ((_e180243180266_
                                     (gx#syntax-e _tl180242180263_)))
                                (let ((_hd180244180269_
                                       (##car _e180243180266_))
                                      (_tl180245180271_
                                       (##cdr _e180243180266_)))
                                  (let ((_ann180274_ _hd180244180269_))
                                    (if (gx#stx-pair? _tl180245180271_)
                                        (let ((_e180246180276_
                                               (gx#syntax-e _tl180245180271_)))
                                          (let ((_hd180247180279_
                                                 (##car _e180246180276_))
                                                (_tl180248180281_
                                                 (##cdr _e180246180276_)))
                                            (let ((_expr180284_
                                                   _hd180247180279_))
                                              (if (gx#stx-null?
                                                   _tl180248180281_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr180284_)
                                                      (_E180239180254_))
                                                  (_E180239180254_)))))
                                        (_E180239180254_)))))
                              (_E180239180254_))))
                      (_E180239180254_)))))
          (_E180238180286_))))
    (define gx#core-compile-top-import%
      (lambda (_stx180206_)
        (let* ((_e180207180214_ _stx180206_)
               (_E180209180218_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e180207180214_)))
               (_E180208180232_
                (lambda ()
                  (if (gx#stx-pair? _e180207180214_)
                      (let ((_e180210180222_ (gx#syntax-e _e180207180214_)))
                        (let ((_hd180211180225_ (##car _e180210180222_))
                              (_tl180212180227_ (##cdr _e180210180222_)))
                          (let ((_body180230_ _tl180212180227_))
                            (if '#t
                                (cons '%#import _body180230_)
                                (_E180209180218_)))))
                      (_E180209180218_)))))
          (_E180208180232_))))
    (define gx#core-compile-top-module%
      (lambda (_stx180163_)
        (let* ((_e180164180174_ _stx180163_)
               (_E180166180178_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e180164180174_)))
               (_E180165180202_
                (lambda ()
                  (if (gx#stx-pair? _e180164180174_)
                      (let ((_e180167180182_ (gx#syntax-e _e180164180174_)))
                        (let ((_hd180168180185_ (##car _e180167180182_))
                              (_tl180169180187_ (##cdr _e180167180182_)))
                          (if (gx#stx-pair? _tl180169180187_)
                              (let ((_e180170180190_
                                     (gx#syntax-e _tl180169180187_)))
                                (let ((_hd180171180193_
                                       (##car _e180170180190_))
                                      (_tl180172180195_
                                       (##cdr _e180170180190_)))
                                  (let* ((_hd180198_ _hd180171180193_)
                                         (_body180200_ _tl180172180195_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _hd180198_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body180200_)))
                                        (_E180166180178_)))))
                              (_E180166180178_))))
                      (_E180166180178_)))))
          (_E180165180202_))))
    (define gx#core-compile-top-export%
      (lambda (_stx180133_)
        (let* ((_e180134180141_ _stx180133_)
               (_E180136180145_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e180134180141_)))
               (_E180135180159_
                (lambda ()
                  (if (gx#stx-pair? _e180134180141_)
                      (let ((_e180137180149_ (gx#syntax-e _e180134180141_)))
                        (let ((_hd180138180152_ (##car _e180137180149_))
                              (_tl180139180154_ (##cdr _e180137180149_)))
                          (let ((_body180157_ _tl180139180154_))
                            (if '#t
                                (cons '%#export _body180157_)
                                (_E180136180145_)))))
                      (_E180136180145_)))))
          (_E180135180159_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx180103_)
        (let* ((_e180104180111_ _stx180103_)
               (_E180106180115_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e180104180111_)))
               (_E180105180129_
                (lambda ()
                  (if (gx#stx-pair? _e180104180111_)
                      (let ((_e180107180119_ (gx#syntax-e _e180104180111_)))
                        (let ((_hd180108180122_ (##car _e180107180119_))
                              (_tl180109180124_ (##cdr _e180107180119_)))
                          (let ((_body180127_ _tl180109180124_))
                            (if '#t
                                (cons '%#provide _body180127_)
                                (_E180106180115_)))))
                      (_E180106180115_)))))
          (_E180105180129_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx180073_)
        (let* ((_e180074180081_ _stx180073_)
               (_E180076180085_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e180074180081_)))
               (_E180075180099_
                (lambda ()
                  (if (gx#stx-pair? _e180074180081_)
                      (let ((_e180077180089_ (gx#syntax-e _e180074180081_)))
                        (let ((_hd180078180092_ (##car _e180077180089_))
                              (_tl180079180094_ (##cdr _e180077180089_)))
                          (let ((_body180097_ _tl180079180094_))
                            (if '#t
                                (cons '%#extern _body180097_)
                                (_E180076180085_)))))
                      (_E180076180085_)))))
          (_E180075180099_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx180019_)
        (let* ((_e180020180033_ _stx180019_)
               (_E180022180037_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e180020180033_)))
               (_E180021180069_
                (lambda ()
                  (if (gx#stx-pair? _e180020180033_)
                      (let ((_e180023180041_ (gx#syntax-e _e180020180033_)))
                        (let ((_hd180024180044_ (##car _e180023180041_))
                              (_tl180025180046_ (##cdr _e180023180041_)))
                          (if (gx#stx-pair? _tl180025180046_)
                              (let ((_e180026180049_
                                     (gx#syntax-e _tl180025180046_)))
                                (let ((_hd180027180052_
                                       (##car _e180026180049_))
                                      (_tl180028180054_
                                       (##cdr _e180026180049_)))
                                  (let ((_hd180057_ _hd180027180052_))
                                    (if (gx#stx-pair? _tl180028180054_)
                                        (let ((_e180029180059_
                                               (gx#syntax-e _tl180028180054_)))
                                          (let ((_hd180030180062_
                                                 (##car _e180029180059_))
                                                (_tl180031180064_
                                                 (##cdr _e180029180059_)))
                                            (let ((_expr180067_
                                                   _hd180030180062_))
                                              (if (gx#stx-null?
                                                   _tl180031180064_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd180057_)
                          (cons (gx#core-compile-top-syntax _expr180067_)
                                '())))
              (_E180022180037_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E180022180037_)))))
                                        (_E180022180037_)))))
                              (_E180022180037_))))
                      (_E180022180037_)))))
          (_E180021180069_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx179964_)
        (let* ((_e179965179978_ _stx179964_)
               (_E179967179982_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e179965179978_)))
               (_E179966180015_
                (lambda ()
                  (if (gx#stx-pair? _e179965179978_)
                      (let ((_e179968179986_ (gx#syntax-e _e179965179978_)))
                        (let ((_hd179969179989_ (##car _e179968179986_))
                              (_tl179970179991_ (##cdr _e179968179986_)))
                          (if (gx#stx-pair? _tl179970179991_)
                              (let ((_e179971179994_
                                     (gx#syntax-e _tl179970179991_)))
                                (let ((_hd179972179997_
                                       (##car _e179971179994_))
                                      (_tl179973179999_
                                       (##cdr _e179971179994_)))
                                  (let ((_hd180002_ _hd179972179997_))
                                    (if (gx#stx-pair? _tl179973179999_)
                                        (let ((_e179974180004_
                                               (gx#syntax-e _tl179973179999_)))
                                          (let ((_hd179975180007_
                                                 (##car _e179974180004_))
                                                (_tl179976180009_
                                                 (##cdr _e179974180004_)))
                                            (let ((_expr180012_
                                                   _hd179975180007_))
                                              (if (gx#stx-null?
                                                   _tl179976180009_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd180002_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr180012_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E179967179982_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E179967179982_)))))
                                        (_E179967179982_)))))
                              (_E179967179982_))))
                      (_E179967179982_)))))
          (_E179966180015_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx179934_)
        (let* ((_e179935179942_ _stx179934_)
               (_E179937179946_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e179935179942_)))
               (_E179936179960_
                (lambda ()
                  (if (gx#stx-pair? _e179935179942_)
                      (let ((_e179938179950_ (gx#syntax-e _e179935179942_)))
                        (let ((_hd179939179953_ (##car _e179938179950_))
                              (_tl179940179955_ (##cdr _e179938179950_)))
                          (let ((_body179958_ _tl179940179955_))
                            (if '#t
                                (cons '%#define-alias _body179958_)
                                (_E179937179946_)))))
                      (_E179937179946_)))))
          (_E179936179960_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx179904_)
        (let* ((_e179905179912_ _stx179904_)
               (_E179907179916_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e179905179912_)))
               (_E179906179930_
                (lambda ()
                  (if (gx#stx-pair? _e179905179912_)
                      (let ((_e179908179920_ (gx#syntax-e _e179905179912_)))
                        (let ((_hd179909179923_ (##car _e179908179920_))
                              (_tl179910179925_ (##cdr _e179908179920_)))
                          (let ((_body179928_ _tl179910179925_))
                            (if '#t
                                (cons '%#define-runtime _body179928_)
                                (_E179907179916_)))))
                      (_E179907179916_)))))
          (_E179906179930_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx179874_)
        (let* ((_e179875179882_ _stx179874_)
               (_E179877179886_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e179875179882_)))
               (_E179876179900_
                (lambda ()
                  (if (gx#stx-pair? _e179875179882_)
                      (let ((_e179878179890_ (gx#syntax-e _e179875179882_)))
                        (let ((_hd179879179893_ (##car _e179878179890_))
                              (_tl179880179895_ (##cdr _e179878179890_)))
                          (let ((_decls179898_ _tl179880179895_))
                            (if '#t
                                (cons '%#declare _decls179898_)
                                (_E179877179886_)))))
                      (_E179877179886_)))))
          (_E179876179900_))))
    (define gx#core-compile-top-lambda%
      (lambda (_stx179844_)
        (let* ((_e179845179852_ _stx179844_)
               (_E179847179856_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e179845179852_)))
               (_E179846179870_
                (lambda ()
                  (if (gx#stx-pair? _e179845179852_)
                      (let ((_e179848179860_ (gx#syntax-e _e179845179852_)))
                        (let ((_hd179849179863_ (##car _e179848179860_))
                              (_tl179850179865_ (##cdr _e179848179860_)))
                          (let ((_clause179868_ _tl179850179865_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause179868_))
                                (_E179847179856_)))))
                      (_E179847179856_)))))
          (_E179846179870_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx179801_)
        (let* ((_e179802179812_ _stx179801_)
               (_E179804179816_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e179802179812_)))
               (_E179803179840_
                (lambda ()
                  (if (gx#stx-pair? _e179802179812_)
                      (let ((_e179805179820_ (gx#syntax-e _e179802179812_)))
                        (let ((_hd179806179823_ (##car _e179805179820_))
                              (_tl179807179825_ (##cdr _e179805179820_)))
                          (let ((_hd179828_ _hd179806179823_))
                            (if (gx#stx-pair? _tl179807179825_)
                                (let ((_e179808179830_
                                       (gx#syntax-e _tl179807179825_)))
                                  (let ((_hd179809179833_
                                         (##car _e179808179830_))
                                        (_tl179810179835_
                                         (##cdr _e179808179830_)))
                                    (let ((_body179838_ _hd179809179833_))
                                      (if (gx#stx-null? _tl179810179835_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd179828_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body179838_)
                                                          '()))
                                              (_E179804179816_))
                                          (_E179804179816_)))))
                                (_E179804179816_)))))
                      (_E179804179816_)))))
          (_E179803179840_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx179771_)
        (let* ((_e179772179779_ _stx179771_)
               (_E179774179783_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e179772179779_)))
               (_E179773179797_
                (lambda ()
                  (if (gx#stx-pair? _e179772179779_)
                      (let ((_e179775179787_ (gx#syntax-e _e179772179779_)))
                        (let ((_hd179776179790_ (##car _e179775179787_))
                              (_tl179777179792_ (##cdr _e179775179787_)))
                          (let ((_clauses179795_ _tl179777179792_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses179795_))
                                (_E179774179783_)))))
                      (_E179774179783_)))))
          (_E179773179797_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx179706_ _form179707_)
        (let* ((_e179708179721_ _stx179706_)
               (_E179710179725_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e179708179721_)))
               (_E179709179757_
                (lambda ()
                  (if (gx#stx-pair? _e179708179721_)
                      (let ((_e179711179729_ (gx#syntax-e _e179708179721_)))
                        (let ((_hd179712179732_ (##car _e179711179729_))
                              (_tl179713179734_ (##cdr _e179711179729_)))
                          (if (gx#stx-pair? _tl179713179734_)
                              (let ((_e179714179737_
                                     (gx#syntax-e _tl179713179734_)))
                                (let ((_hd179715179740_
                                       (##car _e179714179737_))
                                      (_tl179716179742_
                                       (##cdr _e179714179737_)))
                                  (let ((_hd179745_ _hd179715179740_))
                                    (if (gx#stx-pair? _tl179716179742_)
                                        (let ((_e179717179747_
                                               (gx#syntax-e _tl179716179742_)))
                                          (let ((_hd179718179750_
                                                 (##car _e179717179747_))
                                                (_tl179719179752_
                                                 (##cdr _e179717179747_)))
                                            (let ((_body179755_
                                                   _hd179718179750_))
                                              (if (gx#stx-null?
                                                   _tl179719179752_)
                                                  (if '#t
                                                      (cons _form179707_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd179745_)
                          (cons (gx#core-compile-top-syntax _body179755_)
                                '())))
              (_E179710179725_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E179710179725_)))))
                                        (_E179710179725_)))))
                              (_E179710179725_))))
                      (_E179710179725_)))))
          (_E179709179757_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx179764_)
        (let ((_form179766_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx179764_ _form179766_))))
    (define gx#core-compile-top-let-values%
      (lambda _g184646_
        (let ((_g184645_ (##length _g184646_)))
          (cond ((##fx= _g184645_ 1)
                 (apply (lambda (_stx179764_)
                          (gx#core-compile-top-let-values%__0 _stx179764_))
                        _g184646_))
                ((##fx= _g184645_ 2)
                 (apply (lambda (_stx179768_ _form179769_)
                          (gx#core-compile-top-let-values%__%
                           _stx179768_
                           _form179769_))
                        _g184646_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g184646_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx179703_)
        (gx#core-compile-top-let-values%__% _stx179703_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx179701_)
        (gx#core-compile-top-let-values%__% _stx179701_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx179660_)
        (let* ((_e179661179671_ _stx179660_)
               (_E179663179675_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e179661179671_)))
               (_E179662179697_
                (lambda ()
                  (if (gx#stx-pair? _e179661179671_)
                      (let ((_e179664179679_ (gx#syntax-e _e179661179671_)))
                        (let ((_hd179665179682_ (##car _e179664179679_))
                              (_tl179666179684_ (##cdr _e179664179679_)))
                          (if (gx#stx-pair? _tl179666179684_)
                              (let ((_e179667179687_
                                     (gx#syntax-e _tl179666179684_)))
                                (let ((_hd179668179690_
                                       (##car _e179667179687_))
                                      (_tl179669179692_
                                       (##cdr _e179667179687_)))
                                  (let ((_e179695_ _hd179668179690_))
                                    (if (gx#stx-null? _tl179669179692_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e179695_)
                                                        '()))
                                            (_E179663179675_))
                                        (_E179663179675_)))))
                              (_E179663179675_))))
                      (_E179663179675_)))))
          (_E179662179697_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx179619_)
        (let* ((_e179620179630_ _stx179619_)
               (_E179622179634_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e179620179630_)))
               (_E179621179656_
                (lambda ()
                  (if (gx#stx-pair? _e179620179630_)
                      (let ((_e179623179638_ (gx#syntax-e _e179620179630_)))
                        (let ((_hd179624179641_ (##car _e179623179638_))
                              (_tl179625179643_ (##cdr _e179623179638_)))
                          (if (gx#stx-pair? _tl179625179643_)
                              (let ((_e179626179646_
                                     (gx#syntax-e _tl179625179643_)))
                                (let ((_hd179627179649_
                                       (##car _e179626179646_))
                                      (_tl179628179651_
                                       (##cdr _e179626179646_)))
                                  (let ((_e179654_ _hd179627179649_))
                                    (if (gx#stx-null? _tl179628179651_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e179654_)
                                                        '()))
                                            (_E179622179634_))
                                        (_E179622179634_)))))
                              (_E179622179634_))))
                      (_E179622179634_)))))
          (_E179621179656_))))
    (define gx#core-compile-top-call%
      (lambda (_stx179576_)
        (let* ((_e179577179587_ _stx179576_)
               (_E179579179591_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e179577179587_)))
               (_E179578179615_
                (lambda ()
                  (if (gx#stx-pair? _e179577179587_)
                      (let ((_e179580179595_ (gx#syntax-e _e179577179587_)))
                        (let ((_hd179581179598_ (##car _e179580179595_))
                              (_tl179582179600_ (##cdr _e179580179595_)))
                          (if (gx#stx-pair? _tl179582179600_)
                              (let ((_e179583179603_
                                     (gx#syntax-e _tl179582179600_)))
                                (let ((_hd179584179606_
                                       (##car _e179583179603_))
                                      (_tl179585179608_
                                       (##cdr _e179583179603_)))
                                  (let* ((_rator179611_ _hd179584179606_)
                                         (_args179613_ _tl179585179608_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator179611_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args179613_)))
                                        (_E179579179591_)))))
                              (_E179579179591_))))
                      (_E179579179591_)))))
          (_E179578179615_))))
    (define gx#core-compile-top-if%
      (lambda (_stx179509_)
        (let* ((_e179510179526_ _stx179509_)
               (_E179512179530_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e179510179526_)))
               (_E179511179572_
                (lambda ()
                  (if (gx#stx-pair? _e179510179526_)
                      (let ((_e179513179534_ (gx#syntax-e _e179510179526_)))
                        (let ((_hd179514179537_ (##car _e179513179534_))
                              (_tl179515179539_ (##cdr _e179513179534_)))
                          (if (gx#stx-pair? _tl179515179539_)
                              (let ((_e179516179542_
                                     (gx#syntax-e _tl179515179539_)))
                                (let ((_hd179517179545_
                                       (##car _e179516179542_))
                                      (_tl179518179547_
                                       (##cdr _e179516179542_)))
                                  (let ((_test179550_ _hd179517179545_))
                                    (if (gx#stx-pair? _tl179518179547_)
                                        (let ((_e179519179552_
                                               (gx#syntax-e _tl179518179547_)))
                                          (let ((_hd179520179555_
                                                 (##car _e179519179552_))
                                                (_tl179521179557_
                                                 (##cdr _e179519179552_)))
                                            (let ((_K179560_ _hd179520179555_))
                                              (if (gx#stx-pair?
                                                   _tl179521179557_)
                                                  (let ((_e179522179562_
                                                         (gx#syntax-e
                                                          _tl179521179557_)))
                                                    (let ((_hd179523179565_
                                                           (##car _e179522179562_))
                                                          (_tl179524179567_
                                                           (##cdr _e179522179562_)))
                                                      (let ((_E179570_
                                                             _hd179523179565_))
                                                        (if (gx#stx-null?
                                                             _tl179524179567_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test179550_)
                                    (cons (gx#core-compile-top-syntax
                                           _K179560_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E179570_)
                                                '()))))
                        (_E179512179530_))
                    (_E179512179530_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E179512179530_)))))
                                        (_E179512179530_)))))
                              (_E179512179530_))))
                      (_E179512179530_)))))
          (_E179511179572_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx179468_)
        (let* ((_e179469179479_ _stx179468_)
               (_E179471179483_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e179469179479_)))
               (_E179470179505_
                (lambda ()
                  (if (gx#stx-pair? _e179469179479_)
                      (let ((_e179472179487_ (gx#syntax-e _e179469179479_)))
                        (let ((_hd179473179490_ (##car _e179472179487_))
                              (_tl179474179492_ (##cdr _e179472179487_)))
                          (if (gx#stx-pair? _tl179474179492_)
                              (let ((_e179475179495_
                                     (gx#syntax-e _tl179474179492_)))
                                (let ((_hd179476179498_
                                       (##car _e179475179495_))
                                      (_tl179477179500_
                                       (##cdr _e179475179495_)))
                                  (let ((_id179503_ _hd179476179498_))
                                    (if (gx#stx-null? _tl179477179500_)
                                        (if (gx#identifier? _id179503_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id179503_)
                                                        '()))
                                            (_E179471179483_))
                                        (_E179471179483_)))))
                              (_E179471179483_))))
                      (_E179471179483_)))))
          (_E179470179505_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx179414_)
        (let* ((_e179415179428_ _stx179414_)
               (_E179417179432_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e179415179428_)))
               (_E179416179464_
                (lambda ()
                  (if (gx#stx-pair? _e179415179428_)
                      (let ((_e179418179436_ (gx#syntax-e _e179415179428_)))
                        (let ((_hd179419179439_ (##car _e179418179436_))
                              (_tl179420179441_ (##cdr _e179418179436_)))
                          (if (gx#stx-pair? _tl179420179441_)
                              (let ((_e179421179444_
                                     (gx#syntax-e _tl179420179441_)))
                                (let ((_hd179422179447_
                                       (##car _e179421179444_))
                                      (_tl179423179449_
                                       (##cdr _e179421179444_)))
                                  (let ((_id179452_ _hd179422179447_))
                                    (if (gx#stx-pair? _tl179423179449_)
                                        (let ((_e179424179454_
                                               (gx#syntax-e _tl179423179449_)))
                                          (let ((_hd179425179457_
                                                 (##car _e179424179454_))
                                                (_tl179426179459_
                                                 (##cdr _e179424179454_)))
                                            (let ((_expr179462_
                                                   _hd179425179457_))
                                              (if (gx#stx-null?
                                                   _tl179426179459_)
                                                  (if (gx#identifier?
                                                       _id179452_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id179452_)
                          (cons (gx#core-compile-top-syntax _expr179462_)
                                '())))
              (_E179417179432_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E179417179432_)))))
                                        (_E179417179432_)))))
                              (_E179417179432_))))
                      (_E179417179432_)))))
          (_E179416179464_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id179409_)
        (let ((_$e179411_ (gx#resolve-identifier__0 _id179409_)))
          (if _$e179411_
              (##unchecked-structure-ref _$e179411_ '1 gx#binding::t '#f)
              _id179409_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd179407_)
        (if (gx#identifier? _hd179407_)
            (gx#core-compile-top-runtime-ref _hd179407_)
            '#f)))))
