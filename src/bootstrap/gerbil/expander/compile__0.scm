(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1707657570)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx166737_)
        (let* ((_e166738166745_ _stx166737_)
               (_E166740166749_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166738166745_)))
               (_E166739166763_
                (lambda ()
                  (if (gx#stx-pair? _e166738166745_)
                      (let ((_e166741166753_ (gx#syntax-e _e166738166745_)))
                        (let ((_hd166742166756_ (##car _e166741166753_))
                              (_tl166743166758_ (##cdr _e166741166753_)))
                          (let ((_form166761_ _hd166742166756_))
                            (if '#t
                                (let* ((__self171234
                                        (gx#syntax-local-e__0 _form166761_))
                                       (__method171235
                                        (method-ref
                                         __self171234
                                         'compile-top-syntax)))
                                  (if __method171235
                                      (__method171235 __self171234 _stx166737_)
                                      (error '"Missing method"
                                             __self171234
                                             'compile-top-syntax)))
                                (_E166740166749_)))))
                      (_E166740166749_)))))
          (_E166739166763_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self166697_ _stx166698_)
        (let* ((_self166699166707_ _self166697_)
               (_E166701166711_
                (lambda () (error '"No clause matching" _self166699166707_)))
               (_K166702166723_
                (lambda (_K166714_)
                  (let ((_$e166716_ (gx#stx-source _stx166698_)))
                    (if _$e166716_
                        ((lambda (_g166718166720_)
                           (gx#stx-wrap-source
                            (_K166714_ _stx166698_)
                            _g166718166720_))
                         _$e166716_)
                        (_K166714_ _stx166698_))))))
          (if (##structure-instance-of?
               _self166699166707_
               'gx#core-expander::t)
              (let* ((_e166703166726_
                      (##unchecked-structure-ref
                       _self166699166707_
                       '1
                       gx#expander::t
                       '#f))
                     (_e166704166729_
                      (##unchecked-structure-ref
                       _self166699166707_
                       '2
                       gx#core-expander::t
                       '#f))
                     (_e166705166732_
                      (##unchecked-structure-ref
                       _self166699166707_
                       '3
                       gx#core-expander::t
                       '#f))
                     (_K166735_ _e166705166732_))
                (_K166702166723_ _K166735_))
              (_E166701166711_)))))
    (bind-method!
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx166571_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx166571_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx166541_)
        (let* ((_e166542166549_ _stx166541_)
               (_E166544166553_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166542166549_)))
               (_E166543166567_
                (lambda ()
                  (if (gx#stx-pair? _e166542166549_)
                      (let ((_e166545166557_ (gx#syntax-e _e166542166549_)))
                        (let ((_hd166546166560_ (##car _e166545166557_))
                              (_tl166547166562_ (##cdr _e166545166557_)))
                          (let ((_body166565_ _tl166547166562_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body166565_))
                                (_E166544166553_)))))
                      (_E166544166553_)))))
          (_E166543166567_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx166510_)
        (let* ((_e166511166518_ _stx166510_)
               (_E166513166522_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166511166518_)))
               (_E166512166537_
                (lambda ()
                  (if (gx#stx-pair? _e166511166518_)
                      (let ((_e166514166526_ (gx#syntax-e _e166511166518_)))
                        (let ((_hd166515166529_ (##car _e166514166526_))
                              (_tl166516166531_ (##cdr _e166514166526_)))
                          (let ((_body166534_ _tl166516166531_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body166534_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E166513166522_)))))
                      (_E166513166522_)))))
          (_E166512166537_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_stx166480_)
        (let* ((_e166481166488_ _stx166480_)
               (_E166483166492_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166481166488_)))
               (_E166482166506_
                (lambda ()
                  (if (gx#stx-pair? _e166481166488_)
                      (let ((_e166484166496_ (gx#syntax-e _e166481166488_)))
                        (let ((_hd166485166499_ (##car _e166484166496_))
                              (_tl166486166501_ (##cdr _e166484166496_)))
                          (let ((_body166504_ _tl166486166501_))
                            (if '#t
                                (cons '%#begin-foreign _body166504_)
                                (_E166483166492_)))))
                      (_E166483166492_)))))
          (_E166482166506_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_stx166426_)
        (let* ((_e166427166440_ _stx166426_)
               (_E166429166444_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166427166440_)))
               (_E166428166476_
                (lambda ()
                  (if (gx#stx-pair? _e166427166440_)
                      (let ((_e166430166448_ (gx#syntax-e _e166427166440_)))
                        (let ((_hd166431166451_ (##car _e166430166448_))
                              (_tl166432166453_ (##cdr _e166430166448_)))
                          (if (gx#stx-pair? _tl166432166453_)
                              (let ((_e166433166456_
                                     (gx#syntax-e _tl166432166453_)))
                                (let ((_hd166434166459_
                                       (##car _e166433166456_))
                                      (_tl166435166461_
                                       (##cdr _e166433166456_)))
                                  (let ((_ann166464_ _hd166434166459_))
                                    (if (gx#stx-pair? _tl166435166461_)
                                        (let ((_e166436166466_
                                               (gx#syntax-e _tl166435166461_)))
                                          (let ((_hd166437166469_
                                                 (##car _e166436166466_))
                                                (_tl166438166471_
                                                 (##cdr _e166436166466_)))
                                            (let ((_expr166474_
                                                   _hd166437166469_))
                                              (if (gx#stx-null?
                                                   _tl166438166471_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr166474_)
                                                      (_E166429166444_))
                                                  (_E166429166444_)))))
                                        (_E166429166444_)))))
                              (_E166429166444_))))
                      (_E166429166444_)))))
          (_E166428166476_))))
    (define gx#core-compile-top-import%
      (lambda (_stx166396_)
        (let* ((_e166397166404_ _stx166396_)
               (_E166399166408_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166397166404_)))
               (_E166398166422_
                (lambda ()
                  (if (gx#stx-pair? _e166397166404_)
                      (let ((_e166400166412_ (gx#syntax-e _e166397166404_)))
                        (let ((_hd166401166415_ (##car _e166400166412_))
                              (_tl166402166417_ (##cdr _e166400166412_)))
                          (let ((_body166420_ _tl166402166417_))
                            (if '#t
                                (cons '%#import _body166420_)
                                (_E166399166408_)))))
                      (_E166399166408_)))))
          (_E166398166422_))))
    (define gx#core-compile-top-module%
      (lambda (_stx166353_)
        (let* ((_e166354166364_ _stx166353_)
               (_E166356166368_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166354166364_)))
               (_E166355166392_
                (lambda ()
                  (if (gx#stx-pair? _e166354166364_)
                      (let ((_e166357166372_ (gx#syntax-e _e166354166364_)))
                        (let ((_hd166358166375_ (##car _e166357166372_))
                              (_tl166359166377_ (##cdr _e166357166372_)))
                          (if (gx#stx-pair? _tl166359166377_)
                              (let ((_e166360166380_
                                     (gx#syntax-e _tl166359166377_)))
                                (let ((_hd166361166383_
                                       (##car _e166360166380_))
                                      (_tl166362166385_
                                       (##cdr _e166360166380_)))
                                  (let* ((_hd166388_ _hd166361166383_)
                                         (_body166390_ _tl166362166385_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _hd166388_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body166390_)))
                                        (_E166356166368_)))))
                              (_E166356166368_))))
                      (_E166356166368_)))))
          (_E166355166392_))))
    (define gx#core-compile-top-export%
      (lambda (_stx166323_)
        (let* ((_e166324166331_ _stx166323_)
               (_E166326166335_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166324166331_)))
               (_E166325166349_
                (lambda ()
                  (if (gx#stx-pair? _e166324166331_)
                      (let ((_e166327166339_ (gx#syntax-e _e166324166331_)))
                        (let ((_hd166328166342_ (##car _e166327166339_))
                              (_tl166329166344_ (##cdr _e166327166339_)))
                          (let ((_body166347_ _tl166329166344_))
                            (if '#t
                                (cons '%#export _body166347_)
                                (_E166326166335_)))))
                      (_E166326166335_)))))
          (_E166325166349_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx166293_)
        (let* ((_e166294166301_ _stx166293_)
               (_E166296166305_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166294166301_)))
               (_E166295166319_
                (lambda ()
                  (if (gx#stx-pair? _e166294166301_)
                      (let ((_e166297166309_ (gx#syntax-e _e166294166301_)))
                        (let ((_hd166298166312_ (##car _e166297166309_))
                              (_tl166299166314_ (##cdr _e166297166309_)))
                          (let ((_body166317_ _tl166299166314_))
                            (if '#t
                                (cons '%#provide _body166317_)
                                (_E166296166305_)))))
                      (_E166296166305_)))))
          (_E166295166319_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx166263_)
        (let* ((_e166264166271_ _stx166263_)
               (_E166266166275_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166264166271_)))
               (_E166265166289_
                (lambda ()
                  (if (gx#stx-pair? _e166264166271_)
                      (let ((_e166267166279_ (gx#syntax-e _e166264166271_)))
                        (let ((_hd166268166282_ (##car _e166267166279_))
                              (_tl166269166284_ (##cdr _e166267166279_)))
                          (let ((_body166287_ _tl166269166284_))
                            (if '#t
                                (cons '%#extern _body166287_)
                                (_E166266166275_)))))
                      (_E166266166275_)))))
          (_E166265166289_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx166209_)
        (let* ((_e166210166223_ _stx166209_)
               (_E166212166227_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166210166223_)))
               (_E166211166259_
                (lambda ()
                  (if (gx#stx-pair? _e166210166223_)
                      (let ((_e166213166231_ (gx#syntax-e _e166210166223_)))
                        (let ((_hd166214166234_ (##car _e166213166231_))
                              (_tl166215166236_ (##cdr _e166213166231_)))
                          (if (gx#stx-pair? _tl166215166236_)
                              (let ((_e166216166239_
                                     (gx#syntax-e _tl166215166236_)))
                                (let ((_hd166217166242_
                                       (##car _e166216166239_))
                                      (_tl166218166244_
                                       (##cdr _e166216166239_)))
                                  (let ((_hd166247_ _hd166217166242_))
                                    (if (gx#stx-pair? _tl166218166244_)
                                        (let ((_e166219166249_
                                               (gx#syntax-e _tl166218166244_)))
                                          (let ((_hd166220166252_
                                                 (##car _e166219166249_))
                                                (_tl166221166254_
                                                 (##cdr _e166219166249_)))
                                            (let ((_expr166257_
                                                   _hd166220166252_))
                                              (if (gx#stx-null?
                                                   _tl166221166254_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd166247_)
                          (cons (gx#core-compile-top-syntax _expr166257_)
                                '())))
              (_E166212166227_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E166212166227_)))))
                                        (_E166212166227_)))))
                              (_E166212166227_))))
                      (_E166212166227_)))))
          (_E166211166259_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx166154_)
        (let* ((_e166155166168_ _stx166154_)
               (_E166157166172_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166155166168_)))
               (_E166156166205_
                (lambda ()
                  (if (gx#stx-pair? _e166155166168_)
                      (let ((_e166158166176_ (gx#syntax-e _e166155166168_)))
                        (let ((_hd166159166179_ (##car _e166158166176_))
                              (_tl166160166181_ (##cdr _e166158166176_)))
                          (if (gx#stx-pair? _tl166160166181_)
                              (let ((_e166161166184_
                                     (gx#syntax-e _tl166160166181_)))
                                (let ((_hd166162166187_
                                       (##car _e166161166184_))
                                      (_tl166163166189_
                                       (##cdr _e166161166184_)))
                                  (let ((_hd166192_ _hd166162166187_))
                                    (if (gx#stx-pair? _tl166163166189_)
                                        (let ((_e166164166194_
                                               (gx#syntax-e _tl166163166189_)))
                                          (let ((_hd166165166197_
                                                 (##car _e166164166194_))
                                                (_tl166166166199_
                                                 (##cdr _e166164166194_)))
                                            (let ((_expr166202_
                                                   _hd166165166197_))
                                              (if (gx#stx-null?
                                                   _tl166166166199_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd166192_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr166202_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E166157166172_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E166157166172_)))))
                                        (_E166157166172_)))))
                              (_E166157166172_))))
                      (_E166157166172_)))))
          (_E166156166205_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx166124_)
        (let* ((_e166125166132_ _stx166124_)
               (_E166127166136_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166125166132_)))
               (_E166126166150_
                (lambda ()
                  (if (gx#stx-pair? _e166125166132_)
                      (let ((_e166128166140_ (gx#syntax-e _e166125166132_)))
                        (let ((_hd166129166143_ (##car _e166128166140_))
                              (_tl166130166145_ (##cdr _e166128166140_)))
                          (let ((_body166148_ _tl166130166145_))
                            (if '#t
                                (cons '%#define-alias _body166148_)
                                (_E166127166136_)))))
                      (_E166127166136_)))))
          (_E166126166150_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx166094_)
        (let* ((_e166095166102_ _stx166094_)
               (_E166097166106_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166095166102_)))
               (_E166096166120_
                (lambda ()
                  (if (gx#stx-pair? _e166095166102_)
                      (let ((_e166098166110_ (gx#syntax-e _e166095166102_)))
                        (let ((_hd166099166113_ (##car _e166098166110_))
                              (_tl166100166115_ (##cdr _e166098166110_)))
                          (let ((_body166118_ _tl166100166115_))
                            (if '#t
                                (cons '%#define-runtime _body166118_)
                                (_E166097166106_)))))
                      (_E166097166106_)))))
          (_E166096166120_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx166064_)
        (let* ((_e166065166072_ _stx166064_)
               (_E166067166076_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166065166072_)))
               (_E166066166090_
                (lambda ()
                  (if (gx#stx-pair? _e166065166072_)
                      (let ((_e166068166080_ (gx#syntax-e _e166065166072_)))
                        (let ((_hd166069166083_ (##car _e166068166080_))
                              (_tl166070166085_ (##cdr _e166068166080_)))
                          (let ((_decls166088_ _tl166070166085_))
                            (if '#t
                                (cons '%#declare _decls166088_)
                                (_E166067166076_)))))
                      (_E166067166076_)))))
          (_E166066166090_))))
    (define gx#core-compile-top-lambda%
      (lambda (_stx166034_)
        (let* ((_e166035166042_ _stx166034_)
               (_E166037166046_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166035166042_)))
               (_E166036166060_
                (lambda ()
                  (if (gx#stx-pair? _e166035166042_)
                      (let ((_e166038166050_ (gx#syntax-e _e166035166042_)))
                        (let ((_hd166039166053_ (##car _e166038166050_))
                              (_tl166040166055_ (##cdr _e166038166050_)))
                          (let ((_clause166058_ _tl166040166055_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause166058_))
                                (_E166037166046_)))))
                      (_E166037166046_)))))
          (_E166036166060_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx165991_)
        (let* ((_e165992166002_ _stx165991_)
               (_E165994166006_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165992166002_)))
               (_E165993166030_
                (lambda ()
                  (if (gx#stx-pair? _e165992166002_)
                      (let ((_e165995166010_ (gx#syntax-e _e165992166002_)))
                        (let ((_hd165996166013_ (##car _e165995166010_))
                              (_tl165997166015_ (##cdr _e165995166010_)))
                          (let ((_hd166018_ _hd165996166013_))
                            (if (gx#stx-pair? _tl165997166015_)
                                (let ((_e165998166020_
                                       (gx#syntax-e _tl165997166015_)))
                                  (let ((_hd165999166023_
                                         (##car _e165998166020_))
                                        (_tl166000166025_
                                         (##cdr _e165998166020_)))
                                    (let ((_body166028_ _hd165999166023_))
                                      (if (gx#stx-null? _tl166000166025_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd166018_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body166028_)
                                                          '()))
                                              (_E165994166006_))
                                          (_E165994166006_)))))
                                (_E165994166006_)))))
                      (_E165994166006_)))))
          (_E165993166030_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx165961_)
        (let* ((_e165962165969_ _stx165961_)
               (_E165964165973_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165962165969_)))
               (_E165963165987_
                (lambda ()
                  (if (gx#stx-pair? _e165962165969_)
                      (let ((_e165965165977_ (gx#syntax-e _e165962165969_)))
                        (let ((_hd165966165980_ (##car _e165965165977_))
                              (_tl165967165982_ (##cdr _e165965165977_)))
                          (let ((_clauses165985_ _tl165967165982_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses165985_))
                                (_E165964165973_)))))
                      (_E165964165973_)))))
          (_E165963165987_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx165896_ _form165897_)
        (let* ((_e165898165911_ _stx165896_)
               (_E165900165915_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165898165911_)))
               (_E165899165947_
                (lambda ()
                  (if (gx#stx-pair? _e165898165911_)
                      (let ((_e165901165919_ (gx#syntax-e _e165898165911_)))
                        (let ((_hd165902165922_ (##car _e165901165919_))
                              (_tl165903165924_ (##cdr _e165901165919_)))
                          (if (gx#stx-pair? _tl165903165924_)
                              (let ((_e165904165927_
                                     (gx#syntax-e _tl165903165924_)))
                                (let ((_hd165905165930_
                                       (##car _e165904165927_))
                                      (_tl165906165932_
                                       (##cdr _e165904165927_)))
                                  (let ((_hd165935_ _hd165905165930_))
                                    (if (gx#stx-pair? _tl165906165932_)
                                        (let ((_e165907165937_
                                               (gx#syntax-e _tl165906165932_)))
                                          (let ((_hd165908165940_
                                                 (##car _e165907165937_))
                                                (_tl165909165942_
                                                 (##cdr _e165907165937_)))
                                            (let ((_body165945_
                                                   _hd165908165940_))
                                              (if (gx#stx-null?
                                                   _tl165909165942_)
                                                  (if '#t
                                                      (cons _form165897_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd165935_)
                          (cons (gx#core-compile-top-syntax _body165945_)
                                '())))
              (_E165900165915_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E165900165915_)))))
                                        (_E165900165915_)))))
                              (_E165900165915_))))
                      (_E165900165915_)))))
          (_E165899165947_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx165954_)
        (let ((_form165956_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx165954_ _form165956_))))
    (define gx#core-compile-top-let-values%
      (lambda _g171237_
        (let ((_g171236_ (##length _g171237_)))
          (cond ((##fx= _g171236_ 1)
                 (apply (lambda (_stx165954_)
                          (gx#core-compile-top-let-values%__0 _stx165954_))
                        _g171237_))
                ((##fx= _g171236_ 2)
                 (apply (lambda (_stx165958_ _form165959_)
                          (gx#core-compile-top-let-values%__%
                           _stx165958_
                           _form165959_))
                        _g171237_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g171237_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx165893_)
        (gx#core-compile-top-let-values%__% _stx165893_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx165891_)
        (gx#core-compile-top-let-values%__% _stx165891_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx165850_)
        (let* ((_e165851165861_ _stx165850_)
               (_E165853165865_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165851165861_)))
               (_E165852165887_
                (lambda ()
                  (if (gx#stx-pair? _e165851165861_)
                      (let ((_e165854165869_ (gx#syntax-e _e165851165861_)))
                        (let ((_hd165855165872_ (##car _e165854165869_))
                              (_tl165856165874_ (##cdr _e165854165869_)))
                          (if (gx#stx-pair? _tl165856165874_)
                              (let ((_e165857165877_
                                     (gx#syntax-e _tl165856165874_)))
                                (let ((_hd165858165880_
                                       (##car _e165857165877_))
                                      (_tl165859165882_
                                       (##cdr _e165857165877_)))
                                  (let ((_e165885_ _hd165858165880_))
                                    (if (gx#stx-null? _tl165859165882_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e165885_)
                                                        '()))
                                            (_E165853165865_))
                                        (_E165853165865_)))))
                              (_E165853165865_))))
                      (_E165853165865_)))))
          (_E165852165887_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx165809_)
        (let* ((_e165810165820_ _stx165809_)
               (_E165812165824_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165810165820_)))
               (_E165811165846_
                (lambda ()
                  (if (gx#stx-pair? _e165810165820_)
                      (let ((_e165813165828_ (gx#syntax-e _e165810165820_)))
                        (let ((_hd165814165831_ (##car _e165813165828_))
                              (_tl165815165833_ (##cdr _e165813165828_)))
                          (if (gx#stx-pair? _tl165815165833_)
                              (let ((_e165816165836_
                                     (gx#syntax-e _tl165815165833_)))
                                (let ((_hd165817165839_
                                       (##car _e165816165836_))
                                      (_tl165818165841_
                                       (##cdr _e165816165836_)))
                                  (let ((_e165844_ _hd165817165839_))
                                    (if (gx#stx-null? _tl165818165841_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e165844_)
                                                        '()))
                                            (_E165812165824_))
                                        (_E165812165824_)))))
                              (_E165812165824_))))
                      (_E165812165824_)))))
          (_E165811165846_))))
    (define gx#core-compile-top-call%
      (lambda (_stx165766_)
        (let* ((_e165767165777_ _stx165766_)
               (_E165769165781_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165767165777_)))
               (_E165768165805_
                (lambda ()
                  (if (gx#stx-pair? _e165767165777_)
                      (let ((_e165770165785_ (gx#syntax-e _e165767165777_)))
                        (let ((_hd165771165788_ (##car _e165770165785_))
                              (_tl165772165790_ (##cdr _e165770165785_)))
                          (if (gx#stx-pair? _tl165772165790_)
                              (let ((_e165773165793_
                                     (gx#syntax-e _tl165772165790_)))
                                (let ((_hd165774165796_
                                       (##car _e165773165793_))
                                      (_tl165775165798_
                                       (##cdr _e165773165793_)))
                                  (let* ((_rator165801_ _hd165774165796_)
                                         (_args165803_ _tl165775165798_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator165801_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args165803_)))
                                        (_E165769165781_)))))
                              (_E165769165781_))))
                      (_E165769165781_)))))
          (_E165768165805_))))
    (define gx#core-compile-top-if%
      (lambda (_stx165699_)
        (let* ((_e165700165716_ _stx165699_)
               (_E165702165720_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165700165716_)))
               (_E165701165762_
                (lambda ()
                  (if (gx#stx-pair? _e165700165716_)
                      (let ((_e165703165724_ (gx#syntax-e _e165700165716_)))
                        (let ((_hd165704165727_ (##car _e165703165724_))
                              (_tl165705165729_ (##cdr _e165703165724_)))
                          (if (gx#stx-pair? _tl165705165729_)
                              (let ((_e165706165732_
                                     (gx#syntax-e _tl165705165729_)))
                                (let ((_hd165707165735_
                                       (##car _e165706165732_))
                                      (_tl165708165737_
                                       (##cdr _e165706165732_)))
                                  (let ((_test165740_ _hd165707165735_))
                                    (if (gx#stx-pair? _tl165708165737_)
                                        (let ((_e165709165742_
                                               (gx#syntax-e _tl165708165737_)))
                                          (let ((_hd165710165745_
                                                 (##car _e165709165742_))
                                                (_tl165711165747_
                                                 (##cdr _e165709165742_)))
                                            (let ((_K165750_ _hd165710165745_))
                                              (if (gx#stx-pair?
                                                   _tl165711165747_)
                                                  (let ((_e165712165752_
                                                         (gx#syntax-e
                                                          _tl165711165747_)))
                                                    (let ((_hd165713165755_
                                                           (##car _e165712165752_))
                                                          (_tl165714165757_
                                                           (##cdr _e165712165752_)))
                                                      (let ((_E165760_
                                                             _hd165713165755_))
                                                        (if (gx#stx-null?
                                                             _tl165714165757_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test165740_)
                                    (cons (gx#core-compile-top-syntax
                                           _K165750_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E165760_)
                                                '()))))
                        (_E165702165720_))
                    (_E165702165720_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E165702165720_)))))
                                        (_E165702165720_)))))
                              (_E165702165720_))))
                      (_E165702165720_)))))
          (_E165701165762_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx165658_)
        (let* ((_e165659165669_ _stx165658_)
               (_E165661165673_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165659165669_)))
               (_E165660165695_
                (lambda ()
                  (if (gx#stx-pair? _e165659165669_)
                      (let ((_e165662165677_ (gx#syntax-e _e165659165669_)))
                        (let ((_hd165663165680_ (##car _e165662165677_))
                              (_tl165664165682_ (##cdr _e165662165677_)))
                          (if (gx#stx-pair? _tl165664165682_)
                              (let ((_e165665165685_
                                     (gx#syntax-e _tl165664165682_)))
                                (let ((_hd165666165688_
                                       (##car _e165665165685_))
                                      (_tl165667165690_
                                       (##cdr _e165665165685_)))
                                  (let ((_id165693_ _hd165666165688_))
                                    (if (gx#stx-null? _tl165667165690_)
                                        (if (gx#identifier? _id165693_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id165693_)
                                                        '()))
                                            (_E165661165673_))
                                        (_E165661165673_)))))
                              (_E165661165673_))))
                      (_E165661165673_)))))
          (_E165660165695_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx165604_)
        (let* ((_e165605165618_ _stx165604_)
               (_E165607165622_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165605165618_)))
               (_E165606165654_
                (lambda ()
                  (if (gx#stx-pair? _e165605165618_)
                      (let ((_e165608165626_ (gx#syntax-e _e165605165618_)))
                        (let ((_hd165609165629_ (##car _e165608165626_))
                              (_tl165610165631_ (##cdr _e165608165626_)))
                          (if (gx#stx-pair? _tl165610165631_)
                              (let ((_e165611165634_
                                     (gx#syntax-e _tl165610165631_)))
                                (let ((_hd165612165637_
                                       (##car _e165611165634_))
                                      (_tl165613165639_
                                       (##cdr _e165611165634_)))
                                  (let ((_id165642_ _hd165612165637_))
                                    (if (gx#stx-pair? _tl165613165639_)
                                        (let ((_e165614165644_
                                               (gx#syntax-e _tl165613165639_)))
                                          (let ((_hd165615165647_
                                                 (##car _e165614165644_))
                                                (_tl165616165649_
                                                 (##cdr _e165614165644_)))
                                            (let ((_expr165652_
                                                   _hd165615165647_))
                                              (if (gx#stx-null?
                                                   _tl165616165649_)
                                                  (if (gx#identifier?
                                                       _id165642_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id165642_)
                          (cons (gx#core-compile-top-syntax _expr165652_)
                                '())))
              (_E165607165622_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E165607165622_)))))
                                        (_E165607165622_)))))
                              (_E165607165622_))))
                      (_E165607165622_)))))
          (_E165606165654_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id165599_)
        (let ((_$e165601_ (gx#resolve-identifier__0 _id165599_)))
          (if _$e165601_
              (##unchecked-structure-ref _$e165601_ '1 gx#binding::t '#f)
              _id165599_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd165597_)
        (if (gx#identifier? _hd165597_)
            (gx#core-compile-top-runtime-ref _hd165597_)
            '#f)))))
