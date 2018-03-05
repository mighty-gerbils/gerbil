(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<more-sugar>[1]#setq-macro::t|
    (make-class-type
     'gerbil.core#setq-macro::t
     (cons |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::t| '())
     '()
     'setq-macro
     '()
     '#f))
  (define |gerbil/core$<more-sugar>[1]#setq-macro?|
    (make-class-predicate |gerbil/core$<more-sugar>[1]#setq-macro::t|))
  (define |gerbil/core$<more-sugar>[1]#make-setq-macro|
    (lambda _$args30617_
      (apply make-class-instance
             |gerbil/core$<more-sugar>[1]#setq-macro::t|
             _$args30617_)))
  (define |gerbil/core$<more-sugar>[1]#setf-macro::t|
    (make-class-type
     'gerbil.core#setf-macro::t
     (cons |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::t| '())
     '()
     'setf-macro
     '()
     '#f))
  (define |gerbil/core$<more-sugar>[1]#setf-macro?|
    (make-class-predicate |gerbil/core$<more-sugar>[1]#setf-macro::t|))
  (define |gerbil/core$<more-sugar>[1]#make-setf-macro|
    (lambda _$args30613_
      (apply make-class-instance
             |gerbil/core$<more-sugar>[1]#setf-macro::t|
             _$args30613_)))
  (define |gerbil/core$<more-sugar>[1]#syntax-local-setf-macro?|
    (lambda (_stx30610_)
      (if (gx#identifier? _stx30610_)
          (|gerbil/core$<more-sugar>[1]#setf-macro?|
           (gx#syntax-local-value _stx30610_ false))
          '#f)))
  (define |gerbil/core$<more-sugar>[1]#syntax-local-setq-macro?|
    (lambda (_stx30607_)
      (if (gx#identifier? _stx30607_)
          (|gerbil/core$<more-sugar>[1]#setq-macro?|
           (gx#syntax-local-value _stx30607_ false))
          '#f)))
  (define |gerbil/core$<more-sugar>[:0:]#set!|
    (lambda (_stx30621_)
      (let* ((_g3062730686_
              (lambda (_g3062830682_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3062830682_)))
             (_g3062630741_
              (lambda (_g3062830690_)
                (if (gx#stx-pair? _g3062830690_)
                    (let ((_e3067230693_ (gx#syntax-e _g3062830690_)))
                      (let ((_hd3067330697_ (##car _e3067230693_))
                            (_tl3067430700_ (##cdr _e3067230693_)))
                        (if (gx#stx-pair? _tl3067430700_)
                            (let ((_e3067530703_ (gx#syntax-e _tl3067430700_)))
                              (let ((_hd3067630707_ (##car _e3067530703_))
                                    (_tl3067730710_ (##cdr _e3067530703_)))
                                (if (gx#stx-pair? _tl3067730710_)
                                    (let ((_e3067830713_
                                           (gx#syntax-e _tl3067730710_)))
                                      (let ((_hd3067930717_
                                             (##car _e3067830713_))
                                            (_tl3068030720_
                                             (##cdr _e3067830713_)))
                                        (if (gx#stx-null? _tl3068030720_)
                                            ((lambda (_L30723_ _L30725_)
                                               (if (gx#identifier? _L30725_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '%#set!)
                                                         (cons _L30725_
                                                               (cons _L30723_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3062730686_
                                                    _g3062830690_)))
                                             _hd3067930717_
                                             _hd3067630707_)
                                            (_g3062730686_ _g3062830690_))))
                                    (_g3062730686_ _g3062830690_))))
                            (_g3062730686_ _g3062830690_))))
                    (_g3062730686_ _g3062830690_))))
             (_g3062530781_
              (lambda (_g3062830745_)
                (if (gx#stx-pair? _g3062830745_)
                    (let ((_e3066430748_ (gx#syntax-e _g3062830745_)))
                      (let ((_hd3066530752_ (##car _e3066430748_))
                            (_tl3066630755_ (##cdr _e3066430748_)))
                        (if (gx#stx-pair? _tl3066630755_)
                            (let ((_e3066730758_ (gx#syntax-e _tl3066630755_)))
                              (let ((_hd3066830762_ (##car _e3066730758_))
                                    (_tl3066930765_ (##cdr _e3066730758_)))
                                ((lambda (_L30768_)
                                   (if (|gerbil/core$<more-sugar>[1]#syntax-local-setq-macro?|
                                        _L30768_)
                                       (gx#core-apply-expander
                                        (gx#syntax-local-e _L30768_)
                                        _stx30621_)
                                       (_g3062630741_ _g3062830745_)))
                                 _hd3066830762_)))
                            (_g3062630741_ _g3062830745_))))
                    (_g3062630741_ _g3062830745_))))
             (_g3062430922_
              (lambda (_g3062830785_)
                (if (gx#stx-pair? _g3062830785_)
                    (let ((_e3064230788_ (gx#syntax-e _g3062830785_)))
                      (let ((_hd3064330792_ (##car _e3064230788_))
                            (_tl3064430795_ (##cdr _e3064230788_)))
                        (if (gx#stx-pair? _tl3064430795_)
                            (let ((_e3064530798_ (gx#syntax-e _tl3064430795_)))
                              (let ((_hd3064630802_ (##car _e3064530798_))
                                    (_tl3064730805_ (##cdr _e3064530798_)))
                                (if (gx#stx-pair? _hd3064630802_)
                                    (let ((_e3064830808_
                                           (gx#syntax-e _hd3064630802_)))
                                      (let ((_hd3064930812_
                                             (##car _e3064830808_))
                                            (_tl3065030815_
                                             (##cdr _e3064830808_)))
                                        (if (gx#stx-pair/null? _tl3065030815_)
                                            (if (fx>= (gx#stx-length
                                                       _tl3065030815_)
                                                      '0)
                                                (let ((_g34707_
                                                       (gx#syntax-split-splice
                                                        _tl3065030815_
                                                        '0)))
                                                  (begin
                                                    (let ((_g34708_
                                                           (values-count
                                                            _g34707_)))
                                                      (if (not (fx= _g34708_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g34708_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target3065130818_
                                                           (values-ref
                                                            _g34707_
                                                            0))
                                                          (_tl3065330821_
                                                           (values-ref
                                                            _g34707_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl3065330821_)
                                                          (letrec ((_loop3065430824_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd3065230828_ _arg3065830831_)
                              (if (gx#stx-pair? _hd3065230828_)
                                  (let ((_e3065530834_
                                         (gx#syntax-e _hd3065230828_)))
                                    (let ((_lp-hd3065630838_
                                           (##car _e3065530834_))
                                          (_lp-tl3065730841_
                                           (##cdr _e3065530834_)))
                                      (_loop3065430824_
                                       _lp-tl3065730841_
                                       (cons _lp-hd3065630838_
                                             _arg3065830831_))))
                                  (let ((_arg3065930844_
                                         (reverse _arg3065830831_)))
                                    (if (gx#stx-pair? _tl3064730805_)
                                        (let ((_e3066030848_
                                               (gx#syntax-e _tl3064730805_)))
                                          (let ((_hd3066130852_
                                                 (##car _e3066030848_))
                                                (_tl3066230855_
                                                 (##cdr _e3066030848_)))
                                            (if (gx#stx-null? _tl3066230855_)
                                                ((lambda (_L30858_
                                                          _L30860_
                                                          _L30861_)
                                                   (if (gx#identifier?
                                                        _L30861_)
                                                       (let* ((_g3088330891_
                                                               (lambda (_g3088430887_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g3088430887_)))
                      (_g3088230918_
                       (lambda (_g3088430895_)
                         ((lambda (_L30898_)
                            (let ()
                              (cons _L30898_
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g3090930912_
                                                      _g3091030915_)
                                               (cons _g3090930912_
                                                     _g3091030915_))
                                             (cons _L30858_ '())
                                             _L30860_)))))
                          _g3088430895_))))
                 (_g3088230918_
                  (gx#stx-identifier _L30861_ _L30861_ '"-set!")))
               (_g3062530781_ _g3062830785_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd3066130852_
                                                 _arg3065930844_
                                                 _hd3064930812_)
                                                (_g3062530781_
                                                 _g3062830785_))))
                                        (_g3062530781_ _g3062830785_)))))))
                    (_loop3065430824_ _target3065130818_ '()))
                  (_g3062530781_ _g3062830785_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3062530781_ _g3062830785_))
                                            (_g3062530781_ _g3062830785_))))
                                    (_g3062530781_ _g3062830785_))))
                            (_g3062530781_ _g3062830785_))))
                    (_g3062530781_ _g3062830785_))))
             (_g3062330974_
              (lambda (_g3062830926_)
                (if (gx#stx-pair? _g3062830926_)
                    (let ((_e3063030929_ (gx#syntax-e _g3062830926_)))
                      (let ((_hd3063130933_ (##car _e3063030929_))
                            (_tl3063230936_ (##cdr _e3063030929_)))
                        (if (gx#stx-pair? _tl3063230936_)
                            (let ((_e3063330939_ (gx#syntax-e _tl3063230936_)))
                              (let ((_hd3063430943_ (##car _e3063330939_))
                                    (_tl3063530946_ (##cdr _e3063330939_)))
                                (if (gx#stx-pair? _hd3063430943_)
                                    (let ((_e3063630949_
                                           (gx#syntax-e _hd3063430943_)))
                                      (let ((_hd3063730953_
                                             (##car _e3063630949_))
                                            (_tl3063830956_
                                             (##cdr _e3063630949_)))
                                        ((lambda (_L30959_)
                                           (if (|gerbil/core$<more-sugar>[1]#syntax-local-setf-macro?|
                                                (gx#datum->syntax '#f 'setfid))
                                               (gx#core-apply-expander
                                                (gx#syntax-local-e _L30959_)
                                                _stx30621_)
                                               (_g3062430922_ _g3062830926_)))
                                         _hd3063730953_)))
                                    (_g3062430922_ _g3062830926_))))
                            (_g3062430922_ _g3062830926_))))
                    (_g3062430922_ _g3062830926_)))))
        (_g3062330974_ _stx30621_))))
  (define |gerbil/core$<more-sugar>[:0:]#values-set!|
    (lambda (_stx30979_)
      (let* ((_g3098231006_
              (lambda (_g3098331002_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3098331002_)))
             (_g3098131184_
              (lambda (_g3098331010_)
                (if (gx#stx-pair? _g3098331010_)
                    (let ((_e3098631013_ (gx#syntax-e _g3098331010_)))
                      (let ((_hd3098731017_ (##car _e3098631013_))
                            (_tl3098831020_ (##cdr _e3098631013_)))
                        (if (gx#stx-pair/null? _tl3098831020_)
                            (if (fx>= (gx#stx-length _tl3098831020_) '1)
                                (let ((_g34709_
                                       (gx#syntax-split-splice
                                        _tl3098831020_
                                        '1)))
                                  (begin
                                    (let ((_g34710_ (values-count _g34709_)))
                                      (if (not (fx= _g34710_ 2))
                                          (error "Context expects 2 values"
                                                 _g34710_)))
                                    (let ((_target3098931023_
                                           (values-ref _g34709_ 0))
                                          (_tl3099131026_
                                           (values-ref _g34709_ 1)))
                                      (if (gx#stx-pair? _tl3099131026_)
                                          (let ((_e3099831029_
                                                 (gx#syntax-e _tl3099131026_)))
                                            (let ((_hd3099931033_
                                                   (##car _e3099831029_))
                                                  (_tl3100031036_
                                                   (##cdr _e3099831029_)))
                                              (if (gx#stx-null? _tl3100031036_)
                                                  (letrec ((_loop3099231039_
                                                            (lambda (_hd3099031043_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tgt3099631046_)
                      (if (gx#stx-pair? _hd3099031043_)
                          (let ((_e3099331049_ (gx#syntax-e _hd3099031043_)))
                            (let ((_lp-hd3099431053_ (##car _e3099331049_))
                                  (_lp-tl3099531056_ (##cdr _e3099331049_)))
                              (_loop3099231039_
                               _lp-tl3099531056_
                               (cons _lp-hd3099431053_ _tgt3099631046_))))
                          (let ((_tgt3099731059_ (reverse _tgt3099631046_)))
                            ((lambda (_L31063_ _L31065_)
                               (let* ((_g3108331100_
                                       (lambda (_g3108431096_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g3108431096_)))
                                      (_g3108231172_
                                       (lambda (_g3108431104_)
                                         (if (gx#stx-pair/null? _g3108431104_)
                                             (if (fx>= (gx#stx-length
                                                        _g3108431104_)
                                                       '0)
                                                 (let ((_g34711_
                                                        (gx#syntax-split-splice
                                                         _g3108431104_
                                                         '0)))
                                                   (begin
                                                     (let ((_g34712_
                                                            (values-count
                                                             _g34711_)))
                                                       (if (not (fx= _g34712_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g34712_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target3108631107_
                                                            (values-ref
                                                             _g34711_
                                                             0))
                                                           (_tl3108831110_
                                                            (values-ref
                                                             _g34711_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl3108831110_)
                                                           (letrec ((_loop3108931113_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd3108731117_ _$e3109331120_)
                               (if (gx#stx-pair? _hd3108731117_)
                                   (let ((_e3109031123_
                                          (gx#syntax-e _hd3108731117_)))
                                     (let ((_lp-hd3109131127_
                                            (##car _e3109031123_))
                                           (_lp-tl3109231130_
                                            (##cdr _e3109031123_)))
                                       (_loop3108931113_
                                        _lp-tl3109231130_
                                        (cons _lp-hd3109131127_
                                              _$e3109331120_))))
                                   (let ((_$e3109431133_
                                          (reverse _$e3109331120_)))
                                     ((lambda (_L31137_)
                                        (let ()
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'let-values)
                                                (cons (cons (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!void
                            (foldr (lambda (_g3115231158_ _g3115331161_)
                                     (cons _g3115231158_ _g3115331161_))
                                   '()
                                   _L31137_))
                          (cons _L31063_ '()))
                    '())
              (begin
                (gx#syntax-check-splice-targets _L31137_ _L31065_)
                (foldr (lambda (_g3115431164_ _g3115531167_ _g3115631169_)
                         (cons (cons (gx#datum->syntax '#f 'set!)
                                     (cons _g3115531167_
                                           (cons _g3115431164_ '())))
                               _g3115631169_))
                       '()
                       _L31137_
                       _L31065_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _$e3109431133_))))))
                     (_loop3108931113_ _target3108631107_ '()))
                   (_g3108331100_ _g3108431104_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g3108331100_ _g3108431104_))
                                             (_g3108331100_ _g3108431104_)))))
                                 (_g3108231172_
                                  (gx#gentemps
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g3117531178_
                                                     _g3117631181_)
                                              (cons _g3117531178_
                                                    _g3117631181_))
                                            '()
                                            _L31065_))))))
                             _hd3099931033_
                             _tgt3099731059_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3099231039_
                                                     _target3098931023_
                                                     '()))
                                                  (_g3098231006_
                                                   _g3098331010_))))
                                          (_g3098231006_ _g3098331010_)))))
                                (_g3098231006_ _g3098331010_))
                            (_g3098231006_ _g3098331010_))))
                    (_g3098231006_ _g3098331010_)))))
        (_g3098131184_ _stx30979_))))
  (define |gerbil/core$<more-sugar>[:0:]#parameterize|
    (lambda (_stx31190_)
      (let* ((_g3119431252_
              (lambda (_g3119531248_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3119531248_)))
             (_g3119331529_
              (lambda (_g3119531256_)
                (if (gx#stx-pair? _g3119531256_)
                    (let ((_e3121531259_ (gx#syntax-e _g3119531256_)))
                      (let ((_hd3121631263_ (##car _e3121531259_))
                            (_tl3121731266_ (##cdr _e3121531259_)))
                        (if (gx#stx-pair? _tl3121731266_)
                            (let ((_e3121831269_ (gx#syntax-e _tl3121731266_)))
                              (let ((_hd3121931273_ (##car _e3121831269_))
                                    (_tl3122031276_ (##cdr _e3121831269_)))
                                (if (gx#stx-pair/null? _hd3121931273_)
                                    (if (fx>= (gx#stx-length _hd3121931273_)
                                              '0)
                                        (let ((_g34713_
                                               (gx#syntax-split-splice
                                                _hd3121931273_
                                                '0)))
                                          (begin
                                            (let ((_g34714_
                                                   (values-count _g34713_)))
                                              (if (not (fx= _g34714_ 2))
                                                  (error "Context expects 2 values"
                                                         _g34714_)))
                                            (let ((_target3122131279_
                                                   (values-ref _g34713_ 0))
                                                  (_tl3122331282_
                                                   (values-ref _g34713_ 1)))
                                              (if (gx#stx-null? _tl3122331282_)
                                                  (letrec ((_loop3122431285_
                                                            (lambda (_hd3122231289_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr3122831292_
                             _param3122931294_)
                      (if (gx#stx-pair? _hd3122231289_)
                          (let ((_e3122531297_ (gx#syntax-e _hd3122231289_)))
                            (let ((_lp-hd3122631301_ (##car _e3122531297_))
                                  (_lp-tl3122731304_ (##cdr _e3122531297_)))
                              (if (gx#stx-pair? _lp-hd3122631301_)
                                  (let ((_e3123231307_
                                         (gx#syntax-e _lp-hd3122631301_)))
                                    (let ((_hd3123331311_
                                           (##car _e3123231307_))
                                          (_tl3123431314_
                                           (##cdr _e3123231307_)))
                                      (if (gx#stx-pair? _tl3123431314_)
                                          (let ((_e3123531317_
                                                 (gx#syntax-e _tl3123431314_)))
                                            (let ((_hd3123631321_
                                                   (##car _e3123531317_))
                                                  (_tl3123731324_
                                                   (##cdr _e3123531317_)))
                                              (if (gx#stx-null? _tl3123731324_)
                                                  (_loop3122431285_
                                                   _lp-tl3122731304_
                                                   (cons _hd3123631321_
                                                         _expr3122831292_)
                                                   (cons _hd3123331311_
                                                         _param3122931294_))
                                                  (_g3119431252_
                                                   _g3119531256_))))
                                          (_g3119431252_ _g3119531256_))))
                                  (_g3119431252_ _g3119531256_))))
                          (let ((_expr3123031327_ (reverse _expr3122831292_))
                                (_param3123131330_
                                 (reverse _param3122931294_)))
                            (if (gx#stx-pair/null? _tl3122031276_)
                                (if (fx>= (gx#stx-length _tl3122031276_) '0)
                                    (let ((_g34715_
                                           (gx#syntax-split-splice
                                            _tl3122031276_
                                            '0)))
                                      (begin
                                        (let ((_g34716_
                                               (values-count _g34715_)))
                                          (if (not (fx= _g34716_ 2))
                                              (error "Context expects 2 values"
                                                     _g34716_)))
                                        (let ((_target3123831333_
                                               (values-ref _g34715_ 0))
                                              (_tl3124031336_
                                               (values-ref _g34715_ 1)))
                                          (if (gx#stx-null? _tl3124031336_)
                                              (letrec ((_loop3124131339_
                                                        (lambda (_hd3123931343_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body3124531346_)
                  (if (gx#stx-pair? _hd3123931343_)
                      (let ((_e3124231349_ (gx#syntax-e _hd3123931343_)))
                        (let ((_lp-hd3124331353_ (##car _e3124231349_))
                              (_lp-tl3124431356_ (##cdr _e3124231349_)))
                          (_loop3124131339_
                           _lp-tl3124431356_
                           (cons _lp-hd3124331353_ _body3124531346_))))
                      (let ((_body3124631359_ (reverse _body3124531346_)))
                        ((lambda (_L31363_ _L31365_ _L31366_)
                           (let* ((_g3138931397_
                                   (lambda (_g3139031393_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g3139031393_)))
                                  (_g3138831517_
                                   (lambda (_g3139031401_)
                                     ((lambda (_L31404_)
                                        (let ()
                                          (let* ((_g3141631433_
                                                  (lambda (_g3141731429_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g3141731429_)))
                                                 (_g3141531497_
                                                  (lambda (_g3141731437_)
                                                    (if (gx#stx-pair/null?
                                                         _g3141731437_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g3141731437_)
                          '0)
                    (let ((_g34717_ (gx#syntax-split-splice _g3141731437_ '0)))
                      (begin
                        (let ((_g34718_ (values-count _g34717_)))
                          (if (not (fx= _g34718_ 2))
                              (error "Context expects 2 values" _g34718_)))
                        (let ((_target3141931440_ (values-ref _g34717_ 0))
                              (_tl3142131443_ (values-ref _g34717_ 1)))
                          (if (gx#stx-null? _tl3142131443_)
                              (letrec ((_loop3142231446_
                                        (lambda (_hd3142031450_
                                                 _arg3142631453_)
                                          (if (gx#stx-pair? _hd3142031450_)
                                              (let ((_e3142331456_
                                                     (gx#syntax-e
                                                      _hd3142031450_)))
                                                (let ((_lp-hd3142431460_
                                                       (##car _e3142331456_))
                                                      (_lp-tl3142531463_
                                                       (##cdr _e3142331456_)))
                                                  (_loop3142231446_
                                                   _lp-tl3142531463_
                                                   (cons _lp-hd3142431460_
                                                         _arg3142631453_))))
                                              (let ((_arg3142731466_
                                                     (reverse _arg3142631453_)))
                                                ((lambda (_L31470_)
                                                   (let ()
                                                     (let ()
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'call-with-parameters)
                                                             (cons _L31404_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (begin
                             '#!void
                             (foldr (lambda (_g3148831491_ _g3148931494_)
                                      (cons _g3148831491_ _g3148931494_))
                                    '()
                                    _L31470_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _arg3142731466_))))))
                                (_loop3142231446_ _target3141931440_ '()))
                              (_g3141631433_ _g3141731437_)))))
                    (_g3141631433_ _g3141731437_))
                (_g3141631433_ _g3141731437_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g3141531497_
                                             (foldr cons*
                                                    '()
                                                    (gx#syntax->list
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g3150031503_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g3150131506_)
                        (cons _g3150031503_ _g3150131506_))
                      '()
                      _L31366_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gx#syntax->list
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g3150831511_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g3150931514_)
                        (cons _g3150831511_ _g3150931514_))
                      '()
                      _L31365_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g3139031401_))))
                             (_g3138831517_
                              (gx#stx-wrap-source
                               (cons (gx#datum->syntax '#f 'lambda)
                                     (cons '()
                                           (begin
                                             '#!void
                                             (foldr (lambda (_g3152031523_
                                                             _g3152131526_)
                                                      (cons _g3152031523_
                                                            _g3152131526_))
                                                    '()
                                                    _L31363_))))
                               (gx#stx-source _stx31190_)))))
                         _body3124631359_
                         _expr3123031327_
                         _param3123131330_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop3124131339_
                                                 _target3123831333_
                                                 '()))
                                              (_g3119431252_ _g3119531256_)))))
                                    (_g3119431252_ _g3119531256_))
                                (_g3119431252_ _g3119531256_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3122431285_
                                                     _target3122131279_
                                                     '()
                                                     '()))
                                                  (_g3119431252_
                                                   _g3119531256_)))))
                                        (_g3119431252_ _g3119531256_))
                                    (_g3119431252_ _g3119531256_))))
                            (_g3119431252_ _g3119531256_))))
                    (_g3119431252_ _g3119531256_))))
             (_g3119231611_
              (lambda (_g3119531533_)
                (if (gx#stx-pair? _g3119531533_)
                    (let ((_e3119731536_ (gx#syntax-e _g3119531533_)))
                      (let ((_hd3119831540_ (##car _e3119731536_))
                            (_tl3119931543_ (##cdr _e3119731536_)))
                        (if (gx#stx-pair? _tl3119931543_)
                            (let ((_e3120031546_ (gx#syntax-e _tl3119931543_)))
                              (let ((_hd3120131550_ (##car _e3120031546_))
                                    (_tl3120231553_ (##cdr _e3120031546_)))
                                (if (gx#stx-null? _hd3120131550_)
                                    (if (gx#stx-pair/null? _tl3120231553_)
                                        (if (fx>= (gx#stx-length
                                                   _tl3120231553_)
                                                  '0)
                                            (let ((_g34719_
                                                   (gx#syntax-split-splice
                                                    _tl3120231553_
                                                    '0)))
                                              (begin
                                                (let ((_g34720_
                                                       (values-count
                                                        _g34719_)))
                                                  (if (not (fx= _g34720_ 2))
                                                      (error "Context expects 2 values"
                                                             _g34720_)))
                                                (let ((_target3120331556_
                                                       (values-ref _g34719_ 0))
                                                      (_tl3120531559_
                                                       (values-ref
                                                        _g34719_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl3120531559_)
                                                      (letrec ((_loop3120631562_
                                                                (lambda (_hd3120431566_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _body3121031569_)
                          (if (gx#stx-pair? _hd3120431566_)
                              (let ((_e3120731572_
                                     (gx#syntax-e _hd3120431566_)))
                                (let ((_lp-hd3120831576_ (##car _e3120731572_))
                                      (_lp-tl3120931579_
                                       (##cdr _e3120731572_)))
                                  (_loop3120631562_
                                   _lp-tl3120931579_
                                   (cons _lp-hd3120831576_ _body3121031569_))))
                              (let ((_body3121131582_
                                     (reverse _body3121031569_)))
                                ((lambda (_L31586_)
                                   (cons (gx#datum->syntax '#f 'let)
                                         (cons '()
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g3160231605_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g3160331608_)
                  (cons _g3160231605_ _g3160331608_))
                '()
                _L31586_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _body3121131582_))))))
                (_loop3120631562_ _target3120331556_ '()))
              (_g3119331529_ _g3119531533_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g3119331529_ _g3119531533_))
                                        (_g3119331529_ _g3119531533_))
                                    (_g3119331529_ _g3119531533_))))
                            (_g3119331529_ _g3119531533_))))
                    (_g3119331529_ _g3119531533_)))))
        (_g3119231611_ _stx31190_))))
  (define |gerbil/core$<more-sugar>[:0:]#let/cc|
    (lambda (_$stx31619_)
      (let* ((_g3162331647_
              (lambda (_g3162431643_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3162431643_)))
             (_g3162231732_
              (lambda (_g3162431651_)
                (if (gx#stx-pair? _g3162431651_)
                    (let ((_e3162731654_ (gx#syntax-e _g3162431651_)))
                      (let ((_hd3162831658_ (##car _e3162731654_))
                            (_tl3162931661_ (##cdr _e3162731654_)))
                        (if (gx#stx-pair? _tl3162931661_)
                            (let ((_e3163031664_ (gx#syntax-e _tl3162931661_)))
                              (let ((_hd3163131668_ (##car _e3163031664_))
                                    (_tl3163231671_ (##cdr _e3163031664_)))
                                (if (gx#stx-pair/null? _tl3163231671_)
                                    (if (fx>= (gx#stx-length _tl3163231671_)
                                              '0)
                                        (let ((_g34721_
                                               (gx#syntax-split-splice
                                                _tl3163231671_
                                                '0)))
                                          (begin
                                            (let ((_g34722_
                                                   (values-count _g34721_)))
                                              (if (not (fx= _g34722_ 2))
                                                  (error "Context expects 2 values"
                                                         _g34722_)))
                                            (let ((_target3163331674_
                                                   (values-ref _g34721_ 0))
                                                  (_tl3163531677_
                                                   (values-ref _g34721_ 1)))
                                              (if (gx#stx-null? _tl3163531677_)
                                                  (letrec ((_loop3163631680_
                                                            (lambda (_hd3163431684_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _body3164031687_)
                      (if (gx#stx-pair? _hd3163431684_)
                          (let ((_e3163731690_ (gx#syntax-e _hd3163431684_)))
                            (let ((_lp-hd3163831694_ (##car _e3163731690_))
                                  (_lp-tl3163931697_ (##cdr _e3163731690_)))
                              (_loop3163631680_
                               _lp-tl3163931697_
                               (cons _lp-hd3163831694_ _body3164031687_))))
                          (let ((_body3164131700_ (reverse _body3164031687_)))
                            ((lambda (_L31704_ _L31706_)
                               (if (gx#identifier? _L31706_)
                                   (cons (gx#datum->syntax '#f 'call/cc)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _L31706_ '())
                                                           (begin
                                                             '#!void
                                                             (foldr (lambda (_g3172331726_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g3172431729_)
                              (cons _g3172331726_ _g3172431729_))
                            '()
                            _L31704_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (_g3162331647_ _g3162431651_)))
                             _body3164131700_
                             _hd3163131668_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3163631680_
                                                     _target3163331674_
                                                     '()))
                                                  (_g3162331647_
                                                   _g3162431651_)))))
                                        (_g3162331647_ _g3162431651_))
                                    (_g3162331647_ _g3162431651_))))
                            (_g3162331647_ _g3162431651_))))
                    (_g3162331647_ _g3162431651_)))))
        (_g3162231732_ _$stx31619_))))
  (define |gerbil/core$<more-sugar>[:0:]#let/esc|
    (lambda (_$stx31737_)
      (let* ((_g3174131765_
              (lambda (_g3174231761_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3174231761_)))
             (_g3174031850_
              (lambda (_g3174231769_)
                (if (gx#stx-pair? _g3174231769_)
                    (let ((_e3174531772_ (gx#syntax-e _g3174231769_)))
                      (let ((_hd3174631776_ (##car _e3174531772_))
                            (_tl3174731779_ (##cdr _e3174531772_)))
                        (if (gx#stx-pair? _tl3174731779_)
                            (let ((_e3174831782_ (gx#syntax-e _tl3174731779_)))
                              (let ((_hd3174931786_ (##car _e3174831782_))
                                    (_tl3175031789_ (##cdr _e3174831782_)))
                                (if (gx#stx-pair/null? _tl3175031789_)
                                    (if (fx>= (gx#stx-length _tl3175031789_)
                                              '0)
                                        (let ((_g34723_
                                               (gx#syntax-split-splice
                                                _tl3175031789_
                                                '0)))
                                          (begin
                                            (let ((_g34724_
                                                   (values-count _g34723_)))
                                              (if (not (fx= _g34724_ 2))
                                                  (error "Context expects 2 values"
                                                         _g34724_)))
                                            (let ((_target3175131792_
                                                   (values-ref _g34723_ 0))
                                                  (_tl3175331795_
                                                   (values-ref _g34723_ 1)))
                                              (if (gx#stx-null? _tl3175331795_)
                                                  (letrec ((_loop3175431798_
                                                            (lambda (_hd3175231802_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _body3175831805_)
                      (if (gx#stx-pair? _hd3175231802_)
                          (let ((_e3175531808_ (gx#syntax-e _hd3175231802_)))
                            (let ((_lp-hd3175631812_ (##car _e3175531808_))
                                  (_lp-tl3175731815_ (##cdr _e3175531808_)))
                              (_loop3175431798_
                               _lp-tl3175731815_
                               (cons _lp-hd3175631812_ _body3175831805_))))
                          (let ((_body3175931818_ (reverse _body3175831805_)))
                            ((lambda (_L31822_ _L31824_)
                               (if (gx#identifier? _L31824_)
                                   (cons (gx#datum->syntax '#f 'call/esc)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _L31824_ '())
                                                           (begin
                                                             '#!void
                                                             (foldr (lambda (_g3184131844_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g3184231847_)
                              (cons _g3184131844_ _g3184231847_))
                            '()
                            _L31822_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (_g3174131765_ _g3174231769_)))
                             _body3175931818_
                             _hd3174931786_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3175431798_
                                                     _target3175131792_
                                                     '()))
                                                  (_g3174131765_
                                                   _g3174231769_)))))
                                        (_g3174131765_ _g3174231769_))
                                    (_g3174131765_ _g3174231769_))))
                            (_g3174131765_ _g3174231769_))))
                    (_g3174131765_ _g3174231769_)))))
        (_g3174031850_ _$stx31737_))))
  (define |gerbil/core$<more-sugar>[:0:]#unwind-protect|
    (lambda (_$stx31855_)
      (let* ((_g3185931887_
              (lambda (_g3186031883_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3186031883_)))
             (_g3185831986_
              (lambda (_g3186031891_)
                (if (gx#stx-pair? _g3186031891_)
                    (let ((_e3186431894_ (gx#syntax-e _g3186031891_)))
                      (let ((_hd3186531898_ (##car _e3186431894_))
                            (_tl3186631901_ (##cdr _e3186431894_)))
                        (if (gx#stx-pair? _tl3186631901_)
                            (let ((_e3186731904_ (gx#syntax-e _tl3186631901_)))
                              (let ((_hd3186831908_ (##car _e3186731904_))
                                    (_tl3186931911_ (##cdr _e3186731904_)))
                                (if (gx#stx-pair? _tl3186931911_)
                                    (let ((_e3187031914_
                                           (gx#syntax-e _tl3186931911_)))
                                      (let ((_hd3187131918_
                                             (##car _e3187031914_))
                                            (_tl3187231921_
                                             (##cdr _e3187031914_)))
                                        (if (gx#stx-pair/null? _tl3187231921_)
                                            (if (fx>= (gx#stx-length
                                                       _tl3187231921_)
                                                      '0)
                                                (let ((_g34725_
                                                       (gx#syntax-split-splice
                                                        _tl3187231921_
                                                        '0)))
                                                  (begin
                                                    (let ((_g34726_
                                                           (values-count
                                                            _g34725_)))
                                                      (if (not (fx= _g34726_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g34726_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target3187331924_
                                                           (values-ref
                                                            _g34725_
                                                            0))
                                                          (_tl3187531927_
                                                           (values-ref
                                                            _g34725_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl3187531927_)
                                                          (letrec ((_loop3187631930_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd3187431934_ _rest3188031937_)
                              (if (gx#stx-pair? _hd3187431934_)
                                  (let ((_e3187731940_
                                         (gx#syntax-e _hd3187431934_)))
                                    (let ((_lp-hd3187831944_
                                           (##car _e3187731940_))
                                          (_lp-tl3187931947_
                                           (##cdr _e3187731940_)))
                                      (_loop3187631930_
                                       _lp-tl3187931947_
                                       (cons _lp-hd3187831944_
                                             _rest3188031937_))))
                                  (let ((_rest3188131950_
                                         (reverse _rest3188031937_)))
                                    ((lambda (_L31954_ _L31956_ _L31957_)
                                       (cons (gx#datum->syntax
                                              '#f
                                              'with-unwind-protect)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'lambda)
                                                         (cons '()
                                                               (cons _L31957_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'lambda)
                                                               (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L31956_
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g3197731980_
                                                     _g3197831983_)
                                              (cons _g3197731980_
                                                    _g3197831983_))
                                            '()
                                            _L31954_)))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _rest3188131950_
                                     _hd3187131918_
                                     _hd3186831908_))))))
                    (_loop3187631930_ _target3187331924_ '()))
                  (_g3185931887_ _g3186031891_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3185931887_ _g3186031891_))
                                            (_g3185931887_ _g3186031891_))))
                                    (_g3185931887_ _g3186031891_))))
                            (_g3185931887_ _g3186031891_))))
                    (_g3185931887_ _g3186031891_)))))
        (_g3185831986_ _$stx31855_)))))
