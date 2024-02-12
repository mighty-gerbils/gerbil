(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1707772766)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx168848_)
        (let* ((_e168849168856_ _stx168848_)
               (_E168851168860_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168849168856_)))
               (_E168850168874_
                (lambda ()
                  (if (gx#stx-pair? _e168849168856_)
                      (let ((_e168852168864_ (gx#syntax-e _e168849168856_)))
                        (let ((_hd168853168867_ (##car _e168852168864_))
                              (_tl168854168869_ (##cdr _e168852168864_)))
                          (let ((_form168872_ _hd168853168867_))
                            (if '#t
                                (let* ((__self173445
                                        (gx#syntax-local-e__0 _form168872_))
                                       (__method173446
                                        (method-ref
                                         __self173445
                                         'compile-top-syntax)))
                                  (if __method173446
                                      (__method173446 __self173445 _stx168848_)
                                      (error '"Missing method"
                                             __self173445
                                             'compile-top-syntax)))
                                (_E168851168860_)))))
                      (_E168851168860_)))))
          (_E168850168874_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self168808_ _stx168809_)
        (let* ((_self168810168818_ _self168808_)
               (_E168812168822_
                (lambda () (error '"No clause matching" _self168810168818_)))
               (_K168813168834_
                (lambda (_K168825_)
                  (let ((_$e168827_ (gx#stx-source _stx168809_)))
                    (if _$e168827_
                        ((lambda (_g168829168831_)
                           (gx#stx-wrap-source
                            (_K168825_ _stx168809_)
                            _g168829168831_))
                         _$e168827_)
                        (_K168825_ _stx168809_))))))
          (if (##structure-instance-of?
               _self168810168818_
               'gx#core-expander::t)
              (let* ((_e168814168837_
                      (##unchecked-structure-ref
                       _self168810168818_
                       '1
                       gx#expander::t
                       '#f))
                     (_e168815168840_
                      (##unchecked-structure-ref
                       _self168810168818_
                       '2
                       gx#core-expander::t
                       '#f))
                     (_e168816168843_
                      (##unchecked-structure-ref
                       _self168810168818_
                       '3
                       gx#core-expander::t
                       '#f))
                     (_K168846_ _e168816168843_))
                (_K168813168834_ _K168846_))
              (_E168812168822_)))))
    (bind-method!
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx168682_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx168682_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx168652_)
        (let* ((_e168653168660_ _stx168652_)
               (_E168655168664_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168653168660_)))
               (_E168654168678_
                (lambda ()
                  (if (gx#stx-pair? _e168653168660_)
                      (let ((_e168656168668_ (gx#syntax-e _e168653168660_)))
                        (let ((_hd168657168671_ (##car _e168656168668_))
                              (_tl168658168673_ (##cdr _e168656168668_)))
                          (let ((_body168676_ _tl168658168673_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body168676_))
                                (_E168655168664_)))))
                      (_E168655168664_)))))
          (_E168654168678_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx168621_)
        (let* ((_e168622168629_ _stx168621_)
               (_E168624168633_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168622168629_)))
               (_E168623168648_
                (lambda ()
                  (if (gx#stx-pair? _e168622168629_)
                      (let ((_e168625168637_ (gx#syntax-e _e168622168629_)))
                        (let ((_hd168626168640_ (##car _e168625168637_))
                              (_tl168627168642_ (##cdr _e168625168637_)))
                          (let ((_body168645_ _tl168627168642_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body168645_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E168624168633_)))))
                      (_E168624168633_)))))
          (_E168623168648_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_stx168591_)
        (let* ((_e168592168599_ _stx168591_)
               (_E168594168603_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168592168599_)))
               (_E168593168617_
                (lambda ()
                  (if (gx#stx-pair? _e168592168599_)
                      (let ((_e168595168607_ (gx#syntax-e _e168592168599_)))
                        (let ((_hd168596168610_ (##car _e168595168607_))
                              (_tl168597168612_ (##cdr _e168595168607_)))
                          (let ((_body168615_ _tl168597168612_))
                            (if '#t
                                (cons '%#begin-foreign _body168615_)
                                (_E168594168603_)))))
                      (_E168594168603_)))))
          (_E168593168617_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_stx168537_)
        (let* ((_e168538168551_ _stx168537_)
               (_E168540168555_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168538168551_)))
               (_E168539168587_
                (lambda ()
                  (if (gx#stx-pair? _e168538168551_)
                      (let ((_e168541168559_ (gx#syntax-e _e168538168551_)))
                        (let ((_hd168542168562_ (##car _e168541168559_))
                              (_tl168543168564_ (##cdr _e168541168559_)))
                          (if (gx#stx-pair? _tl168543168564_)
                              (let ((_e168544168567_
                                     (gx#syntax-e _tl168543168564_)))
                                (let ((_hd168545168570_
                                       (##car _e168544168567_))
                                      (_tl168546168572_
                                       (##cdr _e168544168567_)))
                                  (let ((_ann168575_ _hd168545168570_))
                                    (if (gx#stx-pair? _tl168546168572_)
                                        (let ((_e168547168577_
                                               (gx#syntax-e _tl168546168572_)))
                                          (let ((_hd168548168580_
                                                 (##car _e168547168577_))
                                                (_tl168549168582_
                                                 (##cdr _e168547168577_)))
                                            (let ((_expr168585_
                                                   _hd168548168580_))
                                              (if (gx#stx-null?
                                                   _tl168549168582_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr168585_)
                                                      (_E168540168555_))
                                                  (_E168540168555_)))))
                                        (_E168540168555_)))))
                              (_E168540168555_))))
                      (_E168540168555_)))))
          (_E168539168587_))))
    (define gx#core-compile-top-import%
      (lambda (_stx168507_)
        (let* ((_e168508168515_ _stx168507_)
               (_E168510168519_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168508168515_)))
               (_E168509168533_
                (lambda ()
                  (if (gx#stx-pair? _e168508168515_)
                      (let ((_e168511168523_ (gx#syntax-e _e168508168515_)))
                        (let ((_hd168512168526_ (##car _e168511168523_))
                              (_tl168513168528_ (##cdr _e168511168523_)))
                          (let ((_body168531_ _tl168513168528_))
                            (if '#t
                                (cons '%#import _body168531_)
                                (_E168510168519_)))))
                      (_E168510168519_)))))
          (_E168509168533_))))
    (define gx#core-compile-top-module%
      (lambda (_stx168464_)
        (let* ((_e168465168475_ _stx168464_)
               (_E168467168479_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168465168475_)))
               (_E168466168503_
                (lambda ()
                  (if (gx#stx-pair? _e168465168475_)
                      (let ((_e168468168483_ (gx#syntax-e _e168465168475_)))
                        (let ((_hd168469168486_ (##car _e168468168483_))
                              (_tl168470168488_ (##cdr _e168468168483_)))
                          (if (gx#stx-pair? _tl168470168488_)
                              (let ((_e168471168491_
                                     (gx#syntax-e _tl168470168488_)))
                                (let ((_hd168472168494_
                                       (##car _e168471168491_))
                                      (_tl168473168496_
                                       (##cdr _e168471168491_)))
                                  (let* ((_hd168499_ _hd168472168494_)
                                         (_body168501_ _tl168473168496_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _hd168499_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body168501_)))
                                        (_E168467168479_)))))
                              (_E168467168479_))))
                      (_E168467168479_)))))
          (_E168466168503_))))
    (define gx#core-compile-top-export%
      (lambda (_stx168434_)
        (let* ((_e168435168442_ _stx168434_)
               (_E168437168446_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168435168442_)))
               (_E168436168460_
                (lambda ()
                  (if (gx#stx-pair? _e168435168442_)
                      (let ((_e168438168450_ (gx#syntax-e _e168435168442_)))
                        (let ((_hd168439168453_ (##car _e168438168450_))
                              (_tl168440168455_ (##cdr _e168438168450_)))
                          (let ((_body168458_ _tl168440168455_))
                            (if '#t
                                (cons '%#export _body168458_)
                                (_E168437168446_)))))
                      (_E168437168446_)))))
          (_E168436168460_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx168404_)
        (let* ((_e168405168412_ _stx168404_)
               (_E168407168416_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168405168412_)))
               (_E168406168430_
                (lambda ()
                  (if (gx#stx-pair? _e168405168412_)
                      (let ((_e168408168420_ (gx#syntax-e _e168405168412_)))
                        (let ((_hd168409168423_ (##car _e168408168420_))
                              (_tl168410168425_ (##cdr _e168408168420_)))
                          (let ((_body168428_ _tl168410168425_))
                            (if '#t
                                (cons '%#provide _body168428_)
                                (_E168407168416_)))))
                      (_E168407168416_)))))
          (_E168406168430_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx168374_)
        (let* ((_e168375168382_ _stx168374_)
               (_E168377168386_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168375168382_)))
               (_E168376168400_
                (lambda ()
                  (if (gx#stx-pair? _e168375168382_)
                      (let ((_e168378168390_ (gx#syntax-e _e168375168382_)))
                        (let ((_hd168379168393_ (##car _e168378168390_))
                              (_tl168380168395_ (##cdr _e168378168390_)))
                          (let ((_body168398_ _tl168380168395_))
                            (if '#t
                                (cons '%#extern _body168398_)
                                (_E168377168386_)))))
                      (_E168377168386_)))))
          (_E168376168400_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx168320_)
        (let* ((_e168321168334_ _stx168320_)
               (_E168323168338_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168321168334_)))
               (_E168322168370_
                (lambda ()
                  (if (gx#stx-pair? _e168321168334_)
                      (let ((_e168324168342_ (gx#syntax-e _e168321168334_)))
                        (let ((_hd168325168345_ (##car _e168324168342_))
                              (_tl168326168347_ (##cdr _e168324168342_)))
                          (if (gx#stx-pair? _tl168326168347_)
                              (let ((_e168327168350_
                                     (gx#syntax-e _tl168326168347_)))
                                (let ((_hd168328168353_
                                       (##car _e168327168350_))
                                      (_tl168329168355_
                                       (##cdr _e168327168350_)))
                                  (let ((_hd168358_ _hd168328168353_))
                                    (if (gx#stx-pair? _tl168329168355_)
                                        (let ((_e168330168360_
                                               (gx#syntax-e _tl168329168355_)))
                                          (let ((_hd168331168363_
                                                 (##car _e168330168360_))
                                                (_tl168332168365_
                                                 (##cdr _e168330168360_)))
                                            (let ((_expr168368_
                                                   _hd168331168363_))
                                              (if (gx#stx-null?
                                                   _tl168332168365_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd168358_)
                          (cons (gx#core-compile-top-syntax _expr168368_)
                                '())))
              (_E168323168338_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E168323168338_)))))
                                        (_E168323168338_)))))
                              (_E168323168338_))))
                      (_E168323168338_)))))
          (_E168322168370_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx168265_)
        (let* ((_e168266168279_ _stx168265_)
               (_E168268168283_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168266168279_)))
               (_E168267168316_
                (lambda ()
                  (if (gx#stx-pair? _e168266168279_)
                      (let ((_e168269168287_ (gx#syntax-e _e168266168279_)))
                        (let ((_hd168270168290_ (##car _e168269168287_))
                              (_tl168271168292_ (##cdr _e168269168287_)))
                          (if (gx#stx-pair? _tl168271168292_)
                              (let ((_e168272168295_
                                     (gx#syntax-e _tl168271168292_)))
                                (let ((_hd168273168298_
                                       (##car _e168272168295_))
                                      (_tl168274168300_
                                       (##cdr _e168272168295_)))
                                  (let ((_hd168303_ _hd168273168298_))
                                    (if (gx#stx-pair? _tl168274168300_)
                                        (let ((_e168275168305_
                                               (gx#syntax-e _tl168274168300_)))
                                          (let ((_hd168276168308_
                                                 (##car _e168275168305_))
                                                (_tl168277168310_
                                                 (##cdr _e168275168305_)))
                                            (let ((_expr168313_
                                                   _hd168276168308_))
                                              (if (gx#stx-null?
                                                   _tl168277168310_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd168303_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr168313_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E168268168283_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E168268168283_)))))
                                        (_E168268168283_)))))
                              (_E168268168283_))))
                      (_E168268168283_)))))
          (_E168267168316_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx168235_)
        (let* ((_e168236168243_ _stx168235_)
               (_E168238168247_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168236168243_)))
               (_E168237168261_
                (lambda ()
                  (if (gx#stx-pair? _e168236168243_)
                      (let ((_e168239168251_ (gx#syntax-e _e168236168243_)))
                        (let ((_hd168240168254_ (##car _e168239168251_))
                              (_tl168241168256_ (##cdr _e168239168251_)))
                          (let ((_body168259_ _tl168241168256_))
                            (if '#t
                                (cons '%#define-alias _body168259_)
                                (_E168238168247_)))))
                      (_E168238168247_)))))
          (_E168237168261_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx168205_)
        (let* ((_e168206168213_ _stx168205_)
               (_E168208168217_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168206168213_)))
               (_E168207168231_
                (lambda ()
                  (if (gx#stx-pair? _e168206168213_)
                      (let ((_e168209168221_ (gx#syntax-e _e168206168213_)))
                        (let ((_hd168210168224_ (##car _e168209168221_))
                              (_tl168211168226_ (##cdr _e168209168221_)))
                          (let ((_body168229_ _tl168211168226_))
                            (if '#t
                                (cons '%#define-runtime _body168229_)
                                (_E168208168217_)))))
                      (_E168208168217_)))))
          (_E168207168231_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx168175_)
        (let* ((_e168176168183_ _stx168175_)
               (_E168178168187_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168176168183_)))
               (_E168177168201_
                (lambda ()
                  (if (gx#stx-pair? _e168176168183_)
                      (let ((_e168179168191_ (gx#syntax-e _e168176168183_)))
                        (let ((_hd168180168194_ (##car _e168179168191_))
                              (_tl168181168196_ (##cdr _e168179168191_)))
                          (let ((_decls168199_ _tl168181168196_))
                            (if '#t
                                (cons '%#declare _decls168199_)
                                (_E168178168187_)))))
                      (_E168178168187_)))))
          (_E168177168201_))))
    (define gx#core-compile-top-lambda%
      (lambda (_stx168145_)
        (let* ((_e168146168153_ _stx168145_)
               (_E168148168157_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168146168153_)))
               (_E168147168171_
                (lambda ()
                  (if (gx#stx-pair? _e168146168153_)
                      (let ((_e168149168161_ (gx#syntax-e _e168146168153_)))
                        (let ((_hd168150168164_ (##car _e168149168161_))
                              (_tl168151168166_ (##cdr _e168149168161_)))
                          (let ((_clause168169_ _tl168151168166_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause168169_))
                                (_E168148168157_)))))
                      (_E168148168157_)))))
          (_E168147168171_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx168102_)
        (let* ((_e168103168113_ _stx168102_)
               (_E168105168117_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168103168113_)))
               (_E168104168141_
                (lambda ()
                  (if (gx#stx-pair? _e168103168113_)
                      (let ((_e168106168121_ (gx#syntax-e _e168103168113_)))
                        (let ((_hd168107168124_ (##car _e168106168121_))
                              (_tl168108168126_ (##cdr _e168106168121_)))
                          (let ((_hd168129_ _hd168107168124_))
                            (if (gx#stx-pair? _tl168108168126_)
                                (let ((_e168109168131_
                                       (gx#syntax-e _tl168108168126_)))
                                  (let ((_hd168110168134_
                                         (##car _e168109168131_))
                                        (_tl168111168136_
                                         (##cdr _e168109168131_)))
                                    (let ((_body168139_ _hd168110168134_))
                                      (if (gx#stx-null? _tl168111168136_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd168129_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body168139_)
                                                          '()))
                                              (_E168105168117_))
                                          (_E168105168117_)))))
                                (_E168105168117_)))))
                      (_E168105168117_)))))
          (_E168104168141_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx168072_)
        (let* ((_e168073168080_ _stx168072_)
               (_E168075168084_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168073168080_)))
               (_E168074168098_
                (lambda ()
                  (if (gx#stx-pair? _e168073168080_)
                      (let ((_e168076168088_ (gx#syntax-e _e168073168080_)))
                        (let ((_hd168077168091_ (##car _e168076168088_))
                              (_tl168078168093_ (##cdr _e168076168088_)))
                          (let ((_clauses168096_ _tl168078168093_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses168096_))
                                (_E168075168084_)))))
                      (_E168075168084_)))))
          (_E168074168098_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx168007_ _form168008_)
        (let* ((_e168009168022_ _stx168007_)
               (_E168011168026_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168009168022_)))
               (_E168010168058_
                (lambda ()
                  (if (gx#stx-pair? _e168009168022_)
                      (let ((_e168012168030_ (gx#syntax-e _e168009168022_)))
                        (let ((_hd168013168033_ (##car _e168012168030_))
                              (_tl168014168035_ (##cdr _e168012168030_)))
                          (if (gx#stx-pair? _tl168014168035_)
                              (let ((_e168015168038_
                                     (gx#syntax-e _tl168014168035_)))
                                (let ((_hd168016168041_
                                       (##car _e168015168038_))
                                      (_tl168017168043_
                                       (##cdr _e168015168038_)))
                                  (let ((_hd168046_ _hd168016168041_))
                                    (if (gx#stx-pair? _tl168017168043_)
                                        (let ((_e168018168048_
                                               (gx#syntax-e _tl168017168043_)))
                                          (let ((_hd168019168051_
                                                 (##car _e168018168048_))
                                                (_tl168020168053_
                                                 (##cdr _e168018168048_)))
                                            (let ((_body168056_
                                                   _hd168019168051_))
                                              (if (gx#stx-null?
                                                   _tl168020168053_)
                                                  (if '#t
                                                      (cons _form168008_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd168046_)
                          (cons (gx#core-compile-top-syntax _body168056_)
                                '())))
              (_E168011168026_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E168011168026_)))))
                                        (_E168011168026_)))))
                              (_E168011168026_))))
                      (_E168011168026_)))))
          (_E168010168058_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx168065_)
        (let ((_form168067_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx168065_ _form168067_))))
    (define gx#core-compile-top-let-values%
      (lambda _g173448_
        (let ((_g173447_ (##length _g173448_)))
          (cond ((##fx= _g173447_ 1)
                 (apply (lambda (_stx168065_)
                          (gx#core-compile-top-let-values%__0 _stx168065_))
                        _g173448_))
                ((##fx= _g173447_ 2)
                 (apply (lambda (_stx168069_ _form168070_)
                          (gx#core-compile-top-let-values%__%
                           _stx168069_
                           _form168070_))
                        _g173448_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g173448_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx168004_)
        (gx#core-compile-top-let-values%__% _stx168004_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx168002_)
        (gx#core-compile-top-let-values%__% _stx168002_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx167961_)
        (let* ((_e167962167972_ _stx167961_)
               (_E167964167976_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167962167972_)))
               (_E167963167998_
                (lambda ()
                  (if (gx#stx-pair? _e167962167972_)
                      (let ((_e167965167980_ (gx#syntax-e _e167962167972_)))
                        (let ((_hd167966167983_ (##car _e167965167980_))
                              (_tl167967167985_ (##cdr _e167965167980_)))
                          (if (gx#stx-pair? _tl167967167985_)
                              (let ((_e167968167988_
                                     (gx#syntax-e _tl167967167985_)))
                                (let ((_hd167969167991_
                                       (##car _e167968167988_))
                                      (_tl167970167993_
                                       (##cdr _e167968167988_)))
                                  (let ((_e167996_ _hd167969167991_))
                                    (if (gx#stx-null? _tl167970167993_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e167996_)
                                                        '()))
                                            (_E167964167976_))
                                        (_E167964167976_)))))
                              (_E167964167976_))))
                      (_E167964167976_)))))
          (_E167963167998_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx167920_)
        (let* ((_e167921167931_ _stx167920_)
               (_E167923167935_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167921167931_)))
               (_E167922167957_
                (lambda ()
                  (if (gx#stx-pair? _e167921167931_)
                      (let ((_e167924167939_ (gx#syntax-e _e167921167931_)))
                        (let ((_hd167925167942_ (##car _e167924167939_))
                              (_tl167926167944_ (##cdr _e167924167939_)))
                          (if (gx#stx-pair? _tl167926167944_)
                              (let ((_e167927167947_
                                     (gx#syntax-e _tl167926167944_)))
                                (let ((_hd167928167950_
                                       (##car _e167927167947_))
                                      (_tl167929167952_
                                       (##cdr _e167927167947_)))
                                  (let ((_e167955_ _hd167928167950_))
                                    (if (gx#stx-null? _tl167929167952_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e167955_)
                                                        '()))
                                            (_E167923167935_))
                                        (_E167923167935_)))))
                              (_E167923167935_))))
                      (_E167923167935_)))))
          (_E167922167957_))))
    (define gx#core-compile-top-call%
      (lambda (_stx167877_)
        (let* ((_e167878167888_ _stx167877_)
               (_E167880167892_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167878167888_)))
               (_E167879167916_
                (lambda ()
                  (if (gx#stx-pair? _e167878167888_)
                      (let ((_e167881167896_ (gx#syntax-e _e167878167888_)))
                        (let ((_hd167882167899_ (##car _e167881167896_))
                              (_tl167883167901_ (##cdr _e167881167896_)))
                          (if (gx#stx-pair? _tl167883167901_)
                              (let ((_e167884167904_
                                     (gx#syntax-e _tl167883167901_)))
                                (let ((_hd167885167907_
                                       (##car _e167884167904_))
                                      (_tl167886167909_
                                       (##cdr _e167884167904_)))
                                  (let* ((_rator167912_ _hd167885167907_)
                                         (_args167914_ _tl167886167909_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator167912_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args167914_)))
                                        (_E167880167892_)))))
                              (_E167880167892_))))
                      (_E167880167892_)))))
          (_E167879167916_))))
    (define gx#core-compile-top-if%
      (lambda (_stx167810_)
        (let* ((_e167811167827_ _stx167810_)
               (_E167813167831_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167811167827_)))
               (_E167812167873_
                (lambda ()
                  (if (gx#stx-pair? _e167811167827_)
                      (let ((_e167814167835_ (gx#syntax-e _e167811167827_)))
                        (let ((_hd167815167838_ (##car _e167814167835_))
                              (_tl167816167840_ (##cdr _e167814167835_)))
                          (if (gx#stx-pair? _tl167816167840_)
                              (let ((_e167817167843_
                                     (gx#syntax-e _tl167816167840_)))
                                (let ((_hd167818167846_
                                       (##car _e167817167843_))
                                      (_tl167819167848_
                                       (##cdr _e167817167843_)))
                                  (let ((_test167851_ _hd167818167846_))
                                    (if (gx#stx-pair? _tl167819167848_)
                                        (let ((_e167820167853_
                                               (gx#syntax-e _tl167819167848_)))
                                          (let ((_hd167821167856_
                                                 (##car _e167820167853_))
                                                (_tl167822167858_
                                                 (##cdr _e167820167853_)))
                                            (let ((_K167861_ _hd167821167856_))
                                              (if (gx#stx-pair?
                                                   _tl167822167858_)
                                                  (let ((_e167823167863_
                                                         (gx#syntax-e
                                                          _tl167822167858_)))
                                                    (let ((_hd167824167866_
                                                           (##car _e167823167863_))
                                                          (_tl167825167868_
                                                           (##cdr _e167823167863_)))
                                                      (let ((_E167871_
                                                             _hd167824167866_))
                                                        (if (gx#stx-null?
                                                             _tl167825167868_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test167851_)
                                    (cons (gx#core-compile-top-syntax
                                           _K167861_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E167871_)
                                                '()))))
                        (_E167813167831_))
                    (_E167813167831_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E167813167831_)))))
                                        (_E167813167831_)))))
                              (_E167813167831_))))
                      (_E167813167831_)))))
          (_E167812167873_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx167769_)
        (let* ((_e167770167780_ _stx167769_)
               (_E167772167784_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167770167780_)))
               (_E167771167806_
                (lambda ()
                  (if (gx#stx-pair? _e167770167780_)
                      (let ((_e167773167788_ (gx#syntax-e _e167770167780_)))
                        (let ((_hd167774167791_ (##car _e167773167788_))
                              (_tl167775167793_ (##cdr _e167773167788_)))
                          (if (gx#stx-pair? _tl167775167793_)
                              (let ((_e167776167796_
                                     (gx#syntax-e _tl167775167793_)))
                                (let ((_hd167777167799_
                                       (##car _e167776167796_))
                                      (_tl167778167801_
                                       (##cdr _e167776167796_)))
                                  (let ((_id167804_ _hd167777167799_))
                                    (if (gx#stx-null? _tl167778167801_)
                                        (if (gx#identifier? _id167804_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id167804_)
                                                        '()))
                                            (_E167772167784_))
                                        (_E167772167784_)))))
                              (_E167772167784_))))
                      (_E167772167784_)))))
          (_E167771167806_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx167715_)
        (let* ((_e167716167729_ _stx167715_)
               (_E167718167733_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167716167729_)))
               (_E167717167765_
                (lambda ()
                  (if (gx#stx-pair? _e167716167729_)
                      (let ((_e167719167737_ (gx#syntax-e _e167716167729_)))
                        (let ((_hd167720167740_ (##car _e167719167737_))
                              (_tl167721167742_ (##cdr _e167719167737_)))
                          (if (gx#stx-pair? _tl167721167742_)
                              (let ((_e167722167745_
                                     (gx#syntax-e _tl167721167742_)))
                                (let ((_hd167723167748_
                                       (##car _e167722167745_))
                                      (_tl167724167750_
                                       (##cdr _e167722167745_)))
                                  (let ((_id167753_ _hd167723167748_))
                                    (if (gx#stx-pair? _tl167724167750_)
                                        (let ((_e167725167755_
                                               (gx#syntax-e _tl167724167750_)))
                                          (let ((_hd167726167758_
                                                 (##car _e167725167755_))
                                                (_tl167727167760_
                                                 (##cdr _e167725167755_)))
                                            (let ((_expr167763_
                                                   _hd167726167758_))
                                              (if (gx#stx-null?
                                                   _tl167727167760_)
                                                  (if (gx#identifier?
                                                       _id167753_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id167753_)
                          (cons (gx#core-compile-top-syntax _expr167763_)
                                '())))
              (_E167718167733_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E167718167733_)))))
                                        (_E167718167733_)))))
                              (_E167718167733_))))
                      (_E167718167733_)))))
          (_E167717167765_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id167710_)
        (let ((_$e167712_ (gx#resolve-identifier__0 _id167710_)))
          (if _$e167712_
              (##unchecked-structure-ref _$e167712_ '1 gx#binding::t '#f)
              _id167710_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd167708_)
        (if (gx#identifier? _hd167708_)
            (gx#core-compile-top-runtime-ref _hd167708_)
            '#f)))))
