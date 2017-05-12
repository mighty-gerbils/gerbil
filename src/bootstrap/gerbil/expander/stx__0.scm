(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#identifier-wrap::t
    (make-struct-type
     'gx#identifier-wrap::t
     AST::t
     '1
     'syntax
     '((final: . #t))
     '#f))
  (define gx#identifier-wrap? (make-struct-predicate gx#identifier-wrap::t))
  (define gx#make-identifier-wrap
    (lambda _$args3420_
      (apply make-struct-instance gx#identifier-wrap::t _$args3420_)))
  (define gx#identifier-wrap-marks
    (make-struct-field-accessor gx#identifier-wrap::t '0))
  (define gx#identifier-wrap-marks-set!
    (make-struct-field-mutator gx#identifier-wrap::t '0))
  (define gx#syntax-wrap::t
    (make-struct-type
     'gx#syntax-wrap::t
     AST::t
     '1
     'syntax
     '((final: . #t))
     '#f))
  (define gx#syntax-wrap? (make-struct-predicate gx#syntax-wrap::t))
  (define gx#make-syntax-wrap
    (lambda _$args3417_
      (apply make-struct-instance gx#syntax-wrap::t _$args3417_)))
  (define gx#syntax-wrap-mark
    (make-struct-field-accessor gx#syntax-wrap::t '0))
  (define gx#syntax-wrap-mark-set!
    (make-struct-field-mutator gx#syntax-wrap::t '0))
  (define gx#syntax-quote::t
    (make-struct-type
     'gx#syntax-quote::t
     AST::t
     '2
     'syntax
     '((final: . #t))
     '#f))
  (define gx#syntax-quote? (make-struct-predicate gx#syntax-quote::t))
  (define gx#make-syntax-quote
    (lambda _$args3414_
      (apply make-struct-instance gx#syntax-quote::t _$args3414_)))
  (define gx#syntax-quote-context
    (make-struct-field-accessor gx#syntax-quote::t '0))
  (define gx#syntax-quote-marks
    (make-struct-field-accessor gx#syntax-quote::t '1))
  (define gx#syntax-quote-context-set!
    (make-struct-field-mutator gx#syntax-quote::t '0))
  (define gx#syntax-quote-marks-set!
    (make-struct-field-mutator gx#syntax-quote::t '1))
  (define gx#identifier? (lambda (_stx3412_) (symbol? (gx#stx-e _stx3412_))))
  (define gx#identifier-quote?
    (lambda (_stx3410_)
      (if (##structure-direct-instance-of? _stx3410_ 'gx#syntax-quote::t)
          (symbol? (##structure-ref _stx3410_ '1 AST::t '#f))
          '#f)))
  (define gx#sealed-syntax?
    (lambda (_stx3405_)
      (let ((_$e3407_
             (##structure-direct-instance-of? _stx3405_ 'gx#syntax-quote::t)))
        (if _$e3407_
            _$e3407_
            (if (##structure-instance-of? _stx3405_ 'gerbil#AST::t)
                (gx#sealed-syntax? (##structure-ref _stx3405_ '1 AST::t '#f))
                '#f)))))
  (define gx#syntax-e
    (lambda (_stx3401_)
      (let ((_stx3403_ (gx#stx-unwrap__0 _stx3401_)))
        (if (##structure-instance-of? _stx3403_ 'gerbil#AST::t)
            (##structure-ref _stx3403_ '1 AST::t '#f)
            _stx3403_))))
  (define gx#syntax->datum
    (lambda (_stx3399_)
      (if (##structure-instance-of? _stx3399_ 'gerbil#AST::t)
          (gx#syntax->datum (##structure-ref _stx3399_ '1 AST::t '#f))
          (if (pair? _stx3399_)
              (cons (gx#syntax->datum (car _stx3399_))
                    (gx#syntax->datum (cdr _stx3399_)))
              (if (vector? _stx3399_)
                  (vector-map gx#syntax->datum _stx3399_)
                  (if (box? _stx3399_)
                      (box (gx#syntax->datum (unbox _stx3399_)))
                      _stx3399_))))))
  (begin
    (define gx#datum->syntax__opt-lambda3367
      (lambda (_stx3369_ _datum3370_ _src3371_)
        (let ((_wrap-datum3373_
               (lambda (_e3380_ _marks3381_)
                 ((letrec ((_recur3383_
                            (lambda (_e3385_)
                              (if (symbol? _e3385_)
                                  (##structure
                                   gx#identifier-wrap::t
                                   _e3385_
                                   _src3371_
                                   _marks3381_)
                                  (if (pair? _e3385_)
                                      (cons (_recur3383_ (car _e3385_))
                                            (_recur3383_ (cdr _e3385_)))
                                      (if (vector? _e3385_)
                                          (vector-map _recur3383_ _e3385_)
                                          (if (box? _e3385_)
                                              (box (_recur3383_
                                                    (unbox _e3385_)))
                                              _e3385_)))))))
                    _recur3383_)
                  _e3380_))))
          (let ((_wrap-outer3374_
                 (lambda (_e3378_)
                   (if (##structure-instance-of? _e3378_ 'gerbil#AST::t)
                       _e3378_
                       (##structure AST::t _e3378_ _src3371_)))))
            (if (##structure-instance-of? _datum3370_ 'gerbil#AST::t)
                _datum3370_
                (if (not _stx3369_)
                    (##structure AST::t _datum3370_ _src3371_)
                    (if (gx#identifier? _stx3369_)
                        (let ((_stx3376_ (gx#stx-unwrap__0 _stx3369_)))
                          (if (gx#identifier-quote? _stx3376_)
                              (##structure
                               gx#syntax-quote::t
                               _datum3370_
                               _src3371_
                               (##structure-ref
                                _stx3376_
                                '3
                                gx#syntax-quote::t
                                '#f)
                               (##structure-ref
                                _stx3376_
                                '4
                                gx#syntax-quote::t
                                '#f))
                              (_wrap-outer3374_
                               (_wrap-datum3373_
                                _datum3370_
                                (##structure-ref
                                 _stx3376_
                                 '3
                                 gx#identifier-wrap::t
                                 '#f)))))
                        (error '"Bad template syntax; expected identifier"
                               _stx3369_))))))))
    (begin
      (define gx#datum->syntax__0
        (lambda (_stx3390_ _datum3391_)
          (let ((_src3393_ '#f))
            (gx#datum->syntax__opt-lambda3367
             _stx3390_
             _datum3391_
             _src3393_))))
      (define gx#datum->syntax
        (lambda _g3423_
          (let ((_g3422_ (length _g3423_)))
            (cond ((fx= _g3422_ 2) (apply gx#datum->syntax__0 _g3423_))
                  ((fx= _g3422_ 3)
                   (apply gx#datum->syntax__opt-lambda3367 _g3423_))
                  (else (error "No clause matching arguments" _g3423_))))))))
  (begin
    (define gx#stx-unwrap__opt-lambda3343
      (lambda (_stx3345_ _marks3346_)
        ((letrec ((_lp3348_
                   (lambda (_e3350_ _marks3351_ _src3352_)
                     (if (##structure-direct-instance-of?
                          _e3350_
                          'gx#syntax-wrap::t)
                         (_lp3348_
                          (##structure-ref _e3350_ '1 AST::t '#f)
                          (gx#apply-mark
                           (##structure-ref _e3350_ '3 gx#syntax-wrap::t '#f)
                           _marks3351_)
                          (##structure-ref _e3350_ '2 AST::t '#f))
                         (if (##structure-direct-instance-of?
                              _e3350_
                              'gx#identifier-wrap::t)
                             (if (null? _marks3351_)
                                 _e3350_
                                 (##structure
                                  gx#identifier-wrap::t
                                  (##structure-ref _e3350_ '1 AST::t '#f)
                                  (##structure-ref _e3350_ '2 AST::t '#f)
                                  (foldl gx#apply-mark
                                         (##structure-ref
                                          _e3350_
                                          '3
                                          gx#identifier-wrap::t
                                          '#f)
                                         _marks3351_)))
                             (if (##structure-direct-instance-of?
                                  _e3350_
                                  'gx#syntax-quote::t)
                                 _e3350_
                                 (if (##structure-instance-of?
                                      _e3350_
                                      'gerbil#AST::t)
                                     (_lp3348_
                                      (##structure-ref _e3350_ '1 AST::t '#f)
                                      _marks3351_
                                      (##structure-ref _e3350_ '2 AST::t '#f))
                                     (if (symbol? _e3350_)
                                         (##structure
                                          gx#identifier-wrap::t
                                          _e3350_
                                          _src3352_
                                          (reverse _marks3351_))
                                         (if (null? _marks3351_)
                                             _e3350_
                                             (if (pair? _e3350_)
                                                 (cons (gx#stx-wrap
                                                        (car _e3350_)
                                                        _marks3351_)
                                                       (gx#stx-wrap
                                                        (cdr _e3350_)
                                                        _marks3351_))
                                                 (if (vector? _e3350_)
                                                     (vector-map
                                                      (lambda (_g33533355_)
                                                        (gx#stx-wrap
                                                         _g33533355_
                                                         _marks3351_))
                                                      _e3350_)
                                                     (if (box? _e3350_)
                                                         (box (gx#stx-wrap
                                                               (unbox _e3350_)
                                                               _marks3351_))
                                                         _e3350_))))))))))))
           _lp3348_)
         _stx3345_
         _marks3346_
         (gx#stx-source _stx3345_))))
    (begin
      (define gx#stx-unwrap__0
        (lambda (_stx3361_)
          (let ((_marks3363_ '()))
            (gx#stx-unwrap__opt-lambda3343 _stx3361_ _marks3363_))))
      (define gx#stx-unwrap
        (lambda _g3425_
          (let ((_g3424_ (length _g3425_)))
            (cond ((fx= _g3424_ 1) (apply gx#stx-unwrap__0 _g3425_))
                  ((fx= _g3424_ 2)
                   (apply gx#stx-unwrap__opt-lambda3343 _g3425_))
                  (else (error "No clause matching arguments" _g3425_))))))))
  (define gx#stx-wrap
    (lambda (_stx3338_ _marks3339_)
      (foldl (lambda (_mark3341_ _stx3342_)
               (gx#stx-apply-mark _stx3342_ _mark3341_))
             _stx3338_
             _marks3339_)))
  (define gx#stx-rewrap
    (lambda (_stx3332_ _marks3333_)
      (foldr (lambda (_mark3335_ _stx3336_)
               (gx#stx-apply-mark _stx3336_ _mark3335_))
             _stx3332_
             _marks3333_)))
  (define gx#stx-apply-mark
    (lambda (_stx3329_ _mark3330_)
      (if (##structure-direct-instance-of? _stx3329_ 'gx#syntax-quote::t)
          _stx3329_
          (if (if (##structure-direct-instance-of?
                   _stx3329_
                   'gx#syntax-wrap::t)
                  (eq? _mark3330_
                       (##structure-ref _stx3329_ '3 gx#syntax-wrap::t '#f))
                  '#f)
              (##structure-ref _stx3329_ '1 AST::t '#f)
              (##structure
               gx#syntax-wrap::t
               _stx3329_
               (gx#stx-source _stx3329_)
               _mark3330_)))))
  (define gx#apply-mark
    (lambda (_mark3293_ _marks3294_)
      (let ((_marks32953303_ _marks3294_))
        (let ((_E32983307_
               (lambda () (error '"No clause matching" _marks32953303_))))
          (let ((_else32973311_ (lambda () (cons _mark3293_ _marks3294_))))
            (let ((_K32993317_
                   (lambda (_rest3314_ _hd3315_)
                     (if (eq? _mark3293_ _hd3315_)
                         _rest3314_
                         (cons _mark3293_ _marks3294_)))))
              (if (##pair? _marks32953303_)
                  (let ((_hd33003320_ (##car _marks32953303_))
                        (_tl33013322_ (##cdr _marks32953303_)))
                    (let ((_hd3325_ _hd33003320_))
                      (let ((_rest3327_ _tl33013322_))
                        (_K32993317_ _rest3327_ _hd3325_))))
                  (_else32973311_))))))))
  (define gx#stx-e
    (lambda (_stx3291_)
      (if (##structure-instance-of? _stx3291_ 'gerbil#AST::t)
          (gx#stx-e (##structure-ref _stx3291_ '1 AST::t '#f))
          _stx3291_)))
  (define gx#stx-source
    (lambda (_stx3289_)
      (if (##structure-instance-of? _stx3289_ 'gerbil#AST::t)
          (##structure-ref _stx3289_ '2 AST::t '#f)
          '#f)))
  (define gx#stx-wrap-source
    (lambda (_stx3283_ _src3284_)
      (if (let ((_$e3286_ (##structure-instance-of? _stx3283_ 'gerbil#AST::t)))
            (if _$e3286_ _$e3286_ (not _src3284_)))
          _stx3283_
          (##structure AST::t _stx3283_ _src3284_))))
  (define gx#stx-datum?
    (lambda (_stx3281_) (gx#self-quoting? (gx#stx-e _stx3281_))))
  (define gx#self-quoting?
    (lambda (_x3261_)
      (let ((_$e3263_ (boolean? _x3261_)))
        (if _$e3263_
            _$e3263_
            (let ((_$e3266_ (char? _x3261_)))
              (if _$e3266_
                  _$e3266_
                  (let ((_$e3269_ (number? _x3261_)))
                    (if _$e3269_
                        _$e3269_
                        (let ((_$e3272_ (keyword? _x3261_)))
                          (if _$e3272_
                              _$e3272_
                              (let ((_$e3275_ (string? _x3261_)))
                                (if _$e3275_
                                    _$e3275_
                                    (let ((_$e3278_ (eq? _x3261_ '#!void)))
                                      (if _$e3278_
                                          _$e3278_
                                          (dssl-object? _x3261_)))))))))))))))
  (define gx#stx-boolean? (lambda (_e3259_) (boolean? (gx#stx-e _e3259_))))
  (define gx#stx-keyword? (lambda (_e3257_) (keyword? (gx#stx-e _e3257_))))
  (define gx#stx-char? (lambda (_e3255_) (char? (gx#stx-e _e3255_))))
  (define gx#stx-number? (lambda (_e3253_) (number? (gx#stx-e _e3253_))))
  (define gx#stx-fixnum? (lambda (_e3251_) (fixnum? (gx#stx-e _e3251_))))
  (define gx#stx-string? (lambda (_e3249_) (string? (gx#stx-e _e3249_))))
  (define gx#stx-null? (lambda (_e3247_) (null? (gx#stx-e _e3247_))))
  (define gx#stx-pair? (lambda (_e3245_) (pair? (gx#stx-e _e3245_))))
  (define gx#stx-list?
    (lambda (_e3205_)
      (let ((_g32063215_ (gx#stx-e _e3205_)))
        (let ((_E32093219_
               (lambda () (error '"No clause matching" _g32063215_))))
          (let ((_try-match32083230_
                 (lambda ()
                   (let ((_K32103225_
                          (lambda (_tail3223_) (null? _tail3223_))))
                     (let ((_tail3228_ _g32063215_))
                       (_K32103225_ _tail3228_))))))
            (let ((_K32113235_
                   (lambda (_rest3233_) (gx#stx-list? _rest3233_))))
              (if (##pair? _g32063215_)
                  (let ((_hd32123238_ (##car _g32063215_))
                        (_tl32133240_ (##cdr _g32063215_)))
                    (let ((_rest3243_ _tl32133240_)) (_K32113235_ _rest3243_)))
                  (_try-match32083230_))))))))
  (define gx#stx-pair/null?
    (lambda (_e3198_)
      (let ((_e3200_ (gx#stx-e _e3198_)))
        (let ((_$e3202_ (pair? _e3200_)))
          (if _$e3202_ _$e3202_ (null? _e3200_))))))
  (define gx#stx-vector? (lambda (_e3196_) (vector? (gx#stx-e _e3196_))))
  (define gx#stx-box? (lambda (_e3194_) (box? (gx#stx-e _e3194_))))
  (define gx#stx-eq?
    (lambda (_x3191_ _y3192_) (eq? (gx#stx-e _x3191_) (gx#stx-e _y3192_))))
  (define gx#stx-eqv?
    (lambda (_x3188_ _y3189_) (eqv? (gx#stx-e _x3188_) (gx#stx-e _y3189_))))
  (define gx#stx-equal?
    (lambda (_x3185_ _y3186_) (equal? (gx#stx-e _x3185_) (gx#stx-e _y3186_))))
  (define gx#stx-false? (lambda (_x3183_) (not (gx#stx-e _x3183_))))
  (define gx#stx-identifier
    (lambda (_template3180_ . _args3181_)
      (gx#datum->syntax__opt-lambda3367
       _template3180_
       (apply make-symbol (map gx#stx-e _args3181_))
       (gx#stx-source _template3180_))))
  (define gx#stx-identifier-marks
    (lambda (_stx3176_)
      (let ((_stx3178_ (gx#stx-unwrap__0 _stx3176_)))
        (if (##structure-direct-instance-of? _stx3178_ 'gx#identifier-wrap::t)
            (##structure-ref _stx3178_ '3 gx#identifier-wrap::t '#f)
            (##structure-ref _stx3178_ '4 gx#syntax-quote::t '#f)))))
  (define gx#stx-identifier-context
    (lambda (_stx3172_)
      (let ((_stx3174_ (gx#stx-unwrap__0 _stx3172_)))
        (if (gx#identifier-quote? _stx3174_)
            (##structure-ref _stx3174_ '3 gx#syntax-quote::t '#f)
            '#f))))
  (define gx#identifier-list?
    (lambda (_stx3127_)
      (let ((_g31283138_ (gx#stx-e _stx3127_)))
        (let ((_E31323142_
               (lambda () (error '"No clause matching" _g31283138_))))
          (let ((_else31313146_ (lambda () '#f)))
            (let ((_try-match31303154_
                   (lambda ()
                     (let ((_K31333151_ (lambda () '#t)))
                       (if (##null? _g31283138_)
                           (_K31333151_)
                           (_else31313146_))))))
              (let ((_K31343160_
                     (lambda (_rest3157_ _hd3158_)
                       (if (gx#identifier? _hd3158_)
                           (gx#identifier-list? _rest3157_)
                           '#f))))
                (if (##pair? _g31283138_)
                    (let ((_hd31353163_ (##car _g31283138_))
                          (_tl31363165_ (##cdr _g31283138_)))
                      (let ((_hd3168_ _hd31353163_))
                        (let ((_rest3170_ _tl31363165_))
                          (_K31343160_ _rest3170_ _hd3168_))))
                    (_try-match31303154_)))))))))
  (begin
    (define gx#genident__opt-lambda3102
      (lambda (_e3104_ _src3105_)
        (gx#stx-wrap-source
         (gensym (let ((_e3107_ (gx#stx-e _e3104_)))
                   (if (interned-symbol? _e3107_) _e3107_ 'g)))
         (let ((_$e3109_ (gx#stx-source _e3104_)))
           (if _$e3109_ _$e3109_ _src3105_)))))
    (begin
      (define gx#genident__0
        (lambda ()
          (let ((_e3116_ 'g))
            (let ((_src3118_ '#f))
              (gx#genident__opt-lambda3102 _e3116_ _src3118_)))))
      (define gx#genident__1
        (lambda (_e3120_)
          (let ((_src3122_ '#f))
            (gx#genident__opt-lambda3102 _e3120_ _src3122_))))
      (define gx#genident
        (lambda _g3427_
          (let ((_g3426_ (length _g3427_)))
            (cond ((fx= _g3426_ 0) (apply gx#genident__0 _g3427_))
                  ((fx= _g3426_ 1) (apply gx#genident__1 _g3427_))
                  ((fx= _g3426_ 2) (apply gx#genident__opt-lambda3102 _g3427_))
                  (else (error "No clause matching arguments" _g3427_))))))))
  (define gx#gentemps
    (lambda (_stx-lst3101_) (gx#stx-map1 gx#genident _stx-lst3101_)))
  (define gx#syntax->list (lambda (_stx3099_) (gx#stx-map1 values _stx3099_)))
  (define gx#stx-car (lambda (_stx3097_) (car (gx#syntax-e _stx3097_))))
  (define gx#stx-cdr (lambda (_stx3095_) (cdr (gx#syntax-e _stx3095_))))
  (define gx#stx-length
    (lambda (_stx3058_)
      ((letrec ((_lp3060_
                 (lambda (_rest3062_ _n3063_)
                   (let ((_g30643072_ (gx#stx-e _rest3062_)))
                     (let ((_E30673076_
                            (lambda ()
                              (error '"No clause matching" _g30643072_))))
                       (let ((_else30663080_ (lambda () _n3063_)))
                         (let ((_K30683085_
                                (lambda (_rest3083_)
                                  (_lp3060_ _rest3083_ (fx+ _n3063_ '1)))))
                           (if (##pair? _g30643072_)
                               (let ((_hd30693088_ (##car _g30643072_))
                                     (_tl30703090_ (##cdr _g30643072_)))
                                 (let ((_rest3093_ _tl30703090_))
                                   (_K30683085_ _rest3093_)))
                               (_else30663080_)))))))))
         _lp3060_)
       _stx3058_
       '0)))
  (define gx#stx-for-each
    (lambda _g3429_
      (let ((_g3428_ (length _g3429_)))
        (cond ((fx= _g3428_ 2) (apply gx#stx-for-each1 _g3429_))
              ((fx= _g3428_ 3) (apply gx#stx-for-each2 _g3429_))
              (else (error "No clause matching arguments" _g3429_))))))
  (define gx#stx-for-each1
    (lambda (_f3001_ _stx3002_)
      ((letrec ((_lp3004_
                 (lambda (_rest3006_)
                   (let ((_g30073017_ (gx#syntax-e _rest3006_)))
                     (let ((_E30113021_
                            (lambda ()
                              (error '"No clause matching" _g30073017_))))
                       (let ((_else30103025_ (lambda () (_f3001_ _rest3006_))))
                         (let ((_try-match30093033_
                                (lambda ()
                                  (let ((_K30123030_ (lambda () '#!void)))
                                    (if (##null? _g30073017_)
                                        (_K30123030_)
                                        (_else30103025_))))))
                           (let ((_K30133039_
                                  (lambda (_rest3036_ _hd3037_)
                                    (begin
                                      (_f3001_ _hd3037_)
                                      (_lp3004_ _rest3036_)))))
                             (if (##pair? _g30073017_)
                                 (let ((_hd30143042_ (##car _g30073017_))
                                       (_tl30153044_ (##cdr _g30073017_)))
                                   (let ((_hd3047_ _hd30143042_))
                                     (let ((_rest3049_ _tl30153044_))
                                       (_K30133039_ _rest3049_ _hd3047_))))
                                 (_try-match30093033_))))))))))
         _lp3004_)
       _stx3002_)))
  (define gx#stx-for-each2
    (lambda (_f2906_ _xstx2907_ _ystx2908_)
      ((letrec ((_lp2910_
                 (lambda (_xrest2912_ _yrest2913_)
                   (let ((_g29142924_ (gx#syntax-e _xrest2912_)))
                     (let ((_E29182928_
                            (lambda ()
                              (error '"No clause matching" _g29142924_))))
                       (let ((_else29172932_ (lambda () '#!void)))
                         (let ((_try-match29162955_
                                (lambda ()
                                  (let ((_K29192952_
                                         (lambda ()
                                           (let ((_yrest29362941_ _yrest2913_))
                                             (let ((_E29382945_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _yrest29362941_))))
                                               (let ((_K29392949_
                                                      (lambda ()
                                                        (_f2906_ _xrest2912_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _yrest2913_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (not (gx#stx-null?
                                                           _yrest29362941_))
                                                     (_K29392949_)
                                                     (_E29382945_))))))))
                                    (if (not (null? _g29142924_))
                                        (_K29192952_)
                                        (_else29172932_))))))
                           (let ((_K29202989_
                                  (lambda (_xrest2958_ _xhd2959_)
                                    (let ((_g29602967_
                                           (gx#syntax-e _yrest2913_)))
                                      (let ((_E29622971_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _g29602967_))))
                                        (let ((_K29632977_
                                               (lambda (_yrest2974_ _yhd2975_)
                                                 (begin
                                                   (_f2906_ _xhd2959_
                                                            _yhd2975_)
                                                   (_lp2910_
                                                    _xrest2958_
                                                    _yrest2974_)))))
                                          (if (##pair? _g29602967_)
                                              (let ((_hd29642980_
                                                     (##car _g29602967_))
                                                    (_tl29652982_
                                                     (##cdr _g29602967_)))
                                                (let ((_yhd2985_ _hd29642980_))
                                                  (let ((_yrest2987_
                                                         _tl29652982_))
                                                    (_K29632977_
                                                     _yrest2987_
                                                     _yhd2985_))))
                                              (_E29622971_))))))))
                             (if (##pair? _g29142924_)
                                 (let ((_hd29212992_ (##car _g29142924_))
                                       (_tl29222994_ (##cdr _g29142924_)))
                                   (let ((_xhd2997_ _hd29212992_))
                                     (let ((_xrest2999_ _tl29222994_))
                                       (_K29202989_ _xrest2999_ _xhd2997_))))
                                 (_try-match29162955_))))))))))
         _lp2910_)
       _xstx2907_
       _ystx2908_)))
  (define gx#stx-map
    (lambda _g3431_
      (let ((_g3430_ (length _g3431_)))
        (cond ((fx= _g3430_ 2) (apply gx#stx-map1 _g3431_))
              ((fx= _g3430_ 3) (apply gx#stx-map2 _g3431_))
              (else (error "No clause matching arguments" _g3431_))))))
  (define gx#stx-map1
    (lambda (_f2849_ _stx2850_)
      ((letrec ((_recur2852_
                 (lambda (_rest2854_)
                   (let ((_g28552865_ (gx#syntax-e _rest2854_)))
                     (let ((_E28592869_
                            (lambda ()
                              (error '"No clause matching" _g28552865_))))
                       (let ((_else28582873_ (lambda () (_f2849_ _rest2854_))))
                         (let ((_try-match28572881_
                                (lambda ()
                                  (let ((_K28602878_ (lambda () '())))
                                    (if (##null? _g28552865_)
                                        (_K28602878_)
                                        (_else28582873_))))))
                           (let ((_K28612887_
                                  (lambda (_rest2884_ _hd2885_)
                                    (cons (_f2849_ _hd2885_)
                                          (_recur2852_ _rest2884_)))))
                             (if (##pair? _g28552865_)
                                 (let ((_hd28622890_ (##car _g28552865_))
                                       (_tl28632892_ (##cdr _g28552865_)))
                                   (let ((_hd2895_ _hd28622890_))
                                     (let ((_rest2897_ _tl28632892_))
                                       (_K28612887_ _rest2897_ _hd2895_))))
                                 (_try-match28572881_))))))))))
         _recur2852_)
       _stx2850_)))
  (define gx#stx-map2
    (lambda (_f2754_ _xstx2755_ _ystx2756_)
      ((letrec ((_recur2758_
                 (lambda (_xrest2760_ _yrest2761_)
                   (let ((_g27622772_ (gx#syntax-e _xrest2760_)))
                     (let ((_E27662776_
                            (lambda ()
                              (error '"No clause matching" _g27622772_))))
                       (let ((_else27652780_ (lambda () '())))
                         (let ((_try-match27642803_
                                (lambda ()
                                  (let ((_K27672800_
                                         (lambda ()
                                           (let ((_yrest27842789_ _yrest2761_))
                                             (let ((_E27862793_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _yrest27842789_))))
                                               (let ((_K27872797_
                                                      (lambda ()
                                                        (_f2754_ _xrest2760_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _yrest2761_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (not (gx#stx-null?
                                                           _yrest27842789_))
                                                     (_K27872797_)
                                                     (_E27862793_))))))))
                                    (if (not (null? _g27622772_))
                                        (_K27672800_)
                                        (_else27652780_))))))
                           (let ((_K27682837_
                                  (lambda (_xrest2806_ _xhd2807_)
                                    (let ((_g28082815_
                                           (gx#syntax-e _yrest2761_)))
                                      (let ((_E28102819_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _g28082815_))))
                                        (let ((_K28112825_
                                               (lambda (_yrest2822_ _yhd2823_)
                                                 (cons (_f2754_ _xhd2807_
                                                                _yhd2823_)
                                                       (_recur2758_
                                                        _xrest2806_
                                                        _yrest2822_)))))
                                          (if (##pair? _g28082815_)
                                              (let ((_hd28122828_
                                                     (##car _g28082815_))
                                                    (_tl28132830_
                                                     (##cdr _g28082815_)))
                                                (let ((_yhd2833_ _hd28122828_))
                                                  (let ((_yrest2835_
                                                         _tl28132830_))
                                                    (_K28112825_
                                                     _yrest2835_
                                                     _yhd2833_))))
                                              (_E28102819_))))))))
                             (if (##pair? _g27622772_)
                                 (let ((_hd27692840_ (##car _g27622772_))
                                       (_tl27702842_ (##cdr _g27622772_)))
                                   (let ((_xhd2845_ _hd27692840_))
                                     (let ((_xrest2847_ _tl27702842_))
                                       (_K27682837_ _xrest2847_ _xhd2845_))))
                                 (_try-match27642803_))))))))))
         _recur2758_)
       _xstx2755_
       _ystx2756_)))
  (define gx#stx-andmap
    (lambda (_f2704_ _stx2705_)
      ((letrec ((_lp2707_
                 (lambda (_rest2709_)
                   (let ((_g27102720_ (gx#syntax-e _rest2709_)))
                     (let ((_E27142724_
                            (lambda ()
                              (error '"No clause matching" _g27102720_))))
                       (let ((_else27132728_ (lambda () (_f2704_ _rest2709_))))
                         (let ((_try-match27122736_
                                (lambda ()
                                  (let ((_K27152733_ (lambda () '#t)))
                                    (if (##null? _g27102720_)
                                        (_K27152733_)
                                        (_else27132728_))))))
                           (let ((_K27162742_
                                  (lambda (_rest2739_ _hd2740_)
                                    (if (_f2704_ _hd2740_)
                                        (_lp2707_ _rest2739_)
                                        '#f))))
                             (if (##pair? _g27102720_)
                                 (let ((_hd27172745_ (##car _g27102720_))
                                       (_tl27182747_ (##cdr _g27102720_)))
                                   (let ((_hd2750_ _hd27172745_))
                                     (let ((_rest2752_ _tl27182747_))
                                       (_K27162742_ _rest2752_ _hd2750_))))
                                 (_try-match27122736_))))))))))
         _lp2707_)
       _stx2705_)))
  (define gx#stx-ormap
    (lambda (_f2651_ _stx2652_)
      ((letrec ((_lp2654_
                 (lambda (_rest2656_)
                   (let ((_g26572667_ (gx#syntax-e _rest2656_)))
                     (let ((_E26612671_
                            (lambda ()
                              (error '"No clause matching" _g26572667_))))
                       (let ((_else26602675_ (lambda () (_f2651_ _rest2656_))))
                         (let ((_try-match26592683_
                                (lambda ()
                                  (let ((_K26622680_ (lambda () '#f)))
                                    (if (##null? _g26572667_)
                                        (_K26622680_)
                                        (_else26602675_))))))
                           (let ((_K26632692_
                                  (lambda (_rest2686_ _hd2687_)
                                    (let ((_$e2689_ (_f2651_ _hd2687_)))
                                      (if _$e2689_
                                          _$e2689_
                                          (_lp2654_ _rest2686_))))))
                             (if (##pair? _g26572667_)
                                 (let ((_hd26642695_ (##car _g26572667_))
                                       (_tl26652697_ (##cdr _g26572667_)))
                                   (let ((_hd2700_ _hd26642695_))
                                     (let ((_rest2702_ _tl26652697_))
                                       (_K26632692_ _rest2702_ _hd2700_))))
                                 (_try-match26592683_))))))))))
         _lp2654_)
       _stx2652_)))
  (define gx#stx-foldl
    (lambda (_f2599_ _iv2600_ _stx2601_)
      ((letrec ((_lp2603_
                 (lambda (_r2605_ _rest2606_)
                   (let ((_g26072617_ (gx#syntax-e _rest2606_)))
                     (let ((_E26112621_
                            (lambda ()
                              (error '"No clause matching" _g26072617_))))
                       (let ((_else26102625_
                              (lambda () (_f2599_ _rest2606_ _r2605_))))
                         (let ((_try-match26092633_
                                (lambda ()
                                  (let ((_K26122630_ (lambda () _r2605_)))
                                    (if (##null? _g26072617_)
                                        (_K26122630_)
                                        (_else26102625_))))))
                           (let ((_K26132639_
                                  (lambda (_rest2636_ _hd2637_)
                                    (_lp2603_
                                     (_f2599_ _hd2637_ _r2605_)
                                     _rest2636_))))
                             (if (##pair? _g26072617_)
                                 (let ((_hd26142642_ (##car _g26072617_))
                                       (_tl26152644_ (##cdr _g26072617_)))
                                   (let ((_hd2647_ _hd26142642_))
                                     (let ((_rest2649_ _tl26152644_))
                                       (_K26132639_ _rest2649_ _hd2647_))))
                                 (_try-match26092633_))))))))))
         _lp2603_)
       _iv2600_
       _stx2601_)))
  (define gx#stx-foldr
    (lambda (_f2548_ _iv2549_ _stx2550_)
      ((letrec ((_recur2552_
                 (lambda (_rest2554_)
                   (let ((_g25552565_ (gx#syntax-e _rest2554_)))
                     (let ((_E25592569_
                            (lambda ()
                              (error '"No clause matching" _g25552565_))))
                       (let ((_else25582573_
                              (lambda () (_f2548_ _rest2554_ _iv2549_))))
                         (let ((_try-match25572581_
                                (lambda ()
                                  (let ((_K25602578_ (lambda () _iv2549_)))
                                    (if (##null? _g25552565_)
                                        (_K25602578_)
                                        (_else25582573_))))))
                           (let ((_K25612587_
                                  (lambda (_rest2584_ _hd2585_)
                                    (_f2548_ _hd2585_
                                             (_recur2552_ _rest2584_)))))
                             (if (##pair? _g25552565_)
                                 (let ((_hd25622590_ (##car _g25552565_))
                                       (_tl25632592_ (##cdr _g25552565_)))
                                   (let ((_hd2595_ _hd25622590_))
                                     (let ((_rest2597_ _tl25632592_))
                                       (_K25612587_ _rest2597_ _hd2595_))))
                                 (_try-match25572581_))))))))))
         _recur2552_)
       _stx2550_)))
  (define gx#stx-reverse
    (lambda (_stx2546_) (gx#stx-foldl cons '() _stx2546_)))
  (define gx#stx-last
    (lambda (_stx2507_)
      ((letrec ((_lp2509_
                 (lambda (_rest2511_)
                   (let ((_g25122520_ (gx#syntax-e _rest2511_)))
                     (let ((_E25152524_
                            (lambda ()
                              (error '"No clause matching" _g25122520_))))
                       (let ((_else25142528_ (lambda () _rest2511_)))
                         (let ((_K25162534_
                                (lambda (_rest2531_ _hd2532_)
                                  (if (gx#stx-null? _rest2531_)
                                      _hd2532_
                                      (_lp2509_ _rest2531_)))))
                           (if (##pair? _g25122520_)
                               (let ((_hd25172537_ (##car _g25122520_))
                                     (_tl25182539_ (##cdr _g25122520_)))
                                 (let ((_hd2542_ _hd25172537_))
                                   (let ((_rest2544_ _tl25182539_))
                                     (_K25162534_ _rest2544_ _hd2542_))))
                               (_else25142528_)))))))))
         _lp2509_)
       _stx2507_)))
  (define gx#stx-last-pair
    (lambda (_stx2476_)
      ((letrec ((_lp2478_
                 (lambda (_hd2480_)
                   (let ((_g24812488_ (gx#syntax-e _hd2480_)))
                     (let ((_E24832492_
                            (lambda ()
                              (error '"No clause matching" _g24812488_))))
                       (let ((_K24842497_
                              (lambda (_rest2495_)
                                (if (gx#stx-pair? _rest2495_)
                                    (_lp2478_ _rest2495_)
                                    _hd2480_))))
                         (if (##pair? _g24812488_)
                             (let ((_hd24852500_ (##car _g24812488_))
                                   (_tl24862502_ (##cdr _g24812488_)))
                               (let ((_rest2505_ _tl24862502_))
                                 (_K24842497_ _rest2505_)))
                             (_E24832492_))))))))
         _lp2478_)
       _stx2476_)))
  (define gx#stx-list-tail
    (lambda (_stx2443_ _k2444_)
      ((letrec ((_lp2446_
                 (lambda (_rest2448_ _k2449_)
                   (if (fxpositive? _k2449_)
                       (let ((_g24502457_ (gx#syntax-e _rest2448_)))
                         (let ((_E24522461_
                                (lambda ()
                                  (error '"No clause matching" _g24502457_))))
                           (let ((_K24532466_
                                  (lambda (_rest2464_)
                                    (_lp2446_ _rest2464_ (fx- _k2449_ '1)))))
                             (if (##pair? _g24502457_)
                                 (let ((_hd24542469_ (##car _g24502457_))
                                       (_tl24552471_ (##cdr _g24502457_)))
                                   (let ((_rest2474_ _tl24552471_))
                                     (_K24532466_ _rest2474_)))
                                 (_E24522461_)))))
                       _rest2448_))))
         _lp2446_)
       _stx2443_
       _k2444_)))
  (define gx#stx-list-ref
    (lambda (_stx2440_ _k2441_)
      (gx#stx-car (gx#stx-list-tail _stx2440_ _k2441_))))
  (begin
    (define gx#stx-plist?__opt-lambda2348
      (lambda (_stx2350_ _key?2351_)
        ((letrec ((_lp2353_
                   (lambda (_rest2355_)
                     (let ((_g23562366_ (gx#stx-e _rest2355_)))
                       (let ((_E23602370_
                              (lambda ()
                                (error '"No clause matching" _g23562366_))))
                         (let ((_else23592374_ (lambda () '#f)))
                           (let ((_try-match23582382_
                                  (lambda ()
                                    (let ((_K23612379_ (lambda () '#t)))
                                      (if (##null? _g23562366_)
                                          (_K23612379_)
                                          (_else23592374_))))))
                             (let ((_K23622418_
                                    (lambda (_rest2385_ _hd2386_)
                                      (if (_key?2351_ _hd2386_)
                                          (let ((_g23872395_
                                                 (gx#stx-e _rest2385_)))
                                            (let ((_E23902399_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _g23872395_))))
                                              (let ((_else23892403_
                                                     (lambda () '#f)))
                                                (let ((_K23912408_
                                                       (lambda (_rest2406_)
                                                         (_lp2353_
                                                          _rest2406_))))
                                                  (if (##pair? _g23872395_)
                                                      (let ((_hd23922411_
                                                             (##car _g23872395_))
                                                            (_tl23932413_
                                                             (##cdr _g23872395_)))
                                                        (let ((_rest2416_
                                                               _tl23932413_))
                                                          (_K23912408_
                                                           _rest2416_)))
                                                      (_else23892403_))))))
                                          '#f))))
                               (if (##pair? _g23562366_)
                                   (let ((_hd23632421_ (##car _g23562366_))
                                         (_tl23642423_ (##cdr _g23562366_)))
                                     (let ((_hd2426_ _hd23632421_))
                                       (let ((_rest2428_ _tl23642423_))
                                         (_K23622418_ _rest2428_ _hd2426_))))
                                   (_try-match23582382_))))))))))
           _lp2353_)
         _stx2350_)))
    (begin
      (define gx#stx-plist?__0
        (lambda (_stx2433_)
          (let ((_key?2435_ gx#stx-keyword?))
            (gx#stx-plist?__opt-lambda2348 _stx2433_ _key?2435_))))
      (define gx#stx-plist?
        (lambda _g3433_
          (let ((_g3432_ (length _g3433_)))
            (cond ((fx= _g3432_ 1) (apply gx#stx-plist?__0 _g3433_))
                  ((fx= _g3432_ 2)
                   (apply gx#stx-plist?__opt-lambda2348 _g3433_))
                  (else (error "No clause matching arguments" _g3433_))))))))
  (begin
    (define gx#stx-getq__opt-lambda2266
      (lambda (_key2268_ _stx2269_ _key=?2270_)
        ((letrec ((_lp2272_
                   (lambda (_rest2274_)
                     (let ((_g22752283_ (gx#syntax-e _rest2274_)))
                       (let ((_E22782287_
                              (lambda ()
                                (error '"No clause matching" _g22752283_))))
                         (let ((_else22772291_ (lambda () '#f)))
                           (let ((_K22792325_
                                  (lambda (_rest2294_ _hd2295_)
                                    (let ((_g22962303_
                                           (gx#syntax-e _rest2294_)))
                                      (let ((_E22982307_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _g22962303_))))
                                        (let ((_K22992313_
                                               (lambda (_rest2310_ _val2311_)
                                                 (if (_key=?2270_
                                                      _hd2295_
                                                      _key2268_)
                                                     _val2311_
                                                     (_lp2272_ _rest2310_)))))
                                          (if (##pair? _g22962303_)
                                              (let ((_hd23002316_
                                                     (##car _g22962303_))
                                                    (_tl23012318_
                                                     (##cdr _g22962303_)))
                                                (let ((_val2321_ _hd23002316_))
                                                  (let ((_rest2323_
                                                         _tl23012318_))
                                                    (_K22992313_
                                                     _rest2323_
                                                     _val2321_))))
                                              (_E22982307_))))))))
                             (if (##pair? _g22752283_)
                                 (let ((_hd22802328_ (##car _g22752283_))
                                       (_tl22812330_ (##cdr _g22752283_)))
                                   (let ((_hd2333_ _hd22802328_))
                                     (let ((_rest2335_ _tl22812330_))
                                       (_K22792325_ _rest2335_ _hd2333_))))
                                 (_else22772291_)))))))))
           _lp2272_)
         _stx2269_)))
    (begin
      (define gx#stx-getq__0
        (lambda (_key2340_ _stx2341_)
          (let ((_key=?2343_ gx#stx-eq?))
            (gx#stx-getq__opt-lambda2266 _key2340_ _stx2341_ _key=?2343_))))
      (define gx#stx-getq
        (lambda _g3435_
          (let ((_g3434_ (length _g3435_)))
            (cond ((fx= _g3434_ 2) (apply gx#stx-getq__0 _g3435_))
                  ((fx= _g3434_ 3) (apply gx#stx-getq__opt-lambda2266 _g3435_))
                  (else (error "No clause matching arguments" _g3435_)))))))))
