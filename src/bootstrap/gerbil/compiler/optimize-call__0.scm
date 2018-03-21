(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#&optimize-call
    (make-promise
     (lambda ()
       (let ((_tbl45333_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl45333_ (force gxc#&basic-xform))
           (table-set! _tbl45333_ '%#call gxc#optimize-call%)
           _tbl45333_)))))
  (define gxc#apply-optimize-call
    (lambda (_stx45326_ . _args45328_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx45326_ _args45328_))
       gxc#current-compile-methods
       (force gxc#&optimize-call))))
  (define gxc#optimize-call%
    (lambda (_stx45232_)
      (let* ((___stx4533645337_ _stx45232_)
             (_g4523545255_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4533645337_))))
        (let ((___kont4533845339_
               (lambda (_L45299_ _L45300_)
                 (let* ((_rator-id45318_ (gxc#identifier-symbol _L45300_))
                        (_rator-type45320_
                         (gxc#optimizer-resolve-type _rator-id45318_)))
                   (if (##structure-instance-of?
                        _rator-type45320_
                        'gxc#!procedure::t)
                       (begin
                         (gxc#verbose
                          '"optimize-call "
                          _rator-id45318_
                          '" => "
                          _rator-type45320_
                          '" "
                          (##structure-ref
                           _rator-type45320_
                           '1
                           gxc#!type::t
                           '#f))
                         (call-method
                          _rator-type45320_
                          'optimize-call
                          _stx45232_
                          _L45299_))
                       (if (not _rator-type45320_)
                           (gxc#xform-call% _stx45232_)
                           (gxc#raise-compile-error
                            '"Illegal application; not a procedure"
                            _stx45232_
                            _rator-type45320_))))))
              (___kont4534045341_ (lambda () (gxc#xform-call% _stx45232_))))
          (if (gx#stx-pair? ___stx4533645337_)
              (let ((_e4523945267_ (gx#stx-e ___stx4533645337_)))
                (let ((_tl4524145272_ (##cdr _e4523945267_))
                      (_hd4524045270_ (##car _e4523945267_)))
                  (if (gx#stx-pair? _tl4524145272_)
                      (let ((_e4524245275_ (gx#stx-e _tl4524145272_)))
                        (let ((_tl4524445280_ (##cdr _e4524245275_))
                              (_hd4524345278_ (##car _e4524245275_)))
                          (if (gx#stx-pair? _hd4524345278_)
                              (let ((_e4524545283_ (gx#stx-e _hd4524345278_)))
                                (let ((_tl4524745288_ (##cdr _e4524545283_))
                                      (_hd4524645286_ (##car _e4524545283_)))
                                  (if (gx#identifier? _hd4524645286_)
                                      (if (gx#stx-eq? '%#ref _hd4524645286_)
                                          (if (gx#stx-pair? _tl4524745288_)
                                              (let ((_e4524845291_
                                                     (gx#stx-e
                                                      _tl4524745288_)))
                                                (let ((_tl4525045296_
                                                       (##cdr _e4524845291_))
                                                      (_hd4524945294_
                                                       (##car _e4524845291_)))
                                                  (if (gx#stx-null?
                                                       _tl4525045296_)
                                                      (___kont4533845339_
                                                       _tl4524445280_
                                                       _hd4524945294_)
                                                      (___kont4534045341_))))
                                              (___kont4534045341_))
                                          (___kont4534045341_))
                                      (___kont4534045341_))))
                              (___kont4534045341_))))
                      (___kont4534045341_))))
              (___kont4534045341_))))))
  (define gxc#!struct-pred::optimize-call
    (lambda (_self45086_ _stx45087_ _args45088_)
      (let* ((_self4508945095_ _self45086_)
             (_E4509145099_
              (lambda () (error '"No clause matching" _self4508945095_)))
             (_K4509245224_
              (lambda (_struct-t45102_)
                (let* ((_struct-type45104_
                        (gxc#optimizer-resolve-type _struct-t45102_))
                       (_struct-type4510545119_ _struct-type45104_)
                       (_else4510845127_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx45087_
                           _struct-t45102_
                           _struct-type45104_))))
                  (let ((_K4511145199_
                         (lambda (_plist45138_ _struct-type-id45139_)
                           (let* ((___stx4537445375_ _args45088_)
                                  (_g4514245152_
                                   (lambda ()
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      ___stx4537445375_))))
                             (let ((___kont4537645377_
                                    (lambda (_L45172_)
                                      (let ((_expr45193_
                                             (gxc#compile-e _L45172_))
                                            (_op45194_
                                             (if (if _plist45138_
                                                     (assgetq 'final:
                                                              _plist45138_)
                                                     '#f)
                                                 '%#struct-direct-instance?
                                                 '%#struct-instance?)))
                                        (gxc#xform-wrap-source
                                         (cons _op45194_
                                               (cons (cons '%#quote
                                                           (cons _struct-type-id45139_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _expr45193_ '())))
                                         _stx45087_))))
                                   (___kont4537845379_
                                    (lambda ()
                                      (gxc#raise-compile-error
                                       '"Illegal struct predicate application"
                                       _stx45087_))))
                               (if (gx#stx-pair? ___stx4537445375_)
                                   (let ((_e4514545164_
                                          (gx#stx-e ___stx4537445375_)))
                                     (let ((_tl4514745169_
                                            (##cdr _e4514545164_))
                                           (_hd4514645167_
                                            (##car _e4514545164_)))
                                       (if (gx#stx-null? _tl4514745169_)
                                           (___kont4537645377_ _hd4514645167_)
                                           (___kont4537845379_))))
                                   (___kont4537845379_))))))
                        (_K4511045132_
                         (lambda () (gxc#xform-call% _stx45087_))))
                    (let ((_try-match4510745135_
                           (lambda ()
                             (if (##eq? _struct-type4510545119_ '#f)
                                 (_K4511045132_)
                                 (_else4510845127_)))))
                      (if (##structure-instance-of?
                           _struct-type4510545119_
                           'gxc#!struct-type::t)
                          (let* ((_e4511245202_
                                  (##vector-ref _struct-type4510545119_ '1))
                                 (_e4511345207_
                                  (##vector-ref _struct-type4510545119_ '2))
                                 (_e4511445210_
                                  (##vector-ref _struct-type4510545119_ '3))
                                 (_e4511545213_
                                  (##vector-ref _struct-type4510545119_ '4))
                                 (_e4511645216_
                                  (##vector-ref _struct-type4510545119_ '5))
                                 (_e4511745219_
                                  (##vector-ref _struct-type4510545119_ '6)))
                            (let ((_struct-type-id45205_ _e4511245202_)
                                  (_plist45222_ _e4511745219_))
                              (_K4511145199_
                               _plist45222_
                               _struct-type-id45205_)))
                          (_try-match4510745135_))))))))
        (if (##structure-instance-of? _self4508945095_ 'gxc#!struct-pred::t)
            (let* ((_e4509345227_ (##vector-ref _self4508945095_ '1))
                   (_struct-t45230_ _e4509345227_))
              (_K4509245224_ _struct-t45230_))
            (_E4509145099_)))))
  (bind-method!
   gxc#!struct-pred::t
   'optimize-call
   gxc#!struct-pred::optimize-call
   '#f)
  (define gxc#!struct-cons::optimize-call
    (lambda (_self44860_ _stx44861_ _args44862_)
      (let* ((_self4486344869_ _self44860_)
             (_E4486544873_
              (lambda () (error '"No clause matching" _self4486344869_)))
             (_K4486644956_
              (lambda (_struct-t44876_)
                (let* ((_struct-type44878_
                        (gxc#optimizer-resolve-type _struct-t44876_))
                       (_struct-type4487944892_ _struct-type44878_)
                       (_else4488244900_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct constructor application; not a struct type"
                           _stx44861_
                           _struct-t44876_
                           _struct-type44878_))))
                  (let ((_K4488544930_
                         (lambda (_ctor44911_
                                  _xfields44912_
                                  _fields44913_
                                  _type-id44914_)
                           (let* ((_args44916_ (map gxc#compile-e _args44862_))
                                  (_$e44918_
                                   (if _ctor44911_
                                       (if _xfields44912_
                                           (gxc#!struct-type-lookup-method
                                            _struct-type44878_
                                            _ctor44911_)
                                           '#f)
                                       '#f)))
                             (if _$e44918_
                                 ((lambda (_kons44921_)
                                    (let ((_$obj44923_
                                           (make-symbol (gensym '__obj))))
                                      (gxc#xform-wrap-source
                                       (cons '%#let-values
                                             (cons (cons (cons (cons _$obj44923_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons (cons '%#call
                                   (cons (cons '%#ref (cons 'make-object '()))
                                         (cons (cons '%#ref
                                                     (cons _struct-t44876_
                                                           '()))
                                               (cons (cons '%#quote
                                                           (cons (fx+ _fields44913_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _xfields44912_)
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
                                     (cons (cons '%#ref (cons _kons44921_ '()))
                                           (cons (cons '%#ref
                                                       (cons _$obj44923_ '()))
                                                 _args44916_)))
                               _stx44861_))
                             (cons (cons '%#ref (cons _$obj44923_ '())) '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _stx44861_)))
                                  _$e44918_)
                                 (if (if _ctor44911_ '#t (not _xfields44912_))
                                     (gxc#xform-wrap-source
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons 'make-struct-instance
                                                              '()))
                                                  (cons (cons '%#ref
                                                              (cons _struct-t44876_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _args44916_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _stx44861_)
                                     (let ((_arity44928_
                                            (fx+ _fields44913_
                                                 _xfields44912_)))
                                       (if (fx= _arity44928_
                                                (length _args44916_))
                                           (gxc#xform-wrap-source
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#ref (cons _struct-t44876_ '())) _args44916_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _stx44861_)
                                           (gxc#raise-compile-error
                                            '"Illegal struct constructor application; arity mismatch"
                                            _stx44861_
                                            _struct-t44876_
                                            _arity44928_))))))))
                        (_K4488444905_
                         (lambda ()
                           (begin
                             (gxc#verbose
                              '"cannot inline struct constructor; unknown struct type "
                              _struct-t44876_)
                             (gxc#xform-call% _stx44861_)))))
                    (let ((_try-match4488144908_
                           (lambda ()
                             (if (##eq? _struct-type4487944892_ '#f)
                                 (_K4488444905_)
                                 (_else4488244900_)))))
                      (if (##structure-instance-of?
                           _struct-type4487944892_
                           'gxc#!struct-type::t)
                          (let* ((_e4488644933_
                                  (##vector-ref _struct-type4487944892_ '1))
                                 (_e4488744938_
                                  (##vector-ref _struct-type4487944892_ '2))
                                 (_e4488844941_
                                  (##vector-ref _struct-type4487944892_ '3))
                                 (_e4488944946_
                                  (##vector-ref _struct-type4487944892_ '4))
                                 (_e4489044951_
                                  (##vector-ref _struct-type4487944892_ '5)))
                            (let ((_type-id44936_ _e4488644933_)
                                  (_fields44944_ _e4488844941_)
                                  (_xfields44949_ _e4488944946_)
                                  (_ctor44954_ _e4489044951_))
                              (_K4488544930_
                               _ctor44954_
                               _xfields44949_
                               _fields44944_
                               _type-id44936_)))
                          (_try-match4488144908_))))))))
        (if (##structure-instance-of? _self4486344869_ 'gxc#!struct-cons::t)
            (let* ((_e4486744959_ (##vector-ref _self4486344869_ '1))
                   (_struct-t44962_ _e4486744959_))
              (_K4486644956_ _struct-t44962_))
            (_E4486544873_)))))
  (bind-method!
   gxc#!struct-cons::t
   'optimize-call
   gxc#!struct-cons::optimize-call
   '#f)
  (define gxc#!struct-getf::optimize-call
    (lambda (_self44571_ _stx44572_ _args44573_)
      (let* ((_self4457444582_ _self44571_)
             (_E4457644586_
              (lambda () (error '"No clause matching" _self4457444582_)))
             (_K4457744720_
              (lambda (_unchecked?44589_ _off44590_ _struct-t44591_)
                (let* ((_struct-type44593_
                        (gxc#optimizer-resolve-type _struct-t44591_))
                       (_struct-type4459444608_ _struct-type44593_)
                       (_else4459744616_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx44572_
                           _struct-t44591_
                           _struct-type44593_))))
                  (let ((_K4460044691_
                         (lambda (_plist44627_
                                  _xfields44628_
                                  _fields44629_
                                  _struct-type-id44630_)
                           (if _xfields44628_
                               (let* ((___stx4542245423_ _args44573_)
                                      (_g4463344643_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx4542245423_))))
                                 (let ((___kont4542445425_
                                        (lambda (_L44663_)
                                          (let ((_expr44684_
                                                 (gxc#compile-e _L44663_))
                                                (_off44685_
                                                 (fx+ _off44590_
                                                      _xfields44628_
                                                      '1))
                                                (_op44686_
                                                 (if _unchecked?44589_
                                                     '%#struct-unchecked-ref
                                                     (if (if _plist44627_
                                                             (assgetq 'final:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _plist44627_)
                     '#f)
                 '%#struct-direct-ref
                 '%#struct-ref))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (gxc#xform-wrap-source
                                             (cons _op44686_
                                                   (cons (cons '%#ref
                                                               (cons _struct-t44591_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons '%#quote (cons _off44685_ '()))
                       (cons _expr44684_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _stx44572_))))
                                       (___kont4542645427_
                                        (lambda ()
                                          (gxc#raise-compile-error
                                           '"Illegal struct accessor application"
                                           _stx44572_))))
                                   (if (gx#stx-pair? ___stx4542245423_)
                                       (let ((_e4463644655_
                                              (gx#stx-e ___stx4542245423_)))
                                         (let ((_tl4463844660_
                                                (##cdr _e4463644655_))
                                               (_hd4463744658_
                                                (##car _e4463644655_)))
                                           (if (gx#stx-null? _tl4463844660_)
                                               (___kont4542445425_
                                                _hd4463744658_)
                                               (___kont4542645427_))))
                                       (___kont4542645427_))))
                               (begin
                                 (gxc#verbose
                                  '"struct-getf: incomplete struct "
                                  _struct-type-id44630_)
                                 (gxc#xform-call% _stx44572_)))))
                        (_K4459944621_
                         (lambda () (gxc#xform-call% _stx44572_))))
                    (let ((_try-match4459644624_
                           (lambda ()
                             (if (##eq? _struct-type4459444608_ '#f)
                                 (_K4459944621_)
                                 (_else4459744616_)))))
                      (if (##structure-instance-of?
                           _struct-type4459444608_
                           'gxc#!struct-type::t)
                          (let* ((_e4460144694_
                                  (##vector-ref _struct-type4459444608_ '1))
                                 (_e4460244699_
                                  (##vector-ref _struct-type4459444608_ '2))
                                 (_e4460344702_
                                  (##vector-ref _struct-type4459444608_ '3))
                                 (_e4460444707_
                                  (##vector-ref _struct-type4459444608_ '4))
                                 (_e4460544712_
                                  (##vector-ref _struct-type4459444608_ '5))
                                 (_e4460644715_
                                  (##vector-ref _struct-type4459444608_ '6)))
                            (let ((_struct-type-id44697_ _e4460144694_)
                                  (_fields44705_ _e4460344702_)
                                  (_xfields44710_ _e4460444707_)
                                  (_plist44718_ _e4460644715_))
                              (_K4460044691_
                               _plist44718_
                               _xfields44710_
                               _fields44705_
                               _struct-type-id44697_)))
                          (_try-match4459644624_))))))))
        (if (##structure-instance-of? _self4457444582_ 'gxc#!struct-getf::t)
            (let* ((_e4457844723_ (##vector-ref _self4457444582_ '1))
                   (_struct-t44726_ _e4457844723_)
                   (_e4457944728_ (##vector-ref _self4457444582_ '2))
                   (_off44731_ _e4457944728_)
                   (_e4458044733_ (##vector-ref _self4457444582_ '3))
                   (_unchecked?44736_ _e4458044733_))
              (_K4457744720_ _unchecked?44736_ _off44731_ _struct-t44726_))
            (_E4457644586_)))))
  (bind-method!
   gxc#!struct-getf::t
   'optimize-call
   gxc#!struct-getf::optimize-call
   '#f)
  (define gxc#!struct-setf::optimize-call
    (lambda (_self44265_ _stx44266_ _args44267_)
      (let* ((_self4426844276_ _self44265_)
             (_E4427044280_
              (lambda () (error '"No clause matching" _self4426844276_)))
             (_K4427144431_
              (lambda (_unchecked?44283_ _off44284_ _struct-t44285_)
                (let* ((_struct-type44287_
                        (gxc#optimizer-resolve-type _struct-t44285_))
                       (_struct-type4428844302_ _struct-type44287_)
                       (_else4429144310_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx44266_
                           _struct-t44285_
                           _struct-type44287_))))
                  (let ((_K4429444402_
                         (lambda (_plist44321_
                                  _xfields44322_
                                  _fields44323_
                                  _struct-type-id44324_)
                           (if _xfields44322_
                               (let* ((___stx4545545456_ _args44267_)
                                      (_g4432744341_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx4545545456_))))
                                 (let ((___kont4545745458_
                                        (lambda (_L44369_ _L44370_)
                                          (let ((_expr44394_
                                                 (gxc#compile-e _L44370_))
                                                (_val44395_
                                                 (gxc#compile-e _L44369_))
                                                (_off44396_
                                                 (fx+ _off44284_
                                                      _xfields44322_
                                                      '1))
                                                (_op44397_
                                                 (if _unchecked?44283_
                                                     '%#struct-unchecked-set!
                                                     (if (if _plist44321_
                                                             (assgetq 'final:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _plist44321_)
                     '#f)
                 '%#struct-direct-set!
                 '%#struct-set!))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (gxc#xform-wrap-source
                                             (cons _op44397_
                                                   (cons (cons '%#ref
                                                               (cons _struct-t44285_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons '%#quote (cons _off44396_ '()))
                       (cons _expr44394_ (cons _val44395_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _stx44266_))))
                                       (___kont4545945460_
                                        (lambda ()
                                          (gxc#raise-compile-error
                                           '"Illegal struct mutator application"
                                           _stx44266_))))
                                   (if (gx#stx-pair? ___stx4545545456_)
                                       (let ((_e4433144353_
                                              (gx#stx-e ___stx4545545456_)))
                                         (let ((_tl4433344358_
                                                (##cdr _e4433144353_))
                                               (_hd4433244356_
                                                (##car _e4433144353_)))
                                           (if (gx#stx-pair? _tl4433344358_)
                                               (let ((_e4433444361_
                                                      (gx#stx-e
                                                       _tl4433344358_)))
                                                 (let ((_tl4433644366_
                                                        (##cdr _e4433444361_))
                                                       (_hd4433544364_
                                                        (##car _e4433444361_)))
                                                   (if (gx#stx-null?
                                                        _tl4433644366_)
                                                       (___kont4545745458_
                                                        _hd4433544364_
                                                        _hd4433244356_)
                                                       (___kont4545945460_))))
                                               (___kont4545945460_))))
                                       (___kont4545945460_))))
                               (begin
                                 (gxc#verbose
                                  '"struct-setf: incomplete struct "
                                  _struct-type-id44324_)
                                 (gxc#xform-call% _stx44266_)))))
                        (_K4429344315_
                         (lambda () (gxc#xform-call% _stx44266_))))
                    (let ((_try-match4429044318_
                           (lambda ()
                             (if (##eq? _struct-type4428844302_ '#f)
                                 (_K4429344315_)
                                 (_else4429144310_)))))
                      (if (##structure-instance-of?
                           _struct-type4428844302_
                           'gxc#!struct-type::t)
                          (let* ((_e4429544405_
                                  (##vector-ref _struct-type4428844302_ '1))
                                 (_e4429644410_
                                  (##vector-ref _struct-type4428844302_ '2))
                                 (_e4429744413_
                                  (##vector-ref _struct-type4428844302_ '3))
                                 (_e4429844418_
                                  (##vector-ref _struct-type4428844302_ '4))
                                 (_e4429944423_
                                  (##vector-ref _struct-type4428844302_ '5))
                                 (_e4430044426_
                                  (##vector-ref _struct-type4428844302_ '6)))
                            (let ((_struct-type-id44408_ _e4429544405_)
                                  (_fields44416_ _e4429744413_)
                                  (_xfields44421_ _e4429844418_)
                                  (_plist44429_ _e4430044426_))
                              (_K4429444402_
                               _plist44429_
                               _xfields44421_
                               _fields44416_
                               _struct-type-id44408_)))
                          (_try-match4429044318_))))))))
        (if (##structure-instance-of? _self4426844276_ 'gxc#!struct-setf::t)
            (let* ((_e4427244434_ (##vector-ref _self4426844276_ '1))
                   (_struct-t44437_ _e4427244434_)
                   (_e4427344439_ (##vector-ref _self4426844276_ '2))
                   (_off44442_ _e4427344439_)
                   (_e4427444444_ (##vector-ref _self4426844276_ '3))
                   (_unchecked?44447_ _e4427444444_))
              (_K4427144431_ _unchecked?44447_ _off44442_ _struct-t44437_))
            (_E4427044280_)))))
  (bind-method!
   gxc#!struct-setf::t
   'optimize-call
   gxc#!struct-setf::optimize-call
   '#f)
  (define gxc#!lambda::optimize-call
    (lambda (_self44099_ _stx44100_ _args44101_)
      (let* ((_self4410244111_ _self44099_)
             (_E4410444115_
              (lambda () (error '"No clause matching" _self4410244111_)))
             (_K4410544122_
              (lambda (_inline44118_ _dispatch44119_ _arity44120_)
                (begin
                  (if (gxc#!lambda-arity-match? _self44099_ _args44101_)
                      '#!void
                      (gxc#raise-compile-error
                       '"Illegal lambda application; arity mismatch"
                       _stx44100_
                       _arity44120_))
                  (if _inline44118_
                      (begin
                        (gxc#verbose '"inline lambda")
                        (gxc#compile-e
                         (gxc#xform-wrap-source
                          (_inline44118_ _stx44100_)
                          _stx44100_)))
                      (if _dispatch44119_
                          (begin
                            (gxc#verbose
                             '"dispatch lambda => "
                             _dispatch44119_)
                            (gxc#compile-e
                             (gxc#xform-wrap-source
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons _dispatch44119_ '()))
                                          _args44101_))
                              _stx44100_)))
                          (gxc#xform-call% _stx44100_)))))))
        (if (##structure-instance-of? _self4410244111_ 'gxc#!lambda::t)
            (let* ((_e4410644125_ (##vector-ref _self4410244111_ '1))
                   (_e4410744128_ (##vector-ref _self4410244111_ '2))
                   (_arity44131_ _e4410744128_)
                   (_e4410844133_ (##vector-ref _self4410244111_ '3))
                   (_dispatch44136_ _e4410844133_)
                   (_e4410944138_ (##vector-ref _self4410244111_ '4))
                   (_inline44141_ _e4410944138_))
              (_K4410544122_ _inline44141_ _dispatch44136_ _arity44131_))
            (_E4410444115_)))))
  (bind-method! gxc#!lambda::t 'optimize-call gxc#!lambda::optimize-call '#f)
  (define gxc#!case-lambda::optimize-call
    (lambda (_self43938_ _stx43939_ _args43940_)
      (let* ((_self4394143948_ _self43938_)
             (_E4394343952_
              (lambda () (error '"No clause matching" _self4394143948_)))
             (_K4394443966_
              (lambda (_clauses43955_)
                (let ((_$e43961_
                       (find (lambda (_g4395643958_)
                               (gxc#!lambda-arity-match?
                                _g4395643958_
                                _args43940_))
                             _clauses43955_)))
                  (if _$e43961_
                      ((lambda (_clause43964_)
                         (call-method
                          _clause43964_
                          'optimize-call
                          _stx43939_
                          _args43940_))
                       _$e43961_)
                      (gxc#raise-compile-error
                       '"Illegal case-lambda application; arity mismatch"
                       _stx43939_
                       (map gxc#!lambda-arity _clauses43955_)))))))
        (if (##structure-instance-of? _self4394143948_ 'gxc#!case-lambda::t)
            (let* ((_e4394543969_ (##vector-ref _self4394143948_ '1))
                   (_e4394643972_ (##vector-ref _self4394143948_ '2))
                   (_clauses43975_ _e4394643972_))
              (_K4394443966_ _clauses43975_))
            (_E4394343952_)))))
  (bind-method!
   gxc#!case-lambda::t
   'optimize-call
   gxc#!case-lambda::optimize-call
   '#f)
  (define gxc#!lambda-arity-match?
    (lambda (_self43752_ _args43753_)
      (let* ((_self4375443761_ _self43752_)
             (_E4375643765_
              (lambda () (error '"No clause matching" _self4375443761_)))
             (_K4375743805_
              (lambda (_arity43768_)
                (let* ((_arity4376943778_ _arity43768_)
                       (_E4377243782_
                        (lambda ()
                          (error '"No clause matching" _arity4376943778_))))
                  (let ((_K4377643802_
                         (lambda () (fx= (length _args43753_) _arity43768_)))
                        (_K4377343788_
                         (lambda (_arity43786_)
                           (fx>= (length _args43753_) _arity43786_))))
                    (let ((_try-match4377143798_
                           (lambda ()
                             (if (##pair? _arity4376943778_)
                                 (let ((_tl4377543793_
                                        (##cdr _arity4376943778_))
                                       (_hd4377443791_
                                        (##car _arity4376943778_)))
                                   (if (##null? _tl4377543793_)
                                       (let ((_arity43796_ _hd4377443791_))
                                         (_K4377343788_ _arity43796_))
                                       (_E4377243782_)))
                                 (_E4377243782_)))))
                      (if (fixnum? _arity4376943778_)
                          (_K4377643802_)
                          (_try-match4377143798_))))))))
        (if (##structure-instance-of? _self4375443761_ 'gxc#!lambda::t)
            (let* ((_e4375843808_ (##vector-ref _self4375443761_ '1))
                   (_e4375943811_ (##vector-ref _self4375443761_ '2))
                   (_arity43814_ _e4375943811_))
              (_K4375743805_ _arity43814_))
            (_E4375643765_)))))
  (define gxc#!kw-lambda::optimize-call
    (lambda (_self43637_ _stx43638_ _args43639_)
      (let* ((_self4364043648_ _self43637_)
             (_E4364243652_
              (lambda () (error '"No clause matching" _self4364043648_)))
             (_K4364343736_
              (lambda (_dispatch43655_ _table43656_)
                (let* ((_g4365743666_
                        (gxc#optimizer-lookup-type _dispatch43655_))
                       (_else4365943674_
                        (lambda ()
                          (begin
                            (gxc#verbose
                             '"unknown keyword dispatch lambda "
                             _dispatch43655_)
                            (gxc#xform-call% _stx43638_))))
                       (_K4366143720_
                        (lambda (_main43677_ _keys43678_)
                          (let ((_g45620_
                                 (gxc#!kw-lambda-split-args
                                  _stx43638_
                                  _args43639_)))
                            (begin
                              (let ((_g45621_
                                     (if (##values? _g45620_)
                                         (##vector-length _g45620_)
                                         1)))
                                (if (not (##fx= _g45621_ 2))
                                    (error "Context expects 2 values"
                                           _g45621_)))
                              (let ((_pargs43680_ (##vector-ref _g45620_ 0))
                                    (_kwargs43681_ (##vector-ref _g45620_ 1)))
                                (begin
                                  (gxc#verbose
                                   '"dispatch kw-lambda => "
                                   _main43677_)
                                  (if _table43656_
                                      (let ((_xargs43688_
                                             (map (lambda (_key43683_)
                                                    (let ((_$e43685_
                                                           (assgetq _key43683_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _kwargs43681_)))
              (if _$e43685_ (values _$e43685_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _keys43678_)))
                                        (begin
                                          (for-each
                                           (lambda (_kw43690_)
                                             (if (memq (car _kw43690_)
                                                       _keys43678_)
                                                 '#!void
                                                 (gxc#raise-compile-error
                                                  '"Illegal keyword lambda application; unexpected keyword"
                                                  _stx43638_
                                                  _keys43678_
                                                  _kw43690_)))
                                           _kwargs43681_)
                                          (gxc#compile-e
                                           (gxc#xform-wrap-source
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons _main43677_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote (cons '#f '()))
                      (foldr1 cons _pargs43680_ _xargs43688_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _stx43638_))))
                                      (let* ((_kwt43692_
                                              (make-symbol (gensym '__kwt)))
                                             (_kwvars43695_
                                              (map (lambda (_g45622_)
                                                     (make-symbol
                                                      (gensym '__kw)))
                                                   _kwargs43681_))
                                             (_kwbind43700_
                                              (map (lambda (_kw43697_
                                                            _kwvar43698_)
                                                     (cons (cons _kwvar43698_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   (cons (cdr _kw43697_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs43681_
                                                   _kwvars43695_))
                                             (_kwset43705_
                                              (map (lambda (_kw43702_
                                                            _kwvar43703_)
                                                     (cons '%#call
                                                           (cons '(%#ref hash-put!)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons _kwt43692_ '()))
                               (cons (cons '%#quote (cons (car _kw43702_) '()))
                                     (cons (cons '%#ref
                                                 (cons _kwvar43703_ '()))
                                           '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs43681_
                                                   _kwvars43695_))
                                             (_xkwargs43710_
                                              (map (lambda (_kw43707_
                                                            _kwvar43708_)
                                                     (cons (car _kw43707_)
                                                           (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _kwvar43708_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs43681_
                                                   _kwvars43695_))
                                             (_xargs43717_
                                              (map (lambda (_key43712_)
                                                     (let ((_$e43714_
                                                            (assgetq _key43712_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _xkwargs43710_)))
               (if _$e43714_ (values _$e43714_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _keys43678_)))
                                        (gxc#compile-e
                                         (gxc#xform-wrap-source
                                          (cons '%#let-values
                                                (cons _kwbind43700_
                                                      (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (cons (cons _kwt43692_ '())
                                            (cons (gxc#xform-wrap-source
                                                   (cons '%#call
                                                         (cons '(%#ref make-hash-table-eq)
                                                               (cons '(%#quote size:)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons '%#quote
                                         (cons (length _kwargs43681_) '()))
                                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx43638_)
                                                  '()))
                                      '())
                                (cons (cons '%#begin
                                            (foldr1 cons
                                                    (cons (gxc#xform-wrap-source
                                                           (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons _main43677_ '()))
                               (cons (cons '%#ref (cons _kwt43692_ '()))
                                     (foldr1 cons _pargs43680_ _xargs43717_))))
                   _stx43638_)
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _kwset43705_))
                                      '())))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _stx43638_)))))))))))
                  (if (##structure-instance-of?
                       _g4365743666_
                       'gxc#!kw-lambda-primary::t)
                      (let* ((_e4366243723_ (##vector-ref _g4365743666_ '1))
                             (_e4366343726_ (##vector-ref _g4365743666_ '2))
                             (_keys43729_ _e4366343726_)
                             (_e4366443731_ (##vector-ref _g4365743666_ '3))
                             (_main43734_ _e4366443731_))
                        (_K4366143720_ _main43734_ _keys43729_))
                      (_else4365943674_))))))
        (if (##structure-instance-of? _self4364043648_ 'gxc#!kw-lambda::t)
            (let* ((_e4364443739_ (##vector-ref _self4364043648_ '1))
                   (_e4364543742_ (##vector-ref _self4364043648_ '2))
                   (_table43745_ _e4364543742_)
                   (_e4364643747_ (##vector-ref _self4364043648_ '3))
                   (_dispatch43750_ _e4364643747_))
              (_K4364343736_ _dispatch43750_ _table43745_))
            (_E4364243652_)))))
  (bind-method!
   gxc#!kw-lambda::t
   'optimize-call
   gxc#!kw-lambda::optimize-call
   '#f)
  (define gxc#!kw-lambda-split-args
    (lambda (_stx43250_ _args43251_)
      (let _lp43253_ ((_rest43255_ _args43251_)
                      (_pargs43256_ '())
                      (_kwargs43257_ '()))
        (let* ((___stx4550345504_ _rest43255_)
               (_g4326343315_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx4550345504_))))
          (let ((___kont4550545506_
                 (lambda (_L43494_ _L43495_)
                   (_lp43253_
                    _L43494_
                    (cons _L43495_ _pargs43256_)
                    _kwargs43257_)))
                (___kont4550745508_
                 (lambda (_L43440_)
                   (values (foldl1 cons _L43440_ _pargs43256_)
                           (reverse _kwargs43257_))))
                (___kont4550945510_
                 (lambda (_L43387_ _L43388_ _L43389_)
                   (let ((_kw43406_ (gx#stx-e _L43389_)))
                     (if (assq _kw43406_ _kwargs43257_)
                         (gxc#raise-compile-error
                          '"Illegal keyword lambda application; duplicate keyword"
                          _stx43250_
                          _kw43406_)
                         (_lp43253_
                          _L43387_
                          _pargs43256_
                          (cons (cons _kw43406_ _L43388_) _kwargs43257_))))))
                (___kont4551145512_
                 (lambda (_L43335_ _L43336_)
                   (_lp43253_
                    _L43335_
                    (cons _L43336_ _pargs43256_)
                    _kwargs43257_)))
                (___kont4551345514_
                 (lambda ()
                   (values (reverse _pargs43256_) (reverse _kwargs43257_)))))
            (let* ((_g4326243322_
                    (lambda ()
                      (if (gx#stx-null? ___stx4550345504_)
                          (___kont4551345514_)
                          (_g4326343315_))))
                   (___match4561045611_
                    (lambda (_e4329443355_
                             _hd4329543358_
                             _tl4329643360_
                             _e4329743363_
                             _hd4329843366_
                             _tl4329943368_
                             _e4330043371_
                             _hd4330143374_
                             _tl4330243376_
                             _e4330343379_
                             _hd4330443382_
                             _tl4330543384_)
                      (let ((_L43387_ _tl4330543384_)
                            (_L43388_ _hd4330443382_)
                            (_L43389_ _hd4330143374_))
                        (if (gx#stx-keyword? _L43389_)
                            (___kont4550945510_ _L43387_ _L43388_ _L43389_)
                            (___kont4551145512_
                             _tl4329643360_
                             _hd4329543358_))))))
              (if (gx#stx-pair? ___stx4550345504_)
                  (let ((_e4326743459_ (gx#stx-e ___stx4550345504_)))
                    (let ((_tl4326943464_ (##cdr _e4326743459_))
                          (_hd4326843462_ (##car _e4326743459_)))
                      (if (gx#stx-pair? _hd4326843462_)
                          (let ((_e4327043467_ (gx#stx-e _hd4326843462_)))
                            (let ((_tl4327243472_ (##cdr _e4327043467_))
                                  (_hd4327143470_ (##car _e4327043467_)))
                              (if (gx#identifier? _hd4327143470_)
                                  (if (gx#stx-eq? '%#quote _hd4327143470_)
                                      (if (gx#stx-pair? _tl4327243472_)
                                          (let ((_e4327343475_
                                                 (gx#stx-e _tl4327243472_)))
                                            (let ((_tl4327543480_
                                                   (##cdr _e4327343475_))
                                                  (_hd4327443478_
                                                   (##car _e4327343475_)))
                                              (if (gx#stx-datum?
                                                   _hd4327443478_)
                                                  (let ((_e4327643483_
                                                         (gx#stx-e
                                                          _hd4327443478_)))
                                                    (if (equal? _e4327643483_
                                                                '#!key)
                                                        (if (gx#stx-null?
                                                             _tl4327543480_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl4326943464_)
                        (let ((_e4327743486_ (gx#stx-e _tl4326943464_)))
                          (let ((_tl4327943491_ (##cdr _e4327743486_))
                                (_hd4327843489_ (##car _e4327743486_)))
                            (___kont4550545506_
                             _tl4327943491_
                             _hd4327843489_)))
                        (___kont4551145512_ _tl4326943464_ _hd4326843462_))
                    (___kont4551145512_ _tl4326943464_ _hd4326843462_))
                (if (equal? _e4327643483_ '#!rest)
                    (if (gx#stx-null? _tl4327543480_)
                        (___kont4550745508_ _tl4326943464_)
                        (___kont4551145512_ _tl4326943464_ _hd4326843462_))
                    (if (gx#stx-null? _tl4327543480_)
                        (if (gx#stx-pair? _tl4326943464_)
                            (let ((_e4330343379_ (gx#stx-e _tl4326943464_)))
                              (let ((_tl4330543384_ (##cdr _e4330343379_))
                                    (_hd4330443382_ (##car _e4330343379_)))
                                (___match4561045611_
                                 _e4326743459_
                                 _hd4326843462_
                                 _tl4326943464_
                                 _e4327043467_
                                 _hd4327143470_
                                 _tl4327243472_
                                 _e4327343475_
                                 _hd4327443478_
                                 _tl4327543480_
                                 _e4330343379_
                                 _hd4330443382_
                                 _tl4330543384_)))
                            (___kont4551145512_ _tl4326943464_ _hd4326843462_))
                        (___kont4551145512_ _tl4326943464_ _hd4326843462_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _tl4327543480_)
                                                      (if (gx#stx-pair?
                                                           _tl4326943464_)
                                                          (let ((_e4330343379_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl4326943464_)))
                    (let ((_tl4330543384_ (##cdr _e4330343379_))
                          (_hd4330443382_ (##car _e4330343379_)))
                      (___match4561045611_
                       _e4326743459_
                       _hd4326843462_
                       _tl4326943464_
                       _e4327043467_
                       _hd4327143470_
                       _tl4327243472_
                       _e4327343475_
                       _hd4327443478_
                       _tl4327543480_
                       _e4330343379_
                       _hd4330443382_
                       _tl4330543384_)))
                  (___kont4551145512_ _tl4326943464_ _hd4326843462_))
              (___kont4551145512_ _tl4326943464_ _hd4326843462_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (___kont4551145512_
                                           _tl4326943464_
                                           _hd4326843462_))
                                      (___kont4551145512_
                                       _tl4326943464_
                                       _hd4326843462_))
                                  (___kont4551145512_
                                   _tl4326943464_
                                   _hd4326843462_))))
                          (___kont4551145512_ _tl4326943464_ _hd4326843462_))))
                  (_g4326243322_))))))))
  (define gxc#!kw-lambda-primary::optimize-call
    (lambda (_self43246_ _stx43247_ _args43248_) (gxc#xform-call% _stx43247_)))
  (bind-method!
   gxc#!kw-lambda-primary::t
   'optimize-call
   gxc#!kw-lambda-primary::optimize-call
   '#f))
