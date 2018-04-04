(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#&optimize-call
    (##make-promise
     (lambda ()
       (let ((_tbl46498_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl46498_ (force gxc#&basic-xform))
           (table-set! _tbl46498_ '%#call gxc#optimize-call%)
           _tbl46498_)))))
  (define gxc#apply-optimize-call
    (lambda (_stx46491_ . _args46493_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx46491_ _args46493_))
       gxc#current-compile-methods
       (force gxc#&optimize-call))))
  (define gxc#optimize-call%
    (lambda (_stx46397_)
      (let* ((___stx4650146502_ _stx46397_)
             (_g4640046420_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4650146502_))))
        (let ((___kont4650346504_
               (lambda (_L46464_ _L46465_)
                 (let* ((_rator-id46483_ (gxc#identifier-symbol _L46465_))
                        (_rator-type46485_
                         (gxc#optimizer-resolve-type _rator-id46483_)))
                   (if (##structure-instance-of?
                        _rator-type46485_
                        'gxc#!procedure::t)
                       (begin
                         (gxc#verbose
                          '"optimize-call "
                          _rator-id46483_
                          '" => "
                          _rator-type46485_
                          '" "
                          (##structure-ref
                           _rator-type46485_
                           '1
                           gxc#!type::t
                           '#f))
                         (call-method
                          _rator-type46485_
                          'optimize-call
                          _stx46397_
                          _L46464_))
                       (if (not _rator-type46485_)
                           (gxc#xform-call% _stx46397_)
                           (gxc#raise-compile-error
                            '"Illegal application; not a procedure"
                            _stx46397_
                            _rator-type46485_))))))
              (___kont4650546506_ (lambda () (gxc#xform-call% _stx46397_))))
          (if (gx#stx-pair? ___stx4650146502_)
              (let ((_e4640446432_ (gx#stx-e ___stx4650146502_)))
                (let ((_tl4640646437_ (##cdr _e4640446432_))
                      (_hd4640546435_ (##car _e4640446432_)))
                  (if (gx#stx-pair? _tl4640646437_)
                      (let ((_e4640746440_ (gx#stx-e _tl4640646437_)))
                        (let ((_tl4640946445_ (##cdr _e4640746440_))
                              (_hd4640846443_ (##car _e4640746440_)))
                          (if (gx#stx-pair? _hd4640846443_)
                              (let ((_e4641046448_ (gx#stx-e _hd4640846443_)))
                                (let ((_tl4641246453_ (##cdr _e4641046448_))
                                      (_hd4641146451_ (##car _e4641046448_)))
                                  (if (gx#identifier? _hd4641146451_)
                                      (if (gx#stx-eq? '%#ref _hd4641146451_)
                                          (if (gx#stx-pair? _tl4641246453_)
                                              (let ((_e4641346456_
                                                     (gx#stx-e
                                                      _tl4641246453_)))
                                                (let ((_tl4641546461_
                                                       (##cdr _e4641346456_))
                                                      (_hd4641446459_
                                                       (##car _e4641346456_)))
                                                  (if (gx#stx-null?
                                                       _tl4641546461_)
                                                      (___kont4650346504_
                                                       _tl4640946445_
                                                       _hd4641446459_)
                                                      (___kont4650546506_))))
                                              (___kont4650546506_))
                                          (___kont4650546506_))
                                      (___kont4650546506_))))
                              (___kont4650546506_))))
                      (___kont4650546506_))))
              (___kont4650546506_))))))
  (define gxc#!struct-pred::optimize-call
    (lambda (_self46251_ _stx46252_ _args46253_)
      (let* ((_self4625446260_ _self46251_)
             (_E4625646264_
              (lambda () (error '"No clause matching" _self4625446260_)))
             (_K4625746389_
              (lambda (_struct-t46267_)
                (let* ((_struct-type46269_
                        (gxc#optimizer-resolve-type _struct-t46267_))
                       (_struct-type4627046284_ _struct-type46269_)
                       (_else4627346292_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx46252_
                           _struct-t46267_
                           _struct-type46269_))))
                  (let ((_K4627646364_
                         (lambda (_plist46303_ _struct-type-id46304_)
                           (let* ((___stx4653946540_ _args46253_)
                                  (_g4630746317_
                                   (lambda ()
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      ___stx4653946540_))))
                             (let ((___kont4654146542_
                                    (lambda (_L46337_)
                                      (let ((_expr46358_
                                             (gxc#compile-e _L46337_))
                                            (_op46359_
                                             (if (if _plist46303_
                                                     (assgetq 'final:
                                                              _plist46303_)
                                                     '#f)
                                                 '%#struct-direct-instance?
                                                 '%#struct-instance?)))
                                        (gxc#xform-wrap-source
                                         (cons _op46359_
                                               (cons (cons '%#quote
                                                           (cons _struct-type-id46304_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _expr46358_ '())))
                                         _stx46252_))))
                                   (___kont4654346544_
                                    (lambda ()
                                      (gxc#raise-compile-error
                                       '"Illegal struct predicate application"
                                       _stx46252_))))
                               (if (gx#stx-pair? ___stx4653946540_)
                                   (let ((_e4631046329_
                                          (gx#stx-e ___stx4653946540_)))
                                     (let ((_tl4631246334_
                                            (##cdr _e4631046329_))
                                           (_hd4631146332_
                                            (##car _e4631046329_)))
                                       (if (gx#stx-null? _tl4631246334_)
                                           (___kont4654146542_ _hd4631146332_)
                                           (___kont4654346544_))))
                                   (___kont4654346544_))))))
                        (_K4627546297_
                         (lambda () (gxc#xform-call% _stx46252_))))
                    (let ((_try-match4627246300_
                           (lambda ()
                             (if (##eq? _struct-type4627046284_ '#f)
                                 (_K4627546297_)
                                 (_else4627346292_)))))
                      (if (##structure-instance-of?
                           _struct-type4627046284_
                           'gxc#!struct-type::t)
                          (let* ((_e4627746367_
                                  (##vector-ref _struct-type4627046284_ '1))
                                 (_e4627846372_
                                  (##vector-ref _struct-type4627046284_ '2))
                                 (_e4627946375_
                                  (##vector-ref _struct-type4627046284_ '3))
                                 (_e4628046378_
                                  (##vector-ref _struct-type4627046284_ '4))
                                 (_e4628146381_
                                  (##vector-ref _struct-type4627046284_ '5))
                                 (_e4628246384_
                                  (##vector-ref _struct-type4627046284_ '6)))
                            (let ((_struct-type-id46370_ _e4627746367_)
                                  (_plist46387_ _e4628246384_))
                              (_K4627646364_
                               _plist46387_
                               _struct-type-id46370_)))
                          (_try-match4627246300_))))))))
        (if (##structure-instance-of? _self4625446260_ 'gxc#!struct-pred::t)
            (let* ((_e4625846392_ (##vector-ref _self4625446260_ '1))
                   (_struct-t46395_ _e4625846392_))
              (_K4625746389_ _struct-t46395_))
            (_E4625646264_)))))
  (bind-method!
   gxc#!struct-pred::t
   'optimize-call
   gxc#!struct-pred::optimize-call
   '#f)
  (define gxc#!struct-cons::optimize-call
    (lambda (_self46025_ _stx46026_ _args46027_)
      (let* ((_self4602846034_ _self46025_)
             (_E4603046038_
              (lambda () (error '"No clause matching" _self4602846034_)))
             (_K4603146121_
              (lambda (_struct-t46041_)
                (let* ((_struct-type46043_
                        (gxc#optimizer-resolve-type _struct-t46041_))
                       (_struct-type4604446057_ _struct-type46043_)
                       (_else4604746065_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct constructor application; not a struct type"
                           _stx46026_
                           _struct-t46041_
                           _struct-type46043_))))
                  (let ((_K4605046095_
                         (lambda (_ctor46076_
                                  _xfields46077_
                                  _fields46078_
                                  _type-id46079_)
                           (let* ((_args46081_ (map gxc#compile-e _args46027_))
                                  (_$e46083_
                                   (if _ctor46076_
                                       (if _xfields46077_
                                           (gxc#!struct-type-lookup-method
                                            _struct-type46043_
                                            _ctor46076_)
                                           '#f)
                                       '#f)))
                             (if _$e46083_
                                 ((lambda (_kons46086_)
                                    (let ((_$obj46088_
                                           (make-symbol (gensym '__obj))))
                                      (gxc#xform-wrap-source
                                       (cons '%#let-values
                                             (cons (cons (cons (cons _$obj46088_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons (cons '%#call
                                   (cons (cons '%#ref (cons 'make-object '()))
                                         (cons (cons '%#ref
                                                     (cons _struct-t46041_
                                                           '()))
                                               (cons (cons '%#quote
                                                           (cons (fx+ _fields46078_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _xfields46077_)
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
                                     (cons (cons '%#ref (cons _kons46086_ '()))
                                           (cons (cons '%#ref
                                                       (cons _$obj46088_ '()))
                                                 _args46081_)))
                               _stx46026_))
                             (cons (cons '%#ref (cons _$obj46088_ '())) '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _stx46026_)))
                                  _$e46083_)
                                 (if (let ((_$e46090_ _ctor46076_))
                                       (if _$e46090_
                                           _$e46090_
                                           (not _xfields46077_)))
                                     (gxc#xform-wrap-source
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons 'make-struct-instance
                                                              '()))
                                                  (cons (cons '%#ref
                                                              (cons _struct-t46041_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _args46081_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _stx46026_)
                                     (let ((_arity46093_
                                            (fx+ _fields46078_
                                                 _xfields46077_)))
                                       (if (fx= _arity46093_
                                                (length _args46081_))
                                           (gxc#xform-wrap-source
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#ref (cons _struct-t46041_ '())) _args46081_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _stx46026_)
                                           (gxc#raise-compile-error
                                            '"Illegal struct constructor application; arity mismatch"
                                            _stx46026_
                                            _struct-t46041_
                                            _arity46093_))))))))
                        (_K4604946070_
                         (lambda ()
                           (begin
                             (gxc#verbose
                              '"cannot inline struct constructor; unknown struct type "
                              _struct-t46041_)
                             (gxc#xform-call% _stx46026_)))))
                    (let ((_try-match4604646073_
                           (lambda ()
                             (if (##eq? _struct-type4604446057_ '#f)
                                 (_K4604946070_)
                                 (_else4604746065_)))))
                      (if (##structure-instance-of?
                           _struct-type4604446057_
                           'gxc#!struct-type::t)
                          (let* ((_e4605146098_
                                  (##vector-ref _struct-type4604446057_ '1))
                                 (_e4605246103_
                                  (##vector-ref _struct-type4604446057_ '2))
                                 (_e4605346106_
                                  (##vector-ref _struct-type4604446057_ '3))
                                 (_e4605446111_
                                  (##vector-ref _struct-type4604446057_ '4))
                                 (_e4605546116_
                                  (##vector-ref _struct-type4604446057_ '5)))
                            (let ((_type-id46101_ _e4605146098_)
                                  (_fields46109_ _e4605346106_)
                                  (_xfields46114_ _e4605446111_)
                                  (_ctor46119_ _e4605546116_))
                              (_K4605046095_
                               _ctor46119_
                               _xfields46114_
                               _fields46109_
                               _type-id46101_)))
                          (_try-match4604646073_))))))))
        (if (##structure-instance-of? _self4602846034_ 'gxc#!struct-cons::t)
            (let* ((_e4603246124_ (##vector-ref _self4602846034_ '1))
                   (_struct-t46127_ _e4603246124_))
              (_K4603146121_ _struct-t46127_))
            (_E4603046038_)))))
  (bind-method!
   gxc#!struct-cons::t
   'optimize-call
   gxc#!struct-cons::optimize-call
   '#f)
  (define gxc#!struct-getf::optimize-call
    (lambda (_self45736_ _stx45737_ _args45738_)
      (let* ((_self4573945747_ _self45736_)
             (_E4574145751_
              (lambda () (error '"No clause matching" _self4573945747_)))
             (_K4574245885_
              (lambda (_unchecked?45754_ _off45755_ _struct-t45756_)
                (let* ((_struct-type45758_
                        (gxc#optimizer-resolve-type _struct-t45756_))
                       (_struct-type4575945773_ _struct-type45758_)
                       (_else4576245781_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx45737_
                           _struct-t45756_
                           _struct-type45758_))))
                  (let ((_K4576545856_
                         (lambda (_plist45792_
                                  _xfields45793_
                                  _fields45794_
                                  _struct-type-id45795_)
                           (if _xfields45793_
                               (let* ((___stx4658746588_ _args45738_)
                                      (_g4579845808_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx4658746588_))))
                                 (let ((___kont4658946590_
                                        (lambda (_L45828_)
                                          (let ((_expr45849_
                                                 (gxc#compile-e _L45828_))
                                                (_off45850_
                                                 (fx+ _off45755_
                                                      _xfields45793_
                                                      '1))
                                                (_op45851_
                                                 (if _unchecked?45754_
                                                     '%#struct-unchecked-ref
                                                     (if (if _plist45792_
                                                             (assgetq 'final:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _plist45792_)
                     '#f)
                 '%#struct-direct-ref
                 '%#struct-ref))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (gxc#xform-wrap-source
                                             (cons _op45851_
                                                   (cons (cons '%#ref
                                                               (cons _struct-t45756_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons '%#quote (cons _off45850_ '()))
                       (cons _expr45849_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _stx45737_))))
                                       (___kont4659146592_
                                        (lambda ()
                                          (gxc#raise-compile-error
                                           '"Illegal struct accessor application"
                                           _stx45737_))))
                                   (if (gx#stx-pair? ___stx4658746588_)
                                       (let ((_e4580145820_
                                              (gx#stx-e ___stx4658746588_)))
                                         (let ((_tl4580345825_
                                                (##cdr _e4580145820_))
                                               (_hd4580245823_
                                                (##car _e4580145820_)))
                                           (if (gx#stx-null? _tl4580345825_)
                                               (___kont4658946590_
                                                _hd4580245823_)
                                               (___kont4659146592_))))
                                       (___kont4659146592_))))
                               (begin
                                 (gxc#verbose
                                  '"struct-getf: incomplete struct "
                                  _struct-type-id45795_)
                                 (gxc#xform-call% _stx45737_)))))
                        (_K4576445786_
                         (lambda () (gxc#xform-call% _stx45737_))))
                    (let ((_try-match4576145789_
                           (lambda ()
                             (if (##eq? _struct-type4575945773_ '#f)
                                 (_K4576445786_)
                                 (_else4576245781_)))))
                      (if (##structure-instance-of?
                           _struct-type4575945773_
                           'gxc#!struct-type::t)
                          (let* ((_e4576645859_
                                  (##vector-ref _struct-type4575945773_ '1))
                                 (_e4576745864_
                                  (##vector-ref _struct-type4575945773_ '2))
                                 (_e4576845867_
                                  (##vector-ref _struct-type4575945773_ '3))
                                 (_e4576945872_
                                  (##vector-ref _struct-type4575945773_ '4))
                                 (_e4577045877_
                                  (##vector-ref _struct-type4575945773_ '5))
                                 (_e4577145880_
                                  (##vector-ref _struct-type4575945773_ '6)))
                            (let ((_struct-type-id45862_ _e4576645859_)
                                  (_fields45870_ _e4576845867_)
                                  (_xfields45875_ _e4576945872_)
                                  (_plist45883_ _e4577145880_))
                              (_K4576545856_
                               _plist45883_
                               _xfields45875_
                               _fields45870_
                               _struct-type-id45862_)))
                          (_try-match4576145789_))))))))
        (if (##structure-instance-of? _self4573945747_ 'gxc#!struct-getf::t)
            (let* ((_e4574345888_ (##vector-ref _self4573945747_ '1))
                   (_struct-t45891_ _e4574345888_)
                   (_e4574445893_ (##vector-ref _self4573945747_ '2))
                   (_off45896_ _e4574445893_)
                   (_e4574545898_ (##vector-ref _self4573945747_ '3))
                   (_unchecked?45901_ _e4574545898_))
              (_K4574245885_ _unchecked?45901_ _off45896_ _struct-t45891_))
            (_E4574145751_)))))
  (bind-method!
   gxc#!struct-getf::t
   'optimize-call
   gxc#!struct-getf::optimize-call
   '#f)
  (define gxc#!struct-setf::optimize-call
    (lambda (_self45430_ _stx45431_ _args45432_)
      (let* ((_self4543345441_ _self45430_)
             (_E4543545445_
              (lambda () (error '"No clause matching" _self4543345441_)))
             (_K4543645596_
              (lambda (_unchecked?45448_ _off45449_ _struct-t45450_)
                (let* ((_struct-type45452_
                        (gxc#optimizer-resolve-type _struct-t45450_))
                       (_struct-type4545345467_ _struct-type45452_)
                       (_else4545645475_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx45431_
                           _struct-t45450_
                           _struct-type45452_))))
                  (let ((_K4545945567_
                         (lambda (_plist45486_
                                  _xfields45487_
                                  _fields45488_
                                  _struct-type-id45489_)
                           (if _xfields45487_
                               (let* ((___stx4662046621_ _args45432_)
                                      (_g4549245506_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx4662046621_))))
                                 (let ((___kont4662246623_
                                        (lambda (_L45534_ _L45535_)
                                          (let ((_expr45559_
                                                 (gxc#compile-e _L45535_))
                                                (_val45560_
                                                 (gxc#compile-e _L45534_))
                                                (_off45561_
                                                 (fx+ _off45449_
                                                      _xfields45487_
                                                      '1))
                                                (_op45562_
                                                 (if _unchecked?45448_
                                                     '%#struct-unchecked-set!
                                                     (if (if _plist45486_
                                                             (assgetq 'final:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _plist45486_)
                     '#f)
                 '%#struct-direct-set!
                 '%#struct-set!))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (gxc#xform-wrap-source
                                             (cons _op45562_
                                                   (cons (cons '%#ref
                                                               (cons _struct-t45450_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons '%#quote (cons _off45561_ '()))
                       (cons _expr45559_ (cons _val45560_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _stx45431_))))
                                       (___kont4662446625_
                                        (lambda ()
                                          (gxc#raise-compile-error
                                           '"Illegal struct mutator application"
                                           _stx45431_))))
                                   (if (gx#stx-pair? ___stx4662046621_)
                                       (let ((_e4549645518_
                                              (gx#stx-e ___stx4662046621_)))
                                         (let ((_tl4549845523_
                                                (##cdr _e4549645518_))
                                               (_hd4549745521_
                                                (##car _e4549645518_)))
                                           (if (gx#stx-pair? _tl4549845523_)
                                               (let ((_e4549945526_
                                                      (gx#stx-e
                                                       _tl4549845523_)))
                                                 (let ((_tl4550145531_
                                                        (##cdr _e4549945526_))
                                                       (_hd4550045529_
                                                        (##car _e4549945526_)))
                                                   (if (gx#stx-null?
                                                        _tl4550145531_)
                                                       (___kont4662246623_
                                                        _hd4550045529_
                                                        _hd4549745521_)
                                                       (___kont4662446625_))))
                                               (___kont4662446625_))))
                                       (___kont4662446625_))))
                               (begin
                                 (gxc#verbose
                                  '"struct-setf: incomplete struct "
                                  _struct-type-id45489_)
                                 (gxc#xform-call% _stx45431_)))))
                        (_K4545845480_
                         (lambda () (gxc#xform-call% _stx45431_))))
                    (let ((_try-match4545545483_
                           (lambda ()
                             (if (##eq? _struct-type4545345467_ '#f)
                                 (_K4545845480_)
                                 (_else4545645475_)))))
                      (if (##structure-instance-of?
                           _struct-type4545345467_
                           'gxc#!struct-type::t)
                          (let* ((_e4546045570_
                                  (##vector-ref _struct-type4545345467_ '1))
                                 (_e4546145575_
                                  (##vector-ref _struct-type4545345467_ '2))
                                 (_e4546245578_
                                  (##vector-ref _struct-type4545345467_ '3))
                                 (_e4546345583_
                                  (##vector-ref _struct-type4545345467_ '4))
                                 (_e4546445588_
                                  (##vector-ref _struct-type4545345467_ '5))
                                 (_e4546545591_
                                  (##vector-ref _struct-type4545345467_ '6)))
                            (let ((_struct-type-id45573_ _e4546045570_)
                                  (_fields45581_ _e4546245578_)
                                  (_xfields45586_ _e4546345583_)
                                  (_plist45594_ _e4546545591_))
                              (_K4545945567_
                               _plist45594_
                               _xfields45586_
                               _fields45581_
                               _struct-type-id45573_)))
                          (_try-match4545545483_))))))))
        (if (##structure-instance-of? _self4543345441_ 'gxc#!struct-setf::t)
            (let* ((_e4543745599_ (##vector-ref _self4543345441_ '1))
                   (_struct-t45602_ _e4543745599_)
                   (_e4543845604_ (##vector-ref _self4543345441_ '2))
                   (_off45607_ _e4543845604_)
                   (_e4543945609_ (##vector-ref _self4543345441_ '3))
                   (_unchecked?45612_ _e4543945609_))
              (_K4543645596_ _unchecked?45612_ _off45607_ _struct-t45602_))
            (_E4543545445_)))))
  (bind-method!
   gxc#!struct-setf::t
   'optimize-call
   gxc#!struct-setf::optimize-call
   '#f)
  (define gxc#!lambda::optimize-call
    (lambda (_self45264_ _stx45265_ _args45266_)
      (let* ((_self4526745276_ _self45264_)
             (_E4526945280_
              (lambda () (error '"No clause matching" _self4526745276_)))
             (_K4527045287_
              (lambda (_inline45283_ _dispatch45284_ _arity45285_)
                (begin
                  (if (gxc#!lambda-arity-match? _self45264_ _args45266_)
                      '#!void
                      (gxc#raise-compile-error
                       '"Illegal lambda application; arity mismatch"
                       _stx45265_
                       _arity45285_))
                  (if _inline45283_
                      (begin
                        (gxc#verbose '"inline lambda")
                        (gxc#compile-e
                         (gxc#xform-wrap-source
                          (_inline45283_ _stx45265_)
                          _stx45265_)))
                      (if _dispatch45284_
                          (begin
                            (gxc#verbose
                             '"dispatch lambda => "
                             _dispatch45284_)
                            (gxc#compile-e
                             (gxc#xform-wrap-source
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons _dispatch45284_ '()))
                                          _args45266_))
                              _stx45265_)))
                          (gxc#xform-call% _stx45265_)))))))
        (if (##structure-instance-of? _self4526745276_ 'gxc#!lambda::t)
            (let* ((_e4527145290_ (##vector-ref _self4526745276_ '1))
                   (_e4527245293_ (##vector-ref _self4526745276_ '2))
                   (_arity45296_ _e4527245293_)
                   (_e4527345298_ (##vector-ref _self4526745276_ '3))
                   (_dispatch45301_ _e4527345298_)
                   (_e4527445303_ (##vector-ref _self4526745276_ '4))
                   (_inline45306_ _e4527445303_))
              (_K4527045287_ _inline45306_ _dispatch45301_ _arity45296_))
            (_E4526945280_)))))
  (bind-method! gxc#!lambda::t 'optimize-call gxc#!lambda::optimize-call '#f)
  (define gxc#!case-lambda::optimize-call
    (lambda (_self45103_ _stx45104_ _args45105_)
      (let* ((_self4510645113_ _self45103_)
             (_E4510845117_
              (lambda () (error '"No clause matching" _self4510645113_)))
             (_K4510945131_
              (lambda (_clauses45120_)
                (let ((_$e45126_
                       (find (lambda (_g4512145123_)
                               (gxc#!lambda-arity-match?
                                _g4512145123_
                                _args45105_))
                             _clauses45120_)))
                  (if _$e45126_
                      ((lambda (_clause45129_)
                         (call-method
                          _clause45129_
                          'optimize-call
                          _stx45104_
                          _args45105_))
                       _$e45126_)
                      (gxc#raise-compile-error
                       '"Illegal case-lambda application; arity mismatch"
                       _stx45104_
                       (map gxc#!lambda-arity _clauses45120_)))))))
        (if (##structure-instance-of? _self4510645113_ 'gxc#!case-lambda::t)
            (let* ((_e4511045134_ (##vector-ref _self4510645113_ '1))
                   (_e4511145137_ (##vector-ref _self4510645113_ '2))
                   (_clauses45140_ _e4511145137_))
              (_K4510945131_ _clauses45140_))
            (_E4510845117_)))))
  (bind-method!
   gxc#!case-lambda::t
   'optimize-call
   gxc#!case-lambda::optimize-call
   '#f)
  (define gxc#!lambda-arity-match?
    (lambda (_self44917_ _args44918_)
      (let* ((_self4491944926_ _self44917_)
             (_E4492144930_
              (lambda () (error '"No clause matching" _self4491944926_)))
             (_K4492244970_
              (lambda (_arity44933_)
                (let* ((_arity4493444943_ _arity44933_)
                       (_E4493744947_
                        (lambda ()
                          (error '"No clause matching" _arity4493444943_))))
                  (let ((_K4494144967_
                         (lambda () (fx= (length _args44918_) _arity44933_)))
                        (_K4493844953_
                         (lambda (_arity44951_)
                           (fx>= (length _args44918_) _arity44951_))))
                    (let ((_try-match4493644963_
                           (lambda ()
                             (if (##pair? _arity4493444943_)
                                 (let ((_tl4494044958_
                                        (##cdr _arity4493444943_))
                                       (_hd4493944956_
                                        (##car _arity4493444943_)))
                                   (if (##null? _tl4494044958_)
                                       (let ((_arity44961_ _hd4493944956_))
                                         (_K4493844953_ _arity44961_))
                                       (_E4493744947_)))
                                 (_E4493744947_)))))
                      (if (fixnum? _arity4493444943_)
                          (_K4494144967_)
                          (_try-match4493644963_))))))))
        (if (##structure-instance-of? _self4491944926_ 'gxc#!lambda::t)
            (let* ((_e4492344973_ (##vector-ref _self4491944926_ '1))
                   (_e4492444976_ (##vector-ref _self4491944926_ '2))
                   (_arity44979_ _e4492444976_))
              (_K4492244970_ _arity44979_))
            (_E4492144930_)))))
  (define gxc#!kw-lambda::optimize-call
    (lambda (_self44802_ _stx44803_ _args44804_)
      (let* ((_self4480544813_ _self44802_)
             (_E4480744817_
              (lambda () (error '"No clause matching" _self4480544813_)))
             (_K4480844901_
              (lambda (_dispatch44820_ _table44821_)
                (let* ((_g4482244831_
                        (gxc#optimizer-lookup-type _dispatch44820_))
                       (_else4482444839_
                        (lambda ()
                          (begin
                            (gxc#verbose
                             '"unknown keyword dispatch lambda "
                             _dispatch44820_)
                            (gxc#xform-call% _stx44803_))))
                       (_K4482644885_
                        (lambda (_main44842_ _keys44843_)
                          (let ((_g46785_
                                 (gxc#!kw-lambda-split-args
                                  _stx44803_
                                  _args44804_)))
                            (begin
                              (let ((_g46786_
                                     (if (##values? _g46785_)
                                         (##vector-length _g46785_)
                                         1)))
                                (if (not (##fx= _g46786_ 2))
                                    (error "Context expects 2 values"
                                           _g46786_)))
                              (let ((_pargs44845_ (##vector-ref _g46785_ 0))
                                    (_kwargs44846_ (##vector-ref _g46785_ 1)))
                                (begin
                                  (gxc#verbose
                                   '"dispatch kw-lambda => "
                                   _main44842_)
                                  (if _table44821_
                                      (let ((_xargs44853_
                                             (map (lambda (_key44848_)
                                                    (let ((_$e44850_
                                                           (assgetq _key44848_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _kwargs44846_)))
              (if _$e44850_ (values _$e44850_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _keys44843_)))
                                        (begin
                                          (for-each
                                           (lambda (_kw44855_)
                                             (if (memq (car _kw44855_)
                                                       _keys44843_)
                                                 '#!void
                                                 (gxc#raise-compile-error
                                                  '"Illegal keyword lambda application; unexpected keyword"
                                                  _stx44803_
                                                  _keys44843_
                                                  _kw44855_)))
                                           _kwargs44846_)
                                          (gxc#compile-e
                                           (gxc#xform-wrap-source
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons _main44842_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote (cons '#f '()))
                      (foldr1 cons _pargs44845_ _xargs44853_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _stx44803_))))
                                      (let* ((_kwt44857_
                                              (make-symbol (gensym '__kwt)))
                                             (_kwvars44860_
                                              (map (lambda (_g46787_)
                                                     (make-symbol
                                                      (gensym '__kw)))
                                                   _kwargs44846_))
                                             (_kwbind44865_
                                              (map (lambda (_kw44862_
                                                            _kwvar44863_)
                                                     (cons (cons _kwvar44863_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   (cons (cdr _kw44862_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs44846_
                                                   _kwvars44860_))
                                             (_kwset44870_
                                              (map (lambda (_kw44867_
                                                            _kwvar44868_)
                                                     (cons '%#call
                                                           (cons '(%#ref hash-put!)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons _kwt44857_ '()))
                               (cons (cons '%#quote (cons (car _kw44867_) '()))
                                     (cons (cons '%#ref
                                                 (cons _kwvar44868_ '()))
                                           '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs44846_
                                                   _kwvars44860_))
                                             (_xkwargs44875_
                                              (map (lambda (_kw44872_
                                                            _kwvar44873_)
                                                     (cons (car _kw44872_)
                                                           (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _kwvar44873_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs44846_
                                                   _kwvars44860_))
                                             (_xargs44882_
                                              (map (lambda (_key44877_)
                                                     (let ((_$e44879_
                                                            (assgetq _key44877_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _xkwargs44875_)))
               (if _$e44879_ (values _$e44879_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _keys44843_)))
                                        (gxc#compile-e
                                         (gxc#xform-wrap-source
                                          (cons '%#let-values
                                                (cons _kwbind44865_
                                                      (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (cons (cons _kwt44857_ '())
                                            (cons (gxc#xform-wrap-source
                                                   (cons '%#call
                                                         (cons '(%#ref make-hash-table-eq)
                                                               (cons '(%#quote size:)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons '%#quote
                                         (cons (length _kwargs44846_) '()))
                                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx44803_)
                                                  '()))
                                      '())
                                (cons (cons '%#begin
                                            (foldr1 cons
                                                    (cons (gxc#xform-wrap-source
                                                           (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons _main44842_ '()))
                               (cons (cons '%#ref (cons _kwt44857_ '()))
                                     (foldr1 cons _pargs44845_ _xargs44882_))))
                   _stx44803_)
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _kwset44870_))
                                      '())))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _stx44803_)))))))))))
                  (if (##structure-instance-of?
                       _g4482244831_
                       'gxc#!kw-lambda-primary::t)
                      (let* ((_e4482744888_ (##vector-ref _g4482244831_ '1))
                             (_e4482844891_ (##vector-ref _g4482244831_ '2))
                             (_keys44894_ _e4482844891_)
                             (_e4482944896_ (##vector-ref _g4482244831_ '3))
                             (_main44899_ _e4482944896_))
                        (_K4482644885_ _main44899_ _keys44894_))
                      (_else4482444839_))))))
        (if (##structure-instance-of? _self4480544813_ 'gxc#!kw-lambda::t)
            (let* ((_e4480944904_ (##vector-ref _self4480544813_ '1))
                   (_e4481044907_ (##vector-ref _self4480544813_ '2))
                   (_table44910_ _e4481044907_)
                   (_e4481144912_ (##vector-ref _self4480544813_ '3))
                   (_dispatch44915_ _e4481144912_))
              (_K4480844901_ _dispatch44915_ _table44910_))
            (_E4480744817_)))))
  (bind-method!
   gxc#!kw-lambda::t
   'optimize-call
   gxc#!kw-lambda::optimize-call
   '#f)
  (define gxc#!kw-lambda-split-args
    (lambda (_stx44415_ _args44416_)
      (let _lp44418_ ((_rest44420_ _args44416_)
                      (_pargs44421_ '())
                      (_kwargs44422_ '()))
        (let* ((___stx4666846669_ _rest44420_)
               (_g4442844480_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx4666846669_))))
          (let ((___kont4667046671_
                 (lambda (_L44659_ _L44660_)
                   (_lp44418_
                    _L44659_
                    (cons _L44660_ _pargs44421_)
                    _kwargs44422_)))
                (___kont4667246673_
                 (lambda (_L44605_)
                   (values (foldl1 cons _L44605_ _pargs44421_)
                           (reverse _kwargs44422_))))
                (___kont4667446675_
                 (lambda (_L44552_ _L44553_ _L44554_)
                   (let ((_kw44571_ (gx#stx-e _L44554_)))
                     (if (assq _kw44571_ _kwargs44422_)
                         (gxc#raise-compile-error
                          '"Illegal keyword lambda application; duplicate keyword"
                          _stx44415_
                          _kw44571_)
                         (_lp44418_
                          _L44552_
                          _pargs44421_
                          (cons (cons _kw44571_ _L44553_) _kwargs44422_))))))
                (___kont4667646677_
                 (lambda (_L44500_ _L44501_)
                   (_lp44418_
                    _L44500_
                    (cons _L44501_ _pargs44421_)
                    _kwargs44422_)))
                (___kont4667846679_
                 (lambda ()
                   (values (reverse _pargs44421_) (reverse _kwargs44422_)))))
            (let* ((_g4442744487_
                    (lambda ()
                      (if (gx#stx-null? ___stx4666846669_)
                          (___kont4667846679_)
                          (_g4442844480_))))
                   (___match4677546776_
                    (lambda (_e4445944520_
                             _hd4446044523_
                             _tl4446144525_
                             _e4446244528_
                             _hd4446344531_
                             _tl4446444533_
                             _e4446544536_
                             _hd4446644539_
                             _tl4446744541_
                             _e4446844544_
                             _hd4446944547_
                             _tl4447044549_)
                      (let ((_L44552_ _tl4447044549_)
                            (_L44553_ _hd4446944547_)
                            (_L44554_ _hd4446644539_))
                        (if (gx#stx-keyword? _L44554_)
                            (___kont4667446675_ _L44552_ _L44553_ _L44554_)
                            (___kont4667646677_
                             _tl4446144525_
                             _hd4446044523_))))))
              (if (gx#stx-pair? ___stx4666846669_)
                  (let ((_e4443244624_ (gx#stx-e ___stx4666846669_)))
                    (let ((_tl4443444629_ (##cdr _e4443244624_))
                          (_hd4443344627_ (##car _e4443244624_)))
                      (if (gx#stx-pair? _hd4443344627_)
                          (let ((_e4443544632_ (gx#stx-e _hd4443344627_)))
                            (let ((_tl4443744637_ (##cdr _e4443544632_))
                                  (_hd4443644635_ (##car _e4443544632_)))
                              (if (gx#identifier? _hd4443644635_)
                                  (if (gx#stx-eq? '%#quote _hd4443644635_)
                                      (if (gx#stx-pair? _tl4443744637_)
                                          (let ((_e4443844640_
                                                 (gx#stx-e _tl4443744637_)))
                                            (let ((_tl4444044645_
                                                   (##cdr _e4443844640_))
                                                  (_hd4443944643_
                                                   (##car _e4443844640_)))
                                              (if (gx#stx-datum?
                                                   _hd4443944643_)
                                                  (let ((_e4444144648_
                                                         (gx#stx-e
                                                          _hd4443944643_)))
                                                    (if (equal? _e4444144648_
                                                                '#!key)
                                                        (if (gx#stx-null?
                                                             _tl4444044645_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl4443444629_)
                        (let ((_e4444244651_ (gx#stx-e _tl4443444629_)))
                          (let ((_tl4444444656_ (##cdr _e4444244651_))
                                (_hd4444344654_ (##car _e4444244651_)))
                            (___kont4667046671_
                             _tl4444444656_
                             _hd4444344654_)))
                        (___kont4667646677_ _tl4443444629_ _hd4443344627_))
                    (___kont4667646677_ _tl4443444629_ _hd4443344627_))
                (if (equal? _e4444144648_ '#!rest)
                    (if (gx#stx-null? _tl4444044645_)
                        (___kont4667246673_ _tl4443444629_)
                        (___kont4667646677_ _tl4443444629_ _hd4443344627_))
                    (if (gx#stx-null? _tl4444044645_)
                        (if (gx#stx-pair? _tl4443444629_)
                            (let ((_e4446844544_ (gx#stx-e _tl4443444629_)))
                              (let ((_tl4447044549_ (##cdr _e4446844544_))
                                    (_hd4446944547_ (##car _e4446844544_)))
                                (___match4677546776_
                                 _e4443244624_
                                 _hd4443344627_
                                 _tl4443444629_
                                 _e4443544632_
                                 _hd4443644635_
                                 _tl4443744637_
                                 _e4443844640_
                                 _hd4443944643_
                                 _tl4444044645_
                                 _e4446844544_
                                 _hd4446944547_
                                 _tl4447044549_)))
                            (___kont4667646677_ _tl4443444629_ _hd4443344627_))
                        (___kont4667646677_ _tl4443444629_ _hd4443344627_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _tl4444044645_)
                                                      (if (gx#stx-pair?
                                                           _tl4443444629_)
                                                          (let ((_e4446844544_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl4443444629_)))
                    (let ((_tl4447044549_ (##cdr _e4446844544_))
                          (_hd4446944547_ (##car _e4446844544_)))
                      (___match4677546776_
                       _e4443244624_
                       _hd4443344627_
                       _tl4443444629_
                       _e4443544632_
                       _hd4443644635_
                       _tl4443744637_
                       _e4443844640_
                       _hd4443944643_
                       _tl4444044645_
                       _e4446844544_
                       _hd4446944547_
                       _tl4447044549_)))
                  (___kont4667646677_ _tl4443444629_ _hd4443344627_))
              (___kont4667646677_ _tl4443444629_ _hd4443344627_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (___kont4667646677_
                                           _tl4443444629_
                                           _hd4443344627_))
                                      (___kont4667646677_
                                       _tl4443444629_
                                       _hd4443344627_))
                                  (___kont4667646677_
                                   _tl4443444629_
                                   _hd4443344627_))))
                          (___kont4667646677_ _tl4443444629_ _hd4443344627_))))
                  (_g4442744487_))))))))
  (define gxc#!kw-lambda-primary::optimize-call
    (lambda (_self44411_ _stx44412_ _args44413_) (gxc#xform-call% _stx44412_)))
  (bind-method!
   gxc#!kw-lambda-primary::t
   'optimize-call
   gxc#!kw-lambda-primary::optimize-call
   '#f))
