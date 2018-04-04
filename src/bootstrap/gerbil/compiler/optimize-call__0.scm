(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#&optimize-call
    (##make-promise
     (lambda ()
       (let ((_tbl46496_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl46496_ (force gxc#&basic-xform))
           (table-set! _tbl46496_ '%#call gxc#optimize-call%)
           _tbl46496_)))))
  (define gxc#apply-optimize-call
    (lambda (_stx46489_ . _args46491_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx46489_ _args46491_))
       gxc#current-compile-methods
       (force gxc#&optimize-call))))
  (define gxc#optimize-call%
    (lambda (_stx46395_)
      (let* ((___stx4649946500_ _stx46395_)
             (_g4639846418_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4649946500_))))
        (let ((___kont4650146502_
               (lambda (_L46462_ _L46463_)
                 (let* ((_rator-id46481_ (gxc#identifier-symbol _L46463_))
                        (_rator-type46483_
                         (gxc#optimizer-resolve-type _rator-id46481_)))
                   (if (##structure-instance-of?
                        _rator-type46483_
                        'gxc#!procedure::t)
                       (begin
                         (gxc#verbose
                          '"optimize-call "
                          _rator-id46481_
                          '" => "
                          _rator-type46483_
                          '" "
                          (##structure-ref
                           _rator-type46483_
                           '1
                           gxc#!type::t
                           '#f))
                         (call-method
                          _rator-type46483_
                          'optimize-call
                          _stx46395_
                          _L46462_))
                       (if (not _rator-type46483_)
                           (gxc#xform-call% _stx46395_)
                           (gxc#raise-compile-error
                            '"Illegal application; not a procedure"
                            _stx46395_
                            _rator-type46483_))))))
              (___kont4650346504_ (lambda () (gxc#xform-call% _stx46395_))))
          (if (gx#stx-pair? ___stx4649946500_)
              (let ((_e4640246430_ (gx#stx-e ___stx4649946500_)))
                (let ((_tl4640446435_ (##cdr _e4640246430_))
                      (_hd4640346433_ (##car _e4640246430_)))
                  (if (gx#stx-pair? _tl4640446435_)
                      (let ((_e4640546438_ (gx#stx-e _tl4640446435_)))
                        (let ((_tl4640746443_ (##cdr _e4640546438_))
                              (_hd4640646441_ (##car _e4640546438_)))
                          (if (gx#stx-pair? _hd4640646441_)
                              (let ((_e4640846446_ (gx#stx-e _hd4640646441_)))
                                (let ((_tl4641046451_ (##cdr _e4640846446_))
                                      (_hd4640946449_ (##car _e4640846446_)))
                                  (if (gx#identifier? _hd4640946449_)
                                      (if (gx#stx-eq? '%#ref _hd4640946449_)
                                          (if (gx#stx-pair? _tl4641046451_)
                                              (let ((_e4641146454_
                                                     (gx#stx-e
                                                      _tl4641046451_)))
                                                (let ((_tl4641346459_
                                                       (##cdr _e4641146454_))
                                                      (_hd4641246457_
                                                       (##car _e4641146454_)))
                                                  (if (gx#stx-null?
                                                       _tl4641346459_)
                                                      (___kont4650146502_
                                                       _tl4640746443_
                                                       _hd4641246457_)
                                                      (___kont4650346504_))))
                                              (___kont4650346504_))
                                          (___kont4650346504_))
                                      (___kont4650346504_))))
                              (___kont4650346504_))))
                      (___kont4650346504_))))
              (___kont4650346504_))))))
  (define gxc#!struct-pred::optimize-call
    (lambda (_self46249_ _stx46250_ _args46251_)
      (let* ((_self4625246258_ _self46249_)
             (_E4625446262_
              (lambda () (error '"No clause matching" _self4625246258_)))
             (_K4625546387_
              (lambda (_struct-t46265_)
                (let* ((_struct-type46267_
                        (gxc#optimizer-resolve-type _struct-t46265_))
                       (_struct-type4626846282_ _struct-type46267_)
                       (_else4627146290_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx46250_
                           _struct-t46265_
                           _struct-type46267_))))
                  (let ((_K4627446362_
                         (lambda (_plist46301_ _struct-type-id46302_)
                           (let* ((___stx4653746538_ _args46251_)
                                  (_g4630546315_
                                   (lambda ()
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      ___stx4653746538_))))
                             (let ((___kont4653946540_
                                    (lambda (_L46335_)
                                      (let ((_expr46356_
                                             (gxc#compile-e _L46335_))
                                            (_op46357_
                                             (if (if _plist46301_
                                                     (assgetq 'final:
                                                              _plist46301_)
                                                     '#f)
                                                 '%#struct-direct-instance?
                                                 '%#struct-instance?)))
                                        (gxc#xform-wrap-source
                                         (cons _op46357_
                                               (cons (cons '%#quote
                                                           (cons _struct-type-id46302_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _expr46356_ '())))
                                         _stx46250_))))
                                   (___kont4654146542_
                                    (lambda ()
                                      (gxc#raise-compile-error
                                       '"Illegal struct predicate application"
                                       _stx46250_))))
                               (if (gx#stx-pair? ___stx4653746538_)
                                   (let ((_e4630846327_
                                          (gx#stx-e ___stx4653746538_)))
                                     (let ((_tl4631046332_
                                            (##cdr _e4630846327_))
                                           (_hd4630946330_
                                            (##car _e4630846327_)))
                                       (if (gx#stx-null? _tl4631046332_)
                                           (___kont4653946540_ _hd4630946330_)
                                           (___kont4654146542_))))
                                   (___kont4654146542_))))))
                        (_K4627346295_
                         (lambda () (gxc#xform-call% _stx46250_))))
                    (let ((_try-match4627046298_
                           (lambda ()
                             (if (##eq? _struct-type4626846282_ '#f)
                                 (_K4627346295_)
                                 (_else4627146290_)))))
                      (if (##structure-instance-of?
                           _struct-type4626846282_
                           'gxc#!struct-type::t)
                          (let* ((_e4627546365_
                                  (##vector-ref _struct-type4626846282_ '1))
                                 (_e4627646370_
                                  (##vector-ref _struct-type4626846282_ '2))
                                 (_e4627746373_
                                  (##vector-ref _struct-type4626846282_ '3))
                                 (_e4627846376_
                                  (##vector-ref _struct-type4626846282_ '4))
                                 (_e4627946379_
                                  (##vector-ref _struct-type4626846282_ '5))
                                 (_e4628046382_
                                  (##vector-ref _struct-type4626846282_ '6)))
                            (let ((_struct-type-id46368_ _e4627546365_)
                                  (_plist46385_ _e4628046382_))
                              (_K4627446362_
                               _plist46385_
                               _struct-type-id46368_)))
                          (_try-match4627046298_))))))))
        (if (##structure-instance-of? _self4625246258_ 'gxc#!struct-pred::t)
            (let* ((_e4625646390_ (##vector-ref _self4625246258_ '1))
                   (_struct-t46393_ _e4625646390_))
              (_K4625546387_ _struct-t46393_))
            (_E4625446262_)))))
  (bind-method!
   gxc#!struct-pred::t
   'optimize-call
   gxc#!struct-pred::optimize-call
   '#f)
  (define gxc#!struct-cons::optimize-call
    (lambda (_self46023_ _stx46024_ _args46025_)
      (let* ((_self4602646032_ _self46023_)
             (_E4602846036_
              (lambda () (error '"No clause matching" _self4602646032_)))
             (_K4602946119_
              (lambda (_struct-t46039_)
                (let* ((_struct-type46041_
                        (gxc#optimizer-resolve-type _struct-t46039_))
                       (_struct-type4604246055_ _struct-type46041_)
                       (_else4604546063_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct constructor application; not a struct type"
                           _stx46024_
                           _struct-t46039_
                           _struct-type46041_))))
                  (let ((_K4604846093_
                         (lambda (_ctor46074_
                                  _xfields46075_
                                  _fields46076_
                                  _type-id46077_)
                           (let* ((_args46079_ (map gxc#compile-e _args46025_))
                                  (_$e46081_
                                   (if _ctor46074_
                                       (if _xfields46075_
                                           (gxc#!struct-type-lookup-method
                                            _struct-type46041_
                                            _ctor46074_)
                                           '#f)
                                       '#f)))
                             (if _$e46081_
                                 ((lambda (_kons46084_)
                                    (let ((_$obj46086_
                                           (make-symbol (gensym '__obj))))
                                      (gxc#xform-wrap-source
                                       (cons '%#let-values
                                             (cons (cons (cons (cons _$obj46086_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons (cons '%#call
                                   (cons (cons '%#ref (cons 'make-object '()))
                                         (cons (cons '%#ref
                                                     (cons _struct-t46039_
                                                           '()))
                                               (cons (cons '%#quote
                                                           (cons (fx+ _fields46076_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _xfields46075_)
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
                                     (cons (cons '%#ref (cons _kons46084_ '()))
                                           (cons (cons '%#ref
                                                       (cons _$obj46086_ '()))
                                                 _args46079_)))
                               _stx46024_))
                             (cons (cons '%#ref (cons _$obj46086_ '())) '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _stx46024_)))
                                  _$e46081_)
                                 (if (let ((_$e46088_ _ctor46074_))
                                       (if _$e46088_
                                           _$e46088_
                                           (not _xfields46075_)))
                                     (gxc#xform-wrap-source
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons 'make-struct-instance
                                                              '()))
                                                  (cons (cons '%#ref
                                                              (cons _struct-t46039_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _args46079_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _stx46024_)
                                     (let ((_arity46091_
                                            (fx+ _fields46076_
                                                 _xfields46075_)))
                                       (if (fx= _arity46091_
                                                (length _args46079_))
                                           (gxc#xform-wrap-source
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#ref (cons _struct-t46039_ '())) _args46079_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _stx46024_)
                                           (gxc#raise-compile-error
                                            '"Illegal struct constructor application; arity mismatch"
                                            _stx46024_
                                            _struct-t46039_
                                            _arity46091_))))))))
                        (_K4604746068_
                         (lambda ()
                           (begin
                             (gxc#verbose
                              '"cannot inline struct constructor; unknown struct type "
                              _struct-t46039_)
                             (gxc#xform-call% _stx46024_)))))
                    (let ((_try-match4604446071_
                           (lambda ()
                             (if (##eq? _struct-type4604246055_ '#f)
                                 (_K4604746068_)
                                 (_else4604546063_)))))
                      (if (##structure-instance-of?
                           _struct-type4604246055_
                           'gxc#!struct-type::t)
                          (let* ((_e4604946096_
                                  (##vector-ref _struct-type4604246055_ '1))
                                 (_e4605046101_
                                  (##vector-ref _struct-type4604246055_ '2))
                                 (_e4605146104_
                                  (##vector-ref _struct-type4604246055_ '3))
                                 (_e4605246109_
                                  (##vector-ref _struct-type4604246055_ '4))
                                 (_e4605346114_
                                  (##vector-ref _struct-type4604246055_ '5)))
                            (let ((_type-id46099_ _e4604946096_)
                                  (_fields46107_ _e4605146104_)
                                  (_xfields46112_ _e4605246109_)
                                  (_ctor46117_ _e4605346114_))
                              (_K4604846093_
                               _ctor46117_
                               _xfields46112_
                               _fields46107_
                               _type-id46099_)))
                          (_try-match4604446071_))))))))
        (if (##structure-instance-of? _self4602646032_ 'gxc#!struct-cons::t)
            (let* ((_e4603046122_ (##vector-ref _self4602646032_ '1))
                   (_struct-t46125_ _e4603046122_))
              (_K4602946119_ _struct-t46125_))
            (_E4602846036_)))))
  (bind-method!
   gxc#!struct-cons::t
   'optimize-call
   gxc#!struct-cons::optimize-call
   '#f)
  (define gxc#!struct-getf::optimize-call
    (lambda (_self45734_ _stx45735_ _args45736_)
      (let* ((_self4573745745_ _self45734_)
             (_E4573945749_
              (lambda () (error '"No clause matching" _self4573745745_)))
             (_K4574045883_
              (lambda (_unchecked?45752_ _off45753_ _struct-t45754_)
                (let* ((_struct-type45756_
                        (gxc#optimizer-resolve-type _struct-t45754_))
                       (_struct-type4575745771_ _struct-type45756_)
                       (_else4576045779_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx45735_
                           _struct-t45754_
                           _struct-type45756_))))
                  (let ((_K4576345854_
                         (lambda (_plist45790_
                                  _xfields45791_
                                  _fields45792_
                                  _struct-type-id45793_)
                           (if _xfields45791_
                               (let* ((___stx4658546586_ _args45736_)
                                      (_g4579645806_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx4658546586_))))
                                 (let ((___kont4658746588_
                                        (lambda (_L45826_)
                                          (let ((_expr45847_
                                                 (gxc#compile-e _L45826_))
                                                (_off45848_
                                                 (fx+ _off45753_
                                                      _xfields45791_
                                                      '1))
                                                (_op45849_
                                                 (if _unchecked?45752_
                                                     '%#struct-unchecked-ref
                                                     (if (if _plist45790_
                                                             (assgetq 'final:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _plist45790_)
                     '#f)
                 '%#struct-direct-ref
                 '%#struct-ref))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (gxc#xform-wrap-source
                                             (cons _op45849_
                                                   (cons (cons '%#ref
                                                               (cons _struct-t45754_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons '%#quote (cons _off45848_ '()))
                       (cons _expr45847_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _stx45735_))))
                                       (___kont4658946590_
                                        (lambda ()
                                          (gxc#raise-compile-error
                                           '"Illegal struct accessor application"
                                           _stx45735_))))
                                   (if (gx#stx-pair? ___stx4658546586_)
                                       (let ((_e4579945818_
                                              (gx#stx-e ___stx4658546586_)))
                                         (let ((_tl4580145823_
                                                (##cdr _e4579945818_))
                                               (_hd4580045821_
                                                (##car _e4579945818_)))
                                           (if (gx#stx-null? _tl4580145823_)
                                               (___kont4658746588_
                                                _hd4580045821_)
                                               (___kont4658946590_))))
                                       (___kont4658946590_))))
                               (begin
                                 (gxc#verbose
                                  '"struct-getf: incomplete struct "
                                  _struct-type-id45793_)
                                 (gxc#xform-call% _stx45735_)))))
                        (_K4576245784_
                         (lambda () (gxc#xform-call% _stx45735_))))
                    (let ((_try-match4575945787_
                           (lambda ()
                             (if (##eq? _struct-type4575745771_ '#f)
                                 (_K4576245784_)
                                 (_else4576045779_)))))
                      (if (##structure-instance-of?
                           _struct-type4575745771_
                           'gxc#!struct-type::t)
                          (let* ((_e4576445857_
                                  (##vector-ref _struct-type4575745771_ '1))
                                 (_e4576545862_
                                  (##vector-ref _struct-type4575745771_ '2))
                                 (_e4576645865_
                                  (##vector-ref _struct-type4575745771_ '3))
                                 (_e4576745870_
                                  (##vector-ref _struct-type4575745771_ '4))
                                 (_e4576845875_
                                  (##vector-ref _struct-type4575745771_ '5))
                                 (_e4576945878_
                                  (##vector-ref _struct-type4575745771_ '6)))
                            (let ((_struct-type-id45860_ _e4576445857_)
                                  (_fields45868_ _e4576645865_)
                                  (_xfields45873_ _e4576745870_)
                                  (_plist45881_ _e4576945878_))
                              (_K4576345854_
                               _plist45881_
                               _xfields45873_
                               _fields45868_
                               _struct-type-id45860_)))
                          (_try-match4575945787_))))))))
        (if (##structure-instance-of? _self4573745745_ 'gxc#!struct-getf::t)
            (let* ((_e4574145886_ (##vector-ref _self4573745745_ '1))
                   (_struct-t45889_ _e4574145886_)
                   (_e4574245891_ (##vector-ref _self4573745745_ '2))
                   (_off45894_ _e4574245891_)
                   (_e4574345896_ (##vector-ref _self4573745745_ '3))
                   (_unchecked?45899_ _e4574345896_))
              (_K4574045883_ _unchecked?45899_ _off45894_ _struct-t45889_))
            (_E4573945749_)))))
  (bind-method!
   gxc#!struct-getf::t
   'optimize-call
   gxc#!struct-getf::optimize-call
   '#f)
  (define gxc#!struct-setf::optimize-call
    (lambda (_self45428_ _stx45429_ _args45430_)
      (let* ((_self4543145439_ _self45428_)
             (_E4543345443_
              (lambda () (error '"No clause matching" _self4543145439_)))
             (_K4543445594_
              (lambda (_unchecked?45446_ _off45447_ _struct-t45448_)
                (let* ((_struct-type45450_
                        (gxc#optimizer-resolve-type _struct-t45448_))
                       (_struct-type4545145465_ _struct-type45450_)
                       (_else4545445473_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx45429_
                           _struct-t45448_
                           _struct-type45450_))))
                  (let ((_K4545745565_
                         (lambda (_plist45484_
                                  _xfields45485_
                                  _fields45486_
                                  _struct-type-id45487_)
                           (if _xfields45485_
                               (let* ((___stx4661846619_ _args45430_)
                                      (_g4549045504_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx4661846619_))))
                                 (let ((___kont4662046621_
                                        (lambda (_L45532_ _L45533_)
                                          (let ((_expr45557_
                                                 (gxc#compile-e _L45533_))
                                                (_val45558_
                                                 (gxc#compile-e _L45532_))
                                                (_off45559_
                                                 (fx+ _off45447_
                                                      _xfields45485_
                                                      '1))
                                                (_op45560_
                                                 (if _unchecked?45446_
                                                     '%#struct-unchecked-set!
                                                     (if (if _plist45484_
                                                             (assgetq 'final:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _plist45484_)
                     '#f)
                 '%#struct-direct-set!
                 '%#struct-set!))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (gxc#xform-wrap-source
                                             (cons _op45560_
                                                   (cons (cons '%#ref
                                                               (cons _struct-t45448_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons '%#quote (cons _off45559_ '()))
                       (cons _expr45557_ (cons _val45558_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _stx45429_))))
                                       (___kont4662246623_
                                        (lambda ()
                                          (gxc#raise-compile-error
                                           '"Illegal struct mutator application"
                                           _stx45429_))))
                                   (if (gx#stx-pair? ___stx4661846619_)
                                       (let ((_e4549445516_
                                              (gx#stx-e ___stx4661846619_)))
                                         (let ((_tl4549645521_
                                                (##cdr _e4549445516_))
                                               (_hd4549545519_
                                                (##car _e4549445516_)))
                                           (if (gx#stx-pair? _tl4549645521_)
                                               (let ((_e4549745524_
                                                      (gx#stx-e
                                                       _tl4549645521_)))
                                                 (let ((_tl4549945529_
                                                        (##cdr _e4549745524_))
                                                       (_hd4549845527_
                                                        (##car _e4549745524_)))
                                                   (if (gx#stx-null?
                                                        _tl4549945529_)
                                                       (___kont4662046621_
                                                        _hd4549845527_
                                                        _hd4549545519_)
                                                       (___kont4662246623_))))
                                               (___kont4662246623_))))
                                       (___kont4662246623_))))
                               (begin
                                 (gxc#verbose
                                  '"struct-setf: incomplete struct "
                                  _struct-type-id45487_)
                                 (gxc#xform-call% _stx45429_)))))
                        (_K4545645478_
                         (lambda () (gxc#xform-call% _stx45429_))))
                    (let ((_try-match4545345481_
                           (lambda ()
                             (if (##eq? _struct-type4545145465_ '#f)
                                 (_K4545645478_)
                                 (_else4545445473_)))))
                      (if (##structure-instance-of?
                           _struct-type4545145465_
                           'gxc#!struct-type::t)
                          (let* ((_e4545845568_
                                  (##vector-ref _struct-type4545145465_ '1))
                                 (_e4545945573_
                                  (##vector-ref _struct-type4545145465_ '2))
                                 (_e4546045576_
                                  (##vector-ref _struct-type4545145465_ '3))
                                 (_e4546145581_
                                  (##vector-ref _struct-type4545145465_ '4))
                                 (_e4546245586_
                                  (##vector-ref _struct-type4545145465_ '5))
                                 (_e4546345589_
                                  (##vector-ref _struct-type4545145465_ '6)))
                            (let ((_struct-type-id45571_ _e4545845568_)
                                  (_fields45579_ _e4546045576_)
                                  (_xfields45584_ _e4546145581_)
                                  (_plist45592_ _e4546345589_))
                              (_K4545745565_
                               _plist45592_
                               _xfields45584_
                               _fields45579_
                               _struct-type-id45571_)))
                          (_try-match4545345481_))))))))
        (if (##structure-instance-of? _self4543145439_ 'gxc#!struct-setf::t)
            (let* ((_e4543545597_ (##vector-ref _self4543145439_ '1))
                   (_struct-t45600_ _e4543545597_)
                   (_e4543645602_ (##vector-ref _self4543145439_ '2))
                   (_off45605_ _e4543645602_)
                   (_e4543745607_ (##vector-ref _self4543145439_ '3))
                   (_unchecked?45610_ _e4543745607_))
              (_K4543445594_ _unchecked?45610_ _off45605_ _struct-t45600_))
            (_E4543345443_)))))
  (bind-method!
   gxc#!struct-setf::t
   'optimize-call
   gxc#!struct-setf::optimize-call
   '#f)
  (define gxc#!lambda::optimize-call
    (lambda (_self45262_ _stx45263_ _args45264_)
      (let* ((_self4526545274_ _self45262_)
             (_E4526745278_
              (lambda () (error '"No clause matching" _self4526545274_)))
             (_K4526845285_
              (lambda (_inline45281_ _dispatch45282_ _arity45283_)
                (begin
                  (if (gxc#!lambda-arity-match? _self45262_ _args45264_)
                      '#!void
                      (gxc#raise-compile-error
                       '"Illegal lambda application; arity mismatch"
                       _stx45263_
                       _arity45283_))
                  (if _inline45281_
                      (begin
                        (gxc#verbose '"inline lambda")
                        (gxc#compile-e
                         (gxc#xform-wrap-source
                          (_inline45281_ _stx45263_)
                          _stx45263_)))
                      (if _dispatch45282_
                          (begin
                            (gxc#verbose
                             '"dispatch lambda => "
                             _dispatch45282_)
                            (gxc#compile-e
                             (gxc#xform-wrap-source
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons _dispatch45282_ '()))
                                          _args45264_))
                              _stx45263_)))
                          (gxc#xform-call% _stx45263_)))))))
        (if (##structure-instance-of? _self4526545274_ 'gxc#!lambda::t)
            (let* ((_e4526945288_ (##vector-ref _self4526545274_ '1))
                   (_e4527045291_ (##vector-ref _self4526545274_ '2))
                   (_arity45294_ _e4527045291_)
                   (_e4527145296_ (##vector-ref _self4526545274_ '3))
                   (_dispatch45299_ _e4527145296_)
                   (_e4527245301_ (##vector-ref _self4526545274_ '4))
                   (_inline45304_ _e4527245301_))
              (_K4526845285_ _inline45304_ _dispatch45299_ _arity45294_))
            (_E4526745278_)))))
  (bind-method! gxc#!lambda::t 'optimize-call gxc#!lambda::optimize-call '#f)
  (define gxc#!case-lambda::optimize-call
    (lambda (_self45101_ _stx45102_ _args45103_)
      (let* ((_self4510445111_ _self45101_)
             (_E4510645115_
              (lambda () (error '"No clause matching" _self4510445111_)))
             (_K4510745129_
              (lambda (_clauses45118_)
                (let ((_$e45124_
                       (find (lambda (_g4511945121_)
                               (gxc#!lambda-arity-match?
                                _g4511945121_
                                _args45103_))
                             _clauses45118_)))
                  (if _$e45124_
                      ((lambda (_clause45127_)
                         (call-method
                          _clause45127_
                          'optimize-call
                          _stx45102_
                          _args45103_))
                       _$e45124_)
                      (gxc#raise-compile-error
                       '"Illegal case-lambda application; arity mismatch"
                       _stx45102_
                       (map gxc#!lambda-arity _clauses45118_)))))))
        (if (##structure-instance-of? _self4510445111_ 'gxc#!case-lambda::t)
            (let* ((_e4510845132_ (##vector-ref _self4510445111_ '1))
                   (_e4510945135_ (##vector-ref _self4510445111_ '2))
                   (_clauses45138_ _e4510945135_))
              (_K4510745129_ _clauses45138_))
            (_E4510645115_)))))
  (bind-method!
   gxc#!case-lambda::t
   'optimize-call
   gxc#!case-lambda::optimize-call
   '#f)
  (define gxc#!lambda-arity-match?
    (lambda (_self44915_ _args44916_)
      (let* ((_self4491744924_ _self44915_)
             (_E4491944928_
              (lambda () (error '"No clause matching" _self4491744924_)))
             (_K4492044968_
              (lambda (_arity44931_)
                (let* ((_arity4493244941_ _arity44931_)
                       (_E4493544945_
                        (lambda ()
                          (error '"No clause matching" _arity4493244941_))))
                  (let ((_K4493944965_
                         (lambda () (fx= (length _args44916_) _arity44931_)))
                        (_K4493644951_
                         (lambda (_arity44949_)
                           (fx>= (length _args44916_) _arity44949_))))
                    (let ((_try-match4493444961_
                           (lambda ()
                             (if (##pair? _arity4493244941_)
                                 (let ((_tl4493844956_
                                        (##cdr _arity4493244941_))
                                       (_hd4493744954_
                                        (##car _arity4493244941_)))
                                   (if (##null? _tl4493844956_)
                                       (let ((_arity44959_ _hd4493744954_))
                                         (_K4493644951_ _arity44959_))
                                       (_E4493544945_)))
                                 (_E4493544945_)))))
                      (if (fixnum? _arity4493244941_)
                          (_K4493944965_)
                          (_try-match4493444961_))))))))
        (if (##structure-instance-of? _self4491744924_ 'gxc#!lambda::t)
            (let* ((_e4492144971_ (##vector-ref _self4491744924_ '1))
                   (_e4492244974_ (##vector-ref _self4491744924_ '2))
                   (_arity44977_ _e4492244974_))
              (_K4492044968_ _arity44977_))
            (_E4491944928_)))))
  (define gxc#!kw-lambda::optimize-call
    (lambda (_self44800_ _stx44801_ _args44802_)
      (let* ((_self4480344811_ _self44800_)
             (_E4480544815_
              (lambda () (error '"No clause matching" _self4480344811_)))
             (_K4480644899_
              (lambda (_dispatch44818_ _table44819_)
                (let* ((_g4482044829_
                        (gxc#optimizer-lookup-type _dispatch44818_))
                       (_else4482244837_
                        (lambda ()
                          (begin
                            (gxc#verbose
                             '"unknown keyword dispatch lambda "
                             _dispatch44818_)
                            (gxc#xform-call% _stx44801_))))
                       (_K4482444883_
                        (lambda (_main44840_ _keys44841_)
                          (let ((_g46783_
                                 (gxc#!kw-lambda-split-args
                                  _stx44801_
                                  _args44802_)))
                            (begin
                              (let ((_g46784_
                                     (if (##values? _g46783_)
                                         (##vector-length _g46783_)
                                         1)))
                                (if (not (##fx= _g46784_ 2))
                                    (error "Context expects 2 values"
                                           _g46784_)))
                              (let ((_pargs44843_ (##vector-ref _g46783_ 0))
                                    (_kwargs44844_ (##vector-ref _g46783_ 1)))
                                (begin
                                  (gxc#verbose
                                   '"dispatch kw-lambda => "
                                   _main44840_)
                                  (if _table44819_
                                      (let ((_xargs44851_
                                             (map (lambda (_key44846_)
                                                    (let ((_$e44848_
                                                           (assgetq _key44846_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _kwargs44844_)))
              (if _$e44848_ (values _$e44848_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _keys44841_)))
                                        (begin
                                          (for-each
                                           (lambda (_kw44853_)
                                             (if (memq (car _kw44853_)
                                                       _keys44841_)
                                                 '#!void
                                                 (gxc#raise-compile-error
                                                  '"Illegal keyword lambda application; unexpected keyword"
                                                  _stx44801_
                                                  _keys44841_
                                                  _kw44853_)))
                                           _kwargs44844_)
                                          (gxc#compile-e
                                           (gxc#xform-wrap-source
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons _main44840_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote (cons '#f '()))
                      (foldr1 cons _pargs44843_ _xargs44851_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _stx44801_))))
                                      (let* ((_kwt44855_
                                              (make-symbol (gensym '__kwt)))
                                             (_kwvars44858_
                                              (map (lambda (_g46785_)
                                                     (make-symbol
                                                      (gensym '__kw)))
                                                   _kwargs44844_))
                                             (_kwbind44863_
                                              (map (lambda (_kw44860_
                                                            _kwvar44861_)
                                                     (cons (cons _kwvar44861_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   (cons (cdr _kw44860_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs44844_
                                                   _kwvars44858_))
                                             (_kwset44868_
                                              (map (lambda (_kw44865_
                                                            _kwvar44866_)
                                                     (cons '%#call
                                                           (cons '(%#ref hash-put!)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons _kwt44855_ '()))
                               (cons (cons '%#quote (cons (car _kw44865_) '()))
                                     (cons (cons '%#ref
                                                 (cons _kwvar44866_ '()))
                                           '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs44844_
                                                   _kwvars44858_))
                                             (_xkwargs44873_
                                              (map (lambda (_kw44870_
                                                            _kwvar44871_)
                                                     (cons (car _kw44870_)
                                                           (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _kwvar44871_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs44844_
                                                   _kwvars44858_))
                                             (_xargs44880_
                                              (map (lambda (_key44875_)
                                                     (let ((_$e44877_
                                                            (assgetq _key44875_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _xkwargs44873_)))
               (if _$e44877_ (values _$e44877_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _keys44841_)))
                                        (gxc#compile-e
                                         (gxc#xform-wrap-source
                                          (cons '%#let-values
                                                (cons _kwbind44863_
                                                      (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (cons (cons _kwt44855_ '())
                                            (cons (gxc#xform-wrap-source
                                                   (cons '%#call
                                                         (cons '(%#ref make-hash-table-eq)
                                                               (cons '(%#quote size:)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons '%#quote
                                         (cons (length _kwargs44844_) '()))
                                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx44801_)
                                                  '()))
                                      '())
                                (cons (cons '%#begin
                                            (foldr1 cons
                                                    (cons (gxc#xform-wrap-source
                                                           (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons _main44840_ '()))
                               (cons (cons '%#ref (cons _kwt44855_ '()))
                                     (foldr1 cons _pargs44843_ _xargs44880_))))
                   _stx44801_)
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _kwset44868_))
                                      '())))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _stx44801_)))))))))))
                  (if (##structure-instance-of?
                       _g4482044829_
                       'gxc#!kw-lambda-primary::t)
                      (let* ((_e4482544886_ (##vector-ref _g4482044829_ '1))
                             (_e4482644889_ (##vector-ref _g4482044829_ '2))
                             (_keys44892_ _e4482644889_)
                             (_e4482744894_ (##vector-ref _g4482044829_ '3))
                             (_main44897_ _e4482744894_))
                        (_K4482444883_ _main44897_ _keys44892_))
                      (_else4482244837_))))))
        (if (##structure-instance-of? _self4480344811_ 'gxc#!kw-lambda::t)
            (let* ((_e4480744902_ (##vector-ref _self4480344811_ '1))
                   (_e4480844905_ (##vector-ref _self4480344811_ '2))
                   (_table44908_ _e4480844905_)
                   (_e4480944910_ (##vector-ref _self4480344811_ '3))
                   (_dispatch44913_ _e4480944910_))
              (_K4480644899_ _dispatch44913_ _table44908_))
            (_E4480544815_)))))
  (bind-method!
   gxc#!kw-lambda::t
   'optimize-call
   gxc#!kw-lambda::optimize-call
   '#f)
  (define gxc#!kw-lambda-split-args
    (lambda (_stx44413_ _args44414_)
      (let _lp44416_ ((_rest44418_ _args44414_)
                      (_pargs44419_ '())
                      (_kwargs44420_ '()))
        (let* ((___stx4666646667_ _rest44418_)
               (_g4442644478_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx4666646667_))))
          (let ((___kont4666846669_
                 (lambda (_L44657_ _L44658_)
                   (_lp44416_
                    _L44657_
                    (cons _L44658_ _pargs44419_)
                    _kwargs44420_)))
                (___kont4667046671_
                 (lambda (_L44603_)
                   (values (foldl1 cons _L44603_ _pargs44419_)
                           (reverse _kwargs44420_))))
                (___kont4667246673_
                 (lambda (_L44550_ _L44551_ _L44552_)
                   (let ((_kw44569_ (gx#stx-e _L44552_)))
                     (if (assq _kw44569_ _kwargs44420_)
                         (gxc#raise-compile-error
                          '"Illegal keyword lambda application; duplicate keyword"
                          _stx44413_
                          _kw44569_)
                         (_lp44416_
                          _L44550_
                          _pargs44419_
                          (cons (cons _kw44569_ _L44551_) _kwargs44420_))))))
                (___kont4667446675_
                 (lambda (_L44498_ _L44499_)
                   (_lp44416_
                    _L44498_
                    (cons _L44499_ _pargs44419_)
                    _kwargs44420_)))
                (___kont4667646677_
                 (lambda ()
                   (values (reverse _pargs44419_) (reverse _kwargs44420_)))))
            (let* ((_g4442544485_
                    (lambda ()
                      (if (gx#stx-null? ___stx4666646667_)
                          (___kont4667646677_)
                          (_g4442644478_))))
                   (___match4677346774_
                    (lambda (_e4445744518_
                             _hd4445844521_
                             _tl4445944523_
                             _e4446044526_
                             _hd4446144529_
                             _tl4446244531_
                             _e4446344534_
                             _hd4446444537_
                             _tl4446544539_
                             _e4446644542_
                             _hd4446744545_
                             _tl4446844547_)
                      (let ((_L44550_ _tl4446844547_)
                            (_L44551_ _hd4446744545_)
                            (_L44552_ _hd4446444537_))
                        (if (gx#stx-keyword? _L44552_)
                            (___kont4667246673_ _L44550_ _L44551_ _L44552_)
                            (___kont4667446675_
                             _tl4445944523_
                             _hd4445844521_))))))
              (if (gx#stx-pair? ___stx4666646667_)
                  (let ((_e4443044622_ (gx#stx-e ___stx4666646667_)))
                    (let ((_tl4443244627_ (##cdr _e4443044622_))
                          (_hd4443144625_ (##car _e4443044622_)))
                      (if (gx#stx-pair? _hd4443144625_)
                          (let ((_e4443344630_ (gx#stx-e _hd4443144625_)))
                            (let ((_tl4443544635_ (##cdr _e4443344630_))
                                  (_hd4443444633_ (##car _e4443344630_)))
                              (if (gx#identifier? _hd4443444633_)
                                  (if (gx#stx-eq? '%#quote _hd4443444633_)
                                      (if (gx#stx-pair? _tl4443544635_)
                                          (let ((_e4443644638_
                                                 (gx#stx-e _tl4443544635_)))
                                            (let ((_tl4443844643_
                                                   (##cdr _e4443644638_))
                                                  (_hd4443744641_
                                                   (##car _e4443644638_)))
                                              (if (gx#stx-datum?
                                                   _hd4443744641_)
                                                  (let ((_e4443944646_
                                                         (gx#stx-e
                                                          _hd4443744641_)))
                                                    (if (equal? _e4443944646_
                                                                '#!key)
                                                        (if (gx#stx-null?
                                                             _tl4443844643_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl4443244627_)
                        (let ((_e4444044649_ (gx#stx-e _tl4443244627_)))
                          (let ((_tl4444244654_ (##cdr _e4444044649_))
                                (_hd4444144652_ (##car _e4444044649_)))
                            (___kont4666846669_
                             _tl4444244654_
                             _hd4444144652_)))
                        (___kont4667446675_ _tl4443244627_ _hd4443144625_))
                    (___kont4667446675_ _tl4443244627_ _hd4443144625_))
                (if (equal? _e4443944646_ '#!rest)
                    (if (gx#stx-null? _tl4443844643_)
                        (___kont4667046671_ _tl4443244627_)
                        (___kont4667446675_ _tl4443244627_ _hd4443144625_))
                    (if (gx#stx-null? _tl4443844643_)
                        (if (gx#stx-pair? _tl4443244627_)
                            (let ((_e4446644542_ (gx#stx-e _tl4443244627_)))
                              (let ((_tl4446844547_ (##cdr _e4446644542_))
                                    (_hd4446744545_ (##car _e4446644542_)))
                                (___match4677346774_
                                 _e4443044622_
                                 _hd4443144625_
                                 _tl4443244627_
                                 _e4443344630_
                                 _hd4443444633_
                                 _tl4443544635_
                                 _e4443644638_
                                 _hd4443744641_
                                 _tl4443844643_
                                 _e4446644542_
                                 _hd4446744545_
                                 _tl4446844547_)))
                            (___kont4667446675_ _tl4443244627_ _hd4443144625_))
                        (___kont4667446675_ _tl4443244627_ _hd4443144625_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _tl4443844643_)
                                                      (if (gx#stx-pair?
                                                           _tl4443244627_)
                                                          (let ((_e4446644542_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl4443244627_)))
                    (let ((_tl4446844547_ (##cdr _e4446644542_))
                          (_hd4446744545_ (##car _e4446644542_)))
                      (___match4677346774_
                       _e4443044622_
                       _hd4443144625_
                       _tl4443244627_
                       _e4443344630_
                       _hd4443444633_
                       _tl4443544635_
                       _e4443644638_
                       _hd4443744641_
                       _tl4443844643_
                       _e4446644542_
                       _hd4446744545_
                       _tl4446844547_)))
                  (___kont4667446675_ _tl4443244627_ _hd4443144625_))
              (___kont4667446675_ _tl4443244627_ _hd4443144625_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (___kont4667446675_
                                           _tl4443244627_
                                           _hd4443144625_))
                                      (___kont4667446675_
                                       _tl4443244627_
                                       _hd4443144625_))
                                  (___kont4667446675_
                                   _tl4443244627_
                                   _hd4443144625_))))
                          (___kont4667446675_ _tl4443244627_ _hd4443144625_))))
                  (_g4442544485_))))))))
  (define gxc#!kw-lambda-primary::optimize-call
    (lambda (_self44409_ _stx44410_ _args44411_) (gxc#xform-call% _stx44410_)))
  (bind-method!
   gxc#!kw-lambda-primary::t
   'optimize-call
   gxc#!kw-lambda-primary::optimize-call
   '#f))
