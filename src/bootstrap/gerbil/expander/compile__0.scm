(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1707742541)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx168623_)
        (let* ((_e168624168631_ _stx168623_)
               (_E168626168635_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168624168631_)))
               (_E168625168649_
                (lambda ()
                  (if (gx#stx-pair? _e168624168631_)
                      (let ((_e168627168639_ (gx#syntax-e _e168624168631_)))
                        (let ((_hd168628168642_ (##car _e168627168639_))
                              (_tl168629168644_ (##cdr _e168627168639_)))
                          (let ((_form168647_ _hd168628168642_))
                            (if '#t
                                (let* ((__self173220
                                        (gx#syntax-local-e__0 _form168647_))
                                       (__method173221
                                        (method-ref
                                         __self173220
                                         'compile-top-syntax)))
                                  (if __method173221
                                      (__method173221 __self173220 _stx168623_)
                                      (error '"Missing method"
                                             __self173220
                                             'compile-top-syntax)))
                                (_E168626168635_)))))
                      (_E168626168635_)))))
          (_E168625168649_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self168583_ _stx168584_)
        (let* ((_self168585168593_ _self168583_)
               (_E168587168597_
                (lambda () (error '"No clause matching" _self168585168593_)))
               (_K168588168609_
                (lambda (_K168600_)
                  (let ((_$e168602_ (gx#stx-source _stx168584_)))
                    (if _$e168602_
                        ((lambda (_g168604168606_)
                           (gx#stx-wrap-source
                            (_K168600_ _stx168584_)
                            _g168604168606_))
                         _$e168602_)
                        (_K168600_ _stx168584_))))))
          (if (##structure-instance-of?
               _self168585168593_
               'gx#core-expander::t)
              (let* ((_e168589168612_
                      (##unchecked-structure-ref
                       _self168585168593_
                       '1
                       gx#expander::t
                       '#f))
                     (_e168590168615_
                      (##unchecked-structure-ref
                       _self168585168593_
                       '2
                       gx#core-expander::t
                       '#f))
                     (_e168591168618_
                      (##unchecked-structure-ref
                       _self168585168593_
                       '3
                       gx#core-expander::t
                       '#f))
                     (_K168621_ _e168591168618_))
                (_K168588168609_ _K168621_))
              (_E168587168597_)))))
    (bind-method!
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx168457_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx168457_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx168427_)
        (let* ((_e168428168435_ _stx168427_)
               (_E168430168439_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168428168435_)))
               (_E168429168453_
                (lambda ()
                  (if (gx#stx-pair? _e168428168435_)
                      (let ((_e168431168443_ (gx#syntax-e _e168428168435_)))
                        (let ((_hd168432168446_ (##car _e168431168443_))
                              (_tl168433168448_ (##cdr _e168431168443_)))
                          (let ((_body168451_ _tl168433168448_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body168451_))
                                (_E168430168439_)))))
                      (_E168430168439_)))))
          (_E168429168453_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx168396_)
        (let* ((_e168397168404_ _stx168396_)
               (_E168399168408_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168397168404_)))
               (_E168398168423_
                (lambda ()
                  (if (gx#stx-pair? _e168397168404_)
                      (let ((_e168400168412_ (gx#syntax-e _e168397168404_)))
                        (let ((_hd168401168415_ (##car _e168400168412_))
                              (_tl168402168417_ (##cdr _e168400168412_)))
                          (let ((_body168420_ _tl168402168417_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body168420_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E168399168408_)))))
                      (_E168399168408_)))))
          (_E168398168423_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_stx168366_)
        (let* ((_e168367168374_ _stx168366_)
               (_E168369168378_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168367168374_)))
               (_E168368168392_
                (lambda ()
                  (if (gx#stx-pair? _e168367168374_)
                      (let ((_e168370168382_ (gx#syntax-e _e168367168374_)))
                        (let ((_hd168371168385_ (##car _e168370168382_))
                              (_tl168372168387_ (##cdr _e168370168382_)))
                          (let ((_body168390_ _tl168372168387_))
                            (if '#t
                                (cons '%#begin-foreign _body168390_)
                                (_E168369168378_)))))
                      (_E168369168378_)))))
          (_E168368168392_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_stx168312_)
        (let* ((_e168313168326_ _stx168312_)
               (_E168315168330_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168313168326_)))
               (_E168314168362_
                (lambda ()
                  (if (gx#stx-pair? _e168313168326_)
                      (let ((_e168316168334_ (gx#syntax-e _e168313168326_)))
                        (let ((_hd168317168337_ (##car _e168316168334_))
                              (_tl168318168339_ (##cdr _e168316168334_)))
                          (if (gx#stx-pair? _tl168318168339_)
                              (let ((_e168319168342_
                                     (gx#syntax-e _tl168318168339_)))
                                (let ((_hd168320168345_
                                       (##car _e168319168342_))
                                      (_tl168321168347_
                                       (##cdr _e168319168342_)))
                                  (let ((_ann168350_ _hd168320168345_))
                                    (if (gx#stx-pair? _tl168321168347_)
                                        (let ((_e168322168352_
                                               (gx#syntax-e _tl168321168347_)))
                                          (let ((_hd168323168355_
                                                 (##car _e168322168352_))
                                                (_tl168324168357_
                                                 (##cdr _e168322168352_)))
                                            (let ((_expr168360_
                                                   _hd168323168355_))
                                              (if (gx#stx-null?
                                                   _tl168324168357_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr168360_)
                                                      (_E168315168330_))
                                                  (_E168315168330_)))))
                                        (_E168315168330_)))))
                              (_E168315168330_))))
                      (_E168315168330_)))))
          (_E168314168362_))))
    (define gx#core-compile-top-import%
      (lambda (_stx168282_)
        (let* ((_e168283168290_ _stx168282_)
               (_E168285168294_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168283168290_)))
               (_E168284168308_
                (lambda ()
                  (if (gx#stx-pair? _e168283168290_)
                      (let ((_e168286168298_ (gx#syntax-e _e168283168290_)))
                        (let ((_hd168287168301_ (##car _e168286168298_))
                              (_tl168288168303_ (##cdr _e168286168298_)))
                          (let ((_body168306_ _tl168288168303_))
                            (if '#t
                                (cons '%#import _body168306_)
                                (_E168285168294_)))))
                      (_E168285168294_)))))
          (_E168284168308_))))
    (define gx#core-compile-top-module%
      (lambda (_stx168239_)
        (let* ((_e168240168250_ _stx168239_)
               (_E168242168254_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168240168250_)))
               (_E168241168278_
                (lambda ()
                  (if (gx#stx-pair? _e168240168250_)
                      (let ((_e168243168258_ (gx#syntax-e _e168240168250_)))
                        (let ((_hd168244168261_ (##car _e168243168258_))
                              (_tl168245168263_ (##cdr _e168243168258_)))
                          (if (gx#stx-pair? _tl168245168263_)
                              (let ((_e168246168266_
                                     (gx#syntax-e _tl168245168263_)))
                                (let ((_hd168247168269_
                                       (##car _e168246168266_))
                                      (_tl168248168271_
                                       (##cdr _e168246168266_)))
                                  (let* ((_hd168274_ _hd168247168269_)
                                         (_body168276_ _tl168248168271_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _hd168274_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body168276_)))
                                        (_E168242168254_)))))
                              (_E168242168254_))))
                      (_E168242168254_)))))
          (_E168241168278_))))
    (define gx#core-compile-top-export%
      (lambda (_stx168209_)
        (let* ((_e168210168217_ _stx168209_)
               (_E168212168221_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168210168217_)))
               (_E168211168235_
                (lambda ()
                  (if (gx#stx-pair? _e168210168217_)
                      (let ((_e168213168225_ (gx#syntax-e _e168210168217_)))
                        (let ((_hd168214168228_ (##car _e168213168225_))
                              (_tl168215168230_ (##cdr _e168213168225_)))
                          (let ((_body168233_ _tl168215168230_))
                            (if '#t
                                (cons '%#export _body168233_)
                                (_E168212168221_)))))
                      (_E168212168221_)))))
          (_E168211168235_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx168179_)
        (let* ((_e168180168187_ _stx168179_)
               (_E168182168191_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168180168187_)))
               (_E168181168205_
                (lambda ()
                  (if (gx#stx-pair? _e168180168187_)
                      (let ((_e168183168195_ (gx#syntax-e _e168180168187_)))
                        (let ((_hd168184168198_ (##car _e168183168195_))
                              (_tl168185168200_ (##cdr _e168183168195_)))
                          (let ((_body168203_ _tl168185168200_))
                            (if '#t
                                (cons '%#provide _body168203_)
                                (_E168182168191_)))))
                      (_E168182168191_)))))
          (_E168181168205_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx168149_)
        (let* ((_e168150168157_ _stx168149_)
               (_E168152168161_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168150168157_)))
               (_E168151168175_
                (lambda ()
                  (if (gx#stx-pair? _e168150168157_)
                      (let ((_e168153168165_ (gx#syntax-e _e168150168157_)))
                        (let ((_hd168154168168_ (##car _e168153168165_))
                              (_tl168155168170_ (##cdr _e168153168165_)))
                          (let ((_body168173_ _tl168155168170_))
                            (if '#t
                                (cons '%#extern _body168173_)
                                (_E168152168161_)))))
                      (_E168152168161_)))))
          (_E168151168175_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx168095_)
        (let* ((_e168096168109_ _stx168095_)
               (_E168098168113_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168096168109_)))
               (_E168097168145_
                (lambda ()
                  (if (gx#stx-pair? _e168096168109_)
                      (let ((_e168099168117_ (gx#syntax-e _e168096168109_)))
                        (let ((_hd168100168120_ (##car _e168099168117_))
                              (_tl168101168122_ (##cdr _e168099168117_)))
                          (if (gx#stx-pair? _tl168101168122_)
                              (let ((_e168102168125_
                                     (gx#syntax-e _tl168101168122_)))
                                (let ((_hd168103168128_
                                       (##car _e168102168125_))
                                      (_tl168104168130_
                                       (##cdr _e168102168125_)))
                                  (let ((_hd168133_ _hd168103168128_))
                                    (if (gx#stx-pair? _tl168104168130_)
                                        (let ((_e168105168135_
                                               (gx#syntax-e _tl168104168130_)))
                                          (let ((_hd168106168138_
                                                 (##car _e168105168135_))
                                                (_tl168107168140_
                                                 (##cdr _e168105168135_)))
                                            (let ((_expr168143_
                                                   _hd168106168138_))
                                              (if (gx#stx-null?
                                                   _tl168107168140_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd168133_)
                          (cons (gx#core-compile-top-syntax _expr168143_)
                                '())))
              (_E168098168113_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E168098168113_)))))
                                        (_E168098168113_)))))
                              (_E168098168113_))))
                      (_E168098168113_)))))
          (_E168097168145_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx168040_)
        (let* ((_e168041168054_ _stx168040_)
               (_E168043168058_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168041168054_)))
               (_E168042168091_
                (lambda ()
                  (if (gx#stx-pair? _e168041168054_)
                      (let ((_e168044168062_ (gx#syntax-e _e168041168054_)))
                        (let ((_hd168045168065_ (##car _e168044168062_))
                              (_tl168046168067_ (##cdr _e168044168062_)))
                          (if (gx#stx-pair? _tl168046168067_)
                              (let ((_e168047168070_
                                     (gx#syntax-e _tl168046168067_)))
                                (let ((_hd168048168073_
                                       (##car _e168047168070_))
                                      (_tl168049168075_
                                       (##cdr _e168047168070_)))
                                  (let ((_hd168078_ _hd168048168073_))
                                    (if (gx#stx-pair? _tl168049168075_)
                                        (let ((_e168050168080_
                                               (gx#syntax-e _tl168049168075_)))
                                          (let ((_hd168051168083_
                                                 (##car _e168050168080_))
                                                (_tl168052168085_
                                                 (##cdr _e168050168080_)))
                                            (let ((_expr168088_
                                                   _hd168051168083_))
                                              (if (gx#stx-null?
                                                   _tl168052168085_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd168078_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr168088_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E168043168058_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E168043168058_)))))
                                        (_E168043168058_)))))
                              (_E168043168058_))))
                      (_E168043168058_)))))
          (_E168042168091_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx168010_)
        (let* ((_e168011168018_ _stx168010_)
               (_E168013168022_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168011168018_)))
               (_E168012168036_
                (lambda ()
                  (if (gx#stx-pair? _e168011168018_)
                      (let ((_e168014168026_ (gx#syntax-e _e168011168018_)))
                        (let ((_hd168015168029_ (##car _e168014168026_))
                              (_tl168016168031_ (##cdr _e168014168026_)))
                          (let ((_body168034_ _tl168016168031_))
                            (if '#t
                                (cons '%#define-alias _body168034_)
                                (_E168013168022_)))))
                      (_E168013168022_)))))
          (_E168012168036_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx167980_)
        (let* ((_e167981167988_ _stx167980_)
               (_E167983167992_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167981167988_)))
               (_E167982168006_
                (lambda ()
                  (if (gx#stx-pair? _e167981167988_)
                      (let ((_e167984167996_ (gx#syntax-e _e167981167988_)))
                        (let ((_hd167985167999_ (##car _e167984167996_))
                              (_tl167986168001_ (##cdr _e167984167996_)))
                          (let ((_body168004_ _tl167986168001_))
                            (if '#t
                                (cons '%#define-runtime _body168004_)
                                (_E167983167992_)))))
                      (_E167983167992_)))))
          (_E167982168006_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx167950_)
        (let* ((_e167951167958_ _stx167950_)
               (_E167953167962_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167951167958_)))
               (_E167952167976_
                (lambda ()
                  (if (gx#stx-pair? _e167951167958_)
                      (let ((_e167954167966_ (gx#syntax-e _e167951167958_)))
                        (let ((_hd167955167969_ (##car _e167954167966_))
                              (_tl167956167971_ (##cdr _e167954167966_)))
                          (let ((_decls167974_ _tl167956167971_))
                            (if '#t
                                (cons '%#declare _decls167974_)
                                (_E167953167962_)))))
                      (_E167953167962_)))))
          (_E167952167976_))))
    (define gx#core-compile-top-lambda%
      (lambda (_stx167920_)
        (let* ((_e167921167928_ _stx167920_)
               (_E167923167932_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167921167928_)))
               (_E167922167946_
                (lambda ()
                  (if (gx#stx-pair? _e167921167928_)
                      (let ((_e167924167936_ (gx#syntax-e _e167921167928_)))
                        (let ((_hd167925167939_ (##car _e167924167936_))
                              (_tl167926167941_ (##cdr _e167924167936_)))
                          (let ((_clause167944_ _tl167926167941_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause167944_))
                                (_E167923167932_)))))
                      (_E167923167932_)))))
          (_E167922167946_))))
    (define gx#core-compile-top-lambda-clause
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
                          (let ((_hd167904_ _hd167882167899_))
                            (if (gx#stx-pair? _tl167883167901_)
                                (let ((_e167884167906_
                                       (gx#syntax-e _tl167883167901_)))
                                  (let ((_hd167885167909_
                                         (##car _e167884167906_))
                                        (_tl167886167911_
                                         (##cdr _e167884167906_)))
                                    (let ((_body167914_ _hd167885167909_))
                                      (if (gx#stx-null? _tl167886167911_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd167904_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body167914_)
                                                          '()))
                                              (_E167880167892_))
                                          (_E167880167892_)))))
                                (_E167880167892_)))))
                      (_E167880167892_)))))
          (_E167879167916_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx167847_)
        (let* ((_e167848167855_ _stx167847_)
               (_E167850167859_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167848167855_)))
               (_E167849167873_
                (lambda ()
                  (if (gx#stx-pair? _e167848167855_)
                      (let ((_e167851167863_ (gx#syntax-e _e167848167855_)))
                        (let ((_hd167852167866_ (##car _e167851167863_))
                              (_tl167853167868_ (##cdr _e167851167863_)))
                          (let ((_clauses167871_ _tl167853167868_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses167871_))
                                (_E167850167859_)))))
                      (_E167850167859_)))))
          (_E167849167873_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx167782_ _form167783_)
        (let* ((_e167784167797_ _stx167782_)
               (_E167786167801_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167784167797_)))
               (_E167785167833_
                (lambda ()
                  (if (gx#stx-pair? _e167784167797_)
                      (let ((_e167787167805_ (gx#syntax-e _e167784167797_)))
                        (let ((_hd167788167808_ (##car _e167787167805_))
                              (_tl167789167810_ (##cdr _e167787167805_)))
                          (if (gx#stx-pair? _tl167789167810_)
                              (let ((_e167790167813_
                                     (gx#syntax-e _tl167789167810_)))
                                (let ((_hd167791167816_
                                       (##car _e167790167813_))
                                      (_tl167792167818_
                                       (##cdr _e167790167813_)))
                                  (let ((_hd167821_ _hd167791167816_))
                                    (if (gx#stx-pair? _tl167792167818_)
                                        (let ((_e167793167823_
                                               (gx#syntax-e _tl167792167818_)))
                                          (let ((_hd167794167826_
                                                 (##car _e167793167823_))
                                                (_tl167795167828_
                                                 (##cdr _e167793167823_)))
                                            (let ((_body167831_
                                                   _hd167794167826_))
                                              (if (gx#stx-null?
                                                   _tl167795167828_)
                                                  (if '#t
                                                      (cons _form167783_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd167821_)
                          (cons (gx#core-compile-top-syntax _body167831_)
                                '())))
              (_E167786167801_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E167786167801_)))))
                                        (_E167786167801_)))))
                              (_E167786167801_))))
                      (_E167786167801_)))))
          (_E167785167833_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx167840_)
        (let ((_form167842_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx167840_ _form167842_))))
    (define gx#core-compile-top-let-values%
      (lambda _g173223_
        (let ((_g173222_ (##length _g173223_)))
          (cond ((##fx= _g173222_ 1)
                 (apply (lambda (_stx167840_)
                          (gx#core-compile-top-let-values%__0 _stx167840_))
                        _g173223_))
                ((##fx= _g173222_ 2)
                 (apply (lambda (_stx167844_ _form167845_)
                          (gx#core-compile-top-let-values%__%
                           _stx167844_
                           _form167845_))
                        _g173223_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g173223_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx167779_)
        (gx#core-compile-top-let-values%__% _stx167779_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx167777_)
        (gx#core-compile-top-let-values%__% _stx167777_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx167736_)
        (let* ((_e167737167747_ _stx167736_)
               (_E167739167751_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167737167747_)))
               (_E167738167773_
                (lambda ()
                  (if (gx#stx-pair? _e167737167747_)
                      (let ((_e167740167755_ (gx#syntax-e _e167737167747_)))
                        (let ((_hd167741167758_ (##car _e167740167755_))
                              (_tl167742167760_ (##cdr _e167740167755_)))
                          (if (gx#stx-pair? _tl167742167760_)
                              (let ((_e167743167763_
                                     (gx#syntax-e _tl167742167760_)))
                                (let ((_hd167744167766_
                                       (##car _e167743167763_))
                                      (_tl167745167768_
                                       (##cdr _e167743167763_)))
                                  (let ((_e167771_ _hd167744167766_))
                                    (if (gx#stx-null? _tl167745167768_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e167771_)
                                                        '()))
                                            (_E167739167751_))
                                        (_E167739167751_)))))
                              (_E167739167751_))))
                      (_E167739167751_)))))
          (_E167738167773_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx167695_)
        (let* ((_e167696167706_ _stx167695_)
               (_E167698167710_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167696167706_)))
               (_E167697167732_
                (lambda ()
                  (if (gx#stx-pair? _e167696167706_)
                      (let ((_e167699167714_ (gx#syntax-e _e167696167706_)))
                        (let ((_hd167700167717_ (##car _e167699167714_))
                              (_tl167701167719_ (##cdr _e167699167714_)))
                          (if (gx#stx-pair? _tl167701167719_)
                              (let ((_e167702167722_
                                     (gx#syntax-e _tl167701167719_)))
                                (let ((_hd167703167725_
                                       (##car _e167702167722_))
                                      (_tl167704167727_
                                       (##cdr _e167702167722_)))
                                  (let ((_e167730_ _hd167703167725_))
                                    (if (gx#stx-null? _tl167704167727_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e167730_)
                                                        '()))
                                            (_E167698167710_))
                                        (_E167698167710_)))))
                              (_E167698167710_))))
                      (_E167698167710_)))))
          (_E167697167732_))))
    (define gx#core-compile-top-call%
      (lambda (_stx167652_)
        (let* ((_e167653167663_ _stx167652_)
               (_E167655167667_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167653167663_)))
               (_E167654167691_
                (lambda ()
                  (if (gx#stx-pair? _e167653167663_)
                      (let ((_e167656167671_ (gx#syntax-e _e167653167663_)))
                        (let ((_hd167657167674_ (##car _e167656167671_))
                              (_tl167658167676_ (##cdr _e167656167671_)))
                          (if (gx#stx-pair? _tl167658167676_)
                              (let ((_e167659167679_
                                     (gx#syntax-e _tl167658167676_)))
                                (let ((_hd167660167682_
                                       (##car _e167659167679_))
                                      (_tl167661167684_
                                       (##cdr _e167659167679_)))
                                  (let* ((_rator167687_ _hd167660167682_)
                                         (_args167689_ _tl167661167684_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator167687_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args167689_)))
                                        (_E167655167667_)))))
                              (_E167655167667_))))
                      (_E167655167667_)))))
          (_E167654167691_))))
    (define gx#core-compile-top-if%
      (lambda (_stx167585_)
        (let* ((_e167586167602_ _stx167585_)
               (_E167588167606_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167586167602_)))
               (_E167587167648_
                (lambda ()
                  (if (gx#stx-pair? _e167586167602_)
                      (let ((_e167589167610_ (gx#syntax-e _e167586167602_)))
                        (let ((_hd167590167613_ (##car _e167589167610_))
                              (_tl167591167615_ (##cdr _e167589167610_)))
                          (if (gx#stx-pair? _tl167591167615_)
                              (let ((_e167592167618_
                                     (gx#syntax-e _tl167591167615_)))
                                (let ((_hd167593167621_
                                       (##car _e167592167618_))
                                      (_tl167594167623_
                                       (##cdr _e167592167618_)))
                                  (let ((_test167626_ _hd167593167621_))
                                    (if (gx#stx-pair? _tl167594167623_)
                                        (let ((_e167595167628_
                                               (gx#syntax-e _tl167594167623_)))
                                          (let ((_hd167596167631_
                                                 (##car _e167595167628_))
                                                (_tl167597167633_
                                                 (##cdr _e167595167628_)))
                                            (let ((_K167636_ _hd167596167631_))
                                              (if (gx#stx-pair?
                                                   _tl167597167633_)
                                                  (let ((_e167598167638_
                                                         (gx#syntax-e
                                                          _tl167597167633_)))
                                                    (let ((_hd167599167641_
                                                           (##car _e167598167638_))
                                                          (_tl167600167643_
                                                           (##cdr _e167598167638_)))
                                                      (let ((_E167646_
                                                             _hd167599167641_))
                                                        (if (gx#stx-null?
                                                             _tl167600167643_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test167626_)
                                    (cons (gx#core-compile-top-syntax
                                           _K167636_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E167646_)
                                                '()))))
                        (_E167588167606_))
                    (_E167588167606_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E167588167606_)))))
                                        (_E167588167606_)))))
                              (_E167588167606_))))
                      (_E167588167606_)))))
          (_E167587167648_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx167544_)
        (let* ((_e167545167555_ _stx167544_)
               (_E167547167559_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167545167555_)))
               (_E167546167581_
                (lambda ()
                  (if (gx#stx-pair? _e167545167555_)
                      (let ((_e167548167563_ (gx#syntax-e _e167545167555_)))
                        (let ((_hd167549167566_ (##car _e167548167563_))
                              (_tl167550167568_ (##cdr _e167548167563_)))
                          (if (gx#stx-pair? _tl167550167568_)
                              (let ((_e167551167571_
                                     (gx#syntax-e _tl167550167568_)))
                                (let ((_hd167552167574_
                                       (##car _e167551167571_))
                                      (_tl167553167576_
                                       (##cdr _e167551167571_)))
                                  (let ((_id167579_ _hd167552167574_))
                                    (if (gx#stx-null? _tl167553167576_)
                                        (if (gx#identifier? _id167579_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id167579_)
                                                        '()))
                                            (_E167547167559_))
                                        (_E167547167559_)))))
                              (_E167547167559_))))
                      (_E167547167559_)))))
          (_E167546167581_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx167490_)
        (let* ((_e167491167504_ _stx167490_)
               (_E167493167508_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167491167504_)))
               (_E167492167540_
                (lambda ()
                  (if (gx#stx-pair? _e167491167504_)
                      (let ((_e167494167512_ (gx#syntax-e _e167491167504_)))
                        (let ((_hd167495167515_ (##car _e167494167512_))
                              (_tl167496167517_ (##cdr _e167494167512_)))
                          (if (gx#stx-pair? _tl167496167517_)
                              (let ((_e167497167520_
                                     (gx#syntax-e _tl167496167517_)))
                                (let ((_hd167498167523_
                                       (##car _e167497167520_))
                                      (_tl167499167525_
                                       (##cdr _e167497167520_)))
                                  (let ((_id167528_ _hd167498167523_))
                                    (if (gx#stx-pair? _tl167499167525_)
                                        (let ((_e167500167530_
                                               (gx#syntax-e _tl167499167525_)))
                                          (let ((_hd167501167533_
                                                 (##car _e167500167530_))
                                                (_tl167502167535_
                                                 (##cdr _e167500167530_)))
                                            (let ((_expr167538_
                                                   _hd167501167533_))
                                              (if (gx#stx-null?
                                                   _tl167502167535_)
                                                  (if (gx#identifier?
                                                       _id167528_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id167528_)
                          (cons (gx#core-compile-top-syntax _expr167538_)
                                '())))
              (_E167493167508_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E167493167508_)))))
                                        (_E167493167508_)))))
                              (_E167493167508_))))
                      (_E167493167508_)))))
          (_E167492167540_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id167485_)
        (let ((_$e167487_ (gx#resolve-identifier__0 _id167485_)))
          (if _$e167487_
              (##unchecked-structure-ref _$e167487_ '1 gx#binding::t '#f)
              _id167485_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd167483_)
        (if (gx#identifier? _hd167483_)
            (gx#core-compile-top-runtime-ref _hd167483_)
            '#f)))))
