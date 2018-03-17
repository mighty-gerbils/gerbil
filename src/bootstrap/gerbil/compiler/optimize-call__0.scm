(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#&optimize-call
    (make-promise
     (lambda ()
       (let ((_tbl32635_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl32635_ (force gxc#&basic-xform))
           (table-set! _tbl32635_ '%#call gxc#optimize-call%)
           _tbl32635_)))))
  (define gxc#apply-optimize-call
    (lambda (_stx32628_ . _args32630_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx32628_ _args32630_))
       gxc#current-compile-methods
       (force gxc#&optimize-call))))
  (define gxc#optimize-call%
    (lambda (_stx32534_)
      (let* ((_g3253732557_
              (lambda (_g3253832554_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3253832554_)))
             (_g3253632564_
              (lambda (_g3253832560_)
                ((lambda () (gxc#xform-call% _stx32534_)))))
             (_g3253532625_
              (lambda (_g3253832567_)
                (if (gx#stx-pair? _g3253832567_)
                    (let ((_e3254132569_ (gx#stx-e _g3253832567_)))
                      (let ((_hd3254232572_ (##car _e3254132569_))
                            (_tl3254332574_ (##cdr _e3254132569_)))
                        (if (gx#stx-pair? _tl3254332574_)
                            (let ((_e3254432577_ (gx#stx-e _tl3254332574_)))
                              (let ((_hd3254532580_ (##car _e3254432577_))
                                    (_tl3254632582_ (##cdr _e3254432577_)))
                                (if (gx#stx-pair? _hd3254532580_)
                                    (let ((_e3254732585_
                                           (gx#stx-e _hd3254532580_)))
                                      (let ((_hd3254832588_
                                             (##car _e3254732585_))
                                            (_tl3254932590_
                                             (##cdr _e3254732585_)))
                                        (if (gx#identifier? _hd3254832588_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd3254832588_)
                                                (if (gx#stx-pair?
                                                     _tl3254932590_)
                                                    (let ((_e3255032593_
                                                           (gx#stx-e
                                                            _tl3254932590_)))
                                                      (let ((_hd3255132596_
                                                             (##car _e3255032593_))
                                                            (_tl3255232598_
                                                             (##cdr _e3255032593_)))
                                                        (if (gx#stx-null?
                                                             _tl3255232598_)
                                                            ((lambda (_L32601_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L32602_)
                       (let* ((_rator-id32620_
                               (gxc#identifier-symbol _L32602_))
                              (_rator-type32622_
                               (gxc#optimizer-resolve-type _rator-id32620_)))
                         (if (##structure-instance-of?
                              _rator-type32622_
                              'gxc#!procedure::t)
                             (begin
                               (gxc#verbose
                                '"optimize-call "
                                _rator-id32620_
                                '" => "
                                _rator-type32622_
                                '" "
                                (##structure-ref
                                 _rator-type32622_
                                 '1
                                 gxc#!type::t
                                 '#f))
                               (call-method
                                _rator-type32622_
                                'optimize-call
                                _stx32534_
                                _L32601_))
                             (if (not _rator-type32622_)
                                 (gxc#xform-call% _stx32534_)
                                 (gxc#raise-compile-error
                                  '"Illegal application; not a procedure"
                                  _stx32534_
                                  _rator-type32622_)))))
                     _tl3254632582_
                     _hd3255132596_)
                    (_g3253632564_ _g3253832567_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3253632564_
                                                     _g3253832567_))
                                                (_g3253632564_ _g3253832567_))
                                            (_g3253632564_ _g3253832567_))))
                                    (_g3253632564_ _g3253832567_))))
                            (_g3253632564_ _g3253832567_))))
                    (_g3253632564_ _g3253832567_)))))
        (_g3253532625_ _stx32534_))))
  (define gxc#!struct-pred::optimize-call
    (lambda (_self32388_ _stx32389_ _args32390_)
      (let* ((_self3239132397_ _self32388_)
             (_E3239332401_
              (lambda () (error '"No clause matching" _self3239132397_)))
             (_K3239432526_
              (lambda (_struct-t32404_)
                (let* ((_struct-type32406_
                        (gxc#optimizer-resolve-type _struct-t32404_))
                       (_struct-type3240732421_ _struct-type32406_)
                       (_else3241032429_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx32389_
                           _struct-t32404_
                           _struct-type32406_))))
                  (let ((_K3241332501_
                         (lambda (_plist32440_ _struct-type-id32441_)
                           (let* ((_g3244432454_
                                   (lambda (_g3244532451_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g3244532451_)))
                                  (_g3244332461_
                                   (lambda (_g3244532457_)
                                     ((lambda ()
                                        (gxc#raise-compile-error
                                         '"Illegal struct predicate application"
                                         _stx32389_)))))
                                  (_g3244232498_
                                   (lambda (_g3244532464_)
                                     (if (gx#stx-pair? _g3244532464_)
                                         (let ((_e3244732466_
                                                (gx#stx-e _g3244532464_)))
                                           (let ((_hd3244832469_
                                                  (##car _e3244732466_))
                                                 (_tl3244932471_
                                                  (##cdr _e3244732466_)))
                                             (if (gx#stx-null? _tl3244932471_)
                                                 ((lambda (_L32474_)
                                                    (let ((_expr32495_
                                                           (gxc#compile-e
                                                            _L32474_))
                                                          (_op32496_
                                                           (if (if _plist32440_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (assgetq 'final: _plist32440_)
                           '#f)
                       '%#struct-direct-instance?
                       '%#struct-instance?)))
              (gxc#xform-wrap-source
               (cons _op32496_
                     (cons (cons '%#quote (cons _struct-type-id32441_ '()))
                           (cons _expr32495_ '())))
               _stx32389_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd3244832469_)
                                                 (_g3244332461_
                                                  _g3244532464_))))
                                         (_g3244332461_ _g3244532464_)))))
                             (_g3244232498_ _args32390_))))
                        (_K3241232434_
                         (lambda () (gxc#xform-call% _stx32389_))))
                    (let ((_try-match3240932437_
                           (lambda ()
                             (if (##eq? _struct-type3240732421_ '#f)
                                 (let () (_K3241232434_))
                                 (_else3241032429_)))))
                      (if (##structure-instance-of?
                           _struct-type3240732421_
                           'gxc#!struct-type::t)
                          (let* ((_e3241432504_
                                  (##vector-ref _struct-type3240732421_ '1))
                                 (_e3241532509_
                                  (##vector-ref _struct-type3240732421_ '2))
                                 (_e3241632512_
                                  (##vector-ref _struct-type3240732421_ '3))
                                 (_e3241732515_
                                  (##vector-ref _struct-type3240732421_ '4))
                                 (_e3241832518_
                                  (##vector-ref _struct-type3240732421_ '5))
                                 (_e3241932521_
                                  (##vector-ref _struct-type3240732421_ '6)))
                            (let ((_struct-type-id32507_ _e3241432504_)
                                  (_plist32524_ _e3241932521_))
                              (_K3241332501_
                               _plist32524_
                               _struct-type-id32507_)))
                          (_try-match3240932437_))))))))
        (if (##structure-instance-of? _self3239132397_ 'gxc#!struct-pred::t)
            (let* ((_e3239532529_ (##vector-ref _self3239132397_ '1))
                   (_struct-t32532_ _e3239532529_))
              (_K3239432526_ _struct-t32532_))
            (_E3239332401_)))))
  (bind-method!
   gxc#!struct-pred::t
   'optimize-call
   gxc#!struct-pred::optimize-call
   '#f)
  (define gxc#!struct-cons::optimize-call
    (lambda (_self32162_ _stx32163_ _args32164_)
      (let* ((_self3216532171_ _self32162_)
             (_E3216732175_
              (lambda () (error '"No clause matching" _self3216532171_)))
             (_K3216832258_
              (lambda (_struct-t32178_)
                (let* ((_struct-type32180_
                        (gxc#optimizer-resolve-type _struct-t32178_))
                       (_struct-type3218132194_ _struct-type32180_)
                       (_else3218432202_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct constructor application; not a struct type"
                           _stx32163_
                           _struct-t32178_
                           _struct-type32180_))))
                  (let ((_K3218732232_
                         (lambda (_ctor32213_
                                  _xfields32214_
                                  _fields32215_
                                  _type-id32216_)
                           (let* ((_args32218_ (map gxc#compile-e _args32164_))
                                  (_$e32220_
                                   (if _ctor32213_
                                       (if _xfields32214_
                                           (gxc#!struct-type-lookup-method
                                            _struct-type32180_
                                            _ctor32213_)
                                           '#f)
                                       '#f)))
                             (if _$e32220_
                                 ((lambda (_kons32223_)
                                    (let ((_$obj32225_
                                           (make-symbol (gensym '__obj))))
                                      (gxc#xform-wrap-source
                                       (cons '%#let-values
                                             (cons (cons (cons (cons _$obj32225_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons (cons '%#call
                                   (cons (cons '%#ref (cons 'make-object '()))
                                         (cons (cons '%#ref
                                                     (cons _struct-t32178_
                                                           '()))
                                               (cons (cons '%#quote
                                                           (cons (fx+ _fields32215_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _xfields32214_)
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
                                     (cons (cons '%#ref (cons _kons32223_ '()))
                                           (cons (cons '%#ref
                                                       (cons _$obj32225_ '()))
                                                 _args32218_)))
                               _stx32163_))
                             (cons (cons '%#ref (cons _$obj32225_ '())) '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _stx32163_)))
                                  _$e32220_)
                                 (if (let ((_$e32227_ _ctor32213_))
                                       (if _$e32227_
                                           _$e32227_
                                           (not _xfields32214_)))
                                     (gxc#xform-wrap-source
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons 'make-struct-instance
                                                              '()))
                                                  (cons (cons '%#ref
                                                              (cons _struct-t32178_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _args32218_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _stx32163_)
                                     (let ((_arity32230_
                                            (fx+ _fields32215_
                                                 _xfields32214_)))
                                       (if (fx= _arity32230_
                                                (length _args32218_))
                                           (gxc#xform-wrap-source
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#ref (cons _struct-t32178_ '())) _args32218_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _stx32163_)
                                           (gxc#raise-compile-error
                                            '"Illegal struct constructor application; arity mismatch"
                                            _stx32163_
                                            _struct-t32178_
                                            _arity32230_))))))))
                        (_K3218632207_
                         (lambda ()
                           (begin
                             (gxc#verbose
                              '"cannot inline struct constructor; unknown struct type "
                              _struct-t32178_)
                             (gxc#xform-call% _stx32163_)))))
                    (let ((_try-match3218332210_
                           (lambda ()
                             (if (##eq? _struct-type3218132194_ '#f)
                                 (let () (_K3218632207_))
                                 (_else3218432202_)))))
                      (if (##structure-instance-of?
                           _struct-type3218132194_
                           'gxc#!struct-type::t)
                          (let* ((_e3218832235_
                                  (##vector-ref _struct-type3218132194_ '1))
                                 (_e3218932240_
                                  (##vector-ref _struct-type3218132194_ '2))
                                 (_e3219032243_
                                  (##vector-ref _struct-type3218132194_ '3))
                                 (_e3219132248_
                                  (##vector-ref _struct-type3218132194_ '4))
                                 (_e3219232253_
                                  (##vector-ref _struct-type3218132194_ '5)))
                            (let ((_type-id32238_ _e3218832235_)
                                  (_fields32246_ _e3219032243_)
                                  (_xfields32251_ _e3219132248_)
                                  (_ctor32256_ _e3219232253_))
                              (_K3218732232_
                               _ctor32256_
                               _xfields32251_
                               _fields32246_
                               _type-id32238_)))
                          (_try-match3218332210_))))))))
        (if (##structure-instance-of? _self3216532171_ 'gxc#!struct-cons::t)
            (let* ((_e3216932261_ (##vector-ref _self3216532171_ '1))
                   (_struct-t32264_ _e3216932261_))
              (_K3216832258_ _struct-t32264_))
            (_E3216732175_)))))
  (bind-method!
   gxc#!struct-cons::t
   'optimize-call
   gxc#!struct-cons::optimize-call
   '#f)
  (define gxc#!struct-getf::optimize-call
    (lambda (_self31873_ _stx31874_ _args31875_)
      (let* ((_self3187631884_ _self31873_)
             (_E3187831888_
              (lambda () (error '"No clause matching" _self3187631884_)))
             (_K3187932022_
              (lambda (_unchecked?31891_ _off31892_ _struct-t31893_)
                (let* ((_struct-type31895_
                        (gxc#optimizer-resolve-type _struct-t31893_))
                       (_struct-type3189631910_ _struct-type31895_)
                       (_else3189931918_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx31874_
                           _struct-t31893_
                           _struct-type31895_))))
                  (let ((_K3190231993_
                         (lambda (_plist31929_
                                  _xfields31930_
                                  _fields31931_
                                  _struct-type-id31932_)
                           (if _xfields31930_
                               (let* ((_g3193531945_
                                       (lambda (_g3193631942_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g3193631942_)))
                                      (_g3193431952_
                                       (lambda (_g3193631948_)
                                         ((lambda ()
                                            (gxc#raise-compile-error
                                             '"Illegal struct accessor application"
                                             _stx31874_)))))
                                      (_g3193331990_
                                       (lambda (_g3193631955_)
                                         (if (gx#stx-pair? _g3193631955_)
                                             (let ((_e3193831957_
                                                    (gx#stx-e _g3193631955_)))
                                               (let ((_hd3193931960_
                                                      (##car _e3193831957_))
                                                     (_tl3194031962_
                                                      (##cdr _e3193831957_)))
                                                 (if (gx#stx-null?
                                                      _tl3194031962_)
                                                     ((lambda (_L31965_)
                                                        (let ((_expr31986_
                                                               (gxc#compile-e
                                                                _L31965_))
                                                              (_off31987_
                                                               (fx+ _off31892_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xfields31930_
                            '1))
                      (_op31988_
                       (if _unchecked?31891_
                           '%#struct-unchecked-ref
                           (if (if _plist31929_
                                   (assgetq 'final: _plist31929_)
                                   '#f)
                               '%#struct-direct-ref
                               '%#struct-ref))))
                  (gxc#xform-wrap-source
                   (cons _op31988_
                         (cons (cons '%#ref (cons _struct-t31893_ '()))
                               (cons (cons '%#quote (cons _off31987_ '()))
                                     (cons _expr31986_ '()))))
                   _stx31874_)))
              _hd3193931960_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g3193431952_
                                                      _g3193631955_))))
                                             (_g3193431952_ _g3193631955_)))))
                                 (_g3193331990_ _args31875_))
                               (begin
                                 (gxc#verbose
                                  '"struct-getf: incomplete struct "
                                  _struct-type-id31932_)
                                 (gxc#xform-call% _stx31874_)))))
                        (_K3190131923_
                         (lambda () (gxc#xform-call% _stx31874_))))
                    (let ((_try-match3189831926_
                           (lambda ()
                             (if (##eq? _struct-type3189631910_ '#f)
                                 (let () (_K3190131923_))
                                 (_else3189931918_)))))
                      (if (##structure-instance-of?
                           _struct-type3189631910_
                           'gxc#!struct-type::t)
                          (let* ((_e3190331996_
                                  (##vector-ref _struct-type3189631910_ '1))
                                 (_e3190432001_
                                  (##vector-ref _struct-type3189631910_ '2))
                                 (_e3190532004_
                                  (##vector-ref _struct-type3189631910_ '3))
                                 (_e3190632009_
                                  (##vector-ref _struct-type3189631910_ '4))
                                 (_e3190732014_
                                  (##vector-ref _struct-type3189631910_ '5))
                                 (_e3190832017_
                                  (##vector-ref _struct-type3189631910_ '6)))
                            (let ((_struct-type-id31999_ _e3190331996_)
                                  (_fields32007_ _e3190532004_)
                                  (_xfields32012_ _e3190632009_)
                                  (_plist32020_ _e3190832017_))
                              (_K3190231993_
                               _plist32020_
                               _xfields32012_
                               _fields32007_
                               _struct-type-id31999_)))
                          (_try-match3189831926_))))))))
        (if (##structure-instance-of? _self3187631884_ 'gxc#!struct-getf::t)
            (let* ((_e3188032025_ (##vector-ref _self3187631884_ '1))
                   (_struct-t32028_ _e3188032025_)
                   (_e3188132030_ (##vector-ref _self3187631884_ '2))
                   (_off32033_ _e3188132030_)
                   (_e3188232035_ (##vector-ref _self3187631884_ '3))
                   (_unchecked?32038_ _e3188232035_))
              (_K3187932022_ _unchecked?32038_ _off32033_ _struct-t32028_))
            (_E3187831888_)))))
  (bind-method!
   gxc#!struct-getf::t
   'optimize-call
   gxc#!struct-getf::optimize-call
   '#f)
  (define gxc#!struct-setf::optimize-call
    (lambda (_self31567_ _stx31568_ _args31569_)
      (let* ((_self3157031578_ _self31567_)
             (_E3157231582_
              (lambda () (error '"No clause matching" _self3157031578_)))
             (_K3157331733_
              (lambda (_unchecked?31585_ _off31586_ _struct-t31587_)
                (let* ((_struct-type31589_
                        (gxc#optimizer-resolve-type _struct-t31587_))
                       (_struct-type3159031604_ _struct-type31589_)
                       (_else3159331612_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx31568_
                           _struct-t31587_
                           _struct-type31589_))))
                  (let ((_K3159631704_
                         (lambda (_plist31623_
                                  _xfields31624_
                                  _fields31625_
                                  _struct-type-id31626_)
                           (if _xfields31624_
                               (let* ((_g3162931643_
                                       (lambda (_g3163031640_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g3163031640_)))
                                      (_g3162831650_
                                       (lambda (_g3163031646_)
                                         ((lambda ()
                                            (gxc#raise-compile-error
                                             '"Illegal struct mutator application"
                                             _stx31568_)))))
                                      (_g3162731701_
                                       (lambda (_g3163031653_)
                                         (if (gx#stx-pair? _g3163031653_)
                                             (let ((_e3163331655_
                                                    (gx#stx-e _g3163031653_)))
                                               (let ((_hd3163431658_
                                                      (##car _e3163331655_))
                                                     (_tl3163531660_
                                                      (##cdr _e3163331655_)))
                                                 (if (gx#stx-pair?
                                                      _tl3163531660_)
                                                     (let ((_e3163631663_
                                                            (gx#stx-e
                                                             _tl3163531660_)))
                                                       (let ((_hd3163731666_
                                                              (##car _e3163631663_))
                                                             (_tl3163831668_
                                                              (##cdr _e3163631663_)))
                                                         (if (gx#stx-null?
                                                              _tl3163831668_)
                                                             ((lambda (_L31671_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L31672_)
                        (let ((_expr31696_ (gxc#compile-e _L31672_))
                              (_val31697_ (gxc#compile-e _L31671_))
                              (_off31698_ (fx+ _off31586_ _xfields31624_ '1))
                              (_op31699_
                               (if _unchecked?31585_
                                   '%#struct-unchecked-set!
                                   (if (if _plist31623_
                                           (assgetq 'final: _plist31623_)
                                           '#f)
                                       '%#struct-direct-set!
                                       '%#struct-set!))))
                          (gxc#xform-wrap-source
                           (cons _op31699_
                                 (cons (cons '%#ref (cons _struct-t31587_ '()))
                                       (cons (cons '%#quote
                                                   (cons _off31698_ '()))
                                             (cons _expr31696_
                                                   (cons _val31697_ '())))))
                           _stx31568_)))
                      _hd3163731666_
                      _hd3163431658_)
                     (_g3162831650_ _g3163031653_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g3162831650_
                                                      _g3163031653_))))
                                             (_g3162831650_ _g3163031653_)))))
                                 (_g3162731701_ _args31569_))
                               (begin
                                 (gxc#verbose
                                  '"struct-setf: incomplete struct "
                                  _struct-type-id31626_)
                                 (gxc#xform-call% _stx31568_)))))
                        (_K3159531617_
                         (lambda () (gxc#xform-call% _stx31568_))))
                    (let ((_try-match3159231620_
                           (lambda ()
                             (if (##eq? _struct-type3159031604_ '#f)
                                 (let () (_K3159531617_))
                                 (_else3159331612_)))))
                      (if (##structure-instance-of?
                           _struct-type3159031604_
                           'gxc#!struct-type::t)
                          (let* ((_e3159731707_
                                  (##vector-ref _struct-type3159031604_ '1))
                                 (_e3159831712_
                                  (##vector-ref _struct-type3159031604_ '2))
                                 (_e3159931715_
                                  (##vector-ref _struct-type3159031604_ '3))
                                 (_e3160031720_
                                  (##vector-ref _struct-type3159031604_ '4))
                                 (_e3160131725_
                                  (##vector-ref _struct-type3159031604_ '5))
                                 (_e3160231728_
                                  (##vector-ref _struct-type3159031604_ '6)))
                            (let ((_struct-type-id31710_ _e3159731707_)
                                  (_fields31718_ _e3159931715_)
                                  (_xfields31723_ _e3160031720_)
                                  (_plist31731_ _e3160231728_))
                              (_K3159631704_
                               _plist31731_
                               _xfields31723_
                               _fields31718_
                               _struct-type-id31710_)))
                          (_try-match3159231620_))))))))
        (if (##structure-instance-of? _self3157031578_ 'gxc#!struct-setf::t)
            (let* ((_e3157431736_ (##vector-ref _self3157031578_ '1))
                   (_struct-t31739_ _e3157431736_)
                   (_e3157531741_ (##vector-ref _self3157031578_ '2))
                   (_off31744_ _e3157531741_)
                   (_e3157631746_ (##vector-ref _self3157031578_ '3))
                   (_unchecked?31749_ _e3157631746_))
              (_K3157331733_ _unchecked?31749_ _off31744_ _struct-t31739_))
            (_E3157231582_)))))
  (bind-method!
   gxc#!struct-setf::t
   'optimize-call
   gxc#!struct-setf::optimize-call
   '#f)
  (define gxc#!lambda::optimize-call
    (lambda (_self31401_ _stx31402_ _args31403_)
      (let* ((_self3140431413_ _self31401_)
             (_E3140631417_
              (lambda () (error '"No clause matching" _self3140431413_)))
             (_K3140731424_
              (lambda (_inline31420_ _dispatch31421_ _arity31422_)
                (begin
                  (if (gxc#!lambda-arity-match? _self31401_ _args31403_)
                      '#!void
                      (gxc#raise-compile-error
                       '"Illegal lambda application; arity mismatch"
                       _stx31402_
                       _arity31422_))
                  (if _inline31420_
                      (begin
                        (gxc#verbose '"inline lambda")
                        (gxc#compile-e
                         (gxc#xform-wrap-source
                          (_inline31420_ _stx31402_)
                          _stx31402_)))
                      (if _dispatch31421_
                          (begin
                            (gxc#verbose
                             '"dispatch lambda => "
                             _dispatch31421_)
                            (gxc#compile-e
                             (gxc#xform-wrap-source
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons _dispatch31421_ '()))
                                          _args31403_))
                              _stx31402_)))
                          (gxc#xform-call% _stx31402_)))))))
        (if (##structure-instance-of? _self3140431413_ 'gxc#!lambda::t)
            (let* ((_e3140831427_ (##vector-ref _self3140431413_ '1))
                   (_e3140931430_ (##vector-ref _self3140431413_ '2))
                   (_arity31433_ _e3140931430_)
                   (_e3141031435_ (##vector-ref _self3140431413_ '3))
                   (_dispatch31438_ _e3141031435_)
                   (_e3141131440_ (##vector-ref _self3140431413_ '4))
                   (_inline31443_ _e3141131440_))
              (_K3140731424_ _inline31443_ _dispatch31438_ _arity31433_))
            (_E3140631417_)))))
  (bind-method! gxc#!lambda::t 'optimize-call gxc#!lambda::optimize-call '#f)
  (define gxc#!case-lambda::optimize-call
    (lambda (_self31240_ _stx31241_ _args31242_)
      (let* ((_self3124331250_ _self31240_)
             (_E3124531254_
              (lambda () (error '"No clause matching" _self3124331250_)))
             (_K3124631268_
              (lambda (_clauses31257_)
                (let ((_$e31263_
                       (find (lambda (_g3125831260_)
                               (gxc#!lambda-arity-match?
                                _g3125831260_
                                _args31242_))
                             _clauses31257_)))
                  (if _$e31263_
                      ((lambda (_clause31266_)
                         (call-method
                          _clause31266_
                          'optimize-call
                          _stx31241_
                          _args31242_))
                       _$e31263_)
                      (gxc#raise-compile-error
                       '"Illegal case-lambda application; arity mismatch"
                       _stx31241_
                       (map gxc#!lambda-arity _clauses31257_)))))))
        (if (##structure-instance-of? _self3124331250_ 'gxc#!case-lambda::t)
            (let* ((_e3124731271_ (##vector-ref _self3124331250_ '1))
                   (_e3124831274_ (##vector-ref _self3124331250_ '2))
                   (_clauses31277_ _e3124831274_))
              (_K3124631268_ _clauses31277_))
            (_E3124531254_)))))
  (bind-method!
   gxc#!case-lambda::t
   'optimize-call
   gxc#!case-lambda::optimize-call
   '#f)
  (define gxc#!lambda-arity-match?
    (lambda (_self31054_ _args31055_)
      (let* ((_self3105631063_ _self31054_)
             (_E3105831067_
              (lambda () (error '"No clause matching" _self3105631063_)))
             (_K3105931107_
              (lambda (_arity31070_)
                (let* ((_arity3107131080_ _arity31070_)
                       (_E3107431084_
                        (lambda ()
                          (error '"No clause matching" _arity3107131080_))))
                  (let ((_K3107831104_
                         (lambda () (fx= (length _args31055_) _arity31070_)))
                        (_K3107531090_
                         (lambda (_arity31088_)
                           (fx>= (length _args31055_) _arity31088_))))
                    (let ((_try-match3107331100_
                           (lambda ()
                             (if (##pair? _arity3107131080_)
                                 (let ((_tl3107731095_
                                        (##cdr _arity3107131080_))
                                       (_hd3107631093_
                                        (##car _arity3107131080_)))
                                   (if (##null? _tl3107731095_)
                                       (let ((_arity31098_ _hd3107631093_))
                                         (_K3107531090_ _arity31098_))
                                       (_E3107431084_)))
                                 (_E3107431084_)))))
                      (if (fixnum? _arity3107131080_)
                          (let () (_K3107831104_))
                          (_try-match3107331100_))))))))
        (if (##structure-instance-of? _self3105631063_ 'gxc#!lambda::t)
            (let* ((_e3106031110_ (##vector-ref _self3105631063_ '1))
                   (_e3106131113_ (##vector-ref _self3105631063_ '2))
                   (_arity31116_ _e3106131113_))
              (_K3105931107_ _arity31116_))
            (_E3105831067_)))))
  (define gxc#!kw-lambda::optimize-call
    (lambda (_self30939_ _stx30940_ _args30941_)
      (let* ((_self3094230950_ _self30939_)
             (_E3094430954_
              (lambda () (error '"No clause matching" _self3094230950_)))
             (_K3094531038_
              (lambda (_dispatch30957_ _table30958_)
                (let* ((_g3095930968_
                        (gxc#optimizer-lookup-type _dispatch30957_))
                       (_else3096130976_
                        (lambda ()
                          (begin
                            (gxc#verbose
                             '"unknown keyword dispatch lambda "
                             _dispatch30957_)
                            (gxc#xform-call% _stx30940_))))
                       (_K3096331022_
                        (lambda (_main30979_ _keys30980_)
                          (let ((_g32652_
                                 (gxc#!kw-lambda-split-args
                                  _stx30940_
                                  _args30941_)))
                            (begin
                              (let ((_g32653_
                                     (if (##values? _g32652_)
                                         (##vector-length _g32652_)
                                         1)))
                                (if (not (##fx= _g32653_ 2))
                                    (error "Context expects 2 values"
                                           _g32653_)))
                              (let ((_pargs30982_ (##vector-ref _g32652_ 0))
                                    (_kwargs30983_ (##vector-ref _g32652_ 1)))
                                (begin
                                  (gxc#verbose
                                   '"dispatch kw-lambda => "
                                   _main30979_)
                                  (if _table30958_
                                      (let ((_xargs30990_
                                             (map (lambda (_key30985_)
                                                    (let ((_$e30987_
                                                           (assgetq _key30985_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _kwargs30983_)))
              (if _$e30987_ (values _$e30987_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _keys30980_)))
                                        (begin
                                          (for-each
                                           (lambda (_kw30992_)
                                             (if (memq (car _kw30992_)
                                                       _keys30980_)
                                                 '#!void
                                                 (gxc#raise-compile-error
                                                  '"Illegal keyword lambda application; unexpected keyword"
                                                  _stx30940_
                                                  _keys30980_
                                                  _kw30992_)))
                                           _kwargs30983_)
                                          (gxc#compile-e
                                           (gxc#xform-wrap-source
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons _main30979_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote (cons '#f '()))
                      (foldr1 cons _pargs30982_ _xargs30990_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _stx30940_))))
                                      (let* ((_kwt30994_
                                              (make-symbol (gensym '__kwt)))
                                             (_kwvars30997_
                                              (map (lambda (_g32654_)
                                                     (make-symbol
                                                      (gensym '__kw)))
                                                   _kwargs30983_))
                                             (_kwbind31002_
                                              (map (lambda (_kw30999_
                                                            _kwvar31000_)
                                                     (cons (cons _kwvar31000_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   (cons (cdr _kw30999_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs30983_
                                                   _kwvars30997_))
                                             (_kwset31007_
                                              (map (lambda (_kw31004_
                                                            _kwvar31005_)
                                                     (cons '%#call
                                                           (cons '(%#ref hash-put!)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons _kwt30994_ '()))
                               (cons (cons '%#quote (cons (car _kw31004_) '()))
                                     (cons (cons '%#ref
                                                 (cons _kwvar31005_ '()))
                                           '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs30983_
                                                   _kwvars30997_))
                                             (_xkwargs31012_
                                              (map (lambda (_kw31009_
                                                            _kwvar31010_)
                                                     (cons (car _kw31009_)
                                                           (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _kwvar31010_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs30983_
                                                   _kwvars30997_))
                                             (_xargs31019_
                                              (map (lambda (_key31014_)
                                                     (let ((_$e31016_
                                                            (assgetq _key31014_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _xkwargs31012_)))
               (if _$e31016_ (values _$e31016_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _keys30980_)))
                                        (gxc#compile-e
                                         (gxc#xform-wrap-source
                                          (cons '%#let-values
                                                (cons _kwbind31002_
                                                      (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (cons (cons _kwt30994_ '())
                                            (cons (gxc#xform-wrap-source
                                                   (cons '%#call
                                                         (cons '(%#ref make-hash-table-eq)
                                                               (cons '(%#quote size:)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons '%#quote
                                         (cons (length _kwargs30983_) '()))
                                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx30940_)
                                                  '()))
                                      '())
                                (cons (cons '%#begin
                                            (foldr1 cons
                                                    (cons (gxc#xform-wrap-source
                                                           (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons _main30979_ '()))
                               (cons (cons '%#ref (cons _kwt30994_ '()))
                                     (foldr1 cons _pargs30982_ _xargs31019_))))
                   _stx30940_)
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _kwset31007_))
                                      '())))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _stx30940_)))))))))))
                  (if (##structure-instance-of?
                       _g3095930968_
                       'gxc#!kw-lambda-primary::t)
                      (let* ((_e3096431025_ (##vector-ref _g3095930968_ '1))
                             (_e3096531028_ (##vector-ref _g3095930968_ '2))
                             (_keys31031_ _e3096531028_)
                             (_e3096631033_ (##vector-ref _g3095930968_ '3))
                             (_main31036_ _e3096631033_))
                        (_K3096331022_ _main31036_ _keys31031_))
                      (_else3096130976_))))))
        (if (##structure-instance-of? _self3094230950_ 'gxc#!kw-lambda::t)
            (let* ((_e3094631041_ (##vector-ref _self3094230950_ '1))
                   (_e3094731044_ (##vector-ref _self3094230950_ '2))
                   (_table31047_ _e3094731044_)
                   (_e3094831049_ (##vector-ref _self3094230950_ '3))
                   (_dispatch31052_ _e3094831049_))
              (_K3094531038_ _dispatch31052_ _table31047_))
            (_E3094430954_)))))
  (bind-method!
   gxc#!kw-lambda::t
   'optimize-call
   gxc#!kw-lambda::optimize-call
   '#f)
  (define gxc#!kw-lambda-split-args
    (lambda (_stx30562_ _args30563_)
      (let _lp30565_ ((_rest30567_ _args30563_)
                      (_pargs30568_ '())
                      (_kwargs30569_ '()))
        (let* ((_g3057530625_
                (lambda (_g3057630622_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g3057630622_)))
               (_g3057430632_
                (lambda (_g3057630628_)
                  (if (gx#stx-null? _g3057630628_)
                      ((lambda ()
                         (values (reverse _pargs30568_)
                                 (reverse _kwargs30569_))))
                      (_g3057530625_ _g3057630628_))))
               (_g3057330660_
                (lambda (_g3057630635_)
                  (if (gx#stx-pair? _g3057630635_)
                      (let ((_e3061830637_ (gx#stx-e _g3057630635_)))
                        (let ((_hd3061930640_ (##car _e3061830637_))
                              (_tl3062030642_ (##cdr _e3061830637_)))
                          ((lambda (_L30645_ _L30646_)
                             (_lp30565_
                              _L30645_
                              (cons _L30646_ _pargs30568_)
                              _kwargs30569_))
                           _tl3062030642_
                           _hd3061930640_)))
                      (_g3057430632_ _g3057630635_))))
               (_g3057230718_
                (lambda (_g3057630663_)
                  (if (gx#stx-pair? _g3057630663_)
                      (let ((_e3060430665_ (gx#stx-e _g3057630663_)))
                        (let ((_hd3060530668_ (##car _e3060430665_))
                              (_tl3060630670_ (##cdr _e3060430665_)))
                          (if (gx#stx-pair? _hd3060530668_)
                              (let ((_e3060730673_ (gx#stx-e _hd3060530668_)))
                                (let ((_hd3060830676_ (##car _e3060730673_))
                                      (_tl3060930678_ (##cdr _e3060730673_)))
                                  (if (gx#identifier? _hd3060830676_)
                                      (if (gx#stx-eq? '%#quote _hd3060830676_)
                                          (if (gx#stx-pair? _tl3060930678_)
                                              (let ((_e3061030681_
                                                     (gx#stx-e
                                                      _tl3060930678_)))
                                                (let ((_hd3061130684_
                                                       (##car _e3061030681_))
                                                      (_tl3061230686_
                                                       (##cdr _e3061030681_)))
                                                  (if (gx#stx-null?
                                                       _tl3061230686_)
                                                      (if (gx#stx-pair?
                                                           _tl3060630670_)
                                                          (let ((_e3061330689_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl3060630670_)))
                    (let ((_hd3061430692_ (##car _e3061330689_))
                          (_tl3061530694_ (##cdr _e3061330689_)))
                      ((lambda (_L30697_ _L30698_ _L30699_)
                         (if (gx#stx-keyword? _L30699_)
                             (let ((_kw30716_ (gx#stx-e _L30699_)))
                               (if (assq _kw30716_ _kwargs30569_)
                                   (gxc#raise-compile-error
                                    '"Illegal keyword lambda application; duplicate keyword"
                                    _stx30562_
                                    _kw30716_)
                                   (_lp30565_
                                    _L30697_
                                    _pargs30568_
                                    (cons (cons _kw30716_ _L30698_)
                                          _kwargs30569_))))
                             (_g3057330660_ _g3057630663_)))
                       _tl3061530694_
                       _hd3061430692_
                       _hd3061130684_)))
                  (_g3057330660_ _g3057630663_))
              (_g3057330660_ _g3057630663_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g3057330660_ _g3057630663_))
                                          (_g3057330660_ _g3057630663_))
                                      (_g3057330660_ _g3057630663_))))
                              (_g3057330660_ _g3057630663_))))
                      (_g3057330660_ _g3057630663_))))
               (_g3057130760_
                (lambda (_g3057630721_)
                  (if (gx#stx-pair? _g3057630721_)
                      (let ((_e3059230723_ (gx#stx-e _g3057630721_)))
                        (let ((_hd3059330726_ (##car _e3059230723_))
                              (_tl3059430728_ (##cdr _e3059230723_)))
                          (if (gx#stx-pair? _hd3059330726_)
                              (let ((_e3059530731_ (gx#stx-e _hd3059330726_)))
                                (let ((_hd3059630734_ (##car _e3059530731_))
                                      (_tl3059730736_ (##cdr _e3059530731_)))
                                  (if (gx#identifier? _hd3059630734_)
                                      (if (gx#stx-eq? '%#quote _hd3059630734_)
                                          (if (gx#stx-pair? _tl3059730736_)
                                              (let ((_e3059830739_
                                                     (gx#stx-e
                                                      _tl3059730736_)))
                                                (let ((_hd3059930742_
                                                       (##car _e3059830739_))
                                                      (_tl3060030744_
                                                       (##cdr _e3059830739_)))
                                                  (if (gx#stx-datum?
                                                       _hd3059930742_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd3059930742_)
                          '#!rest)
                  (if (gx#stx-null? _tl3060030744_)
                      ((lambda (_L30747_)
                         (values (foldl1 cons _L30747_ _pargs30568_)
                                 (reverse _kwargs30569_)))
                       _tl3059430728_)
                      (_g3057230718_ _g3057630721_))
                  (_g3057230718_ _g3057630721_))
              (_g3057230718_ _g3057630721_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g3057230718_ _g3057630721_))
                                          (_g3057230718_ _g3057630721_))
                                      (_g3057230718_ _g3057630721_))))
                              (_g3057230718_ _g3057630721_))))
                      (_g3057230718_ _g3057630721_))))
               (_g3057030814_
                (lambda (_g3057630763_)
                  (if (gx#stx-pair? _g3057630763_)
                      (let ((_e3057930765_ (gx#stx-e _g3057630763_)))
                        (let ((_hd3058030768_ (##car _e3057930765_))
                              (_tl3058130770_ (##cdr _e3057930765_)))
                          (if (gx#stx-pair? _hd3058030768_)
                              (let ((_e3058230773_ (gx#stx-e _hd3058030768_)))
                                (let ((_hd3058330776_ (##car _e3058230773_))
                                      (_tl3058430778_ (##cdr _e3058230773_)))
                                  (if (gx#identifier? _hd3058330776_)
                                      (if (gx#stx-eq? '%#quote _hd3058330776_)
                                          (if (gx#stx-pair? _tl3058430778_)
                                              (let ((_e3058530781_
                                                     (gx#stx-e
                                                      _tl3058430778_)))
                                                (let ((_hd3058630784_
                                                       (##car _e3058530781_))
                                                      (_tl3058730786_
                                                       (##cdr _e3058530781_)))
                                                  (if (gx#stx-datum?
                                                       _hd3058630784_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd3058630784_)
                          '#!key)
                  (if (gx#stx-null? _tl3058730786_)
                      (if (gx#stx-pair? _tl3058130770_)
                          (let ((_e3058830789_ (gx#stx-e _tl3058130770_)))
                            (let ((_hd3058930792_ (##car _e3058830789_))
                                  (_tl3059030794_ (##cdr _e3058830789_)))
                              ((lambda (_L30797_ _L30798_)
                                 (_lp30565_
                                  _L30797_
                                  (cons _L30798_ _pargs30568_)
                                  _kwargs30569_))
                               _tl3059030794_
                               _hd3058930792_)))
                          (_g3057130760_ _g3057630763_))
                      (_g3057130760_ _g3057630763_))
                  (_g3057130760_ _g3057630763_))
              (_g3057130760_ _g3057630763_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g3057130760_ _g3057630763_))
                                          (_g3057130760_ _g3057630763_))
                                      (_g3057130760_ _g3057630763_))))
                              (_g3057130760_ _g3057630763_))))
                      (_g3057130760_ _g3057630763_)))))
          (_g3057030814_ _rest30567_)))))
  (define gxc#!kw-lambda-primary::optimize-call
    (lambda (_self30558_ _stx30559_ _args30560_) (gxc#xform-call% _stx30559_)))
  (bind-method!
   gxc#!kw-lambda-primary::t
   'optimize-call
   gxc#!kw-lambda-primary::optimize-call
   '#f))
