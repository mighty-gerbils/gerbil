(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1710064748)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx91744_)
        (let* ((_e9174591752_ _stx91744_)
               (_E9174791756_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9174591752_)))
               (_E9174691770_
                (lambda ()
                  (if (gx#stx-pair? _e9174591752_)
                      (let ((_e9174891760_ (gx#syntax-e _e9174591752_)))
                        (let ((_hd9174991763_ (##car _e9174891760_))
                              (_tl9175091765_ (##cdr _e9174891760_)))
                          (let ((_form91768_ _hd9174991763_))
                            (if '#t
                                (let* ((__self91773
                                        (gx#syntax-local-e__0 _form91768_))
                                       (__method91774
                                        (method-ref
                                         __self91773
                                         'compile-top-syntax)))
                                  (if __method91774
                                      (__method91774 __self91773 _stx91744_)
                                      (error '"Missing method"
                                             __self91773
                                             'compile-top-syntax)))
                                (_E9174791756_)))))
                      (_E9174791756_)))))
          (_E9174691770_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self91704_ _stx91705_)
        (let* ((_self9170691714_ _self91704_)
               (_E9170891718_
                (lambda () (error '"No clause matching" _self9170691714_)))
               (_K9170991730_
                (lambda (_K91721_)
                  (let ((_$e91723_ (gx#stx-source _stx91705_)))
                    (if _$e91723_
                        ((lambda (_g9172591727_)
                           (gx#stx-wrap-source
                            (_K91721_ _stx91705_)
                            _g9172591727_))
                         _$e91723_)
                        (_K91721_ _stx91705_))))))
          (if (##structure-instance-of? _self9170691714_ 'gx#core-expander::t)
              (let* ((_e9171091733_
                      (##unchecked-structure-ref
                       _self9170691714_
                       '1
                       gx#expander::t
                       '#f))
                     (_e9171191736_
                      (##unchecked-structure-ref
                       _self9170691714_
                       '2
                       gx#core-expander::t
                       '#f))
                     (_e9171291739_
                      (##unchecked-structure-ref
                       _self9170691714_
                       '3
                       gx#core-expander::t
                       '#f))
                     (_K91742_ _e9171291739_))
                (_K9170991730_ _K91742_))
              (_E9170891718_)))))
    (bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx91578_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx91578_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx91548_)
        (let* ((_e9154991556_ _stx91548_)
               (_E9155191560_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9154991556_)))
               (_E9155091574_
                (lambda ()
                  (if (gx#stx-pair? _e9154991556_)
                      (let ((_e9155291564_ (gx#syntax-e _e9154991556_)))
                        (let ((_hd9155391567_ (##car _e9155291564_))
                              (_tl9155491569_ (##cdr _e9155291564_)))
                          (let ((_body91572_ _tl9155491569_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body91572_))
                                (_E9155191560_)))))
                      (_E9155191560_)))))
          (_E9155091574_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx91517_)
        (let* ((_e9151891525_ _stx91517_)
               (_E9152091529_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9151891525_)))
               (_E9151991544_
                (lambda ()
                  (if (gx#stx-pair? _e9151891525_)
                      (let ((_e9152191533_ (gx#syntax-e _e9151891525_)))
                        (let ((_hd9152291536_ (##car _e9152191533_))
                              (_tl9152391538_ (##cdr _e9152191533_)))
                          (let ((_body91541_ _tl9152391538_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body91541_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E9152091529_)))))
                      (_E9152091529_)))))
          (_E9151991544_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_stx91487_)
        (let* ((_e9148891495_ _stx91487_)
               (_E9149091499_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9148891495_)))
               (_E9148991513_
                (lambda ()
                  (if (gx#stx-pair? _e9148891495_)
                      (let ((_e9149191503_ (gx#syntax-e _e9148891495_)))
                        (let ((_hd9149291506_ (##car _e9149191503_))
                              (_tl9149391508_ (##cdr _e9149191503_)))
                          (let ((_body91511_ _tl9149391508_))
                            (if '#t
                                (cons '%#begin-foreign _body91511_)
                                (_E9149091499_)))))
                      (_E9149091499_)))))
          (_E9148991513_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_stx91433_)
        (let* ((_e9143491447_ _stx91433_)
               (_E9143691451_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9143491447_)))
               (_E9143591483_
                (lambda ()
                  (if (gx#stx-pair? _e9143491447_)
                      (let ((_e9143791455_ (gx#syntax-e _e9143491447_)))
                        (let ((_hd9143891458_ (##car _e9143791455_))
                              (_tl9143991460_ (##cdr _e9143791455_)))
                          (if (gx#stx-pair? _tl9143991460_)
                              (let ((_e9144091463_
                                     (gx#syntax-e _tl9143991460_)))
                                (let ((_hd9144191466_ (##car _e9144091463_))
                                      (_tl9144291468_ (##cdr _e9144091463_)))
                                  (let ((_ann91471_ _hd9144191466_))
                                    (if (gx#stx-pair? _tl9144291468_)
                                        (let ((_e9144391473_
                                               (gx#syntax-e _tl9144291468_)))
                                          (let ((_hd9144491476_
                                                 (##car _e9144391473_))
                                                (_tl9144591478_
                                                 (##cdr _e9144391473_)))
                                            (let ((_expr91481_ _hd9144491476_))
                                              (if (gx#stx-null? _tl9144591478_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr91481_)
                                                      (_E9143691451_))
                                                  (_E9143691451_)))))
                                        (_E9143691451_)))))
                              (_E9143691451_))))
                      (_E9143691451_)))))
          (_E9143591483_))))
    (define gx#core-compile-top-import%
      (lambda (_stx91403_)
        (let* ((_e9140491411_ _stx91403_)
               (_E9140691415_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9140491411_)))
               (_E9140591429_
                (lambda ()
                  (if (gx#stx-pair? _e9140491411_)
                      (let ((_e9140791419_ (gx#syntax-e _e9140491411_)))
                        (let ((_hd9140891422_ (##car _e9140791419_))
                              (_tl9140991424_ (##cdr _e9140791419_)))
                          (let ((_body91427_ _tl9140991424_))
                            (if '#t
                                (cons '%#import _body91427_)
                                (_E9140691415_)))))
                      (_E9140691415_)))))
          (_E9140591429_))))
    (define gx#core-compile-top-module%
      (lambda (_stx91360_)
        (let* ((_e9136191371_ _stx91360_)
               (_E9136391375_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9136191371_)))
               (_E9136291399_
                (lambda ()
                  (if (gx#stx-pair? _e9136191371_)
                      (let ((_e9136491379_ (gx#syntax-e _e9136191371_)))
                        (let ((_hd9136591382_ (##car _e9136491379_))
                              (_tl9136691384_ (##cdr _e9136491379_)))
                          (if (gx#stx-pair? _tl9136691384_)
                              (let ((_e9136791387_
                                     (gx#syntax-e _tl9136691384_)))
                                (let ((_hd9136891390_ (##car _e9136791387_))
                                      (_tl9136991392_ (##cdr _e9136791387_)))
                                  (let* ((_hd91395_ _hd9136891390_)
                                         (_body91397_ _tl9136991392_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _hd91395_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body91397_)))
                                        (_E9136391375_)))))
                              (_E9136391375_))))
                      (_E9136391375_)))))
          (_E9136291399_))))
    (define gx#core-compile-top-export%
      (lambda (_stx91330_)
        (let* ((_e9133191338_ _stx91330_)
               (_E9133391342_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9133191338_)))
               (_E9133291356_
                (lambda ()
                  (if (gx#stx-pair? _e9133191338_)
                      (let ((_e9133491346_ (gx#syntax-e _e9133191338_)))
                        (let ((_hd9133591349_ (##car _e9133491346_))
                              (_tl9133691351_ (##cdr _e9133491346_)))
                          (let ((_body91354_ _tl9133691351_))
                            (if '#t
                                (cons '%#export _body91354_)
                                (_E9133391342_)))))
                      (_E9133391342_)))))
          (_E9133291356_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx91300_)
        (let* ((_e9130191308_ _stx91300_)
               (_E9130391312_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9130191308_)))
               (_E9130291326_
                (lambda ()
                  (if (gx#stx-pair? _e9130191308_)
                      (let ((_e9130491316_ (gx#syntax-e _e9130191308_)))
                        (let ((_hd9130591319_ (##car _e9130491316_))
                              (_tl9130691321_ (##cdr _e9130491316_)))
                          (let ((_body91324_ _tl9130691321_))
                            (if '#t
                                (cons '%#provide _body91324_)
                                (_E9130391312_)))))
                      (_E9130391312_)))))
          (_E9130291326_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx91270_)
        (let* ((_e9127191278_ _stx91270_)
               (_E9127391282_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9127191278_)))
               (_E9127291296_
                (lambda ()
                  (if (gx#stx-pair? _e9127191278_)
                      (let ((_e9127491286_ (gx#syntax-e _e9127191278_)))
                        (let ((_hd9127591289_ (##car _e9127491286_))
                              (_tl9127691291_ (##cdr _e9127491286_)))
                          (let ((_body91294_ _tl9127691291_))
                            (if '#t
                                (cons '%#extern _body91294_)
                                (_E9127391282_)))))
                      (_E9127391282_)))))
          (_E9127291296_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx91216_)
        (let* ((_e9121791230_ _stx91216_)
               (_E9121991234_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9121791230_)))
               (_E9121891266_
                (lambda ()
                  (if (gx#stx-pair? _e9121791230_)
                      (let ((_e9122091238_ (gx#syntax-e _e9121791230_)))
                        (let ((_hd9122191241_ (##car _e9122091238_))
                              (_tl9122291243_ (##cdr _e9122091238_)))
                          (if (gx#stx-pair? _tl9122291243_)
                              (let ((_e9122391246_
                                     (gx#syntax-e _tl9122291243_)))
                                (let ((_hd9122491249_ (##car _e9122391246_))
                                      (_tl9122591251_ (##cdr _e9122391246_)))
                                  (let ((_hd91254_ _hd9122491249_))
                                    (if (gx#stx-pair? _tl9122591251_)
                                        (let ((_e9122691256_
                                               (gx#syntax-e _tl9122591251_)))
                                          (let ((_hd9122791259_
                                                 (##car _e9122691256_))
                                                (_tl9122891261_
                                                 (##cdr _e9122691256_)))
                                            (let ((_expr91264_ _hd9122791259_))
                                              (if (gx#stx-null? _tl9122891261_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd91254_)
                          (cons (gx#core-compile-top-syntax _expr91264_) '())))
              (_E9121991234_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9121991234_)))))
                                        (_E9121991234_)))))
                              (_E9121991234_))))
                      (_E9121991234_)))))
          (_E9121891266_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx91161_)
        (let* ((_e9116291175_ _stx91161_)
               (_E9116491179_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9116291175_)))
               (_E9116391212_
                (lambda ()
                  (if (gx#stx-pair? _e9116291175_)
                      (let ((_e9116591183_ (gx#syntax-e _e9116291175_)))
                        (let ((_hd9116691186_ (##car _e9116591183_))
                              (_tl9116791188_ (##cdr _e9116591183_)))
                          (if (gx#stx-pair? _tl9116791188_)
                              (let ((_e9116891191_
                                     (gx#syntax-e _tl9116791188_)))
                                (let ((_hd9116991194_ (##car _e9116891191_))
                                      (_tl9117091196_ (##cdr _e9116891191_)))
                                  (let ((_hd91199_ _hd9116991194_))
                                    (if (gx#stx-pair? _tl9117091196_)
                                        (let ((_e9117191201_
                                               (gx#syntax-e _tl9117091196_)))
                                          (let ((_hd9117291204_
                                                 (##car _e9117191201_))
                                                (_tl9117391206_
                                                 (##cdr _e9117191201_)))
                                            (let ((_expr91209_ _hd9117291204_))
                                              (if (gx#stx-null? _tl9117391206_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd91199_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr91209_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E9116491179_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9116491179_)))))
                                        (_E9116491179_)))))
                              (_E9116491179_))))
                      (_E9116491179_)))))
          (_E9116391212_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx91131_)
        (let* ((_e9113291139_ _stx91131_)
               (_E9113491143_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9113291139_)))
               (_E9113391157_
                (lambda ()
                  (if (gx#stx-pair? _e9113291139_)
                      (let ((_e9113591147_ (gx#syntax-e _e9113291139_)))
                        (let ((_hd9113691150_ (##car _e9113591147_))
                              (_tl9113791152_ (##cdr _e9113591147_)))
                          (let ((_body91155_ _tl9113791152_))
                            (if '#t
                                (cons '%#define-alias _body91155_)
                                (_E9113491143_)))))
                      (_E9113491143_)))))
          (_E9113391157_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx91101_)
        (let* ((_e9110291109_ _stx91101_)
               (_E9110491113_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9110291109_)))
               (_E9110391127_
                (lambda ()
                  (if (gx#stx-pair? _e9110291109_)
                      (let ((_e9110591117_ (gx#syntax-e _e9110291109_)))
                        (let ((_hd9110691120_ (##car _e9110591117_))
                              (_tl9110791122_ (##cdr _e9110591117_)))
                          (let ((_body91125_ _tl9110791122_))
                            (if '#t
                                (cons '%#define-runtime _body91125_)
                                (_E9110491113_)))))
                      (_E9110491113_)))))
          (_E9110391127_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx91071_)
        (let* ((_e9107291079_ _stx91071_)
               (_E9107491083_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9107291079_)))
               (_E9107391097_
                (lambda ()
                  (if (gx#stx-pair? _e9107291079_)
                      (let ((_e9107591087_ (gx#syntax-e _e9107291079_)))
                        (let ((_hd9107691090_ (##car _e9107591087_))
                              (_tl9107791092_ (##cdr _e9107591087_)))
                          (let ((_decls91095_ _tl9107791092_))
                            (if '#t
                                (cons '%#declare _decls91095_)
                                (_E9107491083_)))))
                      (_E9107491083_)))))
          (_E9107391097_))))
    (define gx#core-compile-top-lambda%
      (lambda (_stx91041_)
        (let* ((_e9104291049_ _stx91041_)
               (_E9104491053_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9104291049_)))
               (_E9104391067_
                (lambda ()
                  (if (gx#stx-pair? _e9104291049_)
                      (let ((_e9104591057_ (gx#syntax-e _e9104291049_)))
                        (let ((_hd9104691060_ (##car _e9104591057_))
                              (_tl9104791062_ (##cdr _e9104591057_)))
                          (let ((_clause91065_ _tl9104791062_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause91065_))
                                (_E9104491053_)))))
                      (_E9104491053_)))))
          (_E9104391067_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx90998_)
        (let* ((_e9099991009_ _stx90998_)
               (_E9100191013_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9099991009_)))
               (_E9100091037_
                (lambda ()
                  (if (gx#stx-pair? _e9099991009_)
                      (let ((_e9100291017_ (gx#syntax-e _e9099991009_)))
                        (let ((_hd9100391020_ (##car _e9100291017_))
                              (_tl9100491022_ (##cdr _e9100291017_)))
                          (let ((_hd91025_ _hd9100391020_))
                            (if (gx#stx-pair? _tl9100491022_)
                                (let ((_e9100591027_
                                       (gx#syntax-e _tl9100491022_)))
                                  (let ((_hd9100691030_ (##car _e9100591027_))
                                        (_tl9100791032_ (##cdr _e9100591027_)))
                                    (let ((_body91035_ _hd9100691030_))
                                      (if (gx#stx-null? _tl9100791032_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd91025_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body91035_)
                                                          '()))
                                              (_E9100191013_))
                                          (_E9100191013_)))))
                                (_E9100191013_)))))
                      (_E9100191013_)))))
          (_E9100091037_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx90968_)
        (let* ((_e9096990976_ _stx90968_)
               (_E9097190980_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9096990976_)))
               (_E9097090994_
                (lambda ()
                  (if (gx#stx-pair? _e9096990976_)
                      (let ((_e9097290984_ (gx#syntax-e _e9096990976_)))
                        (let ((_hd9097390987_ (##car _e9097290984_))
                              (_tl9097490989_ (##cdr _e9097290984_)))
                          (let ((_clauses90992_ _tl9097490989_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses90992_))
                                (_E9097190980_)))))
                      (_E9097190980_)))))
          (_E9097090994_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx90903_ _form90904_)
        (let* ((_e9090590918_ _stx90903_)
               (_E9090790922_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9090590918_)))
               (_E9090690954_
                (lambda ()
                  (if (gx#stx-pair? _e9090590918_)
                      (let ((_e9090890926_ (gx#syntax-e _e9090590918_)))
                        (let ((_hd9090990929_ (##car _e9090890926_))
                              (_tl9091090931_ (##cdr _e9090890926_)))
                          (if (gx#stx-pair? _tl9091090931_)
                              (let ((_e9091190934_
                                     (gx#syntax-e _tl9091090931_)))
                                (let ((_hd9091290937_ (##car _e9091190934_))
                                      (_tl9091390939_ (##cdr _e9091190934_)))
                                  (let ((_hd90942_ _hd9091290937_))
                                    (if (gx#stx-pair? _tl9091390939_)
                                        (let ((_e9091490944_
                                               (gx#syntax-e _tl9091390939_)))
                                          (let ((_hd9091590947_
                                                 (##car _e9091490944_))
                                                (_tl9091690949_
                                                 (##cdr _e9091490944_)))
                                            (let ((_body90952_ _hd9091590947_))
                                              (if (gx#stx-null? _tl9091690949_)
                                                  (if '#t
                                                      (cons _form90904_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd90942_)
                          (cons (gx#core-compile-top-syntax _body90952_) '())))
              (_E9090790922_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9090790922_)))))
                                        (_E9090790922_)))))
                              (_E9090790922_))))
                      (_E9090790922_)))))
          (_E9090690954_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx90961_)
        (let ((_form90963_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx90961_ _form90963_))))
    (define gx#core-compile-top-let-values%
      (lambda _g91776_
        (let ((_g91775_ (##length _g91776_)))
          (cond ((##fx= _g91775_ 1)
                 (apply (lambda (_stx90961_)
                          (gx#core-compile-top-let-values%__0 _stx90961_))
                        _g91776_))
                ((##fx= _g91775_ 2)
                 (apply (lambda (_stx90965_ _form90966_)
                          (gx#core-compile-top-let-values%__%
                           _stx90965_
                           _form90966_))
                        _g91776_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g91776_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx90900_)
        (gx#core-compile-top-let-values%__% _stx90900_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx90898_)
        (gx#core-compile-top-let-values%__% _stx90898_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx90857_)
        (let* ((_e9085890868_ _stx90857_)
               (_E9086090872_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9085890868_)))
               (_E9085990894_
                (lambda ()
                  (if (gx#stx-pair? _e9085890868_)
                      (let ((_e9086190876_ (gx#syntax-e _e9085890868_)))
                        (let ((_hd9086290879_ (##car _e9086190876_))
                              (_tl9086390881_ (##cdr _e9086190876_)))
                          (if (gx#stx-pair? _tl9086390881_)
                              (let ((_e9086490884_
                                     (gx#syntax-e _tl9086390881_)))
                                (let ((_hd9086590887_ (##car _e9086490884_))
                                      (_tl9086690889_ (##cdr _e9086490884_)))
                                  (let ((_e90892_ _hd9086590887_))
                                    (if (gx#stx-null? _tl9086690889_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e90892_)
                                                        '()))
                                            (_E9086090872_))
                                        (_E9086090872_)))))
                              (_E9086090872_))))
                      (_E9086090872_)))))
          (_E9085990894_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx90816_)
        (let* ((_e9081790827_ _stx90816_)
               (_E9081990831_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9081790827_)))
               (_E9081890853_
                (lambda ()
                  (if (gx#stx-pair? _e9081790827_)
                      (let ((_e9082090835_ (gx#syntax-e _e9081790827_)))
                        (let ((_hd9082190838_ (##car _e9082090835_))
                              (_tl9082290840_ (##cdr _e9082090835_)))
                          (if (gx#stx-pair? _tl9082290840_)
                              (let ((_e9082390843_
                                     (gx#syntax-e _tl9082290840_)))
                                (let ((_hd9082490846_ (##car _e9082390843_))
                                      (_tl9082590848_ (##cdr _e9082390843_)))
                                  (let ((_e90851_ _hd9082490846_))
                                    (if (gx#stx-null? _tl9082590848_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e90851_)
                                                        '()))
                                            (_E9081990831_))
                                        (_E9081990831_)))))
                              (_E9081990831_))))
                      (_E9081990831_)))))
          (_E9081890853_))))
    (define gx#core-compile-top-call%
      (lambda (_stx90773_)
        (let* ((_e9077490784_ _stx90773_)
               (_E9077690788_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9077490784_)))
               (_E9077590812_
                (lambda ()
                  (if (gx#stx-pair? _e9077490784_)
                      (let ((_e9077790792_ (gx#syntax-e _e9077490784_)))
                        (let ((_hd9077890795_ (##car _e9077790792_))
                              (_tl9077990797_ (##cdr _e9077790792_)))
                          (if (gx#stx-pair? _tl9077990797_)
                              (let ((_e9078090800_
                                     (gx#syntax-e _tl9077990797_)))
                                (let ((_hd9078190803_ (##car _e9078090800_))
                                      (_tl9078290805_ (##cdr _e9078090800_)))
                                  (let* ((_rator90808_ _hd9078190803_)
                                         (_args90810_ _tl9078290805_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator90808_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args90810_)))
                                        (_E9077690788_)))))
                              (_E9077690788_))))
                      (_E9077690788_)))))
          (_E9077590812_))))
    (define gx#core-compile-top-if%
      (lambda (_stx90706_)
        (let* ((_e9070790723_ _stx90706_)
               (_E9070990727_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9070790723_)))
               (_E9070890769_
                (lambda ()
                  (if (gx#stx-pair? _e9070790723_)
                      (let ((_e9071090731_ (gx#syntax-e _e9070790723_)))
                        (let ((_hd9071190734_ (##car _e9071090731_))
                              (_tl9071290736_ (##cdr _e9071090731_)))
                          (if (gx#stx-pair? _tl9071290736_)
                              (let ((_e9071390739_
                                     (gx#syntax-e _tl9071290736_)))
                                (let ((_hd9071490742_ (##car _e9071390739_))
                                      (_tl9071590744_ (##cdr _e9071390739_)))
                                  (let ((_test90747_ _hd9071490742_))
                                    (if (gx#stx-pair? _tl9071590744_)
                                        (let ((_e9071690749_
                                               (gx#syntax-e _tl9071590744_)))
                                          (let ((_hd9071790752_
                                                 (##car _e9071690749_))
                                                (_tl9071890754_
                                                 (##cdr _e9071690749_)))
                                            (let ((_K90757_ _hd9071790752_))
                                              (if (gx#stx-pair? _tl9071890754_)
                                                  (let ((_e9071990759_
                                                         (gx#syntax-e
                                                          _tl9071890754_)))
                                                    (let ((_hd9072090762_
                                                           (##car _e9071990759_))
                                                          (_tl9072190764_
                                                           (##cdr _e9071990759_)))
                                                      (let ((_E90767_
                                                             _hd9072090762_))
                                                        (if (gx#stx-null?
                                                             _tl9072190764_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test90747_)
                                    (cons (gx#core-compile-top-syntax _K90757_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E90767_)
                                                '()))))
                        (_E9070990727_))
                    (_E9070990727_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9070990727_)))))
                                        (_E9070990727_)))))
                              (_E9070990727_))))
                      (_E9070990727_)))))
          (_E9070890769_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx90665_)
        (let* ((_e9066690676_ _stx90665_)
               (_E9066890680_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9066690676_)))
               (_E9066790702_
                (lambda ()
                  (if (gx#stx-pair? _e9066690676_)
                      (let ((_e9066990684_ (gx#syntax-e _e9066690676_)))
                        (let ((_hd9067090687_ (##car _e9066990684_))
                              (_tl9067190689_ (##cdr _e9066990684_)))
                          (if (gx#stx-pair? _tl9067190689_)
                              (let ((_e9067290692_
                                     (gx#syntax-e _tl9067190689_)))
                                (let ((_hd9067390695_ (##car _e9067290692_))
                                      (_tl9067490697_ (##cdr _e9067290692_)))
                                  (let ((_id90700_ _hd9067390695_))
                                    (if (gx#stx-null? _tl9067490697_)
                                        (if (gx#identifier? _id90700_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id90700_)
                                                        '()))
                                            (_E9066890680_))
                                        (_E9066890680_)))))
                              (_E9066890680_))))
                      (_E9066890680_)))))
          (_E9066790702_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx90611_)
        (let* ((_e9061290625_ _stx90611_)
               (_E9061490629_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9061290625_)))
               (_E9061390661_
                (lambda ()
                  (if (gx#stx-pair? _e9061290625_)
                      (let ((_e9061590633_ (gx#syntax-e _e9061290625_)))
                        (let ((_hd9061690636_ (##car _e9061590633_))
                              (_tl9061790638_ (##cdr _e9061590633_)))
                          (if (gx#stx-pair? _tl9061790638_)
                              (let ((_e9061890641_
                                     (gx#syntax-e _tl9061790638_)))
                                (let ((_hd9061990644_ (##car _e9061890641_))
                                      (_tl9062090646_ (##cdr _e9061890641_)))
                                  (let ((_id90649_ _hd9061990644_))
                                    (if (gx#stx-pair? _tl9062090646_)
                                        (let ((_e9062190651_
                                               (gx#syntax-e _tl9062090646_)))
                                          (let ((_hd9062290654_
                                                 (##car _e9062190651_))
                                                (_tl9062390656_
                                                 (##cdr _e9062190651_)))
                                            (let ((_expr90659_ _hd9062290654_))
                                              (if (gx#stx-null? _tl9062390656_)
                                                  (if (gx#identifier?
                                                       _id90649_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id90649_)
                          (cons (gx#core-compile-top-syntax _expr90659_) '())))
              (_E9061490629_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9061490629_)))))
                                        (_E9061490629_)))))
                              (_E9061490629_))))
                      (_E9061490629_)))))
          (_E9061390661_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id90606_)
        (let ((_$e90608_ (gx#resolve-identifier__0 _id90606_)))
          (if _$e90608_
              (##unchecked-structure-ref _$e90608_ '1 gx#binding::t '#f)
              _id90606_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd90604_)
        (if (gx#identifier? _hd90604_)
            (gx#core-compile-top-runtime-ref _hd90604_)
            '#f)))))
