(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1707647933)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx166827_)
        (let* ((_e166828166835_ _stx166827_)
               (_E166830166839_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166828166835_)))
               (_E166829166853_
                (lambda ()
                  (if (gx#stx-pair? _e166828166835_)
                      (let ((_e166831166843_ (gx#syntax-e _e166828166835_)))
                        (let ((_hd166832166846_ (##car _e166831166843_))
                              (_tl166833166848_ (##cdr _e166831166843_)))
                          (let ((_form166851_ _hd166832166846_))
                            (if '#t
                                (let* ((__self171324
                                        (gx#syntax-local-e__0 _form166851_))
                                       (__method171325
                                        (method-ref
                                         __self171324
                                         'compile-top-syntax)))
                                  (if __method171325
                                      (__method171325 __self171324 _stx166827_)
                                      (error '"Missing method"
                                             __self171324
                                             'compile-top-syntax)))
                                (_E166830166839_)))))
                      (_E166830166839_)))))
          (_E166829166853_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self166787_ _stx166788_)
        (let* ((_self166789166797_ _self166787_)
               (_E166791166801_
                (lambda () (error '"No clause matching" _self166789166797_)))
               (_K166792166813_
                (lambda (_K166804_)
                  (let ((_$e166806_ (gx#stx-source _stx166788_)))
                    (if _$e166806_
                        ((lambda (_g166808166810_)
                           (gx#stx-wrap-source
                            (_K166804_ _stx166788_)
                            _g166808166810_))
                         _$e166806_)
                        (_K166804_ _stx166788_))))))
          (if (class-instance? gx#core-expander::t _self166789166797_)
              (let* ((_e166793166816_
                      (unchecked-slot-ref _self166789166797_ 'e))
                     (_e166794166819_
                      (unchecked-slot-ref _self166789166797_ 'id))
                     (_e166795166822_
                      (unchecked-slot-ref _self166789166797_ 'compile-top))
                     (_K166825_ _e166795166822_))
                (_K166792166813_ _K166825_))
              (_E166791166801_)))))
    (bind-method!
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx166661_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx166661_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx166631_)
        (let* ((_e166632166639_ _stx166631_)
               (_E166634166643_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166632166639_)))
               (_E166633166657_
                (lambda ()
                  (if (gx#stx-pair? _e166632166639_)
                      (let ((_e166635166647_ (gx#syntax-e _e166632166639_)))
                        (let ((_hd166636166650_ (##car _e166635166647_))
                              (_tl166637166652_ (##cdr _e166635166647_)))
                          (let ((_body166655_ _tl166637166652_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body166655_))
                                (_E166634166643_)))))
                      (_E166634166643_)))))
          (_E166633166657_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx166600_)
        (let* ((_e166601166608_ _stx166600_)
               (_E166603166612_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166601166608_)))
               (_E166602166627_
                (lambda ()
                  (if (gx#stx-pair? _e166601166608_)
                      (let ((_e166604166616_ (gx#syntax-e _e166601166608_)))
                        (let ((_hd166605166619_ (##car _e166604166616_))
                              (_tl166606166621_ (##cdr _e166604166616_)))
                          (let ((_body166624_ _tl166606166621_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body166624_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E166603166612_)))))
                      (_E166603166612_)))))
          (_E166602166627_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_stx166570_)
        (let* ((_e166571166578_ _stx166570_)
               (_E166573166582_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166571166578_)))
               (_E166572166596_
                (lambda ()
                  (if (gx#stx-pair? _e166571166578_)
                      (let ((_e166574166586_ (gx#syntax-e _e166571166578_)))
                        (let ((_hd166575166589_ (##car _e166574166586_))
                              (_tl166576166591_ (##cdr _e166574166586_)))
                          (let ((_body166594_ _tl166576166591_))
                            (if '#t
                                (cons '%#begin-foreign _body166594_)
                                (_E166573166582_)))))
                      (_E166573166582_)))))
          (_E166572166596_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_stx166516_)
        (let* ((_e166517166530_ _stx166516_)
               (_E166519166534_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166517166530_)))
               (_E166518166566_
                (lambda ()
                  (if (gx#stx-pair? _e166517166530_)
                      (let ((_e166520166538_ (gx#syntax-e _e166517166530_)))
                        (let ((_hd166521166541_ (##car _e166520166538_))
                              (_tl166522166543_ (##cdr _e166520166538_)))
                          (if (gx#stx-pair? _tl166522166543_)
                              (let ((_e166523166546_
                                     (gx#syntax-e _tl166522166543_)))
                                (let ((_hd166524166549_
                                       (##car _e166523166546_))
                                      (_tl166525166551_
                                       (##cdr _e166523166546_)))
                                  (let ((_ann166554_ _hd166524166549_))
                                    (if (gx#stx-pair? _tl166525166551_)
                                        (let ((_e166526166556_
                                               (gx#syntax-e _tl166525166551_)))
                                          (let ((_hd166527166559_
                                                 (##car _e166526166556_))
                                                (_tl166528166561_
                                                 (##cdr _e166526166556_)))
                                            (let ((_expr166564_
                                                   _hd166527166559_))
                                              (if (gx#stx-null?
                                                   _tl166528166561_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr166564_)
                                                      (_E166519166534_))
                                                  (_E166519166534_)))))
                                        (_E166519166534_)))))
                              (_E166519166534_))))
                      (_E166519166534_)))))
          (_E166518166566_))))
    (define gx#core-compile-top-import%
      (lambda (_stx166486_)
        (let* ((_e166487166494_ _stx166486_)
               (_E166489166498_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166487166494_)))
               (_E166488166512_
                (lambda ()
                  (if (gx#stx-pair? _e166487166494_)
                      (let ((_e166490166502_ (gx#syntax-e _e166487166494_)))
                        (let ((_hd166491166505_ (##car _e166490166502_))
                              (_tl166492166507_ (##cdr _e166490166502_)))
                          (let ((_body166510_ _tl166492166507_))
                            (if '#t
                                (cons '%#import _body166510_)
                                (_E166489166498_)))))
                      (_E166489166498_)))))
          (_E166488166512_))))
    (define gx#core-compile-top-module%
      (lambda (_stx166443_)
        (let* ((_e166444166454_ _stx166443_)
               (_E166446166458_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166444166454_)))
               (_E166445166482_
                (lambda ()
                  (if (gx#stx-pair? _e166444166454_)
                      (let ((_e166447166462_ (gx#syntax-e _e166444166454_)))
                        (let ((_hd166448166465_ (##car _e166447166462_))
                              (_tl166449166467_ (##cdr _e166447166462_)))
                          (if (gx#stx-pair? _tl166449166467_)
                              (let ((_e166450166470_
                                     (gx#syntax-e _tl166449166467_)))
                                (let ((_hd166451166473_
                                       (##car _e166450166470_))
                                      (_tl166452166475_
                                       (##cdr _e166450166470_)))
                                  (let* ((_hd166478_ _hd166451166473_)
                                         (_body166480_ _tl166452166475_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (let ((__obj171326
                                                           (gx#syntax-local-e__0
                                                            _hd166478_)))
                                                      (if (##structure-direct-instance-of?
                                                           __obj171326
                                                           'gx#expander-context::t)
                                                          (##unchecked-structure-ref
                                                           __obj171326
                                                           '1
                                                           gx#expander-context::t
                                                           '#f)
                                                          (class-slot-ref
                                                           gx#expander-context::t
                                                           __obj171326
                                                           'id)))
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body166480_)))
                                        (_E166446166458_)))))
                              (_E166446166458_))))
                      (_E166446166458_)))))
          (_E166445166482_))))
    (define gx#core-compile-top-export%
      (lambda (_stx166413_)
        (let* ((_e166414166421_ _stx166413_)
               (_E166416166425_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166414166421_)))
               (_E166415166439_
                (lambda ()
                  (if (gx#stx-pair? _e166414166421_)
                      (let ((_e166417166429_ (gx#syntax-e _e166414166421_)))
                        (let ((_hd166418166432_ (##car _e166417166429_))
                              (_tl166419166434_ (##cdr _e166417166429_)))
                          (let ((_body166437_ _tl166419166434_))
                            (if '#t
                                (cons '%#export _body166437_)
                                (_E166416166425_)))))
                      (_E166416166425_)))))
          (_E166415166439_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx166383_)
        (let* ((_e166384166391_ _stx166383_)
               (_E166386166395_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166384166391_)))
               (_E166385166409_
                (lambda ()
                  (if (gx#stx-pair? _e166384166391_)
                      (let ((_e166387166399_ (gx#syntax-e _e166384166391_)))
                        (let ((_hd166388166402_ (##car _e166387166399_))
                              (_tl166389166404_ (##cdr _e166387166399_)))
                          (let ((_body166407_ _tl166389166404_))
                            (if '#t
                                (cons '%#provide _body166407_)
                                (_E166386166395_)))))
                      (_E166386166395_)))))
          (_E166385166409_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx166353_)
        (let* ((_e166354166361_ _stx166353_)
               (_E166356166365_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166354166361_)))
               (_E166355166379_
                (lambda ()
                  (if (gx#stx-pair? _e166354166361_)
                      (let ((_e166357166369_ (gx#syntax-e _e166354166361_)))
                        (let ((_hd166358166372_ (##car _e166357166369_))
                              (_tl166359166374_ (##cdr _e166357166369_)))
                          (let ((_body166377_ _tl166359166374_))
                            (if '#t
                                (cons '%#extern _body166377_)
                                (_E166356166365_)))))
                      (_E166356166365_)))))
          (_E166355166379_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx166299_)
        (let* ((_e166300166313_ _stx166299_)
               (_E166302166317_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166300166313_)))
               (_E166301166349_
                (lambda ()
                  (if (gx#stx-pair? _e166300166313_)
                      (let ((_e166303166321_ (gx#syntax-e _e166300166313_)))
                        (let ((_hd166304166324_ (##car _e166303166321_))
                              (_tl166305166326_ (##cdr _e166303166321_)))
                          (if (gx#stx-pair? _tl166305166326_)
                              (let ((_e166306166329_
                                     (gx#syntax-e _tl166305166326_)))
                                (let ((_hd166307166332_
                                       (##car _e166306166329_))
                                      (_tl166308166334_
                                       (##cdr _e166306166329_)))
                                  (let ((_hd166337_ _hd166307166332_))
                                    (if (gx#stx-pair? _tl166308166334_)
                                        (let ((_e166309166339_
                                               (gx#syntax-e _tl166308166334_)))
                                          (let ((_hd166310166342_
                                                 (##car _e166309166339_))
                                                (_tl166311166344_
                                                 (##cdr _e166309166339_)))
                                            (let ((_expr166347_
                                                   _hd166310166342_))
                                              (if (gx#stx-null?
                                                   _tl166311166344_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd166337_)
                          (cons (gx#core-compile-top-syntax _expr166347_)
                                '())))
              (_E166302166317_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E166302166317_)))))
                                        (_E166302166317_)))))
                              (_E166302166317_))))
                      (_E166302166317_)))))
          (_E166301166349_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx166244_)
        (let* ((_e166245166258_ _stx166244_)
               (_E166247166262_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166245166258_)))
               (_E166246166295_
                (lambda ()
                  (if (gx#stx-pair? _e166245166258_)
                      (let ((_e166248166266_ (gx#syntax-e _e166245166258_)))
                        (let ((_hd166249166269_ (##car _e166248166266_))
                              (_tl166250166271_ (##cdr _e166248166266_)))
                          (if (gx#stx-pair? _tl166250166271_)
                              (let ((_e166251166274_
                                     (gx#syntax-e _tl166250166271_)))
                                (let ((_hd166252166277_
                                       (##car _e166251166274_))
                                      (_tl166253166279_
                                       (##cdr _e166251166274_)))
                                  (let ((_hd166282_ _hd166252166277_))
                                    (if (gx#stx-pair? _tl166253166279_)
                                        (let ((_e166254166284_
                                               (gx#syntax-e _tl166253166279_)))
                                          (let ((_hd166255166287_
                                                 (##car _e166254166284_))
                                                (_tl166256166289_
                                                 (##cdr _e166254166284_)))
                                            (let ((_expr166292_
                                                   _hd166255166287_))
                                              (if (gx#stx-null?
                                                   _tl166256166289_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd166282_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr166292_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E166247166262_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E166247166262_)))))
                                        (_E166247166262_)))))
                              (_E166247166262_))))
                      (_E166247166262_)))))
          (_E166246166295_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx166214_)
        (let* ((_e166215166222_ _stx166214_)
               (_E166217166226_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166215166222_)))
               (_E166216166240_
                (lambda ()
                  (if (gx#stx-pair? _e166215166222_)
                      (let ((_e166218166230_ (gx#syntax-e _e166215166222_)))
                        (let ((_hd166219166233_ (##car _e166218166230_))
                              (_tl166220166235_ (##cdr _e166218166230_)))
                          (let ((_body166238_ _tl166220166235_))
                            (if '#t
                                (cons '%#define-alias _body166238_)
                                (_E166217166226_)))))
                      (_E166217166226_)))))
          (_E166216166240_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx166184_)
        (let* ((_e166185166192_ _stx166184_)
               (_E166187166196_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166185166192_)))
               (_E166186166210_
                (lambda ()
                  (if (gx#stx-pair? _e166185166192_)
                      (let ((_e166188166200_ (gx#syntax-e _e166185166192_)))
                        (let ((_hd166189166203_ (##car _e166188166200_))
                              (_tl166190166205_ (##cdr _e166188166200_)))
                          (let ((_body166208_ _tl166190166205_))
                            (if '#t
                                (cons '%#define-runtime _body166208_)
                                (_E166187166196_)))))
                      (_E166187166196_)))))
          (_E166186166210_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx166154_)
        (let* ((_e166155166162_ _stx166154_)
               (_E166157166166_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166155166162_)))
               (_E166156166180_
                (lambda ()
                  (if (gx#stx-pair? _e166155166162_)
                      (let ((_e166158166170_ (gx#syntax-e _e166155166162_)))
                        (let ((_hd166159166173_ (##car _e166158166170_))
                              (_tl166160166175_ (##cdr _e166158166170_)))
                          (let ((_decls166178_ _tl166160166175_))
                            (if '#t
                                (cons '%#declare _decls166178_)
                                (_E166157166166_)))))
                      (_E166157166166_)))))
          (_E166156166180_))))
    (define gx#core-compile-top-lambda%
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
                          (let ((_clause166148_ _tl166130166145_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause166148_))
                                (_E166127166136_)))))
                      (_E166127166136_)))))
          (_E166126166150_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx166081_)
        (let* ((_e166082166092_ _stx166081_)
               (_E166084166096_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166082166092_)))
               (_E166083166120_
                (lambda ()
                  (if (gx#stx-pair? _e166082166092_)
                      (let ((_e166085166100_ (gx#syntax-e _e166082166092_)))
                        (let ((_hd166086166103_ (##car _e166085166100_))
                              (_tl166087166105_ (##cdr _e166085166100_)))
                          (let ((_hd166108_ _hd166086166103_))
                            (if (gx#stx-pair? _tl166087166105_)
                                (let ((_e166088166110_
                                       (gx#syntax-e _tl166087166105_)))
                                  (let ((_hd166089166113_
                                         (##car _e166088166110_))
                                        (_tl166090166115_
                                         (##cdr _e166088166110_)))
                                    (let ((_body166118_ _hd166089166113_))
                                      (if (gx#stx-null? _tl166090166115_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd166108_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body166118_)
                                                          '()))
                                              (_E166084166096_))
                                          (_E166084166096_)))))
                                (_E166084166096_)))))
                      (_E166084166096_)))))
          (_E166083166120_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx166051_)
        (let* ((_e166052166059_ _stx166051_)
               (_E166054166063_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166052166059_)))
               (_E166053166077_
                (lambda ()
                  (if (gx#stx-pair? _e166052166059_)
                      (let ((_e166055166067_ (gx#syntax-e _e166052166059_)))
                        (let ((_hd166056166070_ (##car _e166055166067_))
                              (_tl166057166072_ (##cdr _e166055166067_)))
                          (let ((_clauses166075_ _tl166057166072_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses166075_))
                                (_E166054166063_)))))
                      (_E166054166063_)))))
          (_E166053166077_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx165986_ _form165987_)
        (let* ((_e165988166001_ _stx165986_)
               (_E165990166005_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165988166001_)))
               (_E165989166037_
                (lambda ()
                  (if (gx#stx-pair? _e165988166001_)
                      (let ((_e165991166009_ (gx#syntax-e _e165988166001_)))
                        (let ((_hd165992166012_ (##car _e165991166009_))
                              (_tl165993166014_ (##cdr _e165991166009_)))
                          (if (gx#stx-pair? _tl165993166014_)
                              (let ((_e165994166017_
                                     (gx#syntax-e _tl165993166014_)))
                                (let ((_hd165995166020_
                                       (##car _e165994166017_))
                                      (_tl165996166022_
                                       (##cdr _e165994166017_)))
                                  (let ((_hd166025_ _hd165995166020_))
                                    (if (gx#stx-pair? _tl165996166022_)
                                        (let ((_e165997166027_
                                               (gx#syntax-e _tl165996166022_)))
                                          (let ((_hd165998166030_
                                                 (##car _e165997166027_))
                                                (_tl165999166032_
                                                 (##cdr _e165997166027_)))
                                            (let ((_body166035_
                                                   _hd165998166030_))
                                              (if (gx#stx-null?
                                                   _tl165999166032_)
                                                  (if '#t
                                                      (cons _form165987_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd166025_)
                          (cons (gx#core-compile-top-syntax _body166035_)
                                '())))
              (_E165990166005_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E165990166005_)))))
                                        (_E165990166005_)))))
                              (_E165990166005_))))
                      (_E165990166005_)))))
          (_E165989166037_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx166044_)
        (let ((_form166046_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx166044_ _form166046_))))
    (define gx#core-compile-top-let-values%
      (lambda _g171328_
        (let ((_g171327_ (##length _g171328_)))
          (cond ((##fx= _g171327_ 1)
                 (apply (lambda (_stx166044_)
                          (gx#core-compile-top-let-values%__0 _stx166044_))
                        _g171328_))
                ((##fx= _g171327_ 2)
                 (apply (lambda (_stx166048_ _form166049_)
                          (gx#core-compile-top-let-values%__%
                           _stx166048_
                           _form166049_))
                        _g171328_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g171328_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx165983_)
        (gx#core-compile-top-let-values%__% _stx165983_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx165981_)
        (gx#core-compile-top-let-values%__% _stx165981_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx165940_)
        (let* ((_e165941165951_ _stx165940_)
               (_E165943165955_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165941165951_)))
               (_E165942165977_
                (lambda ()
                  (if (gx#stx-pair? _e165941165951_)
                      (let ((_e165944165959_ (gx#syntax-e _e165941165951_)))
                        (let ((_hd165945165962_ (##car _e165944165959_))
                              (_tl165946165964_ (##cdr _e165944165959_)))
                          (if (gx#stx-pair? _tl165946165964_)
                              (let ((_e165947165967_
                                     (gx#syntax-e _tl165946165964_)))
                                (let ((_hd165948165970_
                                       (##car _e165947165967_))
                                      (_tl165949165972_
                                       (##cdr _e165947165967_)))
                                  (let ((_e165975_ _hd165948165970_))
                                    (if (gx#stx-null? _tl165949165972_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e165975_)
                                                        '()))
                                            (_E165943165955_))
                                        (_E165943165955_)))))
                              (_E165943165955_))))
                      (_E165943165955_)))))
          (_E165942165977_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx165899_)
        (let* ((_e165900165910_ _stx165899_)
               (_E165902165914_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165900165910_)))
               (_E165901165936_
                (lambda ()
                  (if (gx#stx-pair? _e165900165910_)
                      (let ((_e165903165918_ (gx#syntax-e _e165900165910_)))
                        (let ((_hd165904165921_ (##car _e165903165918_))
                              (_tl165905165923_ (##cdr _e165903165918_)))
                          (if (gx#stx-pair? _tl165905165923_)
                              (let ((_e165906165926_
                                     (gx#syntax-e _tl165905165923_)))
                                (let ((_hd165907165929_
                                       (##car _e165906165926_))
                                      (_tl165908165931_
                                       (##cdr _e165906165926_)))
                                  (let ((_e165934_ _hd165907165929_))
                                    (if (gx#stx-null? _tl165908165931_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e165934_)
                                                        '()))
                                            (_E165902165914_))
                                        (_E165902165914_)))))
                              (_E165902165914_))))
                      (_E165902165914_)))))
          (_E165901165936_))))
    (define gx#core-compile-top-call%
      (lambda (_stx165856_)
        (let* ((_e165857165867_ _stx165856_)
               (_E165859165871_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165857165867_)))
               (_E165858165895_
                (lambda ()
                  (if (gx#stx-pair? _e165857165867_)
                      (let ((_e165860165875_ (gx#syntax-e _e165857165867_)))
                        (let ((_hd165861165878_ (##car _e165860165875_))
                              (_tl165862165880_ (##cdr _e165860165875_)))
                          (if (gx#stx-pair? _tl165862165880_)
                              (let ((_e165863165883_
                                     (gx#syntax-e _tl165862165880_)))
                                (let ((_hd165864165886_
                                       (##car _e165863165883_))
                                      (_tl165865165888_
                                       (##cdr _e165863165883_)))
                                  (let* ((_rator165891_ _hd165864165886_)
                                         (_args165893_ _tl165865165888_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator165891_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args165893_)))
                                        (_E165859165871_)))))
                              (_E165859165871_))))
                      (_E165859165871_)))))
          (_E165858165895_))))
    (define gx#core-compile-top-if%
      (lambda (_stx165789_)
        (let* ((_e165790165806_ _stx165789_)
               (_E165792165810_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165790165806_)))
               (_E165791165852_
                (lambda ()
                  (if (gx#stx-pair? _e165790165806_)
                      (let ((_e165793165814_ (gx#syntax-e _e165790165806_)))
                        (let ((_hd165794165817_ (##car _e165793165814_))
                              (_tl165795165819_ (##cdr _e165793165814_)))
                          (if (gx#stx-pair? _tl165795165819_)
                              (let ((_e165796165822_
                                     (gx#syntax-e _tl165795165819_)))
                                (let ((_hd165797165825_
                                       (##car _e165796165822_))
                                      (_tl165798165827_
                                       (##cdr _e165796165822_)))
                                  (let ((_test165830_ _hd165797165825_))
                                    (if (gx#stx-pair? _tl165798165827_)
                                        (let ((_e165799165832_
                                               (gx#syntax-e _tl165798165827_)))
                                          (let ((_hd165800165835_
                                                 (##car _e165799165832_))
                                                (_tl165801165837_
                                                 (##cdr _e165799165832_)))
                                            (let ((_K165840_ _hd165800165835_))
                                              (if (gx#stx-pair?
                                                   _tl165801165837_)
                                                  (let ((_e165802165842_
                                                         (gx#syntax-e
                                                          _tl165801165837_)))
                                                    (let ((_hd165803165845_
                                                           (##car _e165802165842_))
                                                          (_tl165804165847_
                                                           (##cdr _e165802165842_)))
                                                      (let ((_E165850_
                                                             _hd165803165845_))
                                                        (if (gx#stx-null?
                                                             _tl165804165847_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test165830_)
                                    (cons (gx#core-compile-top-syntax
                                           _K165840_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E165850_)
                                                '()))))
                        (_E165792165810_))
                    (_E165792165810_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E165792165810_)))))
                                        (_E165792165810_)))))
                              (_E165792165810_))))
                      (_E165792165810_)))))
          (_E165791165852_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx165748_)
        (let* ((_e165749165759_ _stx165748_)
               (_E165751165763_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165749165759_)))
               (_E165750165785_
                (lambda ()
                  (if (gx#stx-pair? _e165749165759_)
                      (let ((_e165752165767_ (gx#syntax-e _e165749165759_)))
                        (let ((_hd165753165770_ (##car _e165752165767_))
                              (_tl165754165772_ (##cdr _e165752165767_)))
                          (if (gx#stx-pair? _tl165754165772_)
                              (let ((_e165755165775_
                                     (gx#syntax-e _tl165754165772_)))
                                (let ((_hd165756165778_
                                       (##car _e165755165775_))
                                      (_tl165757165780_
                                       (##cdr _e165755165775_)))
                                  (let ((_id165783_ _hd165756165778_))
                                    (if (gx#stx-null? _tl165757165780_)
                                        (if (gx#identifier? _id165783_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id165783_)
                                                        '()))
                                            (_E165751165763_))
                                        (_E165751165763_)))))
                              (_E165751165763_))))
                      (_E165751165763_)))))
          (_E165750165785_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx165694_)
        (let* ((_e165695165708_ _stx165694_)
               (_E165697165712_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165695165708_)))
               (_E165696165744_
                (lambda ()
                  (if (gx#stx-pair? _e165695165708_)
                      (let ((_e165698165716_ (gx#syntax-e _e165695165708_)))
                        (let ((_hd165699165719_ (##car _e165698165716_))
                              (_tl165700165721_ (##cdr _e165698165716_)))
                          (if (gx#stx-pair? _tl165700165721_)
                              (let ((_e165701165724_
                                     (gx#syntax-e _tl165700165721_)))
                                (let ((_hd165702165727_
                                       (##car _e165701165724_))
                                      (_tl165703165729_
                                       (##cdr _e165701165724_)))
                                  (let ((_id165732_ _hd165702165727_))
                                    (if (gx#stx-pair? _tl165703165729_)
                                        (let ((_e165704165734_
                                               (gx#syntax-e _tl165703165729_)))
                                          (let ((_hd165705165737_
                                                 (##car _e165704165734_))
                                                (_tl165706165739_
                                                 (##cdr _e165704165734_)))
                                            (let ((_expr165742_
                                                   _hd165705165737_))
                                              (if (gx#stx-null?
                                                   _tl165706165739_)
                                                  (if (gx#identifier?
                                                       _id165732_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id165732_)
                          (cons (gx#core-compile-top-syntax _expr165742_)
                                '())))
              (_E165697165712_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E165697165712_)))))
                                        (_E165697165712_)))))
                              (_E165697165712_))))
                      (_E165697165712_)))))
          (_E165696165744_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id165689_)
        (let ((_$e165691_ (gx#resolve-identifier__0 _id165689_)))
          (if _$e165691_ (unchecked-slot-ref _$e165691_ 'id) _id165689_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd165687_)
        (if (gx#identifier? _hd165687_)
            (gx#core-compile-top-runtime-ref _hd165687_)
            '#f)))))
