(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1707659879)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx166610_)
        (let* ((_e166611166618_ _stx166610_)
               (_E166613166622_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166611166618_)))
               (_E166612166636_
                (lambda ()
                  (if (gx#stx-pair? _e166611166618_)
                      (let ((_e166614166626_ (gx#syntax-e _e166611166618_)))
                        (let ((_hd166615166629_ (##car _e166614166626_))
                              (_tl166616166631_ (##cdr _e166614166626_)))
                          (let ((_form166634_ _hd166615166629_))
                            (if '#t
                                (let* ((__self171107
                                        (gx#syntax-local-e__0 _form166634_))
                                       (__method171108
                                        (method-ref
                                         __self171107
                                         'compile-top-syntax)))
                                  (if __method171108
                                      (__method171108 __self171107 _stx166610_)
                                      (error '"Missing method"
                                             __self171107
                                             'compile-top-syntax)))
                                (_E166613166622_)))))
                      (_E166613166622_)))))
          (_E166612166636_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self166570_ _stx166571_)
        (let* ((_self166572166580_ _self166570_)
               (_E166574166584_
                (lambda () (error '"No clause matching" _self166572166580_)))
               (_K166575166596_
                (lambda (_K166587_)
                  (let ((_$e166589_ (gx#stx-source _stx166571_)))
                    (if _$e166589_
                        ((lambda (_g166591166593_)
                           (gx#stx-wrap-source
                            (_K166587_ _stx166571_)
                            _g166591166593_))
                         _$e166589_)
                        (_K166587_ _stx166571_))))))
          (if (##structure-instance-of?
               _self166572166580_
               'gx#core-expander::t)
              (let* ((_e166576166599_
                      (##unchecked-structure-ref
                       _self166572166580_
                       '1
                       gx#expander::t
                       '#f))
                     (_e166577166602_
                      (##unchecked-structure-ref
                       _self166572166580_
                       '2
                       gx#core-expander::t
                       '#f))
                     (_e166578166605_
                      (##unchecked-structure-ref
                       _self166572166580_
                       '3
                       gx#core-expander::t
                       '#f))
                     (_K166608_ _e166578166605_))
                (_K166575166596_ _K166608_))
              (_E166574166584_)))))
    (bind-method!
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx166444_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx166444_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx166414_)
        (let* ((_e166415166422_ _stx166414_)
               (_E166417166426_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166415166422_)))
               (_E166416166440_
                (lambda ()
                  (if (gx#stx-pair? _e166415166422_)
                      (let ((_e166418166430_ (gx#syntax-e _e166415166422_)))
                        (let ((_hd166419166433_ (##car _e166418166430_))
                              (_tl166420166435_ (##cdr _e166418166430_)))
                          (let ((_body166438_ _tl166420166435_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body166438_))
                                (_E166417166426_)))))
                      (_E166417166426_)))))
          (_E166416166440_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx166383_)
        (let* ((_e166384166391_ _stx166383_)
               (_E166386166395_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166384166391_)))
               (_E166385166410_
                (lambda ()
                  (if (gx#stx-pair? _e166384166391_)
                      (let ((_e166387166399_ (gx#syntax-e _e166384166391_)))
                        (let ((_hd166388166402_ (##car _e166387166399_))
                              (_tl166389166404_ (##cdr _e166387166399_)))
                          (let ((_body166407_ _tl166389166404_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body166407_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E166386166395_)))))
                      (_E166386166395_)))))
          (_E166385166410_))))
    (define gx#core-compile-top-begin-foreign%
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
                                (cons '%#begin-foreign _body166377_)
                                (_E166356166365_)))))
                      (_E166356166365_)))))
          (_E166355166379_))))
    (define gx#core-compile-top-begin-annotation%
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
                                  (let ((_ann166337_ _hd166307166332_))
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
                                                      (gx#core-compile-top-syntax
                                                       _expr166347_)
                                                      (_E166302166317_))
                                                  (_E166302166317_)))))
                                        (_E166302166317_)))))
                              (_E166302166317_))))
                      (_E166302166317_)))))
          (_E166301166349_))))
    (define gx#core-compile-top-import%
      (lambda (_stx166269_)
        (let* ((_e166270166277_ _stx166269_)
               (_E166272166281_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166270166277_)))
               (_E166271166295_
                (lambda ()
                  (if (gx#stx-pair? _e166270166277_)
                      (let ((_e166273166285_ (gx#syntax-e _e166270166277_)))
                        (let ((_hd166274166288_ (##car _e166273166285_))
                              (_tl166275166290_ (##cdr _e166273166285_)))
                          (let ((_body166293_ _tl166275166290_))
                            (if '#t
                                (cons '%#import _body166293_)
                                (_E166272166281_)))))
                      (_E166272166281_)))))
          (_E166271166295_))))
    (define gx#core-compile-top-module%
      (lambda (_stx166226_)
        (let* ((_e166227166237_ _stx166226_)
               (_E166229166241_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166227166237_)))
               (_E166228166265_
                (lambda ()
                  (if (gx#stx-pair? _e166227166237_)
                      (let ((_e166230166245_ (gx#syntax-e _e166227166237_)))
                        (let ((_hd166231166248_ (##car _e166230166245_))
                              (_tl166232166250_ (##cdr _e166230166245_)))
                          (if (gx#stx-pair? _tl166232166250_)
                              (let ((_e166233166253_
                                     (gx#syntax-e _tl166232166250_)))
                                (let ((_hd166234166256_
                                       (##car _e166233166253_))
                                      (_tl166235166258_
                                       (##cdr _e166233166253_)))
                                  (let* ((_hd166261_ _hd166234166256_)
                                         (_body166263_ _tl166235166258_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _hd166261_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body166263_)))
                                        (_E166229166241_)))))
                              (_E166229166241_))))
                      (_E166229166241_)))))
          (_E166228166265_))))
    (define gx#core-compile-top-export%
      (lambda (_stx166196_)
        (let* ((_e166197166204_ _stx166196_)
               (_E166199166208_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166197166204_)))
               (_E166198166222_
                (lambda ()
                  (if (gx#stx-pair? _e166197166204_)
                      (let ((_e166200166212_ (gx#syntax-e _e166197166204_)))
                        (let ((_hd166201166215_ (##car _e166200166212_))
                              (_tl166202166217_ (##cdr _e166200166212_)))
                          (let ((_body166220_ _tl166202166217_))
                            (if '#t
                                (cons '%#export _body166220_)
                                (_E166199166208_)))))
                      (_E166199166208_)))))
          (_E166198166222_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx166166_)
        (let* ((_e166167166174_ _stx166166_)
               (_E166169166178_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166167166174_)))
               (_E166168166192_
                (lambda ()
                  (if (gx#stx-pair? _e166167166174_)
                      (let ((_e166170166182_ (gx#syntax-e _e166167166174_)))
                        (let ((_hd166171166185_ (##car _e166170166182_))
                              (_tl166172166187_ (##cdr _e166170166182_)))
                          (let ((_body166190_ _tl166172166187_))
                            (if '#t
                                (cons '%#provide _body166190_)
                                (_E166169166178_)))))
                      (_E166169166178_)))))
          (_E166168166192_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx166136_)
        (let* ((_e166137166144_ _stx166136_)
               (_E166139166148_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166137166144_)))
               (_E166138166162_
                (lambda ()
                  (if (gx#stx-pair? _e166137166144_)
                      (let ((_e166140166152_ (gx#syntax-e _e166137166144_)))
                        (let ((_hd166141166155_ (##car _e166140166152_))
                              (_tl166142166157_ (##cdr _e166140166152_)))
                          (let ((_body166160_ _tl166142166157_))
                            (if '#t
                                (cons '%#extern _body166160_)
                                (_E166139166148_)))))
                      (_E166139166148_)))))
          (_E166138166162_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx166082_)
        (let* ((_e166083166096_ _stx166082_)
               (_E166085166100_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166083166096_)))
               (_E166084166132_
                (lambda ()
                  (if (gx#stx-pair? _e166083166096_)
                      (let ((_e166086166104_ (gx#syntax-e _e166083166096_)))
                        (let ((_hd166087166107_ (##car _e166086166104_))
                              (_tl166088166109_ (##cdr _e166086166104_)))
                          (if (gx#stx-pair? _tl166088166109_)
                              (let ((_e166089166112_
                                     (gx#syntax-e _tl166088166109_)))
                                (let ((_hd166090166115_
                                       (##car _e166089166112_))
                                      (_tl166091166117_
                                       (##cdr _e166089166112_)))
                                  (let ((_hd166120_ _hd166090166115_))
                                    (if (gx#stx-pair? _tl166091166117_)
                                        (let ((_e166092166122_
                                               (gx#syntax-e _tl166091166117_)))
                                          (let ((_hd166093166125_
                                                 (##car _e166092166122_))
                                                (_tl166094166127_
                                                 (##cdr _e166092166122_)))
                                            (let ((_expr166130_
                                                   _hd166093166125_))
                                              (if (gx#stx-null?
                                                   _tl166094166127_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd166120_)
                          (cons (gx#core-compile-top-syntax _expr166130_)
                                '())))
              (_E166085166100_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E166085166100_)))))
                                        (_E166085166100_)))))
                              (_E166085166100_))))
                      (_E166085166100_)))))
          (_E166084166132_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx166027_)
        (let* ((_e166028166041_ _stx166027_)
               (_E166030166045_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166028166041_)))
               (_E166029166078_
                (lambda ()
                  (if (gx#stx-pair? _e166028166041_)
                      (let ((_e166031166049_ (gx#syntax-e _e166028166041_)))
                        (let ((_hd166032166052_ (##car _e166031166049_))
                              (_tl166033166054_ (##cdr _e166031166049_)))
                          (if (gx#stx-pair? _tl166033166054_)
                              (let ((_e166034166057_
                                     (gx#syntax-e _tl166033166054_)))
                                (let ((_hd166035166060_
                                       (##car _e166034166057_))
                                      (_tl166036166062_
                                       (##cdr _e166034166057_)))
                                  (let ((_hd166065_ _hd166035166060_))
                                    (if (gx#stx-pair? _tl166036166062_)
                                        (let ((_e166037166067_
                                               (gx#syntax-e _tl166036166062_)))
                                          (let ((_hd166038166070_
                                                 (##car _e166037166067_))
                                                (_tl166039166072_
                                                 (##cdr _e166037166067_)))
                                            (let ((_expr166075_
                                                   _hd166038166070_))
                                              (if (gx#stx-null?
                                                   _tl166039166072_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd166065_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr166075_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E166030166045_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E166030166045_)))))
                                        (_E166030166045_)))))
                              (_E166030166045_))))
                      (_E166030166045_)))))
          (_E166029166078_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx165997_)
        (let* ((_e165998166005_ _stx165997_)
               (_E166000166009_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165998166005_)))
               (_E165999166023_
                (lambda ()
                  (if (gx#stx-pair? _e165998166005_)
                      (let ((_e166001166013_ (gx#syntax-e _e165998166005_)))
                        (let ((_hd166002166016_ (##car _e166001166013_))
                              (_tl166003166018_ (##cdr _e166001166013_)))
                          (let ((_body166021_ _tl166003166018_))
                            (if '#t
                                (cons '%#define-alias _body166021_)
                                (_E166000166009_)))))
                      (_E166000166009_)))))
          (_E165999166023_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx165967_)
        (let* ((_e165968165975_ _stx165967_)
               (_E165970165979_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165968165975_)))
               (_E165969165993_
                (lambda ()
                  (if (gx#stx-pair? _e165968165975_)
                      (let ((_e165971165983_ (gx#syntax-e _e165968165975_)))
                        (let ((_hd165972165986_ (##car _e165971165983_))
                              (_tl165973165988_ (##cdr _e165971165983_)))
                          (let ((_body165991_ _tl165973165988_))
                            (if '#t
                                (cons '%#define-runtime _body165991_)
                                (_E165970165979_)))))
                      (_E165970165979_)))))
          (_E165969165993_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx165937_)
        (let* ((_e165938165945_ _stx165937_)
               (_E165940165949_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165938165945_)))
               (_E165939165963_
                (lambda ()
                  (if (gx#stx-pair? _e165938165945_)
                      (let ((_e165941165953_ (gx#syntax-e _e165938165945_)))
                        (let ((_hd165942165956_ (##car _e165941165953_))
                              (_tl165943165958_ (##cdr _e165941165953_)))
                          (let ((_decls165961_ _tl165943165958_))
                            (if '#t
                                (cons '%#declare _decls165961_)
                                (_E165940165949_)))))
                      (_E165940165949_)))))
          (_E165939165963_))))
    (define gx#core-compile-top-lambda%
      (lambda (_stx165907_)
        (let* ((_e165908165915_ _stx165907_)
               (_E165910165919_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165908165915_)))
               (_E165909165933_
                (lambda ()
                  (if (gx#stx-pair? _e165908165915_)
                      (let ((_e165911165923_ (gx#syntax-e _e165908165915_)))
                        (let ((_hd165912165926_ (##car _e165911165923_))
                              (_tl165913165928_ (##cdr _e165911165923_)))
                          (let ((_clause165931_ _tl165913165928_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause165931_))
                                (_E165910165919_)))))
                      (_E165910165919_)))))
          (_E165909165933_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx165864_)
        (let* ((_e165865165875_ _stx165864_)
               (_E165867165879_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165865165875_)))
               (_E165866165903_
                (lambda ()
                  (if (gx#stx-pair? _e165865165875_)
                      (let ((_e165868165883_ (gx#syntax-e _e165865165875_)))
                        (let ((_hd165869165886_ (##car _e165868165883_))
                              (_tl165870165888_ (##cdr _e165868165883_)))
                          (let ((_hd165891_ _hd165869165886_))
                            (if (gx#stx-pair? _tl165870165888_)
                                (let ((_e165871165893_
                                       (gx#syntax-e _tl165870165888_)))
                                  (let ((_hd165872165896_
                                         (##car _e165871165893_))
                                        (_tl165873165898_
                                         (##cdr _e165871165893_)))
                                    (let ((_body165901_ _hd165872165896_))
                                      (if (gx#stx-null? _tl165873165898_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd165891_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body165901_)
                                                          '()))
                                              (_E165867165879_))
                                          (_E165867165879_)))))
                                (_E165867165879_)))))
                      (_E165867165879_)))))
          (_E165866165903_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx165834_)
        (let* ((_e165835165842_ _stx165834_)
               (_E165837165846_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165835165842_)))
               (_E165836165860_
                (lambda ()
                  (if (gx#stx-pair? _e165835165842_)
                      (let ((_e165838165850_ (gx#syntax-e _e165835165842_)))
                        (let ((_hd165839165853_ (##car _e165838165850_))
                              (_tl165840165855_ (##cdr _e165838165850_)))
                          (let ((_clauses165858_ _tl165840165855_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses165858_))
                                (_E165837165846_)))))
                      (_E165837165846_)))))
          (_E165836165860_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx165769_ _form165770_)
        (let* ((_e165771165784_ _stx165769_)
               (_E165773165788_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165771165784_)))
               (_E165772165820_
                (lambda ()
                  (if (gx#stx-pair? _e165771165784_)
                      (let ((_e165774165792_ (gx#syntax-e _e165771165784_)))
                        (let ((_hd165775165795_ (##car _e165774165792_))
                              (_tl165776165797_ (##cdr _e165774165792_)))
                          (if (gx#stx-pair? _tl165776165797_)
                              (let ((_e165777165800_
                                     (gx#syntax-e _tl165776165797_)))
                                (let ((_hd165778165803_
                                       (##car _e165777165800_))
                                      (_tl165779165805_
                                       (##cdr _e165777165800_)))
                                  (let ((_hd165808_ _hd165778165803_))
                                    (if (gx#stx-pair? _tl165779165805_)
                                        (let ((_e165780165810_
                                               (gx#syntax-e _tl165779165805_)))
                                          (let ((_hd165781165813_
                                                 (##car _e165780165810_))
                                                (_tl165782165815_
                                                 (##cdr _e165780165810_)))
                                            (let ((_body165818_
                                                   _hd165781165813_))
                                              (if (gx#stx-null?
                                                   _tl165782165815_)
                                                  (if '#t
                                                      (cons _form165770_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd165808_)
                          (cons (gx#core-compile-top-syntax _body165818_)
                                '())))
              (_E165773165788_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E165773165788_)))))
                                        (_E165773165788_)))))
                              (_E165773165788_))))
                      (_E165773165788_)))))
          (_E165772165820_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx165827_)
        (let ((_form165829_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx165827_ _form165829_))))
    (define gx#core-compile-top-let-values%
      (lambda _g171110_
        (let ((_g171109_ (##length _g171110_)))
          (cond ((##fx= _g171109_ 1)
                 (apply (lambda (_stx165827_)
                          (gx#core-compile-top-let-values%__0 _stx165827_))
                        _g171110_))
                ((##fx= _g171109_ 2)
                 (apply (lambda (_stx165831_ _form165832_)
                          (gx#core-compile-top-let-values%__%
                           _stx165831_
                           _form165832_))
                        _g171110_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g171110_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx165766_)
        (gx#core-compile-top-let-values%__% _stx165766_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx165764_)
        (gx#core-compile-top-let-values%__% _stx165764_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx165723_)
        (let* ((_e165724165734_ _stx165723_)
               (_E165726165738_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165724165734_)))
               (_E165725165760_
                (lambda ()
                  (if (gx#stx-pair? _e165724165734_)
                      (let ((_e165727165742_ (gx#syntax-e _e165724165734_)))
                        (let ((_hd165728165745_ (##car _e165727165742_))
                              (_tl165729165747_ (##cdr _e165727165742_)))
                          (if (gx#stx-pair? _tl165729165747_)
                              (let ((_e165730165750_
                                     (gx#syntax-e _tl165729165747_)))
                                (let ((_hd165731165753_
                                       (##car _e165730165750_))
                                      (_tl165732165755_
                                       (##cdr _e165730165750_)))
                                  (let ((_e165758_ _hd165731165753_))
                                    (if (gx#stx-null? _tl165732165755_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e165758_)
                                                        '()))
                                            (_E165726165738_))
                                        (_E165726165738_)))))
                              (_E165726165738_))))
                      (_E165726165738_)))))
          (_E165725165760_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx165682_)
        (let* ((_e165683165693_ _stx165682_)
               (_E165685165697_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165683165693_)))
               (_E165684165719_
                (lambda ()
                  (if (gx#stx-pair? _e165683165693_)
                      (let ((_e165686165701_ (gx#syntax-e _e165683165693_)))
                        (let ((_hd165687165704_ (##car _e165686165701_))
                              (_tl165688165706_ (##cdr _e165686165701_)))
                          (if (gx#stx-pair? _tl165688165706_)
                              (let ((_e165689165709_
                                     (gx#syntax-e _tl165688165706_)))
                                (let ((_hd165690165712_
                                       (##car _e165689165709_))
                                      (_tl165691165714_
                                       (##cdr _e165689165709_)))
                                  (let ((_e165717_ _hd165690165712_))
                                    (if (gx#stx-null? _tl165691165714_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e165717_)
                                                        '()))
                                            (_E165685165697_))
                                        (_E165685165697_)))))
                              (_E165685165697_))))
                      (_E165685165697_)))))
          (_E165684165719_))))
    (define gx#core-compile-top-call%
      (lambda (_stx165639_)
        (let* ((_e165640165650_ _stx165639_)
               (_E165642165654_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165640165650_)))
               (_E165641165678_
                (lambda ()
                  (if (gx#stx-pair? _e165640165650_)
                      (let ((_e165643165658_ (gx#syntax-e _e165640165650_)))
                        (let ((_hd165644165661_ (##car _e165643165658_))
                              (_tl165645165663_ (##cdr _e165643165658_)))
                          (if (gx#stx-pair? _tl165645165663_)
                              (let ((_e165646165666_
                                     (gx#syntax-e _tl165645165663_)))
                                (let ((_hd165647165669_
                                       (##car _e165646165666_))
                                      (_tl165648165671_
                                       (##cdr _e165646165666_)))
                                  (let* ((_rator165674_ _hd165647165669_)
                                         (_args165676_ _tl165648165671_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator165674_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args165676_)))
                                        (_E165642165654_)))))
                              (_E165642165654_))))
                      (_E165642165654_)))))
          (_E165641165678_))))
    (define gx#core-compile-top-if%
      (lambda (_stx165572_)
        (let* ((_e165573165589_ _stx165572_)
               (_E165575165593_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165573165589_)))
               (_E165574165635_
                (lambda ()
                  (if (gx#stx-pair? _e165573165589_)
                      (let ((_e165576165597_ (gx#syntax-e _e165573165589_)))
                        (let ((_hd165577165600_ (##car _e165576165597_))
                              (_tl165578165602_ (##cdr _e165576165597_)))
                          (if (gx#stx-pair? _tl165578165602_)
                              (let ((_e165579165605_
                                     (gx#syntax-e _tl165578165602_)))
                                (let ((_hd165580165608_
                                       (##car _e165579165605_))
                                      (_tl165581165610_
                                       (##cdr _e165579165605_)))
                                  (let ((_test165613_ _hd165580165608_))
                                    (if (gx#stx-pair? _tl165581165610_)
                                        (let ((_e165582165615_
                                               (gx#syntax-e _tl165581165610_)))
                                          (let ((_hd165583165618_
                                                 (##car _e165582165615_))
                                                (_tl165584165620_
                                                 (##cdr _e165582165615_)))
                                            (let ((_K165623_ _hd165583165618_))
                                              (if (gx#stx-pair?
                                                   _tl165584165620_)
                                                  (let ((_e165585165625_
                                                         (gx#syntax-e
                                                          _tl165584165620_)))
                                                    (let ((_hd165586165628_
                                                           (##car _e165585165625_))
                                                          (_tl165587165630_
                                                           (##cdr _e165585165625_)))
                                                      (let ((_E165633_
                                                             _hd165586165628_))
                                                        (if (gx#stx-null?
                                                             _tl165587165630_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test165613_)
                                    (cons (gx#core-compile-top-syntax
                                           _K165623_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E165633_)
                                                '()))))
                        (_E165575165593_))
                    (_E165575165593_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E165575165593_)))))
                                        (_E165575165593_)))))
                              (_E165575165593_))))
                      (_E165575165593_)))))
          (_E165574165635_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx165531_)
        (let* ((_e165532165542_ _stx165531_)
               (_E165534165546_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165532165542_)))
               (_E165533165568_
                (lambda ()
                  (if (gx#stx-pair? _e165532165542_)
                      (let ((_e165535165550_ (gx#syntax-e _e165532165542_)))
                        (let ((_hd165536165553_ (##car _e165535165550_))
                              (_tl165537165555_ (##cdr _e165535165550_)))
                          (if (gx#stx-pair? _tl165537165555_)
                              (let ((_e165538165558_
                                     (gx#syntax-e _tl165537165555_)))
                                (let ((_hd165539165561_
                                       (##car _e165538165558_))
                                      (_tl165540165563_
                                       (##cdr _e165538165558_)))
                                  (let ((_id165566_ _hd165539165561_))
                                    (if (gx#stx-null? _tl165540165563_)
                                        (if (gx#identifier? _id165566_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id165566_)
                                                        '()))
                                            (_E165534165546_))
                                        (_E165534165546_)))))
                              (_E165534165546_))))
                      (_E165534165546_)))))
          (_E165533165568_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx165477_)
        (let* ((_e165478165491_ _stx165477_)
               (_E165480165495_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165478165491_)))
               (_E165479165527_
                (lambda ()
                  (if (gx#stx-pair? _e165478165491_)
                      (let ((_e165481165499_ (gx#syntax-e _e165478165491_)))
                        (let ((_hd165482165502_ (##car _e165481165499_))
                              (_tl165483165504_ (##cdr _e165481165499_)))
                          (if (gx#stx-pair? _tl165483165504_)
                              (let ((_e165484165507_
                                     (gx#syntax-e _tl165483165504_)))
                                (let ((_hd165485165510_
                                       (##car _e165484165507_))
                                      (_tl165486165512_
                                       (##cdr _e165484165507_)))
                                  (let ((_id165515_ _hd165485165510_))
                                    (if (gx#stx-pair? _tl165486165512_)
                                        (let ((_e165487165517_
                                               (gx#syntax-e _tl165486165512_)))
                                          (let ((_hd165488165520_
                                                 (##car _e165487165517_))
                                                (_tl165489165522_
                                                 (##cdr _e165487165517_)))
                                            (let ((_expr165525_
                                                   _hd165488165520_))
                                              (if (gx#stx-null?
                                                   _tl165489165522_)
                                                  (if (gx#identifier?
                                                       _id165515_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id165515_)
                          (cons (gx#core-compile-top-syntax _expr165525_)
                                '())))
              (_E165480165495_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E165480165495_)))))
                                        (_E165480165495_)))))
                              (_E165480165495_))))
                      (_E165480165495_)))))
          (_E165479165527_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id165472_)
        (let ((_$e165474_ (gx#resolve-identifier__0 _id165472_)))
          (if _$e165474_
              (##unchecked-structure-ref _$e165474_ '1 gx#binding::t '#f)
              _id165472_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd165470_)
        (if (gx#identifier? _hd165470_)
            (gx#core-compile-top-runtime-ref _hd165470_)
            '#f)))))
