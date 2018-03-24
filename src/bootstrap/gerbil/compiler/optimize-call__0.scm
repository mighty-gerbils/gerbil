(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#&optimize-call
    (make-promise
     (lambda ()
       (let ((_tbl44962_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl44962_ (force gxc#&basic-xform))
           (table-set! _tbl44962_ '%#call gxc#optimize-call%)
           _tbl44962_)))))
  (define gxc#apply-optimize-call
    (lambda (_stx44955_ . _args44957_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx44955_ _args44957_))
       gxc#current-compile-methods
       (force gxc#&optimize-call))))
  (define gxc#optimize-call%
    (lambda (_stx44861_)
      (let* ((___stx4496544966_ _stx44861_)
             (_g4486444884_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4496544966_))))
        (let ((___kont4496744968_
               (lambda (_L44928_ _L44929_)
                 (let* ((_rator-id44947_ (gxc#identifier-symbol _L44929_))
                        (_rator-type44949_
                         (gxc#optimizer-resolve-type _rator-id44947_)))
                   (if (##structure-instance-of?
                        _rator-type44949_
                        'gxc#!procedure::t)
                       (begin
                         (gxc#verbose
                          '"optimize-call "
                          _rator-id44947_
                          '" => "
                          _rator-type44949_
                          '" "
                          (##structure-ref
                           _rator-type44949_
                           '1
                           gxc#!type::t
                           '#f))
                         (call-method
                          _rator-type44949_
                          'optimize-call
                          _stx44861_
                          _L44928_))
                       (if (not _rator-type44949_)
                           (gxc#xform-call% _stx44861_)
                           (gxc#raise-compile-error
                            '"Illegal application; not a procedure"
                            _stx44861_
                            _rator-type44949_))))))
              (___kont4496944970_ (lambda () (gxc#xform-call% _stx44861_))))
          (if (gx#stx-pair? ___stx4496544966_)
              (let ((_e4486844896_ (gx#stx-e ___stx4496544966_)))
                (let ((_tl4487044901_ (##cdr _e4486844896_))
                      (_hd4486944899_ (##car _e4486844896_)))
                  (if (gx#stx-pair? _tl4487044901_)
                      (let ((_e4487144904_ (gx#stx-e _tl4487044901_)))
                        (let ((_tl4487344909_ (##cdr _e4487144904_))
                              (_hd4487244907_ (##car _e4487144904_)))
                          (if (gx#stx-pair? _hd4487244907_)
                              (let ((_e4487444912_ (gx#stx-e _hd4487244907_)))
                                (let ((_tl4487644917_ (##cdr _e4487444912_))
                                      (_hd4487544915_ (##car _e4487444912_)))
                                  (if (gx#identifier? _hd4487544915_)
                                      (if (gx#stx-eq? '%#ref _hd4487544915_)
                                          (if (gx#stx-pair? _tl4487644917_)
                                              (let ((_e4487744920_
                                                     (gx#stx-e
                                                      _tl4487644917_)))
                                                (let ((_tl4487944925_
                                                       (##cdr _e4487744920_))
                                                      (_hd4487844923_
                                                       (##car _e4487744920_)))
                                                  (if (gx#stx-null?
                                                       _tl4487944925_)
                                                      (___kont4496744968_
                                                       _tl4487344909_
                                                       _hd4487844923_)
                                                      (___kont4496944970_))))
                                              (___kont4496944970_))
                                          (___kont4496944970_))
                                      (___kont4496944970_))))
                              (___kont4496944970_))))
                      (___kont4496944970_))))
              (___kont4496944970_))))))
  (define gxc#!struct-pred::optimize-call
    (lambda (_self44715_ _stx44716_ _args44717_)
      (let* ((_self4471844724_ _self44715_)
             (_E4472044728_
              (lambda () (error '"No clause matching" _self4471844724_)))
             (_K4472144853_
              (lambda (_struct-t44731_)
                (let* ((_struct-type44733_
                        (gxc#optimizer-resolve-type _struct-t44731_))
                       (_struct-type4473444748_ _struct-type44733_)
                       (_else4473744756_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx44716_
                           _struct-t44731_
                           _struct-type44733_))))
                  (let ((_K4474044828_
                         (lambda (_plist44767_ _struct-type-id44768_)
                           (let* ((___stx4500345004_ _args44717_)
                                  (_g4477144781_
                                   (lambda ()
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      ___stx4500345004_))))
                             (let ((___kont4500545006_
                                    (lambda (_L44801_)
                                      (let ((_expr44822_
                                             (gxc#compile-e _L44801_))
                                            (_op44823_
                                             (if (if _plist44767_
                                                     (assgetq 'final:
                                                              _plist44767_)
                                                     '#f)
                                                 '%#struct-direct-instance?
                                                 '%#struct-instance?)))
                                        (gxc#xform-wrap-source
                                         (cons _op44823_
                                               (cons (cons '%#quote
                                                           (cons _struct-type-id44768_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _expr44822_ '())))
                                         _stx44716_))))
                                   (___kont4500745008_
                                    (lambda ()
                                      (gxc#raise-compile-error
                                       '"Illegal struct predicate application"
                                       _stx44716_))))
                               (if (gx#stx-pair? ___stx4500345004_)
                                   (let ((_e4477444793_
                                          (gx#stx-e ___stx4500345004_)))
                                     (let ((_tl4477644798_
                                            (##cdr _e4477444793_))
                                           (_hd4477544796_
                                            (##car _e4477444793_)))
                                       (if (gx#stx-null? _tl4477644798_)
                                           (___kont4500545006_ _hd4477544796_)
                                           (___kont4500745008_))))
                                   (___kont4500745008_))))))
                        (_K4473944761_
                         (lambda () (gxc#xform-call% _stx44716_))))
                    (let ((_try-match4473644764_
                           (lambda ()
                             (if (##eq? _struct-type4473444748_ '#f)
                                 (_K4473944761_)
                                 (_else4473744756_)))))
                      (if (##structure-instance-of?
                           _struct-type4473444748_
                           'gxc#!struct-type::t)
                          (let* ((_e4474144831_
                                  (##vector-ref _struct-type4473444748_ '1))
                                 (_e4474244836_
                                  (##vector-ref _struct-type4473444748_ '2))
                                 (_e4474344839_
                                  (##vector-ref _struct-type4473444748_ '3))
                                 (_e4474444842_
                                  (##vector-ref _struct-type4473444748_ '4))
                                 (_e4474544845_
                                  (##vector-ref _struct-type4473444748_ '5))
                                 (_e4474644848_
                                  (##vector-ref _struct-type4473444748_ '6)))
                            (let ((_struct-type-id44834_ _e4474144831_)
                                  (_plist44851_ _e4474644848_))
                              (_K4474044828_
                               _plist44851_
                               _struct-type-id44834_)))
                          (_try-match4473644764_))))))))
        (if (##structure-instance-of? _self4471844724_ 'gxc#!struct-pred::t)
            (let* ((_e4472244856_ (##vector-ref _self4471844724_ '1))
                   (_struct-t44859_ _e4472244856_))
              (_K4472144853_ _struct-t44859_))
            (_E4472044728_)))))
  (bind-method!
   gxc#!struct-pred::t
   'optimize-call
   gxc#!struct-pred::optimize-call
   '#f)
  (define gxc#!struct-cons::optimize-call
    (lambda (_self44489_ _stx44490_ _args44491_)
      (let* ((_self4449244498_ _self44489_)
             (_E4449444502_
              (lambda () (error '"No clause matching" _self4449244498_)))
             (_K4449544585_
              (lambda (_struct-t44505_)
                (let* ((_struct-type44507_
                        (gxc#optimizer-resolve-type _struct-t44505_))
                       (_struct-type4450844521_ _struct-type44507_)
                       (_else4451144529_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct constructor application; not a struct type"
                           _stx44490_
                           _struct-t44505_
                           _struct-type44507_))))
                  (let ((_K4451444559_
                         (lambda (_ctor44540_
                                  _xfields44541_
                                  _fields44542_
                                  _type-id44543_)
                           (let* ((_args44545_ (map gxc#compile-e _args44491_))
                                  (_$e44547_
                                   (if _ctor44540_
                                       (if _xfields44541_
                                           (gxc#!struct-type-lookup-method
                                            _struct-type44507_
                                            _ctor44540_)
                                           '#f)
                                       '#f)))
                             (if _$e44547_
                                 ((lambda (_kons44550_)
                                    (let ((_$obj44552_
                                           (make-symbol (gensym '__obj))))
                                      (gxc#xform-wrap-source
                                       (cons '%#let-values
                                             (cons (cons (cons (cons _$obj44552_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons (cons '%#call
                                   (cons (cons '%#ref (cons 'make-object '()))
                                         (cons (cons '%#ref
                                                     (cons _struct-t44505_
                                                           '()))
                                               (cons (cons '%#quote
                                                           (cons (fx+ _fields44542_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _xfields44541_)
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
                                     (cons (cons '%#ref (cons _kons44550_ '()))
                                           (cons (cons '%#ref
                                                       (cons _$obj44552_ '()))
                                                 _args44545_)))
                               _stx44490_))
                             (cons (cons '%#ref (cons _$obj44552_ '())) '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _stx44490_)))
                                  _$e44547_)
                                 (if (let ((_$e44554_ _ctor44540_))
                                       (if _$e44554_
                                           _$e44554_
                                           (not _xfields44541_)))
                                     (gxc#xform-wrap-source
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons 'make-struct-instance
                                                              '()))
                                                  (cons (cons '%#ref
                                                              (cons _struct-t44505_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _args44545_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _stx44490_)
                                     (let ((_arity44557_
                                            (fx+ _fields44542_
                                                 _xfields44541_)))
                                       (if (fx= _arity44557_
                                                (length _args44545_))
                                           (gxc#xform-wrap-source
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#ref (cons _struct-t44505_ '())) _args44545_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _stx44490_)
                                           (gxc#raise-compile-error
                                            '"Illegal struct constructor application; arity mismatch"
                                            _stx44490_
                                            _struct-t44505_
                                            _arity44557_))))))))
                        (_K4451344534_
                         (lambda ()
                           (begin
                             (gxc#verbose
                              '"cannot inline struct constructor; unknown struct type "
                              _struct-t44505_)
                             (gxc#xform-call% _stx44490_)))))
                    (let ((_try-match4451044537_
                           (lambda ()
                             (if (##eq? _struct-type4450844521_ '#f)
                                 (_K4451344534_)
                                 (_else4451144529_)))))
                      (if (##structure-instance-of?
                           _struct-type4450844521_
                           'gxc#!struct-type::t)
                          (let* ((_e4451544562_
                                  (##vector-ref _struct-type4450844521_ '1))
                                 (_e4451644567_
                                  (##vector-ref _struct-type4450844521_ '2))
                                 (_e4451744570_
                                  (##vector-ref _struct-type4450844521_ '3))
                                 (_e4451844575_
                                  (##vector-ref _struct-type4450844521_ '4))
                                 (_e4451944580_
                                  (##vector-ref _struct-type4450844521_ '5)))
                            (let ((_type-id44565_ _e4451544562_)
                                  (_fields44573_ _e4451744570_)
                                  (_xfields44578_ _e4451844575_)
                                  (_ctor44583_ _e4451944580_))
                              (_K4451444559_
                               _ctor44583_
                               _xfields44578_
                               _fields44573_
                               _type-id44565_)))
                          (_try-match4451044537_))))))))
        (if (##structure-instance-of? _self4449244498_ 'gxc#!struct-cons::t)
            (let* ((_e4449644588_ (##vector-ref _self4449244498_ '1))
                   (_struct-t44591_ _e4449644588_))
              (_K4449544585_ _struct-t44591_))
            (_E4449444502_)))))
  (bind-method!
   gxc#!struct-cons::t
   'optimize-call
   gxc#!struct-cons::optimize-call
   '#f)
  (define gxc#!struct-getf::optimize-call
    (lambda (_self44200_ _stx44201_ _args44202_)
      (let* ((_self4420344211_ _self44200_)
             (_E4420544215_
              (lambda () (error '"No clause matching" _self4420344211_)))
             (_K4420644349_
              (lambda (_unchecked?44218_ _off44219_ _struct-t44220_)
                (let* ((_struct-type44222_
                        (gxc#optimizer-resolve-type _struct-t44220_))
                       (_struct-type4422344237_ _struct-type44222_)
                       (_else4422644245_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx44201_
                           _struct-t44220_
                           _struct-type44222_))))
                  (let ((_K4422944320_
                         (lambda (_plist44256_
                                  _xfields44257_
                                  _fields44258_
                                  _struct-type-id44259_)
                           (if _xfields44257_
                               (let* ((___stx4505145052_ _args44202_)
                                      (_g4426244272_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx4505145052_))))
                                 (let ((___kont4505345054_
                                        (lambda (_L44292_)
                                          (let ((_expr44313_
                                                 (gxc#compile-e _L44292_))
                                                (_off44314_
                                                 (fx+ _off44219_
                                                      _xfields44257_
                                                      '1))
                                                (_op44315_
                                                 (if _unchecked?44218_
                                                     '%#struct-unchecked-ref
                                                     (if (if _plist44256_
                                                             (assgetq 'final:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _plist44256_)
                     '#f)
                 '%#struct-direct-ref
                 '%#struct-ref))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (gxc#xform-wrap-source
                                             (cons _op44315_
                                                   (cons (cons '%#ref
                                                               (cons _struct-t44220_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons '%#quote (cons _off44314_ '()))
                       (cons _expr44313_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _stx44201_))))
                                       (___kont4505545056_
                                        (lambda ()
                                          (gxc#raise-compile-error
                                           '"Illegal struct accessor application"
                                           _stx44201_))))
                                   (if (gx#stx-pair? ___stx4505145052_)
                                       (let ((_e4426544284_
                                              (gx#stx-e ___stx4505145052_)))
                                         (let ((_tl4426744289_
                                                (##cdr _e4426544284_))
                                               (_hd4426644287_
                                                (##car _e4426544284_)))
                                           (if (gx#stx-null? _tl4426744289_)
                                               (___kont4505345054_
                                                _hd4426644287_)
                                               (___kont4505545056_))))
                                       (___kont4505545056_))))
                               (begin
                                 (gxc#verbose
                                  '"struct-getf: incomplete struct "
                                  _struct-type-id44259_)
                                 (gxc#xform-call% _stx44201_)))))
                        (_K4422844250_
                         (lambda () (gxc#xform-call% _stx44201_))))
                    (let ((_try-match4422544253_
                           (lambda ()
                             (if (##eq? _struct-type4422344237_ '#f)
                                 (_K4422844250_)
                                 (_else4422644245_)))))
                      (if (##structure-instance-of?
                           _struct-type4422344237_
                           'gxc#!struct-type::t)
                          (let* ((_e4423044323_
                                  (##vector-ref _struct-type4422344237_ '1))
                                 (_e4423144328_
                                  (##vector-ref _struct-type4422344237_ '2))
                                 (_e4423244331_
                                  (##vector-ref _struct-type4422344237_ '3))
                                 (_e4423344336_
                                  (##vector-ref _struct-type4422344237_ '4))
                                 (_e4423444341_
                                  (##vector-ref _struct-type4422344237_ '5))
                                 (_e4423544344_
                                  (##vector-ref _struct-type4422344237_ '6)))
                            (let ((_struct-type-id44326_ _e4423044323_)
                                  (_fields44334_ _e4423244331_)
                                  (_xfields44339_ _e4423344336_)
                                  (_plist44347_ _e4423544344_))
                              (_K4422944320_
                               _plist44347_
                               _xfields44339_
                               _fields44334_
                               _struct-type-id44326_)))
                          (_try-match4422544253_))))))))
        (if (##structure-instance-of? _self4420344211_ 'gxc#!struct-getf::t)
            (let* ((_e4420744352_ (##vector-ref _self4420344211_ '1))
                   (_struct-t44355_ _e4420744352_)
                   (_e4420844357_ (##vector-ref _self4420344211_ '2))
                   (_off44360_ _e4420844357_)
                   (_e4420944362_ (##vector-ref _self4420344211_ '3))
                   (_unchecked?44365_ _e4420944362_))
              (_K4420644349_ _unchecked?44365_ _off44360_ _struct-t44355_))
            (_E4420544215_)))))
  (bind-method!
   gxc#!struct-getf::t
   'optimize-call
   gxc#!struct-getf::optimize-call
   '#f)
  (define gxc#!struct-setf::optimize-call
    (lambda (_self43894_ _stx43895_ _args43896_)
      (let* ((_self4389743905_ _self43894_)
             (_E4389943909_
              (lambda () (error '"No clause matching" _self4389743905_)))
             (_K4390044060_
              (lambda (_unchecked?43912_ _off43913_ _struct-t43914_)
                (let* ((_struct-type43916_
                        (gxc#optimizer-resolve-type _struct-t43914_))
                       (_struct-type4391743931_ _struct-type43916_)
                       (_else4392043939_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx43895_
                           _struct-t43914_
                           _struct-type43916_))))
                  (let ((_K4392344031_
                         (lambda (_plist43950_
                                  _xfields43951_
                                  _fields43952_
                                  _struct-type-id43953_)
                           (if _xfields43951_
                               (let* ((___stx4508445085_ _args43896_)
                                      (_g4395643970_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx4508445085_))))
                                 (let ((___kont4508645087_
                                        (lambda (_L43998_ _L43999_)
                                          (let ((_expr44023_
                                                 (gxc#compile-e _L43999_))
                                                (_val44024_
                                                 (gxc#compile-e _L43998_))
                                                (_off44025_
                                                 (fx+ _off43913_
                                                      _xfields43951_
                                                      '1))
                                                (_op44026_
                                                 (if _unchecked?43912_
                                                     '%#struct-unchecked-set!
                                                     (if (if _plist43950_
                                                             (assgetq 'final:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _plist43950_)
                     '#f)
                 '%#struct-direct-set!
                 '%#struct-set!))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (gxc#xform-wrap-source
                                             (cons _op44026_
                                                   (cons (cons '%#ref
                                                               (cons _struct-t43914_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons '%#quote (cons _off44025_ '()))
                       (cons _expr44023_ (cons _val44024_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _stx43895_))))
                                       (___kont4508845089_
                                        (lambda ()
                                          (gxc#raise-compile-error
                                           '"Illegal struct mutator application"
                                           _stx43895_))))
                                   (if (gx#stx-pair? ___stx4508445085_)
                                       (let ((_e4396043982_
                                              (gx#stx-e ___stx4508445085_)))
                                         (let ((_tl4396243987_
                                                (##cdr _e4396043982_))
                                               (_hd4396143985_
                                                (##car _e4396043982_)))
                                           (if (gx#stx-pair? _tl4396243987_)
                                               (let ((_e4396343990_
                                                      (gx#stx-e
                                                       _tl4396243987_)))
                                                 (let ((_tl4396543995_
                                                        (##cdr _e4396343990_))
                                                       (_hd4396443993_
                                                        (##car _e4396343990_)))
                                                   (if (gx#stx-null?
                                                        _tl4396543995_)
                                                       (___kont4508645087_
                                                        _hd4396443993_
                                                        _hd4396143985_)
                                                       (___kont4508845089_))))
                                               (___kont4508845089_))))
                                       (___kont4508845089_))))
                               (begin
                                 (gxc#verbose
                                  '"struct-setf: incomplete struct "
                                  _struct-type-id43953_)
                                 (gxc#xform-call% _stx43895_)))))
                        (_K4392243944_
                         (lambda () (gxc#xform-call% _stx43895_))))
                    (let ((_try-match4391943947_
                           (lambda ()
                             (if (##eq? _struct-type4391743931_ '#f)
                                 (_K4392243944_)
                                 (_else4392043939_)))))
                      (if (##structure-instance-of?
                           _struct-type4391743931_
                           'gxc#!struct-type::t)
                          (let* ((_e4392444034_
                                  (##vector-ref _struct-type4391743931_ '1))
                                 (_e4392544039_
                                  (##vector-ref _struct-type4391743931_ '2))
                                 (_e4392644042_
                                  (##vector-ref _struct-type4391743931_ '3))
                                 (_e4392744047_
                                  (##vector-ref _struct-type4391743931_ '4))
                                 (_e4392844052_
                                  (##vector-ref _struct-type4391743931_ '5))
                                 (_e4392944055_
                                  (##vector-ref _struct-type4391743931_ '6)))
                            (let ((_struct-type-id44037_ _e4392444034_)
                                  (_fields44045_ _e4392644042_)
                                  (_xfields44050_ _e4392744047_)
                                  (_plist44058_ _e4392944055_))
                              (_K4392344031_
                               _plist44058_
                               _xfields44050_
                               _fields44045_
                               _struct-type-id44037_)))
                          (_try-match4391943947_))))))))
        (if (##structure-instance-of? _self4389743905_ 'gxc#!struct-setf::t)
            (let* ((_e4390144063_ (##vector-ref _self4389743905_ '1))
                   (_struct-t44066_ _e4390144063_)
                   (_e4390244068_ (##vector-ref _self4389743905_ '2))
                   (_off44071_ _e4390244068_)
                   (_e4390344073_ (##vector-ref _self4389743905_ '3))
                   (_unchecked?44076_ _e4390344073_))
              (_K4390044060_ _unchecked?44076_ _off44071_ _struct-t44066_))
            (_E4389943909_)))))
  (bind-method!
   gxc#!struct-setf::t
   'optimize-call
   gxc#!struct-setf::optimize-call
   '#f)
  (define gxc#!lambda::optimize-call
    (lambda (_self43728_ _stx43729_ _args43730_)
      (let* ((_self4373143740_ _self43728_)
             (_E4373343744_
              (lambda () (error '"No clause matching" _self4373143740_)))
             (_K4373443751_
              (lambda (_inline43747_ _dispatch43748_ _arity43749_)
                (begin
                  (if (gxc#!lambda-arity-match? _self43728_ _args43730_)
                      '#!void
                      (gxc#raise-compile-error
                       '"Illegal lambda application; arity mismatch"
                       _stx43729_
                       _arity43749_))
                  (if _inline43747_
                      (begin
                        (gxc#verbose '"inline lambda")
                        (gxc#compile-e
                         (gxc#xform-wrap-source
                          (_inline43747_ _stx43729_)
                          _stx43729_)))
                      (if _dispatch43748_
                          (begin
                            (gxc#verbose
                             '"dispatch lambda => "
                             _dispatch43748_)
                            (gxc#compile-e
                             (gxc#xform-wrap-source
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons _dispatch43748_ '()))
                                          _args43730_))
                              _stx43729_)))
                          (gxc#xform-call% _stx43729_)))))))
        (if (##structure-instance-of? _self4373143740_ 'gxc#!lambda::t)
            (let* ((_e4373543754_ (##vector-ref _self4373143740_ '1))
                   (_e4373643757_ (##vector-ref _self4373143740_ '2))
                   (_arity43760_ _e4373643757_)
                   (_e4373743762_ (##vector-ref _self4373143740_ '3))
                   (_dispatch43765_ _e4373743762_)
                   (_e4373843767_ (##vector-ref _self4373143740_ '4))
                   (_inline43770_ _e4373843767_))
              (_K4373443751_ _inline43770_ _dispatch43765_ _arity43760_))
            (_E4373343744_)))))
  (bind-method! gxc#!lambda::t 'optimize-call gxc#!lambda::optimize-call '#f)
  (define gxc#!case-lambda::optimize-call
    (lambda (_self43567_ _stx43568_ _args43569_)
      (let* ((_self4357043577_ _self43567_)
             (_E4357243581_
              (lambda () (error '"No clause matching" _self4357043577_)))
             (_K4357343595_
              (lambda (_clauses43584_)
                (let ((_$e43590_
                       (find (lambda (_g4358543587_)
                               (gxc#!lambda-arity-match?
                                _g4358543587_
                                _args43569_))
                             _clauses43584_)))
                  (if _$e43590_
                      ((lambda (_clause43593_)
                         (call-method
                          _clause43593_
                          'optimize-call
                          _stx43568_
                          _args43569_))
                       _$e43590_)
                      (gxc#raise-compile-error
                       '"Illegal case-lambda application; arity mismatch"
                       _stx43568_
                       (map gxc#!lambda-arity _clauses43584_)))))))
        (if (##structure-instance-of? _self4357043577_ 'gxc#!case-lambda::t)
            (let* ((_e4357443598_ (##vector-ref _self4357043577_ '1))
                   (_e4357543601_ (##vector-ref _self4357043577_ '2))
                   (_clauses43604_ _e4357543601_))
              (_K4357343595_ _clauses43604_))
            (_E4357243581_)))))
  (bind-method!
   gxc#!case-lambda::t
   'optimize-call
   gxc#!case-lambda::optimize-call
   '#f)
  (define gxc#!lambda-arity-match?
    (lambda (_self43381_ _args43382_)
      (let* ((_self4338343390_ _self43381_)
             (_E4338543394_
              (lambda () (error '"No clause matching" _self4338343390_)))
             (_K4338643434_
              (lambda (_arity43397_)
                (let* ((_arity4339843407_ _arity43397_)
                       (_E4340143411_
                        (lambda ()
                          (error '"No clause matching" _arity4339843407_))))
                  (let ((_K4340543431_
                         (lambda () (fx= (length _args43382_) _arity43397_)))
                        (_K4340243417_
                         (lambda (_arity43415_)
                           (fx>= (length _args43382_) _arity43415_))))
                    (let ((_try-match4340043427_
                           (lambda ()
                             (if (##pair? _arity4339843407_)
                                 (let ((_tl4340443422_
                                        (##cdr _arity4339843407_))
                                       (_hd4340343420_
                                        (##car _arity4339843407_)))
                                   (if (##null? _tl4340443422_)
                                       (let ((_arity43425_ _hd4340343420_))
                                         (_K4340243417_ _arity43425_))
                                       (_E4340143411_)))
                                 (_E4340143411_)))))
                      (if (fixnum? _arity4339843407_)
                          (_K4340543431_)
                          (_try-match4340043427_))))))))
        (if (##structure-instance-of? _self4338343390_ 'gxc#!lambda::t)
            (let* ((_e4338743437_ (##vector-ref _self4338343390_ '1))
                   (_e4338843440_ (##vector-ref _self4338343390_ '2))
                   (_arity43443_ _e4338843440_))
              (_K4338643434_ _arity43443_))
            (_E4338543394_)))))
  (define gxc#!kw-lambda::optimize-call
    (lambda (_self43266_ _stx43267_ _args43268_)
      (let* ((_self4326943277_ _self43266_)
             (_E4327143281_
              (lambda () (error '"No clause matching" _self4326943277_)))
             (_K4327243365_
              (lambda (_dispatch43284_ _table43285_)
                (let* ((_g4328643295_
                        (gxc#optimizer-lookup-type _dispatch43284_))
                       (_else4328843303_
                        (lambda ()
                          (begin
                            (gxc#verbose
                             '"unknown keyword dispatch lambda "
                             _dispatch43284_)
                            (gxc#xform-call% _stx43267_))))
                       (_K4329043349_
                        (lambda (_main43306_ _keys43307_)
                          (let ((_g45249_
                                 (gxc#!kw-lambda-split-args
                                  _stx43267_
                                  _args43268_)))
                            (begin
                              (let ((_g45250_
                                     (if (##values? _g45249_)
                                         (##vector-length _g45249_)
                                         1)))
                                (if (not (##fx= _g45250_ 2))
                                    (error "Context expects 2 values"
                                           _g45250_)))
                              (let ((_pargs43309_ (##vector-ref _g45249_ 0))
                                    (_kwargs43310_ (##vector-ref _g45249_ 1)))
                                (begin
                                  (gxc#verbose
                                   '"dispatch kw-lambda => "
                                   _main43306_)
                                  (if _table43285_
                                      (let ((_xargs43317_
                                             (map (lambda (_key43312_)
                                                    (let ((_$e43314_
                                                           (assgetq _key43312_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _kwargs43310_)))
              (if _$e43314_ (values _$e43314_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _keys43307_)))
                                        (begin
                                          (for-each
                                           (lambda (_kw43319_)
                                             (if (memq (car _kw43319_)
                                                       _keys43307_)
                                                 '#!void
                                                 (gxc#raise-compile-error
                                                  '"Illegal keyword lambda application; unexpected keyword"
                                                  _stx43267_
                                                  _keys43307_
                                                  _kw43319_)))
                                           _kwargs43310_)
                                          (gxc#compile-e
                                           (gxc#xform-wrap-source
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons _main43306_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote (cons '#f '()))
                      (foldr1 cons _pargs43309_ _xargs43317_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _stx43267_))))
                                      (let* ((_kwt43321_
                                              (make-symbol (gensym '__kwt)))
                                             (_kwvars43324_
                                              (map (lambda (_g45251_)
                                                     (make-symbol
                                                      (gensym '__kw)))
                                                   _kwargs43310_))
                                             (_kwbind43329_
                                              (map (lambda (_kw43326_
                                                            _kwvar43327_)
                                                     (cons (cons _kwvar43327_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   (cons (cdr _kw43326_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs43310_
                                                   _kwvars43324_))
                                             (_kwset43334_
                                              (map (lambda (_kw43331_
                                                            _kwvar43332_)
                                                     (cons '%#call
                                                           (cons '(%#ref hash-put!)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons _kwt43321_ '()))
                               (cons (cons '%#quote (cons (car _kw43331_) '()))
                                     (cons (cons '%#ref
                                                 (cons _kwvar43332_ '()))
                                           '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs43310_
                                                   _kwvars43324_))
                                             (_xkwargs43339_
                                              (map (lambda (_kw43336_
                                                            _kwvar43337_)
                                                     (cons (car _kw43336_)
                                                           (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _kwvar43337_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs43310_
                                                   _kwvars43324_))
                                             (_xargs43346_
                                              (map (lambda (_key43341_)
                                                     (let ((_$e43343_
                                                            (assgetq _key43341_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _xkwargs43339_)))
               (if _$e43343_ (values _$e43343_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _keys43307_)))
                                        (gxc#compile-e
                                         (gxc#xform-wrap-source
                                          (cons '%#let-values
                                                (cons _kwbind43329_
                                                      (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (cons (cons _kwt43321_ '())
                                            (cons (gxc#xform-wrap-source
                                                   (cons '%#call
                                                         (cons '(%#ref make-hash-table-eq)
                                                               (cons '(%#quote size:)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons '%#quote
                                         (cons (length _kwargs43310_) '()))
                                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx43267_)
                                                  '()))
                                      '())
                                (cons (cons '%#begin
                                            (foldr1 cons
                                                    (cons (gxc#xform-wrap-source
                                                           (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons _main43306_ '()))
                               (cons (cons '%#ref (cons _kwt43321_ '()))
                                     (foldr1 cons _pargs43309_ _xargs43346_))))
                   _stx43267_)
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _kwset43334_))
                                      '())))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _stx43267_)))))))))))
                  (if (##structure-instance-of?
                       _g4328643295_
                       'gxc#!kw-lambda-primary::t)
                      (let* ((_e4329143352_ (##vector-ref _g4328643295_ '1))
                             (_e4329243355_ (##vector-ref _g4328643295_ '2))
                             (_keys43358_ _e4329243355_)
                             (_e4329343360_ (##vector-ref _g4328643295_ '3))
                             (_main43363_ _e4329343360_))
                        (_K4329043349_ _main43363_ _keys43358_))
                      (_else4328843303_))))))
        (if (##structure-instance-of? _self4326943277_ 'gxc#!kw-lambda::t)
            (let* ((_e4327343368_ (##vector-ref _self4326943277_ '1))
                   (_e4327443371_ (##vector-ref _self4326943277_ '2))
                   (_table43374_ _e4327443371_)
                   (_e4327543376_ (##vector-ref _self4326943277_ '3))
                   (_dispatch43379_ _e4327543376_))
              (_K4327243365_ _dispatch43379_ _table43374_))
            (_E4327143281_)))))
  (bind-method!
   gxc#!kw-lambda::t
   'optimize-call
   gxc#!kw-lambda::optimize-call
   '#f)
  (define gxc#!kw-lambda-split-args
    (lambda (_stx42879_ _args42880_)
      (let _lp42882_ ((_rest42884_ _args42880_)
                      (_pargs42885_ '())
                      (_kwargs42886_ '()))
        (let* ((___stx4513245133_ _rest42884_)
               (_g4289242944_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx4513245133_))))
          (let ((___kont4513445135_
                 (lambda (_L43123_ _L43124_)
                   (_lp42882_
                    _L43123_
                    (cons _L43124_ _pargs42885_)
                    _kwargs42886_)))
                (___kont4513645137_
                 (lambda (_L43069_)
                   (values (foldl1 cons _L43069_ _pargs42885_)
                           (reverse _kwargs42886_))))
                (___kont4513845139_
                 (lambda (_L43016_ _L43017_ _L43018_)
                   (let ((_kw43035_ (gx#stx-e _L43018_)))
                     (if (assq _kw43035_ _kwargs42886_)
                         (gxc#raise-compile-error
                          '"Illegal keyword lambda application; duplicate keyword"
                          _stx42879_
                          _kw43035_)
                         (_lp42882_
                          _L43016_
                          _pargs42885_
                          (cons (cons _kw43035_ _L43017_) _kwargs42886_))))))
                (___kont4514045141_
                 (lambda (_L42964_ _L42965_)
                   (_lp42882_
                    _L42964_
                    (cons _L42965_ _pargs42885_)
                    _kwargs42886_)))
                (___kont4514245143_
                 (lambda ()
                   (values (reverse _pargs42885_) (reverse _kwargs42886_)))))
            (let* ((_g4289142951_
                    (lambda ()
                      (if (gx#stx-null? ___stx4513245133_)
                          (___kont4514245143_)
                          (_g4289242944_))))
                   (___match4523945240_
                    (lambda (_e4292342984_
                             _hd4292442987_
                             _tl4292542989_
                             _e4292642992_
                             _hd4292742995_
                             _tl4292842997_
                             _e4292943000_
                             _hd4293043003_
                             _tl4293143005_
                             _e4293243008_
                             _hd4293343011_
                             _tl4293443013_)
                      (let ((_L43016_ _tl4293443013_)
                            (_L43017_ _hd4293343011_)
                            (_L43018_ _hd4293043003_))
                        (if (gx#stx-keyword? _L43018_)
                            (___kont4513845139_ _L43016_ _L43017_ _L43018_)
                            (___kont4514045141_
                             _tl4292542989_
                             _hd4292442987_))))))
              (if (gx#stx-pair? ___stx4513245133_)
                  (let ((_e4289643088_ (gx#stx-e ___stx4513245133_)))
                    (let ((_tl4289843093_ (##cdr _e4289643088_))
                          (_hd4289743091_ (##car _e4289643088_)))
                      (if (gx#stx-pair? _hd4289743091_)
                          (let ((_e4289943096_ (gx#stx-e _hd4289743091_)))
                            (let ((_tl4290143101_ (##cdr _e4289943096_))
                                  (_hd4290043099_ (##car _e4289943096_)))
                              (if (gx#identifier? _hd4290043099_)
                                  (if (gx#stx-eq? '%#quote _hd4290043099_)
                                      (if (gx#stx-pair? _tl4290143101_)
                                          (let ((_e4290243104_
                                                 (gx#stx-e _tl4290143101_)))
                                            (let ((_tl4290443109_
                                                   (##cdr _e4290243104_))
                                                  (_hd4290343107_
                                                   (##car _e4290243104_)))
                                              (if (gx#stx-datum?
                                                   _hd4290343107_)
                                                  (let ((_e4290543112_
                                                         (gx#stx-e
                                                          _hd4290343107_)))
                                                    (if (equal? _e4290543112_
                                                                '#!key)
                                                        (if (gx#stx-null?
                                                             _tl4290443109_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl4289843093_)
                        (let ((_e4290643115_ (gx#stx-e _tl4289843093_)))
                          (let ((_tl4290843120_ (##cdr _e4290643115_))
                                (_hd4290743118_ (##car _e4290643115_)))
                            (___kont4513445135_
                             _tl4290843120_
                             _hd4290743118_)))
                        (___kont4514045141_ _tl4289843093_ _hd4289743091_))
                    (___kont4514045141_ _tl4289843093_ _hd4289743091_))
                (if (equal? _e4290543112_ '#!rest)
                    (if (gx#stx-null? _tl4290443109_)
                        (___kont4513645137_ _tl4289843093_)
                        (___kont4514045141_ _tl4289843093_ _hd4289743091_))
                    (if (gx#stx-null? _tl4290443109_)
                        (if (gx#stx-pair? _tl4289843093_)
                            (let ((_e4293243008_ (gx#stx-e _tl4289843093_)))
                              (let ((_tl4293443013_ (##cdr _e4293243008_))
                                    (_hd4293343011_ (##car _e4293243008_)))
                                (___match4523945240_
                                 _e4289643088_
                                 _hd4289743091_
                                 _tl4289843093_
                                 _e4289943096_
                                 _hd4290043099_
                                 _tl4290143101_
                                 _e4290243104_
                                 _hd4290343107_
                                 _tl4290443109_
                                 _e4293243008_
                                 _hd4293343011_
                                 _tl4293443013_)))
                            (___kont4514045141_ _tl4289843093_ _hd4289743091_))
                        (___kont4514045141_ _tl4289843093_ _hd4289743091_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _tl4290443109_)
                                                      (if (gx#stx-pair?
                                                           _tl4289843093_)
                                                          (let ((_e4293243008_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl4289843093_)))
                    (let ((_tl4293443013_ (##cdr _e4293243008_))
                          (_hd4293343011_ (##car _e4293243008_)))
                      (___match4523945240_
                       _e4289643088_
                       _hd4289743091_
                       _tl4289843093_
                       _e4289943096_
                       _hd4290043099_
                       _tl4290143101_
                       _e4290243104_
                       _hd4290343107_
                       _tl4290443109_
                       _e4293243008_
                       _hd4293343011_
                       _tl4293443013_)))
                  (___kont4514045141_ _tl4289843093_ _hd4289743091_))
              (___kont4514045141_ _tl4289843093_ _hd4289743091_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (___kont4514045141_
                                           _tl4289843093_
                                           _hd4289743091_))
                                      (___kont4514045141_
                                       _tl4289843093_
                                       _hd4289743091_))
                                  (___kont4514045141_
                                   _tl4289843093_
                                   _hd4289743091_))))
                          (___kont4514045141_ _tl4289843093_ _hd4289743091_))))
                  (_g4289142951_))))))))
  (define gxc#!kw-lambda-primary::optimize-call
    (lambda (_self42875_ _stx42876_ _args42877_) (gxc#xform-call% _stx42876_)))
  (bind-method!
   gxc#!kw-lambda-primary::t
   'optimize-call
   gxc#!kw-lambda-primary::optimize-call
   '#f))
