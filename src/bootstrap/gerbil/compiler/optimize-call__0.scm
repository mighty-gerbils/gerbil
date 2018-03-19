(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#&optimize-call
    (make-promise
     (lambda ()
       (let ((_tbl44922_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl44922_ (force gxc#&basic-xform))
           (table-set! _tbl44922_ '%#call gxc#optimize-call%)
           _tbl44922_)))))
  (define gxc#apply-optimize-call
    (lambda (_stx44915_ . _args44917_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx44915_ _args44917_))
       gxc#current-compile-methods
       (force gxc#&optimize-call))))
  (define gxc#optimize-call%
    (lambda (_stx44821_)
      (let* ((___stx4492544926_ _stx44821_)
             (_g4482444844_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4492544926_))))
        (let ((___kont4492744928_
               (lambda (_L44888_ _L44889_)
                 (let* ((_rator-id44907_ (gxc#identifier-symbol _L44889_))
                        (_rator-type44909_
                         (gxc#optimizer-resolve-type _rator-id44907_)))
                   (if (##structure-instance-of?
                        _rator-type44909_
                        'gxc#!procedure::t)
                       (begin
                         (gxc#verbose
                          '"optimize-call "
                          _rator-id44907_
                          '" => "
                          _rator-type44909_
                          '" "
                          (##structure-ref
                           _rator-type44909_
                           '1
                           gxc#!type::t
                           '#f))
                         (call-method
                          _rator-type44909_
                          'optimize-call
                          _stx44821_
                          _L44888_))
                       (if (not _rator-type44909_)
                           (gxc#xform-call% _stx44821_)
                           (gxc#raise-compile-error
                            '"Illegal application; not a procedure"
                            _stx44821_
                            _rator-type44909_))))))
              (___kont4492944930_ (lambda () (gxc#xform-call% _stx44821_))))
          (if (gx#stx-pair? ___stx4492544926_)
              (let ((_e4482844856_ (gx#stx-e ___stx4492544926_)))
                (let ((_tl4483044861_ (##cdr _e4482844856_))
                      (_hd4482944859_ (##car _e4482844856_)))
                  (if (gx#stx-pair? _tl4483044861_)
                      (let ((_e4483144864_ (gx#stx-e _tl4483044861_)))
                        (let ((_tl4483344869_ (##cdr _e4483144864_))
                              (_hd4483244867_ (##car _e4483144864_)))
                          (if (gx#stx-pair? _hd4483244867_)
                              (let ((_e4483444872_ (gx#stx-e _hd4483244867_)))
                                (let ((_tl4483644877_ (##cdr _e4483444872_))
                                      (_hd4483544875_ (##car _e4483444872_)))
                                  (if (gx#identifier? _hd4483544875_)
                                      (if (gx#stx-eq? '%#ref _hd4483544875_)
                                          (if (gx#stx-pair? _tl4483644877_)
                                              (let ((_e4483744880_
                                                     (gx#stx-e
                                                      _tl4483644877_)))
                                                (let ((_tl4483944885_
                                                       (##cdr _e4483744880_))
                                                      (_hd4483844883_
                                                       (##car _e4483744880_)))
                                                  (if (gx#stx-null?
                                                       _tl4483944885_)
                                                      (___kont4492744928_
                                                       _tl4483344869_
                                                       _hd4483844883_)
                                                      (___kont4492944930_))))
                                              (___kont4492944930_))
                                          (___kont4492944930_))
                                      (___kont4492944930_))))
                              (___kont4492944930_))))
                      (___kont4492944930_))))
              (___kont4492944930_))))))
  (define gxc#!struct-pred::optimize-call
    (lambda (_self44675_ _stx44676_ _args44677_)
      (let* ((_self4467844684_ _self44675_)
             (_E4468044688_
              (lambda () (error '"No clause matching" _self4467844684_)))
             (_K4468144813_
              (lambda (_struct-t44691_)
                (let* ((_struct-type44693_
                        (gxc#optimizer-resolve-type _struct-t44691_))
                       (_struct-type4469444708_ _struct-type44693_)
                       (_else4469744716_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx44676_
                           _struct-t44691_
                           _struct-type44693_))))
                  (let ((_K4470044788_
                         (lambda (_plist44727_ _struct-type-id44728_)
                           (let* ((___stx4496344964_ _args44677_)
                                  (_g4473144741_
                                   (lambda ()
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      ___stx4496344964_))))
                             (let ((___kont4496544966_
                                    (lambda (_L44761_)
                                      (let ((_expr44782_
                                             (gxc#compile-e _L44761_))
                                            (_op44783_
                                             (if (if _plist44727_
                                                     (assgetq 'final:
                                                              _plist44727_)
                                                     '#f)
                                                 '%#struct-direct-instance?
                                                 '%#struct-instance?)))
                                        (gxc#xform-wrap-source
                                         (cons _op44783_
                                               (cons (cons '%#quote
                                                           (cons _struct-type-id44728_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _expr44782_ '())))
                                         _stx44676_))))
                                   (___kont4496744968_
                                    (lambda ()
                                      (gxc#raise-compile-error
                                       '"Illegal struct predicate application"
                                       _stx44676_))))
                               (if (gx#stx-pair? ___stx4496344964_)
                                   (let ((_e4473444753_
                                          (gx#stx-e ___stx4496344964_)))
                                     (let ((_tl4473644758_
                                            (##cdr _e4473444753_))
                                           (_hd4473544756_
                                            (##car _e4473444753_)))
                                       (if (gx#stx-null? _tl4473644758_)
                                           (___kont4496544966_ _hd4473544756_)
                                           (___kont4496744968_))))
                                   (___kont4496744968_))))))
                        (_K4469944721_
                         (lambda () (gxc#xform-call% _stx44676_))))
                    (let ((_try-match4469644724_
                           (lambda ()
                             (if (##eq? _struct-type4469444708_ '#f)
                                 (_K4469944721_)
                                 (_else4469744716_)))))
                      (if (##structure-instance-of?
                           _struct-type4469444708_
                           'gxc#!struct-type::t)
                          (let* ((_e4470144791_
                                  (##vector-ref _struct-type4469444708_ '1))
                                 (_e4470244796_
                                  (##vector-ref _struct-type4469444708_ '2))
                                 (_e4470344799_
                                  (##vector-ref _struct-type4469444708_ '3))
                                 (_e4470444802_
                                  (##vector-ref _struct-type4469444708_ '4))
                                 (_e4470544805_
                                  (##vector-ref _struct-type4469444708_ '5))
                                 (_e4470644808_
                                  (##vector-ref _struct-type4469444708_ '6)))
                            (let ((_struct-type-id44794_ _e4470144791_)
                                  (_plist44811_ _e4470644808_))
                              (_K4470044788_
                               _plist44811_
                               _struct-type-id44794_)))
                          (_try-match4469644724_))))))))
        (if (##structure-instance-of? _self4467844684_ 'gxc#!struct-pred::t)
            (let* ((_e4468244816_ (##vector-ref _self4467844684_ '1))
                   (_struct-t44819_ _e4468244816_))
              (_K4468144813_ _struct-t44819_))
            (_E4468044688_)))))
  (bind-method!
   gxc#!struct-pred::t
   'optimize-call
   gxc#!struct-pred::optimize-call
   '#f)
  (define gxc#!struct-cons::optimize-call
    (lambda (_self44449_ _stx44450_ _args44451_)
      (let* ((_self4445244458_ _self44449_)
             (_E4445444462_
              (lambda () (error '"No clause matching" _self4445244458_)))
             (_K4445544545_
              (lambda (_struct-t44465_)
                (let* ((_struct-type44467_
                        (gxc#optimizer-resolve-type _struct-t44465_))
                       (_struct-type4446844481_ _struct-type44467_)
                       (_else4447144489_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct constructor application; not a struct type"
                           _stx44450_
                           _struct-t44465_
                           _struct-type44467_))))
                  (let ((_K4447444519_
                         (lambda (_ctor44500_
                                  _xfields44501_
                                  _fields44502_
                                  _type-id44503_)
                           (let* ((_args44505_ (map gxc#compile-e _args44451_))
                                  (_$e44507_
                                   (if _ctor44500_
                                       (if _xfields44501_
                                           (gxc#!struct-type-lookup-method
                                            _struct-type44467_
                                            _ctor44500_)
                                           '#f)
                                       '#f)))
                             (if _$e44507_
                                 ((lambda (_kons44510_)
                                    (let ((_$obj44512_
                                           (make-symbol (gensym '__obj))))
                                      (gxc#xform-wrap-source
                                       (cons '%#let-values
                                             (cons (cons (cons (cons _$obj44512_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons (cons '%#call
                                   (cons (cons '%#ref (cons 'make-object '()))
                                         (cons (cons '%#ref
                                                     (cons _struct-t44465_
                                                           '()))
                                               (cons (cons '%#quote
                                                           (cons (fx+ _fields44502_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _xfields44501_)
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
                                     (cons (cons '%#ref (cons _kons44510_ '()))
                                           (cons (cons '%#ref
                                                       (cons _$obj44512_ '()))
                                                 _args44505_)))
                               _stx44450_))
                             (cons (cons '%#ref (cons _$obj44512_ '())) '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _stx44450_)))
                                  _$e44507_)
                                 (if (let ((_$e44514_ _ctor44500_))
                                       (if _$e44514_
                                           _$e44514_
                                           (not _xfields44501_)))
                                     (gxc#xform-wrap-source
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons 'make-struct-instance
                                                              '()))
                                                  (cons (cons '%#ref
                                                              (cons _struct-t44465_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _args44505_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _stx44450_)
                                     (let ((_arity44517_
                                            (fx+ _fields44502_
                                                 _xfields44501_)))
                                       (if (fx= _arity44517_
                                                (length _args44505_))
                                           (gxc#xform-wrap-source
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#ref (cons _struct-t44465_ '())) _args44505_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _stx44450_)
                                           (gxc#raise-compile-error
                                            '"Illegal struct constructor application; arity mismatch"
                                            _stx44450_
                                            _struct-t44465_
                                            _arity44517_))))))))
                        (_K4447344494_
                         (lambda ()
                           (begin
                             (gxc#verbose
                              '"cannot inline struct constructor; unknown struct type "
                              _struct-t44465_)
                             (gxc#xform-call% _stx44450_)))))
                    (let ((_try-match4447044497_
                           (lambda ()
                             (if (##eq? _struct-type4446844481_ '#f)
                                 (_K4447344494_)
                                 (_else4447144489_)))))
                      (if (##structure-instance-of?
                           _struct-type4446844481_
                           'gxc#!struct-type::t)
                          (let* ((_e4447544522_
                                  (##vector-ref _struct-type4446844481_ '1))
                                 (_e4447644527_
                                  (##vector-ref _struct-type4446844481_ '2))
                                 (_e4447744530_
                                  (##vector-ref _struct-type4446844481_ '3))
                                 (_e4447844535_
                                  (##vector-ref _struct-type4446844481_ '4))
                                 (_e4447944540_
                                  (##vector-ref _struct-type4446844481_ '5)))
                            (let ((_type-id44525_ _e4447544522_)
                                  (_fields44533_ _e4447744530_)
                                  (_xfields44538_ _e4447844535_)
                                  (_ctor44543_ _e4447944540_))
                              (_K4447444519_
                               _ctor44543_
                               _xfields44538_
                               _fields44533_
                               _type-id44525_)))
                          (_try-match4447044497_))))))))
        (if (##structure-instance-of? _self4445244458_ 'gxc#!struct-cons::t)
            (let* ((_e4445644548_ (##vector-ref _self4445244458_ '1))
                   (_struct-t44551_ _e4445644548_))
              (_K4445544545_ _struct-t44551_))
            (_E4445444462_)))))
  (bind-method!
   gxc#!struct-cons::t
   'optimize-call
   gxc#!struct-cons::optimize-call
   '#f)
  (define gxc#!struct-getf::optimize-call
    (lambda (_self44160_ _stx44161_ _args44162_)
      (let* ((_self4416344171_ _self44160_)
             (_E4416544175_
              (lambda () (error '"No clause matching" _self4416344171_)))
             (_K4416644309_
              (lambda (_unchecked?44178_ _off44179_ _struct-t44180_)
                (let* ((_struct-type44182_
                        (gxc#optimizer-resolve-type _struct-t44180_))
                       (_struct-type4418344197_ _struct-type44182_)
                       (_else4418644205_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx44161_
                           _struct-t44180_
                           _struct-type44182_))))
                  (let ((_K4418944280_
                         (lambda (_plist44216_
                                  _xfields44217_
                                  _fields44218_
                                  _struct-type-id44219_)
                           (if _xfields44217_
                               (let* ((___stx4501145012_ _args44162_)
                                      (_g4422244232_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx4501145012_))))
                                 (let ((___kont4501345014_
                                        (lambda (_L44252_)
                                          (let ((_expr44273_
                                                 (gxc#compile-e _L44252_))
                                                (_off44274_
                                                 (fx+ _off44179_
                                                      _xfields44217_
                                                      '1))
                                                (_op44275_
                                                 (if _unchecked?44178_
                                                     '%#struct-unchecked-ref
                                                     (if (if _plist44216_
                                                             (assgetq 'final:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _plist44216_)
                     '#f)
                 '%#struct-direct-ref
                 '%#struct-ref))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (gxc#xform-wrap-source
                                             (cons _op44275_
                                                   (cons (cons '%#ref
                                                               (cons _struct-t44180_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons '%#quote (cons _off44274_ '()))
                       (cons _expr44273_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _stx44161_))))
                                       (___kont4501545016_
                                        (lambda ()
                                          (gxc#raise-compile-error
                                           '"Illegal struct accessor application"
                                           _stx44161_))))
                                   (if (gx#stx-pair? ___stx4501145012_)
                                       (let ((_e4422544244_
                                              (gx#stx-e ___stx4501145012_)))
                                         (let ((_tl4422744249_
                                                (##cdr _e4422544244_))
                                               (_hd4422644247_
                                                (##car _e4422544244_)))
                                           (if (gx#stx-null? _tl4422744249_)
                                               (___kont4501345014_
                                                _hd4422644247_)
                                               (___kont4501545016_))))
                                       (___kont4501545016_))))
                               (begin
                                 (gxc#verbose
                                  '"struct-getf: incomplete struct "
                                  _struct-type-id44219_)
                                 (gxc#xform-call% _stx44161_)))))
                        (_K4418844210_
                         (lambda () (gxc#xform-call% _stx44161_))))
                    (let ((_try-match4418544213_
                           (lambda ()
                             (if (##eq? _struct-type4418344197_ '#f)
                                 (_K4418844210_)
                                 (_else4418644205_)))))
                      (if (##structure-instance-of?
                           _struct-type4418344197_
                           'gxc#!struct-type::t)
                          (let* ((_e4419044283_
                                  (##vector-ref _struct-type4418344197_ '1))
                                 (_e4419144288_
                                  (##vector-ref _struct-type4418344197_ '2))
                                 (_e4419244291_
                                  (##vector-ref _struct-type4418344197_ '3))
                                 (_e4419344296_
                                  (##vector-ref _struct-type4418344197_ '4))
                                 (_e4419444301_
                                  (##vector-ref _struct-type4418344197_ '5))
                                 (_e4419544304_
                                  (##vector-ref _struct-type4418344197_ '6)))
                            (let ((_struct-type-id44286_ _e4419044283_)
                                  (_fields44294_ _e4419244291_)
                                  (_xfields44299_ _e4419344296_)
                                  (_plist44307_ _e4419544304_))
                              (_K4418944280_
                               _plist44307_
                               _xfields44299_
                               _fields44294_
                               _struct-type-id44286_)))
                          (_try-match4418544213_))))))))
        (if (##structure-instance-of? _self4416344171_ 'gxc#!struct-getf::t)
            (let* ((_e4416744312_ (##vector-ref _self4416344171_ '1))
                   (_struct-t44315_ _e4416744312_)
                   (_e4416844317_ (##vector-ref _self4416344171_ '2))
                   (_off44320_ _e4416844317_)
                   (_e4416944322_ (##vector-ref _self4416344171_ '3))
                   (_unchecked?44325_ _e4416944322_))
              (_K4416644309_ _unchecked?44325_ _off44320_ _struct-t44315_))
            (_E4416544175_)))))
  (bind-method!
   gxc#!struct-getf::t
   'optimize-call
   gxc#!struct-getf::optimize-call
   '#f)
  (define gxc#!struct-setf::optimize-call
    (lambda (_self43854_ _stx43855_ _args43856_)
      (let* ((_self4385743865_ _self43854_)
             (_E4385943869_
              (lambda () (error '"No clause matching" _self4385743865_)))
             (_K4386044020_
              (lambda (_unchecked?43872_ _off43873_ _struct-t43874_)
                (let* ((_struct-type43876_
                        (gxc#optimizer-resolve-type _struct-t43874_))
                       (_struct-type4387743891_ _struct-type43876_)
                       (_else4388043899_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx43855_
                           _struct-t43874_
                           _struct-type43876_))))
                  (let ((_K4388343991_
                         (lambda (_plist43910_
                                  _xfields43911_
                                  _fields43912_
                                  _struct-type-id43913_)
                           (if _xfields43911_
                               (let* ((___stx4504445045_ _args43856_)
                                      (_g4391643930_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx4504445045_))))
                                 (let ((___kont4504645047_
                                        (lambda (_L43958_ _L43959_)
                                          (let ((_expr43983_
                                                 (gxc#compile-e _L43959_))
                                                (_val43984_
                                                 (gxc#compile-e _L43958_))
                                                (_off43985_
                                                 (fx+ _off43873_
                                                      _xfields43911_
                                                      '1))
                                                (_op43986_
                                                 (if _unchecked?43872_
                                                     '%#struct-unchecked-set!
                                                     (if (if _plist43910_
                                                             (assgetq 'final:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _plist43910_)
                     '#f)
                 '%#struct-direct-set!
                 '%#struct-set!))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (gxc#xform-wrap-source
                                             (cons _op43986_
                                                   (cons (cons '%#ref
                                                               (cons _struct-t43874_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons '%#quote (cons _off43985_ '()))
                       (cons _expr43983_ (cons _val43984_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _stx43855_))))
                                       (___kont4504845049_
                                        (lambda ()
                                          (gxc#raise-compile-error
                                           '"Illegal struct mutator application"
                                           _stx43855_))))
                                   (if (gx#stx-pair? ___stx4504445045_)
                                       (let ((_e4392043942_
                                              (gx#stx-e ___stx4504445045_)))
                                         (let ((_tl4392243947_
                                                (##cdr _e4392043942_))
                                               (_hd4392143945_
                                                (##car _e4392043942_)))
                                           (if (gx#stx-pair? _tl4392243947_)
                                               (let ((_e4392343950_
                                                      (gx#stx-e
                                                       _tl4392243947_)))
                                                 (let ((_tl4392543955_
                                                        (##cdr _e4392343950_))
                                                       (_hd4392443953_
                                                        (##car _e4392343950_)))
                                                   (if (gx#stx-null?
                                                        _tl4392543955_)
                                                       (___kont4504645047_
                                                        _hd4392443953_
                                                        _hd4392143945_)
                                                       (___kont4504845049_))))
                                               (___kont4504845049_))))
                                       (___kont4504845049_))))
                               (begin
                                 (gxc#verbose
                                  '"struct-setf: incomplete struct "
                                  _struct-type-id43913_)
                                 (gxc#xform-call% _stx43855_)))))
                        (_K4388243904_
                         (lambda () (gxc#xform-call% _stx43855_))))
                    (let ((_try-match4387943907_
                           (lambda ()
                             (if (##eq? _struct-type4387743891_ '#f)
                                 (_K4388243904_)
                                 (_else4388043899_)))))
                      (if (##structure-instance-of?
                           _struct-type4387743891_
                           'gxc#!struct-type::t)
                          (let* ((_e4388443994_
                                  (##vector-ref _struct-type4387743891_ '1))
                                 (_e4388543999_
                                  (##vector-ref _struct-type4387743891_ '2))
                                 (_e4388644002_
                                  (##vector-ref _struct-type4387743891_ '3))
                                 (_e4388744007_
                                  (##vector-ref _struct-type4387743891_ '4))
                                 (_e4388844012_
                                  (##vector-ref _struct-type4387743891_ '5))
                                 (_e4388944015_
                                  (##vector-ref _struct-type4387743891_ '6)))
                            (let ((_struct-type-id43997_ _e4388443994_)
                                  (_fields44005_ _e4388644002_)
                                  (_xfields44010_ _e4388744007_)
                                  (_plist44018_ _e4388944015_))
                              (_K4388343991_
                               _plist44018_
                               _xfields44010_
                               _fields44005_
                               _struct-type-id43997_)))
                          (_try-match4387943907_))))))))
        (if (##structure-instance-of? _self4385743865_ 'gxc#!struct-setf::t)
            (let* ((_e4386144023_ (##vector-ref _self4385743865_ '1))
                   (_struct-t44026_ _e4386144023_)
                   (_e4386244028_ (##vector-ref _self4385743865_ '2))
                   (_off44031_ _e4386244028_)
                   (_e4386344033_ (##vector-ref _self4385743865_ '3))
                   (_unchecked?44036_ _e4386344033_))
              (_K4386044020_ _unchecked?44036_ _off44031_ _struct-t44026_))
            (_E4385943869_)))))
  (bind-method!
   gxc#!struct-setf::t
   'optimize-call
   gxc#!struct-setf::optimize-call
   '#f)
  (define gxc#!lambda::optimize-call
    (lambda (_self43688_ _stx43689_ _args43690_)
      (let* ((_self4369143700_ _self43688_)
             (_E4369343704_
              (lambda () (error '"No clause matching" _self4369143700_)))
             (_K4369443711_
              (lambda (_inline43707_ _dispatch43708_ _arity43709_)
                (begin
                  (if (gxc#!lambda-arity-match? _self43688_ _args43690_)
                      '#!void
                      (gxc#raise-compile-error
                       '"Illegal lambda application; arity mismatch"
                       _stx43689_
                       _arity43709_))
                  (if _inline43707_
                      (begin
                        (gxc#verbose '"inline lambda")
                        (gxc#compile-e
                         (gxc#xform-wrap-source
                          (_inline43707_ _stx43689_)
                          _stx43689_)))
                      (if _dispatch43708_
                          (begin
                            (gxc#verbose
                             '"dispatch lambda => "
                             _dispatch43708_)
                            (gxc#compile-e
                             (gxc#xform-wrap-source
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons _dispatch43708_ '()))
                                          _args43690_))
                              _stx43689_)))
                          (gxc#xform-call% _stx43689_)))))))
        (if (##structure-instance-of? _self4369143700_ 'gxc#!lambda::t)
            (let* ((_e4369543714_ (##vector-ref _self4369143700_ '1))
                   (_e4369643717_ (##vector-ref _self4369143700_ '2))
                   (_arity43720_ _e4369643717_)
                   (_e4369743722_ (##vector-ref _self4369143700_ '3))
                   (_dispatch43725_ _e4369743722_)
                   (_e4369843727_ (##vector-ref _self4369143700_ '4))
                   (_inline43730_ _e4369843727_))
              (_K4369443711_ _inline43730_ _dispatch43725_ _arity43720_))
            (_E4369343704_)))))
  (bind-method! gxc#!lambda::t 'optimize-call gxc#!lambda::optimize-call '#f)
  (define gxc#!case-lambda::optimize-call
    (lambda (_self43527_ _stx43528_ _args43529_)
      (let* ((_self4353043537_ _self43527_)
             (_E4353243541_
              (lambda () (error '"No clause matching" _self4353043537_)))
             (_K4353343555_
              (lambda (_clauses43544_)
                (let ((_$e43550_
                       (find (lambda (_g4354543547_)
                               (gxc#!lambda-arity-match?
                                _g4354543547_
                                _args43529_))
                             _clauses43544_)))
                  (if _$e43550_
                      ((lambda (_clause43553_)
                         (call-method
                          _clause43553_
                          'optimize-call
                          _stx43528_
                          _args43529_))
                       _$e43550_)
                      (gxc#raise-compile-error
                       '"Illegal case-lambda application; arity mismatch"
                       _stx43528_
                       (map gxc#!lambda-arity _clauses43544_)))))))
        (if (##structure-instance-of? _self4353043537_ 'gxc#!case-lambda::t)
            (let* ((_e4353443558_ (##vector-ref _self4353043537_ '1))
                   (_e4353543561_ (##vector-ref _self4353043537_ '2))
                   (_clauses43564_ _e4353543561_))
              (_K4353343555_ _clauses43564_))
            (_E4353243541_)))))
  (bind-method!
   gxc#!case-lambda::t
   'optimize-call
   gxc#!case-lambda::optimize-call
   '#f)
  (define gxc#!lambda-arity-match?
    (lambda (_self43341_ _args43342_)
      (let* ((_self4334343350_ _self43341_)
             (_E4334543354_
              (lambda () (error '"No clause matching" _self4334343350_)))
             (_K4334643394_
              (lambda (_arity43357_)
                (let* ((_arity4335843367_ _arity43357_)
                       (_E4336143371_
                        (lambda ()
                          (error '"No clause matching" _arity4335843367_))))
                  (let ((_K4336543391_
                         (lambda () (fx= (length _args43342_) _arity43357_)))
                        (_K4336243377_
                         (lambda (_arity43375_)
                           (fx>= (length _args43342_) _arity43375_))))
                    (let ((_try-match4336043387_
                           (lambda ()
                             (if (##pair? _arity4335843367_)
                                 (let ((_tl4336443382_
                                        (##cdr _arity4335843367_))
                                       (_hd4336343380_
                                        (##car _arity4335843367_)))
                                   (if (##null? _tl4336443382_)
                                       (let ((_arity43385_ _hd4336343380_))
                                         (_K4336243377_ _arity43385_))
                                       (_E4336143371_)))
                                 (_E4336143371_)))))
                      (if (fixnum? _arity4335843367_)
                          (_K4336543391_)
                          (_try-match4336043387_))))))))
        (if (##structure-instance-of? _self4334343350_ 'gxc#!lambda::t)
            (let* ((_e4334743397_ (##vector-ref _self4334343350_ '1))
                   (_e4334843400_ (##vector-ref _self4334343350_ '2))
                   (_arity43403_ _e4334843400_))
              (_K4334643394_ _arity43403_))
            (_E4334543354_)))))
  (define gxc#!kw-lambda::optimize-call
    (lambda (_self43226_ _stx43227_ _args43228_)
      (let* ((_self4322943237_ _self43226_)
             (_E4323143241_
              (lambda () (error '"No clause matching" _self4322943237_)))
             (_K4323243325_
              (lambda (_dispatch43244_ _table43245_)
                (let* ((_g4324643255_
                        (gxc#optimizer-lookup-type _dispatch43244_))
                       (_else4324843263_
                        (lambda ()
                          (begin
                            (gxc#verbose
                             '"unknown keyword dispatch lambda "
                             _dispatch43244_)
                            (gxc#xform-call% _stx43227_))))
                       (_K4325043309_
                        (lambda (_main43266_ _keys43267_)
                          (let ((_g45209_
                                 (gxc#!kw-lambda-split-args
                                  _stx43227_
                                  _args43228_)))
                            (begin
                              (let ((_g45210_
                                     (if (##values? _g45209_)
                                         (##vector-length _g45209_)
                                         1)))
                                (if (not (##fx= _g45210_ 2))
                                    (error "Context expects 2 values"
                                           _g45210_)))
                              (let ((_pargs43269_ (##vector-ref _g45209_ 0))
                                    (_kwargs43270_ (##vector-ref _g45209_ 1)))
                                (begin
                                  (gxc#verbose
                                   '"dispatch kw-lambda => "
                                   _main43266_)
                                  (if _table43245_
                                      (let ((_xargs43277_
                                             (map (lambda (_key43272_)
                                                    (let ((_$e43274_
                                                           (assgetq _key43272_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _kwargs43270_)))
              (if _$e43274_ (values _$e43274_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _keys43267_)))
                                        (begin
                                          (for-each
                                           (lambda (_kw43279_)
                                             (if (memq (car _kw43279_)
                                                       _keys43267_)
                                                 '#!void
                                                 (gxc#raise-compile-error
                                                  '"Illegal keyword lambda application; unexpected keyword"
                                                  _stx43227_
                                                  _keys43267_
                                                  _kw43279_)))
                                           _kwargs43270_)
                                          (gxc#compile-e
                                           (gxc#xform-wrap-source
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons _main43266_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote (cons '#f '()))
                      (foldr1 cons _pargs43269_ _xargs43277_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _stx43227_))))
                                      (let* ((_kwt43281_
                                              (make-symbol (gensym '__kwt)))
                                             (_kwvars43284_
                                              (map (lambda (_g45211_)
                                                     (make-symbol
                                                      (gensym '__kw)))
                                                   _kwargs43270_))
                                             (_kwbind43289_
                                              (map (lambda (_kw43286_
                                                            _kwvar43287_)
                                                     (cons (cons _kwvar43287_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   (cons (cdr _kw43286_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs43270_
                                                   _kwvars43284_))
                                             (_kwset43294_
                                              (map (lambda (_kw43291_
                                                            _kwvar43292_)
                                                     (cons '%#call
                                                           (cons '(%#ref hash-put!)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons _kwt43281_ '()))
                               (cons (cons '%#quote (cons (car _kw43291_) '()))
                                     (cons (cons '%#ref
                                                 (cons _kwvar43292_ '()))
                                           '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs43270_
                                                   _kwvars43284_))
                                             (_xkwargs43299_
                                              (map (lambda (_kw43296_
                                                            _kwvar43297_)
                                                     (cons (car _kw43296_)
                                                           (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _kwvar43297_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs43270_
                                                   _kwvars43284_))
                                             (_xargs43306_
                                              (map (lambda (_key43301_)
                                                     (let ((_$e43303_
                                                            (assgetq _key43301_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _xkwargs43299_)))
               (if _$e43303_ (values _$e43303_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _keys43267_)))
                                        (gxc#compile-e
                                         (gxc#xform-wrap-source
                                          (cons '%#let-values
                                                (cons _kwbind43289_
                                                      (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (cons (cons _kwt43281_ '())
                                            (cons (gxc#xform-wrap-source
                                                   (cons '%#call
                                                         (cons '(%#ref make-hash-table-eq)
                                                               (cons '(%#quote size:)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons '%#quote
                                         (cons (length _kwargs43270_) '()))
                                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx43227_)
                                                  '()))
                                      '())
                                (cons (cons '%#begin
                                            (foldr1 cons
                                                    (cons (gxc#xform-wrap-source
                                                           (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons _main43266_ '()))
                               (cons (cons '%#ref (cons _kwt43281_ '()))
                                     (foldr1 cons _pargs43269_ _xargs43306_))))
                   _stx43227_)
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _kwset43294_))
                                      '())))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _stx43227_)))))))))))
                  (if (##structure-instance-of?
                       _g4324643255_
                       'gxc#!kw-lambda-primary::t)
                      (let* ((_e4325143312_ (##vector-ref _g4324643255_ '1))
                             (_e4325243315_ (##vector-ref _g4324643255_ '2))
                             (_keys43318_ _e4325243315_)
                             (_e4325343320_ (##vector-ref _g4324643255_ '3))
                             (_main43323_ _e4325343320_))
                        (_K4325043309_ _main43323_ _keys43318_))
                      (_else4324843263_))))))
        (if (##structure-instance-of? _self4322943237_ 'gxc#!kw-lambda::t)
            (let* ((_e4323343328_ (##vector-ref _self4322943237_ '1))
                   (_e4323443331_ (##vector-ref _self4322943237_ '2))
                   (_table43334_ _e4323443331_)
                   (_e4323543336_ (##vector-ref _self4322943237_ '3))
                   (_dispatch43339_ _e4323543336_))
              (_K4323243325_ _dispatch43339_ _table43334_))
            (_E4323143241_)))))
  (bind-method!
   gxc#!kw-lambda::t
   'optimize-call
   gxc#!kw-lambda::optimize-call
   '#f)
  (define gxc#!kw-lambda-split-args
    (lambda (_stx42839_ _args42840_)
      (let _lp42842_ ((_rest42844_ _args42840_)
                      (_pargs42845_ '())
                      (_kwargs42846_ '()))
        (let* ((___stx4509245093_ _rest42844_)
               (_g4285242904_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx4509245093_))))
          (let ((___kont4509445095_
                 (lambda (_L43083_ _L43084_)
                   (_lp42842_
                    _L43083_
                    (cons _L43084_ _pargs42845_)
                    _kwargs42846_)))
                (___kont4509645097_
                 (lambda (_L43029_)
                   (values (foldl1 cons _L43029_ _pargs42845_)
                           (reverse _kwargs42846_))))
                (___kont4509845099_
                 (lambda (_L42976_ _L42977_ _L42978_)
                   (let ((_kw42995_ (gx#stx-e _L42978_)))
                     (if (assq _kw42995_ _kwargs42846_)
                         (gxc#raise-compile-error
                          '"Illegal keyword lambda application; duplicate keyword"
                          _stx42839_
                          _kw42995_)
                         (_lp42842_
                          _L42976_
                          _pargs42845_
                          (cons (cons _kw42995_ _L42977_) _kwargs42846_))))))
                (___kont4510045101_
                 (lambda (_L42924_ _L42925_)
                   (_lp42842_
                    _L42924_
                    (cons _L42925_ _pargs42845_)
                    _kwargs42846_)))
                (___kont4510245103_
                 (lambda ()
                   (values (reverse _pargs42845_) (reverse _kwargs42846_)))))
            (let* ((_g4285142911_
                    (lambda ()
                      (if (gx#stx-null? ___stx4509245093_)
                          (___kont4510245103_)
                          (_g4285242904_))))
                   (___match4519945200_
                    (lambda (_e4288342944_
                             _hd4288442947_
                             _tl4288542949_
                             _e4288642952_
                             _hd4288742955_
                             _tl4288842957_
                             _e4288942960_
                             _hd4289042963_
                             _tl4289142965_
                             _e4289242968_
                             _hd4289342971_
                             _tl4289442973_)
                      (let ((_L42976_ _tl4289442973_)
                            (_L42977_ _hd4289342971_)
                            (_L42978_ _hd4289042963_))
                        (if (gx#stx-keyword? _L42978_)
                            (___kont4509845099_ _L42976_ _L42977_ _L42978_)
                            (___kont4510045101_
                             _tl4288542949_
                             _hd4288442947_))))))
              (if (gx#stx-pair? ___stx4509245093_)
                  (let ((_e4285643048_ (gx#stx-e ___stx4509245093_)))
                    (let ((_tl4285843053_ (##cdr _e4285643048_))
                          (_hd4285743051_ (##car _e4285643048_)))
                      (if (gx#stx-pair? _hd4285743051_)
                          (let ((_e4285943056_ (gx#stx-e _hd4285743051_)))
                            (let ((_tl4286143061_ (##cdr _e4285943056_))
                                  (_hd4286043059_ (##car _e4285943056_)))
                              (if (gx#identifier? _hd4286043059_)
                                  (if (gx#stx-eq? '%#quote _hd4286043059_)
                                      (if (gx#stx-pair? _tl4286143061_)
                                          (let ((_e4286243064_
                                                 (gx#stx-e _tl4286143061_)))
                                            (let ((_tl4286443069_
                                                   (##cdr _e4286243064_))
                                                  (_hd4286343067_
                                                   (##car _e4286243064_)))
                                              (if (gx#stx-datum?
                                                   _hd4286343067_)
                                                  (let ((_e4286543072_
                                                         (gx#stx-e
                                                          _hd4286343067_)))
                                                    (if (equal? _e4286543072_
                                                                '#!key)
                                                        (if (gx#stx-null?
                                                             _tl4286443069_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl4285843053_)
                        (let ((_e4286643075_ (gx#stx-e _tl4285843053_)))
                          (let ((_tl4286843080_ (##cdr _e4286643075_))
                                (_hd4286743078_ (##car _e4286643075_)))
                            (___kont4509445095_
                             _tl4286843080_
                             _hd4286743078_)))
                        (___kont4510045101_ _tl4285843053_ _hd4285743051_))
                    (___kont4510045101_ _tl4285843053_ _hd4285743051_))
                (if (equal? _e4286543072_ '#!rest)
                    (if (gx#stx-null? _tl4286443069_)
                        (___kont4509645097_ _tl4285843053_)
                        (___kont4510045101_ _tl4285843053_ _hd4285743051_))
                    (if (gx#stx-null? _tl4286443069_)
                        (if (gx#stx-pair? _tl4285843053_)
                            (let ((_e4289242968_ (gx#stx-e _tl4285843053_)))
                              (let ((_tl4289442973_ (##cdr _e4289242968_))
                                    (_hd4289342971_ (##car _e4289242968_)))
                                (___match4519945200_
                                 _e4285643048_
                                 _hd4285743051_
                                 _tl4285843053_
                                 _e4285943056_
                                 _hd4286043059_
                                 _tl4286143061_
                                 _e4286243064_
                                 _hd4286343067_
                                 _tl4286443069_
                                 _e4289242968_
                                 _hd4289342971_
                                 _tl4289442973_)))
                            (___kont4510045101_ _tl4285843053_ _hd4285743051_))
                        (___kont4510045101_ _tl4285843053_ _hd4285743051_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _tl4286443069_)
                                                      (if (gx#stx-pair?
                                                           _tl4285843053_)
                                                          (let ((_e4289242968_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl4285843053_)))
                    (let ((_tl4289442973_ (##cdr _e4289242968_))
                          (_hd4289342971_ (##car _e4289242968_)))
                      (___match4519945200_
                       _e4285643048_
                       _hd4285743051_
                       _tl4285843053_
                       _e4285943056_
                       _hd4286043059_
                       _tl4286143061_
                       _e4286243064_
                       _hd4286343067_
                       _tl4286443069_
                       _e4289242968_
                       _hd4289342971_
                       _tl4289442973_)))
                  (___kont4510045101_ _tl4285843053_ _hd4285743051_))
              (___kont4510045101_ _tl4285843053_ _hd4285743051_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (___kont4510045101_
                                           _tl4285843053_
                                           _hd4285743051_))
                                      (___kont4510045101_
                                       _tl4285843053_
                                       _hd4285743051_))
                                  (___kont4510045101_
                                   _tl4285843053_
                                   _hd4285743051_))))
                          (___kont4510045101_ _tl4285843053_ _hd4285743051_))))
                  (_g4285142911_))))))))
  (define gxc#!kw-lambda-primary::optimize-call
    (lambda (_self42835_ _stx42836_ _args42837_) (gxc#xform-call% _stx42836_)))
  (bind-method!
   gxc#!kw-lambda-primary::t
   'optimize-call
   gxc#!kw-lambda-primary::optimize-call
   '#f))
