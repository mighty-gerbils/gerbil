(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#&optimize-call
    (make-promise
     (lambda ()
       (let ((_tbl45338_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl45338_ (force gxc#&basic-xform))
           (table-set! _tbl45338_ '%#call gxc#optimize-call%)
           _tbl45338_)))))
  (define gxc#apply-optimize-call
    (lambda (_stx45331_ . _args45333_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx45331_ _args45333_))
       gxc#current-compile-methods
       (force gxc#&optimize-call))))
  (define gxc#optimize-call%
    (lambda (_stx45237_)
      (let* ((___stx4534145342_ _stx45237_)
             (_g4524045260_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4534145342_))))
        (let ((___kont4534345344_
               (lambda (_L45304_ _L45305_)
                 (let* ((_rator-id45323_ (gxc#identifier-symbol _L45305_))
                        (_rator-type45325_
                         (gxc#optimizer-resolve-type _rator-id45323_)))
                   (if (##structure-instance-of?
                        _rator-type45325_
                        'gxc#!procedure::t)
                       (begin
                         (gxc#verbose
                          '"optimize-call "
                          _rator-id45323_
                          '" => "
                          _rator-type45325_
                          '" "
                          (##structure-ref
                           _rator-type45325_
                           '1
                           gxc#!type::t
                           '#f))
                         (call-method
                          _rator-type45325_
                          'optimize-call
                          _stx45237_
                          _L45304_))
                       (if (not _rator-type45325_)
                           (gxc#xform-call% _stx45237_)
                           (gxc#raise-compile-error
                            '"Illegal application; not a procedure"
                            _stx45237_
                            _rator-type45325_))))))
              (___kont4534545346_ (lambda () (gxc#xform-call% _stx45237_))))
          (if (gx#stx-pair? ___stx4534145342_)
              (let ((_e4524445272_ (gx#stx-e ___stx4534145342_)))
                (let ((_tl4524645277_ (##cdr _e4524445272_))
                      (_hd4524545275_ (##car _e4524445272_)))
                  (if (gx#stx-pair? _tl4524645277_)
                      (let ((_e4524745280_ (gx#stx-e _tl4524645277_)))
                        (let ((_tl4524945285_ (##cdr _e4524745280_))
                              (_hd4524845283_ (##car _e4524745280_)))
                          (if (gx#stx-pair? _hd4524845283_)
                              (let ((_e4525045288_ (gx#stx-e _hd4524845283_)))
                                (let ((_tl4525245293_ (##cdr _e4525045288_))
                                      (_hd4525145291_ (##car _e4525045288_)))
                                  (if (gx#identifier? _hd4525145291_)
                                      (if (gx#stx-eq? '%#ref _hd4525145291_)
                                          (if (gx#stx-pair? _tl4525245293_)
                                              (let ((_e4525345296_
                                                     (gx#stx-e
                                                      _tl4525245293_)))
                                                (let ((_tl4525545301_
                                                       (##cdr _e4525345296_))
                                                      (_hd4525445299_
                                                       (##car _e4525345296_)))
                                                  (if (gx#stx-null?
                                                       _tl4525545301_)
                                                      (___kont4534345344_
                                                       _tl4524945285_
                                                       _hd4525445299_)
                                                      (___kont4534545346_))))
                                              (___kont4534545346_))
                                          (___kont4534545346_))
                                      (___kont4534545346_))))
                              (___kont4534545346_))))
                      (___kont4534545346_))))
              (___kont4534545346_))))))
  (define gxc#!struct-pred::optimize-call
    (lambda (_self45091_ _stx45092_ _args45093_)
      (let* ((_self4509445100_ _self45091_)
             (_E4509645104_
              (lambda () (error '"No clause matching" _self4509445100_)))
             (_K4509745229_
              (lambda (_struct-t45107_)
                (let* ((_struct-type45109_
                        (gxc#optimizer-resolve-type _struct-t45107_))
                       (_struct-type4511045124_ _struct-type45109_)
                       (_else4511345132_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx45092_
                           _struct-t45107_
                           _struct-type45109_))))
                  (let ((_K4511645204_
                         (lambda (_plist45143_ _struct-type-id45144_)
                           (let* ((___stx4537945380_ _args45093_)
                                  (_g4514745157_
                                   (lambda ()
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      ___stx4537945380_))))
                             (let ((___kont4538145382_
                                    (lambda (_L45177_)
                                      (let ((_expr45198_
                                             (gxc#compile-e _L45177_))
                                            (_op45199_
                                             (if (if _plist45143_
                                                     (assgetq 'final:
                                                              _plist45143_)
                                                     '#f)
                                                 '%#struct-direct-instance?
                                                 '%#struct-instance?)))
                                        (gxc#xform-wrap-source
                                         (cons _op45199_
                                               (cons (cons '%#quote
                                                           (cons _struct-type-id45144_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _expr45198_ '())))
                                         _stx45092_))))
                                   (___kont4538345384_
                                    (lambda ()
                                      (gxc#raise-compile-error
                                       '"Illegal struct predicate application"
                                       _stx45092_))))
                               (if (gx#stx-pair? ___stx4537945380_)
                                   (let ((_e4515045169_
                                          (gx#stx-e ___stx4537945380_)))
                                     (let ((_tl4515245174_
                                            (##cdr _e4515045169_))
                                           (_hd4515145172_
                                            (##car _e4515045169_)))
                                       (if (gx#stx-null? _tl4515245174_)
                                           (___kont4538145382_ _hd4515145172_)
                                           (___kont4538345384_))))
                                   (___kont4538345384_))))))
                        (_K4511545137_
                         (lambda () (gxc#xform-call% _stx45092_))))
                    (let ((_try-match4511245140_
                           (lambda ()
                             (if (##eq? _struct-type4511045124_ '#f)
                                 (_K4511545137_)
                                 (_else4511345132_)))))
                      (if (##structure-instance-of?
                           _struct-type4511045124_
                           'gxc#!struct-type::t)
                          (let* ((_e4511745207_
                                  (##vector-ref _struct-type4511045124_ '1))
                                 (_e4511845212_
                                  (##vector-ref _struct-type4511045124_ '2))
                                 (_e4511945215_
                                  (##vector-ref _struct-type4511045124_ '3))
                                 (_e4512045218_
                                  (##vector-ref _struct-type4511045124_ '4))
                                 (_e4512145221_
                                  (##vector-ref _struct-type4511045124_ '5))
                                 (_e4512245224_
                                  (##vector-ref _struct-type4511045124_ '6)))
                            (let ((_struct-type-id45210_ _e4511745207_)
                                  (_plist45227_ _e4512245224_))
                              (_K4511645204_
                               _plist45227_
                               _struct-type-id45210_)))
                          (_try-match4511245140_))))))))
        (if (##structure-instance-of? _self4509445100_ 'gxc#!struct-pred::t)
            (let* ((_e4509845232_ (##vector-ref _self4509445100_ '1))
                   (_struct-t45235_ _e4509845232_))
              (_K4509745229_ _struct-t45235_))
            (_E4509645104_)))))
  (bind-method!
   gxc#!struct-pred::t
   'optimize-call
   gxc#!struct-pred::optimize-call
   '#f)
  (define gxc#!struct-cons::optimize-call
    (lambda (_self44865_ _stx44866_ _args44867_)
      (let* ((_self4486844874_ _self44865_)
             (_E4487044878_
              (lambda () (error '"No clause matching" _self4486844874_)))
             (_K4487144961_
              (lambda (_struct-t44881_)
                (let* ((_struct-type44883_
                        (gxc#optimizer-resolve-type _struct-t44881_))
                       (_struct-type4488444897_ _struct-type44883_)
                       (_else4488744905_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct constructor application; not a struct type"
                           _stx44866_
                           _struct-t44881_
                           _struct-type44883_))))
                  (let ((_K4489044935_
                         (lambda (_ctor44916_
                                  _xfields44917_
                                  _fields44918_
                                  _type-id44919_)
                           (let* ((_args44921_ (map gxc#compile-e _args44867_))
                                  (_$e44923_
                                   (if _ctor44916_
                                       (if _xfields44917_
                                           (gxc#!struct-type-lookup-method
                                            _struct-type44883_
                                            _ctor44916_)
                                           '#f)
                                       '#f)))
                             (if _$e44923_
                                 ((lambda (_kons44926_)
                                    (let ((_$obj44928_
                                           (make-symbol (gensym '__obj))))
                                      (gxc#xform-wrap-source
                                       (cons '%#let-values
                                             (cons (cons (cons (cons _$obj44928_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons (cons '%#call
                                   (cons (cons '%#ref (cons 'make-object '()))
                                         (cons (cons '%#ref
                                                     (cons _struct-t44881_
                                                           '()))
                                               (cons (cons '%#quote
                                                           (cons (fx+ _fields44918_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _xfields44917_)
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
                                     (cons (cons '%#ref (cons _kons44926_ '()))
                                           (cons (cons '%#ref
                                                       (cons _$obj44928_ '()))
                                                 _args44921_)))
                               _stx44866_))
                             (cons (cons '%#ref (cons _$obj44928_ '())) '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _stx44866_)))
                                  _$e44923_)
                                 (if (if _ctor44916_ '#t (not _xfields44917_))
                                     (gxc#xform-wrap-source
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons 'make-struct-instance
                                                              '()))
                                                  (cons (cons '%#ref
                                                              (cons _struct-t44881_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _args44921_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _stx44866_)
                                     (let ((_arity44933_
                                            (fx+ _fields44918_
                                                 _xfields44917_)))
                                       (if (fx= _arity44933_
                                                (length _args44921_))
                                           (gxc#xform-wrap-source
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#ref (cons _struct-t44881_ '())) _args44921_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _stx44866_)
                                           (gxc#raise-compile-error
                                            '"Illegal struct constructor application; arity mismatch"
                                            _stx44866_
                                            _struct-t44881_
                                            _arity44933_))))))))
                        (_K4488944910_
                         (lambda ()
                           (begin
                             (gxc#verbose
                              '"cannot inline struct constructor; unknown struct type "
                              _struct-t44881_)
                             (gxc#xform-call% _stx44866_)))))
                    (let ((_try-match4488644913_
                           (lambda ()
                             (if (##eq? _struct-type4488444897_ '#f)
                                 (_K4488944910_)
                                 (_else4488744905_)))))
                      (if (##structure-instance-of?
                           _struct-type4488444897_
                           'gxc#!struct-type::t)
                          (let* ((_e4489144938_
                                  (##vector-ref _struct-type4488444897_ '1))
                                 (_e4489244943_
                                  (##vector-ref _struct-type4488444897_ '2))
                                 (_e4489344946_
                                  (##vector-ref _struct-type4488444897_ '3))
                                 (_e4489444951_
                                  (##vector-ref _struct-type4488444897_ '4))
                                 (_e4489544956_
                                  (##vector-ref _struct-type4488444897_ '5)))
                            (let ((_type-id44941_ _e4489144938_)
                                  (_fields44949_ _e4489344946_)
                                  (_xfields44954_ _e4489444951_)
                                  (_ctor44959_ _e4489544956_))
                              (_K4489044935_
                               _ctor44959_
                               _xfields44954_
                               _fields44949_
                               _type-id44941_)))
                          (_try-match4488644913_))))))))
        (if (##structure-instance-of? _self4486844874_ 'gxc#!struct-cons::t)
            (let* ((_e4487244964_ (##vector-ref _self4486844874_ '1))
                   (_struct-t44967_ _e4487244964_))
              (_K4487144961_ _struct-t44967_))
            (_E4487044878_)))))
  (bind-method!
   gxc#!struct-cons::t
   'optimize-call
   gxc#!struct-cons::optimize-call
   '#f)
  (define gxc#!struct-getf::optimize-call
    (lambda (_self44576_ _stx44577_ _args44578_)
      (let* ((_self4457944587_ _self44576_)
             (_E4458144591_
              (lambda () (error '"No clause matching" _self4457944587_)))
             (_K4458244725_
              (lambda (_unchecked?44594_ _off44595_ _struct-t44596_)
                (let* ((_struct-type44598_
                        (gxc#optimizer-resolve-type _struct-t44596_))
                       (_struct-type4459944613_ _struct-type44598_)
                       (_else4460244621_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx44577_
                           _struct-t44596_
                           _struct-type44598_))))
                  (let ((_K4460544696_
                         (lambda (_plist44632_
                                  _xfields44633_
                                  _fields44634_
                                  _struct-type-id44635_)
                           (if _xfields44633_
                               (let* ((___stx4542745428_ _args44578_)
                                      (_g4463844648_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx4542745428_))))
                                 (let ((___kont4542945430_
                                        (lambda (_L44668_)
                                          (let ((_expr44689_
                                                 (gxc#compile-e _L44668_))
                                                (_off44690_
                                                 (fx+ _off44595_
                                                      _xfields44633_
                                                      '1))
                                                (_op44691_
                                                 (if _unchecked?44594_
                                                     '%#struct-unchecked-ref
                                                     (if (if _plist44632_
                                                             (assgetq 'final:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _plist44632_)
                     '#f)
                 '%#struct-direct-ref
                 '%#struct-ref))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (gxc#xform-wrap-source
                                             (cons _op44691_
                                                   (cons (cons '%#ref
                                                               (cons _struct-t44596_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons '%#quote (cons _off44690_ '()))
                       (cons _expr44689_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _stx44577_))))
                                       (___kont4543145432_
                                        (lambda ()
                                          (gxc#raise-compile-error
                                           '"Illegal struct accessor application"
                                           _stx44577_))))
                                   (if (gx#stx-pair? ___stx4542745428_)
                                       (let ((_e4464144660_
                                              (gx#stx-e ___stx4542745428_)))
                                         (let ((_tl4464344665_
                                                (##cdr _e4464144660_))
                                               (_hd4464244663_
                                                (##car _e4464144660_)))
                                           (if (gx#stx-null? _tl4464344665_)
                                               (___kont4542945430_
                                                _hd4464244663_)
                                               (___kont4543145432_))))
                                       (___kont4543145432_))))
                               (begin
                                 (gxc#verbose
                                  '"struct-getf: incomplete struct "
                                  _struct-type-id44635_)
                                 (gxc#xform-call% _stx44577_)))))
                        (_K4460444626_
                         (lambda () (gxc#xform-call% _stx44577_))))
                    (let ((_try-match4460144629_
                           (lambda ()
                             (if (##eq? _struct-type4459944613_ '#f)
                                 (_K4460444626_)
                                 (_else4460244621_)))))
                      (if (##structure-instance-of?
                           _struct-type4459944613_
                           'gxc#!struct-type::t)
                          (let* ((_e4460644699_
                                  (##vector-ref _struct-type4459944613_ '1))
                                 (_e4460744704_
                                  (##vector-ref _struct-type4459944613_ '2))
                                 (_e4460844707_
                                  (##vector-ref _struct-type4459944613_ '3))
                                 (_e4460944712_
                                  (##vector-ref _struct-type4459944613_ '4))
                                 (_e4461044717_
                                  (##vector-ref _struct-type4459944613_ '5))
                                 (_e4461144720_
                                  (##vector-ref _struct-type4459944613_ '6)))
                            (let ((_struct-type-id44702_ _e4460644699_)
                                  (_fields44710_ _e4460844707_)
                                  (_xfields44715_ _e4460944712_)
                                  (_plist44723_ _e4461144720_))
                              (_K4460544696_
                               _plist44723_
                               _xfields44715_
                               _fields44710_
                               _struct-type-id44702_)))
                          (_try-match4460144629_))))))))
        (if (##structure-instance-of? _self4457944587_ 'gxc#!struct-getf::t)
            (let* ((_e4458344728_ (##vector-ref _self4457944587_ '1))
                   (_struct-t44731_ _e4458344728_)
                   (_e4458444733_ (##vector-ref _self4457944587_ '2))
                   (_off44736_ _e4458444733_)
                   (_e4458544738_ (##vector-ref _self4457944587_ '3))
                   (_unchecked?44741_ _e4458544738_))
              (_K4458244725_ _unchecked?44741_ _off44736_ _struct-t44731_))
            (_E4458144591_)))))
  (bind-method!
   gxc#!struct-getf::t
   'optimize-call
   gxc#!struct-getf::optimize-call
   '#f)
  (define gxc#!struct-setf::optimize-call
    (lambda (_self44270_ _stx44271_ _args44272_)
      (let* ((_self4427344281_ _self44270_)
             (_E4427544285_
              (lambda () (error '"No clause matching" _self4427344281_)))
             (_K4427644436_
              (lambda (_unchecked?44288_ _off44289_ _struct-t44290_)
                (let* ((_struct-type44292_
                        (gxc#optimizer-resolve-type _struct-t44290_))
                       (_struct-type4429344307_ _struct-type44292_)
                       (_else4429644315_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx44271_
                           _struct-t44290_
                           _struct-type44292_))))
                  (let ((_K4429944407_
                         (lambda (_plist44326_
                                  _xfields44327_
                                  _fields44328_
                                  _struct-type-id44329_)
                           (if _xfields44327_
                               (let* ((___stx4546045461_ _args44272_)
                                      (_g4433244346_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx4546045461_))))
                                 (let ((___kont4546245463_
                                        (lambda (_L44374_ _L44375_)
                                          (let ((_expr44399_
                                                 (gxc#compile-e _L44375_))
                                                (_val44400_
                                                 (gxc#compile-e _L44374_))
                                                (_off44401_
                                                 (fx+ _off44289_
                                                      _xfields44327_
                                                      '1))
                                                (_op44402_
                                                 (if _unchecked?44288_
                                                     '%#struct-unchecked-set!
                                                     (if (if _plist44326_
                                                             (assgetq 'final:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _plist44326_)
                     '#f)
                 '%#struct-direct-set!
                 '%#struct-set!))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (gxc#xform-wrap-source
                                             (cons _op44402_
                                                   (cons (cons '%#ref
                                                               (cons _struct-t44290_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons '%#quote (cons _off44401_ '()))
                       (cons _expr44399_ (cons _val44400_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _stx44271_))))
                                       (___kont4546445465_
                                        (lambda ()
                                          (gxc#raise-compile-error
                                           '"Illegal struct mutator application"
                                           _stx44271_))))
                                   (if (gx#stx-pair? ___stx4546045461_)
                                       (let ((_e4433644358_
                                              (gx#stx-e ___stx4546045461_)))
                                         (let ((_tl4433844363_
                                                (##cdr _e4433644358_))
                                               (_hd4433744361_
                                                (##car _e4433644358_)))
                                           (if (gx#stx-pair? _tl4433844363_)
                                               (let ((_e4433944366_
                                                      (gx#stx-e
                                                       _tl4433844363_)))
                                                 (let ((_tl4434144371_
                                                        (##cdr _e4433944366_))
                                                       (_hd4434044369_
                                                        (##car _e4433944366_)))
                                                   (if (gx#stx-null?
                                                        _tl4434144371_)
                                                       (___kont4546245463_
                                                        _hd4434044369_
                                                        _hd4433744361_)
                                                       (___kont4546445465_))))
                                               (___kont4546445465_))))
                                       (___kont4546445465_))))
                               (begin
                                 (gxc#verbose
                                  '"struct-setf: incomplete struct "
                                  _struct-type-id44329_)
                                 (gxc#xform-call% _stx44271_)))))
                        (_K4429844320_
                         (lambda () (gxc#xform-call% _stx44271_))))
                    (let ((_try-match4429544323_
                           (lambda ()
                             (if (##eq? _struct-type4429344307_ '#f)
                                 (_K4429844320_)
                                 (_else4429644315_)))))
                      (if (##structure-instance-of?
                           _struct-type4429344307_
                           'gxc#!struct-type::t)
                          (let* ((_e4430044410_
                                  (##vector-ref _struct-type4429344307_ '1))
                                 (_e4430144415_
                                  (##vector-ref _struct-type4429344307_ '2))
                                 (_e4430244418_
                                  (##vector-ref _struct-type4429344307_ '3))
                                 (_e4430344423_
                                  (##vector-ref _struct-type4429344307_ '4))
                                 (_e4430444428_
                                  (##vector-ref _struct-type4429344307_ '5))
                                 (_e4430544431_
                                  (##vector-ref _struct-type4429344307_ '6)))
                            (let ((_struct-type-id44413_ _e4430044410_)
                                  (_fields44421_ _e4430244418_)
                                  (_xfields44426_ _e4430344423_)
                                  (_plist44434_ _e4430544431_))
                              (_K4429944407_
                               _plist44434_
                               _xfields44426_
                               _fields44421_
                               _struct-type-id44413_)))
                          (_try-match4429544323_))))))))
        (if (##structure-instance-of? _self4427344281_ 'gxc#!struct-setf::t)
            (let* ((_e4427744439_ (##vector-ref _self4427344281_ '1))
                   (_struct-t44442_ _e4427744439_)
                   (_e4427844444_ (##vector-ref _self4427344281_ '2))
                   (_off44447_ _e4427844444_)
                   (_e4427944449_ (##vector-ref _self4427344281_ '3))
                   (_unchecked?44452_ _e4427944449_))
              (_K4427644436_ _unchecked?44452_ _off44447_ _struct-t44442_))
            (_E4427544285_)))))
  (bind-method!
   gxc#!struct-setf::t
   'optimize-call
   gxc#!struct-setf::optimize-call
   '#f)
  (define gxc#!lambda::optimize-call
    (lambda (_self44104_ _stx44105_ _args44106_)
      (let* ((_self4410744116_ _self44104_)
             (_E4410944120_
              (lambda () (error '"No clause matching" _self4410744116_)))
             (_K4411044127_
              (lambda (_inline44123_ _dispatch44124_ _arity44125_)
                (begin
                  (if (gxc#!lambda-arity-match? _self44104_ _args44106_)
                      '#!void
                      (gxc#raise-compile-error
                       '"Illegal lambda application; arity mismatch"
                       _stx44105_
                       _arity44125_))
                  (if _inline44123_
                      (begin
                        (gxc#verbose '"inline lambda")
                        (gxc#compile-e
                         (gxc#xform-wrap-source
                          (_inline44123_ _stx44105_)
                          _stx44105_)))
                      (if _dispatch44124_
                          (begin
                            (gxc#verbose
                             '"dispatch lambda => "
                             _dispatch44124_)
                            (gxc#compile-e
                             (gxc#xform-wrap-source
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons _dispatch44124_ '()))
                                          _args44106_))
                              _stx44105_)))
                          (gxc#xform-call% _stx44105_)))))))
        (if (##structure-instance-of? _self4410744116_ 'gxc#!lambda::t)
            (let* ((_e4411144130_ (##vector-ref _self4410744116_ '1))
                   (_e4411244133_ (##vector-ref _self4410744116_ '2))
                   (_arity44136_ _e4411244133_)
                   (_e4411344138_ (##vector-ref _self4410744116_ '3))
                   (_dispatch44141_ _e4411344138_)
                   (_e4411444143_ (##vector-ref _self4410744116_ '4))
                   (_inline44146_ _e4411444143_))
              (_K4411044127_ _inline44146_ _dispatch44141_ _arity44136_))
            (_E4410944120_)))))
  (bind-method! gxc#!lambda::t 'optimize-call gxc#!lambda::optimize-call '#f)
  (define gxc#!case-lambda::optimize-call
    (lambda (_self43943_ _stx43944_ _args43945_)
      (let* ((_self4394643953_ _self43943_)
             (_E4394843957_
              (lambda () (error '"No clause matching" _self4394643953_)))
             (_K4394943971_
              (lambda (_clauses43960_)
                (let ((_$e43966_
                       (find (lambda (_g4396143963_)
                               (gxc#!lambda-arity-match?
                                _g4396143963_
                                _args43945_))
                             _clauses43960_)))
                  (if _$e43966_
                      ((lambda (_clause43969_)
                         (call-method
                          _clause43969_
                          'optimize-call
                          _stx43944_
                          _args43945_))
                       _$e43966_)
                      (gxc#raise-compile-error
                       '"Illegal case-lambda application; arity mismatch"
                       _stx43944_
                       (map gxc#!lambda-arity _clauses43960_)))))))
        (if (##structure-instance-of? _self4394643953_ 'gxc#!case-lambda::t)
            (let* ((_e4395043974_ (##vector-ref _self4394643953_ '1))
                   (_e4395143977_ (##vector-ref _self4394643953_ '2))
                   (_clauses43980_ _e4395143977_))
              (_K4394943971_ _clauses43980_))
            (_E4394843957_)))))
  (bind-method!
   gxc#!case-lambda::t
   'optimize-call
   gxc#!case-lambda::optimize-call
   '#f)
  (define gxc#!lambda-arity-match?
    (lambda (_self43757_ _args43758_)
      (let* ((_self4375943766_ _self43757_)
             (_E4376143770_
              (lambda () (error '"No clause matching" _self4375943766_)))
             (_K4376243810_
              (lambda (_arity43773_)
                (let* ((_arity4377443783_ _arity43773_)
                       (_E4377743787_
                        (lambda ()
                          (error '"No clause matching" _arity4377443783_))))
                  (let ((_K4378143807_
                         (lambda () (fx= (length _args43758_) _arity43773_)))
                        (_K4377843793_
                         (lambda (_arity43791_)
                           (fx>= (length _args43758_) _arity43791_))))
                    (let ((_try-match4377643803_
                           (lambda ()
                             (if (##pair? _arity4377443783_)
                                 (let ((_tl4378043798_
                                        (##cdr _arity4377443783_))
                                       (_hd4377943796_
                                        (##car _arity4377443783_)))
                                   (if (##null? _tl4378043798_)
                                       (let ((_arity43801_ _hd4377943796_))
                                         (_K4377843793_ _arity43801_))
                                       (_E4377743787_)))
                                 (_E4377743787_)))))
                      (if (fixnum? _arity4377443783_)
                          (_K4378143807_)
                          (_try-match4377643803_))))))))
        (if (##structure-instance-of? _self4375943766_ 'gxc#!lambda::t)
            (let* ((_e4376343813_ (##vector-ref _self4375943766_ '1))
                   (_e4376443816_ (##vector-ref _self4375943766_ '2))
                   (_arity43819_ _e4376443816_))
              (_K4376243810_ _arity43819_))
            (_E4376143770_)))))
  (define gxc#!kw-lambda::optimize-call
    (lambda (_self43642_ _stx43643_ _args43644_)
      (let* ((_self4364543653_ _self43642_)
             (_E4364743657_
              (lambda () (error '"No clause matching" _self4364543653_)))
             (_K4364843741_
              (lambda (_dispatch43660_ _table43661_)
                (let* ((_g4366243671_
                        (gxc#optimizer-lookup-type _dispatch43660_))
                       (_else4366443679_
                        (lambda ()
                          (begin
                            (gxc#verbose
                             '"unknown keyword dispatch lambda "
                             _dispatch43660_)
                            (gxc#xform-call% _stx43643_))))
                       (_K4366643725_
                        (lambda (_main43682_ _keys43683_)
                          (let ((_g45625_
                                 (gxc#!kw-lambda-split-args
                                  _stx43643_
                                  _args43644_)))
                            (begin
                              (let ((_g45626_
                                     (if (##values? _g45625_)
                                         (##vector-length _g45625_)
                                         1)))
                                (if (not (##fx= _g45626_ 2))
                                    (error "Context expects 2 values"
                                           _g45626_)))
                              (let ((_pargs43685_ (##vector-ref _g45625_ 0))
                                    (_kwargs43686_ (##vector-ref _g45625_ 1)))
                                (begin
                                  (gxc#verbose
                                   '"dispatch kw-lambda => "
                                   _main43682_)
                                  (if _table43661_
                                      (let ((_xargs43693_
                                             (map (lambda (_key43688_)
                                                    (let ((_$e43690_
                                                           (assgetq _key43688_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _kwargs43686_)))
              (if _$e43690_ (values _$e43690_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _keys43683_)))
                                        (begin
                                          (for-each
                                           (lambda (_kw43695_)
                                             (if (memq (car _kw43695_)
                                                       _keys43683_)
                                                 '#!void
                                                 (gxc#raise-compile-error
                                                  '"Illegal keyword lambda application; unexpected keyword"
                                                  _stx43643_
                                                  _keys43683_
                                                  _kw43695_)))
                                           _kwargs43686_)
                                          (gxc#compile-e
                                           (gxc#xform-wrap-source
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons _main43682_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote (cons '#f '()))
                      (foldr1 cons _pargs43685_ _xargs43693_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _stx43643_))))
                                      (let* ((_kwt43697_
                                              (make-symbol (gensym '__kwt)))
                                             (_kwvars43700_
                                              (map (lambda (_g45627_)
                                                     (make-symbol
                                                      (gensym '__kw)))
                                                   _kwargs43686_))
                                             (_kwbind43705_
                                              (map (lambda (_kw43702_
                                                            _kwvar43703_)
                                                     (cons (cons _kwvar43703_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   (cons (cdr _kw43702_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs43686_
                                                   _kwvars43700_))
                                             (_kwset43710_
                                              (map (lambda (_kw43707_
                                                            _kwvar43708_)
                                                     (cons '%#call
                                                           (cons '(%#ref hash-put!)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons _kwt43697_ '()))
                               (cons (cons '%#quote (cons (car _kw43707_) '()))
                                     (cons (cons '%#ref
                                                 (cons _kwvar43708_ '()))
                                           '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs43686_
                                                   _kwvars43700_))
                                             (_xkwargs43715_
                                              (map (lambda (_kw43712_
                                                            _kwvar43713_)
                                                     (cons (car _kw43712_)
                                                           (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _kwvar43713_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs43686_
                                                   _kwvars43700_))
                                             (_xargs43722_
                                              (map (lambda (_key43717_)
                                                     (let ((_$e43719_
                                                            (assgetq _key43717_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _xkwargs43715_)))
               (if _$e43719_ (values _$e43719_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _keys43683_)))
                                        (gxc#compile-e
                                         (gxc#xform-wrap-source
                                          (cons '%#let-values
                                                (cons _kwbind43705_
                                                      (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (cons (cons _kwt43697_ '())
                                            (cons (gxc#xform-wrap-source
                                                   (cons '%#call
                                                         (cons '(%#ref make-hash-table-eq)
                                                               (cons '(%#quote size:)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons '%#quote
                                         (cons (length _kwargs43686_) '()))
                                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx43643_)
                                                  '()))
                                      '())
                                (cons (cons '%#begin
                                            (foldr1 cons
                                                    (cons (gxc#xform-wrap-source
                                                           (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons _main43682_ '()))
                               (cons (cons '%#ref (cons _kwt43697_ '()))
                                     (foldr1 cons _pargs43685_ _xargs43722_))))
                   _stx43643_)
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _kwset43710_))
                                      '())))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _stx43643_)))))))))))
                  (if (##structure-instance-of?
                       _g4366243671_
                       'gxc#!kw-lambda-primary::t)
                      (let* ((_e4366743728_ (##vector-ref _g4366243671_ '1))
                             (_e4366843731_ (##vector-ref _g4366243671_ '2))
                             (_keys43734_ _e4366843731_)
                             (_e4366943736_ (##vector-ref _g4366243671_ '3))
                             (_main43739_ _e4366943736_))
                        (_K4366643725_ _main43739_ _keys43734_))
                      (_else4366443679_))))))
        (if (##structure-instance-of? _self4364543653_ 'gxc#!kw-lambda::t)
            (let* ((_e4364943744_ (##vector-ref _self4364543653_ '1))
                   (_e4365043747_ (##vector-ref _self4364543653_ '2))
                   (_table43750_ _e4365043747_)
                   (_e4365143752_ (##vector-ref _self4364543653_ '3))
                   (_dispatch43755_ _e4365143752_))
              (_K4364843741_ _dispatch43755_ _table43750_))
            (_E4364743657_)))))
  (bind-method!
   gxc#!kw-lambda::t
   'optimize-call
   gxc#!kw-lambda::optimize-call
   '#f)
  (define gxc#!kw-lambda-split-args
    (lambda (_stx43255_ _args43256_)
      (let _lp43258_ ((_rest43260_ _args43256_)
                      (_pargs43261_ '())
                      (_kwargs43262_ '()))
        (let* ((___stx4550845509_ _rest43260_)
               (_g4326843320_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx4550845509_))))
          (let ((___kont4551045511_
                 (lambda (_L43499_ _L43500_)
                   (_lp43258_
                    _L43499_
                    (cons _L43500_ _pargs43261_)
                    _kwargs43262_)))
                (___kont4551245513_
                 (lambda (_L43445_)
                   (values (foldl1 cons _L43445_ _pargs43261_)
                           (reverse _kwargs43262_))))
                (___kont4551445515_
                 (lambda (_L43392_ _L43393_ _L43394_)
                   (let ((_kw43411_ (gx#stx-e _L43394_)))
                     (if (assq _kw43411_ _kwargs43262_)
                         (gxc#raise-compile-error
                          '"Illegal keyword lambda application; duplicate keyword"
                          _stx43255_
                          _kw43411_)
                         (_lp43258_
                          _L43392_
                          _pargs43261_
                          (cons (cons _kw43411_ _L43393_) _kwargs43262_))))))
                (___kont4551645517_
                 (lambda (_L43340_ _L43341_)
                   (_lp43258_
                    _L43340_
                    (cons _L43341_ _pargs43261_)
                    _kwargs43262_)))
                (___kont4551845519_
                 (lambda ()
                   (values (reverse _pargs43261_) (reverse _kwargs43262_)))))
            (let* ((_g4326743327_
                    (lambda ()
                      (if (gx#stx-null? ___stx4550845509_)
                          (___kont4551845519_)
                          (_g4326843320_))))
                   (___match4561545616_
                    (lambda (_e4329943360_
                             _hd4330043363_
                             _tl4330143365_
                             _e4330243368_
                             _hd4330343371_
                             _tl4330443373_
                             _e4330543376_
                             _hd4330643379_
                             _tl4330743381_
                             _e4330843384_
                             _hd4330943387_
                             _tl4331043389_)
                      (let ((_L43392_ _tl4331043389_)
                            (_L43393_ _hd4330943387_)
                            (_L43394_ _hd4330643379_))
                        (if (gx#stx-keyword? _L43394_)
                            (___kont4551445515_ _L43392_ _L43393_ _L43394_)
                            (___kont4551645517_
                             _tl4330143365_
                             _hd4330043363_))))))
              (if (gx#stx-pair? ___stx4550845509_)
                  (let ((_e4327243464_ (gx#stx-e ___stx4550845509_)))
                    (let ((_tl4327443469_ (##cdr _e4327243464_))
                          (_hd4327343467_ (##car _e4327243464_)))
                      (if (gx#stx-pair? _hd4327343467_)
                          (let ((_e4327543472_ (gx#stx-e _hd4327343467_)))
                            (let ((_tl4327743477_ (##cdr _e4327543472_))
                                  (_hd4327643475_ (##car _e4327543472_)))
                              (if (gx#identifier? _hd4327643475_)
                                  (if (gx#stx-eq? '%#quote _hd4327643475_)
                                      (if (gx#stx-pair? _tl4327743477_)
                                          (let ((_e4327843480_
                                                 (gx#stx-e _tl4327743477_)))
                                            (let ((_tl4328043485_
                                                   (##cdr _e4327843480_))
                                                  (_hd4327943483_
                                                   (##car _e4327843480_)))
                                              (if (gx#stx-datum?
                                                   _hd4327943483_)
                                                  (let ((_e4328143488_
                                                         (gx#stx-e
                                                          _hd4327943483_)))
                                                    (if (equal? _e4328143488_
                                                                '#!key)
                                                        (if (gx#stx-null?
                                                             _tl4328043485_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl4327443469_)
                        (let ((_e4328243491_ (gx#stx-e _tl4327443469_)))
                          (let ((_tl4328443496_ (##cdr _e4328243491_))
                                (_hd4328343494_ (##car _e4328243491_)))
                            (___kont4551045511_
                             _tl4328443496_
                             _hd4328343494_)))
                        (___kont4551645517_ _tl4327443469_ _hd4327343467_))
                    (___kont4551645517_ _tl4327443469_ _hd4327343467_))
                (if (equal? _e4328143488_ '#!rest)
                    (if (gx#stx-null? _tl4328043485_)
                        (___kont4551245513_ _tl4327443469_)
                        (___kont4551645517_ _tl4327443469_ _hd4327343467_))
                    (if (gx#stx-null? _tl4328043485_)
                        (if (gx#stx-pair? _tl4327443469_)
                            (let ((_e4330843384_ (gx#stx-e _tl4327443469_)))
                              (let ((_tl4331043389_ (##cdr _e4330843384_))
                                    (_hd4330943387_ (##car _e4330843384_)))
                                (___match4561545616_
                                 _e4327243464_
                                 _hd4327343467_
                                 _tl4327443469_
                                 _e4327543472_
                                 _hd4327643475_
                                 _tl4327743477_
                                 _e4327843480_
                                 _hd4327943483_
                                 _tl4328043485_
                                 _e4330843384_
                                 _hd4330943387_
                                 _tl4331043389_)))
                            (___kont4551645517_ _tl4327443469_ _hd4327343467_))
                        (___kont4551645517_ _tl4327443469_ _hd4327343467_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _tl4328043485_)
                                                      (if (gx#stx-pair?
                                                           _tl4327443469_)
                                                          (let ((_e4330843384_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl4327443469_)))
                    (let ((_tl4331043389_ (##cdr _e4330843384_))
                          (_hd4330943387_ (##car _e4330843384_)))
                      (___match4561545616_
                       _e4327243464_
                       _hd4327343467_
                       _tl4327443469_
                       _e4327543472_
                       _hd4327643475_
                       _tl4327743477_
                       _e4327843480_
                       _hd4327943483_
                       _tl4328043485_
                       _e4330843384_
                       _hd4330943387_
                       _tl4331043389_)))
                  (___kont4551645517_ _tl4327443469_ _hd4327343467_))
              (___kont4551645517_ _tl4327443469_ _hd4327343467_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (___kont4551645517_
                                           _tl4327443469_
                                           _hd4327343467_))
                                      (___kont4551645517_
                                       _tl4327443469_
                                       _hd4327343467_))
                                  (___kont4551645517_
                                   _tl4327443469_
                                   _hd4327343467_))))
                          (___kont4551645517_ _tl4327443469_ _hd4327343467_))))
                  (_g4326743327_))))))))
  (define gxc#!kw-lambda-primary::optimize-call
    (lambda (_self43251_ _stx43252_ _args43253_) (gxc#xform-call% _stx43252_)))
  (bind-method!
   gxc#!kw-lambda-primary::t
   'optimize-call
   gxc#!kw-lambda-primary::optimize-call
   '#f))
