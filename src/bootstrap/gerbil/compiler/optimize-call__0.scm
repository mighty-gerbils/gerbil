(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#&optimize-call
    (##make-promise
     (lambda ()
       (let ((_tbl44934_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl44934_ (force gxc#&basic-xform))
           (table-set! _tbl44934_ '%#call gxc#optimize-call%)
           _tbl44934_)))))
  (define gxc#apply-optimize-call
    (lambda (_stx44927_ . _args44929_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx44927_ _args44929_))
       gxc#current-compile-methods
       (force gxc#&optimize-call))))
  (define gxc#optimize-call%
    (lambda (_stx44833_)
      (let* ((___stx4493744938_ _stx44833_)
             (_g4483644856_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4493744938_))))
        (let ((___kont4493944940_
               (lambda (_L44900_ _L44901_)
                 (let* ((_rator-id44919_ (gxc#identifier-symbol _L44901_))
                        (_rator-type44921_
                         (gxc#optimizer-resolve-type _rator-id44919_)))
                   (if (##structure-instance-of?
                        _rator-type44921_
                        'gxc#!procedure::t)
                       (begin
                         (gxc#verbose
                          '"optimize-call "
                          _rator-id44919_
                          '" => "
                          _rator-type44921_
                          '" "
                          (##structure-ref
                           _rator-type44921_
                           '1
                           gxc#!type::t
                           '#f))
                         (call-method
                          _rator-type44921_
                          'optimize-call
                          _stx44833_
                          _L44900_))
                       (if (not _rator-type44921_)
                           (gxc#xform-call% _stx44833_)
                           (gxc#raise-compile-error
                            '"Illegal application; not a procedure"
                            _stx44833_
                            _rator-type44921_))))))
              (___kont4494144942_ (lambda () (gxc#xform-call% _stx44833_))))
          (if (gx#stx-pair? ___stx4493744938_)
              (let ((_e4484044868_ (gx#stx-e ___stx4493744938_)))
                (let ((_tl4484244873_ (##cdr _e4484044868_))
                      (_hd4484144871_ (##car _e4484044868_)))
                  (if (gx#stx-pair? _tl4484244873_)
                      (let ((_e4484344876_ (gx#stx-e _tl4484244873_)))
                        (let ((_tl4484544881_ (##cdr _e4484344876_))
                              (_hd4484444879_ (##car _e4484344876_)))
                          (if (gx#stx-pair? _hd4484444879_)
                              (let ((_e4484644884_ (gx#stx-e _hd4484444879_)))
                                (let ((_tl4484844889_ (##cdr _e4484644884_))
                                      (_hd4484744887_ (##car _e4484644884_)))
                                  (if (gx#identifier? _hd4484744887_)
                                      (if (gx#stx-eq? '%#ref _hd4484744887_)
                                          (if (gx#stx-pair? _tl4484844889_)
                                              (let ((_e4484944892_
                                                     (gx#stx-e
                                                      _tl4484844889_)))
                                                (let ((_tl4485144897_
                                                       (##cdr _e4484944892_))
                                                      (_hd4485044895_
                                                       (##car _e4484944892_)))
                                                  (if (gx#stx-null?
                                                       _tl4485144897_)
                                                      (___kont4493944940_
                                                       _tl4484544881_
                                                       _hd4485044895_)
                                                      (___kont4494144942_))))
                                              (___kont4494144942_))
                                          (___kont4494144942_))
                                      (___kont4494144942_))))
                              (___kont4494144942_))))
                      (___kont4494144942_))))
              (___kont4494144942_))))))
  (define gxc#!struct-pred::optimize-call
    (lambda (_self44687_ _stx44688_ _args44689_)
      (let* ((_self4469044696_ _self44687_)
             (_E4469244700_
              (lambda () (error '"No clause matching" _self4469044696_)))
             (_K4469344825_
              (lambda (_struct-t44703_)
                (let* ((_struct-type44705_
                        (gxc#optimizer-resolve-type _struct-t44703_))
                       (_struct-type4470644720_ _struct-type44705_)
                       (_else4470944728_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx44688_
                           _struct-t44703_
                           _struct-type44705_))))
                  (let ((_K4471244800_
                         (lambda (_plist44739_ _struct-type-id44740_)
                           (let* ((___stx4497544976_ _args44689_)
                                  (_g4474344753_
                                   (lambda ()
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      ___stx4497544976_))))
                             (let ((___kont4497744978_
                                    (lambda (_L44773_)
                                      (let ((_expr44794_
                                             (gxc#compile-e _L44773_))
                                            (_op44795_
                                             (if (if _plist44739_
                                                     (assgetq 'final:
                                                              _plist44739_)
                                                     '#f)
                                                 '%#struct-direct-instance?
                                                 '%#struct-instance?)))
                                        (gxc#xform-wrap-source
                                         (cons _op44795_
                                               (cons (cons '%#quote
                                                           (cons _struct-type-id44740_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _expr44794_ '())))
                                         _stx44688_))))
                                   (___kont4497944980_
                                    (lambda ()
                                      (gxc#raise-compile-error
                                       '"Illegal struct predicate application"
                                       _stx44688_))))
                               (if (gx#stx-pair? ___stx4497544976_)
                                   (let ((_e4474644765_
                                          (gx#stx-e ___stx4497544976_)))
                                     (let ((_tl4474844770_
                                            (##cdr _e4474644765_))
                                           (_hd4474744768_
                                            (##car _e4474644765_)))
                                       (if (gx#stx-null? _tl4474844770_)
                                           (___kont4497744978_ _hd4474744768_)
                                           (___kont4497944980_))))
                                   (___kont4497944980_))))))
                        (_K4471144733_
                         (lambda () (gxc#xform-call% _stx44688_))))
                    (let ((_try-match4470844736_
                           (lambda ()
                             (if (##eq? _struct-type4470644720_ '#f)
                                 (_K4471144733_)
                                 (_else4470944728_)))))
                      (if (##structure-instance-of?
                           _struct-type4470644720_
                           'gxc#!struct-type::t)
                          (let* ((_e4471344803_
                                  (##vector-ref _struct-type4470644720_ '1))
                                 (_e4471444808_
                                  (##vector-ref _struct-type4470644720_ '2))
                                 (_e4471544811_
                                  (##vector-ref _struct-type4470644720_ '3))
                                 (_e4471644814_
                                  (##vector-ref _struct-type4470644720_ '4))
                                 (_e4471744817_
                                  (##vector-ref _struct-type4470644720_ '5))
                                 (_e4471844820_
                                  (##vector-ref _struct-type4470644720_ '6)))
                            (let ((_struct-type-id44806_ _e4471344803_)
                                  (_plist44823_ _e4471844820_))
                              (_K4471244800_
                               _plist44823_
                               _struct-type-id44806_)))
                          (_try-match4470844736_))))))))
        (if (##structure-instance-of? _self4469044696_ 'gxc#!struct-pred::t)
            (let* ((_e4469444828_ (##vector-ref _self4469044696_ '1))
                   (_struct-t44831_ _e4469444828_))
              (_K4469344825_ _struct-t44831_))
            (_E4469244700_)))))
  (bind-method!
   gxc#!struct-pred::t
   'optimize-call
   gxc#!struct-pred::optimize-call
   '#f)
  (define gxc#!struct-cons::optimize-call
    (lambda (_self44461_ _stx44462_ _args44463_)
      (let* ((_self4446444470_ _self44461_)
             (_E4446644474_
              (lambda () (error '"No clause matching" _self4446444470_)))
             (_K4446744557_
              (lambda (_struct-t44477_)
                (let* ((_struct-type44479_
                        (gxc#optimizer-resolve-type _struct-t44477_))
                       (_struct-type4448044493_ _struct-type44479_)
                       (_else4448344501_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct constructor application; not a struct type"
                           _stx44462_
                           _struct-t44477_
                           _struct-type44479_))))
                  (let ((_K4448644531_
                         (lambda (_ctor44512_
                                  _xfields44513_
                                  _fields44514_
                                  _type-id44515_)
                           (let* ((_args44517_ (map gxc#compile-e _args44463_))
                                  (_$e44519_
                                   (if _ctor44512_
                                       (if _xfields44513_
                                           (gxc#!struct-type-lookup-method
                                            _struct-type44479_
                                            _ctor44512_)
                                           '#f)
                                       '#f)))
                             (if _$e44519_
                                 ((lambda (_kons44522_)
                                    (let ((_$obj44524_
                                           (make-symbol (gensym '__obj))))
                                      (gxc#xform-wrap-source
                                       (cons '%#let-values
                                             (cons (cons (cons (cons _$obj44524_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons (cons '%#call
                                   (cons (cons '%#ref (cons 'make-object '()))
                                         (cons (cons '%#ref
                                                     (cons _struct-t44477_
                                                           '()))
                                               (cons (cons '%#quote
                                                           (cons (fx+ _fields44514_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _xfields44513_)
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
                                     (cons (cons '%#ref (cons _kons44522_ '()))
                                           (cons (cons '%#ref
                                                       (cons _$obj44524_ '()))
                                                 _args44517_)))
                               _stx44462_))
                             (cons (cons '%#ref (cons _$obj44524_ '())) '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _stx44462_)))
                                  _$e44519_)
                                 (if (let ((_$e44526_ _ctor44512_))
                                       (if _$e44526_
                                           _$e44526_
                                           (not _xfields44513_)))
                                     (gxc#xform-wrap-source
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons 'make-struct-instance
                                                              '()))
                                                  (cons (cons '%#ref
                                                              (cons _struct-t44477_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _args44517_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _stx44462_)
                                     (let ((_arity44529_
                                            (fx+ _fields44514_
                                                 _xfields44513_)))
                                       (if (fx= _arity44529_
                                                (length _args44517_))
                                           (gxc#xform-wrap-source
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#ref (cons _struct-t44477_ '())) _args44517_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _stx44462_)
                                           (gxc#raise-compile-error
                                            '"Illegal struct constructor application; arity mismatch"
                                            _stx44462_
                                            _struct-t44477_
                                            _arity44529_))))))))
                        (_K4448544506_
                         (lambda ()
                           (begin
                             (gxc#verbose
                              '"cannot inline struct constructor; unknown struct type "
                              _struct-t44477_)
                             (gxc#xform-call% _stx44462_)))))
                    (let ((_try-match4448244509_
                           (lambda ()
                             (if (##eq? _struct-type4448044493_ '#f)
                                 (_K4448544506_)
                                 (_else4448344501_)))))
                      (if (##structure-instance-of?
                           _struct-type4448044493_
                           'gxc#!struct-type::t)
                          (let* ((_e4448744534_
                                  (##vector-ref _struct-type4448044493_ '1))
                                 (_e4448844539_
                                  (##vector-ref _struct-type4448044493_ '2))
                                 (_e4448944542_
                                  (##vector-ref _struct-type4448044493_ '3))
                                 (_e4449044547_
                                  (##vector-ref _struct-type4448044493_ '4))
                                 (_e4449144552_
                                  (##vector-ref _struct-type4448044493_ '5)))
                            (let ((_type-id44537_ _e4448744534_)
                                  (_fields44545_ _e4448944542_)
                                  (_xfields44550_ _e4449044547_)
                                  (_ctor44555_ _e4449144552_))
                              (_K4448644531_
                               _ctor44555_
                               _xfields44550_
                               _fields44545_
                               _type-id44537_)))
                          (_try-match4448244509_))))))))
        (if (##structure-instance-of? _self4446444470_ 'gxc#!struct-cons::t)
            (let* ((_e4446844560_ (##vector-ref _self4446444470_ '1))
                   (_struct-t44563_ _e4446844560_))
              (_K4446744557_ _struct-t44563_))
            (_E4446644474_)))))
  (bind-method!
   gxc#!struct-cons::t
   'optimize-call
   gxc#!struct-cons::optimize-call
   '#f)
  (define gxc#!struct-getf::optimize-call
    (lambda (_self44172_ _stx44173_ _args44174_)
      (let* ((_self4417544183_ _self44172_)
             (_E4417744187_
              (lambda () (error '"No clause matching" _self4417544183_)))
             (_K4417844321_
              (lambda (_unchecked?44190_ _off44191_ _struct-t44192_)
                (let* ((_struct-type44194_
                        (gxc#optimizer-resolve-type _struct-t44192_))
                       (_struct-type4419544209_ _struct-type44194_)
                       (_else4419844217_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx44173_
                           _struct-t44192_
                           _struct-type44194_))))
                  (let ((_K4420144292_
                         (lambda (_plist44228_
                                  _xfields44229_
                                  _fields44230_
                                  _struct-type-id44231_)
                           (if _xfields44229_
                               (let* ((___stx4502345024_ _args44174_)
                                      (_g4423444244_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx4502345024_))))
                                 (let ((___kont4502545026_
                                        (lambda (_L44264_)
                                          (let ((_expr44285_
                                                 (gxc#compile-e _L44264_))
                                                (_off44286_
                                                 (fx+ _off44191_
                                                      _xfields44229_
                                                      '1))
                                                (_op44287_
                                                 (if _unchecked?44190_
                                                     '%#struct-unchecked-ref
                                                     (if (if _plist44228_
                                                             (assgetq 'final:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _plist44228_)
                     '#f)
                 '%#struct-direct-ref
                 '%#struct-ref))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (gxc#xform-wrap-source
                                             (cons _op44287_
                                                   (cons (cons '%#ref
                                                               (cons _struct-t44192_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons '%#quote (cons _off44286_ '()))
                       (cons _expr44285_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _stx44173_))))
                                       (___kont4502745028_
                                        (lambda ()
                                          (gxc#raise-compile-error
                                           '"Illegal struct accessor application"
                                           _stx44173_))))
                                   (if (gx#stx-pair? ___stx4502345024_)
                                       (let ((_e4423744256_
                                              (gx#stx-e ___stx4502345024_)))
                                         (let ((_tl4423944261_
                                                (##cdr _e4423744256_))
                                               (_hd4423844259_
                                                (##car _e4423744256_)))
                                           (if (gx#stx-null? _tl4423944261_)
                                               (___kont4502545026_
                                                _hd4423844259_)
                                               (___kont4502745028_))))
                                       (___kont4502745028_))))
                               (begin
                                 (gxc#verbose
                                  '"struct-getf: incomplete struct "
                                  _struct-type-id44231_)
                                 (gxc#xform-call% _stx44173_)))))
                        (_K4420044222_
                         (lambda () (gxc#xform-call% _stx44173_))))
                    (let ((_try-match4419744225_
                           (lambda ()
                             (if (##eq? _struct-type4419544209_ '#f)
                                 (_K4420044222_)
                                 (_else4419844217_)))))
                      (if (##structure-instance-of?
                           _struct-type4419544209_
                           'gxc#!struct-type::t)
                          (let* ((_e4420244295_
                                  (##vector-ref _struct-type4419544209_ '1))
                                 (_e4420344300_
                                  (##vector-ref _struct-type4419544209_ '2))
                                 (_e4420444303_
                                  (##vector-ref _struct-type4419544209_ '3))
                                 (_e4420544308_
                                  (##vector-ref _struct-type4419544209_ '4))
                                 (_e4420644313_
                                  (##vector-ref _struct-type4419544209_ '5))
                                 (_e4420744316_
                                  (##vector-ref _struct-type4419544209_ '6)))
                            (let ((_struct-type-id44298_ _e4420244295_)
                                  (_fields44306_ _e4420444303_)
                                  (_xfields44311_ _e4420544308_)
                                  (_plist44319_ _e4420744316_))
                              (_K4420144292_
                               _plist44319_
                               _xfields44311_
                               _fields44306_
                               _struct-type-id44298_)))
                          (_try-match4419744225_))))))))
        (if (##structure-instance-of? _self4417544183_ 'gxc#!struct-getf::t)
            (let* ((_e4417944324_ (##vector-ref _self4417544183_ '1))
                   (_struct-t44327_ _e4417944324_)
                   (_e4418044329_ (##vector-ref _self4417544183_ '2))
                   (_off44332_ _e4418044329_)
                   (_e4418144334_ (##vector-ref _self4417544183_ '3))
                   (_unchecked?44337_ _e4418144334_))
              (_K4417844321_ _unchecked?44337_ _off44332_ _struct-t44327_))
            (_E4417744187_)))))
  (bind-method!
   gxc#!struct-getf::t
   'optimize-call
   gxc#!struct-getf::optimize-call
   '#f)
  (define gxc#!struct-setf::optimize-call
    (lambda (_self43866_ _stx43867_ _args43868_)
      (let* ((_self4386943877_ _self43866_)
             (_E4387143881_
              (lambda () (error '"No clause matching" _self4386943877_)))
             (_K4387244032_
              (lambda (_unchecked?43884_ _off43885_ _struct-t43886_)
                (let* ((_struct-type43888_
                        (gxc#optimizer-resolve-type _struct-t43886_))
                       (_struct-type4388943903_ _struct-type43888_)
                       (_else4389243911_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx43867_
                           _struct-t43886_
                           _struct-type43888_))))
                  (let ((_K4389544003_
                         (lambda (_plist43922_
                                  _xfields43923_
                                  _fields43924_
                                  _struct-type-id43925_)
                           (if _xfields43923_
                               (let* ((___stx4505645057_ _args43868_)
                                      (_g4392843942_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx4505645057_))))
                                 (let ((___kont4505845059_
                                        (lambda (_L43970_ _L43971_)
                                          (let ((_expr43995_
                                                 (gxc#compile-e _L43971_))
                                                (_val43996_
                                                 (gxc#compile-e _L43970_))
                                                (_off43997_
                                                 (fx+ _off43885_
                                                      _xfields43923_
                                                      '1))
                                                (_op43998_
                                                 (if _unchecked?43884_
                                                     '%#struct-unchecked-set!
                                                     (if (if _plist43922_
                                                             (assgetq 'final:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _plist43922_)
                     '#f)
                 '%#struct-direct-set!
                 '%#struct-set!))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (gxc#xform-wrap-source
                                             (cons _op43998_
                                                   (cons (cons '%#ref
                                                               (cons _struct-t43886_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons '%#quote (cons _off43997_ '()))
                       (cons _expr43995_ (cons _val43996_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _stx43867_))))
                                       (___kont4506045061_
                                        (lambda ()
                                          (gxc#raise-compile-error
                                           '"Illegal struct mutator application"
                                           _stx43867_))))
                                   (if (gx#stx-pair? ___stx4505645057_)
                                       (let ((_e4393243954_
                                              (gx#stx-e ___stx4505645057_)))
                                         (let ((_tl4393443959_
                                                (##cdr _e4393243954_))
                                               (_hd4393343957_
                                                (##car _e4393243954_)))
                                           (if (gx#stx-pair? _tl4393443959_)
                                               (let ((_e4393543962_
                                                      (gx#stx-e
                                                       _tl4393443959_)))
                                                 (let ((_tl4393743967_
                                                        (##cdr _e4393543962_))
                                                       (_hd4393643965_
                                                        (##car _e4393543962_)))
                                                   (if (gx#stx-null?
                                                        _tl4393743967_)
                                                       (___kont4505845059_
                                                        _hd4393643965_
                                                        _hd4393343957_)
                                                       (___kont4506045061_))))
                                               (___kont4506045061_))))
                                       (___kont4506045061_))))
                               (begin
                                 (gxc#verbose
                                  '"struct-setf: incomplete struct "
                                  _struct-type-id43925_)
                                 (gxc#xform-call% _stx43867_)))))
                        (_K4389443916_
                         (lambda () (gxc#xform-call% _stx43867_))))
                    (let ((_try-match4389143919_
                           (lambda ()
                             (if (##eq? _struct-type4388943903_ '#f)
                                 (_K4389443916_)
                                 (_else4389243911_)))))
                      (if (##structure-instance-of?
                           _struct-type4388943903_
                           'gxc#!struct-type::t)
                          (let* ((_e4389644006_
                                  (##vector-ref _struct-type4388943903_ '1))
                                 (_e4389744011_
                                  (##vector-ref _struct-type4388943903_ '2))
                                 (_e4389844014_
                                  (##vector-ref _struct-type4388943903_ '3))
                                 (_e4389944019_
                                  (##vector-ref _struct-type4388943903_ '4))
                                 (_e4390044024_
                                  (##vector-ref _struct-type4388943903_ '5))
                                 (_e4390144027_
                                  (##vector-ref _struct-type4388943903_ '6)))
                            (let ((_struct-type-id44009_ _e4389644006_)
                                  (_fields44017_ _e4389844014_)
                                  (_xfields44022_ _e4389944019_)
                                  (_plist44030_ _e4390144027_))
                              (_K4389544003_
                               _plist44030_
                               _xfields44022_
                               _fields44017_
                               _struct-type-id44009_)))
                          (_try-match4389143919_))))))))
        (if (##structure-instance-of? _self4386943877_ 'gxc#!struct-setf::t)
            (let* ((_e4387344035_ (##vector-ref _self4386943877_ '1))
                   (_struct-t44038_ _e4387344035_)
                   (_e4387444040_ (##vector-ref _self4386943877_ '2))
                   (_off44043_ _e4387444040_)
                   (_e4387544045_ (##vector-ref _self4386943877_ '3))
                   (_unchecked?44048_ _e4387544045_))
              (_K4387244032_ _unchecked?44048_ _off44043_ _struct-t44038_))
            (_E4387143881_)))))
  (bind-method!
   gxc#!struct-setf::t
   'optimize-call
   gxc#!struct-setf::optimize-call
   '#f)
  (define gxc#!lambda::optimize-call
    (lambda (_self43700_ _stx43701_ _args43702_)
      (let* ((_self4370343712_ _self43700_)
             (_E4370543716_
              (lambda () (error '"No clause matching" _self4370343712_)))
             (_K4370643723_
              (lambda (_inline43719_ _dispatch43720_ _arity43721_)
                (begin
                  (if (gxc#!lambda-arity-match? _self43700_ _args43702_)
                      '#!void
                      (gxc#raise-compile-error
                       '"Illegal lambda application; arity mismatch"
                       _stx43701_
                       _arity43721_))
                  (if _inline43719_
                      (begin
                        (gxc#verbose '"inline lambda")
                        (gxc#compile-e
                         (gxc#xform-wrap-source
                          (_inline43719_ _stx43701_)
                          _stx43701_)))
                      (if _dispatch43720_
                          (begin
                            (gxc#verbose
                             '"dispatch lambda => "
                             _dispatch43720_)
                            (gxc#compile-e
                             (gxc#xform-wrap-source
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons _dispatch43720_ '()))
                                          _args43702_))
                              _stx43701_)))
                          (gxc#xform-call% _stx43701_)))))))
        (if (##structure-instance-of? _self4370343712_ 'gxc#!lambda::t)
            (let* ((_e4370743726_ (##vector-ref _self4370343712_ '1))
                   (_e4370843729_ (##vector-ref _self4370343712_ '2))
                   (_arity43732_ _e4370843729_)
                   (_e4370943734_ (##vector-ref _self4370343712_ '3))
                   (_dispatch43737_ _e4370943734_)
                   (_e4371043739_ (##vector-ref _self4370343712_ '4))
                   (_inline43742_ _e4371043739_))
              (_K4370643723_ _inline43742_ _dispatch43737_ _arity43732_))
            (_E4370543716_)))))
  (bind-method! gxc#!lambda::t 'optimize-call gxc#!lambda::optimize-call '#f)
  (define gxc#!case-lambda::optimize-call
    (lambda (_self43539_ _stx43540_ _args43541_)
      (let* ((_self4354243549_ _self43539_)
             (_E4354443553_
              (lambda () (error '"No clause matching" _self4354243549_)))
             (_K4354543567_
              (lambda (_clauses43556_)
                (let ((_$e43562_
                       (find (lambda (_g4355743559_)
                               (gxc#!lambda-arity-match?
                                _g4355743559_
                                _args43541_))
                             _clauses43556_)))
                  (if _$e43562_
                      ((lambda (_clause43565_)
                         (call-method
                          _clause43565_
                          'optimize-call
                          _stx43540_
                          _args43541_))
                       _$e43562_)
                      (gxc#raise-compile-error
                       '"Illegal case-lambda application; arity mismatch"
                       _stx43540_
                       (map gxc#!lambda-arity _clauses43556_)))))))
        (if (##structure-instance-of? _self4354243549_ 'gxc#!case-lambda::t)
            (let* ((_e4354643570_ (##vector-ref _self4354243549_ '1))
                   (_e4354743573_ (##vector-ref _self4354243549_ '2))
                   (_clauses43576_ _e4354743573_))
              (_K4354543567_ _clauses43576_))
            (_E4354443553_)))))
  (bind-method!
   gxc#!case-lambda::t
   'optimize-call
   gxc#!case-lambda::optimize-call
   '#f)
  (define gxc#!lambda-arity-match?
    (lambda (_self43353_ _args43354_)
      (let* ((_self4335543362_ _self43353_)
             (_E4335743366_
              (lambda () (error '"No clause matching" _self4335543362_)))
             (_K4335843406_
              (lambda (_arity43369_)
                (let* ((_arity4337043379_ _arity43369_)
                       (_E4337343383_
                        (lambda ()
                          (error '"No clause matching" _arity4337043379_))))
                  (let ((_K4337743403_
                         (lambda () (fx= (length _args43354_) _arity43369_)))
                        (_K4337443389_
                         (lambda (_arity43387_)
                           (fx>= (length _args43354_) _arity43387_))))
                    (let ((_try-match4337243399_
                           (lambda ()
                             (if (##pair? _arity4337043379_)
                                 (let ((_tl4337643394_
                                        (##cdr _arity4337043379_))
                                       (_hd4337543392_
                                        (##car _arity4337043379_)))
                                   (if (##null? _tl4337643394_)
                                       (let ((_arity43397_ _hd4337543392_))
                                         (_K4337443389_ _arity43397_))
                                       (_E4337343383_)))
                                 (_E4337343383_)))))
                      (if (fixnum? _arity4337043379_)
                          (_K4337743403_)
                          (_try-match4337243399_))))))))
        (if (##structure-instance-of? _self4335543362_ 'gxc#!lambda::t)
            (let* ((_e4335943409_ (##vector-ref _self4335543362_ '1))
                   (_e4336043412_ (##vector-ref _self4335543362_ '2))
                   (_arity43415_ _e4336043412_))
              (_K4335843406_ _arity43415_))
            (_E4335743366_)))))
  (define gxc#!kw-lambda::optimize-call
    (lambda (_self43238_ _stx43239_ _args43240_)
      (let* ((_self4324143249_ _self43238_)
             (_E4324343253_
              (lambda () (error '"No clause matching" _self4324143249_)))
             (_K4324443337_
              (lambda (_dispatch43256_ _table43257_)
                (let* ((_g4325843267_
                        (gxc#optimizer-lookup-type _dispatch43256_))
                       (_else4326043275_
                        (lambda ()
                          (begin
                            (gxc#verbose
                             '"unknown keyword dispatch lambda "
                             _dispatch43256_)
                            (gxc#xform-call% _stx43239_))))
                       (_K4326243321_
                        (lambda (_main43278_ _keys43279_)
                          (let ((_g45221_
                                 (gxc#!kw-lambda-split-args
                                  _stx43239_
                                  _args43240_)))
                            (begin
                              (let ((_g45222_
                                     (if (##values? _g45221_)
                                         (##vector-length _g45221_)
                                         1)))
                                (if (not (##fx= _g45222_ 2))
                                    (error "Context expects 2 values"
                                           _g45222_)))
                              (let ((_pargs43281_ (##vector-ref _g45221_ 0))
                                    (_kwargs43282_ (##vector-ref _g45221_ 1)))
                                (begin
                                  (gxc#verbose
                                   '"dispatch kw-lambda => "
                                   _main43278_)
                                  (if _table43257_
                                      (let ((_xargs43289_
                                             (map (lambda (_key43284_)
                                                    (let ((_$e43286_
                                                           (assgetq _key43284_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _kwargs43282_)))
              (if _$e43286_ (values _$e43286_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _keys43279_)))
                                        (begin
                                          (for-each
                                           (lambda (_kw43291_)
                                             (if (memq (car _kw43291_)
                                                       _keys43279_)
                                                 '#!void
                                                 (gxc#raise-compile-error
                                                  '"Illegal keyword lambda application; unexpected keyword"
                                                  _stx43239_
                                                  _keys43279_
                                                  _kw43291_)))
                                           _kwargs43282_)
                                          (gxc#compile-e
                                           (gxc#xform-wrap-source
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons _main43278_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote (cons '#f '()))
                      (foldr1 cons _pargs43281_ _xargs43289_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _stx43239_))))
                                      (let* ((_kwt43293_
                                              (make-symbol (gensym '__kwt)))
                                             (_kwvars43296_
                                              (map (lambda (_g45223_)
                                                     (make-symbol
                                                      (gensym '__kw)))
                                                   _kwargs43282_))
                                             (_kwbind43301_
                                              (map (lambda (_kw43298_
                                                            _kwvar43299_)
                                                     (cons (cons _kwvar43299_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   (cons (cdr _kw43298_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs43282_
                                                   _kwvars43296_))
                                             (_kwset43306_
                                              (map (lambda (_kw43303_
                                                            _kwvar43304_)
                                                     (cons '%#call
                                                           (cons '(%#ref hash-put!)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons _kwt43293_ '()))
                               (cons (cons '%#quote (cons (car _kw43303_) '()))
                                     (cons (cons '%#ref
                                                 (cons _kwvar43304_ '()))
                                           '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs43282_
                                                   _kwvars43296_))
                                             (_xkwargs43311_
                                              (map (lambda (_kw43308_
                                                            _kwvar43309_)
                                                     (cons (car _kw43308_)
                                                           (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _kwvar43309_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs43282_
                                                   _kwvars43296_))
                                             (_xargs43318_
                                              (map (lambda (_key43313_)
                                                     (let ((_$e43315_
                                                            (assgetq _key43313_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _xkwargs43311_)))
               (if _$e43315_ (values _$e43315_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _keys43279_)))
                                        (gxc#compile-e
                                         (gxc#xform-wrap-source
                                          (cons '%#let-values
                                                (cons _kwbind43301_
                                                      (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (cons (cons _kwt43293_ '())
                                            (cons (gxc#xform-wrap-source
                                                   (cons '%#call
                                                         (cons '(%#ref make-hash-table-eq)
                                                               (cons '(%#quote size:)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons '%#quote
                                         (cons (length _kwargs43282_) '()))
                                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx43239_)
                                                  '()))
                                      '())
                                (cons (cons '%#begin
                                            (foldr1 cons
                                                    (cons (gxc#xform-wrap-source
                                                           (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons _main43278_ '()))
                               (cons (cons '%#ref (cons _kwt43293_ '()))
                                     (foldr1 cons _pargs43281_ _xargs43318_))))
                   _stx43239_)
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _kwset43306_))
                                      '())))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _stx43239_)))))))))))
                  (if (##structure-instance-of?
                       _g4325843267_
                       'gxc#!kw-lambda-primary::t)
                      (let* ((_e4326343324_ (##vector-ref _g4325843267_ '1))
                             (_e4326443327_ (##vector-ref _g4325843267_ '2))
                             (_keys43330_ _e4326443327_)
                             (_e4326543332_ (##vector-ref _g4325843267_ '3))
                             (_main43335_ _e4326543332_))
                        (_K4326243321_ _main43335_ _keys43330_))
                      (_else4326043275_))))))
        (if (##structure-instance-of? _self4324143249_ 'gxc#!kw-lambda::t)
            (let* ((_e4324543340_ (##vector-ref _self4324143249_ '1))
                   (_e4324643343_ (##vector-ref _self4324143249_ '2))
                   (_table43346_ _e4324643343_)
                   (_e4324743348_ (##vector-ref _self4324143249_ '3))
                   (_dispatch43351_ _e4324743348_))
              (_K4324443337_ _dispatch43351_ _table43346_))
            (_E4324343253_)))))
  (bind-method!
   gxc#!kw-lambda::t
   'optimize-call
   gxc#!kw-lambda::optimize-call
   '#f)
  (define gxc#!kw-lambda-split-args
    (lambda (_stx42851_ _args42852_)
      (let _lp42854_ ((_rest42856_ _args42852_)
                      (_pargs42857_ '())
                      (_kwargs42858_ '()))
        (let* ((___stx4510445105_ _rest42856_)
               (_g4286442916_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx4510445105_))))
          (let ((___kont4510645107_
                 (lambda (_L43095_ _L43096_)
                   (_lp42854_
                    _L43095_
                    (cons _L43096_ _pargs42857_)
                    _kwargs42858_)))
                (___kont4510845109_
                 (lambda (_L43041_)
                   (values (foldl1 cons _L43041_ _pargs42857_)
                           (reverse _kwargs42858_))))
                (___kont4511045111_
                 (lambda (_L42988_ _L42989_ _L42990_)
                   (let ((_kw43007_ (gx#stx-e _L42990_)))
                     (if (assq _kw43007_ _kwargs42858_)
                         (gxc#raise-compile-error
                          '"Illegal keyword lambda application; duplicate keyword"
                          _stx42851_
                          _kw43007_)
                         (_lp42854_
                          _L42988_
                          _pargs42857_
                          (cons (cons _kw43007_ _L42989_) _kwargs42858_))))))
                (___kont4511245113_
                 (lambda (_L42936_ _L42937_)
                   (_lp42854_
                    _L42936_
                    (cons _L42937_ _pargs42857_)
                    _kwargs42858_)))
                (___kont4511445115_
                 (lambda ()
                   (values (reverse _pargs42857_) (reverse _kwargs42858_)))))
            (let* ((_g4286342923_
                    (lambda ()
                      (if (gx#stx-null? ___stx4510445105_)
                          (___kont4511445115_)
                          (_g4286442916_))))
                   (___match4521145212_
                    (lambda (_e4289542956_
                             _hd4289642959_
                             _tl4289742961_
                             _e4289842964_
                             _hd4289942967_
                             _tl4290042969_
                             _e4290142972_
                             _hd4290242975_
                             _tl4290342977_
                             _e4290442980_
                             _hd4290542983_
                             _tl4290642985_)
                      (let ((_L42988_ _tl4290642985_)
                            (_L42989_ _hd4290542983_)
                            (_L42990_ _hd4290242975_))
                        (if (gx#stx-keyword? _L42990_)
                            (___kont4511045111_ _L42988_ _L42989_ _L42990_)
                            (___kont4511245113_
                             _tl4289742961_
                             _hd4289642959_))))))
              (if (gx#stx-pair? ___stx4510445105_)
                  (let ((_e4286843060_ (gx#stx-e ___stx4510445105_)))
                    (let ((_tl4287043065_ (##cdr _e4286843060_))
                          (_hd4286943063_ (##car _e4286843060_)))
                      (if (gx#stx-pair? _hd4286943063_)
                          (let ((_e4287143068_ (gx#stx-e _hd4286943063_)))
                            (let ((_tl4287343073_ (##cdr _e4287143068_))
                                  (_hd4287243071_ (##car _e4287143068_)))
                              (if (gx#identifier? _hd4287243071_)
                                  (if (gx#stx-eq? '%#quote _hd4287243071_)
                                      (if (gx#stx-pair? _tl4287343073_)
                                          (let ((_e4287443076_
                                                 (gx#stx-e _tl4287343073_)))
                                            (let ((_tl4287643081_
                                                   (##cdr _e4287443076_))
                                                  (_hd4287543079_
                                                   (##car _e4287443076_)))
                                              (if (gx#stx-datum?
                                                   _hd4287543079_)
                                                  (let ((_e4287743084_
                                                         (gx#stx-e
                                                          _hd4287543079_)))
                                                    (if (equal? _e4287743084_
                                                                '#!key)
                                                        (if (gx#stx-null?
                                                             _tl4287643081_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl4287043065_)
                        (let ((_e4287843087_ (gx#stx-e _tl4287043065_)))
                          (let ((_tl4288043092_ (##cdr _e4287843087_))
                                (_hd4287943090_ (##car _e4287843087_)))
                            (___kont4510645107_
                             _tl4288043092_
                             _hd4287943090_)))
                        (___kont4511245113_ _tl4287043065_ _hd4286943063_))
                    (___kont4511245113_ _tl4287043065_ _hd4286943063_))
                (if (equal? _e4287743084_ '#!rest)
                    (if (gx#stx-null? _tl4287643081_)
                        (___kont4510845109_ _tl4287043065_)
                        (___kont4511245113_ _tl4287043065_ _hd4286943063_))
                    (if (gx#stx-null? _tl4287643081_)
                        (if (gx#stx-pair? _tl4287043065_)
                            (let ((_e4290442980_ (gx#stx-e _tl4287043065_)))
                              (let ((_tl4290642985_ (##cdr _e4290442980_))
                                    (_hd4290542983_ (##car _e4290442980_)))
                                (___match4521145212_
                                 _e4286843060_
                                 _hd4286943063_
                                 _tl4287043065_
                                 _e4287143068_
                                 _hd4287243071_
                                 _tl4287343073_
                                 _e4287443076_
                                 _hd4287543079_
                                 _tl4287643081_
                                 _e4290442980_
                                 _hd4290542983_
                                 _tl4290642985_)))
                            (___kont4511245113_ _tl4287043065_ _hd4286943063_))
                        (___kont4511245113_ _tl4287043065_ _hd4286943063_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _tl4287643081_)
                                                      (if (gx#stx-pair?
                                                           _tl4287043065_)
                                                          (let ((_e4290442980_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl4287043065_)))
                    (let ((_tl4290642985_ (##cdr _e4290442980_))
                          (_hd4290542983_ (##car _e4290442980_)))
                      (___match4521145212_
                       _e4286843060_
                       _hd4286943063_
                       _tl4287043065_
                       _e4287143068_
                       _hd4287243071_
                       _tl4287343073_
                       _e4287443076_
                       _hd4287543079_
                       _tl4287643081_
                       _e4290442980_
                       _hd4290542983_
                       _tl4290642985_)))
                  (___kont4511245113_ _tl4287043065_ _hd4286943063_))
              (___kont4511245113_ _tl4287043065_ _hd4286943063_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (___kont4511245113_
                                           _tl4287043065_
                                           _hd4286943063_))
                                      (___kont4511245113_
                                       _tl4287043065_
                                       _hd4286943063_))
                                  (___kont4511245113_
                                   _tl4287043065_
                                   _hd4286943063_))))
                          (___kont4511245113_ _tl4287043065_ _hd4286943063_))))
                  (_g4286342923_))))))))
  (define gxc#!kw-lambda-primary::optimize-call
    (lambda (_self42847_ _stx42848_ _args42849_) (gxc#xform-call% _stx42848_)))
  (bind-method!
   gxc#!kw-lambda-primary::t
   'optimize-call
   gxc#!kw-lambda-primary::optimize-call
   '#f))
