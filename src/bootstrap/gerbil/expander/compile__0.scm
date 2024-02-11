(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1707651234)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx166706_)
        (let* ((_e166707166714_ _stx166706_)
               (_E166709166718_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166707166714_)))
               (_E166708166732_
                (lambda ()
                  (if (gx#stx-pair? _e166707166714_)
                      (let ((_e166710166722_ (gx#syntax-e _e166707166714_)))
                        (let ((_hd166711166725_ (##car _e166710166722_))
                              (_tl166712166727_ (##cdr _e166710166722_)))
                          (let ((_form166730_ _hd166711166725_))
                            (if '#t
                                (let* ((__self171203
                                        (gx#syntax-local-e__0 _form166730_))
                                       (__method171204
                                        (method-ref
                                         __self171203
                                         'compile-top-syntax)))
                                  (if __method171204
                                      (__method171204 __self171203 _stx166706_)
                                      (error '"Missing method"
                                             __self171203
                                             'compile-top-syntax)))
                                (_E166709166718_)))))
                      (_E166709166718_)))))
          (_E166708166732_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self166666_ _stx166667_)
        (let* ((_self166668166676_ _self166666_)
               (_E166670166680_
                (lambda () (error '"No clause matching" _self166668166676_)))
               (_K166671166692_
                (lambda (_K166683_)
                  (let ((_$e166685_ (gx#stx-source _stx166667_)))
                    (if _$e166685_
                        ((lambda (_g166687166689_)
                           (gx#stx-wrap-source
                            (_K166683_ _stx166667_)
                            _g166687166689_))
                         _$e166685_)
                        (_K166683_ _stx166667_))))))
          (if (class-instance? gx#core-expander::t _self166668166676_)
              (let* ((_e166672166695_
                      (unchecked-slot-ref _self166668166676_ 'e))
                     (_e166673166698_
                      (unchecked-slot-ref _self166668166676_ 'id))
                     (_e166674166701_
                      (unchecked-slot-ref _self166668166676_ 'compile-top))
                     (_K166704_ _e166674166701_))
                (_K166671166692_ _K166704_))
              (_E166670166680_)))))
    (bind-method!
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx166540_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx166540_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx166510_)
        (let* ((_e166511166518_ _stx166510_)
               (_E166513166522_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166511166518_)))
               (_E166512166536_
                (lambda ()
                  (if (gx#stx-pair? _e166511166518_)
                      (let ((_e166514166526_ (gx#syntax-e _e166511166518_)))
                        (let ((_hd166515166529_ (##car _e166514166526_))
                              (_tl166516166531_ (##cdr _e166514166526_)))
                          (let ((_body166534_ _tl166516166531_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body166534_))
                                (_E166513166522_)))))
                      (_E166513166522_)))))
          (_E166512166536_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx166479_)
        (let* ((_e166480166487_ _stx166479_)
               (_E166482166491_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166480166487_)))
               (_E166481166506_
                (lambda ()
                  (if (gx#stx-pair? _e166480166487_)
                      (let ((_e166483166495_ (gx#syntax-e _e166480166487_)))
                        (let ((_hd166484166498_ (##car _e166483166495_))
                              (_tl166485166500_ (##cdr _e166483166495_)))
                          (let ((_body166503_ _tl166485166500_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body166503_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E166482166491_)))))
                      (_E166482166491_)))))
          (_E166481166506_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_stx166449_)
        (let* ((_e166450166457_ _stx166449_)
               (_E166452166461_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166450166457_)))
               (_E166451166475_
                (lambda ()
                  (if (gx#stx-pair? _e166450166457_)
                      (let ((_e166453166465_ (gx#syntax-e _e166450166457_)))
                        (let ((_hd166454166468_ (##car _e166453166465_))
                              (_tl166455166470_ (##cdr _e166453166465_)))
                          (let ((_body166473_ _tl166455166470_))
                            (if '#t
                                (cons '%#begin-foreign _body166473_)
                                (_E166452166461_)))))
                      (_E166452166461_)))))
          (_E166451166475_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_stx166395_)
        (let* ((_e166396166409_ _stx166395_)
               (_E166398166413_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166396166409_)))
               (_E166397166445_
                (lambda ()
                  (if (gx#stx-pair? _e166396166409_)
                      (let ((_e166399166417_ (gx#syntax-e _e166396166409_)))
                        (let ((_hd166400166420_ (##car _e166399166417_))
                              (_tl166401166422_ (##cdr _e166399166417_)))
                          (if (gx#stx-pair? _tl166401166422_)
                              (let ((_e166402166425_
                                     (gx#syntax-e _tl166401166422_)))
                                (let ((_hd166403166428_
                                       (##car _e166402166425_))
                                      (_tl166404166430_
                                       (##cdr _e166402166425_)))
                                  (let ((_ann166433_ _hd166403166428_))
                                    (if (gx#stx-pair? _tl166404166430_)
                                        (let ((_e166405166435_
                                               (gx#syntax-e _tl166404166430_)))
                                          (let ((_hd166406166438_
                                                 (##car _e166405166435_))
                                                (_tl166407166440_
                                                 (##cdr _e166405166435_)))
                                            (let ((_expr166443_
                                                   _hd166406166438_))
                                              (if (gx#stx-null?
                                                   _tl166407166440_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr166443_)
                                                      (_E166398166413_))
                                                  (_E166398166413_)))))
                                        (_E166398166413_)))))
                              (_E166398166413_))))
                      (_E166398166413_)))))
          (_E166397166445_))))
    (define gx#core-compile-top-import%
      (lambda (_stx166365_)
        (let* ((_e166366166373_ _stx166365_)
               (_E166368166377_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166366166373_)))
               (_E166367166391_
                (lambda ()
                  (if (gx#stx-pair? _e166366166373_)
                      (let ((_e166369166381_ (gx#syntax-e _e166366166373_)))
                        (let ((_hd166370166384_ (##car _e166369166381_))
                              (_tl166371166386_ (##cdr _e166369166381_)))
                          (let ((_body166389_ _tl166371166386_))
                            (if '#t
                                (cons '%#import _body166389_)
                                (_E166368166377_)))))
                      (_E166368166377_)))))
          (_E166367166391_))))
    (define gx#core-compile-top-module%
      (lambda (_stx166322_)
        (let* ((_e166323166333_ _stx166322_)
               (_E166325166337_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166323166333_)))
               (_E166324166361_
                (lambda ()
                  (if (gx#stx-pair? _e166323166333_)
                      (let ((_e166326166341_ (gx#syntax-e _e166323166333_)))
                        (let ((_hd166327166344_ (##car _e166326166341_))
                              (_tl166328166346_ (##cdr _e166326166341_)))
                          (if (gx#stx-pair? _tl166328166346_)
                              (let ((_e166329166349_
                                     (gx#syntax-e _tl166328166346_)))
                                (let ((_hd166330166352_
                                       (##car _e166329166349_))
                                      (_tl166331166354_
                                       (##cdr _e166329166349_)))
                                  (let* ((_hd166357_ _hd166330166352_)
                                         (_body166359_ _tl166331166354_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (let ((__obj171205
                                                           (gx#syntax-local-e__0
                                                            _hd166357_)))
                                                      (if (##structure-direct-instance-of?
                                                           __obj171205
                                                           'gx#expander-context::t)
                                                          (##unchecked-structure-ref
                                                           __obj171205
                                                           '1
                                                           gx#expander-context::t
                                                           '#f)
                                                          (class-slot-ref
                                                           gx#expander-context::t
                                                           __obj171205
                                                           'id)))
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body166359_)))
                                        (_E166325166337_)))))
                              (_E166325166337_))))
                      (_E166325166337_)))))
          (_E166324166361_))))
    (define gx#core-compile-top-export%
      (lambda (_stx166292_)
        (let* ((_e166293166300_ _stx166292_)
               (_E166295166304_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166293166300_)))
               (_E166294166318_
                (lambda ()
                  (if (gx#stx-pair? _e166293166300_)
                      (let ((_e166296166308_ (gx#syntax-e _e166293166300_)))
                        (let ((_hd166297166311_ (##car _e166296166308_))
                              (_tl166298166313_ (##cdr _e166296166308_)))
                          (let ((_body166316_ _tl166298166313_))
                            (if '#t
                                (cons '%#export _body166316_)
                                (_E166295166304_)))))
                      (_E166295166304_)))))
          (_E166294166318_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx166262_)
        (let* ((_e166263166270_ _stx166262_)
               (_E166265166274_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166263166270_)))
               (_E166264166288_
                (lambda ()
                  (if (gx#stx-pair? _e166263166270_)
                      (let ((_e166266166278_ (gx#syntax-e _e166263166270_)))
                        (let ((_hd166267166281_ (##car _e166266166278_))
                              (_tl166268166283_ (##cdr _e166266166278_)))
                          (let ((_body166286_ _tl166268166283_))
                            (if '#t
                                (cons '%#provide _body166286_)
                                (_E166265166274_)))))
                      (_E166265166274_)))))
          (_E166264166288_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx166232_)
        (let* ((_e166233166240_ _stx166232_)
               (_E166235166244_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166233166240_)))
               (_E166234166258_
                (lambda ()
                  (if (gx#stx-pair? _e166233166240_)
                      (let ((_e166236166248_ (gx#syntax-e _e166233166240_)))
                        (let ((_hd166237166251_ (##car _e166236166248_))
                              (_tl166238166253_ (##cdr _e166236166248_)))
                          (let ((_body166256_ _tl166238166253_))
                            (if '#t
                                (cons '%#extern _body166256_)
                                (_E166235166244_)))))
                      (_E166235166244_)))))
          (_E166234166258_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx166178_)
        (let* ((_e166179166192_ _stx166178_)
               (_E166181166196_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166179166192_)))
               (_E166180166228_
                (lambda ()
                  (if (gx#stx-pair? _e166179166192_)
                      (let ((_e166182166200_ (gx#syntax-e _e166179166192_)))
                        (let ((_hd166183166203_ (##car _e166182166200_))
                              (_tl166184166205_ (##cdr _e166182166200_)))
                          (if (gx#stx-pair? _tl166184166205_)
                              (let ((_e166185166208_
                                     (gx#syntax-e _tl166184166205_)))
                                (let ((_hd166186166211_
                                       (##car _e166185166208_))
                                      (_tl166187166213_
                                       (##cdr _e166185166208_)))
                                  (let ((_hd166216_ _hd166186166211_))
                                    (if (gx#stx-pair? _tl166187166213_)
                                        (let ((_e166188166218_
                                               (gx#syntax-e _tl166187166213_)))
                                          (let ((_hd166189166221_
                                                 (##car _e166188166218_))
                                                (_tl166190166223_
                                                 (##cdr _e166188166218_)))
                                            (let ((_expr166226_
                                                   _hd166189166221_))
                                              (if (gx#stx-null?
                                                   _tl166190166223_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd166216_)
                          (cons (gx#core-compile-top-syntax _expr166226_)
                                '())))
              (_E166181166196_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E166181166196_)))))
                                        (_E166181166196_)))))
                              (_E166181166196_))))
                      (_E166181166196_)))))
          (_E166180166228_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx166123_)
        (let* ((_e166124166137_ _stx166123_)
               (_E166126166141_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166124166137_)))
               (_E166125166174_
                (lambda ()
                  (if (gx#stx-pair? _e166124166137_)
                      (let ((_e166127166145_ (gx#syntax-e _e166124166137_)))
                        (let ((_hd166128166148_ (##car _e166127166145_))
                              (_tl166129166150_ (##cdr _e166127166145_)))
                          (if (gx#stx-pair? _tl166129166150_)
                              (let ((_e166130166153_
                                     (gx#syntax-e _tl166129166150_)))
                                (let ((_hd166131166156_
                                       (##car _e166130166153_))
                                      (_tl166132166158_
                                       (##cdr _e166130166153_)))
                                  (let ((_hd166161_ _hd166131166156_))
                                    (if (gx#stx-pair? _tl166132166158_)
                                        (let ((_e166133166163_
                                               (gx#syntax-e _tl166132166158_)))
                                          (let ((_hd166134166166_
                                                 (##car _e166133166163_))
                                                (_tl166135166168_
                                                 (##cdr _e166133166163_)))
                                            (let ((_expr166171_
                                                   _hd166134166166_))
                                              (if (gx#stx-null?
                                                   _tl166135166168_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd166161_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr166171_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E166126166141_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E166126166141_)))))
                                        (_E166126166141_)))))
                              (_E166126166141_))))
                      (_E166126166141_)))))
          (_E166125166174_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx166093_)
        (let* ((_e166094166101_ _stx166093_)
               (_E166096166105_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166094166101_)))
               (_E166095166119_
                (lambda ()
                  (if (gx#stx-pair? _e166094166101_)
                      (let ((_e166097166109_ (gx#syntax-e _e166094166101_)))
                        (let ((_hd166098166112_ (##car _e166097166109_))
                              (_tl166099166114_ (##cdr _e166097166109_)))
                          (let ((_body166117_ _tl166099166114_))
                            (if '#t
                                (cons '%#define-alias _body166117_)
                                (_E166096166105_)))))
                      (_E166096166105_)))))
          (_E166095166119_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx166063_)
        (let* ((_e166064166071_ _stx166063_)
               (_E166066166075_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166064166071_)))
               (_E166065166089_
                (lambda ()
                  (if (gx#stx-pair? _e166064166071_)
                      (let ((_e166067166079_ (gx#syntax-e _e166064166071_)))
                        (let ((_hd166068166082_ (##car _e166067166079_))
                              (_tl166069166084_ (##cdr _e166067166079_)))
                          (let ((_body166087_ _tl166069166084_))
                            (if '#t
                                (cons '%#define-runtime _body166087_)
                                (_E166066166075_)))))
                      (_E166066166075_)))))
          (_E166065166089_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx166033_)
        (let* ((_e166034166041_ _stx166033_)
               (_E166036166045_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166034166041_)))
               (_E166035166059_
                (lambda ()
                  (if (gx#stx-pair? _e166034166041_)
                      (let ((_e166037166049_ (gx#syntax-e _e166034166041_)))
                        (let ((_hd166038166052_ (##car _e166037166049_))
                              (_tl166039166054_ (##cdr _e166037166049_)))
                          (let ((_decls166057_ _tl166039166054_))
                            (if '#t
                                (cons '%#declare _decls166057_)
                                (_E166036166045_)))))
                      (_E166036166045_)))))
          (_E166035166059_))))
    (define gx#core-compile-top-lambda%
      (lambda (_stx166003_)
        (let* ((_e166004166011_ _stx166003_)
               (_E166006166015_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166004166011_)))
               (_E166005166029_
                (lambda ()
                  (if (gx#stx-pair? _e166004166011_)
                      (let ((_e166007166019_ (gx#syntax-e _e166004166011_)))
                        (let ((_hd166008166022_ (##car _e166007166019_))
                              (_tl166009166024_ (##cdr _e166007166019_)))
                          (let ((_clause166027_ _tl166009166024_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause166027_))
                                (_E166006166015_)))))
                      (_E166006166015_)))))
          (_E166005166029_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx165960_)
        (let* ((_e165961165971_ _stx165960_)
               (_E165963165975_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165961165971_)))
               (_E165962165999_
                (lambda ()
                  (if (gx#stx-pair? _e165961165971_)
                      (let ((_e165964165979_ (gx#syntax-e _e165961165971_)))
                        (let ((_hd165965165982_ (##car _e165964165979_))
                              (_tl165966165984_ (##cdr _e165964165979_)))
                          (let ((_hd165987_ _hd165965165982_))
                            (if (gx#stx-pair? _tl165966165984_)
                                (let ((_e165967165989_
                                       (gx#syntax-e _tl165966165984_)))
                                  (let ((_hd165968165992_
                                         (##car _e165967165989_))
                                        (_tl165969165994_
                                         (##cdr _e165967165989_)))
                                    (let ((_body165997_ _hd165968165992_))
                                      (if (gx#stx-null? _tl165969165994_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd165987_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body165997_)
                                                          '()))
                                              (_E165963165975_))
                                          (_E165963165975_)))))
                                (_E165963165975_)))))
                      (_E165963165975_)))))
          (_E165962165999_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx165930_)
        (let* ((_e165931165938_ _stx165930_)
               (_E165933165942_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165931165938_)))
               (_E165932165956_
                (lambda ()
                  (if (gx#stx-pair? _e165931165938_)
                      (let ((_e165934165946_ (gx#syntax-e _e165931165938_)))
                        (let ((_hd165935165949_ (##car _e165934165946_))
                              (_tl165936165951_ (##cdr _e165934165946_)))
                          (let ((_clauses165954_ _tl165936165951_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses165954_))
                                (_E165933165942_)))))
                      (_E165933165942_)))))
          (_E165932165956_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx165865_ _form165866_)
        (let* ((_e165867165880_ _stx165865_)
               (_E165869165884_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165867165880_)))
               (_E165868165916_
                (lambda ()
                  (if (gx#stx-pair? _e165867165880_)
                      (let ((_e165870165888_ (gx#syntax-e _e165867165880_)))
                        (let ((_hd165871165891_ (##car _e165870165888_))
                              (_tl165872165893_ (##cdr _e165870165888_)))
                          (if (gx#stx-pair? _tl165872165893_)
                              (let ((_e165873165896_
                                     (gx#syntax-e _tl165872165893_)))
                                (let ((_hd165874165899_
                                       (##car _e165873165896_))
                                      (_tl165875165901_
                                       (##cdr _e165873165896_)))
                                  (let ((_hd165904_ _hd165874165899_))
                                    (if (gx#stx-pair? _tl165875165901_)
                                        (let ((_e165876165906_
                                               (gx#syntax-e _tl165875165901_)))
                                          (let ((_hd165877165909_
                                                 (##car _e165876165906_))
                                                (_tl165878165911_
                                                 (##cdr _e165876165906_)))
                                            (let ((_body165914_
                                                   _hd165877165909_))
                                              (if (gx#stx-null?
                                                   _tl165878165911_)
                                                  (if '#t
                                                      (cons _form165866_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd165904_)
                          (cons (gx#core-compile-top-syntax _body165914_)
                                '())))
              (_E165869165884_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E165869165884_)))))
                                        (_E165869165884_)))))
                              (_E165869165884_))))
                      (_E165869165884_)))))
          (_E165868165916_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx165923_)
        (let ((_form165925_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx165923_ _form165925_))))
    (define gx#core-compile-top-let-values%
      (lambda _g171207_
        (let ((_g171206_ (##length _g171207_)))
          (cond ((##fx= _g171206_ 1)
                 (apply (lambda (_stx165923_)
                          (gx#core-compile-top-let-values%__0 _stx165923_))
                        _g171207_))
                ((##fx= _g171206_ 2)
                 (apply (lambda (_stx165927_ _form165928_)
                          (gx#core-compile-top-let-values%__%
                           _stx165927_
                           _form165928_))
                        _g171207_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g171207_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx165862_)
        (gx#core-compile-top-let-values%__% _stx165862_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx165860_)
        (gx#core-compile-top-let-values%__% _stx165860_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx165819_)
        (let* ((_e165820165830_ _stx165819_)
               (_E165822165834_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165820165830_)))
               (_E165821165856_
                (lambda ()
                  (if (gx#stx-pair? _e165820165830_)
                      (let ((_e165823165838_ (gx#syntax-e _e165820165830_)))
                        (let ((_hd165824165841_ (##car _e165823165838_))
                              (_tl165825165843_ (##cdr _e165823165838_)))
                          (if (gx#stx-pair? _tl165825165843_)
                              (let ((_e165826165846_
                                     (gx#syntax-e _tl165825165843_)))
                                (let ((_hd165827165849_
                                       (##car _e165826165846_))
                                      (_tl165828165851_
                                       (##cdr _e165826165846_)))
                                  (let ((_e165854_ _hd165827165849_))
                                    (if (gx#stx-null? _tl165828165851_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e165854_)
                                                        '()))
                                            (_E165822165834_))
                                        (_E165822165834_)))))
                              (_E165822165834_))))
                      (_E165822165834_)))))
          (_E165821165856_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx165778_)
        (let* ((_e165779165789_ _stx165778_)
               (_E165781165793_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165779165789_)))
               (_E165780165815_
                (lambda ()
                  (if (gx#stx-pair? _e165779165789_)
                      (let ((_e165782165797_ (gx#syntax-e _e165779165789_)))
                        (let ((_hd165783165800_ (##car _e165782165797_))
                              (_tl165784165802_ (##cdr _e165782165797_)))
                          (if (gx#stx-pair? _tl165784165802_)
                              (let ((_e165785165805_
                                     (gx#syntax-e _tl165784165802_)))
                                (let ((_hd165786165808_
                                       (##car _e165785165805_))
                                      (_tl165787165810_
                                       (##cdr _e165785165805_)))
                                  (let ((_e165813_ _hd165786165808_))
                                    (if (gx#stx-null? _tl165787165810_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e165813_)
                                                        '()))
                                            (_E165781165793_))
                                        (_E165781165793_)))))
                              (_E165781165793_))))
                      (_E165781165793_)))))
          (_E165780165815_))))
    (define gx#core-compile-top-call%
      (lambda (_stx165735_)
        (let* ((_e165736165746_ _stx165735_)
               (_E165738165750_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165736165746_)))
               (_E165737165774_
                (lambda ()
                  (if (gx#stx-pair? _e165736165746_)
                      (let ((_e165739165754_ (gx#syntax-e _e165736165746_)))
                        (let ((_hd165740165757_ (##car _e165739165754_))
                              (_tl165741165759_ (##cdr _e165739165754_)))
                          (if (gx#stx-pair? _tl165741165759_)
                              (let ((_e165742165762_
                                     (gx#syntax-e _tl165741165759_)))
                                (let ((_hd165743165765_
                                       (##car _e165742165762_))
                                      (_tl165744165767_
                                       (##cdr _e165742165762_)))
                                  (let* ((_rator165770_ _hd165743165765_)
                                         (_args165772_ _tl165744165767_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator165770_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args165772_)))
                                        (_E165738165750_)))))
                              (_E165738165750_))))
                      (_E165738165750_)))))
          (_E165737165774_))))
    (define gx#core-compile-top-if%
      (lambda (_stx165668_)
        (let* ((_e165669165685_ _stx165668_)
               (_E165671165689_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165669165685_)))
               (_E165670165731_
                (lambda ()
                  (if (gx#stx-pair? _e165669165685_)
                      (let ((_e165672165693_ (gx#syntax-e _e165669165685_)))
                        (let ((_hd165673165696_ (##car _e165672165693_))
                              (_tl165674165698_ (##cdr _e165672165693_)))
                          (if (gx#stx-pair? _tl165674165698_)
                              (let ((_e165675165701_
                                     (gx#syntax-e _tl165674165698_)))
                                (let ((_hd165676165704_
                                       (##car _e165675165701_))
                                      (_tl165677165706_
                                       (##cdr _e165675165701_)))
                                  (let ((_test165709_ _hd165676165704_))
                                    (if (gx#stx-pair? _tl165677165706_)
                                        (let ((_e165678165711_
                                               (gx#syntax-e _tl165677165706_)))
                                          (let ((_hd165679165714_
                                                 (##car _e165678165711_))
                                                (_tl165680165716_
                                                 (##cdr _e165678165711_)))
                                            (let ((_K165719_ _hd165679165714_))
                                              (if (gx#stx-pair?
                                                   _tl165680165716_)
                                                  (let ((_e165681165721_
                                                         (gx#syntax-e
                                                          _tl165680165716_)))
                                                    (let ((_hd165682165724_
                                                           (##car _e165681165721_))
                                                          (_tl165683165726_
                                                           (##cdr _e165681165721_)))
                                                      (let ((_E165729_
                                                             _hd165682165724_))
                                                        (if (gx#stx-null?
                                                             _tl165683165726_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test165709_)
                                    (cons (gx#core-compile-top-syntax
                                           _K165719_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E165729_)
                                                '()))))
                        (_E165671165689_))
                    (_E165671165689_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E165671165689_)))))
                                        (_E165671165689_)))))
                              (_E165671165689_))))
                      (_E165671165689_)))))
          (_E165670165731_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx165627_)
        (let* ((_e165628165638_ _stx165627_)
               (_E165630165642_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165628165638_)))
               (_E165629165664_
                (lambda ()
                  (if (gx#stx-pair? _e165628165638_)
                      (let ((_e165631165646_ (gx#syntax-e _e165628165638_)))
                        (let ((_hd165632165649_ (##car _e165631165646_))
                              (_tl165633165651_ (##cdr _e165631165646_)))
                          (if (gx#stx-pair? _tl165633165651_)
                              (let ((_e165634165654_
                                     (gx#syntax-e _tl165633165651_)))
                                (let ((_hd165635165657_
                                       (##car _e165634165654_))
                                      (_tl165636165659_
                                       (##cdr _e165634165654_)))
                                  (let ((_id165662_ _hd165635165657_))
                                    (if (gx#stx-null? _tl165636165659_)
                                        (if (gx#identifier? _id165662_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id165662_)
                                                        '()))
                                            (_E165630165642_))
                                        (_E165630165642_)))))
                              (_E165630165642_))))
                      (_E165630165642_)))))
          (_E165629165664_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx165573_)
        (let* ((_e165574165587_ _stx165573_)
               (_E165576165591_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165574165587_)))
               (_E165575165623_
                (lambda ()
                  (if (gx#stx-pair? _e165574165587_)
                      (let ((_e165577165595_ (gx#syntax-e _e165574165587_)))
                        (let ((_hd165578165598_ (##car _e165577165595_))
                              (_tl165579165600_ (##cdr _e165577165595_)))
                          (if (gx#stx-pair? _tl165579165600_)
                              (let ((_e165580165603_
                                     (gx#syntax-e _tl165579165600_)))
                                (let ((_hd165581165606_
                                       (##car _e165580165603_))
                                      (_tl165582165608_
                                       (##cdr _e165580165603_)))
                                  (let ((_id165611_ _hd165581165606_))
                                    (if (gx#stx-pair? _tl165582165608_)
                                        (let ((_e165583165613_
                                               (gx#syntax-e _tl165582165608_)))
                                          (let ((_hd165584165616_
                                                 (##car _e165583165613_))
                                                (_tl165585165618_
                                                 (##cdr _e165583165613_)))
                                            (let ((_expr165621_
                                                   _hd165584165616_))
                                              (if (gx#stx-null?
                                                   _tl165585165618_)
                                                  (if (gx#identifier?
                                                       _id165611_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id165611_)
                          (cons (gx#core-compile-top-syntax _expr165621_)
                                '())))
              (_E165576165591_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E165576165591_)))))
                                        (_E165576165591_)))))
                              (_E165576165591_))))
                      (_E165576165591_)))))
          (_E165575165623_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id165568_)
        (let ((_$e165570_ (gx#resolve-identifier__0 _id165568_)))
          (if _$e165570_ (unchecked-slot-ref _$e165570_ 'id) _id165568_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd165566_)
        (if (gx#identifier? _hd165566_)
            (gx#core-compile-top-runtime-ref _hd165566_)
            '#f)))))
