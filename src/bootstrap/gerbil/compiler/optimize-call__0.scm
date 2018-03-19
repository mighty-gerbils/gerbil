(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#&optimize-call
    (make-promise
     (lambda ()
       (let ((_tbl44918_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl44918_ (force gxc#&basic-xform))
           (table-set! _tbl44918_ '%#call gxc#optimize-call%)
           _tbl44918_)))))
  (define gxc#apply-optimize-call
    (lambda (_stx44911_ . _args44913_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx44911_ _args44913_))
       gxc#current-compile-methods
       (force gxc#&optimize-call))))
  (define gxc#optimize-call%
    (lambda (_stx44817_)
      (let* ((___stx4492144922_ _stx44817_)
             (_g4482044840_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4492144922_))))
        (let ((___kont4492344924_
               (lambda (_L44884_ _L44885_)
                 (let* ((_rator-id44903_ (gxc#identifier-symbol _L44885_))
                        (_rator-type44905_
                         (gxc#optimizer-resolve-type _rator-id44903_)))
                   (if (##structure-instance-of?
                        _rator-type44905_
                        'gxc#!procedure::t)
                       (begin
                         (gxc#verbose
                          '"optimize-call "
                          _rator-id44903_
                          '" => "
                          _rator-type44905_
                          '" "
                          (##structure-ref
                           _rator-type44905_
                           '1
                           gxc#!type::t
                           '#f))
                         (call-method
                          _rator-type44905_
                          'optimize-call
                          _stx44817_
                          _L44884_))
                       (if (not _rator-type44905_)
                           (gxc#xform-call% _stx44817_)
                           (gxc#raise-compile-error
                            '"Illegal application; not a procedure"
                            _stx44817_
                            _rator-type44905_))))))
              (___kont4492544926_ (lambda () (gxc#xform-call% _stx44817_))))
          (if (gx#stx-pair? ___stx4492144922_)
              (let ((_e4482444852_ (gx#stx-e ___stx4492144922_)))
                (let ((_tl4482644857_ (##cdr _e4482444852_))
                      (_hd4482544855_ (##car _e4482444852_)))
                  (if (gx#stx-pair? _tl4482644857_)
                      (let ((_e4482744860_ (gx#stx-e _tl4482644857_)))
                        (let ((_tl4482944865_ (##cdr _e4482744860_))
                              (_hd4482844863_ (##car _e4482744860_)))
                          (if (gx#stx-pair? _hd4482844863_)
                              (let ((_e4483044868_ (gx#stx-e _hd4482844863_)))
                                (let ((_tl4483244873_ (##cdr _e4483044868_))
                                      (_hd4483144871_ (##car _e4483044868_)))
                                  (if (gx#identifier? _hd4483144871_)
                                      (if (gx#stx-eq? '%#ref _hd4483144871_)
                                          (if (gx#stx-pair? _tl4483244873_)
                                              (let ((_e4483344876_
                                                     (gx#stx-e
                                                      _tl4483244873_)))
                                                (let ((_tl4483544881_
                                                       (##cdr _e4483344876_))
                                                      (_hd4483444879_
                                                       (##car _e4483344876_)))
                                                  (if (gx#stx-null?
                                                       _tl4483544881_)
                                                      (___kont4492344924_
                                                       _tl4482944865_
                                                       _hd4483444879_)
                                                      (___kont4492544926_))))
                                              (___kont4492544926_))
                                          (___kont4492544926_))
                                      (___kont4492544926_))))
                              (___kont4492544926_))))
                      (___kont4492544926_))))
              (___kont4492544926_))))))
  (define gxc#!struct-pred::optimize-call
    (lambda (_self44671_ _stx44672_ _args44673_)
      (let* ((_self4467444680_ _self44671_)
             (_E4467644684_
              (lambda () (error '"No clause matching" _self4467444680_)))
             (_K4467744809_
              (lambda (_struct-t44687_)
                (let* ((_struct-type44689_
                        (gxc#optimizer-resolve-type _struct-t44687_))
                       (_struct-type4469044704_ _struct-type44689_)
                       (_else4469344712_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx44672_
                           _struct-t44687_
                           _struct-type44689_))))
                  (let ((_K4469644784_
                         (lambda (_plist44723_ _struct-type-id44724_)
                           (let* ((___stx4495944960_ _args44673_)
                                  (_g4472744737_
                                   (lambda ()
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      ___stx4495944960_))))
                             (let ((___kont4496144962_
                                    (lambda (_L44757_)
                                      (let ((_expr44778_
                                             (gxc#compile-e _L44757_))
                                            (_op44779_
                                             (if (if _plist44723_
                                                     (assgetq 'final:
                                                              _plist44723_)
                                                     '#f)
                                                 '%#struct-direct-instance?
                                                 '%#struct-instance?)))
                                        (gxc#xform-wrap-source
                                         (cons _op44779_
                                               (cons (cons '%#quote
                                                           (cons _struct-type-id44724_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _expr44778_ '())))
                                         _stx44672_))))
                                   (___kont4496344964_
                                    (lambda ()
                                      (gxc#raise-compile-error
                                       '"Illegal struct predicate application"
                                       _stx44672_))))
                               (if (gx#stx-pair? ___stx4495944960_)
                                   (let ((_e4473044749_
                                          (gx#stx-e ___stx4495944960_)))
                                     (let ((_tl4473244754_
                                            (##cdr _e4473044749_))
                                           (_hd4473144752_
                                            (##car _e4473044749_)))
                                       (if (gx#stx-null? _tl4473244754_)
                                           (___kont4496144962_ _hd4473144752_)
                                           (___kont4496344964_))))
                                   (___kont4496344964_))))))
                        (_K4469544717_
                         (lambda () (gxc#xform-call% _stx44672_))))
                    (let ((_try-match4469244720_
                           (lambda ()
                             (if (##eq? _struct-type4469044704_ '#f)
                                 (_K4469544717_)
                                 (_else4469344712_)))))
                      (if (##structure-instance-of?
                           _struct-type4469044704_
                           'gxc#!struct-type::t)
                          (let* ((_e4469744787_
                                  (##vector-ref _struct-type4469044704_ '1))
                                 (_e4469844792_
                                  (##vector-ref _struct-type4469044704_ '2))
                                 (_e4469944795_
                                  (##vector-ref _struct-type4469044704_ '3))
                                 (_e4470044798_
                                  (##vector-ref _struct-type4469044704_ '4))
                                 (_e4470144801_
                                  (##vector-ref _struct-type4469044704_ '5))
                                 (_e4470244804_
                                  (##vector-ref _struct-type4469044704_ '6)))
                            (let ((_struct-type-id44790_ _e4469744787_)
                                  (_plist44807_ _e4470244804_))
                              (_K4469644784_
                               _plist44807_
                               _struct-type-id44790_)))
                          (_try-match4469244720_))))))))
        (if (##structure-instance-of? _self4467444680_ 'gxc#!struct-pred::t)
            (let* ((_e4467844812_ (##vector-ref _self4467444680_ '1))
                   (_struct-t44815_ _e4467844812_))
              (_K4467744809_ _struct-t44815_))
            (_E4467644684_)))))
  (bind-method!
   gxc#!struct-pred::t
   'optimize-call
   gxc#!struct-pred::optimize-call
   '#f)
  (define gxc#!struct-cons::optimize-call
    (lambda (_self44445_ _stx44446_ _args44447_)
      (let* ((_self4444844454_ _self44445_)
             (_E4445044458_
              (lambda () (error '"No clause matching" _self4444844454_)))
             (_K4445144541_
              (lambda (_struct-t44461_)
                (let* ((_struct-type44463_
                        (gxc#optimizer-resolve-type _struct-t44461_))
                       (_struct-type4446444477_ _struct-type44463_)
                       (_else4446744485_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct constructor application; not a struct type"
                           _stx44446_
                           _struct-t44461_
                           _struct-type44463_))))
                  (let ((_K4447044515_
                         (lambda (_ctor44496_
                                  _xfields44497_
                                  _fields44498_
                                  _type-id44499_)
                           (let* ((_args44501_ (map gxc#compile-e _args44447_))
                                  (_$e44503_
                                   (if _ctor44496_
                                       (if _xfields44497_
                                           (gxc#!struct-type-lookup-method
                                            _struct-type44463_
                                            _ctor44496_)
                                           '#f)
                                       '#f)))
                             (if _$e44503_
                                 ((lambda (_kons44506_)
                                    (let ((_$obj44508_
                                           (make-symbol (gensym '__obj))))
                                      (gxc#xform-wrap-source
                                       (cons '%#let-values
                                             (cons (cons (cons (cons _$obj44508_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons (cons '%#call
                                   (cons (cons '%#ref (cons 'make-object '()))
                                         (cons (cons '%#ref
                                                     (cons _struct-t44461_
                                                           '()))
                                               (cons (cons '%#quote
                                                           (cons (fx+ _fields44498_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _xfields44497_)
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
                                     (cons (cons '%#ref (cons _kons44506_ '()))
                                           (cons (cons '%#ref
                                                       (cons _$obj44508_ '()))
                                                 _args44501_)))
                               _stx44446_))
                             (cons (cons '%#ref (cons _$obj44508_ '())) '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _stx44446_)))
                                  _$e44503_)
                                 (if (let ((_$e44510_ _ctor44496_))
                                       (if _$e44510_
                                           _$e44510_
                                           (not _xfields44497_)))
                                     (gxc#xform-wrap-source
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons 'make-struct-instance
                                                              '()))
                                                  (cons (cons '%#ref
                                                              (cons _struct-t44461_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _args44501_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _stx44446_)
                                     (let ((_arity44513_
                                            (fx+ _fields44498_
                                                 _xfields44497_)))
                                       (if (fx= _arity44513_
                                                (length _args44501_))
                                           (gxc#xform-wrap-source
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#ref (cons _struct-t44461_ '())) _args44501_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _stx44446_)
                                           (gxc#raise-compile-error
                                            '"Illegal struct constructor application; arity mismatch"
                                            _stx44446_
                                            _struct-t44461_
                                            _arity44513_))))))))
                        (_K4446944490_
                         (lambda ()
                           (begin
                             (gxc#verbose
                              '"cannot inline struct constructor; unknown struct type "
                              _struct-t44461_)
                             (gxc#xform-call% _stx44446_)))))
                    (let ((_try-match4446644493_
                           (lambda ()
                             (if (##eq? _struct-type4446444477_ '#f)
                                 (_K4446944490_)
                                 (_else4446744485_)))))
                      (if (##structure-instance-of?
                           _struct-type4446444477_
                           'gxc#!struct-type::t)
                          (let* ((_e4447144518_
                                  (##vector-ref _struct-type4446444477_ '1))
                                 (_e4447244523_
                                  (##vector-ref _struct-type4446444477_ '2))
                                 (_e4447344526_
                                  (##vector-ref _struct-type4446444477_ '3))
                                 (_e4447444531_
                                  (##vector-ref _struct-type4446444477_ '4))
                                 (_e4447544536_
                                  (##vector-ref _struct-type4446444477_ '5)))
                            (let ((_type-id44521_ _e4447144518_)
                                  (_fields44529_ _e4447344526_)
                                  (_xfields44534_ _e4447444531_)
                                  (_ctor44539_ _e4447544536_))
                              (_K4447044515_
                               _ctor44539_
                               _xfields44534_
                               _fields44529_
                               _type-id44521_)))
                          (_try-match4446644493_))))))))
        (if (##structure-instance-of? _self4444844454_ 'gxc#!struct-cons::t)
            (let* ((_e4445244544_ (##vector-ref _self4444844454_ '1))
                   (_struct-t44547_ _e4445244544_))
              (_K4445144541_ _struct-t44547_))
            (_E4445044458_)))))
  (bind-method!
   gxc#!struct-cons::t
   'optimize-call
   gxc#!struct-cons::optimize-call
   '#f)
  (define gxc#!struct-getf::optimize-call
    (lambda (_self44156_ _stx44157_ _args44158_)
      (let* ((_self4415944167_ _self44156_)
             (_E4416144171_
              (lambda () (error '"No clause matching" _self4415944167_)))
             (_K4416244305_
              (lambda (_unchecked?44174_ _off44175_ _struct-t44176_)
                (let* ((_struct-type44178_
                        (gxc#optimizer-resolve-type _struct-t44176_))
                       (_struct-type4417944193_ _struct-type44178_)
                       (_else4418244201_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx44157_
                           _struct-t44176_
                           _struct-type44178_))))
                  (let ((_K4418544276_
                         (lambda (_plist44212_
                                  _xfields44213_
                                  _fields44214_
                                  _struct-type-id44215_)
                           (if _xfields44213_
                               (let* ((___stx4500745008_ _args44158_)
                                      (_g4421844228_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx4500745008_))))
                                 (let ((___kont4500945010_
                                        (lambda (_L44248_)
                                          (let ((_expr44269_
                                                 (gxc#compile-e _L44248_))
                                                (_off44270_
                                                 (fx+ _off44175_
                                                      _xfields44213_
                                                      '1))
                                                (_op44271_
                                                 (if _unchecked?44174_
                                                     '%#struct-unchecked-ref
                                                     (if (if _plist44212_
                                                             (assgetq 'final:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _plist44212_)
                     '#f)
                 '%#struct-direct-ref
                 '%#struct-ref))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (gxc#xform-wrap-source
                                             (cons _op44271_
                                                   (cons (cons '%#ref
                                                               (cons _struct-t44176_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons '%#quote (cons _off44270_ '()))
                       (cons _expr44269_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _stx44157_))))
                                       (___kont4501145012_
                                        (lambda ()
                                          (gxc#raise-compile-error
                                           '"Illegal struct accessor application"
                                           _stx44157_))))
                                   (if (gx#stx-pair? ___stx4500745008_)
                                       (let ((_e4422144240_
                                              (gx#stx-e ___stx4500745008_)))
                                         (let ((_tl4422344245_
                                                (##cdr _e4422144240_))
                                               (_hd4422244243_
                                                (##car _e4422144240_)))
                                           (if (gx#stx-null? _tl4422344245_)
                                               (___kont4500945010_
                                                _hd4422244243_)
                                               (___kont4501145012_))))
                                       (___kont4501145012_))))
                               (begin
                                 (gxc#verbose
                                  '"struct-getf: incomplete struct "
                                  _struct-type-id44215_)
                                 (gxc#xform-call% _stx44157_)))))
                        (_K4418444206_
                         (lambda () (gxc#xform-call% _stx44157_))))
                    (let ((_try-match4418144209_
                           (lambda ()
                             (if (##eq? _struct-type4417944193_ '#f)
                                 (_K4418444206_)
                                 (_else4418244201_)))))
                      (if (##structure-instance-of?
                           _struct-type4417944193_
                           'gxc#!struct-type::t)
                          (let* ((_e4418644279_
                                  (##vector-ref _struct-type4417944193_ '1))
                                 (_e4418744284_
                                  (##vector-ref _struct-type4417944193_ '2))
                                 (_e4418844287_
                                  (##vector-ref _struct-type4417944193_ '3))
                                 (_e4418944292_
                                  (##vector-ref _struct-type4417944193_ '4))
                                 (_e4419044297_
                                  (##vector-ref _struct-type4417944193_ '5))
                                 (_e4419144300_
                                  (##vector-ref _struct-type4417944193_ '6)))
                            (let ((_struct-type-id44282_ _e4418644279_)
                                  (_fields44290_ _e4418844287_)
                                  (_xfields44295_ _e4418944292_)
                                  (_plist44303_ _e4419144300_))
                              (_K4418544276_
                               _plist44303_
                               _xfields44295_
                               _fields44290_
                               _struct-type-id44282_)))
                          (_try-match4418144209_))))))))
        (if (##structure-instance-of? _self4415944167_ 'gxc#!struct-getf::t)
            (let* ((_e4416344308_ (##vector-ref _self4415944167_ '1))
                   (_struct-t44311_ _e4416344308_)
                   (_e4416444313_ (##vector-ref _self4415944167_ '2))
                   (_off44316_ _e4416444313_)
                   (_e4416544318_ (##vector-ref _self4415944167_ '3))
                   (_unchecked?44321_ _e4416544318_))
              (_K4416244305_ _unchecked?44321_ _off44316_ _struct-t44311_))
            (_E4416144171_)))))
  (bind-method!
   gxc#!struct-getf::t
   'optimize-call
   gxc#!struct-getf::optimize-call
   '#f)
  (define gxc#!struct-setf::optimize-call
    (lambda (_self43850_ _stx43851_ _args43852_)
      (let* ((_self4385343861_ _self43850_)
             (_E4385543865_
              (lambda () (error '"No clause matching" _self4385343861_)))
             (_K4385644016_
              (lambda (_unchecked?43868_ _off43869_ _struct-t43870_)
                (let* ((_struct-type43872_
                        (gxc#optimizer-resolve-type _struct-t43870_))
                       (_struct-type4387343887_ _struct-type43872_)
                       (_else4387643895_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx43851_
                           _struct-t43870_
                           _struct-type43872_))))
                  (let ((_K4387943987_
                         (lambda (_plist43906_
                                  _xfields43907_
                                  _fields43908_
                                  _struct-type-id43909_)
                           (if _xfields43907_
                               (let* ((___stx4504045041_ _args43852_)
                                      (_g4391243926_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx4504045041_))))
                                 (let ((___kont4504245043_
                                        (lambda (_L43954_ _L43955_)
                                          (let ((_expr43979_
                                                 (gxc#compile-e _L43955_))
                                                (_val43980_
                                                 (gxc#compile-e _L43954_))
                                                (_off43981_
                                                 (fx+ _off43869_
                                                      _xfields43907_
                                                      '1))
                                                (_op43982_
                                                 (if _unchecked?43868_
                                                     '%#struct-unchecked-set!
                                                     (if (if _plist43906_
                                                             (assgetq 'final:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _plist43906_)
                     '#f)
                 '%#struct-direct-set!
                 '%#struct-set!))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (gxc#xform-wrap-source
                                             (cons _op43982_
                                                   (cons (cons '%#ref
                                                               (cons _struct-t43870_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons '%#quote (cons _off43981_ '()))
                       (cons _expr43979_ (cons _val43980_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _stx43851_))))
                                       (___kont4504445045_
                                        (lambda ()
                                          (gxc#raise-compile-error
                                           '"Illegal struct mutator application"
                                           _stx43851_))))
                                   (if (gx#stx-pair? ___stx4504045041_)
                                       (let ((_e4391643938_
                                              (gx#stx-e ___stx4504045041_)))
                                         (let ((_tl4391843943_
                                                (##cdr _e4391643938_))
                                               (_hd4391743941_
                                                (##car _e4391643938_)))
                                           (if (gx#stx-pair? _tl4391843943_)
                                               (let ((_e4391943946_
                                                      (gx#stx-e
                                                       _tl4391843943_)))
                                                 (let ((_tl4392143951_
                                                        (##cdr _e4391943946_))
                                                       (_hd4392043949_
                                                        (##car _e4391943946_)))
                                                   (if (gx#stx-null?
                                                        _tl4392143951_)
                                                       (___kont4504245043_
                                                        _hd4392043949_
                                                        _hd4391743941_)
                                                       (___kont4504445045_))))
                                               (___kont4504445045_))))
                                       (___kont4504445045_))))
                               (begin
                                 (gxc#verbose
                                  '"struct-setf: incomplete struct "
                                  _struct-type-id43909_)
                                 (gxc#xform-call% _stx43851_)))))
                        (_K4387843900_
                         (lambda () (gxc#xform-call% _stx43851_))))
                    (let ((_try-match4387543903_
                           (lambda ()
                             (if (##eq? _struct-type4387343887_ '#f)
                                 (_K4387843900_)
                                 (_else4387643895_)))))
                      (if (##structure-instance-of?
                           _struct-type4387343887_
                           'gxc#!struct-type::t)
                          (let* ((_e4388043990_
                                  (##vector-ref _struct-type4387343887_ '1))
                                 (_e4388143995_
                                  (##vector-ref _struct-type4387343887_ '2))
                                 (_e4388243998_
                                  (##vector-ref _struct-type4387343887_ '3))
                                 (_e4388344003_
                                  (##vector-ref _struct-type4387343887_ '4))
                                 (_e4388444008_
                                  (##vector-ref _struct-type4387343887_ '5))
                                 (_e4388544011_
                                  (##vector-ref _struct-type4387343887_ '6)))
                            (let ((_struct-type-id43993_ _e4388043990_)
                                  (_fields44001_ _e4388243998_)
                                  (_xfields44006_ _e4388344003_)
                                  (_plist44014_ _e4388544011_))
                              (_K4387943987_
                               _plist44014_
                               _xfields44006_
                               _fields44001_
                               _struct-type-id43993_)))
                          (_try-match4387543903_))))))))
        (if (##structure-instance-of? _self4385343861_ 'gxc#!struct-setf::t)
            (let* ((_e4385744019_ (##vector-ref _self4385343861_ '1))
                   (_struct-t44022_ _e4385744019_)
                   (_e4385844024_ (##vector-ref _self4385343861_ '2))
                   (_off44027_ _e4385844024_)
                   (_e4385944029_ (##vector-ref _self4385343861_ '3))
                   (_unchecked?44032_ _e4385944029_))
              (_K4385644016_ _unchecked?44032_ _off44027_ _struct-t44022_))
            (_E4385543865_)))))
  (bind-method!
   gxc#!struct-setf::t
   'optimize-call
   gxc#!struct-setf::optimize-call
   '#f)
  (define gxc#!lambda::optimize-call
    (lambda (_self43684_ _stx43685_ _args43686_)
      (let* ((_self4368743696_ _self43684_)
             (_E4368943700_
              (lambda () (error '"No clause matching" _self4368743696_)))
             (_K4369043707_
              (lambda (_inline43703_ _dispatch43704_ _arity43705_)
                (begin
                  (if (gxc#!lambda-arity-match? _self43684_ _args43686_)
                      '#!void
                      (gxc#raise-compile-error
                       '"Illegal lambda application; arity mismatch"
                       _stx43685_
                       _arity43705_))
                  (if _inline43703_
                      (begin
                        (gxc#verbose '"inline lambda")
                        (gxc#compile-e
                         (gxc#xform-wrap-source
                          (_inline43703_ _stx43685_)
                          _stx43685_)))
                      (if _dispatch43704_
                          (begin
                            (gxc#verbose
                             '"dispatch lambda => "
                             _dispatch43704_)
                            (gxc#compile-e
                             (gxc#xform-wrap-source
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons _dispatch43704_ '()))
                                          _args43686_))
                              _stx43685_)))
                          (gxc#xform-call% _stx43685_)))))))
        (if (##structure-instance-of? _self4368743696_ 'gxc#!lambda::t)
            (let* ((_e4369143710_ (##vector-ref _self4368743696_ '1))
                   (_e4369243713_ (##vector-ref _self4368743696_ '2))
                   (_arity43716_ _e4369243713_)
                   (_e4369343718_ (##vector-ref _self4368743696_ '3))
                   (_dispatch43721_ _e4369343718_)
                   (_e4369443723_ (##vector-ref _self4368743696_ '4))
                   (_inline43726_ _e4369443723_))
              (_K4369043707_ _inline43726_ _dispatch43721_ _arity43716_))
            (_E4368943700_)))))
  (bind-method! gxc#!lambda::t 'optimize-call gxc#!lambda::optimize-call '#f)
  (define gxc#!case-lambda::optimize-call
    (lambda (_self43523_ _stx43524_ _args43525_)
      (let* ((_self4352643533_ _self43523_)
             (_E4352843537_
              (lambda () (error '"No clause matching" _self4352643533_)))
             (_K4352943551_
              (lambda (_clauses43540_)
                (let ((_$e43546_
                       (find (lambda (_g4354143543_)
                               (gxc#!lambda-arity-match?
                                _g4354143543_
                                _args43525_))
                             _clauses43540_)))
                  (if _$e43546_
                      ((lambda (_clause43549_)
                         (call-method
                          _clause43549_
                          'optimize-call
                          _stx43524_
                          _args43525_))
                       _$e43546_)
                      (gxc#raise-compile-error
                       '"Illegal case-lambda application; arity mismatch"
                       _stx43524_
                       (map gxc#!lambda-arity _clauses43540_)))))))
        (if (##structure-instance-of? _self4352643533_ 'gxc#!case-lambda::t)
            (let* ((_e4353043554_ (##vector-ref _self4352643533_ '1))
                   (_e4353143557_ (##vector-ref _self4352643533_ '2))
                   (_clauses43560_ _e4353143557_))
              (_K4352943551_ _clauses43560_))
            (_E4352843537_)))))
  (bind-method!
   gxc#!case-lambda::t
   'optimize-call
   gxc#!case-lambda::optimize-call
   '#f)
  (define gxc#!lambda-arity-match?
    (lambda (_self43337_ _args43338_)
      (let* ((_self4333943346_ _self43337_)
             (_E4334143350_
              (lambda () (error '"No clause matching" _self4333943346_)))
             (_K4334243390_
              (lambda (_arity43353_)
                (let* ((_arity4335443363_ _arity43353_)
                       (_E4335743367_
                        (lambda ()
                          (error '"No clause matching" _arity4335443363_))))
                  (let ((_K4336143387_
                         (lambda () (fx= (length _args43338_) _arity43353_)))
                        (_K4335843373_
                         (lambda (_arity43371_)
                           (fx>= (length _args43338_) _arity43371_))))
                    (let ((_try-match4335643383_
                           (lambda ()
                             (if (##pair? _arity4335443363_)
                                 (let ((_tl4336043378_
                                        (##cdr _arity4335443363_))
                                       (_hd4335943376_
                                        (##car _arity4335443363_)))
                                   (if (##null? _tl4336043378_)
                                       (let ((_arity43381_ _hd4335943376_))
                                         (_K4335843373_ _arity43381_))
                                       (_E4335743367_)))
                                 (_E4335743367_)))))
                      (if (fixnum? _arity4335443363_)
                          (_K4336143387_)
                          (_try-match4335643383_))))))))
        (if (##structure-instance-of? _self4333943346_ 'gxc#!lambda::t)
            (let* ((_e4334343393_ (##vector-ref _self4333943346_ '1))
                   (_e4334443396_ (##vector-ref _self4333943346_ '2))
                   (_arity43399_ _e4334443396_))
              (_K4334243390_ _arity43399_))
            (_E4334143350_)))))
  (define gxc#!kw-lambda::optimize-call
    (lambda (_self43222_ _stx43223_ _args43224_)
      (let* ((_self4322543233_ _self43222_)
             (_E4322743237_
              (lambda () (error '"No clause matching" _self4322543233_)))
             (_K4322843321_
              (lambda (_dispatch43240_ _table43241_)
                (let* ((_g4324243251_
                        (gxc#optimizer-lookup-type _dispatch43240_))
                       (_else4324443259_
                        (lambda ()
                          (begin
                            (gxc#verbose
                             '"unknown keyword dispatch lambda "
                             _dispatch43240_)
                            (gxc#xform-call% _stx43223_))))
                       (_K4324643305_
                        (lambda (_main43262_ _keys43263_)
                          (let ((_g45205_
                                 (gxc#!kw-lambda-split-args
                                  _stx43223_
                                  _args43224_)))
                            (begin
                              (let ((_g45206_
                                     (if (##values? _g45205_)
                                         (##vector-length _g45205_)
                                         1)))
                                (if (not (##fx= _g45206_ 2))
                                    (error "Context expects 2 values"
                                           _g45206_)))
                              (let ((_pargs43265_ (##vector-ref _g45205_ 0))
                                    (_kwargs43266_ (##vector-ref _g45205_ 1)))
                                (begin
                                  (gxc#verbose
                                   '"dispatch kw-lambda => "
                                   _main43262_)
                                  (if _table43241_
                                      (let ((_xargs43273_
                                             (map (lambda (_key43268_)
                                                    (let ((_$e43270_
                                                           (assgetq _key43268_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _kwargs43266_)))
              (if _$e43270_ (values _$e43270_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _keys43263_)))
                                        (begin
                                          (for-each
                                           (lambda (_kw43275_)
                                             (if (memq (car _kw43275_)
                                                       _keys43263_)
                                                 '#!void
                                                 (gxc#raise-compile-error
                                                  '"Illegal keyword lambda application; unexpected keyword"
                                                  _stx43223_
                                                  _keys43263_
                                                  _kw43275_)))
                                           _kwargs43266_)
                                          (gxc#compile-e
                                           (gxc#xform-wrap-source
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons _main43262_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote (cons '#f '()))
                      (foldr1 cons _pargs43265_ _xargs43273_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _stx43223_))))
                                      (let* ((_kwt43277_
                                              (make-symbol (gensym '__kwt)))
                                             (_kwvars43280_
                                              (map (lambda (_g45207_)
                                                     (make-symbol
                                                      (gensym '__kw)))
                                                   _kwargs43266_))
                                             (_kwbind43285_
                                              (map (lambda (_kw43282_
                                                            _kwvar43283_)
                                                     (cons (cons _kwvar43283_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   (cons (cdr _kw43282_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs43266_
                                                   _kwvars43280_))
                                             (_kwset43290_
                                              (map (lambda (_kw43287_
                                                            _kwvar43288_)
                                                     (cons '%#call
                                                           (cons '(%#ref hash-put!)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons _kwt43277_ '()))
                               (cons (cons '%#quote (cons (car _kw43287_) '()))
                                     (cons (cons '%#ref
                                                 (cons _kwvar43288_ '()))
                                           '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs43266_
                                                   _kwvars43280_))
                                             (_xkwargs43295_
                                              (map (lambda (_kw43292_
                                                            _kwvar43293_)
                                                     (cons (car _kw43292_)
                                                           (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _kwvar43293_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs43266_
                                                   _kwvars43280_))
                                             (_xargs43302_
                                              (map (lambda (_key43297_)
                                                     (let ((_$e43299_
                                                            (assgetq _key43297_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _xkwargs43295_)))
               (if _$e43299_ (values _$e43299_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _keys43263_)))
                                        (gxc#compile-e
                                         (gxc#xform-wrap-source
                                          (cons '%#let-values
                                                (cons _kwbind43285_
                                                      (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (cons (cons _kwt43277_ '())
                                            (cons (gxc#xform-wrap-source
                                                   (cons '%#call
                                                         (cons '(%#ref make-hash-table-eq)
                                                               (cons '(%#quote size:)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons '%#quote
                                         (cons (length _kwargs43266_) '()))
                                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx43223_)
                                                  '()))
                                      '())
                                (cons (cons '%#begin
                                            (foldr1 cons
                                                    (cons (gxc#xform-wrap-source
                                                           (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons _main43262_ '()))
                               (cons (cons '%#ref (cons _kwt43277_ '()))
                                     (foldr1 cons _pargs43265_ _xargs43302_))))
                   _stx43223_)
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _kwset43290_))
                                      '())))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _stx43223_)))))))))))
                  (if (##structure-instance-of?
                       _g4324243251_
                       'gxc#!kw-lambda-primary::t)
                      (let* ((_e4324743308_ (##vector-ref _g4324243251_ '1))
                             (_e4324843311_ (##vector-ref _g4324243251_ '2))
                             (_keys43314_ _e4324843311_)
                             (_e4324943316_ (##vector-ref _g4324243251_ '3))
                             (_main43319_ _e4324943316_))
                        (_K4324643305_ _main43319_ _keys43314_))
                      (_else4324443259_))))))
        (if (##structure-instance-of? _self4322543233_ 'gxc#!kw-lambda::t)
            (let* ((_e4322943324_ (##vector-ref _self4322543233_ '1))
                   (_e4323043327_ (##vector-ref _self4322543233_ '2))
                   (_table43330_ _e4323043327_)
                   (_e4323143332_ (##vector-ref _self4322543233_ '3))
                   (_dispatch43335_ _e4323143332_))
              (_K4322843321_ _dispatch43335_ _table43330_))
            (_E4322743237_)))))
  (bind-method!
   gxc#!kw-lambda::t
   'optimize-call
   gxc#!kw-lambda::optimize-call
   '#f)
  (define gxc#!kw-lambda-split-args
    (lambda (_stx42835_ _args42836_)
      (let _lp42838_ ((_rest42840_ _args42836_)
                      (_pargs42841_ '())
                      (_kwargs42842_ '()))
        (let* ((___stx4508845089_ _rest42840_)
               (_g4284842900_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx4508845089_))))
          (let ((___kont4509045091_
                 (lambda (_L43079_ _L43080_)
                   (_lp42838_
                    _L43079_
                    (cons _L43080_ _pargs42841_)
                    _kwargs42842_)))
                (___kont4509245093_
                 (lambda (_L43025_)
                   (values (foldl1 cons _L43025_ _pargs42841_)
                           (reverse _kwargs42842_))))
                (___kont4509445095_
                 (lambda (_L42972_ _L42973_ _L42974_)
                   (let ((_kw42991_ (gx#stx-e _L42974_)))
                     (if (assq _kw42991_ _kwargs42842_)
                         (gxc#raise-compile-error
                          '"Illegal keyword lambda application; duplicate keyword"
                          _stx42835_
                          _kw42991_)
                         (_lp42838_
                          _L42972_
                          _pargs42841_
                          (cons (cons _kw42991_ _L42973_) _kwargs42842_))))))
                (___kont4509645097_
                 (lambda (_L42920_ _L42921_)
                   (_lp42838_
                    _L42920_
                    (cons _L42921_ _pargs42841_)
                    _kwargs42842_)))
                (___kont4509845099_
                 (lambda ()
                   (values (reverse _pargs42841_) (reverse _kwargs42842_)))))
            (let* ((_g4284742907_
                    (lambda ()
                      (if (gx#stx-null? ___stx4508845089_)
                          (___kont4509845099_)
                          (_g4284842900_))))
                   (___match4519545196_
                    (lambda (_e4287942940_
                             _hd4288042943_
                             _tl4288142945_
                             _e4288242948_
                             _hd4288342951_
                             _tl4288442953_
                             _e4288542956_
                             _hd4288642959_
                             _tl4288742961_
                             _e4288842964_
                             _hd4288942967_
                             _tl4289042969_)
                      (let ((_L42972_ _tl4289042969_)
                            (_L42973_ _hd4288942967_)
                            (_L42974_ _hd4288642959_))
                        (if (gx#stx-keyword? _L42974_)
                            (___kont4509445095_ _L42972_ _L42973_ _L42974_)
                            (___kont4509645097_
                             _tl4288142945_
                             _hd4288042943_))))))
              (if (gx#stx-pair? ___stx4508845089_)
                  (let ((_e4285243044_ (gx#stx-e ___stx4508845089_)))
                    (let ((_tl4285443049_ (##cdr _e4285243044_))
                          (_hd4285343047_ (##car _e4285243044_)))
                      (if (gx#stx-pair? _hd4285343047_)
                          (let ((_e4285543052_ (gx#stx-e _hd4285343047_)))
                            (let ((_tl4285743057_ (##cdr _e4285543052_))
                                  (_hd4285643055_ (##car _e4285543052_)))
                              (if (gx#identifier? _hd4285643055_)
                                  (if (gx#stx-eq? '%#quote _hd4285643055_)
                                      (if (gx#stx-pair? _tl4285743057_)
                                          (let ((_e4285843060_
                                                 (gx#stx-e _tl4285743057_)))
                                            (let ((_tl4286043065_
                                                   (##cdr _e4285843060_))
                                                  (_hd4285943063_
                                                   (##car _e4285843060_)))
                                              (if (gx#stx-datum?
                                                   _hd4285943063_)
                                                  (let ((_e4286143068_
                                                         (gx#stx-e
                                                          _hd4285943063_)))
                                                    (if (equal? _e4286143068_
                                                                '#!key)
                                                        (if (gx#stx-null?
                                                             _tl4286043065_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl4285443049_)
                        (let ((_e4286243071_ (gx#stx-e _tl4285443049_)))
                          (let ((_tl4286443076_ (##cdr _e4286243071_))
                                (_hd4286343074_ (##car _e4286243071_)))
                            (___kont4509045091_
                             _tl4286443076_
                             _hd4286343074_)))
                        (___kont4509645097_ _tl4285443049_ _hd4285343047_))
                    (___kont4509645097_ _tl4285443049_ _hd4285343047_))
                (if (equal? _e4286143068_ '#!rest)
                    (if (gx#stx-null? _tl4286043065_)
                        (___kont4509245093_ _tl4285443049_)
                        (___kont4509645097_ _tl4285443049_ _hd4285343047_))
                    (if (gx#stx-null? _tl4286043065_)
                        (if (gx#stx-pair? _tl4285443049_)
                            (let ((_e4288842964_ (gx#stx-e _tl4285443049_)))
                              (let ((_tl4289042969_ (##cdr _e4288842964_))
                                    (_hd4288942967_ (##car _e4288842964_)))
                                (___match4519545196_
                                 _e4285243044_
                                 _hd4285343047_
                                 _tl4285443049_
                                 _e4285543052_
                                 _hd4285643055_
                                 _tl4285743057_
                                 _e4285843060_
                                 _hd4285943063_
                                 _tl4286043065_
                                 _e4288842964_
                                 _hd4288942967_
                                 _tl4289042969_)))
                            (___kont4509645097_ _tl4285443049_ _hd4285343047_))
                        (___kont4509645097_ _tl4285443049_ _hd4285343047_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _tl4286043065_)
                                                      (if (gx#stx-pair?
                                                           _tl4285443049_)
                                                          (let ((_e4288842964_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl4285443049_)))
                    (let ((_tl4289042969_ (##cdr _e4288842964_))
                          (_hd4288942967_ (##car _e4288842964_)))
                      (___match4519545196_
                       _e4285243044_
                       _hd4285343047_
                       _tl4285443049_
                       _e4285543052_
                       _hd4285643055_
                       _tl4285743057_
                       _e4285843060_
                       _hd4285943063_
                       _tl4286043065_
                       _e4288842964_
                       _hd4288942967_
                       _tl4289042969_)))
                  (___kont4509645097_ _tl4285443049_ _hd4285343047_))
              (___kont4509645097_ _tl4285443049_ _hd4285343047_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (___kont4509645097_
                                           _tl4285443049_
                                           _hd4285343047_))
                                      (___kont4509645097_
                                       _tl4285443049_
                                       _hd4285343047_))
                                  (___kont4509645097_
                                   _tl4285443049_
                                   _hd4285343047_))))
                          (___kont4509645097_ _tl4285443049_ _hd4285343047_))))
                  (_g4284742907_))))))))
  (define gxc#!kw-lambda-primary::optimize-call
    (lambda (_self42831_ _stx42832_ _args42833_) (gxc#xform-call% _stx42832_)))
  (bind-method!
   gxc#!kw-lambda-primary::t
   'optimize-call
   gxc#!kw-lambda-primary::optimize-call
   '#f))
