(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#&optimize-call
    (##make-promise
     (lambda ()
       (let ((_tbl46500_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl46500_ (force gxc#&basic-xform))
           (table-set! _tbl46500_ '%#call gxc#optimize-call%)
           _tbl46500_)))))
  (define gxc#apply-optimize-call
    (lambda (_stx46493_ . _args46495_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx46493_ _args46495_))
       gxc#current-compile-methods
       (force gxc#&optimize-call))))
  (define gxc#optimize-call%
    (lambda (_stx46399_)
      (let* ((___stx4650346504_ _stx46399_)
             (_g4640246422_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4650346504_))))
        (let ((___kont4650546506_
               (lambda (_L46466_ _L46467_)
                 (let* ((_rator-id46485_ (gxc#identifier-symbol _L46467_))
                        (_rator-type46487_
                         (gxc#optimizer-resolve-type _rator-id46485_)))
                   (if (##structure-instance-of?
                        _rator-type46487_
                        'gxc#!procedure::t)
                       (begin
                         (gxc#verbose
                          '"optimize-call "
                          _rator-id46485_
                          '" => "
                          _rator-type46487_
                          '" "
                          (##structure-ref
                           _rator-type46487_
                           '1
                           gxc#!type::t
                           '#f))
                         (call-method
                          _rator-type46487_
                          'optimize-call
                          _stx46399_
                          _L46466_))
                       (if (not _rator-type46487_)
                           (gxc#xform-call% _stx46399_)
                           (gxc#raise-compile-error
                            '"Illegal application; not a procedure"
                            _stx46399_
                            _rator-type46487_))))))
              (___kont4650746508_ (lambda () (gxc#xform-call% _stx46399_))))
          (if (gx#stx-pair? ___stx4650346504_)
              (let ((_e4640646434_ (gx#stx-e ___stx4650346504_)))
                (let ((_tl4640846439_ (##cdr _e4640646434_))
                      (_hd4640746437_ (##car _e4640646434_)))
                  (if (gx#stx-pair? _tl4640846439_)
                      (let ((_e4640946442_ (gx#stx-e _tl4640846439_)))
                        (let ((_tl4641146447_ (##cdr _e4640946442_))
                              (_hd4641046445_ (##car _e4640946442_)))
                          (if (gx#stx-pair? _hd4641046445_)
                              (let ((_e4641246450_ (gx#stx-e _hd4641046445_)))
                                (let ((_tl4641446455_ (##cdr _e4641246450_))
                                      (_hd4641346453_ (##car _e4641246450_)))
                                  (if (gx#identifier? _hd4641346453_)
                                      (if (gx#stx-eq? '%#ref _hd4641346453_)
                                          (if (gx#stx-pair? _tl4641446455_)
                                              (let ((_e4641546458_
                                                     (gx#stx-e
                                                      _tl4641446455_)))
                                                (let ((_tl4641746463_
                                                       (##cdr _e4641546458_))
                                                      (_hd4641646461_
                                                       (##car _e4641546458_)))
                                                  (if (gx#stx-null?
                                                       _tl4641746463_)
                                                      (___kont4650546506_
                                                       _tl4641146447_
                                                       _hd4641646461_)
                                                      (___kont4650746508_))))
                                              (___kont4650746508_))
                                          (___kont4650746508_))
                                      (___kont4650746508_))))
                              (___kont4650746508_))))
                      (___kont4650746508_))))
              (___kont4650746508_))))))
  (define gxc#!struct-pred::optimize-call
    (lambda (_self46253_ _stx46254_ _args46255_)
      (let* ((_self4625646262_ _self46253_)
             (_E4625846266_
              (lambda () (error '"No clause matching" _self4625646262_)))
             (_K4625946391_
              (lambda (_struct-t46269_)
                (let* ((_struct-type46271_
                        (gxc#optimizer-resolve-type _struct-t46269_))
                       (_struct-type4627246286_ _struct-type46271_)
                       (_else4627546294_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx46254_
                           _struct-t46269_
                           _struct-type46271_))))
                  (let ((_K4627846366_
                         (lambda (_plist46305_ _struct-type-id46306_)
                           (let* ((___stx4654146542_ _args46255_)
                                  (_g4630946319_
                                   (lambda ()
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      ___stx4654146542_))))
                             (let ((___kont4654346544_
                                    (lambda (_L46339_)
                                      (let ((_expr46360_
                                             (gxc#compile-e _L46339_))
                                            (_op46361_
                                             (if (if _plist46305_
                                                     (assgetq 'final:
                                                              _plist46305_)
                                                     '#f)
                                                 '%#struct-direct-instance?
                                                 '%#struct-instance?)))
                                        (gxc#xform-wrap-source
                                         (cons _op46361_
                                               (cons (cons '%#quote
                                                           (cons _struct-type-id46306_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _expr46360_ '())))
                                         _stx46254_))))
                                   (___kont4654546546_
                                    (lambda ()
                                      (gxc#raise-compile-error
                                       '"Illegal struct predicate application"
                                       _stx46254_))))
                               (if (gx#stx-pair? ___stx4654146542_)
                                   (let ((_e4631246331_
                                          (gx#stx-e ___stx4654146542_)))
                                     (let ((_tl4631446336_
                                            (##cdr _e4631246331_))
                                           (_hd4631346334_
                                            (##car _e4631246331_)))
                                       (if (gx#stx-null? _tl4631446336_)
                                           (___kont4654346544_ _hd4631346334_)
                                           (___kont4654546546_))))
                                   (___kont4654546546_))))))
                        (_K4627746299_
                         (lambda () (gxc#xform-call% _stx46254_))))
                    (let ((_try-match4627446302_
                           (lambda ()
                             (if (##eq? _struct-type4627246286_ '#f)
                                 (_K4627746299_)
                                 (_else4627546294_)))))
                      (if (##structure-instance-of?
                           _struct-type4627246286_
                           'gxc#!struct-type::t)
                          (let* ((_e4627946369_
                                  (##vector-ref _struct-type4627246286_ '1))
                                 (_e4628046374_
                                  (##vector-ref _struct-type4627246286_ '2))
                                 (_e4628146377_
                                  (##vector-ref _struct-type4627246286_ '3))
                                 (_e4628246380_
                                  (##vector-ref _struct-type4627246286_ '4))
                                 (_e4628346383_
                                  (##vector-ref _struct-type4627246286_ '5))
                                 (_e4628446386_
                                  (##vector-ref _struct-type4627246286_ '6)))
                            (let ((_struct-type-id46372_ _e4627946369_)
                                  (_plist46389_ _e4628446386_))
                              (_K4627846366_
                               _plist46389_
                               _struct-type-id46372_)))
                          (_try-match4627446302_))))))))
        (if (##structure-instance-of? _self4625646262_ 'gxc#!struct-pred::t)
            (let* ((_e4626046394_ (##vector-ref _self4625646262_ '1))
                   (_struct-t46397_ _e4626046394_))
              (_K4625946391_ _struct-t46397_))
            (_E4625846266_)))))
  (bind-method!
   gxc#!struct-pred::t
   'optimize-call
   gxc#!struct-pred::optimize-call
   '#f)
  (define gxc#!struct-cons::optimize-call
    (lambda (_self46027_ _stx46028_ _args46029_)
      (let* ((_self4603046036_ _self46027_)
             (_E4603246040_
              (lambda () (error '"No clause matching" _self4603046036_)))
             (_K4603346123_
              (lambda (_struct-t46043_)
                (let* ((_struct-type46045_
                        (gxc#optimizer-resolve-type _struct-t46043_))
                       (_struct-type4604646059_ _struct-type46045_)
                       (_else4604946067_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct constructor application; not a struct type"
                           _stx46028_
                           _struct-t46043_
                           _struct-type46045_))))
                  (let ((_K4605246097_
                         (lambda (_ctor46078_
                                  _xfields46079_
                                  _fields46080_
                                  _type-id46081_)
                           (let* ((_args46083_ (map gxc#compile-e _args46029_))
                                  (_$e46085_
                                   (if _ctor46078_
                                       (if _xfields46079_
                                           (gxc#!struct-type-lookup-method
                                            _struct-type46045_
                                            _ctor46078_)
                                           '#f)
                                       '#f)))
                             (if _$e46085_
                                 ((lambda (_kons46088_)
                                    (let ((_$obj46090_
                                           (make-symbol (gensym '__obj))))
                                      (gxc#xform-wrap-source
                                       (cons '%#let-values
                                             (cons (cons (cons (cons _$obj46090_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons (cons '%#call
                                   (cons (cons '%#ref (cons 'make-object '()))
                                         (cons (cons '%#ref
                                                     (cons _struct-t46043_
                                                           '()))
                                               (cons (cons '%#quote
                                                           (cons (fx+ _fields46080_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _xfields46079_)
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
                                     (cons (cons '%#ref (cons _kons46088_ '()))
                                           (cons (cons '%#ref
                                                       (cons _$obj46090_ '()))
                                                 _args46083_)))
                               _stx46028_))
                             (cons (cons '%#ref (cons _$obj46090_ '())) '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _stx46028_)))
                                  _$e46085_)
                                 (if (let ((_$e46092_ _ctor46078_))
                                       (if _$e46092_
                                           _$e46092_
                                           (not _xfields46079_)))
                                     (gxc#xform-wrap-source
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons 'make-struct-instance
                                                              '()))
                                                  (cons (cons '%#ref
                                                              (cons _struct-t46043_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _args46083_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _stx46028_)
                                     (let ((_arity46095_
                                            (fx+ _fields46080_
                                                 _xfields46079_)))
                                       (if (fx= _arity46095_
                                                (length _args46083_))
                                           (gxc#xform-wrap-source
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#ref (cons _struct-t46043_ '())) _args46083_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _stx46028_)
                                           (gxc#raise-compile-error
                                            '"Illegal struct constructor application; arity mismatch"
                                            _stx46028_
                                            _struct-t46043_
                                            _arity46095_))))))))
                        (_K4605146072_
                         (lambda ()
                           (begin
                             (gxc#verbose
                              '"cannot inline struct constructor; unknown struct type "
                              _struct-t46043_)
                             (gxc#xform-call% _stx46028_)))))
                    (let ((_try-match4604846075_
                           (lambda ()
                             (if (##eq? _struct-type4604646059_ '#f)
                                 (_K4605146072_)
                                 (_else4604946067_)))))
                      (if (##structure-instance-of?
                           _struct-type4604646059_
                           'gxc#!struct-type::t)
                          (let* ((_e4605346100_
                                  (##vector-ref _struct-type4604646059_ '1))
                                 (_e4605446105_
                                  (##vector-ref _struct-type4604646059_ '2))
                                 (_e4605546108_
                                  (##vector-ref _struct-type4604646059_ '3))
                                 (_e4605646113_
                                  (##vector-ref _struct-type4604646059_ '4))
                                 (_e4605746118_
                                  (##vector-ref _struct-type4604646059_ '5)))
                            (let ((_type-id46103_ _e4605346100_)
                                  (_fields46111_ _e4605546108_)
                                  (_xfields46116_ _e4605646113_)
                                  (_ctor46121_ _e4605746118_))
                              (_K4605246097_
                               _ctor46121_
                               _xfields46116_
                               _fields46111_
                               _type-id46103_)))
                          (_try-match4604846075_))))))))
        (if (##structure-instance-of? _self4603046036_ 'gxc#!struct-cons::t)
            (let* ((_e4603446126_ (##vector-ref _self4603046036_ '1))
                   (_struct-t46129_ _e4603446126_))
              (_K4603346123_ _struct-t46129_))
            (_E4603246040_)))))
  (bind-method!
   gxc#!struct-cons::t
   'optimize-call
   gxc#!struct-cons::optimize-call
   '#f)
  (define gxc#!struct-getf::optimize-call
    (lambda (_self45738_ _stx45739_ _args45740_)
      (let* ((_self4574145749_ _self45738_)
             (_E4574345753_
              (lambda () (error '"No clause matching" _self4574145749_)))
             (_K4574445887_
              (lambda (_unchecked?45756_ _off45757_ _struct-t45758_)
                (let* ((_struct-type45760_
                        (gxc#optimizer-resolve-type _struct-t45758_))
                       (_struct-type4576145775_ _struct-type45760_)
                       (_else4576445783_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx45739_
                           _struct-t45758_
                           _struct-type45760_))))
                  (let ((_K4576745858_
                         (lambda (_plist45794_
                                  _xfields45795_
                                  _fields45796_
                                  _struct-type-id45797_)
                           (if _xfields45795_
                               (let* ((___stx4658946590_ _args45740_)
                                      (_g4580045810_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx4658946590_))))
                                 (let ((___kont4659146592_
                                        (lambda (_L45830_)
                                          (let ((_expr45851_
                                                 (gxc#compile-e _L45830_))
                                                (_off45852_
                                                 (fx+ _off45757_
                                                      _xfields45795_
                                                      '1))
                                                (_op45853_
                                                 (if _unchecked?45756_
                                                     '%#struct-unchecked-ref
                                                     (if (if _plist45794_
                                                             (assgetq 'final:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _plist45794_)
                     '#f)
                 '%#struct-direct-ref
                 '%#struct-ref))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (gxc#xform-wrap-source
                                             (cons _op45853_
                                                   (cons (cons '%#ref
                                                               (cons _struct-t45758_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons '%#quote (cons _off45852_ '()))
                       (cons _expr45851_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _stx45739_))))
                                       (___kont4659346594_
                                        (lambda ()
                                          (gxc#raise-compile-error
                                           '"Illegal struct accessor application"
                                           _stx45739_))))
                                   (if (gx#stx-pair? ___stx4658946590_)
                                       (let ((_e4580345822_
                                              (gx#stx-e ___stx4658946590_)))
                                         (let ((_tl4580545827_
                                                (##cdr _e4580345822_))
                                               (_hd4580445825_
                                                (##car _e4580345822_)))
                                           (if (gx#stx-null? _tl4580545827_)
                                               (___kont4659146592_
                                                _hd4580445825_)
                                               (___kont4659346594_))))
                                       (___kont4659346594_))))
                               (begin
                                 (gxc#verbose
                                  '"struct-getf: incomplete struct "
                                  _struct-type-id45797_)
                                 (gxc#xform-call% _stx45739_)))))
                        (_K4576645788_
                         (lambda () (gxc#xform-call% _stx45739_))))
                    (let ((_try-match4576345791_
                           (lambda ()
                             (if (##eq? _struct-type4576145775_ '#f)
                                 (_K4576645788_)
                                 (_else4576445783_)))))
                      (if (##structure-instance-of?
                           _struct-type4576145775_
                           'gxc#!struct-type::t)
                          (let* ((_e4576845861_
                                  (##vector-ref _struct-type4576145775_ '1))
                                 (_e4576945866_
                                  (##vector-ref _struct-type4576145775_ '2))
                                 (_e4577045869_
                                  (##vector-ref _struct-type4576145775_ '3))
                                 (_e4577145874_
                                  (##vector-ref _struct-type4576145775_ '4))
                                 (_e4577245879_
                                  (##vector-ref _struct-type4576145775_ '5))
                                 (_e4577345882_
                                  (##vector-ref _struct-type4576145775_ '6)))
                            (let ((_struct-type-id45864_ _e4576845861_)
                                  (_fields45872_ _e4577045869_)
                                  (_xfields45877_ _e4577145874_)
                                  (_plist45885_ _e4577345882_))
                              (_K4576745858_
                               _plist45885_
                               _xfields45877_
                               _fields45872_
                               _struct-type-id45864_)))
                          (_try-match4576345791_))))))))
        (if (##structure-instance-of? _self4574145749_ 'gxc#!struct-getf::t)
            (let* ((_e4574545890_ (##vector-ref _self4574145749_ '1))
                   (_struct-t45893_ _e4574545890_)
                   (_e4574645895_ (##vector-ref _self4574145749_ '2))
                   (_off45898_ _e4574645895_)
                   (_e4574745900_ (##vector-ref _self4574145749_ '3))
                   (_unchecked?45903_ _e4574745900_))
              (_K4574445887_ _unchecked?45903_ _off45898_ _struct-t45893_))
            (_E4574345753_)))))
  (bind-method!
   gxc#!struct-getf::t
   'optimize-call
   gxc#!struct-getf::optimize-call
   '#f)
  (define gxc#!struct-setf::optimize-call
    (lambda (_self45432_ _stx45433_ _args45434_)
      (let* ((_self4543545443_ _self45432_)
             (_E4543745447_
              (lambda () (error '"No clause matching" _self4543545443_)))
             (_K4543845598_
              (lambda (_unchecked?45450_ _off45451_ _struct-t45452_)
                (let* ((_struct-type45454_
                        (gxc#optimizer-resolve-type _struct-t45452_))
                       (_struct-type4545545469_ _struct-type45454_)
                       (_else4545845477_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx45433_
                           _struct-t45452_
                           _struct-type45454_))))
                  (let ((_K4546145569_
                         (lambda (_plist45488_
                                  _xfields45489_
                                  _fields45490_
                                  _struct-type-id45491_)
                           (if _xfields45489_
                               (let* ((___stx4662246623_ _args45434_)
                                      (_g4549445508_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx4662246623_))))
                                 (let ((___kont4662446625_
                                        (lambda (_L45536_ _L45537_)
                                          (let ((_expr45561_
                                                 (gxc#compile-e _L45537_))
                                                (_val45562_
                                                 (gxc#compile-e _L45536_))
                                                (_off45563_
                                                 (fx+ _off45451_
                                                      _xfields45489_
                                                      '1))
                                                (_op45564_
                                                 (if _unchecked?45450_
                                                     '%#struct-unchecked-set!
                                                     (if (if _plist45488_
                                                             (assgetq 'final:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _plist45488_)
                     '#f)
                 '%#struct-direct-set!
                 '%#struct-set!))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (gxc#xform-wrap-source
                                             (cons _op45564_
                                                   (cons (cons '%#ref
                                                               (cons _struct-t45452_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons '%#quote (cons _off45563_ '()))
                       (cons _expr45561_ (cons _val45562_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _stx45433_))))
                                       (___kont4662646627_
                                        (lambda ()
                                          (gxc#raise-compile-error
                                           '"Illegal struct mutator application"
                                           _stx45433_))))
                                   (if (gx#stx-pair? ___stx4662246623_)
                                       (let ((_e4549845520_
                                              (gx#stx-e ___stx4662246623_)))
                                         (let ((_tl4550045525_
                                                (##cdr _e4549845520_))
                                               (_hd4549945523_
                                                (##car _e4549845520_)))
                                           (if (gx#stx-pair? _tl4550045525_)
                                               (let ((_e4550145528_
                                                      (gx#stx-e
                                                       _tl4550045525_)))
                                                 (let ((_tl4550345533_
                                                        (##cdr _e4550145528_))
                                                       (_hd4550245531_
                                                        (##car _e4550145528_)))
                                                   (if (gx#stx-null?
                                                        _tl4550345533_)
                                                       (___kont4662446625_
                                                        _hd4550245531_
                                                        _hd4549945523_)
                                                       (___kont4662646627_))))
                                               (___kont4662646627_))))
                                       (___kont4662646627_))))
                               (begin
                                 (gxc#verbose
                                  '"struct-setf: incomplete struct "
                                  _struct-type-id45491_)
                                 (gxc#xform-call% _stx45433_)))))
                        (_K4546045482_
                         (lambda () (gxc#xform-call% _stx45433_))))
                    (let ((_try-match4545745485_
                           (lambda ()
                             (if (##eq? _struct-type4545545469_ '#f)
                                 (_K4546045482_)
                                 (_else4545845477_)))))
                      (if (##structure-instance-of?
                           _struct-type4545545469_
                           'gxc#!struct-type::t)
                          (let* ((_e4546245572_
                                  (##vector-ref _struct-type4545545469_ '1))
                                 (_e4546345577_
                                  (##vector-ref _struct-type4545545469_ '2))
                                 (_e4546445580_
                                  (##vector-ref _struct-type4545545469_ '3))
                                 (_e4546545585_
                                  (##vector-ref _struct-type4545545469_ '4))
                                 (_e4546645590_
                                  (##vector-ref _struct-type4545545469_ '5))
                                 (_e4546745593_
                                  (##vector-ref _struct-type4545545469_ '6)))
                            (let ((_struct-type-id45575_ _e4546245572_)
                                  (_fields45583_ _e4546445580_)
                                  (_xfields45588_ _e4546545585_)
                                  (_plist45596_ _e4546745593_))
                              (_K4546145569_
                               _plist45596_
                               _xfields45588_
                               _fields45583_
                               _struct-type-id45575_)))
                          (_try-match4545745485_))))))))
        (if (##structure-instance-of? _self4543545443_ 'gxc#!struct-setf::t)
            (let* ((_e4543945601_ (##vector-ref _self4543545443_ '1))
                   (_struct-t45604_ _e4543945601_)
                   (_e4544045606_ (##vector-ref _self4543545443_ '2))
                   (_off45609_ _e4544045606_)
                   (_e4544145611_ (##vector-ref _self4543545443_ '3))
                   (_unchecked?45614_ _e4544145611_))
              (_K4543845598_ _unchecked?45614_ _off45609_ _struct-t45604_))
            (_E4543745447_)))))
  (bind-method!
   gxc#!struct-setf::t
   'optimize-call
   gxc#!struct-setf::optimize-call
   '#f)
  (define gxc#!lambda::optimize-call
    (lambda (_self45266_ _stx45267_ _args45268_)
      (let* ((_self4526945278_ _self45266_)
             (_E4527145282_
              (lambda () (error '"No clause matching" _self4526945278_)))
             (_K4527245289_
              (lambda (_inline45285_ _dispatch45286_ _arity45287_)
                (begin
                  (if (gxc#!lambda-arity-match? _self45266_ _args45268_)
                      '#!void
                      (gxc#raise-compile-error
                       '"Illegal lambda application; arity mismatch"
                       _stx45267_
                       _arity45287_))
                  (if _inline45285_
                      (begin
                        (gxc#verbose '"inline lambda")
                        (gxc#compile-e
                         (gxc#xform-wrap-source
                          (_inline45285_ _stx45267_)
                          _stx45267_)))
                      (if _dispatch45286_
                          (begin
                            (gxc#verbose
                             '"dispatch lambda => "
                             _dispatch45286_)
                            (gxc#compile-e
                             (gxc#xform-wrap-source
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons _dispatch45286_ '()))
                                          _args45268_))
                              _stx45267_)))
                          (gxc#xform-call% _stx45267_)))))))
        (if (##structure-instance-of? _self4526945278_ 'gxc#!lambda::t)
            (let* ((_e4527345292_ (##vector-ref _self4526945278_ '1))
                   (_e4527445295_ (##vector-ref _self4526945278_ '2))
                   (_arity45298_ _e4527445295_)
                   (_e4527545300_ (##vector-ref _self4526945278_ '3))
                   (_dispatch45303_ _e4527545300_)
                   (_e4527645305_ (##vector-ref _self4526945278_ '4))
                   (_inline45308_ _e4527645305_))
              (_K4527245289_ _inline45308_ _dispatch45303_ _arity45298_))
            (_E4527145282_)))))
  (bind-method! gxc#!lambda::t 'optimize-call gxc#!lambda::optimize-call '#f)
  (define gxc#!case-lambda::optimize-call
    (lambda (_self45105_ _stx45106_ _args45107_)
      (let* ((_self4510845115_ _self45105_)
             (_E4511045119_
              (lambda () (error '"No clause matching" _self4510845115_)))
             (_K4511145133_
              (lambda (_clauses45122_)
                (let ((_$e45128_
                       (find (lambda (_g4512345125_)
                               (gxc#!lambda-arity-match?
                                _g4512345125_
                                _args45107_))
                             _clauses45122_)))
                  (if _$e45128_
                      ((lambda (_clause45131_)
                         (call-method
                          _clause45131_
                          'optimize-call
                          _stx45106_
                          _args45107_))
                       _$e45128_)
                      (gxc#raise-compile-error
                       '"Illegal case-lambda application; arity mismatch"
                       _stx45106_
                       (map gxc#!lambda-arity _clauses45122_)))))))
        (if (##structure-instance-of? _self4510845115_ 'gxc#!case-lambda::t)
            (let* ((_e4511245136_ (##vector-ref _self4510845115_ '1))
                   (_e4511345139_ (##vector-ref _self4510845115_ '2))
                   (_clauses45142_ _e4511345139_))
              (_K4511145133_ _clauses45142_))
            (_E4511045119_)))))
  (bind-method!
   gxc#!case-lambda::t
   'optimize-call
   gxc#!case-lambda::optimize-call
   '#f)
  (define gxc#!lambda-arity-match?
    (lambda (_self44919_ _args44920_)
      (let* ((_self4492144928_ _self44919_)
             (_E4492344932_
              (lambda () (error '"No clause matching" _self4492144928_)))
             (_K4492444972_
              (lambda (_arity44935_)
                (let* ((_arity4493644945_ _arity44935_)
                       (_E4493944949_
                        (lambda ()
                          (error '"No clause matching" _arity4493644945_))))
                  (let ((_K4494344969_
                         (lambda () (fx= (length _args44920_) _arity44935_)))
                        (_K4494044955_
                         (lambda (_arity44953_)
                           (fx>= (length _args44920_) _arity44953_))))
                    (let ((_try-match4493844965_
                           (lambda ()
                             (if (##pair? _arity4493644945_)
                                 (let ((_tl4494244960_
                                        (##cdr _arity4493644945_))
                                       (_hd4494144958_
                                        (##car _arity4493644945_)))
                                   (if (##null? _tl4494244960_)
                                       (let ((_arity44963_ _hd4494144958_))
                                         (_K4494044955_ _arity44963_))
                                       (_E4493944949_)))
                                 (_E4493944949_)))))
                      (if (fixnum? _arity4493644945_)
                          (_K4494344969_)
                          (_try-match4493844965_))))))))
        (if (##structure-instance-of? _self4492144928_ 'gxc#!lambda::t)
            (let* ((_e4492544975_ (##vector-ref _self4492144928_ '1))
                   (_e4492644978_ (##vector-ref _self4492144928_ '2))
                   (_arity44981_ _e4492644978_))
              (_K4492444972_ _arity44981_))
            (_E4492344932_)))))
  (define gxc#!kw-lambda::optimize-call
    (lambda (_self44804_ _stx44805_ _args44806_)
      (let* ((_self4480744815_ _self44804_)
             (_E4480944819_
              (lambda () (error '"No clause matching" _self4480744815_)))
             (_K4481044903_
              (lambda (_dispatch44822_ _table44823_)
                (let* ((_g4482444833_
                        (gxc#optimizer-lookup-type _dispatch44822_))
                       (_else4482644841_
                        (lambda ()
                          (begin
                            (gxc#verbose
                             '"unknown keyword dispatch lambda "
                             _dispatch44822_)
                            (gxc#xform-call% _stx44805_))))
                       (_K4482844887_
                        (lambda (_main44844_ _keys44845_)
                          (let ((_g46787_
                                 (gxc#!kw-lambda-split-args
                                  _stx44805_
                                  _args44806_)))
                            (begin
                              (let ((_g46788_
                                     (if (##values? _g46787_)
                                         (##vector-length _g46787_)
                                         1)))
                                (if (not (##fx= _g46788_ 2))
                                    (error "Context expects 2 values"
                                           _g46788_)))
                              (let ((_pargs44847_ (##vector-ref _g46787_ 0))
                                    (_kwargs44848_ (##vector-ref _g46787_ 1)))
                                (begin
                                  (gxc#verbose
                                   '"dispatch kw-lambda => "
                                   _main44844_)
                                  (if _table44823_
                                      (let ((_xargs44855_
                                             (map (lambda (_key44850_)
                                                    (let ((_$e44852_
                                                           (assgetq _key44850_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _kwargs44848_)))
              (if _$e44852_ (values _$e44852_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _keys44845_)))
                                        (begin
                                          (for-each
                                           (lambda (_kw44857_)
                                             (if (memq (car _kw44857_)
                                                       _keys44845_)
                                                 '#!void
                                                 (gxc#raise-compile-error
                                                  '"Illegal keyword lambda application; unexpected keyword"
                                                  _stx44805_
                                                  _keys44845_
                                                  _kw44857_)))
                                           _kwargs44848_)
                                          (gxc#compile-e
                                           (gxc#xform-wrap-source
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons _main44844_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote (cons '#f '()))
                      (foldr1 cons _pargs44847_ _xargs44855_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _stx44805_))))
                                      (let* ((_kwt44859_
                                              (make-symbol (gensym '__kwt)))
                                             (_kwvars44862_
                                              (map (lambda (_g46789_)
                                                     (make-symbol
                                                      (gensym '__kw)))
                                                   _kwargs44848_))
                                             (_kwbind44867_
                                              (map (lambda (_kw44864_
                                                            _kwvar44865_)
                                                     (cons (cons _kwvar44865_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   (cons (cdr _kw44864_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs44848_
                                                   _kwvars44862_))
                                             (_kwset44872_
                                              (map (lambda (_kw44869_
                                                            _kwvar44870_)
                                                     (cons '%#call
                                                           (cons '(%#ref hash-put!)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons _kwt44859_ '()))
                               (cons (cons '%#quote (cons (car _kw44869_) '()))
                                     (cons (cons '%#ref
                                                 (cons _kwvar44870_ '()))
                                           '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs44848_
                                                   _kwvars44862_))
                                             (_xkwargs44877_
                                              (map (lambda (_kw44874_
                                                            _kwvar44875_)
                                                     (cons (car _kw44874_)
                                                           (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _kwvar44875_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs44848_
                                                   _kwvars44862_))
                                             (_xargs44884_
                                              (map (lambda (_key44879_)
                                                     (let ((_$e44881_
                                                            (assgetq _key44879_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _xkwargs44877_)))
               (if _$e44881_ (values _$e44881_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _keys44845_)))
                                        (gxc#compile-e
                                         (gxc#xform-wrap-source
                                          (cons '%#let-values
                                                (cons _kwbind44867_
                                                      (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (cons (cons _kwt44859_ '())
                                            (cons (gxc#xform-wrap-source
                                                   (cons '%#call
                                                         (cons '(%#ref make-hash-table-eq)
                                                               (cons '(%#quote size:)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons '%#quote
                                         (cons (length _kwargs44848_) '()))
                                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx44805_)
                                                  '()))
                                      '())
                                (cons (cons '%#begin
                                            (foldr1 cons
                                                    (cons (gxc#xform-wrap-source
                                                           (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons _main44844_ '()))
                               (cons (cons '%#ref (cons _kwt44859_ '()))
                                     (foldr1 cons _pargs44847_ _xargs44884_))))
                   _stx44805_)
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _kwset44872_))
                                      '())))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _stx44805_)))))))))))
                  (if (##structure-instance-of?
                       _g4482444833_
                       'gxc#!kw-lambda-primary::t)
                      (let* ((_e4482944890_ (##vector-ref _g4482444833_ '1))
                             (_e4483044893_ (##vector-ref _g4482444833_ '2))
                             (_keys44896_ _e4483044893_)
                             (_e4483144898_ (##vector-ref _g4482444833_ '3))
                             (_main44901_ _e4483144898_))
                        (_K4482844887_ _main44901_ _keys44896_))
                      (_else4482644841_))))))
        (if (##structure-instance-of? _self4480744815_ 'gxc#!kw-lambda::t)
            (let* ((_e4481144906_ (##vector-ref _self4480744815_ '1))
                   (_e4481244909_ (##vector-ref _self4480744815_ '2))
                   (_table44912_ _e4481244909_)
                   (_e4481344914_ (##vector-ref _self4480744815_ '3))
                   (_dispatch44917_ _e4481344914_))
              (_K4481044903_ _dispatch44917_ _table44912_))
            (_E4480944819_)))))
  (bind-method!
   gxc#!kw-lambda::t
   'optimize-call
   gxc#!kw-lambda::optimize-call
   '#f)
  (define gxc#!kw-lambda-split-args
    (lambda (_stx44417_ _args44418_)
      (let _lp44420_ ((_rest44422_ _args44418_)
                      (_pargs44423_ '())
                      (_kwargs44424_ '()))
        (let* ((___stx4667046671_ _rest44422_)
               (_g4443044482_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx4667046671_))))
          (let ((___kont4667246673_
                 (lambda (_L44661_ _L44662_)
                   (_lp44420_
                    _L44661_
                    (cons _L44662_ _pargs44423_)
                    _kwargs44424_)))
                (___kont4667446675_
                 (lambda (_L44607_)
                   (values (foldl1 cons _L44607_ _pargs44423_)
                           (reverse _kwargs44424_))))
                (___kont4667646677_
                 (lambda (_L44554_ _L44555_ _L44556_)
                   (let ((_kw44573_ (gx#stx-e _L44556_)))
                     (if (assq _kw44573_ _kwargs44424_)
                         (gxc#raise-compile-error
                          '"Illegal keyword lambda application; duplicate keyword"
                          _stx44417_
                          _kw44573_)
                         (_lp44420_
                          _L44554_
                          _pargs44423_
                          (cons (cons _kw44573_ _L44555_) _kwargs44424_))))))
                (___kont4667846679_
                 (lambda (_L44502_ _L44503_)
                   (_lp44420_
                    _L44502_
                    (cons _L44503_ _pargs44423_)
                    _kwargs44424_)))
                (___kont4668046681_
                 (lambda ()
                   (values (reverse _pargs44423_) (reverse _kwargs44424_)))))
            (let* ((_g4442944489_
                    (lambda ()
                      (if (gx#stx-null? ___stx4667046671_)
                          (___kont4668046681_)
                          (_g4443044482_))))
                   (___match4677746778_
                    (lambda (_e4446144522_
                             _hd4446244525_
                             _tl4446344527_
                             _e4446444530_
                             _hd4446544533_
                             _tl4446644535_
                             _e4446744538_
                             _hd4446844541_
                             _tl4446944543_
                             _e4447044546_
                             _hd4447144549_
                             _tl4447244551_)
                      (let ((_L44554_ _tl4447244551_)
                            (_L44555_ _hd4447144549_)
                            (_L44556_ _hd4446844541_))
                        (if (gx#stx-keyword? _L44556_)
                            (___kont4667646677_ _L44554_ _L44555_ _L44556_)
                            (___kont4667846679_
                             _tl4446344527_
                             _hd4446244525_))))))
              (if (gx#stx-pair? ___stx4667046671_)
                  (let ((_e4443444626_ (gx#stx-e ___stx4667046671_)))
                    (let ((_tl4443644631_ (##cdr _e4443444626_))
                          (_hd4443544629_ (##car _e4443444626_)))
                      (if (gx#stx-pair? _hd4443544629_)
                          (let ((_e4443744634_ (gx#stx-e _hd4443544629_)))
                            (let ((_tl4443944639_ (##cdr _e4443744634_))
                                  (_hd4443844637_ (##car _e4443744634_)))
                              (if (gx#identifier? _hd4443844637_)
                                  (if (gx#stx-eq? '%#quote _hd4443844637_)
                                      (if (gx#stx-pair? _tl4443944639_)
                                          (let ((_e4444044642_
                                                 (gx#stx-e _tl4443944639_)))
                                            (let ((_tl4444244647_
                                                   (##cdr _e4444044642_))
                                                  (_hd4444144645_
                                                   (##car _e4444044642_)))
                                              (if (gx#stx-datum?
                                                   _hd4444144645_)
                                                  (let ((_e4444344650_
                                                         (gx#stx-e
                                                          _hd4444144645_)))
                                                    (if (equal? _e4444344650_
                                                                '#!key)
                                                        (if (gx#stx-null?
                                                             _tl4444244647_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl4443644631_)
                        (let ((_e4444444653_ (gx#stx-e _tl4443644631_)))
                          (let ((_tl4444644658_ (##cdr _e4444444653_))
                                (_hd4444544656_ (##car _e4444444653_)))
                            (___kont4667246673_
                             _tl4444644658_
                             _hd4444544656_)))
                        (___kont4667846679_ _tl4443644631_ _hd4443544629_))
                    (___kont4667846679_ _tl4443644631_ _hd4443544629_))
                (if (equal? _e4444344650_ '#!rest)
                    (if (gx#stx-null? _tl4444244647_)
                        (___kont4667446675_ _tl4443644631_)
                        (___kont4667846679_ _tl4443644631_ _hd4443544629_))
                    (if (gx#stx-null? _tl4444244647_)
                        (if (gx#stx-pair? _tl4443644631_)
                            (let ((_e4447044546_ (gx#stx-e _tl4443644631_)))
                              (let ((_tl4447244551_ (##cdr _e4447044546_))
                                    (_hd4447144549_ (##car _e4447044546_)))
                                (___match4677746778_
                                 _e4443444626_
                                 _hd4443544629_
                                 _tl4443644631_
                                 _e4443744634_
                                 _hd4443844637_
                                 _tl4443944639_
                                 _e4444044642_
                                 _hd4444144645_
                                 _tl4444244647_
                                 _e4447044546_
                                 _hd4447144549_
                                 _tl4447244551_)))
                            (___kont4667846679_ _tl4443644631_ _hd4443544629_))
                        (___kont4667846679_ _tl4443644631_ _hd4443544629_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _tl4444244647_)
                                                      (if (gx#stx-pair?
                                                           _tl4443644631_)
                                                          (let ((_e4447044546_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl4443644631_)))
                    (let ((_tl4447244551_ (##cdr _e4447044546_))
                          (_hd4447144549_ (##car _e4447044546_)))
                      (___match4677746778_
                       _e4443444626_
                       _hd4443544629_
                       _tl4443644631_
                       _e4443744634_
                       _hd4443844637_
                       _tl4443944639_
                       _e4444044642_
                       _hd4444144645_
                       _tl4444244647_
                       _e4447044546_
                       _hd4447144549_
                       _tl4447244551_)))
                  (___kont4667846679_ _tl4443644631_ _hd4443544629_))
              (___kont4667846679_ _tl4443644631_ _hd4443544629_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (___kont4667846679_
                                           _tl4443644631_
                                           _hd4443544629_))
                                      (___kont4667846679_
                                       _tl4443644631_
                                       _hd4443544629_))
                                  (___kont4667846679_
                                   _tl4443644631_
                                   _hd4443544629_))))
                          (___kont4667846679_ _tl4443644631_ _hd4443544629_))))
                  (_g4442944489_))))))))
  (define gxc#!kw-lambda-primary::optimize-call
    (lambda (_self44413_ _stx44414_ _args44415_) (gxc#xform-call% _stx44414_)))
  (bind-method!
   gxc#!kw-lambda-primary::t
   'optimize-call
   gxc#!kw-lambda-primary::optimize-call
   '#f))
