(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#&optimize-call
    (make-promise
     (lambda ()
       (let ((_tbl46352_ (make-table 'test: eq?)))
         (hash-copy! _tbl46352_ (force gxc#&basic-xform))
         (table-set! _tbl46352_ '%#call gxc#optimize-call%)
         _tbl46352_))))
  (define gxc#apply-optimize-call
    (lambda (_stx46345_ . _args46347_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx46345_ _args46347_))
       gxc#current-compile-methods
       (force gxc#&optimize-call))))
  (define gxc#optimize-call%
    (lambda (_stx46251_)
      (let* ((___stx4635546356_ _stx46251_)
             (_g4625446274_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4635546356_))))
        (let ((___kont4635746358_
               (lambda (_L46318_ _L46319_)
                 (let* ((_rator-id46337_ (gxc#identifier-symbol _L46319_))
                        (_rator-type46339_
                         (gxc#optimizer-resolve-type _rator-id46337_)))
                   (if (##structure-instance-of?
                        _rator-type46339_
                        'gxc#!procedure::t)
                       (begin
                         (gxc#verbose
                          '"optimize-call "
                          _rator-id46337_
                          '" => "
                          _rator-type46339_
                          '" "
                          (##structure-ref
                           _rator-type46339_
                           '1
                           gxc#!type::t
                           '#f))
                         (call-method
                          _rator-type46339_
                          'optimize-call
                          _stx46251_
                          _L46318_))
                       (if (not _rator-type46339_)
                           (gxc#xform-call% _stx46251_)
                           (gxc#raise-compile-error
                            '"Illegal application; not a procedure"
                            _stx46251_
                            _rator-type46339_))))))
              (___kont4635946360_ (lambda () (gxc#xform-call% _stx46251_))))
          (if (gx#stx-pair? ___stx4635546356_)
              (let ((_e4625846286_ (gx#stx-e ___stx4635546356_)))
                (let ((_tl4626046291_ (##cdr _e4625846286_))
                      (_hd4625946289_ (##car _e4625846286_)))
                  (if (gx#stx-pair? _tl4626046291_)
                      (let ((_e4626146294_ (gx#stx-e _tl4626046291_)))
                        (let ((_tl4626346299_ (##cdr _e4626146294_))
                              (_hd4626246297_ (##car _e4626146294_)))
                          (if (gx#stx-pair? _hd4626246297_)
                              (let ((_e4626446302_ (gx#stx-e _hd4626246297_)))
                                (let ((_tl4626646307_ (##cdr _e4626446302_))
                                      (_hd4626546305_ (##car _e4626446302_)))
                                  (if (gx#identifier? _hd4626546305_)
                                      (if (gx#stx-eq? '%#ref _hd4626546305_)
                                          (if (gx#stx-pair? _tl4626646307_)
                                              (let ((_e4626746310_
                                                     (gx#stx-e
                                                      _tl4626646307_)))
                                                (let ((_tl4626946315_
                                                       (##cdr _e4626746310_))
                                                      (_hd4626846313_
                                                       (##car _e4626746310_)))
                                                  (if (gx#stx-null?
                                                       _tl4626946315_)
                                                      (___kont4635746358_
                                                       _tl4626346299_
                                                       _hd4626846313_)
                                                      (___kont4635946360_))))
                                              (___kont4635946360_))
                                          (___kont4635946360_))
                                      (___kont4635946360_))))
                              (___kont4635946360_))))
                      (___kont4635946360_))))
              (___kont4635946360_))))))
  (define gxc#!struct-pred::optimize-call
    (lambda (_self46105_ _stx46106_ _args46107_)
      (let* ((_self4610846114_ _self46105_)
             (_E4611046118_
              (lambda () (error '"No clause matching" _self4610846114_)))
             (_K4611146243_
              (lambda (_struct-t46121_)
                (let* ((_struct-type46123_
                        (gxc#optimizer-resolve-type _struct-t46121_))
                       (_struct-type4612446138_ _struct-type46123_)
                       (_else4612746146_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx46106_
                           _struct-t46121_
                           _struct-type46123_))))
                  (let ((_K4613046218_
                         (lambda (_plist46157_ _struct-type-id46158_)
                           (let* ((___stx4639346394_ _args46107_)
                                  (_g4616146171_
                                   (lambda ()
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      ___stx4639346394_))))
                             (let ((___kont4639546396_
                                    (lambda (_L46191_)
                                      (let ((_expr46212_
                                             (gxc#compile-e _L46191_))
                                            (_op46213_
                                             (if (and _plist46157_
                                                      (assgetq 'final:
                                                               _plist46157_))
                                                 '%#struct-direct-instance?
                                                 '%#struct-instance?)))
                                        (gxc#xform-wrap-source
                                         (cons _op46213_
                                               (cons (cons '%#quote
                                                           (cons _struct-type-id46158_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _expr46212_ '())))
                                         _stx46106_))))
                                   (___kont4639746398_
                                    (lambda ()
                                      (gxc#raise-compile-error
                                       '"Illegal struct predicate application"
                                       _stx46106_))))
                               (if (gx#stx-pair? ___stx4639346394_)
                                   (let ((_e4616446183_
                                          (gx#stx-e ___stx4639346394_)))
                                     (let ((_tl4616646188_
                                            (##cdr _e4616446183_))
                                           (_hd4616546186_
                                            (##car _e4616446183_)))
                                       (if (gx#stx-null? _tl4616646188_)
                                           (___kont4639546396_ _hd4616546186_)
                                           (___kont4639746398_))))
                                   (___kont4639746398_))))))
                        (_K4612946151_
                         (lambda () (gxc#xform-call% _stx46106_))))
                    (let ((_try-match4612646154_
                           (lambda ()
                             (if (##eq? _struct-type4612446138_ '#f)
                                 (_K4612946151_)
                                 (_else4612746146_)))))
                      (if (##structure-instance-of?
                           _struct-type4612446138_
                           'gxc#!struct-type::t)
                          (let* ((_e4613146221_
                                  (##vector-ref _struct-type4612446138_ '1))
                                 (_e4613246226_
                                  (##vector-ref _struct-type4612446138_ '2))
                                 (_e4613346229_
                                  (##vector-ref _struct-type4612446138_ '3))
                                 (_e4613446232_
                                  (##vector-ref _struct-type4612446138_ '4))
                                 (_e4613546235_
                                  (##vector-ref _struct-type4612446138_ '5))
                                 (_e4613646238_
                                  (##vector-ref _struct-type4612446138_ '6)))
                            (let ((_struct-type-id46224_ _e4613146221_)
                                  (_plist46241_ _e4613646238_))
                              (_K4613046218_
                               _plist46241_
                               _struct-type-id46224_)))
                          (_try-match4612646154_))))))))
        (if (##structure-instance-of? _self4610846114_ 'gxc#!struct-pred::t)
            (let* ((_e4611246246_ (##vector-ref _self4610846114_ '1))
                   (_struct-t46249_ _e4611246246_))
              (_K4611146243_ _struct-t46249_))
            (_E4611046118_)))))
  (bind-method!
   gxc#!struct-pred::t
   'optimize-call
   gxc#!struct-pred::optimize-call
   '#f)
  (define gxc#!struct-cons::optimize-call
    (lambda (_self45879_ _stx45880_ _args45881_)
      (let* ((_self4588245888_ _self45879_)
             (_E4588445892_
              (lambda () (error '"No clause matching" _self4588245888_)))
             (_K4588545975_
              (lambda (_struct-t45895_)
                (let* ((_struct-type45897_
                        (gxc#optimizer-resolve-type _struct-t45895_))
                       (_struct-type4589845911_ _struct-type45897_)
                       (_else4590145919_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct constructor application; not a struct type"
                           _stx45880_
                           _struct-t45895_
                           _struct-type45897_))))
                  (let ((_K4590445949_
                         (lambda (_ctor45930_
                                  _xfields45931_
                                  _fields45932_
                                  _type-id45933_)
                           (let* ((_args45935_ (map gxc#compile-e _args45881_))
                                  (_$e45937_
                                   (if _ctor45930_
                                       (if _xfields45931_
                                           (gxc#!struct-type-lookup-method
                                            _struct-type45897_
                                            _ctor45930_)
                                           '#f)
                                       '#f)))
                             (if _$e45937_
                                 ((lambda (_kons45940_)
                                    (let ((_$obj45942_
                                           (make-symbol (gensym '__obj))))
                                      (gxc#xform-wrap-source
                                       (cons '%#let-values
                                             (cons (cons (cons (cons _$obj45942_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons (cons '%#call
                                   (cons (cons '%#ref (cons 'make-object '()))
                                         (cons (cons '%#ref
                                                     (cons _struct-t45895_
                                                           '()))
                                               (cons (cons '%#quote
                                                           (cons (fx+ _fields45932_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _xfields45931_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons '%#begin
                                                               (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gxc#xform-wrap-source
                               (cons '%#call
                                     (cons (cons '%#ref (cons _kons45940_ '()))
                                           (cons (cons '%#ref
                                                       (cons _$obj45942_ '()))
                                                 _args45935_)))
                               _stx45880_))
                             (cons (cons '%#ref (cons _$obj45942_ '())) '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _stx45880_)))
                                  _$e45937_)
                                 (if (or _ctor45930_ (not _xfields45931_))
                                     (gxc#xform-wrap-source
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons 'make-struct-instance
                                                              '()))
                                                  (cons (cons '%#ref
                                                              (cons _struct-t45895_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _args45935_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _stx45880_)
                                     (let ((_arity45947_
                                            (fx+ _fields45932_
                                                 _xfields45931_)))
                                       (if (fx= _arity45947_
                                                (length _args45935_))
                                           (gxc#xform-wrap-source
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#ref (cons _struct-t45895_ '())) _args45935_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _stx45880_)
                                           (gxc#raise-compile-error
                                            '"Illegal struct constructor application; arity mismatch"
                                            _stx45880_
                                            _struct-t45895_
                                            _arity45947_))))))))
                        (_K4590345924_
                         (lambda ()
                           (gxc#verbose
                            '"cannot inline struct constructor; unknown struct type "
                            _struct-t45895_)
                           (gxc#xform-call% _stx45880_))))
                    (let ((_try-match4590045927_
                           (lambda ()
                             (if (##eq? _struct-type4589845911_ '#f)
                                 (_K4590345924_)
                                 (_else4590145919_)))))
                      (if (##structure-instance-of?
                           _struct-type4589845911_
                           'gxc#!struct-type::t)
                          (let* ((_e4590545952_
                                  (##vector-ref _struct-type4589845911_ '1))
                                 (_e4590645957_
                                  (##vector-ref _struct-type4589845911_ '2))
                                 (_e4590745960_
                                  (##vector-ref _struct-type4589845911_ '3))
                                 (_e4590845965_
                                  (##vector-ref _struct-type4589845911_ '4))
                                 (_e4590945970_
                                  (##vector-ref _struct-type4589845911_ '5)))
                            (let ((_type-id45955_ _e4590545952_)
                                  (_fields45963_ _e4590745960_)
                                  (_xfields45968_ _e4590845965_)
                                  (_ctor45973_ _e4590945970_))
                              (_K4590445949_
                               _ctor45973_
                               _xfields45968_
                               _fields45963_
                               _type-id45955_)))
                          (_try-match4590045927_))))))))
        (if (##structure-instance-of? _self4588245888_ 'gxc#!struct-cons::t)
            (let* ((_e4588645978_ (##vector-ref _self4588245888_ '1))
                   (_struct-t45981_ _e4588645978_))
              (_K4588545975_ _struct-t45981_))
            (_E4588445892_)))))
  (bind-method!
   gxc#!struct-cons::t
   'optimize-call
   gxc#!struct-cons::optimize-call
   '#f)
  (define gxc#!struct-getf::optimize-call
    (lambda (_self45590_ _stx45591_ _args45592_)
      (let* ((_self4559345601_ _self45590_)
             (_E4559545605_
              (lambda () (error '"No clause matching" _self4559345601_)))
             (_K4559645739_
              (lambda (_unchecked?45608_ _off45609_ _struct-t45610_)
                (let* ((_struct-type45612_
                        (gxc#optimizer-resolve-type _struct-t45610_))
                       (_struct-type4561345627_ _struct-type45612_)
                       (_else4561645635_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx45591_
                           _struct-t45610_
                           _struct-type45612_))))
                  (let ((_K4561945710_
                         (lambda (_plist45646_
                                  _xfields45647_
                                  _fields45648_
                                  _struct-type-id45649_)
                           (if _xfields45647_
                               (let* ((___stx4644146442_ _args45592_)
                                      (_g4565245662_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx4644146442_))))
                                 (let ((___kont4644346444_
                                        (lambda (_L45682_)
                                          (let ((_expr45703_
                                                 (gxc#compile-e _L45682_))
                                                (_off45704_
                                                 (fx+ _off45609_
                                                      _xfields45647_
                                                      '1))
                                                (_op45705_
                                                 (if _unchecked?45608_
                                                     '%#struct-unchecked-ref
                                                     (if (and _plist45646_
                                                              (assgetq 'final:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _plist45646_))
                 '%#struct-direct-ref
                 '%#struct-ref))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (gxc#xform-wrap-source
                                             (cons _op45705_
                                                   (cons (cons '%#ref
                                                               (cons _struct-t45610_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons '%#quote (cons _off45704_ '()))
                       (cons _expr45703_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _stx45591_))))
                                       (___kont4644546446_
                                        (lambda ()
                                          (gxc#raise-compile-error
                                           '"Illegal struct accessor application"
                                           _stx45591_))))
                                   (if (gx#stx-pair? ___stx4644146442_)
                                       (let ((_e4565545674_
                                              (gx#stx-e ___stx4644146442_)))
                                         (let ((_tl4565745679_
                                                (##cdr _e4565545674_))
                                               (_hd4565645677_
                                                (##car _e4565545674_)))
                                           (if (gx#stx-null? _tl4565745679_)
                                               (___kont4644346444_
                                                _hd4565645677_)
                                               (___kont4644546446_))))
                                       (___kont4644546446_))))
                               (begin
                                 (gxc#verbose
                                  '"struct-getf: incomplete struct "
                                  _struct-type-id45649_)
                                 (gxc#xform-call% _stx45591_)))))
                        (_K4561845640_
                         (lambda () (gxc#xform-call% _stx45591_))))
                    (let ((_try-match4561545643_
                           (lambda ()
                             (if (##eq? _struct-type4561345627_ '#f)
                                 (_K4561845640_)
                                 (_else4561645635_)))))
                      (if (##structure-instance-of?
                           _struct-type4561345627_
                           'gxc#!struct-type::t)
                          (let* ((_e4562045713_
                                  (##vector-ref _struct-type4561345627_ '1))
                                 (_e4562145718_
                                  (##vector-ref _struct-type4561345627_ '2))
                                 (_e4562245721_
                                  (##vector-ref _struct-type4561345627_ '3))
                                 (_e4562345726_
                                  (##vector-ref _struct-type4561345627_ '4))
                                 (_e4562445731_
                                  (##vector-ref _struct-type4561345627_ '5))
                                 (_e4562545734_
                                  (##vector-ref _struct-type4561345627_ '6)))
                            (let ((_struct-type-id45716_ _e4562045713_)
                                  (_fields45724_ _e4562245721_)
                                  (_xfields45729_ _e4562345726_)
                                  (_plist45737_ _e4562545734_))
                              (_K4561945710_
                               _plist45737_
                               _xfields45729_
                               _fields45724_
                               _struct-type-id45716_)))
                          (_try-match4561545643_))))))))
        (if (##structure-instance-of? _self4559345601_ 'gxc#!struct-getf::t)
            (let* ((_e4559745742_ (##vector-ref _self4559345601_ '1))
                   (_struct-t45745_ _e4559745742_)
                   (_e4559845747_ (##vector-ref _self4559345601_ '2))
                   (_off45750_ _e4559845747_)
                   (_e4559945752_ (##vector-ref _self4559345601_ '3))
                   (_unchecked?45755_ _e4559945752_))
              (_K4559645739_ _unchecked?45755_ _off45750_ _struct-t45745_))
            (_E4559545605_)))))
  (bind-method!
   gxc#!struct-getf::t
   'optimize-call
   gxc#!struct-getf::optimize-call
   '#f)
  (define gxc#!struct-setf::optimize-call
    (lambda (_self45284_ _stx45285_ _args45286_)
      (let* ((_self4528745295_ _self45284_)
             (_E4528945299_
              (lambda () (error '"No clause matching" _self4528745295_)))
             (_K4529045450_
              (lambda (_unchecked?45302_ _off45303_ _struct-t45304_)
                (let* ((_struct-type45306_
                        (gxc#optimizer-resolve-type _struct-t45304_))
                       (_struct-type4530745321_ _struct-type45306_)
                       (_else4531045329_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx45285_
                           _struct-t45304_
                           _struct-type45306_))))
                  (let ((_K4531345421_
                         (lambda (_plist45340_
                                  _xfields45341_
                                  _fields45342_
                                  _struct-type-id45343_)
                           (if _xfields45341_
                               (let* ((___stx4647446475_ _args45286_)
                                      (_g4534645360_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx4647446475_))))
                                 (let ((___kont4647646477_
                                        (lambda (_L45388_ _L45389_)
                                          (let ((_expr45413_
                                                 (gxc#compile-e _L45389_))
                                                (_val45414_
                                                 (gxc#compile-e _L45388_))
                                                (_off45415_
                                                 (fx+ _off45303_
                                                      _xfields45341_
                                                      '1))
                                                (_op45416_
                                                 (if _unchecked?45302_
                                                     '%#struct-unchecked-set!
                                                     (if (and _plist45340_
                                                              (assgetq 'final:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _plist45340_))
                 '%#struct-direct-set!
                 '%#struct-set!))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (gxc#xform-wrap-source
                                             (cons _op45416_
                                                   (cons (cons '%#ref
                                                               (cons _struct-t45304_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons '%#quote (cons _off45415_ '()))
                       (cons _expr45413_ (cons _val45414_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _stx45285_))))
                                       (___kont4647846479_
                                        (lambda ()
                                          (gxc#raise-compile-error
                                           '"Illegal struct mutator application"
                                           _stx45285_))))
                                   (if (gx#stx-pair? ___stx4647446475_)
                                       (let ((_e4535045372_
                                              (gx#stx-e ___stx4647446475_)))
                                         (let ((_tl4535245377_
                                                (##cdr _e4535045372_))
                                               (_hd4535145375_
                                                (##car _e4535045372_)))
                                           (if (gx#stx-pair? _tl4535245377_)
                                               (let ((_e4535345380_
                                                      (gx#stx-e
                                                       _tl4535245377_)))
                                                 (let ((_tl4535545385_
                                                        (##cdr _e4535345380_))
                                                       (_hd4535445383_
                                                        (##car _e4535345380_)))
                                                   (if (gx#stx-null?
                                                        _tl4535545385_)
                                                       (___kont4647646477_
                                                        _hd4535445383_
                                                        _hd4535145375_)
                                                       (___kont4647846479_))))
                                               (___kont4647846479_))))
                                       (___kont4647846479_))))
                               (begin
                                 (gxc#verbose
                                  '"struct-setf: incomplete struct "
                                  _struct-type-id45343_)
                                 (gxc#xform-call% _stx45285_)))))
                        (_K4531245334_
                         (lambda () (gxc#xform-call% _stx45285_))))
                    (let ((_try-match4530945337_
                           (lambda ()
                             (if (##eq? _struct-type4530745321_ '#f)
                                 (_K4531245334_)
                                 (_else4531045329_)))))
                      (if (##structure-instance-of?
                           _struct-type4530745321_
                           'gxc#!struct-type::t)
                          (let* ((_e4531445424_
                                  (##vector-ref _struct-type4530745321_ '1))
                                 (_e4531545429_
                                  (##vector-ref _struct-type4530745321_ '2))
                                 (_e4531645432_
                                  (##vector-ref _struct-type4530745321_ '3))
                                 (_e4531745437_
                                  (##vector-ref _struct-type4530745321_ '4))
                                 (_e4531845442_
                                  (##vector-ref _struct-type4530745321_ '5))
                                 (_e4531945445_
                                  (##vector-ref _struct-type4530745321_ '6)))
                            (let ((_struct-type-id45427_ _e4531445424_)
                                  (_fields45435_ _e4531645432_)
                                  (_xfields45440_ _e4531745437_)
                                  (_plist45448_ _e4531945445_))
                              (_K4531345421_
                               _plist45448_
                               _xfields45440_
                               _fields45435_
                               _struct-type-id45427_)))
                          (_try-match4530945337_))))))))
        (if (##structure-instance-of? _self4528745295_ 'gxc#!struct-setf::t)
            (let* ((_e4529145453_ (##vector-ref _self4528745295_ '1))
                   (_struct-t45456_ _e4529145453_)
                   (_e4529245458_ (##vector-ref _self4528745295_ '2))
                   (_off45461_ _e4529245458_)
                   (_e4529345463_ (##vector-ref _self4528745295_ '3))
                   (_unchecked?45466_ _e4529345463_))
              (_K4529045450_ _unchecked?45466_ _off45461_ _struct-t45456_))
            (_E4528945299_)))))
  (bind-method!
   gxc#!struct-setf::t
   'optimize-call
   gxc#!struct-setf::optimize-call
   '#f)
  (define gxc#!lambda::optimize-call
    (lambda (_self45118_ _stx45119_ _args45120_)
      (let* ((_self4512145130_ _self45118_)
             (_E4512345134_
              (lambda () (error '"No clause matching" _self4512145130_)))
             (_K4512445141_
              (lambda (_inline45137_ _dispatch45138_ _arity45139_)
                (if (gxc#!lambda-arity-match? _self45118_ _args45120_)
                    '#!void
                    (gxc#raise-compile-error
                     '"Illegal lambda application; arity mismatch"
                     _stx45119_
                     _arity45139_))
                (if _inline45137_
                    (begin
                      (gxc#verbose '"inline lambda")
                      (gxc#compile-e
                       (gxc#xform-wrap-source
                        (_inline45137_ _stx45119_)
                        _stx45119_)))
                    (if _dispatch45138_
                        (begin
                          (gxc#verbose '"dispatch lambda => " _dispatch45138_)
                          (gxc#compile-e
                           (gxc#xform-wrap-source
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons _dispatch45138_ '()))
                                        _args45120_))
                            _stx45119_)))
                        (gxc#xform-call% _stx45119_))))))
        (if (##structure-instance-of? _self4512145130_ 'gxc#!lambda::t)
            (let* ((_e4512545144_ (##vector-ref _self4512145130_ '1))
                   (_e4512645147_ (##vector-ref _self4512145130_ '2))
                   (_arity45150_ _e4512645147_)
                   (_e4512745152_ (##vector-ref _self4512145130_ '3))
                   (_dispatch45155_ _e4512745152_)
                   (_e4512845157_ (##vector-ref _self4512145130_ '4))
                   (_inline45160_ _e4512845157_))
              (_K4512445141_ _inline45160_ _dispatch45155_ _arity45150_))
            (_E4512345134_)))))
  (bind-method! gxc#!lambda::t 'optimize-call gxc#!lambda::optimize-call '#f)
  (define gxc#!case-lambda::optimize-call
    (lambda (_self44957_ _stx44958_ _args44959_)
      (let* ((_self4496044967_ _self44957_)
             (_E4496244971_
              (lambda () (error '"No clause matching" _self4496044967_)))
             (_K4496344985_
              (lambda (_clauses44974_)
                (let ((_$e44980_
                       (find (lambda (_g4497544977_)
                               (gxc#!lambda-arity-match?
                                _g4497544977_
                                _args44959_))
                             _clauses44974_)))
                  (if _$e44980_
                      ((lambda (_clause44983_)
                         (call-method
                          _clause44983_
                          'optimize-call
                          _stx44958_
                          _args44959_))
                       _$e44980_)
                      (gxc#raise-compile-error
                       '"Illegal case-lambda application; arity mismatch"
                       _stx44958_
                       (map gxc#!lambda-arity _clauses44974_)))))))
        (if (##structure-instance-of? _self4496044967_ 'gxc#!case-lambda::t)
            (let* ((_e4496444988_ (##vector-ref _self4496044967_ '1))
                   (_e4496544991_ (##vector-ref _self4496044967_ '2))
                   (_clauses44994_ _e4496544991_))
              (_K4496344985_ _clauses44994_))
            (_E4496244971_)))))
  (bind-method!
   gxc#!case-lambda::t
   'optimize-call
   gxc#!case-lambda::optimize-call
   '#f)
  (define gxc#!lambda-arity-match?
    (lambda (_self44771_ _args44772_)
      (let* ((_self4477344780_ _self44771_)
             (_E4477544784_
              (lambda () (error '"No clause matching" _self4477344780_)))
             (_K4477644824_
              (lambda (_arity44787_)
                (let* ((_arity4478844797_ _arity44787_)
                       (_E4479144801_
                        (lambda ()
                          (error '"No clause matching" _arity4478844797_))))
                  (let ((_K4479544821_
                         (lambda () (fx= (length _args44772_) _arity44787_)))
                        (_K4479244807_
                         (lambda (_arity44805_)
                           (fx>= (length _args44772_) _arity44805_))))
                    (let ((_try-match4479044817_
                           (lambda ()
                             (if (##pair? _arity4478844797_)
                                 (let ((_tl4479444812_
                                        (##cdr _arity4478844797_))
                                       (_hd4479344810_
                                        (##car _arity4478844797_)))
                                   (if (##null? _tl4479444812_)
                                       (let ((_arity44815_ _hd4479344810_))
                                         (_K4479244807_ _arity44815_))
                                       (_E4479144801_)))
                                 (_E4479144801_)))))
                      (if (fixnum? _arity4478844797_)
                          (_K4479544821_)
                          (_try-match4479044817_))))))))
        (if (##structure-instance-of? _self4477344780_ 'gxc#!lambda::t)
            (let* ((_e4477744827_ (##vector-ref _self4477344780_ '1))
                   (_e4477844830_ (##vector-ref _self4477344780_ '2))
                   (_arity44833_ _e4477844830_))
              (_K4477644824_ _arity44833_))
            (_E4477544784_)))))
  (define gxc#!kw-lambda::optimize-call
    (lambda (_self44656_ _stx44657_ _args44658_)
      (let* ((_self4465944667_ _self44656_)
             (_E4466144671_
              (lambda () (error '"No clause matching" _self4465944667_)))
             (_K4466244755_
              (lambda (_dispatch44674_ _table44675_)
                (let* ((_g4467644685_
                        (gxc#optimizer-lookup-type _dispatch44674_))
                       (_else4467844693_
                        (lambda ()
                          (gxc#verbose
                           '"unknown keyword dispatch lambda "
                           _dispatch44674_)
                          (gxc#xform-call% _stx44657_)))
                       (_K4468044739_
                        (lambda (_main44696_ _keys44697_)
                          (let ((_g46639_
                                 (gxc#!kw-lambda-split-args
                                  _stx44657_
                                  _args44658_)))
                            (begin
                              (let ((_g46640_
                                     (if (##values? _g46639_)
                                         (##vector-length _g46639_)
                                         1)))
                                (if (not (##fx= _g46640_ 2))
                                    (error "Context expects 2 values"
                                           _g46640_)))
                              (let ((_pargs44699_ (##vector-ref _g46639_ 0))
                                    (_kwargs44700_ (##vector-ref _g46639_ 1)))
                                (begin
                                  (gxc#verbose
                                   '"dispatch kw-lambda => "
                                   _main44696_)
                                  (if _table44675_
                                      (let ((_xargs44707_
                                             (map (lambda (_key44702_)
                                                    (let ((_$e44704_
                                                           (assgetq _key44702_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _kwargs44700_)))
              (if _$e44704_ (values _$e44704_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _keys44697_)))
                                        (for-each
                                         (lambda (_kw44709_)
                                           (if (memq (car _kw44709_)
                                                     _keys44697_)
                                               '#!void
                                               (gxc#raise-compile-error
                                                '"Illegal keyword lambda application; unexpected keyword"
                                                _stx44657_
                                                _keys44697_
                                                _kw44709_)))
                                         _kwargs44700_)
                                        (gxc#compile-e
                                         (gxc#xform-wrap-source
                                          (cons '%#call
                                                (cons (cons '%#ref
                                                            (cons _main44696_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons '#f '()))
                    (foldr1 cons _pargs44699_ _xargs44707_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _stx44657_)))
                                      (let* ((_kwt44711_
                                              (make-symbol (gensym '__kwt)))
                                             (_kwvars44714_
                                              (map (lambda (_g46641_)
                                                     (make-symbol
                                                      (gensym '__kw)))
                                                   _kwargs44700_))
                                             (_kwbind44719_
                                              (map (lambda (_kw44716_
                                                            _kwvar44717_)
                                                     (cons (cons _kwvar44717_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   (cons (cdr _kw44716_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs44700_
                                                   _kwvars44714_))
                                             (_kwset44724_
                                              (map (lambda (_kw44721_
                                                            _kwvar44722_)
                                                     (cons '%#call
                                                           (cons '(%#ref hash-put!)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons _kwt44711_ '()))
                               (cons (cons '%#quote (cons (car _kw44721_) '()))
                                     (cons (cons '%#ref
                                                 (cons _kwvar44722_ '()))
                                           '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs44700_
                                                   _kwvars44714_))
                                             (_xkwargs44729_
                                              (map (lambda (_kw44726_
                                                            _kwvar44727_)
                                                     (cons (car _kw44726_)
                                                           (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _kwvar44727_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs44700_
                                                   _kwvars44714_))
                                             (_xargs44736_
                                              (map (lambda (_key44731_)
                                                     (let ((_$e44733_
                                                            (assgetq _key44731_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _xkwargs44729_)))
               (if _$e44733_ (values _$e44733_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _keys44697_)))
                                        (gxc#compile-e
                                         (gxc#xform-wrap-source
                                          (cons '%#let-values
                                                (cons _kwbind44719_
                                                      (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (cons (cons _kwt44711_ '())
                                            (cons (gxc#xform-wrap-source
                                                   (cons '%#call
                                                         (cons '(%#ref make-hash-table-eq)
                                                               (cons '(%#quote size:)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons '%#quote
                                         (cons (length _kwargs44700_) '()))
                                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx44657_)
                                                  '()))
                                      '())
                                (cons (cons '%#begin
                                            (foldr1 cons
                                                    (cons (gxc#xform-wrap-source
                                                           (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons _main44696_ '()))
                               (cons (cons '%#ref (cons _kwt44711_ '()))
                                     (foldr1 cons _pargs44699_ _xargs44736_))))
                   _stx44657_)
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _kwset44724_))
                                      '())))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _stx44657_)))))))))))
                  (if (##structure-instance-of?
                       _g4467644685_
                       'gxc#!kw-lambda-primary::t)
                      (let* ((_e4468144742_ (##vector-ref _g4467644685_ '1))
                             (_e4468244745_ (##vector-ref _g4467644685_ '2))
                             (_keys44748_ _e4468244745_)
                             (_e4468344750_ (##vector-ref _g4467644685_ '3))
                             (_main44753_ _e4468344750_))
                        (_K4468044739_ _main44753_ _keys44748_))
                      (_else4467844693_))))))
        (if (##structure-instance-of? _self4465944667_ 'gxc#!kw-lambda::t)
            (let* ((_e4466344758_ (##vector-ref _self4465944667_ '1))
                   (_e4466444761_ (##vector-ref _self4465944667_ '2))
                   (_table44764_ _e4466444761_)
                   (_e4466544766_ (##vector-ref _self4465944667_ '3))
                   (_dispatch44769_ _e4466544766_))
              (_K4466244755_ _dispatch44769_ _table44764_))
            (_E4466144671_)))))
  (bind-method!
   gxc#!kw-lambda::t
   'optimize-call
   gxc#!kw-lambda::optimize-call
   '#f)
  (define gxc#!kw-lambda-split-args
    (lambda (_stx44269_ _args44270_)
      (let _lp44272_ ((_rest44274_ _args44270_)
                      (_pargs44275_ '())
                      (_kwargs44276_ '()))
        (let* ((___stx4652246523_ _rest44274_)
               (_g4428244334_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx4652246523_))))
          (let ((___kont4652446525_
                 (lambda (_L44513_ _L44514_)
                   (_lp44272_
                    _L44513_
                    (cons _L44514_ _pargs44275_)
                    _kwargs44276_)))
                (___kont4652646527_
                 (lambda (_L44459_)
                   (values (foldl1 cons _L44459_ _pargs44275_)
                           (reverse _kwargs44276_))))
                (___kont4652846529_
                 (lambda (_L44406_ _L44407_ _L44408_)
                   (let ((_kw44425_ (gx#stx-e _L44408_)))
                     (if (assq _kw44425_ _kwargs44276_)
                         (gxc#raise-compile-error
                          '"Illegal keyword lambda application; duplicate keyword"
                          _stx44269_
                          _kw44425_)
                         (_lp44272_
                          _L44406_
                          _pargs44275_
                          (cons (cons _kw44425_ _L44407_) _kwargs44276_))))))
                (___kont4653046531_
                 (lambda (_L44354_ _L44355_)
                   (_lp44272_
                    _L44354_
                    (cons _L44355_ _pargs44275_)
                    _kwargs44276_)))
                (___kont4653246533_
                 (lambda ()
                   (values (reverse _pargs44275_) (reverse _kwargs44276_)))))
            (let* ((_g4428144341_
                    (lambda ()
                      (if (gx#stx-null? ___stx4652246523_)
                          (___kont4653246533_)
                          (_g4428244334_))))
                   (___match4662946630_
                    (lambda (_e4431344374_
                             _hd4431444377_
                             _tl4431544379_
                             _e4431644382_
                             _hd4431744385_
                             _tl4431844387_
                             _e4431944390_
                             _hd4432044393_
                             _tl4432144395_
                             _e4432244398_
                             _hd4432344401_
                             _tl4432444403_)
                      (let ((_L44406_ _tl4432444403_)
                            (_L44407_ _hd4432344401_)
                            (_L44408_ _hd4432044393_))
                        (if (gx#stx-keyword? _L44408_)
                            (___kont4652846529_ _L44406_ _L44407_ _L44408_)
                            (___kont4653046531_
                             _tl4431544379_
                             _hd4431444377_))))))
              (if (gx#stx-pair? ___stx4652246523_)
                  (let ((_e4428644478_ (gx#stx-e ___stx4652246523_)))
                    (let ((_tl4428844483_ (##cdr _e4428644478_))
                          (_hd4428744481_ (##car _e4428644478_)))
                      (if (gx#stx-pair? _hd4428744481_)
                          (let ((_e4428944486_ (gx#stx-e _hd4428744481_)))
                            (let ((_tl4429144491_ (##cdr _e4428944486_))
                                  (_hd4429044489_ (##car _e4428944486_)))
                              (if (gx#identifier? _hd4429044489_)
                                  (if (gx#stx-eq? '%#quote _hd4429044489_)
                                      (if (gx#stx-pair? _tl4429144491_)
                                          (let ((_e4429244494_
                                                 (gx#stx-e _tl4429144491_)))
                                            (let ((_tl4429444499_
                                                   (##cdr _e4429244494_))
                                                  (_hd4429344497_
                                                   (##car _e4429244494_)))
                                              (if (gx#stx-datum?
                                                   _hd4429344497_)
                                                  (let ((_e4429544502_
                                                         (gx#stx-e
                                                          _hd4429344497_)))
                                                    (if (equal? _e4429544502_
                                                                '#!key)
                                                        (if (gx#stx-null?
                                                             _tl4429444499_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl4428844483_)
                        (let ((_e4429644505_ (gx#stx-e _tl4428844483_)))
                          (let ((_tl4429844510_ (##cdr _e4429644505_))
                                (_hd4429744508_ (##car _e4429644505_)))
                            (___kont4652446525_
                             _tl4429844510_
                             _hd4429744508_)))
                        (___kont4653046531_ _tl4428844483_ _hd4428744481_))
                    (___kont4653046531_ _tl4428844483_ _hd4428744481_))
                (if (equal? _e4429544502_ '#!rest)
                    (if (gx#stx-null? _tl4429444499_)
                        (___kont4652646527_ _tl4428844483_)
                        (___kont4653046531_ _tl4428844483_ _hd4428744481_))
                    (if (gx#stx-null? _tl4429444499_)
                        (if (gx#stx-pair? _tl4428844483_)
                            (let ((_e4432244398_ (gx#stx-e _tl4428844483_)))
                              (let ((_tl4432444403_ (##cdr _e4432244398_))
                                    (_hd4432344401_ (##car _e4432244398_)))
                                (___match4662946630_
                                 _e4428644478_
                                 _hd4428744481_
                                 _tl4428844483_
                                 _e4428944486_
                                 _hd4429044489_
                                 _tl4429144491_
                                 _e4429244494_
                                 _hd4429344497_
                                 _tl4429444499_
                                 _e4432244398_
                                 _hd4432344401_
                                 _tl4432444403_)))
                            (___kont4653046531_ _tl4428844483_ _hd4428744481_))
                        (___kont4653046531_ _tl4428844483_ _hd4428744481_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _tl4429444499_)
                                                      (if (gx#stx-pair?
                                                           _tl4428844483_)
                                                          (let ((_e4432244398_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl4428844483_)))
                    (let ((_tl4432444403_ (##cdr _e4432244398_))
                          (_hd4432344401_ (##car _e4432244398_)))
                      (___match4662946630_
                       _e4428644478_
                       _hd4428744481_
                       _tl4428844483_
                       _e4428944486_
                       _hd4429044489_
                       _tl4429144491_
                       _e4429244494_
                       _hd4429344497_
                       _tl4429444499_
                       _e4432244398_
                       _hd4432344401_
                       _tl4432444403_)))
                  (___kont4653046531_ _tl4428844483_ _hd4428744481_))
              (___kont4653046531_ _tl4428844483_ _hd4428744481_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (___kont4653046531_
                                           _tl4428844483_
                                           _hd4428744481_))
                                      (___kont4653046531_
                                       _tl4428844483_
                                       _hd4428744481_))
                                  (___kont4653046531_
                                   _tl4428844483_
                                   _hd4428744481_))))
                          (___kont4653046531_ _tl4428844483_ _hd4428744481_))))
                  (_g4428144341_))))))))
  (define gxc#!kw-lambda-primary::optimize-call
    (lambda (_self44265_ _stx44266_ _args44267_) (gxc#xform-call% _stx44266_)))
  (bind-method!
   gxc#!kw-lambda-primary::t
   'optimize-call
   gxc#!kw-lambda-primary::optimize-call
   '#f))
