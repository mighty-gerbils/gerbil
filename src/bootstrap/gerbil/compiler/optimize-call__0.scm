(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#&optimize-call
    (make-promise
     (lambda ()
       (let ((_tbl33283_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl33283_ (force gxc#&basic-xform))
           (table-set! _tbl33283_ '%#call gxc#optimize-call%)
           _tbl33283_)))))
  (define gxc#apply-optimize-call
    (lambda (_stx33276_ . _args33278_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx33276_ _args33278_))
       gxc#current-compile-methods
       (force gxc#&optimize-call))))
  (define gxc#optimize-call%
    (lambda (_stx33182_)
      (let* ((_g3318533205_
              (lambda (_g3318633202_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3318633202_)))
             (_g3318433212_
              (lambda (_g3318633208_)
                ((lambda () (gxc#xform-call% _stx33182_)))))
             (_g3318333273_
              (lambda (_g3318633215_)
                (if (gx#stx-pair? _g3318633215_)
                    (let ((_e3318933217_ (gx#stx-e _g3318633215_)))
                      (let ((_hd3319033220_ (##car _e3318933217_))
                            (_tl3319133222_ (##cdr _e3318933217_)))
                        (if (gx#stx-pair? _tl3319133222_)
                            (let ((_e3319233225_ (gx#stx-e _tl3319133222_)))
                              (let ((_hd3319333228_ (##car _e3319233225_))
                                    (_tl3319433230_ (##cdr _e3319233225_)))
                                (if (gx#stx-pair? _hd3319333228_)
                                    (let ((_e3319533233_
                                           (gx#stx-e _hd3319333228_)))
                                      (let ((_hd3319633236_
                                             (##car _e3319533233_))
                                            (_tl3319733238_
                                             (##cdr _e3319533233_)))
                                        (if (gx#identifier? _hd3319633236_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd3319633236_)
                                                (if (gx#stx-pair?
                                                     _tl3319733238_)
                                                    (let ((_e3319833241_
                                                           (gx#stx-e
                                                            _tl3319733238_)))
                                                      (let ((_hd3319933244_
                                                             (##car _e3319833241_))
                                                            (_tl3320033246_
                                                             (##cdr _e3319833241_)))
                                                        (if (gx#stx-null?
                                                             _tl3320033246_)
                                                            ((lambda (_L33249_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L33250_)
                       (let* ((_rator-id33268_
                               (gxc#identifier-symbol _L33250_))
                              (_rator-type33270_
                               (gxc#optimizer-resolve-type _rator-id33268_)))
                         (if (##structure-instance-of?
                              _rator-type33270_
                              'gxc#!procedure::t)
                             (begin
                               (gxc#verbose
                                '"optimize-call "
                                _rator-id33268_
                                '" => "
                                _rator-type33270_
                                '" "
                                (##structure-ref
                                 _rator-type33270_
                                 '1
                                 gxc#!type::t
                                 '#f))
                               (call-method
                                _rator-type33270_
                                'optimize-call
                                _stx33182_
                                _L33249_))
                             (if (not _rator-type33270_)
                                 (gxc#xform-call% _stx33182_)
                                 (gxc#raise-compile-error
                                  '"Illegal application; not a procedure"
                                  _stx33182_
                                  _rator-type33270_)))))
                     _tl3319433230_
                     _hd3319933244_)
                    (_g3318433212_ _g3318633215_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3318433212_
                                                     _g3318633215_))
                                                (_g3318433212_ _g3318633215_))
                                            (_g3318433212_ _g3318633215_))))
                                    (_g3318433212_ _g3318633215_))))
                            (_g3318433212_ _g3318633215_))))
                    (_g3318433212_ _g3318633215_)))))
        (_g3318333273_ _stx33182_))))
  (define gxc#!struct-pred::optimize-call
    (lambda (_self33036_ _stx33037_ _args33038_)
      (let* ((_self3303933045_ _self33036_)
             (_E3304133049_
              (lambda () (error '"No clause matching" _self3303933045_)))
             (_K3304233174_
              (lambda (_struct-t33052_)
                (let* ((_struct-type33054_
                        (gxc#optimizer-resolve-type _struct-t33052_))
                       (_struct-type3305533069_ _struct-type33054_)
                       (_else3305833077_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx33037_
                           _struct-t33052_
                           _struct-type33054_))))
                  (let ((_K3306133149_
                         (lambda (_plist33088_ _struct-type-id33089_)
                           (let* ((_g3309233102_
                                   (lambda (_g3309333099_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g3309333099_)))
                                  (_g3309133109_
                                   (lambda (_g3309333105_)
                                     ((lambda ()
                                        (gxc#raise-compile-error
                                         '"Illegal struct predicate application"
                                         _stx33037_)))))
                                  (_g3309033146_
                                   (lambda (_g3309333112_)
                                     (if (gx#stx-pair? _g3309333112_)
                                         (let ((_e3309533114_
                                                (gx#stx-e _g3309333112_)))
                                           (let ((_hd3309633117_
                                                  (##car _e3309533114_))
                                                 (_tl3309733119_
                                                  (##cdr _e3309533114_)))
                                             (if (gx#stx-null? _tl3309733119_)
                                                 ((lambda (_L33122_)
                                                    (let ((_expr33143_
                                                           (gxc#compile-e
                                                            _L33122_))
                                                          (_op33144_
                                                           (if (if _plist33088_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (assgetq 'final: _plist33088_)
                           '#f)
                       '%#struct-direct-instance?
                       '%#struct-instance?)))
              (gxc#xform-wrap-source
               (cons _op33144_
                     (cons (cons '%#quote (cons _struct-type-id33089_ '()))
                           (cons _expr33143_ '())))
               _stx33037_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd3309633117_)
                                                 (_g3309133109_
                                                  _g3309333112_))))
                                         (_g3309133109_ _g3309333112_)))))
                             (_g3309033146_ _args33038_))))
                        (_K3306033082_
                         (lambda () (gxc#xform-call% _stx33037_))))
                    (let ((_try-match3305733085_
                           (lambda ()
                             (if (##eq? _struct-type3305533069_ '#f)
                                 (let () (_K3306033082_))
                                 (_else3305833077_)))))
                      (if (##structure-instance-of?
                           _struct-type3305533069_
                           'gxc#!struct-type::t)
                          (let* ((_e3306233152_
                                  (##vector-ref _struct-type3305533069_ '1))
                                 (_e3306333157_
                                  (##vector-ref _struct-type3305533069_ '2))
                                 (_e3306433160_
                                  (##vector-ref _struct-type3305533069_ '3))
                                 (_e3306533163_
                                  (##vector-ref _struct-type3305533069_ '4))
                                 (_e3306633166_
                                  (##vector-ref _struct-type3305533069_ '5))
                                 (_e3306733169_
                                  (##vector-ref _struct-type3305533069_ '6)))
                            (let ((_struct-type-id33155_ _e3306233152_)
                                  (_plist33172_ _e3306733169_))
                              (_K3306133149_
                               _plist33172_
                               _struct-type-id33155_)))
                          (_try-match3305733085_))))))))
        (if (##structure-instance-of? _self3303933045_ 'gxc#!struct-pred::t)
            (let* ((_e3304333177_ (##vector-ref _self3303933045_ '1))
                   (_struct-t33180_ _e3304333177_))
              (_K3304233174_ _struct-t33180_))
            (_E3304133049_)))))
  (bind-method!
   gxc#!struct-pred::t
   'optimize-call
   gxc#!struct-pred::optimize-call
   '#f)
  (define gxc#!struct-cons::optimize-call
    (lambda (_self32810_ _stx32811_ _args32812_)
      (let* ((_self3281332819_ _self32810_)
             (_E3281532823_
              (lambda () (error '"No clause matching" _self3281332819_)))
             (_K3281632906_
              (lambda (_struct-t32826_)
                (let* ((_struct-type32828_
                        (gxc#optimizer-resolve-type _struct-t32826_))
                       (_struct-type3282932842_ _struct-type32828_)
                       (_else3283232850_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct constructor application; not a struct type"
                           _stx32811_
                           _struct-t32826_
                           _struct-type32828_))))
                  (let ((_K3283532880_
                         (lambda (_ctor32861_
                                  _xfields32862_
                                  _fields32863_
                                  _type-id32864_)
                           (let* ((_args32866_ (map gxc#compile-e _args32812_))
                                  (_$e32868_
                                   (if _ctor32861_
                                       (if _xfields32862_
                                           (gxc#!struct-type-lookup-method
                                            _struct-type32828_
                                            _ctor32861_)
                                           '#f)
                                       '#f)))
                             (if _$e32868_
                                 ((lambda (_kons32871_)
                                    (let ((_$obj32873_
                                           (make-symbol (gensym '__obj))))
                                      (gxc#xform-wrap-source
                                       (cons '%#let-values
                                             (cons (cons (cons (cons _$obj32873_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons (cons '%#call
                                   (cons (cons '%#ref (cons 'make-object '()))
                                         (cons (cons '%#ref
                                                     (cons _struct-t32826_
                                                           '()))
                                               (cons (cons '%#quote
                                                           (cons (fx+ _fields32863_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _xfields32862_)
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
                                     (cons (cons '%#ref (cons _kons32871_ '()))
                                           (cons (cons '%#ref
                                                       (cons _$obj32873_ '()))
                                                 _args32866_)))
                               _stx32811_))
                             (cons (cons '%#ref (cons _$obj32873_ '())) '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _stx32811_)))
                                  _$e32868_)
                                 (if (let ((_$e32875_ _ctor32861_))
                                       (if _$e32875_
                                           _$e32875_
                                           (not _xfields32862_)))
                                     (gxc#xform-wrap-source
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons 'make-struct-instance
                                                              '()))
                                                  (cons (cons '%#ref
                                                              (cons _struct-t32826_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _args32866_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _stx32811_)
                                     (let ((_arity32878_
                                            (fx+ _fields32863_
                                                 _xfields32862_)))
                                       (if (fx= _arity32878_
                                                (length _args32866_))
                                           (gxc#xform-wrap-source
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#ref (cons _struct-t32826_ '())) _args32866_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _stx32811_)
                                           (gxc#raise-compile-error
                                            '"Illegal struct constructor application; arity mismatch"
                                            _stx32811_
                                            _struct-t32826_
                                            _arity32878_))))))))
                        (_K3283432855_
                         (lambda ()
                           (begin
                             (gxc#verbose
                              '"cannot inline struct constructor; unknown struct type "
                              _struct-t32826_)
                             (gxc#xform-call% _stx32811_)))))
                    (let ((_try-match3283132858_
                           (lambda ()
                             (if (##eq? _struct-type3282932842_ '#f)
                                 (let () (_K3283432855_))
                                 (_else3283232850_)))))
                      (if (##structure-instance-of?
                           _struct-type3282932842_
                           'gxc#!struct-type::t)
                          (let* ((_e3283632883_
                                  (##vector-ref _struct-type3282932842_ '1))
                                 (_e3283732888_
                                  (##vector-ref _struct-type3282932842_ '2))
                                 (_e3283832891_
                                  (##vector-ref _struct-type3282932842_ '3))
                                 (_e3283932896_
                                  (##vector-ref _struct-type3282932842_ '4))
                                 (_e3284032901_
                                  (##vector-ref _struct-type3282932842_ '5)))
                            (let ((_type-id32886_ _e3283632883_)
                                  (_fields32894_ _e3283832891_)
                                  (_xfields32899_ _e3283932896_)
                                  (_ctor32904_ _e3284032901_))
                              (_K3283532880_
                               _ctor32904_
                               _xfields32899_
                               _fields32894_
                               _type-id32886_)))
                          (_try-match3283132858_))))))))
        (if (##structure-instance-of? _self3281332819_ 'gxc#!struct-cons::t)
            (let* ((_e3281732909_ (##vector-ref _self3281332819_ '1))
                   (_struct-t32912_ _e3281732909_))
              (_K3281632906_ _struct-t32912_))
            (_E3281532823_)))))
  (bind-method!
   gxc#!struct-cons::t
   'optimize-call
   gxc#!struct-cons::optimize-call
   '#f)
  (define gxc#!struct-getf::optimize-call
    (lambda (_self32521_ _stx32522_ _args32523_)
      (let* ((_self3252432532_ _self32521_)
             (_E3252632536_
              (lambda () (error '"No clause matching" _self3252432532_)))
             (_K3252732670_
              (lambda (_unchecked?32539_ _off32540_ _struct-t32541_)
                (let* ((_struct-type32543_
                        (gxc#optimizer-resolve-type _struct-t32541_))
                       (_struct-type3254432558_ _struct-type32543_)
                       (_else3254732566_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx32522_
                           _struct-t32541_
                           _struct-type32543_))))
                  (let ((_K3255032641_
                         (lambda (_plist32577_
                                  _xfields32578_
                                  _fields32579_
                                  _struct-type-id32580_)
                           (if _xfields32578_
                               (let* ((_g3258332593_
                                       (lambda (_g3258432590_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g3258432590_)))
                                      (_g3258232600_
                                       (lambda (_g3258432596_)
                                         ((lambda ()
                                            (gxc#raise-compile-error
                                             '"Illegal struct accessor application"
                                             _stx32522_)))))
                                      (_g3258132638_
                                       (lambda (_g3258432603_)
                                         (if (gx#stx-pair? _g3258432603_)
                                             (let ((_e3258632605_
                                                    (gx#stx-e _g3258432603_)))
                                               (let ((_hd3258732608_
                                                      (##car _e3258632605_))
                                                     (_tl3258832610_
                                                      (##cdr _e3258632605_)))
                                                 (if (gx#stx-null?
                                                      _tl3258832610_)
                                                     ((lambda (_L32613_)
                                                        (let ((_expr32634_
                                                               (gxc#compile-e
                                                                _L32613_))
                                                              (_off32635_
                                                               (fx+ _off32540_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xfields32578_
                            '1))
                      (_op32636_
                       (if _unchecked?32539_
                           '%#struct-unchecked-ref
                           (if (if _plist32577_
                                   (assgetq 'final: _plist32577_)
                                   '#f)
                               '%#struct-direct-ref
                               '%#struct-ref))))
                  (gxc#xform-wrap-source
                   (cons _op32636_
                         (cons (cons '%#ref (cons _struct-t32541_ '()))
                               (cons (cons '%#quote (cons _off32635_ '()))
                                     (cons _expr32634_ '()))))
                   _stx32522_)))
              _hd3258732608_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g3258232600_
                                                      _g3258432603_))))
                                             (_g3258232600_ _g3258432603_)))))
                                 (_g3258132638_ _args32523_))
                               (begin
                                 (gxc#verbose
                                  '"struct-getf: incomplete struct "
                                  _struct-type-id32580_)
                                 (gxc#xform-call% _stx32522_)))))
                        (_K3254932571_
                         (lambda () (gxc#xform-call% _stx32522_))))
                    (let ((_try-match3254632574_
                           (lambda ()
                             (if (##eq? _struct-type3254432558_ '#f)
                                 (let () (_K3254932571_))
                                 (_else3254732566_)))))
                      (if (##structure-instance-of?
                           _struct-type3254432558_
                           'gxc#!struct-type::t)
                          (let* ((_e3255132644_
                                  (##vector-ref _struct-type3254432558_ '1))
                                 (_e3255232649_
                                  (##vector-ref _struct-type3254432558_ '2))
                                 (_e3255332652_
                                  (##vector-ref _struct-type3254432558_ '3))
                                 (_e3255432657_
                                  (##vector-ref _struct-type3254432558_ '4))
                                 (_e3255532662_
                                  (##vector-ref _struct-type3254432558_ '5))
                                 (_e3255632665_
                                  (##vector-ref _struct-type3254432558_ '6)))
                            (let ((_struct-type-id32647_ _e3255132644_)
                                  (_fields32655_ _e3255332652_)
                                  (_xfields32660_ _e3255432657_)
                                  (_plist32668_ _e3255632665_))
                              (_K3255032641_
                               _plist32668_
                               _xfields32660_
                               _fields32655_
                               _struct-type-id32647_)))
                          (_try-match3254632574_))))))))
        (if (##structure-instance-of? _self3252432532_ 'gxc#!struct-getf::t)
            (let* ((_e3252832673_ (##vector-ref _self3252432532_ '1))
                   (_struct-t32676_ _e3252832673_)
                   (_e3252932678_ (##vector-ref _self3252432532_ '2))
                   (_off32681_ _e3252932678_)
                   (_e3253032683_ (##vector-ref _self3252432532_ '3))
                   (_unchecked?32686_ _e3253032683_))
              (_K3252732670_ _unchecked?32686_ _off32681_ _struct-t32676_))
            (_E3252632536_)))))
  (bind-method!
   gxc#!struct-getf::t
   'optimize-call
   gxc#!struct-getf::optimize-call
   '#f)
  (define gxc#!struct-setf::optimize-call
    (lambda (_self32215_ _stx32216_ _args32217_)
      (let* ((_self3221832226_ _self32215_)
             (_E3222032230_
              (lambda () (error '"No clause matching" _self3221832226_)))
             (_K3222132381_
              (lambda (_unchecked?32233_ _off32234_ _struct-t32235_)
                (let* ((_struct-type32237_
                        (gxc#optimizer-resolve-type _struct-t32235_))
                       (_struct-type3223832252_ _struct-type32237_)
                       (_else3224132260_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx32216_
                           _struct-t32235_
                           _struct-type32237_))))
                  (let ((_K3224432352_
                         (lambda (_plist32271_
                                  _xfields32272_
                                  _fields32273_
                                  _struct-type-id32274_)
                           (if _xfields32272_
                               (let* ((_g3227732291_
                                       (lambda (_g3227832288_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g3227832288_)))
                                      (_g3227632298_
                                       (lambda (_g3227832294_)
                                         ((lambda ()
                                            (gxc#raise-compile-error
                                             '"Illegal struct mutator application"
                                             _stx32216_)))))
                                      (_g3227532349_
                                       (lambda (_g3227832301_)
                                         (if (gx#stx-pair? _g3227832301_)
                                             (let ((_e3228132303_
                                                    (gx#stx-e _g3227832301_)))
                                               (let ((_hd3228232306_
                                                      (##car _e3228132303_))
                                                     (_tl3228332308_
                                                      (##cdr _e3228132303_)))
                                                 (if (gx#stx-pair?
                                                      _tl3228332308_)
                                                     (let ((_e3228432311_
                                                            (gx#stx-e
                                                             _tl3228332308_)))
                                                       (let ((_hd3228532314_
                                                              (##car _e3228432311_))
                                                             (_tl3228632316_
                                                              (##cdr _e3228432311_)))
                                                         (if (gx#stx-null?
                                                              _tl3228632316_)
                                                             ((lambda (_L32319_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L32320_)
                        (let ((_expr32344_ (gxc#compile-e _L32320_))
                              (_val32345_ (gxc#compile-e _L32319_))
                              (_off32346_ (fx+ _off32234_ _xfields32272_ '1))
                              (_op32347_
                               (if _unchecked?32233_
                                   '%#struct-unchecked-set!
                                   (if (if _plist32271_
                                           (assgetq 'final: _plist32271_)
                                           '#f)
                                       '%#struct-direct-set!
                                       '%#struct-set!))))
                          (gxc#xform-wrap-source
                           (cons _op32347_
                                 (cons (cons '%#ref (cons _struct-t32235_ '()))
                                       (cons (cons '%#quote
                                                   (cons _off32346_ '()))
                                             (cons _expr32344_
                                                   (cons _val32345_ '())))))
                           _stx32216_)))
                      _hd3228532314_
                      _hd3228232306_)
                     (_g3227632298_ _g3227832301_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g3227632298_
                                                      _g3227832301_))))
                                             (_g3227632298_ _g3227832301_)))))
                                 (_g3227532349_ _args32217_))
                               (begin
                                 (gxc#verbose
                                  '"struct-setf: incomplete struct "
                                  _struct-type-id32274_)
                                 (gxc#xform-call% _stx32216_)))))
                        (_K3224332265_
                         (lambda () (gxc#xform-call% _stx32216_))))
                    (let ((_try-match3224032268_
                           (lambda ()
                             (if (##eq? _struct-type3223832252_ '#f)
                                 (let () (_K3224332265_))
                                 (_else3224132260_)))))
                      (if (##structure-instance-of?
                           _struct-type3223832252_
                           'gxc#!struct-type::t)
                          (let* ((_e3224532355_
                                  (##vector-ref _struct-type3223832252_ '1))
                                 (_e3224632360_
                                  (##vector-ref _struct-type3223832252_ '2))
                                 (_e3224732363_
                                  (##vector-ref _struct-type3223832252_ '3))
                                 (_e3224832368_
                                  (##vector-ref _struct-type3223832252_ '4))
                                 (_e3224932373_
                                  (##vector-ref _struct-type3223832252_ '5))
                                 (_e3225032376_
                                  (##vector-ref _struct-type3223832252_ '6)))
                            (let ((_struct-type-id32358_ _e3224532355_)
                                  (_fields32366_ _e3224732363_)
                                  (_xfields32371_ _e3224832368_)
                                  (_plist32379_ _e3225032376_))
                              (_K3224432352_
                               _plist32379_
                               _xfields32371_
                               _fields32366_
                               _struct-type-id32358_)))
                          (_try-match3224032268_))))))))
        (if (##structure-instance-of? _self3221832226_ 'gxc#!struct-setf::t)
            (let* ((_e3222232384_ (##vector-ref _self3221832226_ '1))
                   (_struct-t32387_ _e3222232384_)
                   (_e3222332389_ (##vector-ref _self3221832226_ '2))
                   (_off32392_ _e3222332389_)
                   (_e3222432394_ (##vector-ref _self3221832226_ '3))
                   (_unchecked?32397_ _e3222432394_))
              (_K3222132381_ _unchecked?32397_ _off32392_ _struct-t32387_))
            (_E3222032230_)))))
  (bind-method!
   gxc#!struct-setf::t
   'optimize-call
   gxc#!struct-setf::optimize-call
   '#f)
  (define gxc#!lambda::optimize-call
    (lambda (_self32049_ _stx32050_ _args32051_)
      (let* ((_self3205232061_ _self32049_)
             (_E3205432065_
              (lambda () (error '"No clause matching" _self3205232061_)))
             (_K3205532072_
              (lambda (_inline32068_ _dispatch32069_ _arity32070_)
                (begin
                  (if (gxc#!lambda-arity-match? _self32049_ _args32051_)
                      '#!void
                      (gxc#raise-compile-error
                       '"Illegal lambda application; arity mismatch"
                       _stx32050_
                       _arity32070_))
                  (if _inline32068_
                      (begin
                        (gxc#verbose '"inline lambda")
                        (gxc#compile-e
                         (gxc#xform-wrap-source
                          (_inline32068_ _stx32050_)
                          _stx32050_)))
                      (if _dispatch32069_
                          (begin
                            (gxc#verbose
                             '"dispatch lambda => "
                             _dispatch32069_)
                            (gxc#compile-e
                             (gxc#xform-wrap-source
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons _dispatch32069_ '()))
                                          _args32051_))
                              _stx32050_)))
                          (gxc#xform-call% _stx32050_)))))))
        (if (##structure-instance-of? _self3205232061_ 'gxc#!lambda::t)
            (let* ((_e3205632075_ (##vector-ref _self3205232061_ '1))
                   (_e3205732078_ (##vector-ref _self3205232061_ '2))
                   (_arity32081_ _e3205732078_)
                   (_e3205832083_ (##vector-ref _self3205232061_ '3))
                   (_dispatch32086_ _e3205832083_)
                   (_e3205932088_ (##vector-ref _self3205232061_ '4))
                   (_inline32091_ _e3205932088_))
              (_K3205532072_ _inline32091_ _dispatch32086_ _arity32081_))
            (_E3205432065_)))))
  (bind-method! gxc#!lambda::t 'optimize-call gxc#!lambda::optimize-call '#f)
  (define gxc#!case-lambda::optimize-call
    (lambda (_self31888_ _stx31889_ _args31890_)
      (let* ((_self3189131898_ _self31888_)
             (_E3189331902_
              (lambda () (error '"No clause matching" _self3189131898_)))
             (_K3189431916_
              (lambda (_clauses31905_)
                (let ((_$e31911_
                       (find (lambda (_g3190631908_)
                               (gxc#!lambda-arity-match?
                                _g3190631908_
                                _args31890_))
                             _clauses31905_)))
                  (if _$e31911_
                      ((lambda (_clause31914_)
                         (call-method
                          _clause31914_
                          'optimize-call
                          _stx31889_
                          _args31890_))
                       _$e31911_)
                      (gxc#raise-compile-error
                       '"Illegal case-lambda application; arity mismatch"
                       _stx31889_
                       (map gxc#!lambda-arity _clauses31905_)))))))
        (if (##structure-instance-of? _self3189131898_ 'gxc#!case-lambda::t)
            (let* ((_e3189531919_ (##vector-ref _self3189131898_ '1))
                   (_e3189631922_ (##vector-ref _self3189131898_ '2))
                   (_clauses31925_ _e3189631922_))
              (_K3189431916_ _clauses31925_))
            (_E3189331902_)))))
  (bind-method!
   gxc#!case-lambda::t
   'optimize-call
   gxc#!case-lambda::optimize-call
   '#f)
  (define gxc#!lambda-arity-match?
    (lambda (_self31702_ _args31703_)
      (let* ((_self3170431711_ _self31702_)
             (_E3170631715_
              (lambda () (error '"No clause matching" _self3170431711_)))
             (_K3170731755_
              (lambda (_arity31718_)
                (let* ((_arity3171931728_ _arity31718_)
                       (_E3172231732_
                        (lambda ()
                          (error '"No clause matching" _arity3171931728_))))
                  (let ((_K3172631752_
                         (lambda () (fx= (length _args31703_) _arity31718_)))
                        (_K3172331738_
                         (lambda (_arity31736_)
                           (fx>= (length _args31703_) _arity31736_))))
                    (let ((_try-match3172131748_
                           (lambda ()
                             (if (##pair? _arity3171931728_)
                                 (let ((_tl3172531743_
                                        (##cdr _arity3171931728_))
                                       (_hd3172431741_
                                        (##car _arity3171931728_)))
                                   (if (##null? _tl3172531743_)
                                       (let ((_arity31746_ _hd3172431741_))
                                         (_K3172331738_ _arity31746_))
                                       (_E3172231732_)))
                                 (_E3172231732_)))))
                      (if (fixnum? _arity3171931728_)
                          (let () (_K3172631752_))
                          (_try-match3172131748_))))))))
        (if (##structure-instance-of? _self3170431711_ 'gxc#!lambda::t)
            (let* ((_e3170831758_ (##vector-ref _self3170431711_ '1))
                   (_e3170931761_ (##vector-ref _self3170431711_ '2))
                   (_arity31764_ _e3170931761_))
              (_K3170731755_ _arity31764_))
            (_E3170631715_)))))
  (define gxc#!kw-lambda::optimize-call
    (lambda (_self31587_ _stx31588_ _args31589_)
      (let* ((_self3159031598_ _self31587_)
             (_E3159231602_
              (lambda () (error '"No clause matching" _self3159031598_)))
             (_K3159331686_
              (lambda (_dispatch31605_ _table31606_)
                (let* ((_g3160731616_
                        (gxc#optimizer-lookup-type _dispatch31605_))
                       (_else3160931624_
                        (lambda ()
                          (begin
                            (gxc#verbose
                             '"unknown keyword dispatch lambda "
                             _dispatch31605_)
                            (gxc#xform-call% _stx31588_))))
                       (_K3161131670_
                        (lambda (_main31627_ _keys31628_)
                          (let ((_g33300_
                                 (gxc#!kw-lambda-split-args
                                  _stx31588_
                                  _args31589_)))
                            (begin
                              (let ((_g33301_
                                     (if (##values? _g33300_)
                                         (##vector-length _g33300_)
                                         1)))
                                (if (not (##fx= _g33301_ 2))
                                    (error "Context expects 2 values"
                                           _g33301_)))
                              (let ((_pargs31630_ (##vector-ref _g33300_ 0))
                                    (_kwargs31631_ (##vector-ref _g33300_ 1)))
                                (begin
                                  (gxc#verbose
                                   '"dispatch kw-lambda => "
                                   _main31627_)
                                  (if _table31606_
                                      (let ((_xargs31638_
                                             (map (lambda (_key31633_)
                                                    (let ((_$e31635_
                                                           (assgetq _key31633_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _kwargs31631_)))
              (if _$e31635_ (values _$e31635_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _keys31628_)))
                                        (begin
                                          (for-each
                                           (lambda (_kw31640_)
                                             (if (memq (car _kw31640_)
                                                       _keys31628_)
                                                 '#!void
                                                 (gxc#raise-compile-error
                                                  '"Illegal keyword lambda application; unexpected keyword"
                                                  _stx31588_
                                                  _keys31628_
                                                  _kw31640_)))
                                           _kwargs31631_)
                                          (gxc#compile-e
                                           (gxc#xform-wrap-source
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons _main31627_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote (cons '#f '()))
                      (foldr1 cons _pargs31630_ _xargs31638_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _stx31588_))))
                                      (let* ((_kwt31642_
                                              (make-symbol (gensym '__kwt)))
                                             (_kwvars31645_
                                              (map (lambda (_g33302_)
                                                     (make-symbol
                                                      (gensym '__kw)))
                                                   _kwargs31631_))
                                             (_kwbind31650_
                                              (map (lambda (_kw31647_
                                                            _kwvar31648_)
                                                     (cons (cons _kwvar31648_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   (cons (cdr _kw31647_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs31631_
                                                   _kwvars31645_))
                                             (_kwset31655_
                                              (map (lambda (_kw31652_
                                                            _kwvar31653_)
                                                     (cons '%#call
                                                           (cons '(%#ref hash-put!)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons _kwt31642_ '()))
                               (cons (cons '%#quote (cons (car _kw31652_) '()))
                                     (cons (cons '%#ref
                                                 (cons _kwvar31653_ '()))
                                           '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs31631_
                                                   _kwvars31645_))
                                             (_xkwargs31660_
                                              (map (lambda (_kw31657_
                                                            _kwvar31658_)
                                                     (cons (car _kw31657_)
                                                           (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _kwvar31658_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs31631_
                                                   _kwvars31645_))
                                             (_xargs31667_
                                              (map (lambda (_key31662_)
                                                     (let ((_$e31664_
                                                            (assgetq _key31662_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _xkwargs31660_)))
               (if _$e31664_ (values _$e31664_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _keys31628_)))
                                        (gxc#compile-e
                                         (gxc#xform-wrap-source
                                          (cons '%#let-values
                                                (cons _kwbind31650_
                                                      (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (cons (cons _kwt31642_ '())
                                            (cons (gxc#xform-wrap-source
                                                   (cons '%#call
                                                         (cons '(%#ref make-hash-table-eq)
                                                               (cons '(%#quote size:)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons '%#quote
                                         (cons (length _kwargs31631_) '()))
                                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx31588_)
                                                  '()))
                                      '())
                                (cons (cons '%#begin
                                            (foldr1 cons
                                                    (cons (gxc#xform-wrap-source
                                                           (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons _main31627_ '()))
                               (cons (cons '%#ref (cons _kwt31642_ '()))
                                     (foldr1 cons _pargs31630_ _xargs31667_))))
                   _stx31588_)
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _kwset31655_))
                                      '())))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _stx31588_)))))))))))
                  (if (##structure-instance-of?
                       _g3160731616_
                       'gxc#!kw-lambda-primary::t)
                      (let* ((_e3161231673_ (##vector-ref _g3160731616_ '1))
                             (_e3161331676_ (##vector-ref _g3160731616_ '2))
                             (_keys31679_ _e3161331676_)
                             (_e3161431681_ (##vector-ref _g3160731616_ '3))
                             (_main31684_ _e3161431681_))
                        (_K3161131670_ _main31684_ _keys31679_))
                      (_else3160931624_))))))
        (if (##structure-instance-of? _self3159031598_ 'gxc#!kw-lambda::t)
            (let* ((_e3159431689_ (##vector-ref _self3159031598_ '1))
                   (_e3159531692_ (##vector-ref _self3159031598_ '2))
                   (_table31695_ _e3159531692_)
                   (_e3159631697_ (##vector-ref _self3159031598_ '3))
                   (_dispatch31700_ _e3159631697_))
              (_K3159331686_ _dispatch31700_ _table31695_))
            (_E3159231602_)))))
  (bind-method!
   gxc#!kw-lambda::t
   'optimize-call
   gxc#!kw-lambda::optimize-call
   '#f)
  (define gxc#!kw-lambda-split-args
    (lambda (_stx31210_ _args31211_)
      (let _lp31213_ ((_rest31215_ _args31211_)
                      (_pargs31216_ '())
                      (_kwargs31217_ '()))
        (let* ((_g3122331273_
                (lambda (_g3122431270_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g3122431270_)))
               (_g3122231280_
                (lambda (_g3122431276_)
                  (if (gx#stx-null? _g3122431276_)
                      ((lambda ()
                         (values (reverse _pargs31216_)
                                 (reverse _kwargs31217_))))
                      (_g3122331273_ _g3122431276_))))
               (_g3122131308_
                (lambda (_g3122431283_)
                  (if (gx#stx-pair? _g3122431283_)
                      (let ((_e3126631285_ (gx#stx-e _g3122431283_)))
                        (let ((_hd3126731288_ (##car _e3126631285_))
                              (_tl3126831290_ (##cdr _e3126631285_)))
                          ((lambda (_L31293_ _L31294_)
                             (_lp31213_
                              _L31293_
                              (cons _L31294_ _pargs31216_)
                              _kwargs31217_))
                           _tl3126831290_
                           _hd3126731288_)))
                      (_g3122231280_ _g3122431283_))))
               (_g3122031366_
                (lambda (_g3122431311_)
                  (if (gx#stx-pair? _g3122431311_)
                      (let ((_e3125231313_ (gx#stx-e _g3122431311_)))
                        (let ((_hd3125331316_ (##car _e3125231313_))
                              (_tl3125431318_ (##cdr _e3125231313_)))
                          (if (gx#stx-pair? _hd3125331316_)
                              (let ((_e3125531321_ (gx#stx-e _hd3125331316_)))
                                (let ((_hd3125631324_ (##car _e3125531321_))
                                      (_tl3125731326_ (##cdr _e3125531321_)))
                                  (if (gx#identifier? _hd3125631324_)
                                      (if (gx#stx-eq? '%#quote _hd3125631324_)
                                          (if (gx#stx-pair? _tl3125731326_)
                                              (let ((_e3125831329_
                                                     (gx#stx-e
                                                      _tl3125731326_)))
                                                (let ((_hd3125931332_
                                                       (##car _e3125831329_))
                                                      (_tl3126031334_
                                                       (##cdr _e3125831329_)))
                                                  (if (gx#stx-null?
                                                       _tl3126031334_)
                                                      (if (gx#stx-pair?
                                                           _tl3125431318_)
                                                          (let ((_e3126131337_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl3125431318_)))
                    (let ((_hd3126231340_ (##car _e3126131337_))
                          (_tl3126331342_ (##cdr _e3126131337_)))
                      ((lambda (_L31345_ _L31346_ _L31347_)
                         (if (gx#stx-keyword? _L31347_)
                             (let ((_kw31364_ (gx#stx-e _L31347_)))
                               (if (assq _kw31364_ _kwargs31217_)
                                   (gxc#raise-compile-error
                                    '"Illegal keyword lambda application; duplicate keyword"
                                    _stx31210_
                                    _kw31364_)
                                   (_lp31213_
                                    _L31345_
                                    _pargs31216_
                                    (cons (cons _kw31364_ _L31346_)
                                          _kwargs31217_))))
                             (_g3122131308_ _g3122431311_)))
                       _tl3126331342_
                       _hd3126231340_
                       _hd3125931332_)))
                  (_g3122131308_ _g3122431311_))
              (_g3122131308_ _g3122431311_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g3122131308_ _g3122431311_))
                                          (_g3122131308_ _g3122431311_))
                                      (_g3122131308_ _g3122431311_))))
                              (_g3122131308_ _g3122431311_))))
                      (_g3122131308_ _g3122431311_))))
               (_g3121931408_
                (lambda (_g3122431369_)
                  (if (gx#stx-pair? _g3122431369_)
                      (let ((_e3124031371_ (gx#stx-e _g3122431369_)))
                        (let ((_hd3124131374_ (##car _e3124031371_))
                              (_tl3124231376_ (##cdr _e3124031371_)))
                          (if (gx#stx-pair? _hd3124131374_)
                              (let ((_e3124331379_ (gx#stx-e _hd3124131374_)))
                                (let ((_hd3124431382_ (##car _e3124331379_))
                                      (_tl3124531384_ (##cdr _e3124331379_)))
                                  (if (gx#identifier? _hd3124431382_)
                                      (if (gx#stx-eq? '%#quote _hd3124431382_)
                                          (if (gx#stx-pair? _tl3124531384_)
                                              (let ((_e3124631387_
                                                     (gx#stx-e
                                                      _tl3124531384_)))
                                                (let ((_hd3124731390_
                                                       (##car _e3124631387_))
                                                      (_tl3124831392_
                                                       (##cdr _e3124631387_)))
                                                  (if (gx#stx-datum?
                                                       _hd3124731390_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd3124731390_)
                          '#!rest)
                  (if (gx#stx-null? _tl3124831392_)
                      ((lambda (_L31395_)
                         (values (foldl1 cons _L31395_ _pargs31216_)
                                 (reverse _kwargs31217_)))
                       _tl3124231376_)
                      (_g3122031366_ _g3122431369_))
                  (_g3122031366_ _g3122431369_))
              (_g3122031366_ _g3122431369_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g3122031366_ _g3122431369_))
                                          (_g3122031366_ _g3122431369_))
                                      (_g3122031366_ _g3122431369_))))
                              (_g3122031366_ _g3122431369_))))
                      (_g3122031366_ _g3122431369_))))
               (_g3121831462_
                (lambda (_g3122431411_)
                  (if (gx#stx-pair? _g3122431411_)
                      (let ((_e3122731413_ (gx#stx-e _g3122431411_)))
                        (let ((_hd3122831416_ (##car _e3122731413_))
                              (_tl3122931418_ (##cdr _e3122731413_)))
                          (if (gx#stx-pair? _hd3122831416_)
                              (let ((_e3123031421_ (gx#stx-e _hd3122831416_)))
                                (let ((_hd3123131424_ (##car _e3123031421_))
                                      (_tl3123231426_ (##cdr _e3123031421_)))
                                  (if (gx#identifier? _hd3123131424_)
                                      (if (gx#stx-eq? '%#quote _hd3123131424_)
                                          (if (gx#stx-pair? _tl3123231426_)
                                              (let ((_e3123331429_
                                                     (gx#stx-e
                                                      _tl3123231426_)))
                                                (let ((_hd3123431432_
                                                       (##car _e3123331429_))
                                                      (_tl3123531434_
                                                       (##cdr _e3123331429_)))
                                                  (if (gx#stx-datum?
                                                       _hd3123431432_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd3123431432_)
                          '#!key)
                  (if (gx#stx-null? _tl3123531434_)
                      (if (gx#stx-pair? _tl3122931418_)
                          (let ((_e3123631437_ (gx#stx-e _tl3122931418_)))
                            (let ((_hd3123731440_ (##car _e3123631437_))
                                  (_tl3123831442_ (##cdr _e3123631437_)))
                              ((lambda (_L31445_ _L31446_)
                                 (_lp31213_
                                  _L31445_
                                  (cons _L31446_ _pargs31216_)
                                  _kwargs31217_))
                               _tl3123831442_
                               _hd3123731440_)))
                          (_g3121931408_ _g3122431411_))
                      (_g3121931408_ _g3122431411_))
                  (_g3121931408_ _g3122431411_))
              (_g3121931408_ _g3122431411_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g3121931408_ _g3122431411_))
                                          (_g3121931408_ _g3122431411_))
                                      (_g3121931408_ _g3122431411_))))
                              (_g3121931408_ _g3122431411_))))
                      (_g3121931408_ _g3122431411_)))))
          (_g3121831462_ _rest31215_)))))
  (define gxc#!kw-lambda-primary::optimize-call
    (lambda (_self31206_ _stx31207_ _args31208_) (gxc#xform-call% _stx31207_)))
  (bind-method!
   gxc#!kw-lambda-primary::t
   'optimize-call
   gxc#!kw-lambda-primary::optimize-call
   '#f))
