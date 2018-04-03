(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#&optimize-call
    (##make-promise
     (lambda ()
       (let ((_tbl45137_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl45137_ (force gxc#&basic-xform))
           (table-set! _tbl45137_ '%#call gxc#optimize-call%)
           _tbl45137_)))))
  (define gxc#apply-optimize-call
    (lambda (_stx45130_ . _args45132_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx45130_ _args45132_))
       gxc#current-compile-methods
       (force gxc#&optimize-call))))
  (define gxc#optimize-call%
    (lambda (_stx45036_)
      (let* ((___stx4514045141_ _stx45036_)
             (_g4503945059_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4514045141_))))
        (let ((___kont4514245143_
               (lambda (_L45103_ _L45104_)
                 (let* ((_rator-id45122_ (gxc#identifier-symbol _L45104_))
                        (_rator-type45124_
                         (gxc#optimizer-resolve-type _rator-id45122_)))
                   (if (##structure-instance-of?
                        _rator-type45124_
                        'gxc#!procedure::t)
                       (begin
                         (gxc#verbose
                          '"optimize-call "
                          _rator-id45122_
                          '" => "
                          _rator-type45124_
                          '" "
                          (##structure-ref
                           _rator-type45124_
                           '1
                           gxc#!type::t
                           '#f))
                         (call-method
                          _rator-type45124_
                          'optimize-call
                          _stx45036_
                          _L45103_))
                       (if (not _rator-type45124_)
                           (gxc#xform-call% _stx45036_)
                           (gxc#raise-compile-error
                            '"Illegal application; not a procedure"
                            _stx45036_
                            _rator-type45124_))))))
              (___kont4514445145_ (lambda () (gxc#xform-call% _stx45036_))))
          (if (gx#stx-pair? ___stx4514045141_)
              (let ((_e4504345071_ (gx#stx-e ___stx4514045141_)))
                (let ((_tl4504545076_ (##cdr _e4504345071_))
                      (_hd4504445074_ (##car _e4504345071_)))
                  (if (gx#stx-pair? _tl4504545076_)
                      (let ((_e4504645079_ (gx#stx-e _tl4504545076_)))
                        (let ((_tl4504845084_ (##cdr _e4504645079_))
                              (_hd4504745082_ (##car _e4504645079_)))
                          (if (gx#stx-pair? _hd4504745082_)
                              (let ((_e4504945087_ (gx#stx-e _hd4504745082_)))
                                (let ((_tl4505145092_ (##cdr _e4504945087_))
                                      (_hd4505045090_ (##car _e4504945087_)))
                                  (if (gx#identifier? _hd4505045090_)
                                      (if (gx#stx-eq? '%#ref _hd4505045090_)
                                          (if (gx#stx-pair? _tl4505145092_)
                                              (let ((_e4505245095_
                                                     (gx#stx-e
                                                      _tl4505145092_)))
                                                (let ((_tl4505445100_
                                                       (##cdr _e4505245095_))
                                                      (_hd4505345098_
                                                       (##car _e4505245095_)))
                                                  (if (gx#stx-null?
                                                       _tl4505445100_)
                                                      (___kont4514245143_
                                                       _tl4504845084_
                                                       _hd4505345098_)
                                                      (___kont4514445145_))))
                                              (___kont4514445145_))
                                          (___kont4514445145_))
                                      (___kont4514445145_))))
                              (___kont4514445145_))))
                      (___kont4514445145_))))
              (___kont4514445145_))))))
  (define gxc#!struct-pred::optimize-call
    (lambda (_self44890_ _stx44891_ _args44892_)
      (let* ((_self4489344899_ _self44890_)
             (_E4489544903_
              (lambda () (error '"No clause matching" _self4489344899_)))
             (_K4489645028_
              (lambda (_struct-t44906_)
                (let* ((_struct-type44908_
                        (gxc#optimizer-resolve-type _struct-t44906_))
                       (_struct-type4490944923_ _struct-type44908_)
                       (_else4491244931_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx44891_
                           _struct-t44906_
                           _struct-type44908_))))
                  (let ((_K4491545003_
                         (lambda (_plist44942_ _struct-type-id44943_)
                           (let* ((___stx4517845179_ _args44892_)
                                  (_g4494644956_
                                   (lambda ()
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      ___stx4517845179_))))
                             (let ((___kont4518045181_
                                    (lambda (_L44976_)
                                      (let ((_expr44997_
                                             (gxc#compile-e _L44976_))
                                            (_op44998_
                                             (if (if _plist44942_
                                                     (assgetq 'final:
                                                              _plist44942_)
                                                     '#f)
                                                 '%#struct-direct-instance?
                                                 '%#struct-instance?)))
                                        (gxc#xform-wrap-source
                                         (cons _op44998_
                                               (cons (cons '%#quote
                                                           (cons _struct-type-id44943_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _expr44997_ '())))
                                         _stx44891_))))
                                   (___kont4518245183_
                                    (lambda ()
                                      (gxc#raise-compile-error
                                       '"Illegal struct predicate application"
                                       _stx44891_))))
                               (if (gx#stx-pair? ___stx4517845179_)
                                   (let ((_e4494944968_
                                          (gx#stx-e ___stx4517845179_)))
                                     (let ((_tl4495144973_
                                            (##cdr _e4494944968_))
                                           (_hd4495044971_
                                            (##car _e4494944968_)))
                                       (if (gx#stx-null? _tl4495144973_)
                                           (___kont4518045181_ _hd4495044971_)
                                           (___kont4518245183_))))
                                   (___kont4518245183_))))))
                        (_K4491444936_
                         (lambda () (gxc#xform-call% _stx44891_))))
                    (let ((_try-match4491144939_
                           (lambda ()
                             (if (##eq? _struct-type4490944923_ '#f)
                                 (_K4491444936_)
                                 (_else4491244931_)))))
                      (if (##structure-instance-of?
                           _struct-type4490944923_
                           'gxc#!struct-type::t)
                          (let* ((_e4491645006_
                                  (##vector-ref _struct-type4490944923_ '1))
                                 (_e4491745011_
                                  (##vector-ref _struct-type4490944923_ '2))
                                 (_e4491845014_
                                  (##vector-ref _struct-type4490944923_ '3))
                                 (_e4491945017_
                                  (##vector-ref _struct-type4490944923_ '4))
                                 (_e4492045020_
                                  (##vector-ref _struct-type4490944923_ '5))
                                 (_e4492145023_
                                  (##vector-ref _struct-type4490944923_ '6)))
                            (let ((_struct-type-id45009_ _e4491645006_)
                                  (_plist45026_ _e4492145023_))
                              (_K4491545003_
                               _plist45026_
                               _struct-type-id45009_)))
                          (_try-match4491144939_))))))))
        (if (##structure-instance-of? _self4489344899_ 'gxc#!struct-pred::t)
            (let* ((_e4489745031_ (##vector-ref _self4489344899_ '1))
                   (_struct-t45034_ _e4489745031_))
              (_K4489645028_ _struct-t45034_))
            (_E4489544903_)))))
  (bind-method!
   gxc#!struct-pred::t
   'optimize-call
   gxc#!struct-pred::optimize-call
   '#f)
  (define gxc#!struct-cons::optimize-call
    (lambda (_self44664_ _stx44665_ _args44666_)
      (let* ((_self4466744673_ _self44664_)
             (_E4466944677_
              (lambda () (error '"No clause matching" _self4466744673_)))
             (_K4467044760_
              (lambda (_struct-t44680_)
                (let* ((_struct-type44682_
                        (gxc#optimizer-resolve-type _struct-t44680_))
                       (_struct-type4468344696_ _struct-type44682_)
                       (_else4468644704_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct constructor application; not a struct type"
                           _stx44665_
                           _struct-t44680_
                           _struct-type44682_))))
                  (let ((_K4468944734_
                         (lambda (_ctor44715_
                                  _xfields44716_
                                  _fields44717_
                                  _type-id44718_)
                           (let* ((_args44720_ (map gxc#compile-e _args44666_))
                                  (_$e44722_
                                   (if _ctor44715_
                                       (if _xfields44716_
                                           (gxc#!struct-type-lookup-method
                                            _struct-type44682_
                                            _ctor44715_)
                                           '#f)
                                       '#f)))
                             (if _$e44722_
                                 ((lambda (_kons44725_)
                                    (let ((_$obj44727_
                                           (make-symbol (gensym '__obj))))
                                      (gxc#xform-wrap-source
                                       (cons '%#let-values
                                             (cons (cons (cons (cons _$obj44727_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons (cons '%#call
                                   (cons (cons '%#ref (cons 'make-object '()))
                                         (cons (cons '%#ref
                                                     (cons _struct-t44680_
                                                           '()))
                                               (cons (cons '%#quote
                                                           (cons (fx+ _fields44717_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _xfields44716_)
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
                                     (cons (cons '%#ref (cons _kons44725_ '()))
                                           (cons (cons '%#ref
                                                       (cons _$obj44727_ '()))
                                                 _args44720_)))
                               _stx44665_))
                             (cons (cons '%#ref (cons _$obj44727_ '())) '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _stx44665_)))
                                  _$e44722_)
                                 (if (let ((_$e44729_ _ctor44715_))
                                       (if _$e44729_
                                           _$e44729_
                                           (not _xfields44716_)))
                                     (gxc#xform-wrap-source
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons 'make-struct-instance
                                                              '()))
                                                  (cons (cons '%#ref
                                                              (cons _struct-t44680_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _args44720_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _stx44665_)
                                     (let ((_arity44732_
                                            (fx+ _fields44717_
                                                 _xfields44716_)))
                                       (if (fx= _arity44732_
                                                (length _args44720_))
                                           (gxc#xform-wrap-source
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#ref (cons _struct-t44680_ '())) _args44720_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _stx44665_)
                                           (gxc#raise-compile-error
                                            '"Illegal struct constructor application; arity mismatch"
                                            _stx44665_
                                            _struct-t44680_
                                            _arity44732_))))))))
                        (_K4468844709_
                         (lambda ()
                           (begin
                             (gxc#verbose
                              '"cannot inline struct constructor; unknown struct type "
                              _struct-t44680_)
                             (gxc#xform-call% _stx44665_)))))
                    (let ((_try-match4468544712_
                           (lambda ()
                             (if (##eq? _struct-type4468344696_ '#f)
                                 (_K4468844709_)
                                 (_else4468644704_)))))
                      (if (##structure-instance-of?
                           _struct-type4468344696_
                           'gxc#!struct-type::t)
                          (let* ((_e4469044737_
                                  (##vector-ref _struct-type4468344696_ '1))
                                 (_e4469144742_
                                  (##vector-ref _struct-type4468344696_ '2))
                                 (_e4469244745_
                                  (##vector-ref _struct-type4468344696_ '3))
                                 (_e4469344750_
                                  (##vector-ref _struct-type4468344696_ '4))
                                 (_e4469444755_
                                  (##vector-ref _struct-type4468344696_ '5)))
                            (let ((_type-id44740_ _e4469044737_)
                                  (_fields44748_ _e4469244745_)
                                  (_xfields44753_ _e4469344750_)
                                  (_ctor44758_ _e4469444755_))
                              (_K4468944734_
                               _ctor44758_
                               _xfields44753_
                               _fields44748_
                               _type-id44740_)))
                          (_try-match4468544712_))))))))
        (if (##structure-instance-of? _self4466744673_ 'gxc#!struct-cons::t)
            (let* ((_e4467144763_ (##vector-ref _self4466744673_ '1))
                   (_struct-t44766_ _e4467144763_))
              (_K4467044760_ _struct-t44766_))
            (_E4466944677_)))))
  (bind-method!
   gxc#!struct-cons::t
   'optimize-call
   gxc#!struct-cons::optimize-call
   '#f)
  (define gxc#!struct-getf::optimize-call
    (lambda (_self44375_ _stx44376_ _args44377_)
      (let* ((_self4437844386_ _self44375_)
             (_E4438044390_
              (lambda () (error '"No clause matching" _self4437844386_)))
             (_K4438144524_
              (lambda (_unchecked?44393_ _off44394_ _struct-t44395_)
                (let* ((_struct-type44397_
                        (gxc#optimizer-resolve-type _struct-t44395_))
                       (_struct-type4439844412_ _struct-type44397_)
                       (_else4440144420_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx44376_
                           _struct-t44395_
                           _struct-type44397_))))
                  (let ((_K4440444495_
                         (lambda (_plist44431_
                                  _xfields44432_
                                  _fields44433_
                                  _struct-type-id44434_)
                           (if _xfields44432_
                               (let* ((___stx4522645227_ _args44377_)
                                      (_g4443744447_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx4522645227_))))
                                 (let ((___kont4522845229_
                                        (lambda (_L44467_)
                                          (let ((_expr44488_
                                                 (gxc#compile-e _L44467_))
                                                (_off44489_
                                                 (fx+ _off44394_
                                                      _xfields44432_
                                                      '1))
                                                (_op44490_
                                                 (if _unchecked?44393_
                                                     '%#struct-unchecked-ref
                                                     (if (if _plist44431_
                                                             (assgetq 'final:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _plist44431_)
                     '#f)
                 '%#struct-direct-ref
                 '%#struct-ref))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (gxc#xform-wrap-source
                                             (cons _op44490_
                                                   (cons (cons '%#ref
                                                               (cons _struct-t44395_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons '%#quote (cons _off44489_ '()))
                       (cons _expr44488_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _stx44376_))))
                                       (___kont4523045231_
                                        (lambda ()
                                          (gxc#raise-compile-error
                                           '"Illegal struct accessor application"
                                           _stx44376_))))
                                   (if (gx#stx-pair? ___stx4522645227_)
                                       (let ((_e4444044459_
                                              (gx#stx-e ___stx4522645227_)))
                                         (let ((_tl4444244464_
                                                (##cdr _e4444044459_))
                                               (_hd4444144462_
                                                (##car _e4444044459_)))
                                           (if (gx#stx-null? _tl4444244464_)
                                               (___kont4522845229_
                                                _hd4444144462_)
                                               (___kont4523045231_))))
                                       (___kont4523045231_))))
                               (begin
                                 (gxc#verbose
                                  '"struct-getf: incomplete struct "
                                  _struct-type-id44434_)
                                 (gxc#xform-call% _stx44376_)))))
                        (_K4440344425_
                         (lambda () (gxc#xform-call% _stx44376_))))
                    (let ((_try-match4440044428_
                           (lambda ()
                             (if (##eq? _struct-type4439844412_ '#f)
                                 (_K4440344425_)
                                 (_else4440144420_)))))
                      (if (##structure-instance-of?
                           _struct-type4439844412_
                           'gxc#!struct-type::t)
                          (let* ((_e4440544498_
                                  (##vector-ref _struct-type4439844412_ '1))
                                 (_e4440644503_
                                  (##vector-ref _struct-type4439844412_ '2))
                                 (_e4440744506_
                                  (##vector-ref _struct-type4439844412_ '3))
                                 (_e4440844511_
                                  (##vector-ref _struct-type4439844412_ '4))
                                 (_e4440944516_
                                  (##vector-ref _struct-type4439844412_ '5))
                                 (_e4441044519_
                                  (##vector-ref _struct-type4439844412_ '6)))
                            (let ((_struct-type-id44501_ _e4440544498_)
                                  (_fields44509_ _e4440744506_)
                                  (_xfields44514_ _e4440844511_)
                                  (_plist44522_ _e4441044519_))
                              (_K4440444495_
                               _plist44522_
                               _xfields44514_
                               _fields44509_
                               _struct-type-id44501_)))
                          (_try-match4440044428_))))))))
        (if (##structure-instance-of? _self4437844386_ 'gxc#!struct-getf::t)
            (let* ((_e4438244527_ (##vector-ref _self4437844386_ '1))
                   (_struct-t44530_ _e4438244527_)
                   (_e4438344532_ (##vector-ref _self4437844386_ '2))
                   (_off44535_ _e4438344532_)
                   (_e4438444537_ (##vector-ref _self4437844386_ '3))
                   (_unchecked?44540_ _e4438444537_))
              (_K4438144524_ _unchecked?44540_ _off44535_ _struct-t44530_))
            (_E4438044390_)))))
  (bind-method!
   gxc#!struct-getf::t
   'optimize-call
   gxc#!struct-getf::optimize-call
   '#f)
  (define gxc#!struct-setf::optimize-call
    (lambda (_self44069_ _stx44070_ _args44071_)
      (let* ((_self4407244080_ _self44069_)
             (_E4407444084_
              (lambda () (error '"No clause matching" _self4407244080_)))
             (_K4407544235_
              (lambda (_unchecked?44087_ _off44088_ _struct-t44089_)
                (let* ((_struct-type44091_
                        (gxc#optimizer-resolve-type _struct-t44089_))
                       (_struct-type4409244106_ _struct-type44091_)
                       (_else4409544114_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx44070_
                           _struct-t44089_
                           _struct-type44091_))))
                  (let ((_K4409844206_
                         (lambda (_plist44125_
                                  _xfields44126_
                                  _fields44127_
                                  _struct-type-id44128_)
                           (if _xfields44126_
                               (let* ((___stx4525945260_ _args44071_)
                                      (_g4413144145_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx4525945260_))))
                                 (let ((___kont4526145262_
                                        (lambda (_L44173_ _L44174_)
                                          (let ((_expr44198_
                                                 (gxc#compile-e _L44174_))
                                                (_val44199_
                                                 (gxc#compile-e _L44173_))
                                                (_off44200_
                                                 (fx+ _off44088_
                                                      _xfields44126_
                                                      '1))
                                                (_op44201_
                                                 (if _unchecked?44087_
                                                     '%#struct-unchecked-set!
                                                     (if (if _plist44125_
                                                             (assgetq 'final:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _plist44125_)
                     '#f)
                 '%#struct-direct-set!
                 '%#struct-set!))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (gxc#xform-wrap-source
                                             (cons _op44201_
                                                   (cons (cons '%#ref
                                                               (cons _struct-t44089_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons '%#quote (cons _off44200_ '()))
                       (cons _expr44198_ (cons _val44199_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _stx44070_))))
                                       (___kont4526345264_
                                        (lambda ()
                                          (gxc#raise-compile-error
                                           '"Illegal struct mutator application"
                                           _stx44070_))))
                                   (if (gx#stx-pair? ___stx4525945260_)
                                       (let ((_e4413544157_
                                              (gx#stx-e ___stx4525945260_)))
                                         (let ((_tl4413744162_
                                                (##cdr _e4413544157_))
                                               (_hd4413644160_
                                                (##car _e4413544157_)))
                                           (if (gx#stx-pair? _tl4413744162_)
                                               (let ((_e4413844165_
                                                      (gx#stx-e
                                                       _tl4413744162_)))
                                                 (let ((_tl4414044170_
                                                        (##cdr _e4413844165_))
                                                       (_hd4413944168_
                                                        (##car _e4413844165_)))
                                                   (if (gx#stx-null?
                                                        _tl4414044170_)
                                                       (___kont4526145262_
                                                        _hd4413944168_
                                                        _hd4413644160_)
                                                       (___kont4526345264_))))
                                               (___kont4526345264_))))
                                       (___kont4526345264_))))
                               (begin
                                 (gxc#verbose
                                  '"struct-setf: incomplete struct "
                                  _struct-type-id44128_)
                                 (gxc#xform-call% _stx44070_)))))
                        (_K4409744119_
                         (lambda () (gxc#xform-call% _stx44070_))))
                    (let ((_try-match4409444122_
                           (lambda ()
                             (if (##eq? _struct-type4409244106_ '#f)
                                 (_K4409744119_)
                                 (_else4409544114_)))))
                      (if (##structure-instance-of?
                           _struct-type4409244106_
                           'gxc#!struct-type::t)
                          (let* ((_e4409944209_
                                  (##vector-ref _struct-type4409244106_ '1))
                                 (_e4410044214_
                                  (##vector-ref _struct-type4409244106_ '2))
                                 (_e4410144217_
                                  (##vector-ref _struct-type4409244106_ '3))
                                 (_e4410244222_
                                  (##vector-ref _struct-type4409244106_ '4))
                                 (_e4410344227_
                                  (##vector-ref _struct-type4409244106_ '5))
                                 (_e4410444230_
                                  (##vector-ref _struct-type4409244106_ '6)))
                            (let ((_struct-type-id44212_ _e4409944209_)
                                  (_fields44220_ _e4410144217_)
                                  (_xfields44225_ _e4410244222_)
                                  (_plist44233_ _e4410444230_))
                              (_K4409844206_
                               _plist44233_
                               _xfields44225_
                               _fields44220_
                               _struct-type-id44212_)))
                          (_try-match4409444122_))))))))
        (if (##structure-instance-of? _self4407244080_ 'gxc#!struct-setf::t)
            (let* ((_e4407644238_ (##vector-ref _self4407244080_ '1))
                   (_struct-t44241_ _e4407644238_)
                   (_e4407744243_ (##vector-ref _self4407244080_ '2))
                   (_off44246_ _e4407744243_)
                   (_e4407844248_ (##vector-ref _self4407244080_ '3))
                   (_unchecked?44251_ _e4407844248_))
              (_K4407544235_ _unchecked?44251_ _off44246_ _struct-t44241_))
            (_E4407444084_)))))
  (bind-method!
   gxc#!struct-setf::t
   'optimize-call
   gxc#!struct-setf::optimize-call
   '#f)
  (define gxc#!lambda::optimize-call
    (lambda (_self43903_ _stx43904_ _args43905_)
      (let* ((_self4390643915_ _self43903_)
             (_E4390843919_
              (lambda () (error '"No clause matching" _self4390643915_)))
             (_K4390943926_
              (lambda (_inline43922_ _dispatch43923_ _arity43924_)
                (begin
                  (if (gxc#!lambda-arity-match? _self43903_ _args43905_)
                      '#!void
                      (gxc#raise-compile-error
                       '"Illegal lambda application; arity mismatch"
                       _stx43904_
                       _arity43924_))
                  (if _inline43922_
                      (begin
                        (gxc#verbose '"inline lambda")
                        (gxc#compile-e
                         (gxc#xform-wrap-source
                          (_inline43922_ _stx43904_)
                          _stx43904_)))
                      (if _dispatch43923_
                          (begin
                            (gxc#verbose
                             '"dispatch lambda => "
                             _dispatch43923_)
                            (gxc#compile-e
                             (gxc#xform-wrap-source
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons _dispatch43923_ '()))
                                          _args43905_))
                              _stx43904_)))
                          (gxc#xform-call% _stx43904_)))))))
        (if (##structure-instance-of? _self4390643915_ 'gxc#!lambda::t)
            (let* ((_e4391043929_ (##vector-ref _self4390643915_ '1))
                   (_e4391143932_ (##vector-ref _self4390643915_ '2))
                   (_arity43935_ _e4391143932_)
                   (_e4391243937_ (##vector-ref _self4390643915_ '3))
                   (_dispatch43940_ _e4391243937_)
                   (_e4391343942_ (##vector-ref _self4390643915_ '4))
                   (_inline43945_ _e4391343942_))
              (_K4390943926_ _inline43945_ _dispatch43940_ _arity43935_))
            (_E4390843919_)))))
  (bind-method! gxc#!lambda::t 'optimize-call gxc#!lambda::optimize-call '#f)
  (define gxc#!case-lambda::optimize-call
    (lambda (_self43742_ _stx43743_ _args43744_)
      (let* ((_self4374543752_ _self43742_)
             (_E4374743756_
              (lambda () (error '"No clause matching" _self4374543752_)))
             (_K4374843770_
              (lambda (_clauses43759_)
                (let ((_$e43765_
                       (find (lambda (_g4376043762_)
                               (gxc#!lambda-arity-match?
                                _g4376043762_
                                _args43744_))
                             _clauses43759_)))
                  (if _$e43765_
                      ((lambda (_clause43768_)
                         (call-method
                          _clause43768_
                          'optimize-call
                          _stx43743_
                          _args43744_))
                       _$e43765_)
                      (gxc#raise-compile-error
                       '"Illegal case-lambda application; arity mismatch"
                       _stx43743_
                       (map gxc#!lambda-arity _clauses43759_)))))))
        (if (##structure-instance-of? _self4374543752_ 'gxc#!case-lambda::t)
            (let* ((_e4374943773_ (##vector-ref _self4374543752_ '1))
                   (_e4375043776_ (##vector-ref _self4374543752_ '2))
                   (_clauses43779_ _e4375043776_))
              (_K4374843770_ _clauses43779_))
            (_E4374743756_)))))
  (bind-method!
   gxc#!case-lambda::t
   'optimize-call
   gxc#!case-lambda::optimize-call
   '#f)
  (define gxc#!lambda-arity-match?
    (lambda (_self43556_ _args43557_)
      (let* ((_self4355843565_ _self43556_)
             (_E4356043569_
              (lambda () (error '"No clause matching" _self4355843565_)))
             (_K4356143609_
              (lambda (_arity43572_)
                (let* ((_arity4357343582_ _arity43572_)
                       (_E4357643586_
                        (lambda ()
                          (error '"No clause matching" _arity4357343582_))))
                  (let ((_K4358043606_
                         (lambda () (fx= (length _args43557_) _arity43572_)))
                        (_K4357743592_
                         (lambda (_arity43590_)
                           (fx>= (length _args43557_) _arity43590_))))
                    (let ((_try-match4357543602_
                           (lambda ()
                             (if (##pair? _arity4357343582_)
                                 (let ((_tl4357943597_
                                        (##cdr _arity4357343582_))
                                       (_hd4357843595_
                                        (##car _arity4357343582_)))
                                   (if (##null? _tl4357943597_)
                                       (let ((_arity43600_ _hd4357843595_))
                                         (_K4357743592_ _arity43600_))
                                       (_E4357643586_)))
                                 (_E4357643586_)))))
                      (if (fixnum? _arity4357343582_)
                          (_K4358043606_)
                          (_try-match4357543602_))))))))
        (if (##structure-instance-of? _self4355843565_ 'gxc#!lambda::t)
            (let* ((_e4356243612_ (##vector-ref _self4355843565_ '1))
                   (_e4356343615_ (##vector-ref _self4355843565_ '2))
                   (_arity43618_ _e4356343615_))
              (_K4356143609_ _arity43618_))
            (_E4356043569_)))))
  (define gxc#!kw-lambda::optimize-call
    (lambda (_self43441_ _stx43442_ _args43443_)
      (let* ((_self4344443452_ _self43441_)
             (_E4344643456_
              (lambda () (error '"No clause matching" _self4344443452_)))
             (_K4344743540_
              (lambda (_dispatch43459_ _table43460_)
                (let* ((_g4346143470_
                        (gxc#optimizer-lookup-type _dispatch43459_))
                       (_else4346343478_
                        (lambda ()
                          (begin
                            (gxc#verbose
                             '"unknown keyword dispatch lambda "
                             _dispatch43459_)
                            (gxc#xform-call% _stx43442_))))
                       (_K4346543524_
                        (lambda (_main43481_ _keys43482_)
                          (let ((_g45424_
                                 (gxc#!kw-lambda-split-args
                                  _stx43442_
                                  _args43443_)))
                            (begin
                              (let ((_g45425_
                                     (if (##values? _g45424_)
                                         (##vector-length _g45424_)
                                         1)))
                                (if (not (##fx= _g45425_ 2))
                                    (error "Context expects 2 values"
                                           _g45425_)))
                              (let ((_pargs43484_ (##vector-ref _g45424_ 0))
                                    (_kwargs43485_ (##vector-ref _g45424_ 1)))
                                (begin
                                  (gxc#verbose
                                   '"dispatch kw-lambda => "
                                   _main43481_)
                                  (if _table43460_
                                      (let ((_xargs43492_
                                             (map (lambda (_key43487_)
                                                    (let ((_$e43489_
                                                           (assgetq _key43487_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _kwargs43485_)))
              (if _$e43489_ (values _$e43489_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _keys43482_)))
                                        (begin
                                          (for-each
                                           (lambda (_kw43494_)
                                             (if (memq (car _kw43494_)
                                                       _keys43482_)
                                                 '#!void
                                                 (gxc#raise-compile-error
                                                  '"Illegal keyword lambda application; unexpected keyword"
                                                  _stx43442_
                                                  _keys43482_
                                                  _kw43494_)))
                                           _kwargs43485_)
                                          (gxc#compile-e
                                           (gxc#xform-wrap-source
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons _main43481_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote (cons '#f '()))
                      (foldr1 cons _pargs43484_ _xargs43492_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _stx43442_))))
                                      (let* ((_kwt43496_
                                              (make-symbol (gensym '__kwt)))
                                             (_kwvars43499_
                                              (map (lambda (_g45426_)
                                                     (make-symbol
                                                      (gensym '__kw)))
                                                   _kwargs43485_))
                                             (_kwbind43504_
                                              (map (lambda (_kw43501_
                                                            _kwvar43502_)
                                                     (cons (cons _kwvar43502_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   (cons (cdr _kw43501_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs43485_
                                                   _kwvars43499_))
                                             (_kwset43509_
                                              (map (lambda (_kw43506_
                                                            _kwvar43507_)
                                                     (cons '%#call
                                                           (cons '(%#ref hash-put!)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons _kwt43496_ '()))
                               (cons (cons '%#quote (cons (car _kw43506_) '()))
                                     (cons (cons '%#ref
                                                 (cons _kwvar43507_ '()))
                                           '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs43485_
                                                   _kwvars43499_))
                                             (_xkwargs43514_
                                              (map (lambda (_kw43511_
                                                            _kwvar43512_)
                                                     (cons (car _kw43511_)
                                                           (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _kwvar43512_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs43485_
                                                   _kwvars43499_))
                                             (_xargs43521_
                                              (map (lambda (_key43516_)
                                                     (let ((_$e43518_
                                                            (assgetq _key43516_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _xkwargs43514_)))
               (if _$e43518_ (values _$e43518_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _keys43482_)))
                                        (gxc#compile-e
                                         (gxc#xform-wrap-source
                                          (cons '%#let-values
                                                (cons _kwbind43504_
                                                      (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (cons (cons _kwt43496_ '())
                                            (cons (gxc#xform-wrap-source
                                                   (cons '%#call
                                                         (cons '(%#ref make-hash-table-eq)
                                                               (cons '(%#quote size:)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons '%#quote
                                         (cons (length _kwargs43485_) '()))
                                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx43442_)
                                                  '()))
                                      '())
                                (cons (cons '%#begin
                                            (foldr1 cons
                                                    (cons (gxc#xform-wrap-source
                                                           (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons _main43481_ '()))
                               (cons (cons '%#ref (cons _kwt43496_ '()))
                                     (foldr1 cons _pargs43484_ _xargs43521_))))
                   _stx43442_)
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _kwset43509_))
                                      '())))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _stx43442_)))))))))))
                  (if (##structure-instance-of?
                       _g4346143470_
                       'gxc#!kw-lambda-primary::t)
                      (let* ((_e4346643527_ (##vector-ref _g4346143470_ '1))
                             (_e4346743530_ (##vector-ref _g4346143470_ '2))
                             (_keys43533_ _e4346743530_)
                             (_e4346843535_ (##vector-ref _g4346143470_ '3))
                             (_main43538_ _e4346843535_))
                        (_K4346543524_ _main43538_ _keys43533_))
                      (_else4346343478_))))))
        (if (##structure-instance-of? _self4344443452_ 'gxc#!kw-lambda::t)
            (let* ((_e4344843543_ (##vector-ref _self4344443452_ '1))
                   (_e4344943546_ (##vector-ref _self4344443452_ '2))
                   (_table43549_ _e4344943546_)
                   (_e4345043551_ (##vector-ref _self4344443452_ '3))
                   (_dispatch43554_ _e4345043551_))
              (_K4344743540_ _dispatch43554_ _table43549_))
            (_E4344643456_)))))
  (bind-method!
   gxc#!kw-lambda::t
   'optimize-call
   gxc#!kw-lambda::optimize-call
   '#f)
  (define gxc#!kw-lambda-split-args
    (lambda (_stx43054_ _args43055_)
      (let _lp43057_ ((_rest43059_ _args43055_)
                      (_pargs43060_ '())
                      (_kwargs43061_ '()))
        (let* ((___stx4530745308_ _rest43059_)
               (_g4306743119_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx4530745308_))))
          (let ((___kont4530945310_
                 (lambda (_L43298_ _L43299_)
                   (_lp43057_
                    _L43298_
                    (cons _L43299_ _pargs43060_)
                    _kwargs43061_)))
                (___kont4531145312_
                 (lambda (_L43244_)
                   (values (foldl1 cons _L43244_ _pargs43060_)
                           (reverse _kwargs43061_))))
                (___kont4531345314_
                 (lambda (_L43191_ _L43192_ _L43193_)
                   (let ((_kw43210_ (gx#stx-e _L43193_)))
                     (if (assq _kw43210_ _kwargs43061_)
                         (gxc#raise-compile-error
                          '"Illegal keyword lambda application; duplicate keyword"
                          _stx43054_
                          _kw43210_)
                         (_lp43057_
                          _L43191_
                          _pargs43060_
                          (cons (cons _kw43210_ _L43192_) _kwargs43061_))))))
                (___kont4531545316_
                 (lambda (_L43139_ _L43140_)
                   (_lp43057_
                    _L43139_
                    (cons _L43140_ _pargs43060_)
                    _kwargs43061_)))
                (___kont4531745318_
                 (lambda ()
                   (values (reverse _pargs43060_) (reverse _kwargs43061_)))))
            (let* ((_g4306643126_
                    (lambda ()
                      (if (gx#stx-null? ___stx4530745308_)
                          (___kont4531745318_)
                          (_g4306743119_))))
                   (___match4541445415_
                    (lambda (_e4309843159_
                             _hd4309943162_
                             _tl4310043164_
                             _e4310143167_
                             _hd4310243170_
                             _tl4310343172_
                             _e4310443175_
                             _hd4310543178_
                             _tl4310643180_
                             _e4310743183_
                             _hd4310843186_
                             _tl4310943188_)
                      (let ((_L43191_ _tl4310943188_)
                            (_L43192_ _hd4310843186_)
                            (_L43193_ _hd4310543178_))
                        (if (gx#stx-keyword? _L43193_)
                            (___kont4531345314_ _L43191_ _L43192_ _L43193_)
                            (___kont4531545316_
                             _tl4310043164_
                             _hd4309943162_))))))
              (if (gx#stx-pair? ___stx4530745308_)
                  (let ((_e4307143263_ (gx#stx-e ___stx4530745308_)))
                    (let ((_tl4307343268_ (##cdr _e4307143263_))
                          (_hd4307243266_ (##car _e4307143263_)))
                      (if (gx#stx-pair? _hd4307243266_)
                          (let ((_e4307443271_ (gx#stx-e _hd4307243266_)))
                            (let ((_tl4307643276_ (##cdr _e4307443271_))
                                  (_hd4307543274_ (##car _e4307443271_)))
                              (if (gx#identifier? _hd4307543274_)
                                  (if (gx#stx-eq? '%#quote _hd4307543274_)
                                      (if (gx#stx-pair? _tl4307643276_)
                                          (let ((_e4307743279_
                                                 (gx#stx-e _tl4307643276_)))
                                            (let ((_tl4307943284_
                                                   (##cdr _e4307743279_))
                                                  (_hd4307843282_
                                                   (##car _e4307743279_)))
                                              (if (gx#stx-datum?
                                                   _hd4307843282_)
                                                  (let ((_e4308043287_
                                                         (gx#stx-e
                                                          _hd4307843282_)))
                                                    (if (equal? _e4308043287_
                                                                '#!key)
                                                        (if (gx#stx-null?
                                                             _tl4307943284_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl4307343268_)
                        (let ((_e4308143290_ (gx#stx-e _tl4307343268_)))
                          (let ((_tl4308343295_ (##cdr _e4308143290_))
                                (_hd4308243293_ (##car _e4308143290_)))
                            (___kont4530945310_
                             _tl4308343295_
                             _hd4308243293_)))
                        (___kont4531545316_ _tl4307343268_ _hd4307243266_))
                    (___kont4531545316_ _tl4307343268_ _hd4307243266_))
                (if (equal? _e4308043287_ '#!rest)
                    (if (gx#stx-null? _tl4307943284_)
                        (___kont4531145312_ _tl4307343268_)
                        (___kont4531545316_ _tl4307343268_ _hd4307243266_))
                    (if (gx#stx-null? _tl4307943284_)
                        (if (gx#stx-pair? _tl4307343268_)
                            (let ((_e4310743183_ (gx#stx-e _tl4307343268_)))
                              (let ((_tl4310943188_ (##cdr _e4310743183_))
                                    (_hd4310843186_ (##car _e4310743183_)))
                                (___match4541445415_
                                 _e4307143263_
                                 _hd4307243266_
                                 _tl4307343268_
                                 _e4307443271_
                                 _hd4307543274_
                                 _tl4307643276_
                                 _e4307743279_
                                 _hd4307843282_
                                 _tl4307943284_
                                 _e4310743183_
                                 _hd4310843186_
                                 _tl4310943188_)))
                            (___kont4531545316_ _tl4307343268_ _hd4307243266_))
                        (___kont4531545316_ _tl4307343268_ _hd4307243266_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _tl4307943284_)
                                                      (if (gx#stx-pair?
                                                           _tl4307343268_)
                                                          (let ((_e4310743183_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl4307343268_)))
                    (let ((_tl4310943188_ (##cdr _e4310743183_))
                          (_hd4310843186_ (##car _e4310743183_)))
                      (___match4541445415_
                       _e4307143263_
                       _hd4307243266_
                       _tl4307343268_
                       _e4307443271_
                       _hd4307543274_
                       _tl4307643276_
                       _e4307743279_
                       _hd4307843282_
                       _tl4307943284_
                       _e4310743183_
                       _hd4310843186_
                       _tl4310943188_)))
                  (___kont4531545316_ _tl4307343268_ _hd4307243266_))
              (___kont4531545316_ _tl4307343268_ _hd4307243266_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (___kont4531545316_
                                           _tl4307343268_
                                           _hd4307243266_))
                                      (___kont4531545316_
                                       _tl4307343268_
                                       _hd4307243266_))
                                  (___kont4531545316_
                                   _tl4307343268_
                                   _hd4307243266_))))
                          (___kont4531545316_ _tl4307343268_ _hd4307243266_))))
                  (_g4306643126_))))))))
  (define gxc#!kw-lambda-primary::optimize-call
    (lambda (_self43050_ _stx43051_ _args43052_) (gxc#xform-call% _stx43051_)))
  (bind-method!
   gxc#!kw-lambda-primary::t
   'optimize-call
   gxc#!kw-lambda-primary::optimize-call
   '#f))
