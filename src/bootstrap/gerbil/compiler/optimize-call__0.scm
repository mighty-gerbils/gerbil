(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#&optimize-call
    (make-promise
     (lambda ()
       (let ((_tbl34276_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl34276_ (force gxc#&basic-xform))
           (table-set! _tbl34276_ '%#call gxc#optimize-call%)
           _tbl34276_)))))
  (define gxc#apply-optimize-call
    (lambda (_stx34269_ . _args34271_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx34269_ _args34271_))
       gxc#current-compile-methods
       (force gxc#&optimize-call))))
  (define gxc#optimize-call%
    (lambda (_stx34175_)
      (let* ((_g3417834198_
              (lambda (_g3417934195_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3417934195_)))
             (_g3417734205_
              (lambda (_g3417934201_)
                ((lambda () (gxc#xform-call% _stx34175_)))))
             (_g3417634266_
              (lambda (_g3417934208_)
                (if (gx#stx-pair? _g3417934208_)
                    (let ((_e3418234210_ (gx#stx-e _g3417934208_)))
                      (let ((_hd3418334213_ (##car _e3418234210_))
                            (_tl3418434215_ (##cdr _e3418234210_)))
                        (if (gx#stx-pair? _tl3418434215_)
                            (let ((_e3418534218_ (gx#stx-e _tl3418434215_)))
                              (let ((_hd3418634221_ (##car _e3418534218_))
                                    (_tl3418734223_ (##cdr _e3418534218_)))
                                (if (gx#stx-pair? _hd3418634221_)
                                    (let ((_e3418834226_
                                           (gx#stx-e _hd3418634221_)))
                                      (let ((_hd3418934229_
                                             (##car _e3418834226_))
                                            (_tl3419034231_
                                             (##cdr _e3418834226_)))
                                        (if (gx#identifier? _hd3418934229_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd3418934229_)
                                                (if (gx#stx-pair?
                                                     _tl3419034231_)
                                                    (let ((_e3419134234_
                                                           (gx#stx-e
                                                            _tl3419034231_)))
                                                      (let ((_hd3419234237_
                                                             (##car _e3419134234_))
                                                            (_tl3419334239_
                                                             (##cdr _e3419134234_)))
                                                        (if (gx#stx-null?
                                                             _tl3419334239_)
                                                            ((lambda (_L34242_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L34243_)
                       (let* ((_rator-id34261_
                               (gxc#identifier-symbol _L34243_))
                              (_rator-type34263_
                               (gxc#optimizer-resolve-type _rator-id34261_)))
                         (if (##structure-instance-of?
                              _rator-type34263_
                              'gxc#!procedure::t)
                             (begin
                               (gxc#verbose
                                '"optimize-call "
                                _rator-id34261_
                                '" => "
                                _rator-type34263_
                                '" "
                                (##structure-ref
                                 _rator-type34263_
                                 '1
                                 gxc#!type::t
                                 '#f))
                               (call-method
                                _rator-type34263_
                                'optimize-call
                                _stx34175_
                                _L34242_))
                             (if (not _rator-type34263_)
                                 (gxc#xform-call% _stx34175_)
                                 (gxc#raise-compile-error
                                  '"Illegal application; not a procedure"
                                  _stx34175_
                                  _rator-type34263_)))))
                     _tl3418734223_
                     _hd3419234237_)
                    (_g3417734205_ _g3417934208_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3417734205_
                                                     _g3417934208_))
                                                (_g3417734205_ _g3417934208_))
                                            (_g3417734205_ _g3417934208_))))
                                    (_g3417734205_ _g3417934208_))))
                            (_g3417734205_ _g3417934208_))))
                    (_g3417734205_ _g3417934208_)))))
        (_g3417634266_ _stx34175_))))
  (define gxc#!struct-pred::optimize-call
    (lambda (_self34029_ _stx34030_ _args34031_)
      (let* ((_self3403234038_ _self34029_)
             (_E3403434042_
              (lambda () (error '"No clause matching" _self3403234038_)))
             (_K3403534167_
              (lambda (_struct-t34045_)
                (let* ((_struct-type34047_
                        (gxc#optimizer-resolve-type _struct-t34045_))
                       (_struct-type3404834062_ _struct-type34047_)
                       (_else3405134070_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx34030_
                           _struct-t34045_
                           _struct-type34047_))))
                  (let ((_K3405434142_
                         (lambda (_plist34081_ _struct-type-id34082_)
                           (let* ((_g3408534095_
                                   (lambda (_g3408634092_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g3408634092_)))
                                  (_g3408434102_
                                   (lambda (_g3408634098_)
                                     ((lambda ()
                                        (gxc#raise-compile-error
                                         '"Illegal struct predicate application"
                                         _stx34030_)))))
                                  (_g3408334139_
                                   (lambda (_g3408634105_)
                                     (if (gx#stx-pair? _g3408634105_)
                                         (let ((_e3408834107_
                                                (gx#stx-e _g3408634105_)))
                                           (let ((_hd3408934110_
                                                  (##car _e3408834107_))
                                                 (_tl3409034112_
                                                  (##cdr _e3408834107_)))
                                             (if (gx#stx-null? _tl3409034112_)
                                                 ((lambda (_L34115_)
                                                    (let ((_expr34136_
                                                           (gxc#compile-e
                                                            _L34115_))
                                                          (_op34137_
                                                           (if (if _plist34081_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (assgetq 'final: _plist34081_)
                           '#f)
                       '%#struct-direct-instance?
                       '%#struct-instance?)))
              (gxc#xform-wrap-source
               (cons _op34137_
                     (cons (cons '%#quote (cons _struct-type-id34082_ '()))
                           (cons _expr34136_ '())))
               _stx34030_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd3408934110_)
                                                 (_g3408434102_
                                                  _g3408634105_))))
                                         (_g3408434102_ _g3408634105_)))))
                             (_g3408334139_ _args34031_))))
                        (_K3405334075_
                         (lambda () (gxc#xform-call% _stx34030_))))
                    (let ((_try-match3405034078_
                           (lambda ()
                             (if (##eq? _struct-type3404834062_ '#f)
                                 (let () (_K3405334075_))
                                 (_else3405134070_)))))
                      (if (##structure-instance-of?
                           _struct-type3404834062_
                           'gxc#!struct-type::t)
                          (let* ((_e3405534145_
                                  (##vector-ref _struct-type3404834062_ '1))
                                 (_e3405634150_
                                  (##vector-ref _struct-type3404834062_ '2))
                                 (_e3405734153_
                                  (##vector-ref _struct-type3404834062_ '3))
                                 (_e3405834156_
                                  (##vector-ref _struct-type3404834062_ '4))
                                 (_e3405934159_
                                  (##vector-ref _struct-type3404834062_ '5))
                                 (_e3406034162_
                                  (##vector-ref _struct-type3404834062_ '6)))
                            (let ((_struct-type-id34148_ _e3405534145_)
                                  (_plist34165_ _e3406034162_))
                              (_K3405434142_
                               _plist34165_
                               _struct-type-id34148_)))
                          (_try-match3405034078_))))))))
        (if (##structure-instance-of? _self3403234038_ 'gxc#!struct-pred::t)
            (let* ((_e3403634170_ (##vector-ref _self3403234038_ '1))
                   (_struct-t34173_ _e3403634170_))
              (_K3403534167_ _struct-t34173_))
            (_E3403434042_)))))
  (bind-method!
   gxc#!struct-pred::t
   'optimize-call
   gxc#!struct-pred::optimize-call
   '#f)
  (define gxc#!struct-cons::optimize-call
    (lambda (_self33803_ _stx33804_ _args33805_)
      (let* ((_self3380633812_ _self33803_)
             (_E3380833816_
              (lambda () (error '"No clause matching" _self3380633812_)))
             (_K3380933899_
              (lambda (_struct-t33819_)
                (let* ((_struct-type33821_
                        (gxc#optimizer-resolve-type _struct-t33819_))
                       (_struct-type3382233835_ _struct-type33821_)
                       (_else3382533843_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct constructor application; not a struct type"
                           _stx33804_
                           _struct-t33819_
                           _struct-type33821_))))
                  (let ((_K3382833873_
                         (lambda (_ctor33854_
                                  _xfields33855_
                                  _fields33856_
                                  _type-id33857_)
                           (let* ((_args33859_ (map gxc#compile-e _args33805_))
                                  (_$e33861_
                                   (if _ctor33854_
                                       (if _xfields33855_
                                           (gxc#!struct-type-lookup-method
                                            _struct-type33821_
                                            _ctor33854_)
                                           '#f)
                                       '#f)))
                             (if _$e33861_
                                 ((lambda (_kons33864_)
                                    (let ((_$obj33866_
                                           (make-symbol (gensym '__obj))))
                                      (gxc#xform-wrap-source
                                       (cons '%#let-values
                                             (cons (cons (cons (cons _$obj33866_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons (cons '%#call
                                   (cons (cons '%#ref (cons 'make-object '()))
                                         (cons (cons '%#ref
                                                     (cons _struct-t33819_
                                                           '()))
                                               (cons (cons '%#quote
                                                           (cons (fx+ _fields33856_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _xfields33855_)
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
                                     (cons (cons '%#ref (cons _kons33864_ '()))
                                           (cons (cons '%#ref
                                                       (cons _$obj33866_ '()))
                                                 _args33859_)))
                               _stx33804_))
                             (cons (cons '%#ref (cons _$obj33866_ '())) '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _stx33804_)))
                                  _$e33861_)
                                 (if (let ((_$e33868_ _ctor33854_))
                                       (if _$e33868_
                                           _$e33868_
                                           (not _xfields33855_)))
                                     (gxc#xform-wrap-source
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons 'make-struct-instance
                                                              '()))
                                                  (cons (cons '%#ref
                                                              (cons _struct-t33819_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _args33859_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _stx33804_)
                                     (let ((_arity33871_
                                            (fx+ _fields33856_
                                                 _xfields33855_)))
                                       (if (fx= _arity33871_
                                                (length _args33859_))
                                           (gxc#xform-wrap-source
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#ref (cons _struct-t33819_ '())) _args33859_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _stx33804_)
                                           (gxc#raise-compile-error
                                            '"Illegal struct constructor application; arity mismatch"
                                            _stx33804_
                                            _struct-t33819_
                                            _arity33871_))))))))
                        (_K3382733848_
                         (lambda ()
                           (begin
                             (gxc#verbose
                              '"cannot inline struct constructor; unknown struct type "
                              _struct-t33819_)
                             (gxc#xform-call% _stx33804_)))))
                    (let ((_try-match3382433851_
                           (lambda ()
                             (if (##eq? _struct-type3382233835_ '#f)
                                 (let () (_K3382733848_))
                                 (_else3382533843_)))))
                      (if (##structure-instance-of?
                           _struct-type3382233835_
                           'gxc#!struct-type::t)
                          (let* ((_e3382933876_
                                  (##vector-ref _struct-type3382233835_ '1))
                                 (_e3383033881_
                                  (##vector-ref _struct-type3382233835_ '2))
                                 (_e3383133884_
                                  (##vector-ref _struct-type3382233835_ '3))
                                 (_e3383233889_
                                  (##vector-ref _struct-type3382233835_ '4))
                                 (_e3383333894_
                                  (##vector-ref _struct-type3382233835_ '5)))
                            (let ((_type-id33879_ _e3382933876_)
                                  (_fields33887_ _e3383133884_)
                                  (_xfields33892_ _e3383233889_)
                                  (_ctor33897_ _e3383333894_))
                              (_K3382833873_
                               _ctor33897_
                               _xfields33892_
                               _fields33887_
                               _type-id33879_)))
                          (_try-match3382433851_))))))))
        (if (##structure-instance-of? _self3380633812_ 'gxc#!struct-cons::t)
            (let* ((_e3381033902_ (##vector-ref _self3380633812_ '1))
                   (_struct-t33905_ _e3381033902_))
              (_K3380933899_ _struct-t33905_))
            (_E3380833816_)))))
  (bind-method!
   gxc#!struct-cons::t
   'optimize-call
   gxc#!struct-cons::optimize-call
   '#f)
  (define gxc#!struct-getf::optimize-call
    (lambda (_self33514_ _stx33515_ _args33516_)
      (let* ((_self3351733525_ _self33514_)
             (_E3351933529_
              (lambda () (error '"No clause matching" _self3351733525_)))
             (_K3352033663_
              (lambda (_unchecked?33532_ _off33533_ _struct-t33534_)
                (let* ((_struct-type33536_
                        (gxc#optimizer-resolve-type _struct-t33534_))
                       (_struct-type3353733551_ _struct-type33536_)
                       (_else3354033559_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx33515_
                           _struct-t33534_
                           _struct-type33536_))))
                  (let ((_K3354333634_
                         (lambda (_plist33570_
                                  _xfields33571_
                                  _fields33572_
                                  _struct-type-id33573_)
                           (if _xfields33571_
                               (let* ((_g3357633586_
                                       (lambda (_g3357733583_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g3357733583_)))
                                      (_g3357533593_
                                       (lambda (_g3357733589_)
                                         ((lambda ()
                                            (gxc#raise-compile-error
                                             '"Illegal struct accessor application"
                                             _stx33515_)))))
                                      (_g3357433631_
                                       (lambda (_g3357733596_)
                                         (if (gx#stx-pair? _g3357733596_)
                                             (let ((_e3357933598_
                                                    (gx#stx-e _g3357733596_)))
                                               (let ((_hd3358033601_
                                                      (##car _e3357933598_))
                                                     (_tl3358133603_
                                                      (##cdr _e3357933598_)))
                                                 (if (gx#stx-null?
                                                      _tl3358133603_)
                                                     ((lambda (_L33606_)
                                                        (let ((_expr33627_
                                                               (gxc#compile-e
                                                                _L33606_))
                                                              (_off33628_
                                                               (fx+ _off33533_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xfields33571_
                            '1))
                      (_op33629_
                       (if _unchecked?33532_
                           '%#struct-unchecked-ref
                           (if (if _plist33570_
                                   (assgetq 'final: _plist33570_)
                                   '#f)
                               '%#struct-direct-ref
                               '%#struct-ref))))
                  (gxc#xform-wrap-source
                   (cons _op33629_
                         (cons (cons '%#ref (cons _struct-t33534_ '()))
                               (cons (cons '%#quote (cons _off33628_ '()))
                                     (cons _expr33627_ '()))))
                   _stx33515_)))
              _hd3358033601_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g3357533593_
                                                      _g3357733596_))))
                                             (_g3357533593_ _g3357733596_)))))
                                 (_g3357433631_ _args33516_))
                               (begin
                                 (gxc#verbose
                                  '"struct-getf: incomplete struct "
                                  _struct-type-id33573_)
                                 (gxc#xform-call% _stx33515_)))))
                        (_K3354233564_
                         (lambda () (gxc#xform-call% _stx33515_))))
                    (let ((_try-match3353933567_
                           (lambda ()
                             (if (##eq? _struct-type3353733551_ '#f)
                                 (let () (_K3354233564_))
                                 (_else3354033559_)))))
                      (if (##structure-instance-of?
                           _struct-type3353733551_
                           'gxc#!struct-type::t)
                          (let* ((_e3354433637_
                                  (##vector-ref _struct-type3353733551_ '1))
                                 (_e3354533642_
                                  (##vector-ref _struct-type3353733551_ '2))
                                 (_e3354633645_
                                  (##vector-ref _struct-type3353733551_ '3))
                                 (_e3354733650_
                                  (##vector-ref _struct-type3353733551_ '4))
                                 (_e3354833655_
                                  (##vector-ref _struct-type3353733551_ '5))
                                 (_e3354933658_
                                  (##vector-ref _struct-type3353733551_ '6)))
                            (let ((_struct-type-id33640_ _e3354433637_)
                                  (_fields33648_ _e3354633645_)
                                  (_xfields33653_ _e3354733650_)
                                  (_plist33661_ _e3354933658_))
                              (_K3354333634_
                               _plist33661_
                               _xfields33653_
                               _fields33648_
                               _struct-type-id33640_)))
                          (_try-match3353933567_))))))))
        (if (##structure-instance-of? _self3351733525_ 'gxc#!struct-getf::t)
            (let* ((_e3352133666_ (##vector-ref _self3351733525_ '1))
                   (_struct-t33669_ _e3352133666_)
                   (_e3352233671_ (##vector-ref _self3351733525_ '2))
                   (_off33674_ _e3352233671_)
                   (_e3352333676_ (##vector-ref _self3351733525_ '3))
                   (_unchecked?33679_ _e3352333676_))
              (_K3352033663_ _unchecked?33679_ _off33674_ _struct-t33669_))
            (_E3351933529_)))))
  (bind-method!
   gxc#!struct-getf::t
   'optimize-call
   gxc#!struct-getf::optimize-call
   '#f)
  (define gxc#!struct-setf::optimize-call
    (lambda (_self33208_ _stx33209_ _args33210_)
      (let* ((_self3321133219_ _self33208_)
             (_E3321333223_
              (lambda () (error '"No clause matching" _self3321133219_)))
             (_K3321433374_
              (lambda (_unchecked?33226_ _off33227_ _struct-t33228_)
                (let* ((_struct-type33230_
                        (gxc#optimizer-resolve-type _struct-t33228_))
                       (_struct-type3323133245_ _struct-type33230_)
                       (_else3323433253_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx33209_
                           _struct-t33228_
                           _struct-type33230_))))
                  (let ((_K3323733345_
                         (lambda (_plist33264_
                                  _xfields33265_
                                  _fields33266_
                                  _struct-type-id33267_)
                           (if _xfields33265_
                               (let* ((_g3327033284_
                                       (lambda (_g3327133281_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g3327133281_)))
                                      (_g3326933291_
                                       (lambda (_g3327133287_)
                                         ((lambda ()
                                            (gxc#raise-compile-error
                                             '"Illegal struct mutator application"
                                             _stx33209_)))))
                                      (_g3326833342_
                                       (lambda (_g3327133294_)
                                         (if (gx#stx-pair? _g3327133294_)
                                             (let ((_e3327433296_
                                                    (gx#stx-e _g3327133294_)))
                                               (let ((_hd3327533299_
                                                      (##car _e3327433296_))
                                                     (_tl3327633301_
                                                      (##cdr _e3327433296_)))
                                                 (if (gx#stx-pair?
                                                      _tl3327633301_)
                                                     (let ((_e3327733304_
                                                            (gx#stx-e
                                                             _tl3327633301_)))
                                                       (let ((_hd3327833307_
                                                              (##car _e3327733304_))
                                                             (_tl3327933309_
                                                              (##cdr _e3327733304_)))
                                                         (if (gx#stx-null?
                                                              _tl3327933309_)
                                                             ((lambda (_L33312_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L33313_)
                        (let ((_expr33337_ (gxc#compile-e _L33313_))
                              (_val33338_ (gxc#compile-e _L33312_))
                              (_off33339_ (fx+ _off33227_ _xfields33265_ '1))
                              (_op33340_
                               (if _unchecked?33226_
                                   '%#struct-unchecked-set!
                                   (if (if _plist33264_
                                           (assgetq 'final: _plist33264_)
                                           '#f)
                                       '%#struct-direct-set!
                                       '%#struct-set!))))
                          (gxc#xform-wrap-source
                           (cons _op33340_
                                 (cons (cons '%#ref (cons _struct-t33228_ '()))
                                       (cons (cons '%#quote
                                                   (cons _off33339_ '()))
                                             (cons _expr33337_
                                                   (cons _val33338_ '())))))
                           _stx33209_)))
                      _hd3327833307_
                      _hd3327533299_)
                     (_g3326933291_ _g3327133294_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g3326933291_
                                                      _g3327133294_))))
                                             (_g3326933291_ _g3327133294_)))))
                                 (_g3326833342_ _args33210_))
                               (begin
                                 (gxc#verbose
                                  '"struct-setf: incomplete struct "
                                  _struct-type-id33267_)
                                 (gxc#xform-call% _stx33209_)))))
                        (_K3323633258_
                         (lambda () (gxc#xform-call% _stx33209_))))
                    (let ((_try-match3323333261_
                           (lambda ()
                             (if (##eq? _struct-type3323133245_ '#f)
                                 (let () (_K3323633258_))
                                 (_else3323433253_)))))
                      (if (##structure-instance-of?
                           _struct-type3323133245_
                           'gxc#!struct-type::t)
                          (let* ((_e3323833348_
                                  (##vector-ref _struct-type3323133245_ '1))
                                 (_e3323933353_
                                  (##vector-ref _struct-type3323133245_ '2))
                                 (_e3324033356_
                                  (##vector-ref _struct-type3323133245_ '3))
                                 (_e3324133361_
                                  (##vector-ref _struct-type3323133245_ '4))
                                 (_e3324233366_
                                  (##vector-ref _struct-type3323133245_ '5))
                                 (_e3324333369_
                                  (##vector-ref _struct-type3323133245_ '6)))
                            (let ((_struct-type-id33351_ _e3323833348_)
                                  (_fields33359_ _e3324033356_)
                                  (_xfields33364_ _e3324133361_)
                                  (_plist33372_ _e3324333369_))
                              (_K3323733345_
                               _plist33372_
                               _xfields33364_
                               _fields33359_
                               _struct-type-id33351_)))
                          (_try-match3323333261_))))))))
        (if (##structure-instance-of? _self3321133219_ 'gxc#!struct-setf::t)
            (let* ((_e3321533377_ (##vector-ref _self3321133219_ '1))
                   (_struct-t33380_ _e3321533377_)
                   (_e3321633382_ (##vector-ref _self3321133219_ '2))
                   (_off33385_ _e3321633382_)
                   (_e3321733387_ (##vector-ref _self3321133219_ '3))
                   (_unchecked?33390_ _e3321733387_))
              (_K3321433374_ _unchecked?33390_ _off33385_ _struct-t33380_))
            (_E3321333223_)))))
  (bind-method!
   gxc#!struct-setf::t
   'optimize-call
   gxc#!struct-setf::optimize-call
   '#f)
  (define gxc#!lambda::optimize-call
    (lambda (_self33042_ _stx33043_ _args33044_)
      (let* ((_self3304533054_ _self33042_)
             (_E3304733058_
              (lambda () (error '"No clause matching" _self3304533054_)))
             (_K3304833065_
              (lambda (_inline33061_ _dispatch33062_ _arity33063_)
                (begin
                  (if (gxc#!lambda-arity-match? _self33042_ _args33044_)
                      '#!void
                      (gxc#raise-compile-error
                       '"Illegal lambda application; arity mismatch"
                       _stx33043_
                       _arity33063_))
                  (if _inline33061_
                      (begin
                        (gxc#verbose '"inline lambda")
                        (gxc#compile-e
                         (gxc#xform-wrap-source
                          (_inline33061_ _stx33043_)
                          _stx33043_)))
                      (if _dispatch33062_
                          (begin
                            (gxc#verbose
                             '"dispatch lambda => "
                             _dispatch33062_)
                            (gxc#compile-e
                             (gxc#xform-wrap-source
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons _dispatch33062_ '()))
                                          _args33044_))
                              _stx33043_)))
                          (gxc#xform-call% _stx33043_)))))))
        (if (##structure-instance-of? _self3304533054_ 'gxc#!lambda::t)
            (let* ((_e3304933068_ (##vector-ref _self3304533054_ '1))
                   (_e3305033071_ (##vector-ref _self3304533054_ '2))
                   (_arity33074_ _e3305033071_)
                   (_e3305133076_ (##vector-ref _self3304533054_ '3))
                   (_dispatch33079_ _e3305133076_)
                   (_e3305233081_ (##vector-ref _self3304533054_ '4))
                   (_inline33084_ _e3305233081_))
              (_K3304833065_ _inline33084_ _dispatch33079_ _arity33074_))
            (_E3304733058_)))))
  (bind-method! gxc#!lambda::t 'optimize-call gxc#!lambda::optimize-call '#f)
  (define gxc#!case-lambda::optimize-call
    (lambda (_self32881_ _stx32882_ _args32883_)
      (let* ((_self3288432891_ _self32881_)
             (_E3288632895_
              (lambda () (error '"No clause matching" _self3288432891_)))
             (_K3288732909_
              (lambda (_clauses32898_)
                (let ((_$e32904_
                       (find (lambda (_g3289932901_)
                               (gxc#!lambda-arity-match?
                                _g3289932901_
                                _args32883_))
                             _clauses32898_)))
                  (if _$e32904_
                      ((lambda (_clause32907_)
                         (call-method
                          _clause32907_
                          'optimize-call
                          _stx32882_
                          _args32883_))
                       _$e32904_)
                      (gxc#raise-compile-error
                       '"Illegal case-lambda application; arity mismatch"
                       _stx32882_
                       (map gxc#!lambda-arity _clauses32898_)))))))
        (if (##structure-instance-of? _self3288432891_ 'gxc#!case-lambda::t)
            (let* ((_e3288832912_ (##vector-ref _self3288432891_ '1))
                   (_e3288932915_ (##vector-ref _self3288432891_ '2))
                   (_clauses32918_ _e3288932915_))
              (_K3288732909_ _clauses32918_))
            (_E3288632895_)))))
  (bind-method!
   gxc#!case-lambda::t
   'optimize-call
   gxc#!case-lambda::optimize-call
   '#f)
  (define gxc#!lambda-arity-match?
    (lambda (_self32695_ _args32696_)
      (let* ((_self3269732704_ _self32695_)
             (_E3269932708_
              (lambda () (error '"No clause matching" _self3269732704_)))
             (_K3270032748_
              (lambda (_arity32711_)
                (let* ((_arity3271232721_ _arity32711_)
                       (_E3271532725_
                        (lambda ()
                          (error '"No clause matching" _arity3271232721_))))
                  (let ((_K3271932745_
                         (lambda () (fx= (length _args32696_) _arity32711_)))
                        (_K3271632731_
                         (lambda (_arity32729_)
                           (fx>= (length _args32696_) _arity32729_))))
                    (let ((_try-match3271432741_
                           (lambda ()
                             (if (##pair? _arity3271232721_)
                                 (let ((_tl3271832736_
                                        (##cdr _arity3271232721_))
                                       (_hd3271732734_
                                        (##car _arity3271232721_)))
                                   (if (##null? _tl3271832736_)
                                       (let ((_arity32739_ _hd3271732734_))
                                         (_K3271632731_ _arity32739_))
                                       (_E3271532725_)))
                                 (_E3271532725_)))))
                      (if (fixnum? _arity3271232721_)
                          (let () (_K3271932745_))
                          (_try-match3271432741_))))))))
        (if (##structure-instance-of? _self3269732704_ 'gxc#!lambda::t)
            (let* ((_e3270132751_ (##vector-ref _self3269732704_ '1))
                   (_e3270232754_ (##vector-ref _self3269732704_ '2))
                   (_arity32757_ _e3270232754_))
              (_K3270032748_ _arity32757_))
            (_E3269932708_)))))
  (define gxc#!kw-lambda::optimize-call
    (lambda (_self32580_ _stx32581_ _args32582_)
      (let* ((_self3258332591_ _self32580_)
             (_E3258532595_
              (lambda () (error '"No clause matching" _self3258332591_)))
             (_K3258632679_
              (lambda (_dispatch32598_ _table32599_)
                (let* ((_g3260032609_
                        (gxc#optimizer-lookup-type _dispatch32598_))
                       (_else3260232617_
                        (lambda ()
                          (begin
                            (gxc#verbose
                             '"unknown keyword dispatch lambda "
                             _dispatch32598_)
                            (gxc#xform-call% _stx32581_))))
                       (_K3260432663_
                        (lambda (_main32620_ _keys32621_)
                          (let ((_g34293_
                                 (gxc#!kw-lambda-split-args
                                  _stx32581_
                                  _args32582_)))
                            (begin
                              (let ((_g34294_
                                     (if (##values? _g34293_)
                                         (##vector-length _g34293_)
                                         1)))
                                (if (not (##fx= _g34294_ 2))
                                    (error "Context expects 2 values"
                                           _g34294_)))
                              (let ((_pargs32623_ (##vector-ref _g34293_ 0))
                                    (_kwargs32624_ (##vector-ref _g34293_ 1)))
                                (begin
                                  (gxc#verbose
                                   '"dispatch kw-lambda => "
                                   _main32620_)
                                  (if _table32599_
                                      (let ((_xargs32631_
                                             (map (lambda (_key32626_)
                                                    (let ((_$e32628_
                                                           (assgetq _key32626_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _kwargs32624_)))
              (if _$e32628_ (values _$e32628_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _keys32621_)))
                                        (begin
                                          (for-each
                                           (lambda (_kw32633_)
                                             (if (memq (car _kw32633_)
                                                       _keys32621_)
                                                 '#!void
                                                 (gxc#raise-compile-error
                                                  '"Illegal keyword lambda application; unexpected keyword"
                                                  _stx32581_
                                                  _keys32621_
                                                  _kw32633_)))
                                           _kwargs32624_)
                                          (gxc#compile-e
                                           (gxc#xform-wrap-source
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons _main32620_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote (cons '#f '()))
                      (foldr1 cons _pargs32623_ _xargs32631_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _stx32581_))))
                                      (let* ((_kwt32635_
                                              (make-symbol (gensym '__kwt)))
                                             (_kwvars32638_
                                              (map (lambda (_g34295_)
                                                     (make-symbol
                                                      (gensym '__kw)))
                                                   _kwargs32624_))
                                             (_kwbind32643_
                                              (map (lambda (_kw32640_
                                                            _kwvar32641_)
                                                     (cons (cons _kwvar32641_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   (cons (cdr _kw32640_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs32624_
                                                   _kwvars32638_))
                                             (_kwset32648_
                                              (map (lambda (_kw32645_
                                                            _kwvar32646_)
                                                     (cons '%#call
                                                           (cons '(%#ref hash-put!)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons _kwt32635_ '()))
                               (cons (cons '%#quote (cons (car _kw32645_) '()))
                                     (cons (cons '%#ref
                                                 (cons _kwvar32646_ '()))
                                           '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs32624_
                                                   _kwvars32638_))
                                             (_xkwargs32653_
                                              (map (lambda (_kw32650_
                                                            _kwvar32651_)
                                                     (cons (car _kw32650_)
                                                           (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _kwvar32651_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs32624_
                                                   _kwvars32638_))
                                             (_xargs32660_
                                              (map (lambda (_key32655_)
                                                     (let ((_$e32657_
                                                            (assgetq _key32655_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _xkwargs32653_)))
               (if _$e32657_ (values _$e32657_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _keys32621_)))
                                        (gxc#compile-e
                                         (gxc#xform-wrap-source
                                          (cons '%#let-values
                                                (cons _kwbind32643_
                                                      (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (cons (cons _kwt32635_ '())
                                            (cons (gxc#xform-wrap-source
                                                   (cons '%#call
                                                         (cons '(%#ref make-hash-table-eq)
                                                               (cons '(%#quote size:)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons '%#quote
                                         (cons (length _kwargs32624_) '()))
                                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx32581_)
                                                  '()))
                                      '())
                                (cons (cons '%#begin
                                            (foldr1 cons
                                                    (cons (gxc#xform-wrap-source
                                                           (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons _main32620_ '()))
                               (cons (cons '%#ref (cons _kwt32635_ '()))
                                     (foldr1 cons _pargs32623_ _xargs32660_))))
                   _stx32581_)
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _kwset32648_))
                                      '())))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _stx32581_)))))))))))
                  (if (##structure-instance-of?
                       _g3260032609_
                       'gxc#!kw-lambda-primary::t)
                      (let* ((_e3260532666_ (##vector-ref _g3260032609_ '1))
                             (_e3260632669_ (##vector-ref _g3260032609_ '2))
                             (_keys32672_ _e3260632669_)
                             (_e3260732674_ (##vector-ref _g3260032609_ '3))
                             (_main32677_ _e3260732674_))
                        (_K3260432663_ _main32677_ _keys32672_))
                      (_else3260232617_))))))
        (if (##structure-instance-of? _self3258332591_ 'gxc#!kw-lambda::t)
            (let* ((_e3258732682_ (##vector-ref _self3258332591_ '1))
                   (_e3258832685_ (##vector-ref _self3258332591_ '2))
                   (_table32688_ _e3258832685_)
                   (_e3258932690_ (##vector-ref _self3258332591_ '3))
                   (_dispatch32693_ _e3258932690_))
              (_K3258632679_ _dispatch32693_ _table32688_))
            (_E3258532595_)))))
  (bind-method!
   gxc#!kw-lambda::t
   'optimize-call
   gxc#!kw-lambda::optimize-call
   '#f)
  (define gxc#!kw-lambda-split-args
    (lambda (_stx32203_ _args32204_)
      (let _lp32206_ ((_rest32208_ _args32204_)
                      (_pargs32209_ '())
                      (_kwargs32210_ '()))
        (let* ((_g3221632266_
                (lambda (_g3221732263_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g3221732263_)))
               (_g3221532273_
                (lambda (_g3221732269_)
                  (if (gx#stx-null? _g3221732269_)
                      ((lambda ()
                         (values (reverse _pargs32209_)
                                 (reverse _kwargs32210_))))
                      (_g3221632266_ _g3221732269_))))
               (_g3221432301_
                (lambda (_g3221732276_)
                  (if (gx#stx-pair? _g3221732276_)
                      (let ((_e3225932278_ (gx#stx-e _g3221732276_)))
                        (let ((_hd3226032281_ (##car _e3225932278_))
                              (_tl3226132283_ (##cdr _e3225932278_)))
                          ((lambda (_L32286_ _L32287_)
                             (_lp32206_
                              _L32286_
                              (cons _L32287_ _pargs32209_)
                              _kwargs32210_))
                           _tl3226132283_
                           _hd3226032281_)))
                      (_g3221532273_ _g3221732276_))))
               (_g3221332359_
                (lambda (_g3221732304_)
                  (if (gx#stx-pair? _g3221732304_)
                      (let ((_e3224532306_ (gx#stx-e _g3221732304_)))
                        (let ((_hd3224632309_ (##car _e3224532306_))
                              (_tl3224732311_ (##cdr _e3224532306_)))
                          (if (gx#stx-pair? _hd3224632309_)
                              (let ((_e3224832314_ (gx#stx-e _hd3224632309_)))
                                (let ((_hd3224932317_ (##car _e3224832314_))
                                      (_tl3225032319_ (##cdr _e3224832314_)))
                                  (if (gx#identifier? _hd3224932317_)
                                      (if (gx#stx-eq? '%#quote _hd3224932317_)
                                          (if (gx#stx-pair? _tl3225032319_)
                                              (let ((_e3225132322_
                                                     (gx#stx-e
                                                      _tl3225032319_)))
                                                (let ((_hd3225232325_
                                                       (##car _e3225132322_))
                                                      (_tl3225332327_
                                                       (##cdr _e3225132322_)))
                                                  (if (gx#stx-null?
                                                       _tl3225332327_)
                                                      (if (gx#stx-pair?
                                                           _tl3224732311_)
                                                          (let ((_e3225432330_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl3224732311_)))
                    (let ((_hd3225532333_ (##car _e3225432330_))
                          (_tl3225632335_ (##cdr _e3225432330_)))
                      ((lambda (_L32338_ _L32339_ _L32340_)
                         (if (gx#stx-keyword? _L32340_)
                             (let ((_kw32357_ (gx#stx-e _L32340_)))
                               (if (assq _kw32357_ _kwargs32210_)
                                   (gxc#raise-compile-error
                                    '"Illegal keyword lambda application; duplicate keyword"
                                    _stx32203_
                                    _kw32357_)
                                   (_lp32206_
                                    _L32338_
                                    _pargs32209_
                                    (cons (cons _kw32357_ _L32339_)
                                          _kwargs32210_))))
                             (_g3221432301_ _g3221732304_)))
                       _tl3225632335_
                       _hd3225532333_
                       _hd3225232325_)))
                  (_g3221432301_ _g3221732304_))
              (_g3221432301_ _g3221732304_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g3221432301_ _g3221732304_))
                                          (_g3221432301_ _g3221732304_))
                                      (_g3221432301_ _g3221732304_))))
                              (_g3221432301_ _g3221732304_))))
                      (_g3221432301_ _g3221732304_))))
               (_g3221232401_
                (lambda (_g3221732362_)
                  (if (gx#stx-pair? _g3221732362_)
                      (let ((_e3223332364_ (gx#stx-e _g3221732362_)))
                        (let ((_hd3223432367_ (##car _e3223332364_))
                              (_tl3223532369_ (##cdr _e3223332364_)))
                          (if (gx#stx-pair? _hd3223432367_)
                              (let ((_e3223632372_ (gx#stx-e _hd3223432367_)))
                                (let ((_hd3223732375_ (##car _e3223632372_))
                                      (_tl3223832377_ (##cdr _e3223632372_)))
                                  (if (gx#identifier? _hd3223732375_)
                                      (if (gx#stx-eq? '%#quote _hd3223732375_)
                                          (if (gx#stx-pair? _tl3223832377_)
                                              (let ((_e3223932380_
                                                     (gx#stx-e
                                                      _tl3223832377_)))
                                                (let ((_hd3224032383_
                                                       (##car _e3223932380_))
                                                      (_tl3224132385_
                                                       (##cdr _e3223932380_)))
                                                  (if (gx#stx-datum?
                                                       _hd3224032383_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd3224032383_)
                          '#!rest)
                  (if (gx#stx-null? _tl3224132385_)
                      ((lambda (_L32388_)
                         (values (foldl1 cons _L32388_ _pargs32209_)
                                 (reverse _kwargs32210_)))
                       _tl3223532369_)
                      (_g3221332359_ _g3221732362_))
                  (_g3221332359_ _g3221732362_))
              (_g3221332359_ _g3221732362_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g3221332359_ _g3221732362_))
                                          (_g3221332359_ _g3221732362_))
                                      (_g3221332359_ _g3221732362_))))
                              (_g3221332359_ _g3221732362_))))
                      (_g3221332359_ _g3221732362_))))
               (_g3221132455_
                (lambda (_g3221732404_)
                  (if (gx#stx-pair? _g3221732404_)
                      (let ((_e3222032406_ (gx#stx-e _g3221732404_)))
                        (let ((_hd3222132409_ (##car _e3222032406_))
                              (_tl3222232411_ (##cdr _e3222032406_)))
                          (if (gx#stx-pair? _hd3222132409_)
                              (let ((_e3222332414_ (gx#stx-e _hd3222132409_)))
                                (let ((_hd3222432417_ (##car _e3222332414_))
                                      (_tl3222532419_ (##cdr _e3222332414_)))
                                  (if (gx#identifier? _hd3222432417_)
                                      (if (gx#stx-eq? '%#quote _hd3222432417_)
                                          (if (gx#stx-pair? _tl3222532419_)
                                              (let ((_e3222632422_
                                                     (gx#stx-e
                                                      _tl3222532419_)))
                                                (let ((_hd3222732425_
                                                       (##car _e3222632422_))
                                                      (_tl3222832427_
                                                       (##cdr _e3222632422_)))
                                                  (if (gx#stx-datum?
                                                       _hd3222732425_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd3222732425_)
                          '#!key)
                  (if (gx#stx-null? _tl3222832427_)
                      (if (gx#stx-pair? _tl3222232411_)
                          (let ((_e3222932430_ (gx#stx-e _tl3222232411_)))
                            (let ((_hd3223032433_ (##car _e3222932430_))
                                  (_tl3223132435_ (##cdr _e3222932430_)))
                              ((lambda (_L32438_ _L32439_)
                                 (_lp32206_
                                  _L32438_
                                  (cons _L32439_ _pargs32209_)
                                  _kwargs32210_))
                               _tl3223132435_
                               _hd3223032433_)))
                          (_g3221232401_ _g3221732404_))
                      (_g3221232401_ _g3221732404_))
                  (_g3221232401_ _g3221732404_))
              (_g3221232401_ _g3221732404_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g3221232401_ _g3221732404_))
                                          (_g3221232401_ _g3221732404_))
                                      (_g3221232401_ _g3221732404_))))
                              (_g3221232401_ _g3221732404_))))
                      (_g3221232401_ _g3221732404_)))))
          (_g3221132455_ _rest32208_)))))
  (define gxc#!kw-lambda-primary::optimize-call
    (lambda (_self32199_ _stx32200_ _args32201_) (gxc#xform-call% _stx32200_)))
  (bind-method!
   gxc#!kw-lambda-primary::t
   'optimize-call
   gxc#!kw-lambda-primary::optimize-call
   '#f))
