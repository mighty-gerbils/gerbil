(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#&optimize-call
    (##make-promise
     (lambda ()
       (let ((_tbl45031_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl45031_ (force gxc#&basic-xform))
           (table-set! _tbl45031_ '%#call gxc#optimize-call%)
           _tbl45031_)))))
  (define gxc#apply-optimize-call
    (lambda (_stx45024_ . _args45026_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx45024_ _args45026_))
       gxc#current-compile-methods
       (force gxc#&optimize-call))))
  (define gxc#optimize-call%
    (lambda (_stx44930_)
      (let* ((___stx4503445035_ _stx44930_)
             (_g4493344953_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4503445035_))))
        (let ((___kont4503645037_
               (lambda (_L44997_ _L44998_)
                 (let* ((_rator-id45016_ (gxc#identifier-symbol _L44998_))
                        (_rator-type45018_
                         (gxc#optimizer-resolve-type _rator-id45016_)))
                   (if (##structure-instance-of?
                        _rator-type45018_
                        'gxc#!procedure::t)
                       (begin
                         (gxc#verbose
                          '"optimize-call "
                          _rator-id45016_
                          '" => "
                          _rator-type45018_
                          '" "
                          (##structure-ref
                           _rator-type45018_
                           '1
                           gxc#!type::t
                           '#f))
                         (call-method
                          _rator-type45018_
                          'optimize-call
                          _stx44930_
                          _L44997_))
                       (if (not _rator-type45018_)
                           (gxc#xform-call% _stx44930_)
                           (gxc#raise-compile-error
                            '"Illegal application; not a procedure"
                            _stx44930_
                            _rator-type45018_))))))
              (___kont4503845039_ (lambda () (gxc#xform-call% _stx44930_))))
          (if (gx#stx-pair? ___stx4503445035_)
              (let ((_e4493744965_ (gx#stx-e ___stx4503445035_)))
                (let ((_tl4493944970_ (##cdr _e4493744965_))
                      (_hd4493844968_ (##car _e4493744965_)))
                  (if (gx#stx-pair? _tl4493944970_)
                      (let ((_e4494044973_ (gx#stx-e _tl4493944970_)))
                        (let ((_tl4494244978_ (##cdr _e4494044973_))
                              (_hd4494144976_ (##car _e4494044973_)))
                          (if (gx#stx-pair? _hd4494144976_)
                              (let ((_e4494344981_ (gx#stx-e _hd4494144976_)))
                                (let ((_tl4494544986_ (##cdr _e4494344981_))
                                      (_hd4494444984_ (##car _e4494344981_)))
                                  (if (gx#identifier? _hd4494444984_)
                                      (if (gx#stx-eq? '%#ref _hd4494444984_)
                                          (if (gx#stx-pair? _tl4494544986_)
                                              (let ((_e4494644989_
                                                     (gx#stx-e
                                                      _tl4494544986_)))
                                                (let ((_tl4494844994_
                                                       (##cdr _e4494644989_))
                                                      (_hd4494744992_
                                                       (##car _e4494644989_)))
                                                  (if (gx#stx-null?
                                                       _tl4494844994_)
                                                      (___kont4503645037_
                                                       _tl4494244978_
                                                       _hd4494744992_)
                                                      (___kont4503845039_))))
                                              (___kont4503845039_))
                                          (___kont4503845039_))
                                      (___kont4503845039_))))
                              (___kont4503845039_))))
                      (___kont4503845039_))))
              (___kont4503845039_))))))
  (define gxc#!struct-pred::optimize-call
    (lambda (_self44784_ _stx44785_ _args44786_)
      (let* ((_self4478744793_ _self44784_)
             (_E4478944797_
              (lambda () (error '"No clause matching" _self4478744793_)))
             (_K4479044922_
              (lambda (_struct-t44800_)
                (let* ((_struct-type44802_
                        (gxc#optimizer-resolve-type _struct-t44800_))
                       (_struct-type4480344817_ _struct-type44802_)
                       (_else4480644825_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx44785_
                           _struct-t44800_
                           _struct-type44802_))))
                  (let ((_K4480944897_
                         (lambda (_plist44836_ _struct-type-id44837_)
                           (let* ((___stx4507245073_ _args44786_)
                                  (_g4484044850_
                                   (lambda ()
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      ___stx4507245073_))))
                             (let ((___kont4507445075_
                                    (lambda (_L44870_)
                                      (let ((_expr44891_
                                             (gxc#compile-e _L44870_))
                                            (_op44892_
                                             (if (if _plist44836_
                                                     (assgetq 'final:
                                                              _plist44836_)
                                                     '#f)
                                                 '%#struct-direct-instance?
                                                 '%#struct-instance?)))
                                        (gxc#xform-wrap-source
                                         (cons _op44892_
                                               (cons (cons '%#quote
                                                           (cons _struct-type-id44837_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _expr44891_ '())))
                                         _stx44785_))))
                                   (___kont4507645077_
                                    (lambda ()
                                      (gxc#raise-compile-error
                                       '"Illegal struct predicate application"
                                       _stx44785_))))
                               (if (gx#stx-pair? ___stx4507245073_)
                                   (let ((_e4484344862_
                                          (gx#stx-e ___stx4507245073_)))
                                     (let ((_tl4484544867_
                                            (##cdr _e4484344862_))
                                           (_hd4484444865_
                                            (##car _e4484344862_)))
                                       (if (gx#stx-null? _tl4484544867_)
                                           (___kont4507445075_ _hd4484444865_)
                                           (___kont4507645077_))))
                                   (___kont4507645077_))))))
                        (_K4480844830_
                         (lambda () (gxc#xform-call% _stx44785_))))
                    (let ((_try-match4480544833_
                           (lambda ()
                             (if (##eq? _struct-type4480344817_ '#f)
                                 (_K4480844830_)
                                 (_else4480644825_)))))
                      (if (##structure-instance-of?
                           _struct-type4480344817_
                           'gxc#!struct-type::t)
                          (let* ((_e4481044900_
                                  (##vector-ref _struct-type4480344817_ '1))
                                 (_e4481144905_
                                  (##vector-ref _struct-type4480344817_ '2))
                                 (_e4481244908_
                                  (##vector-ref _struct-type4480344817_ '3))
                                 (_e4481344911_
                                  (##vector-ref _struct-type4480344817_ '4))
                                 (_e4481444914_
                                  (##vector-ref _struct-type4480344817_ '5))
                                 (_e4481544917_
                                  (##vector-ref _struct-type4480344817_ '6)))
                            (let ((_struct-type-id44903_ _e4481044900_)
                                  (_plist44920_ _e4481544917_))
                              (_K4480944897_
                               _plist44920_
                               _struct-type-id44903_)))
                          (_try-match4480544833_))))))))
        (if (##structure-instance-of? _self4478744793_ 'gxc#!struct-pred::t)
            (let* ((_e4479144925_ (##vector-ref _self4478744793_ '1))
                   (_struct-t44928_ _e4479144925_))
              (_K4479044922_ _struct-t44928_))
            (_E4478944797_)))))
  (bind-method!
   gxc#!struct-pred::t
   'optimize-call
   gxc#!struct-pred::optimize-call
   '#f)
  (define gxc#!struct-cons::optimize-call
    (lambda (_self44558_ _stx44559_ _args44560_)
      (let* ((_self4456144567_ _self44558_)
             (_E4456344571_
              (lambda () (error '"No clause matching" _self4456144567_)))
             (_K4456444654_
              (lambda (_struct-t44574_)
                (let* ((_struct-type44576_
                        (gxc#optimizer-resolve-type _struct-t44574_))
                       (_struct-type4457744590_ _struct-type44576_)
                       (_else4458044598_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct constructor application; not a struct type"
                           _stx44559_
                           _struct-t44574_
                           _struct-type44576_))))
                  (let ((_K4458344628_
                         (lambda (_ctor44609_
                                  _xfields44610_
                                  _fields44611_
                                  _type-id44612_)
                           (let* ((_args44614_ (map gxc#compile-e _args44560_))
                                  (_$e44616_
                                   (if _ctor44609_
                                       (if _xfields44610_
                                           (gxc#!struct-type-lookup-method
                                            _struct-type44576_
                                            _ctor44609_)
                                           '#f)
                                       '#f)))
                             (if _$e44616_
                                 ((lambda (_kons44619_)
                                    (let ((_$obj44621_
                                           (make-symbol (gensym '__obj))))
                                      (gxc#xform-wrap-source
                                       (cons '%#let-values
                                             (cons (cons (cons (cons _$obj44621_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons (cons '%#call
                                   (cons (cons '%#ref (cons 'make-object '()))
                                         (cons (cons '%#ref
                                                     (cons _struct-t44574_
                                                           '()))
                                               (cons (cons '%#quote
                                                           (cons (fx+ _fields44611_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _xfields44610_)
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
                                     (cons (cons '%#ref (cons _kons44619_ '()))
                                           (cons (cons '%#ref
                                                       (cons _$obj44621_ '()))
                                                 _args44614_)))
                               _stx44559_))
                             (cons (cons '%#ref (cons _$obj44621_ '())) '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _stx44559_)))
                                  _$e44616_)
                                 (if (let ((_$e44623_ _ctor44609_))
                                       (if _$e44623_
                                           _$e44623_
                                           (not _xfields44610_)))
                                     (gxc#xform-wrap-source
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons 'make-struct-instance
                                                              '()))
                                                  (cons (cons '%#ref
                                                              (cons _struct-t44574_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _args44614_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _stx44559_)
                                     (let ((_arity44626_
                                            (fx+ _fields44611_
                                                 _xfields44610_)))
                                       (if (fx= _arity44626_
                                                (length _args44614_))
                                           (gxc#xform-wrap-source
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#ref (cons _struct-t44574_ '())) _args44614_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _stx44559_)
                                           (gxc#raise-compile-error
                                            '"Illegal struct constructor application; arity mismatch"
                                            _stx44559_
                                            _struct-t44574_
                                            _arity44626_))))))))
                        (_K4458244603_
                         (lambda ()
                           (begin
                             (gxc#verbose
                              '"cannot inline struct constructor; unknown struct type "
                              _struct-t44574_)
                             (gxc#xform-call% _stx44559_)))))
                    (let ((_try-match4457944606_
                           (lambda ()
                             (if (##eq? _struct-type4457744590_ '#f)
                                 (_K4458244603_)
                                 (_else4458044598_)))))
                      (if (##structure-instance-of?
                           _struct-type4457744590_
                           'gxc#!struct-type::t)
                          (let* ((_e4458444631_
                                  (##vector-ref _struct-type4457744590_ '1))
                                 (_e4458544636_
                                  (##vector-ref _struct-type4457744590_ '2))
                                 (_e4458644639_
                                  (##vector-ref _struct-type4457744590_ '3))
                                 (_e4458744644_
                                  (##vector-ref _struct-type4457744590_ '4))
                                 (_e4458844649_
                                  (##vector-ref _struct-type4457744590_ '5)))
                            (let ((_type-id44634_ _e4458444631_)
                                  (_fields44642_ _e4458644639_)
                                  (_xfields44647_ _e4458744644_)
                                  (_ctor44652_ _e4458844649_))
                              (_K4458344628_
                               _ctor44652_
                               _xfields44647_
                               _fields44642_
                               _type-id44634_)))
                          (_try-match4457944606_))))))))
        (if (##structure-instance-of? _self4456144567_ 'gxc#!struct-cons::t)
            (let* ((_e4456544657_ (##vector-ref _self4456144567_ '1))
                   (_struct-t44660_ _e4456544657_))
              (_K4456444654_ _struct-t44660_))
            (_E4456344571_)))))
  (bind-method!
   gxc#!struct-cons::t
   'optimize-call
   gxc#!struct-cons::optimize-call
   '#f)
  (define gxc#!struct-getf::optimize-call
    (lambda (_self44269_ _stx44270_ _args44271_)
      (let* ((_self4427244280_ _self44269_)
             (_E4427444284_
              (lambda () (error '"No clause matching" _self4427244280_)))
             (_K4427544418_
              (lambda (_unchecked?44287_ _off44288_ _struct-t44289_)
                (let* ((_struct-type44291_
                        (gxc#optimizer-resolve-type _struct-t44289_))
                       (_struct-type4429244306_ _struct-type44291_)
                       (_else4429544314_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx44270_
                           _struct-t44289_
                           _struct-type44291_))))
                  (let ((_K4429844389_
                         (lambda (_plist44325_
                                  _xfields44326_
                                  _fields44327_
                                  _struct-type-id44328_)
                           (if _xfields44326_
                               (let* ((___stx4512045121_ _args44271_)
                                      (_g4433144341_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx4512045121_))))
                                 (let ((___kont4512245123_
                                        (lambda (_L44361_)
                                          (let ((_expr44382_
                                                 (gxc#compile-e _L44361_))
                                                (_off44383_
                                                 (fx+ _off44288_
                                                      _xfields44326_
                                                      '1))
                                                (_op44384_
                                                 (if _unchecked?44287_
                                                     '%#struct-unchecked-ref
                                                     (if (if _plist44325_
                                                             (assgetq 'final:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _plist44325_)
                     '#f)
                 '%#struct-direct-ref
                 '%#struct-ref))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (gxc#xform-wrap-source
                                             (cons _op44384_
                                                   (cons (cons '%#ref
                                                               (cons _struct-t44289_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons '%#quote (cons _off44383_ '()))
                       (cons _expr44382_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _stx44270_))))
                                       (___kont4512445125_
                                        (lambda ()
                                          (gxc#raise-compile-error
                                           '"Illegal struct accessor application"
                                           _stx44270_))))
                                   (if (gx#stx-pair? ___stx4512045121_)
                                       (let ((_e4433444353_
                                              (gx#stx-e ___stx4512045121_)))
                                         (let ((_tl4433644358_
                                                (##cdr _e4433444353_))
                                               (_hd4433544356_
                                                (##car _e4433444353_)))
                                           (if (gx#stx-null? _tl4433644358_)
                                               (___kont4512245123_
                                                _hd4433544356_)
                                               (___kont4512445125_))))
                                       (___kont4512445125_))))
                               (begin
                                 (gxc#verbose
                                  '"struct-getf: incomplete struct "
                                  _struct-type-id44328_)
                                 (gxc#xform-call% _stx44270_)))))
                        (_K4429744319_
                         (lambda () (gxc#xform-call% _stx44270_))))
                    (let ((_try-match4429444322_
                           (lambda ()
                             (if (##eq? _struct-type4429244306_ '#f)
                                 (_K4429744319_)
                                 (_else4429544314_)))))
                      (if (##structure-instance-of?
                           _struct-type4429244306_
                           'gxc#!struct-type::t)
                          (let* ((_e4429944392_
                                  (##vector-ref _struct-type4429244306_ '1))
                                 (_e4430044397_
                                  (##vector-ref _struct-type4429244306_ '2))
                                 (_e4430144400_
                                  (##vector-ref _struct-type4429244306_ '3))
                                 (_e4430244405_
                                  (##vector-ref _struct-type4429244306_ '4))
                                 (_e4430344410_
                                  (##vector-ref _struct-type4429244306_ '5))
                                 (_e4430444413_
                                  (##vector-ref _struct-type4429244306_ '6)))
                            (let ((_struct-type-id44395_ _e4429944392_)
                                  (_fields44403_ _e4430144400_)
                                  (_xfields44408_ _e4430244405_)
                                  (_plist44416_ _e4430444413_))
                              (_K4429844389_
                               _plist44416_
                               _xfields44408_
                               _fields44403_
                               _struct-type-id44395_)))
                          (_try-match4429444322_))))))))
        (if (##structure-instance-of? _self4427244280_ 'gxc#!struct-getf::t)
            (let* ((_e4427644421_ (##vector-ref _self4427244280_ '1))
                   (_struct-t44424_ _e4427644421_)
                   (_e4427744426_ (##vector-ref _self4427244280_ '2))
                   (_off44429_ _e4427744426_)
                   (_e4427844431_ (##vector-ref _self4427244280_ '3))
                   (_unchecked?44434_ _e4427844431_))
              (_K4427544418_ _unchecked?44434_ _off44429_ _struct-t44424_))
            (_E4427444284_)))))
  (bind-method!
   gxc#!struct-getf::t
   'optimize-call
   gxc#!struct-getf::optimize-call
   '#f)
  (define gxc#!struct-setf::optimize-call
    (lambda (_self43963_ _stx43964_ _args43965_)
      (let* ((_self4396643974_ _self43963_)
             (_E4396843978_
              (lambda () (error '"No clause matching" _self4396643974_)))
             (_K4396944129_
              (lambda (_unchecked?43981_ _off43982_ _struct-t43983_)
                (let* ((_struct-type43985_
                        (gxc#optimizer-resolve-type _struct-t43983_))
                       (_struct-type4398644000_ _struct-type43985_)
                       (_else4398944008_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx43964_
                           _struct-t43983_
                           _struct-type43985_))))
                  (let ((_K4399244100_
                         (lambda (_plist44019_
                                  _xfields44020_
                                  _fields44021_
                                  _struct-type-id44022_)
                           (if _xfields44020_
                               (let* ((___stx4515345154_ _args43965_)
                                      (_g4402544039_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx4515345154_))))
                                 (let ((___kont4515545156_
                                        (lambda (_L44067_ _L44068_)
                                          (let ((_expr44092_
                                                 (gxc#compile-e _L44068_))
                                                (_val44093_
                                                 (gxc#compile-e _L44067_))
                                                (_off44094_
                                                 (fx+ _off43982_
                                                      _xfields44020_
                                                      '1))
                                                (_op44095_
                                                 (if _unchecked?43981_
                                                     '%#struct-unchecked-set!
                                                     (if (if _plist44019_
                                                             (assgetq 'final:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _plist44019_)
                     '#f)
                 '%#struct-direct-set!
                 '%#struct-set!))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (gxc#xform-wrap-source
                                             (cons _op44095_
                                                   (cons (cons '%#ref
                                                               (cons _struct-t43983_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons '%#quote (cons _off44094_ '()))
                       (cons _expr44092_ (cons _val44093_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _stx43964_))))
                                       (___kont4515745158_
                                        (lambda ()
                                          (gxc#raise-compile-error
                                           '"Illegal struct mutator application"
                                           _stx43964_))))
                                   (if (gx#stx-pair? ___stx4515345154_)
                                       (let ((_e4402944051_
                                              (gx#stx-e ___stx4515345154_)))
                                         (let ((_tl4403144056_
                                                (##cdr _e4402944051_))
                                               (_hd4403044054_
                                                (##car _e4402944051_)))
                                           (if (gx#stx-pair? _tl4403144056_)
                                               (let ((_e4403244059_
                                                      (gx#stx-e
                                                       _tl4403144056_)))
                                                 (let ((_tl4403444064_
                                                        (##cdr _e4403244059_))
                                                       (_hd4403344062_
                                                        (##car _e4403244059_)))
                                                   (if (gx#stx-null?
                                                        _tl4403444064_)
                                                       (___kont4515545156_
                                                        _hd4403344062_
                                                        _hd4403044054_)
                                                       (___kont4515745158_))))
                                               (___kont4515745158_))))
                                       (___kont4515745158_))))
                               (begin
                                 (gxc#verbose
                                  '"struct-setf: incomplete struct "
                                  _struct-type-id44022_)
                                 (gxc#xform-call% _stx43964_)))))
                        (_K4399144013_
                         (lambda () (gxc#xform-call% _stx43964_))))
                    (let ((_try-match4398844016_
                           (lambda ()
                             (if (##eq? _struct-type4398644000_ '#f)
                                 (_K4399144013_)
                                 (_else4398944008_)))))
                      (if (##structure-instance-of?
                           _struct-type4398644000_
                           'gxc#!struct-type::t)
                          (let* ((_e4399344103_
                                  (##vector-ref _struct-type4398644000_ '1))
                                 (_e4399444108_
                                  (##vector-ref _struct-type4398644000_ '2))
                                 (_e4399544111_
                                  (##vector-ref _struct-type4398644000_ '3))
                                 (_e4399644116_
                                  (##vector-ref _struct-type4398644000_ '4))
                                 (_e4399744121_
                                  (##vector-ref _struct-type4398644000_ '5))
                                 (_e4399844124_
                                  (##vector-ref _struct-type4398644000_ '6)))
                            (let ((_struct-type-id44106_ _e4399344103_)
                                  (_fields44114_ _e4399544111_)
                                  (_xfields44119_ _e4399644116_)
                                  (_plist44127_ _e4399844124_))
                              (_K4399244100_
                               _plist44127_
                               _xfields44119_
                               _fields44114_
                               _struct-type-id44106_)))
                          (_try-match4398844016_))))))))
        (if (##structure-instance-of? _self4396643974_ 'gxc#!struct-setf::t)
            (let* ((_e4397044132_ (##vector-ref _self4396643974_ '1))
                   (_struct-t44135_ _e4397044132_)
                   (_e4397144137_ (##vector-ref _self4396643974_ '2))
                   (_off44140_ _e4397144137_)
                   (_e4397244142_ (##vector-ref _self4396643974_ '3))
                   (_unchecked?44145_ _e4397244142_))
              (_K4396944129_ _unchecked?44145_ _off44140_ _struct-t44135_))
            (_E4396843978_)))))
  (bind-method!
   gxc#!struct-setf::t
   'optimize-call
   gxc#!struct-setf::optimize-call
   '#f)
  (define gxc#!lambda::optimize-call
    (lambda (_self43797_ _stx43798_ _args43799_)
      (let* ((_self4380043809_ _self43797_)
             (_E4380243813_
              (lambda () (error '"No clause matching" _self4380043809_)))
             (_K4380343820_
              (lambda (_inline43816_ _dispatch43817_ _arity43818_)
                (begin
                  (if (gxc#!lambda-arity-match? _self43797_ _args43799_)
                      '#!void
                      (gxc#raise-compile-error
                       '"Illegal lambda application; arity mismatch"
                       _stx43798_
                       _arity43818_))
                  (if _inline43816_
                      (begin
                        (gxc#verbose '"inline lambda")
                        (gxc#compile-e
                         (gxc#xform-wrap-source
                          (_inline43816_ _stx43798_)
                          _stx43798_)))
                      (if _dispatch43817_
                          (begin
                            (gxc#verbose
                             '"dispatch lambda => "
                             _dispatch43817_)
                            (gxc#compile-e
                             (gxc#xform-wrap-source
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons _dispatch43817_ '()))
                                          _args43799_))
                              _stx43798_)))
                          (gxc#xform-call% _stx43798_)))))))
        (if (##structure-instance-of? _self4380043809_ 'gxc#!lambda::t)
            (let* ((_e4380443823_ (##vector-ref _self4380043809_ '1))
                   (_e4380543826_ (##vector-ref _self4380043809_ '2))
                   (_arity43829_ _e4380543826_)
                   (_e4380643831_ (##vector-ref _self4380043809_ '3))
                   (_dispatch43834_ _e4380643831_)
                   (_e4380743836_ (##vector-ref _self4380043809_ '4))
                   (_inline43839_ _e4380743836_))
              (_K4380343820_ _inline43839_ _dispatch43834_ _arity43829_))
            (_E4380243813_)))))
  (bind-method! gxc#!lambda::t 'optimize-call gxc#!lambda::optimize-call '#f)
  (define gxc#!case-lambda::optimize-call
    (lambda (_self43636_ _stx43637_ _args43638_)
      (let* ((_self4363943646_ _self43636_)
             (_E4364143650_
              (lambda () (error '"No clause matching" _self4363943646_)))
             (_K4364243664_
              (lambda (_clauses43653_)
                (let ((_$e43659_
                       (find (lambda (_g4365443656_)
                               (gxc#!lambda-arity-match?
                                _g4365443656_
                                _args43638_))
                             _clauses43653_)))
                  (if _$e43659_
                      ((lambda (_clause43662_)
                         (call-method
                          _clause43662_
                          'optimize-call
                          _stx43637_
                          _args43638_))
                       _$e43659_)
                      (gxc#raise-compile-error
                       '"Illegal case-lambda application; arity mismatch"
                       _stx43637_
                       (map gxc#!lambda-arity _clauses43653_)))))))
        (if (##structure-instance-of? _self4363943646_ 'gxc#!case-lambda::t)
            (let* ((_e4364343667_ (##vector-ref _self4363943646_ '1))
                   (_e4364443670_ (##vector-ref _self4363943646_ '2))
                   (_clauses43673_ _e4364443670_))
              (_K4364243664_ _clauses43673_))
            (_E4364143650_)))))
  (bind-method!
   gxc#!case-lambda::t
   'optimize-call
   gxc#!case-lambda::optimize-call
   '#f)
  (define gxc#!lambda-arity-match?
    (lambda (_self43450_ _args43451_)
      (let* ((_self4345243459_ _self43450_)
             (_E4345443463_
              (lambda () (error '"No clause matching" _self4345243459_)))
             (_K4345543503_
              (lambda (_arity43466_)
                (let* ((_arity4346743476_ _arity43466_)
                       (_E4347043480_
                        (lambda ()
                          (error '"No clause matching" _arity4346743476_))))
                  (let ((_K4347443500_
                         (lambda () (fx= (length _args43451_) _arity43466_)))
                        (_K4347143486_
                         (lambda (_arity43484_)
                           (fx>= (length _args43451_) _arity43484_))))
                    (let ((_try-match4346943496_
                           (lambda ()
                             (if (##pair? _arity4346743476_)
                                 (let ((_tl4347343491_
                                        (##cdr _arity4346743476_))
                                       (_hd4347243489_
                                        (##car _arity4346743476_)))
                                   (if (##null? _tl4347343491_)
                                       (let ((_arity43494_ _hd4347243489_))
                                         (_K4347143486_ _arity43494_))
                                       (_E4347043480_)))
                                 (_E4347043480_)))))
                      (if (fixnum? _arity4346743476_)
                          (_K4347443500_)
                          (_try-match4346943496_))))))))
        (if (##structure-instance-of? _self4345243459_ 'gxc#!lambda::t)
            (let* ((_e4345643506_ (##vector-ref _self4345243459_ '1))
                   (_e4345743509_ (##vector-ref _self4345243459_ '2))
                   (_arity43512_ _e4345743509_))
              (_K4345543503_ _arity43512_))
            (_E4345443463_)))))
  (define gxc#!kw-lambda::optimize-call
    (lambda (_self43335_ _stx43336_ _args43337_)
      (let* ((_self4333843346_ _self43335_)
             (_E4334043350_
              (lambda () (error '"No clause matching" _self4333843346_)))
             (_K4334143434_
              (lambda (_dispatch43353_ _table43354_)
                (let* ((_g4335543364_
                        (gxc#optimizer-lookup-type _dispatch43353_))
                       (_else4335743372_
                        (lambda ()
                          (begin
                            (gxc#verbose
                             '"unknown keyword dispatch lambda "
                             _dispatch43353_)
                            (gxc#xform-call% _stx43336_))))
                       (_K4335943418_
                        (lambda (_main43375_ _keys43376_)
                          (let ((_g45318_
                                 (gxc#!kw-lambda-split-args
                                  _stx43336_
                                  _args43337_)))
                            (begin
                              (let ((_g45319_
                                     (if (##values? _g45318_)
                                         (##vector-length _g45318_)
                                         1)))
                                (if (not (##fx= _g45319_ 2))
                                    (error "Context expects 2 values"
                                           _g45319_)))
                              (let ((_pargs43378_ (##vector-ref _g45318_ 0))
                                    (_kwargs43379_ (##vector-ref _g45318_ 1)))
                                (begin
                                  (gxc#verbose
                                   '"dispatch kw-lambda => "
                                   _main43375_)
                                  (if _table43354_
                                      (let ((_xargs43386_
                                             (map (lambda (_key43381_)
                                                    (let ((_$e43383_
                                                           (assgetq _key43381_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _kwargs43379_)))
              (if _$e43383_ (values _$e43383_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _keys43376_)))
                                        (begin
                                          (for-each
                                           (lambda (_kw43388_)
                                             (if (memq (car _kw43388_)
                                                       _keys43376_)
                                                 '#!void
                                                 (gxc#raise-compile-error
                                                  '"Illegal keyword lambda application; unexpected keyword"
                                                  _stx43336_
                                                  _keys43376_
                                                  _kw43388_)))
                                           _kwargs43379_)
                                          (gxc#compile-e
                                           (gxc#xform-wrap-source
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons _main43375_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote (cons '#f '()))
                      (foldr1 cons _pargs43378_ _xargs43386_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _stx43336_))))
                                      (let* ((_kwt43390_
                                              (make-symbol (gensym '__kwt)))
                                             (_kwvars43393_
                                              (map (lambda (_g45320_)
                                                     (make-symbol
                                                      (gensym '__kw)))
                                                   _kwargs43379_))
                                             (_kwbind43398_
                                              (map (lambda (_kw43395_
                                                            _kwvar43396_)
                                                     (cons (cons _kwvar43396_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   (cons (cdr _kw43395_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs43379_
                                                   _kwvars43393_))
                                             (_kwset43403_
                                              (map (lambda (_kw43400_
                                                            _kwvar43401_)
                                                     (cons '%#call
                                                           (cons '(%#ref hash-put!)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons _kwt43390_ '()))
                               (cons (cons '%#quote (cons (car _kw43400_) '()))
                                     (cons (cons '%#ref
                                                 (cons _kwvar43401_ '()))
                                           '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs43379_
                                                   _kwvars43393_))
                                             (_xkwargs43408_
                                              (map (lambda (_kw43405_
                                                            _kwvar43406_)
                                                     (cons (car _kw43405_)
                                                           (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _kwvar43406_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs43379_
                                                   _kwvars43393_))
                                             (_xargs43415_
                                              (map (lambda (_key43410_)
                                                     (let ((_$e43412_
                                                            (assgetq _key43410_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _xkwargs43408_)))
               (if _$e43412_ (values _$e43412_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _keys43376_)))
                                        (gxc#compile-e
                                         (gxc#xform-wrap-source
                                          (cons '%#let-values
                                                (cons _kwbind43398_
                                                      (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (cons (cons _kwt43390_ '())
                                            (cons (gxc#xform-wrap-source
                                                   (cons '%#call
                                                         (cons '(%#ref make-hash-table-eq)
                                                               (cons '(%#quote size:)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons '%#quote
                                         (cons (length _kwargs43379_) '()))
                                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx43336_)
                                                  '()))
                                      '())
                                (cons (cons '%#begin
                                            (foldr1 cons
                                                    (cons (gxc#xform-wrap-source
                                                           (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons _main43375_ '()))
                               (cons (cons '%#ref (cons _kwt43390_ '()))
                                     (foldr1 cons _pargs43378_ _xargs43415_))))
                   _stx43336_)
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _kwset43403_))
                                      '())))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _stx43336_)))))))))))
                  (if (##structure-instance-of?
                       _g4335543364_
                       'gxc#!kw-lambda-primary::t)
                      (let* ((_e4336043421_ (##vector-ref _g4335543364_ '1))
                             (_e4336143424_ (##vector-ref _g4335543364_ '2))
                             (_keys43427_ _e4336143424_)
                             (_e4336243429_ (##vector-ref _g4335543364_ '3))
                             (_main43432_ _e4336243429_))
                        (_K4335943418_ _main43432_ _keys43427_))
                      (_else4335743372_))))))
        (if (##structure-instance-of? _self4333843346_ 'gxc#!kw-lambda::t)
            (let* ((_e4334243437_ (##vector-ref _self4333843346_ '1))
                   (_e4334343440_ (##vector-ref _self4333843346_ '2))
                   (_table43443_ _e4334343440_)
                   (_e4334443445_ (##vector-ref _self4333843346_ '3))
                   (_dispatch43448_ _e4334443445_))
              (_K4334143434_ _dispatch43448_ _table43443_))
            (_E4334043350_)))))
  (bind-method!
   gxc#!kw-lambda::t
   'optimize-call
   gxc#!kw-lambda::optimize-call
   '#f)
  (define gxc#!kw-lambda-split-args
    (lambda (_stx42948_ _args42949_)
      (let _lp42951_ ((_rest42953_ _args42949_)
                      (_pargs42954_ '())
                      (_kwargs42955_ '()))
        (let* ((___stx4520145202_ _rest42953_)
               (_g4296143013_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx4520145202_))))
          (let ((___kont4520345204_
                 (lambda (_L43192_ _L43193_)
                   (_lp42951_
                    _L43192_
                    (cons _L43193_ _pargs42954_)
                    _kwargs42955_)))
                (___kont4520545206_
                 (lambda (_L43138_)
                   (values (foldl1 cons _L43138_ _pargs42954_)
                           (reverse _kwargs42955_))))
                (___kont4520745208_
                 (lambda (_L43085_ _L43086_ _L43087_)
                   (let ((_kw43104_ (gx#stx-e _L43087_)))
                     (if (assq _kw43104_ _kwargs42955_)
                         (gxc#raise-compile-error
                          '"Illegal keyword lambda application; duplicate keyword"
                          _stx42948_
                          _kw43104_)
                         (_lp42951_
                          _L43085_
                          _pargs42954_
                          (cons (cons _kw43104_ _L43086_) _kwargs42955_))))))
                (___kont4520945210_
                 (lambda (_L43033_ _L43034_)
                   (_lp42951_
                    _L43033_
                    (cons _L43034_ _pargs42954_)
                    _kwargs42955_)))
                (___kont4521145212_
                 (lambda ()
                   (values (reverse _pargs42954_) (reverse _kwargs42955_)))))
            (let* ((_g4296043020_
                    (lambda ()
                      (if (gx#stx-null? ___stx4520145202_)
                          (___kont4521145212_)
                          (_g4296143013_))))
                   (___match4530845309_
                    (lambda (_e4299243053_
                             _hd4299343056_
                             _tl4299443058_
                             _e4299543061_
                             _hd4299643064_
                             _tl4299743066_
                             _e4299843069_
                             _hd4299943072_
                             _tl4300043074_
                             _e4300143077_
                             _hd4300243080_
                             _tl4300343082_)
                      (let ((_L43085_ _tl4300343082_)
                            (_L43086_ _hd4300243080_)
                            (_L43087_ _hd4299943072_))
                        (if (gx#stx-keyword? _L43087_)
                            (___kont4520745208_ _L43085_ _L43086_ _L43087_)
                            (___kont4520945210_
                             _tl4299443058_
                             _hd4299343056_))))))
              (if (gx#stx-pair? ___stx4520145202_)
                  (let ((_e4296543157_ (gx#stx-e ___stx4520145202_)))
                    (let ((_tl4296743162_ (##cdr _e4296543157_))
                          (_hd4296643160_ (##car _e4296543157_)))
                      (if (gx#stx-pair? _hd4296643160_)
                          (let ((_e4296843165_ (gx#stx-e _hd4296643160_)))
                            (let ((_tl4297043170_ (##cdr _e4296843165_))
                                  (_hd4296943168_ (##car _e4296843165_)))
                              (if (gx#identifier? _hd4296943168_)
                                  (if (gx#stx-eq? '%#quote _hd4296943168_)
                                      (if (gx#stx-pair? _tl4297043170_)
                                          (let ((_e4297143173_
                                                 (gx#stx-e _tl4297043170_)))
                                            (let ((_tl4297343178_
                                                   (##cdr _e4297143173_))
                                                  (_hd4297243176_
                                                   (##car _e4297143173_)))
                                              (if (gx#stx-datum?
                                                   _hd4297243176_)
                                                  (let ((_e4297443181_
                                                         (gx#stx-e
                                                          _hd4297243176_)))
                                                    (if (equal? _e4297443181_
                                                                '#!key)
                                                        (if (gx#stx-null?
                                                             _tl4297343178_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl4296743162_)
                        (let ((_e4297543184_ (gx#stx-e _tl4296743162_)))
                          (let ((_tl4297743189_ (##cdr _e4297543184_))
                                (_hd4297643187_ (##car _e4297543184_)))
                            (___kont4520345204_
                             _tl4297743189_
                             _hd4297643187_)))
                        (___kont4520945210_ _tl4296743162_ _hd4296643160_))
                    (___kont4520945210_ _tl4296743162_ _hd4296643160_))
                (if (equal? _e4297443181_ '#!rest)
                    (if (gx#stx-null? _tl4297343178_)
                        (___kont4520545206_ _tl4296743162_)
                        (___kont4520945210_ _tl4296743162_ _hd4296643160_))
                    (if (gx#stx-null? _tl4297343178_)
                        (if (gx#stx-pair? _tl4296743162_)
                            (let ((_e4300143077_ (gx#stx-e _tl4296743162_)))
                              (let ((_tl4300343082_ (##cdr _e4300143077_))
                                    (_hd4300243080_ (##car _e4300143077_)))
                                (___match4530845309_
                                 _e4296543157_
                                 _hd4296643160_
                                 _tl4296743162_
                                 _e4296843165_
                                 _hd4296943168_
                                 _tl4297043170_
                                 _e4297143173_
                                 _hd4297243176_
                                 _tl4297343178_
                                 _e4300143077_
                                 _hd4300243080_
                                 _tl4300343082_)))
                            (___kont4520945210_ _tl4296743162_ _hd4296643160_))
                        (___kont4520945210_ _tl4296743162_ _hd4296643160_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _tl4297343178_)
                                                      (if (gx#stx-pair?
                                                           _tl4296743162_)
                                                          (let ((_e4300143077_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl4296743162_)))
                    (let ((_tl4300343082_ (##cdr _e4300143077_))
                          (_hd4300243080_ (##car _e4300143077_)))
                      (___match4530845309_
                       _e4296543157_
                       _hd4296643160_
                       _tl4296743162_
                       _e4296843165_
                       _hd4296943168_
                       _tl4297043170_
                       _e4297143173_
                       _hd4297243176_
                       _tl4297343178_
                       _e4300143077_
                       _hd4300243080_
                       _tl4300343082_)))
                  (___kont4520945210_ _tl4296743162_ _hd4296643160_))
              (___kont4520945210_ _tl4296743162_ _hd4296643160_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (___kont4520945210_
                                           _tl4296743162_
                                           _hd4296643160_))
                                      (___kont4520945210_
                                       _tl4296743162_
                                       _hd4296643160_))
                                  (___kont4520945210_
                                   _tl4296743162_
                                   _hd4296643160_))))
                          (___kont4520945210_ _tl4296743162_ _hd4296643160_))))
                  (_g4296043020_))))))))
  (define gxc#!kw-lambda-primary::optimize-call
    (lambda (_self42944_ _stx42945_ _args42946_) (gxc#xform-call% _stx42945_)))
  (bind-method!
   gxc#!kw-lambda-primary::t
   'optimize-call
   gxc#!kw-lambda-primary::optimize-call
   '#f))
