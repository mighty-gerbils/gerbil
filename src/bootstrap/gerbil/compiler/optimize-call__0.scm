(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#&optimize-call
    (make-promise
     (lambda ()
       (let ((_tbl33563_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl33563_ (force gxc#&basic-xform))
           (table-set! _tbl33563_ '%#call gxc#optimize-call%)
           _tbl33563_)))))
  (define gxc#apply-optimize-call
    (lambda (_stx33556_ . _args33558_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx33556_ _args33558_))
       gxc#current-compile-methods
       (force gxc#&optimize-call))))
  (define gxc#optimize-call%
    (lambda (_stx33462_)
      (let* ((_g3346533485_
              (lambda (_g3346633482_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3346633482_)))
             (_g3346433492_
              (lambda (_g3346633488_)
                ((lambda () (gxc#xform-call% _stx33462_)))))
             (_g3346333553_
              (lambda (_g3346633495_)
                (if (gx#stx-pair? _g3346633495_)
                    (let ((_e3346933497_ (gx#stx-e _g3346633495_)))
                      (let ((_hd3347033500_ (##car _e3346933497_))
                            (_tl3347133502_ (##cdr _e3346933497_)))
                        (if (gx#stx-pair? _tl3347133502_)
                            (let ((_e3347233505_ (gx#stx-e _tl3347133502_)))
                              (let ((_hd3347333508_ (##car _e3347233505_))
                                    (_tl3347433510_ (##cdr _e3347233505_)))
                                (if (gx#stx-pair? _hd3347333508_)
                                    (let ((_e3347533513_
                                           (gx#stx-e _hd3347333508_)))
                                      (let ((_hd3347633516_
                                             (##car _e3347533513_))
                                            (_tl3347733518_
                                             (##cdr _e3347533513_)))
                                        (if (gx#identifier? _hd3347633516_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd3347633516_)
                                                (if (gx#stx-pair?
                                                     _tl3347733518_)
                                                    (let ((_e3347833521_
                                                           (gx#stx-e
                                                            _tl3347733518_)))
                                                      (let ((_hd3347933524_
                                                             (##car _e3347833521_))
                                                            (_tl3348033526_
                                                             (##cdr _e3347833521_)))
                                                        (if (gx#stx-null?
                                                             _tl3348033526_)
                                                            ((lambda (_L33529_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L33530_)
                       (let* ((_rator-id33548_
                               (gxc#identifier-symbol _L33530_))
                              (_rator-type33550_
                               (gxc#optimizer-resolve-type _rator-id33548_)))
                         (if (##structure-instance-of?
                              _rator-type33550_
                              'gxc#!procedure::t)
                             (begin
                               (gxc#verbose
                                '"optimize-call "
                                _rator-id33548_
                                '" => "
                                _rator-type33550_
                                '" "
                                (##structure-ref
                                 _rator-type33550_
                                 '1
                                 gxc#!type::t
                                 '#f))
                               (call-method
                                _rator-type33550_
                                'optimize-call
                                _stx33462_
                                _L33529_))
                             (if (not _rator-type33550_)
                                 (gxc#xform-call% _stx33462_)
                                 (gxc#raise-compile-error
                                  '"Illegal application; not a procedure"
                                  _stx33462_
                                  _rator-type33550_)))))
                     _tl3347433510_
                     _hd3347933524_)
                    (_g3346433492_ _g3346633495_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3346433492_
                                                     _g3346633495_))
                                                (_g3346433492_ _g3346633495_))
                                            (_g3346433492_ _g3346633495_))))
                                    (_g3346433492_ _g3346633495_))))
                            (_g3346433492_ _g3346633495_))))
                    (_g3346433492_ _g3346633495_)))))
        (_g3346333553_ _stx33462_))))
  (define gxc#!struct-pred::optimize-call
    (lambda (_self33316_ _stx33317_ _args33318_)
      (let* ((_self3331933325_ _self33316_)
             (_E3332133329_
              (lambda () (error '"No clause matching" _self3331933325_)))
             (_K3332233454_
              (lambda (_struct-t33332_)
                (let* ((_struct-type33334_
                        (gxc#optimizer-resolve-type _struct-t33332_))
                       (_struct-type3333533349_ _struct-type33334_)
                       (_else3333833357_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx33317_
                           _struct-t33332_
                           _struct-type33334_))))
                  (let ((_K3334133429_
                         (lambda (_plist33368_ _struct-type-id33369_)
                           (let* ((_g3337233382_
                                   (lambda (_g3337333379_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g3337333379_)))
                                  (_g3337133389_
                                   (lambda (_g3337333385_)
                                     ((lambda ()
                                        (gxc#raise-compile-error
                                         '"Illegal struct predicate application"
                                         _stx33317_)))))
                                  (_g3337033426_
                                   (lambda (_g3337333392_)
                                     (if (gx#stx-pair? _g3337333392_)
                                         (let ((_e3337533394_
                                                (gx#stx-e _g3337333392_)))
                                           (let ((_hd3337633397_
                                                  (##car _e3337533394_))
                                                 (_tl3337733399_
                                                  (##cdr _e3337533394_)))
                                             (if (gx#stx-null? _tl3337733399_)
                                                 ((lambda (_L33402_)
                                                    (let ((_expr33423_
                                                           (gxc#compile-e
                                                            _L33402_))
                                                          (_op33424_
                                                           (if (if _plist33368_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (assgetq 'final: _plist33368_)
                           '#f)
                       '%#struct-direct-instance?
                       '%#struct-instance?)))
              (gxc#xform-wrap-source
               (cons _op33424_
                     (cons (cons '%#quote (cons _struct-type-id33369_ '()))
                           (cons _expr33423_ '())))
               _stx33317_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd3337633397_)
                                                 (_g3337133389_
                                                  _g3337333392_))))
                                         (_g3337133389_ _g3337333392_)))))
                             (_g3337033426_ _args33318_))))
                        (_K3334033362_
                         (lambda () (gxc#xform-call% _stx33317_))))
                    (let ((_try-match3333733365_
                           (lambda ()
                             (if (##eq? _struct-type3333533349_ '#f)
                                 (let () (_K3334033362_))
                                 (_else3333833357_)))))
                      (if (##structure-instance-of?
                           _struct-type3333533349_
                           'gxc#!struct-type::t)
                          (let* ((_e3334233432_
                                  (##vector-ref _struct-type3333533349_ '1))
                                 (_e3334333437_
                                  (##vector-ref _struct-type3333533349_ '2))
                                 (_e3334433440_
                                  (##vector-ref _struct-type3333533349_ '3))
                                 (_e3334533443_
                                  (##vector-ref _struct-type3333533349_ '4))
                                 (_e3334633446_
                                  (##vector-ref _struct-type3333533349_ '5))
                                 (_e3334733449_
                                  (##vector-ref _struct-type3333533349_ '6)))
                            (let ((_struct-type-id33435_ _e3334233432_)
                                  (_plist33452_ _e3334733449_))
                              (_K3334133429_
                               _plist33452_
                               _struct-type-id33435_)))
                          (_try-match3333733365_))))))))
        (if (##structure-instance-of? _self3331933325_ 'gxc#!struct-pred::t)
            (let* ((_e3332333457_ (##vector-ref _self3331933325_ '1))
                   (_struct-t33460_ _e3332333457_))
              (_K3332233454_ _struct-t33460_))
            (_E3332133329_)))))
  (bind-method!
   gxc#!struct-pred::t
   'optimize-call
   gxc#!struct-pred::optimize-call
   '#f)
  (define gxc#!struct-cons::optimize-call
    (lambda (_self33090_ _stx33091_ _args33092_)
      (let* ((_self3309333099_ _self33090_)
             (_E3309533103_
              (lambda () (error '"No clause matching" _self3309333099_)))
             (_K3309633186_
              (lambda (_struct-t33106_)
                (let* ((_struct-type33108_
                        (gxc#optimizer-resolve-type _struct-t33106_))
                       (_struct-type3310933122_ _struct-type33108_)
                       (_else3311233130_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct constructor application; not a struct type"
                           _stx33091_
                           _struct-t33106_
                           _struct-type33108_))))
                  (let ((_K3311533160_
                         (lambda (_ctor33141_
                                  _xfields33142_
                                  _fields33143_
                                  _type-id33144_)
                           (let* ((_args33146_ (map gxc#compile-e _args33092_))
                                  (_$e33148_
                                   (if _ctor33141_
                                       (if _xfields33142_
                                           (gxc#!struct-type-lookup-method
                                            _struct-type33108_
                                            _ctor33141_)
                                           '#f)
                                       '#f)))
                             (if _$e33148_
                                 ((lambda (_kons33151_)
                                    (let ((_$obj33153_
                                           (make-symbol (gensym '__obj))))
                                      (gxc#xform-wrap-source
                                       (cons '%#let-values
                                             (cons (cons (cons (cons _$obj33153_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons (cons '%#call
                                   (cons (cons '%#ref (cons 'make-object '()))
                                         (cons (cons '%#ref
                                                     (cons _struct-t33106_
                                                           '()))
                                               (cons (cons '%#quote
                                                           (cons (fx+ _fields33143_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _xfields33142_)
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
                                     (cons (cons '%#ref (cons _kons33151_ '()))
                                           (cons (cons '%#ref
                                                       (cons _$obj33153_ '()))
                                                 _args33146_)))
                               _stx33091_))
                             (cons (cons '%#ref (cons _$obj33153_ '())) '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _stx33091_)))
                                  _$e33148_)
                                 (if (let ((_$e33155_ _ctor33141_))
                                       (if _$e33155_
                                           _$e33155_
                                           (not _xfields33142_)))
                                     (gxc#xform-wrap-source
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons 'make-struct-instance
                                                              '()))
                                                  (cons (cons '%#ref
                                                              (cons _struct-t33106_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _args33146_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _stx33091_)
                                     (let ((_arity33158_
                                            (fx+ _fields33143_
                                                 _xfields33142_)))
                                       (if (fx= _arity33158_
                                                (length _args33146_))
                                           (gxc#xform-wrap-source
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#ref (cons _struct-t33106_ '())) _args33146_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _stx33091_)
                                           (gxc#raise-compile-error
                                            '"Illegal struct constructor application; arity mismatch"
                                            _stx33091_
                                            _struct-t33106_
                                            _arity33158_))))))))
                        (_K3311433135_
                         (lambda ()
                           (begin
                             (gxc#verbose
                              '"cannot inline struct constructor; unknown struct type "
                              _struct-t33106_)
                             (gxc#xform-call% _stx33091_)))))
                    (let ((_try-match3311133138_
                           (lambda ()
                             (if (##eq? _struct-type3310933122_ '#f)
                                 (let () (_K3311433135_))
                                 (_else3311233130_)))))
                      (if (##structure-instance-of?
                           _struct-type3310933122_
                           'gxc#!struct-type::t)
                          (let* ((_e3311633163_
                                  (##vector-ref _struct-type3310933122_ '1))
                                 (_e3311733168_
                                  (##vector-ref _struct-type3310933122_ '2))
                                 (_e3311833171_
                                  (##vector-ref _struct-type3310933122_ '3))
                                 (_e3311933176_
                                  (##vector-ref _struct-type3310933122_ '4))
                                 (_e3312033181_
                                  (##vector-ref _struct-type3310933122_ '5)))
                            (let ((_type-id33166_ _e3311633163_)
                                  (_fields33174_ _e3311833171_)
                                  (_xfields33179_ _e3311933176_)
                                  (_ctor33184_ _e3312033181_))
                              (_K3311533160_
                               _ctor33184_
                               _xfields33179_
                               _fields33174_
                               _type-id33166_)))
                          (_try-match3311133138_))))))))
        (if (##structure-instance-of? _self3309333099_ 'gxc#!struct-cons::t)
            (let* ((_e3309733189_ (##vector-ref _self3309333099_ '1))
                   (_struct-t33192_ _e3309733189_))
              (_K3309633186_ _struct-t33192_))
            (_E3309533103_)))))
  (bind-method!
   gxc#!struct-cons::t
   'optimize-call
   gxc#!struct-cons::optimize-call
   '#f)
  (define gxc#!struct-getf::optimize-call
    (lambda (_self32801_ _stx32802_ _args32803_)
      (let* ((_self3280432812_ _self32801_)
             (_E3280632816_
              (lambda () (error '"No clause matching" _self3280432812_)))
             (_K3280732950_
              (lambda (_unchecked?32819_ _off32820_ _struct-t32821_)
                (let* ((_struct-type32823_
                        (gxc#optimizer-resolve-type _struct-t32821_))
                       (_struct-type3282432838_ _struct-type32823_)
                       (_else3282732846_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx32802_
                           _struct-t32821_
                           _struct-type32823_))))
                  (let ((_K3283032921_
                         (lambda (_plist32857_
                                  _xfields32858_
                                  _fields32859_
                                  _struct-type-id32860_)
                           (if _xfields32858_
                               (let* ((_g3286332873_
                                       (lambda (_g3286432870_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g3286432870_)))
                                      (_g3286232880_
                                       (lambda (_g3286432876_)
                                         ((lambda ()
                                            (gxc#raise-compile-error
                                             '"Illegal struct accessor application"
                                             _stx32802_)))))
                                      (_g3286132918_
                                       (lambda (_g3286432883_)
                                         (if (gx#stx-pair? _g3286432883_)
                                             (let ((_e3286632885_
                                                    (gx#stx-e _g3286432883_)))
                                               (let ((_hd3286732888_
                                                      (##car _e3286632885_))
                                                     (_tl3286832890_
                                                      (##cdr _e3286632885_)))
                                                 (if (gx#stx-null?
                                                      _tl3286832890_)
                                                     ((lambda (_L32893_)
                                                        (let ((_expr32914_
                                                               (gxc#compile-e
                                                                _L32893_))
                                                              (_off32915_
                                                               (fx+ _off32820_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xfields32858_
                            '1))
                      (_op32916_
                       (if _unchecked?32819_
                           '%#struct-unchecked-ref
                           (if (if _plist32857_
                                   (assgetq 'final: _plist32857_)
                                   '#f)
                               '%#struct-direct-ref
                               '%#struct-ref))))
                  (gxc#xform-wrap-source
                   (cons _op32916_
                         (cons (cons '%#ref (cons _struct-t32821_ '()))
                               (cons (cons '%#quote (cons _off32915_ '()))
                                     (cons _expr32914_ '()))))
                   _stx32802_)))
              _hd3286732888_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g3286232880_
                                                      _g3286432883_))))
                                             (_g3286232880_ _g3286432883_)))))
                                 (_g3286132918_ _args32803_))
                               (begin
                                 (gxc#verbose
                                  '"struct-getf: incomplete struct "
                                  _struct-type-id32860_)
                                 (gxc#xform-call% _stx32802_)))))
                        (_K3282932851_
                         (lambda () (gxc#xform-call% _stx32802_))))
                    (let ((_try-match3282632854_
                           (lambda ()
                             (if (##eq? _struct-type3282432838_ '#f)
                                 (let () (_K3282932851_))
                                 (_else3282732846_)))))
                      (if (##structure-instance-of?
                           _struct-type3282432838_
                           'gxc#!struct-type::t)
                          (let* ((_e3283132924_
                                  (##vector-ref _struct-type3282432838_ '1))
                                 (_e3283232929_
                                  (##vector-ref _struct-type3282432838_ '2))
                                 (_e3283332932_
                                  (##vector-ref _struct-type3282432838_ '3))
                                 (_e3283432937_
                                  (##vector-ref _struct-type3282432838_ '4))
                                 (_e3283532942_
                                  (##vector-ref _struct-type3282432838_ '5))
                                 (_e3283632945_
                                  (##vector-ref _struct-type3282432838_ '6)))
                            (let ((_struct-type-id32927_ _e3283132924_)
                                  (_fields32935_ _e3283332932_)
                                  (_xfields32940_ _e3283432937_)
                                  (_plist32948_ _e3283632945_))
                              (_K3283032921_
                               _plist32948_
                               _xfields32940_
                               _fields32935_
                               _struct-type-id32927_)))
                          (_try-match3282632854_))))))))
        (if (##structure-instance-of? _self3280432812_ 'gxc#!struct-getf::t)
            (let* ((_e3280832953_ (##vector-ref _self3280432812_ '1))
                   (_struct-t32956_ _e3280832953_)
                   (_e3280932958_ (##vector-ref _self3280432812_ '2))
                   (_off32961_ _e3280932958_)
                   (_e3281032963_ (##vector-ref _self3280432812_ '3))
                   (_unchecked?32966_ _e3281032963_))
              (_K3280732950_ _unchecked?32966_ _off32961_ _struct-t32956_))
            (_E3280632816_)))))
  (bind-method!
   gxc#!struct-getf::t
   'optimize-call
   gxc#!struct-getf::optimize-call
   '#f)
  (define gxc#!struct-setf::optimize-call
    (lambda (_self32495_ _stx32496_ _args32497_)
      (let* ((_self3249832506_ _self32495_)
             (_E3250032510_
              (lambda () (error '"No clause matching" _self3249832506_)))
             (_K3250132661_
              (lambda (_unchecked?32513_ _off32514_ _struct-t32515_)
                (let* ((_struct-type32517_
                        (gxc#optimizer-resolve-type _struct-t32515_))
                       (_struct-type3251832532_ _struct-type32517_)
                       (_else3252132540_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx32496_
                           _struct-t32515_
                           _struct-type32517_))))
                  (let ((_K3252432632_
                         (lambda (_plist32551_
                                  _xfields32552_
                                  _fields32553_
                                  _struct-type-id32554_)
                           (if _xfields32552_
                               (let* ((_g3255732571_
                                       (lambda (_g3255832568_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g3255832568_)))
                                      (_g3255632578_
                                       (lambda (_g3255832574_)
                                         ((lambda ()
                                            (gxc#raise-compile-error
                                             '"Illegal struct mutator application"
                                             _stx32496_)))))
                                      (_g3255532629_
                                       (lambda (_g3255832581_)
                                         (if (gx#stx-pair? _g3255832581_)
                                             (let ((_e3256132583_
                                                    (gx#stx-e _g3255832581_)))
                                               (let ((_hd3256232586_
                                                      (##car _e3256132583_))
                                                     (_tl3256332588_
                                                      (##cdr _e3256132583_)))
                                                 (if (gx#stx-pair?
                                                      _tl3256332588_)
                                                     (let ((_e3256432591_
                                                            (gx#stx-e
                                                             _tl3256332588_)))
                                                       (let ((_hd3256532594_
                                                              (##car _e3256432591_))
                                                             (_tl3256632596_
                                                              (##cdr _e3256432591_)))
                                                         (if (gx#stx-null?
                                                              _tl3256632596_)
                                                             ((lambda (_L32599_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L32600_)
                        (let ((_expr32624_ (gxc#compile-e _L32600_))
                              (_val32625_ (gxc#compile-e _L32599_))
                              (_off32626_ (fx+ _off32514_ _xfields32552_ '1))
                              (_op32627_
                               (if _unchecked?32513_
                                   '%#struct-unchecked-set!
                                   (if (if _plist32551_
                                           (assgetq 'final: _plist32551_)
                                           '#f)
                                       '%#struct-direct-set!
                                       '%#struct-set!))))
                          (gxc#xform-wrap-source
                           (cons _op32627_
                                 (cons (cons '%#ref (cons _struct-t32515_ '()))
                                       (cons (cons '%#quote
                                                   (cons _off32626_ '()))
                                             (cons _expr32624_
                                                   (cons _val32625_ '())))))
                           _stx32496_)))
                      _hd3256532594_
                      _hd3256232586_)
                     (_g3255632578_ _g3255832581_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g3255632578_
                                                      _g3255832581_))))
                                             (_g3255632578_ _g3255832581_)))))
                                 (_g3255532629_ _args32497_))
                               (begin
                                 (gxc#verbose
                                  '"struct-setf: incomplete struct "
                                  _struct-type-id32554_)
                                 (gxc#xform-call% _stx32496_)))))
                        (_K3252332545_
                         (lambda () (gxc#xform-call% _stx32496_))))
                    (let ((_try-match3252032548_
                           (lambda ()
                             (if (##eq? _struct-type3251832532_ '#f)
                                 (let () (_K3252332545_))
                                 (_else3252132540_)))))
                      (if (##structure-instance-of?
                           _struct-type3251832532_
                           'gxc#!struct-type::t)
                          (let* ((_e3252532635_
                                  (##vector-ref _struct-type3251832532_ '1))
                                 (_e3252632640_
                                  (##vector-ref _struct-type3251832532_ '2))
                                 (_e3252732643_
                                  (##vector-ref _struct-type3251832532_ '3))
                                 (_e3252832648_
                                  (##vector-ref _struct-type3251832532_ '4))
                                 (_e3252932653_
                                  (##vector-ref _struct-type3251832532_ '5))
                                 (_e3253032656_
                                  (##vector-ref _struct-type3251832532_ '6)))
                            (let ((_struct-type-id32638_ _e3252532635_)
                                  (_fields32646_ _e3252732643_)
                                  (_xfields32651_ _e3252832648_)
                                  (_plist32659_ _e3253032656_))
                              (_K3252432632_
                               _plist32659_
                               _xfields32651_
                               _fields32646_
                               _struct-type-id32638_)))
                          (_try-match3252032548_))))))))
        (if (##structure-instance-of? _self3249832506_ 'gxc#!struct-setf::t)
            (let* ((_e3250232664_ (##vector-ref _self3249832506_ '1))
                   (_struct-t32667_ _e3250232664_)
                   (_e3250332669_ (##vector-ref _self3249832506_ '2))
                   (_off32672_ _e3250332669_)
                   (_e3250432674_ (##vector-ref _self3249832506_ '3))
                   (_unchecked?32677_ _e3250432674_))
              (_K3250132661_ _unchecked?32677_ _off32672_ _struct-t32667_))
            (_E3250032510_)))))
  (bind-method!
   gxc#!struct-setf::t
   'optimize-call
   gxc#!struct-setf::optimize-call
   '#f)
  (define gxc#!lambda::optimize-call
    (lambda (_self32329_ _stx32330_ _args32331_)
      (let* ((_self3233232341_ _self32329_)
             (_E3233432345_
              (lambda () (error '"No clause matching" _self3233232341_)))
             (_K3233532352_
              (lambda (_inline32348_ _dispatch32349_ _arity32350_)
                (begin
                  (if (gxc#!lambda-arity-match? _self32329_ _args32331_)
                      '#!void
                      (gxc#raise-compile-error
                       '"Illegal lambda application; arity mismatch"
                       _stx32330_
                       _arity32350_))
                  (if _inline32348_
                      (begin
                        (gxc#verbose '"inline lambda")
                        (gxc#compile-e
                         (gxc#xform-wrap-source
                          (_inline32348_ _stx32330_)
                          _stx32330_)))
                      (if _dispatch32349_
                          (begin
                            (gxc#verbose
                             '"dispatch lambda => "
                             _dispatch32349_)
                            (gxc#compile-e
                             (gxc#xform-wrap-source
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons _dispatch32349_ '()))
                                          _args32331_))
                              _stx32330_)))
                          (gxc#xform-call% _stx32330_)))))))
        (if (##structure-instance-of? _self3233232341_ 'gxc#!lambda::t)
            (let* ((_e3233632355_ (##vector-ref _self3233232341_ '1))
                   (_e3233732358_ (##vector-ref _self3233232341_ '2))
                   (_arity32361_ _e3233732358_)
                   (_e3233832363_ (##vector-ref _self3233232341_ '3))
                   (_dispatch32366_ _e3233832363_)
                   (_e3233932368_ (##vector-ref _self3233232341_ '4))
                   (_inline32371_ _e3233932368_))
              (_K3233532352_ _inline32371_ _dispatch32366_ _arity32361_))
            (_E3233432345_)))))
  (bind-method! gxc#!lambda::t 'optimize-call gxc#!lambda::optimize-call '#f)
  (define gxc#!case-lambda::optimize-call
    (lambda (_self32168_ _stx32169_ _args32170_)
      (let* ((_self3217132178_ _self32168_)
             (_E3217332182_
              (lambda () (error '"No clause matching" _self3217132178_)))
             (_K3217432196_
              (lambda (_clauses32185_)
                (let ((_$e32191_
                       (find (lambda (_g3218632188_)
                               (gxc#!lambda-arity-match?
                                _g3218632188_
                                _args32170_))
                             _clauses32185_)))
                  (if _$e32191_
                      ((lambda (_clause32194_)
                         (call-method
                          _clause32194_
                          'optimize-call
                          _stx32169_
                          _args32170_))
                       _$e32191_)
                      (gxc#raise-compile-error
                       '"Illegal case-lambda application; arity mismatch"
                       _stx32169_
                       (map gxc#!lambda-arity _clauses32185_)))))))
        (if (##structure-instance-of? _self3217132178_ 'gxc#!case-lambda::t)
            (let* ((_e3217532199_ (##vector-ref _self3217132178_ '1))
                   (_e3217632202_ (##vector-ref _self3217132178_ '2))
                   (_clauses32205_ _e3217632202_))
              (_K3217432196_ _clauses32205_))
            (_E3217332182_)))))
  (bind-method!
   gxc#!case-lambda::t
   'optimize-call
   gxc#!case-lambda::optimize-call
   '#f)
  (define gxc#!lambda-arity-match?
    (lambda (_self31982_ _args31983_)
      (let* ((_self3198431991_ _self31982_)
             (_E3198631995_
              (lambda () (error '"No clause matching" _self3198431991_)))
             (_K3198732035_
              (lambda (_arity31998_)
                (let* ((_arity3199932008_ _arity31998_)
                       (_E3200232012_
                        (lambda ()
                          (error '"No clause matching" _arity3199932008_))))
                  (let ((_K3200632032_
                         (lambda () (fx= (length _args31983_) _arity31998_)))
                        (_K3200332018_
                         (lambda (_arity32016_)
                           (fx>= (length _args31983_) _arity32016_))))
                    (let ((_try-match3200132028_
                           (lambda ()
                             (if (##pair? _arity3199932008_)
                                 (let ((_tl3200532023_
                                        (##cdr _arity3199932008_))
                                       (_hd3200432021_
                                        (##car _arity3199932008_)))
                                   (if (##null? _tl3200532023_)
                                       (let ((_arity32026_ _hd3200432021_))
                                         (_K3200332018_ _arity32026_))
                                       (_E3200232012_)))
                                 (_E3200232012_)))))
                      (if (fixnum? _arity3199932008_)
                          (let () (_K3200632032_))
                          (_try-match3200132028_))))))))
        (if (##structure-instance-of? _self3198431991_ 'gxc#!lambda::t)
            (let* ((_e3198832038_ (##vector-ref _self3198431991_ '1))
                   (_e3198932041_ (##vector-ref _self3198431991_ '2))
                   (_arity32044_ _e3198932041_))
              (_K3198732035_ _arity32044_))
            (_E3198631995_)))))
  (define gxc#!kw-lambda::optimize-call
    (lambda (_self31867_ _stx31868_ _args31869_)
      (let* ((_self3187031878_ _self31867_)
             (_E3187231882_
              (lambda () (error '"No clause matching" _self3187031878_)))
             (_K3187331966_
              (lambda (_dispatch31885_ _table31886_)
                (let* ((_g3188731896_
                        (gxc#optimizer-lookup-type _dispatch31885_))
                       (_else3188931904_
                        (lambda ()
                          (begin
                            (gxc#verbose
                             '"unknown keyword dispatch lambda "
                             _dispatch31885_)
                            (gxc#xform-call% _stx31868_))))
                       (_K3189131950_
                        (lambda (_main31907_ _keys31908_)
                          (let ((_g33580_
                                 (gxc#!kw-lambda-split-args
                                  _stx31868_
                                  _args31869_)))
                            (begin
                              (let ((_g33581_
                                     (if (##values? _g33580_)
                                         (##vector-length _g33580_)
                                         1)))
                                (if (not (##fx= _g33581_ 2))
                                    (error "Context expects 2 values"
                                           _g33581_)))
                              (let ((_pargs31910_ (##vector-ref _g33580_ 0))
                                    (_kwargs31911_ (##vector-ref _g33580_ 1)))
                                (begin
                                  (gxc#verbose
                                   '"dispatch kw-lambda => "
                                   _main31907_)
                                  (if _table31886_
                                      (let ((_xargs31918_
                                             (map (lambda (_key31913_)
                                                    (let ((_$e31915_
                                                           (assgetq _key31913_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _kwargs31911_)))
              (if _$e31915_ (values _$e31915_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _keys31908_)))
                                        (begin
                                          (for-each
                                           (lambda (_kw31920_)
                                             (if (memq (car _kw31920_)
                                                       _keys31908_)
                                                 '#!void
                                                 (gxc#raise-compile-error
                                                  '"Illegal keyword lambda application; unexpected keyword"
                                                  _stx31868_
                                                  _keys31908_
                                                  _kw31920_)))
                                           _kwargs31911_)
                                          (gxc#compile-e
                                           (gxc#xform-wrap-source
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons _main31907_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote (cons '#f '()))
                      (foldr1 cons _pargs31910_ _xargs31918_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _stx31868_))))
                                      (let* ((_kwt31922_
                                              (make-symbol (gensym '__kwt)))
                                             (_kwvars31925_
                                              (map (lambda (_g33582_)
                                                     (make-symbol
                                                      (gensym '__kw)))
                                                   _kwargs31911_))
                                             (_kwbind31930_
                                              (map (lambda (_kw31927_
                                                            _kwvar31928_)
                                                     (cons (cons _kwvar31928_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   (cons (cdr _kw31927_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs31911_
                                                   _kwvars31925_))
                                             (_kwset31935_
                                              (map (lambda (_kw31932_
                                                            _kwvar31933_)
                                                     (cons '%#call
                                                           (cons '(%#ref hash-put!)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons _kwt31922_ '()))
                               (cons (cons '%#quote (cons (car _kw31932_) '()))
                                     (cons (cons '%#ref
                                                 (cons _kwvar31933_ '()))
                                           '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs31911_
                                                   _kwvars31925_))
                                             (_xkwargs31940_
                                              (map (lambda (_kw31937_
                                                            _kwvar31938_)
                                                     (cons (car _kw31937_)
                                                           (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _kwvar31938_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs31911_
                                                   _kwvars31925_))
                                             (_xargs31947_
                                              (map (lambda (_key31942_)
                                                     (let ((_$e31944_
                                                            (assgetq _key31942_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _xkwargs31940_)))
               (if _$e31944_ (values _$e31944_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _keys31908_)))
                                        (gxc#compile-e
                                         (gxc#xform-wrap-source
                                          (cons '%#let-values
                                                (cons _kwbind31930_
                                                      (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (cons (cons _kwt31922_ '())
                                            (cons (gxc#xform-wrap-source
                                                   (cons '%#call
                                                         (cons '(%#ref make-hash-table-eq)
                                                               (cons '(%#quote size:)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons '%#quote
                                         (cons (length _kwargs31911_) '()))
                                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx31868_)
                                                  '()))
                                      '())
                                (cons (cons '%#begin
                                            (foldr1 cons
                                                    (cons (gxc#xform-wrap-source
                                                           (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons _main31907_ '()))
                               (cons (cons '%#ref (cons _kwt31922_ '()))
                                     (foldr1 cons _pargs31910_ _xargs31947_))))
                   _stx31868_)
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _kwset31935_))
                                      '())))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _stx31868_)))))))))))
                  (if (##structure-instance-of?
                       _g3188731896_
                       'gxc#!kw-lambda-primary::t)
                      (let* ((_e3189231953_ (##vector-ref _g3188731896_ '1))
                             (_e3189331956_ (##vector-ref _g3188731896_ '2))
                             (_keys31959_ _e3189331956_)
                             (_e3189431961_ (##vector-ref _g3188731896_ '3))
                             (_main31964_ _e3189431961_))
                        (_K3189131950_ _main31964_ _keys31959_))
                      (_else3188931904_))))))
        (if (##structure-instance-of? _self3187031878_ 'gxc#!kw-lambda::t)
            (let* ((_e3187431969_ (##vector-ref _self3187031878_ '1))
                   (_e3187531972_ (##vector-ref _self3187031878_ '2))
                   (_table31975_ _e3187531972_)
                   (_e3187631977_ (##vector-ref _self3187031878_ '3))
                   (_dispatch31980_ _e3187631977_))
              (_K3187331966_ _dispatch31980_ _table31975_))
            (_E3187231882_)))))
  (bind-method!
   gxc#!kw-lambda::t
   'optimize-call
   gxc#!kw-lambda::optimize-call
   '#f)
  (define gxc#!kw-lambda-split-args
    (lambda (_stx31490_ _args31491_)
      (let _lp31493_ ((_rest31495_ _args31491_)
                      (_pargs31496_ '())
                      (_kwargs31497_ '()))
        (let* ((_g3150331553_
                (lambda (_g3150431550_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g3150431550_)))
               (_g3150231560_
                (lambda (_g3150431556_)
                  (if (gx#stx-null? _g3150431556_)
                      ((lambda ()
                         (values (reverse _pargs31496_)
                                 (reverse _kwargs31497_))))
                      (_g3150331553_ _g3150431556_))))
               (_g3150131588_
                (lambda (_g3150431563_)
                  (if (gx#stx-pair? _g3150431563_)
                      (let ((_e3154631565_ (gx#stx-e _g3150431563_)))
                        (let ((_hd3154731568_ (##car _e3154631565_))
                              (_tl3154831570_ (##cdr _e3154631565_)))
                          ((lambda (_L31573_ _L31574_)
                             (_lp31493_
                              _L31573_
                              (cons _L31574_ _pargs31496_)
                              _kwargs31497_))
                           _tl3154831570_
                           _hd3154731568_)))
                      (_g3150231560_ _g3150431563_))))
               (_g3150031646_
                (lambda (_g3150431591_)
                  (if (gx#stx-pair? _g3150431591_)
                      (let ((_e3153231593_ (gx#stx-e _g3150431591_)))
                        (let ((_hd3153331596_ (##car _e3153231593_))
                              (_tl3153431598_ (##cdr _e3153231593_)))
                          (if (gx#stx-pair? _hd3153331596_)
                              (let ((_e3153531601_ (gx#stx-e _hd3153331596_)))
                                (let ((_hd3153631604_ (##car _e3153531601_))
                                      (_tl3153731606_ (##cdr _e3153531601_)))
                                  (if (gx#identifier? _hd3153631604_)
                                      (if (gx#stx-eq? '%#quote _hd3153631604_)
                                          (if (gx#stx-pair? _tl3153731606_)
                                              (let ((_e3153831609_
                                                     (gx#stx-e
                                                      _tl3153731606_)))
                                                (let ((_hd3153931612_
                                                       (##car _e3153831609_))
                                                      (_tl3154031614_
                                                       (##cdr _e3153831609_)))
                                                  (if (gx#stx-null?
                                                       _tl3154031614_)
                                                      (if (gx#stx-pair?
                                                           _tl3153431598_)
                                                          (let ((_e3154131617_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl3153431598_)))
                    (let ((_hd3154231620_ (##car _e3154131617_))
                          (_tl3154331622_ (##cdr _e3154131617_)))
                      ((lambda (_L31625_ _L31626_ _L31627_)
                         (if (gx#stx-keyword? _L31627_)
                             (let ((_kw31644_ (gx#stx-e _L31627_)))
                               (if (assq _kw31644_ _kwargs31497_)
                                   (gxc#raise-compile-error
                                    '"Illegal keyword lambda application; duplicate keyword"
                                    _stx31490_
                                    _kw31644_)
                                   (_lp31493_
                                    _L31625_
                                    _pargs31496_
                                    (cons (cons _kw31644_ _L31626_)
                                          _kwargs31497_))))
                             (_g3150131588_ _g3150431591_)))
                       _tl3154331622_
                       _hd3154231620_
                       _hd3153931612_)))
                  (_g3150131588_ _g3150431591_))
              (_g3150131588_ _g3150431591_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g3150131588_ _g3150431591_))
                                          (_g3150131588_ _g3150431591_))
                                      (_g3150131588_ _g3150431591_))))
                              (_g3150131588_ _g3150431591_))))
                      (_g3150131588_ _g3150431591_))))
               (_g3149931688_
                (lambda (_g3150431649_)
                  (if (gx#stx-pair? _g3150431649_)
                      (let ((_e3152031651_ (gx#stx-e _g3150431649_)))
                        (let ((_hd3152131654_ (##car _e3152031651_))
                              (_tl3152231656_ (##cdr _e3152031651_)))
                          (if (gx#stx-pair? _hd3152131654_)
                              (let ((_e3152331659_ (gx#stx-e _hd3152131654_)))
                                (let ((_hd3152431662_ (##car _e3152331659_))
                                      (_tl3152531664_ (##cdr _e3152331659_)))
                                  (if (gx#identifier? _hd3152431662_)
                                      (if (gx#stx-eq? '%#quote _hd3152431662_)
                                          (if (gx#stx-pair? _tl3152531664_)
                                              (let ((_e3152631667_
                                                     (gx#stx-e
                                                      _tl3152531664_)))
                                                (let ((_hd3152731670_
                                                       (##car _e3152631667_))
                                                      (_tl3152831672_
                                                       (##cdr _e3152631667_)))
                                                  (if (gx#stx-datum?
                                                       _hd3152731670_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd3152731670_)
                          '#!rest)
                  (if (gx#stx-null? _tl3152831672_)
                      ((lambda (_L31675_)
                         (values (foldl1 cons _L31675_ _pargs31496_)
                                 (reverse _kwargs31497_)))
                       _tl3152231656_)
                      (_g3150031646_ _g3150431649_))
                  (_g3150031646_ _g3150431649_))
              (_g3150031646_ _g3150431649_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g3150031646_ _g3150431649_))
                                          (_g3150031646_ _g3150431649_))
                                      (_g3150031646_ _g3150431649_))))
                              (_g3150031646_ _g3150431649_))))
                      (_g3150031646_ _g3150431649_))))
               (_g3149831742_
                (lambda (_g3150431691_)
                  (if (gx#stx-pair? _g3150431691_)
                      (let ((_e3150731693_ (gx#stx-e _g3150431691_)))
                        (let ((_hd3150831696_ (##car _e3150731693_))
                              (_tl3150931698_ (##cdr _e3150731693_)))
                          (if (gx#stx-pair? _hd3150831696_)
                              (let ((_e3151031701_ (gx#stx-e _hd3150831696_)))
                                (let ((_hd3151131704_ (##car _e3151031701_))
                                      (_tl3151231706_ (##cdr _e3151031701_)))
                                  (if (gx#identifier? _hd3151131704_)
                                      (if (gx#stx-eq? '%#quote _hd3151131704_)
                                          (if (gx#stx-pair? _tl3151231706_)
                                              (let ((_e3151331709_
                                                     (gx#stx-e
                                                      _tl3151231706_)))
                                                (let ((_hd3151431712_
                                                       (##car _e3151331709_))
                                                      (_tl3151531714_
                                                       (##cdr _e3151331709_)))
                                                  (if (gx#stx-datum?
                                                       _hd3151431712_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd3151431712_)
                          '#!key)
                  (if (gx#stx-null? _tl3151531714_)
                      (if (gx#stx-pair? _tl3150931698_)
                          (let ((_e3151631717_ (gx#stx-e _tl3150931698_)))
                            (let ((_hd3151731720_ (##car _e3151631717_))
                                  (_tl3151831722_ (##cdr _e3151631717_)))
                              ((lambda (_L31725_ _L31726_)
                                 (_lp31493_
                                  _L31725_
                                  (cons _L31726_ _pargs31496_)
                                  _kwargs31497_))
                               _tl3151831722_
                               _hd3151731720_)))
                          (_g3149931688_ _g3150431691_))
                      (_g3149931688_ _g3150431691_))
                  (_g3149931688_ _g3150431691_))
              (_g3149931688_ _g3150431691_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g3149931688_ _g3150431691_))
                                          (_g3149931688_ _g3150431691_))
                                      (_g3149931688_ _g3150431691_))))
                              (_g3149931688_ _g3150431691_))))
                      (_g3149931688_ _g3150431691_)))))
          (_g3149831742_ _rest31495_)))))
  (define gxc#!kw-lambda-primary::optimize-call
    (lambda (_self31486_ _stx31487_ _args31488_) (gxc#xform-call% _stx31487_)))
  (bind-method!
   gxc#!kw-lambda-primary::t
   'optimize-call
   gxc#!kw-lambda-primary::optimize-call
   '#f))
